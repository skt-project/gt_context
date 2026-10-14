---
title: "Cara berkontribusi"
doc_type: guide
status: active
confidence: CONFIRMED
owner: repository-maintainer
source: "Desain scaffold 2026-10-14"
last_verified: 2026-10-14
next_review: 2026-11-14
sensitivity: public
summary: "Aturan mengubah knowledge base tanpa mengarang fakta atau memasukkan secret."
---

# Cara berkontribusi

## Perubahan yang diterima

- Koreksi fakta dengan sumber dan status kepercayaan
- Proyek baru yang memakai [template proyek](projects/templates/project.md)
- Keputusan pada [template ADR](knowledge/templates/adr.md)
- Log sesi AI melalui script, bukan tempelan bebas

## Langkah

1. Buat branch dari `main`.
2. Ubah dokumen sumber.
3. Isi frontmatter: `title`, `doc_type`, `status`, `confidence`, `owner`, `source`, `last_verified`, `next_review`, `sensitivity`, `summary`.
4. Jalankan tiga perintah di [scripts/README.md](scripts/README.md).
5. Buka pull request dengan checklist pada template PR.

## Yang ditolak

- Secret, credential, dan dokumen `sensitivity: restricted`
- Fakta tanpa sumber
- Suntingan langsung pada `ai/generated/context-digest.md`
- Push ke repository public yang masih memuat data internal sebelum visibilitas diubah

## Proyek

Folder `projects/active/`, `projects/completed/`, dan `projects/archived/` hanya diisi setelah status siklus hidup dikonfirmasi. Direktori yang baru ditemukan tetap di [katalog](projects/catalog/direktori-lokal.md).
