---
title: "Instruksi universal AI"
doc_type: policy
status: active
confidence: CONFIRMED
owner: repository-maintainer
source: "Permintaan tahap 5 dan 6 pada 2026-10-14"
last_verified: 2026-10-14
next_review: 2026-11-14
sensitivity: internal
summary: "Aturan yang sama untuk setiap AI yang memakai repository ini."
---

# Instruksi universal AI

1. Baca [AI_CONTEXT.md](../AI_CONTEXT.md) dan urutan file yang disebut di sana.
2. Jangan mengarang profil, proyek, atau konfigurasi.
3. Simpan fakta baru di dokumen sumber dengan status kepercayaan.
4. Catat sesi yang layak diingat lewat [script log](../scripts/README.md). Log pertama masuk ke [probation-review](../probation-review/README.md).
5. Jangan mengklaim bahwa semua prompt dari semua platform tertangkap otomatis. Pada 2026-10-14 tidak ada hook, plugin, atau API logging yang terpasang.
6. Untuk platform tanpa integrasi, pakai [template tempel](templates/manual-prompt-entry.md) atau JSON yang diterima `log-ai-session.ps1`.
7. Jangan menulis secret. Script menolak log yang cocok dengan pola secret dan tidak menyimpan nilai yang cocok.
