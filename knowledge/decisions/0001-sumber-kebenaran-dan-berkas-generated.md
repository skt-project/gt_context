---
title: "ADR 0001 sumber kebenaran"
doc_type: decision
status: active
confidence: CONFIRMED
owner: repository-maintainer
source: "Permintaan tahap 8 pada 2026-10-14 dan implementasi scaffold"
last_verified: 2026-10-14
next_review: 2026-11-14
sensitivity: public
summary: "Dokumen sumber diedit manusia. Digest AI dihasilkan dan boleh ditimpa."
---

# ADR 0001: Sumber kebenaran dan berkas generated

- Status keputusan: accepted
- Tanggal: 2026-10-14

## Konteks

AI membutuhkan pintu masuk yang pendek. Menyalin seluruh repository ke satu file membuat dua sumber yang mudah berbeda.

## Keputusan

- Sumber kebenaran adalah dokumen yang ditulis dan ditinjau di `context/`, `projects/`, `systems/`, `knowledge/`, `operations/`, `docs/`, serta `AI_CONTEXT.md`, `AGENTS.md`, dan `SECURITY.md`.
- [ai/generated/context-digest.md](../../ai/generated/context-digest.md) dihasilkan oleh `scripts/generate-ai-context.ps1`.
- `AI_CONTEXT.md` tetap ditulis manual dan hanya menunjuk ke dokumen lain.
- Riwayat manual tidak disimpan di dalam file generated.

## Konsekuensi

Perubahan fakta dilakukan di dokumen sumber, lalu digest di-generate ulang. CI menolak digest yang tidak sama dengan hasil script.

## Alternatif yang tidak dipilih

Menjadikan `AI_CONTEXT.md` sebagai hasil generate penuh. Itu menghapus pintu masuk yang bisa menjelaskan aturan dengan kalimat yang tidak ada di frontmatter.
