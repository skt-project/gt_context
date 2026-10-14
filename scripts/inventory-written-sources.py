"""Inventaris dokumen tertulis dan definisi DAG. Tidak menyalin secret atau email."""

from __future__ import annotations

import re
from datetime import date, timedelta
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
TODAY = date.today().isoformat()
REVIEW = (date.today() + timedelta(days=31)).isoformat()

SOURCE_ROOTS = [
    Path(r"D:\Workspace\Company\Skintific"),
    Path(r"D:\GitHub\docker-airflow"),
    Path(r"D:\GitHub\sfa-step"),
    Path(r"D:\GitHub\sfa-mobile"),
    Path(r"D:\GitHub\po-portal"),
    Path(r"D:\GitHub\streamlit_app"),
    Path(r"D:\GitHub\irwan-ai"),
]
DOC_EXTENSIONS = {".md", ".mdc", ".sql"}
SKIP_DIRS = {".git", "__pycache__", "node_modules", ".pytest_cache", ".venv", "dist", "build"}
SKIP_NAME_PARTS = ("credential", "secret", ".env", "token", "password")
DAG_ROOT = Path(r"D:\GitHub\docker-airflow\dags")


def one_line(value: str) -> str:
    return re.sub(r"\s+", " ", value.replace("|", "/")).strip()


def frontmatter(title: str, summary: str, source: str) -> str:
    return "\n".join(
        [
            "---",
            f'title: "{title}"',
            "doc_type: catalog",
            "status: active",
            "confidence: CONFIRMED",
            "owner: repository-maintainer",
            f'source: "{source}"',
            f"last_verified: {TODAY}",
            f"next_review: {REVIEW}",
            "sensitivity: internal",
            f'summary: "{one_line(summary)}"',
            'generated: "true"',
            "---",
            "",
        ]
    )


