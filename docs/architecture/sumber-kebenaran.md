---
title: "Sumber kebenaran"
doc_type: reference
status: active
confidence: CONFIRMED
owner: repository-maintainer
source: "ADR 0001"
last_verified: 2026-10-14
next_review: 2026-11-14
sensitivity: public
summary: "Daftar file sumber dan file yang boleh dihasilkan ulang."
---

# Sumber kebenaran

## Sumber

Dokumen di `context/`, `projects/`, `systems/`, `knowledge/`, `operations/`, `docs/onboarding/`, `docs/architecture/`, `docs/audits/`, ditambah `README.md`, `AI_CONTEXT.md`, `AGENTS.md`, `SECURITY.md`, dan adapter di `ai/adapters/`.

## Generated

Hanya [ai/generated/context-digest.md](../../ai/generated/context-digest.md). Script menyusun tabel dari frontmatter. Tanggal digest mengikuti tanggal sumber, sehingga hasilnya stabil bila sumber tidak berubah.

## Bukan sumber

- `probation-review/` adalah antrean, bukan fakta yang sudah diterima
- Template adalah pola, bukan kejadian
- README proyek lain di `D:\GitHub` adalah klaim dokumen asal, bukan fakta yang sudah diverifikasi ulang di sini

Detail keputusan ada di [ADR 0001](../../knowledge/decisions/0001-sumber-kebenaran-dan-berkas-generated.md).
