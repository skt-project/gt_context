---
title: "Checklist perubahan"
doc_type: guide
status: active
confidence: CONFIRMED
owner: repository-maintainer
source: "Desain scaffold 2026-10-14"
last_verified: 2026-10-14
next_review: 2026-11-14
sensitivity: public
summary: "Checklist sebelum commit knowledge base."
---

# Checklist perubahan

- [ ] Fakta memiliki sumber dan status kepercayaan
- [ ] `last_verified` diperbarui
- [ ] `next_review` masih di depan
- [ ] Tidak ada secret atau data restricted
- [ ] Digest di-generate bila frontmatter sumber berubah
- [ ] Validasi dan secret scan lulus
- [ ] Push belum dilakukan bila remote masih public dan diff memuat data internal
