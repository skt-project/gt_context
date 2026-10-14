---
title: "Alat yang terpasang"
doc_type: reference
status: active
confidence: CONFIRMED
owner: repository-maintainer
source: "PATH, versi CLI, dan daftar folder tingkat atas D:\\ pada 2026-10-14"
last_verified: 2026-10-14
next_review: 2026-11-14
sensitivity: internal
summary: "Alat yang versinya terbaca, plus folder aplikasi yang versinya belum diperiksa."
---

# Alat yang terpasang

Daftar uninstall registry tidak diambil. Tabel ini hanya alat yang perintah atau path-nya diperiksa.

## Versi terverifikasi

| Alat | Versi | Lokasi | Fungsi | Cara menjalankan | Dependensi | Status |
| --- | --- | --- | --- | --- | --- | --- |
| Git | 2.54.0.windows.1 | `D:\Git\cmd\git.exe` | version control | `git` | tidak dicatat | CONFIRMED |
| winget | v1.29.380 | WindowsApps | package manager Windows | `winget` | Microsoft Store source | CONFIRMED ada di PATH |
| Docker client | 29.5.2 | Docker Desktop `resources\bin\docker.exe` | container CLI | `docker` | daemon Desktop | client CONFIRMED, daemon tidak berjalan |
| Docker Compose | v5.1.4 | plugin `docker compose` | compose | `docker compose` | Docker daemon | CLI CONFIRMED |
| kubectl | v1.34.1 | Docker Desktop bin | Kubernetes CLI | `kubectl version --client` | tidak diuji ke cluster | client CONFIRMED |
| Kustomize | v5.7.1 | terbawa kubectl | template Kubernetes | `kubectl version --client` | kubectl | CONFIRMED |
| Google Cloud SDK | 575.0.0 | `D:\Google Cloud CLI\google-cloud-sdk` | CLI GCP | `gcloud` | autentikasi tidak dicatat | CONFIRMED |
| bq | UNKNOWN | `bq.cmd` pada SDK yang sama | BigQuery CLI | `bq` | SDK | perintah ada, versi gagal dibaca |
| Cursor | 3.23.12 | `D:\cursor` | IDE dan agent | `cursor` | tidak dicatat | CONFIRMED |
| ripgrep | 15.1.0-cursor5 | bundel Cursor | pencarian | `rg` | Cursor | CONFIRMED |
| sqlite3 | 3.50.6 | Android SDK `platform-tools` | CLI SQLite | `sqlite3` | Android platform-tools | CONFIRMED |
| pytest | 9.1.1 | `D:\Python\Scripts\pytest.exe` | test Python | `pytest` | Python 3.13 | CONFIRMED |
| streamlit | 1.58.0 | paket Python | aplikasi data | `python -m streamlit` | Python | versi paket CONFIRMED |

## Folder yang ada, versi belum dibaca

`D:\DBeaver`, `D:\Microsoft Power BI Desktop`, `D:\Microsoft VS Code`, `D:\Claude`, `D:\.claude`, `D:\Docker`, `D:\Google Cloud CLI`.

Fungsi yang disimpulkan dari nama folder berstatus INFERRED. Versi masing-masing UNKNOWN.

## Tidak ada di PATH

`gh`, `choco`, `scoop`, `java`, `go`, `rustc`, `dotnet`, `psql`, `mysql`, `mongosh`, `redis-cli`, `ollama`, `aws`, `az`, `terraform`, `helm`, `podman`.

## Browser dan aplikasi produktivitas lain

UNKNOWN. Tidak ada pemeriksaan installer di luar folder dan PATH di atas.

## AI

Cursor terpasang. Folder `D:\Claude` dan `D:\.claude` ada; produk dan versinya UNKNOWN. Tidak ada plugin logging yang dipasang oleh scaffold ini. Ollama tidak ada di PATH.