def write_text(path: Path, content: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(content.replace("\r\n", "\n").rstrip() + "\n", encoding="utf-8")


def skipped_name(path: Path) -> bool:
    lowered = path.name.lower()
    return any(part in lowered for part in SKIP_NAME_PARTS)


def first_heading(path: Path) -> str:
    try:
        text = path.read_text(encoding="utf-8", errors="replace")
    except OSError:
        return path.name
    for line in text.splitlines()[:40]:
        match = re.match(r"^#{1,6}\s+(.+?)\s*$", line)
        if match:
            return one_line(match.group(1))[:180]
    return path.stem


def collect_documents() -> tuple[list[tuple[str, str, str]], list[str]]:
    rows: list[tuple[str, str, str]] = []
    skipped: list[str] = []
    for root in SOURCE_ROOTS:
        if not root.exists():
            skipped.append(f"{root} (folder tidak ada)")
            continue
        for path in root.rglob("*"):
            if not path.is_file():
                continue
            if any(part in SKIP_DIRS for part in path.parts):
                continue
            if skipped_name(path):
                skipped.append(str(path))
                continue
            if path.suffix.lower() not in DOC_EXTENSIONS:
                continue
            rows.append((str(path), path.suffix.lower(), first_heading(path)))
    rows.sort()
    return rows, skipped


def extract_dag(path: Path) -> dict[str, str]:
    text = path.read_text(encoding="utf-8", errors="replace")
    dag_id = re.search(r"dag_id\s*=\s*['\"]([^'\"]+)['\"]", text)
    description = re.search(r"description\s*=\s*['\"]([^'\"]*)['\"]", text)
    schedule = re.search(r"schedule(?:_interval)?\s*=\s*([^,\n]+)", text)
    owner = re.search(r"['\"]owner['\"]\s*:\s*['\"]([^'\"]+)['\"]", text)
    tags = re.search(r"tags\s*=\s*\[([^\]]*)\]", text)
    tag_values = ""
    if tags:
        tag_values = ", ".join(re.findall(r"['\"]([^'\"]+)['\"]", tags.group(1)))
    marker = "nama file bertanda NO USE" if "NO USE" in path.name.upper() or "(No USE" in path.name else ""
    return {
        "file": path.name,
        "dag_id": one_line(dag_id.group(1)) if dag_id else "UNKNOWN",
        "schedule": one_line(schedule.group(1)) if schedule else "UNKNOWN",
        "owner": one_line(owner.group(1)) if owner else "UNKNOWN",
        "description": one_line(description.group(1)) if description else "",
        "tags": one_line(tag_values),
        "marker": marker,
    }


def collect_dags() -> list[dict[str, str]]:
    rows: list[dict[str, str]] = []
    if not DAG_ROOT.exists():
        return rows
    for path in sorted(DAG_ROOT.iterdir()):
        if not path.is_file():
            continue
        if path.suffix.lower() not in {".py", ".txt"}:
            continue
        if path.name.startswith("."):
            continue
        text_sample = path.read_text(encoding="utf-8", errors="replace")
        if "dag_id" not in text_sample and "DAG(" not in text_sample:
            continue
        rows.append(extract_dag(path))
    return rows


def render_documents(rows: list[tuple[str, str, str]], skipped: list[str]) -> str:
    lines = [
        frontmatter(
            "Indeks dokumen tertulis",
            "Daftar dokumen markdown, SQL, dan aturan yang ditemukan. Isi credential tidak disalin.",
            "scripts/inventory-written-sources.py pada checkout lokal " + TODAY,
        ).rstrip(),
        "",
        "<!-- GENERATED FILE. Jangan mengedit tangan. -->",
        "",
        "# Indeks dokumen tertulis",
        "",
        "Setiap baris adalah file yang ada pada tanggal generate. Judul diambil dari heading pertama. Isi lengkap tetap di path sumber. File yang namanya mengandung credential, secret, token, atau password tidak masuk tabel.",
        "",
        f"Jumlah yang diindeks: {len(rows)}. Jumlah yang dilewati: {len(skipped)}.",
        "",
        "| Path | Jenis | Judul |",
        "| --- | --- | --- |",
    ]
    for path, suffix, title in rows:
        lines.append(f"| `{path}` | {suffix} | {title} |")
    lines.append("")
    lines.append("## Tidak disalin")
    lines.append("")
    lines.append(
        f"{len(skipped)} file dilewati karena namanya mengandung credential, secret, token, password, atau `.env`. Path lengkap tidak ditulis di repository ini. Nilainya tidak dibaca."
    )
    lines.append("")
    return "\n".join(lines)


def render_dags(rows: list[dict[str, str]]) -> str:
    lines = [
        frontmatter(
            "Katalog DAG Airflow",
            "dag_id, jadwal, owner, dan deskripsi dari file DAG di checkout lokal.",
            "D:\\GitHub\\docker-airflow\\dags pada " + TODAY,
        ).rstrip(),
        "",
        "<!-- GENERATED FILE. Jangan mengedit tangan. -->",
        "",
        "# Katalog DAG Airflow",
        "",
        "Sumbernya checkout `D:\\GitHub\\docker-airflow\\dags`, bukan scheduler production. Aturan kode menyatakan laptop ini bukan host Airflow. Email, token, dan secret di dalam file DAG tidak disalin.",
        "",
        f"Jumlah file dengan `dag_id`: {len(rows)}.",
        "",
        "| File | dag_id | Schedule | Owner | Tags | Deskripsi | Penanda |",
        "| --- | --- | --- | --- | --- | --- | --- |",
    ]
    for row in rows:
        lines.append(
            "| `{file}` | {dag_id} | `{schedule}` | {owner} | {tags} | {description} | {marker} |".format(
                **row
            )
        )
    lines.append("")
    return "\n".join(lines)


def main() -> None:
    documents, skipped = collect_documents()
    dags = collect_dags()
    write_text(ROOT / "knowledge" / "indexes" / "dokumen-tertulis.md", render_documents(documents, skipped))
    write_text(ROOT / "projects" / "pipelines" / "katalog-dag.md", render_dags(dags))
    print(f"documents={len(documents)} skipped={len(skipped)} dags={len(dags)}")


if __name__ == "__main__":
    main()
