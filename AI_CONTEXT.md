---
title: "AI context"
doc_type: overview
status: active
confidence: CONFIRMED
owner: repository-maintainer
source: "Permintaan pengguna pada sesi Cursor 2026-10-14"
last_verified: 2026-10-14
next_review: 2026-11-14
sensitivity: internal
summary: "Entry point universal yang menunjuk ke dokumen sumber, tanpa menyalin seluruh repository."
---

# AI context

Dokumen ini adalah pintu masuk bagi AI. Jangan menganggapnya sebagai salinan lengkap knowledge base. Bila ringkasan dan dokumen sumber berbeda, dokumen sumber yang menang.

## Siapa

Dua identitas mesin berikut teramati dan belum disatukan:

- Akun Windows: `Jonathan Lukasanto` pada host `LAPTOP-E3DBSCG4`.
- `git config --global user.name`: `Irwan Raditya`. Nilai `user.email` ada, tetapi tidak disimpan di repository ini.

Hubungan keduanya berstatus UNKNOWN. Profil lengkap ada di [context/01-personal-profile.md](context/01-personal-profile.md).

## Tujuan repository

Membangun sumber kebenaran yang bisa dibaca manusia baru dan AI baru: identitas yang memang diketahui, proyek, lingkungan kerja, keputusan, dan cara mencatat pekerjaan AI. Tujuan pribadi jangka panjang di luar repository ini masih UNKNOWN. Lihat [context/04-long-term-goals.md](context/04-long-term-goals.md).

## Proyek aktif

Belum ada proyek yang statusnya dikonfirmasi aktif oleh pemilik. Direktori lokal yang ditemukan dicatat di [projects/catalog/direktori-lokal.md](projects/catalog/direktori-lokal.md). Folder [projects/active/](projects/active/README.md) sengaja kosong.

## Aturan kerja

- Jangan mengarang fakta. Gunakan CONFIRMED, INFERRED, UNKNOWN, atau OUTDATED.
- Setiap fakta penting menyebut sumber, tanggal verifikasi, pemilik, dan kepercayaan.
- Jangan menulis password, API key, token, private key, cookie, credential, atau data restricted.
- Jika menemukan secret, catat nama, lokasi, dan remediation. Jangan salin nilainya.
- Jangan menghapus atau memindahkan file pribadi tanpa persetujuan eksplisit.
- Jangan push ke remote sebelum pemilik menyetujui isi dan visibilitas repository.
- Bahasa dokumen ini adalah Indonesia. Istilah teknis boleh tetap dalam bahasa Inggris.

Preferensi yang terlihat pada Cursor dicatat di [context/05-preferences.md](context/05-preferences.md).

## File yang wajib dibaca

1. [README.md](README.md)
2. [AI_CONTEXT.md](AI_CONTEXT.md)
3. [AGENTS.md](AGENTS.md)
4. [context/00-overview.md](context/00-overview.md)
5. [context/03-current-priorities.md](context/03-current-priorities.md)
6. Proyek yang disebut di tugas
7. Keputusan di [knowledge/decisions/](knowledge/decisions/README.md) dan runbook di [operations/runbooks/](operations/runbooks/README.md) yang relevan

## Memperbarui konteks

1. Ubah dokumen sumber, bukan [ai/generated/context-digest.md](ai/generated/context-digest.md).
2. Perbarui `last_verified` dan `source`.
3. Jalankan `scripts/generate-ai-context.ps1`.
4. Jalankan `scripts/validate-context.ps1` dan `scripts/scan-secrets.ps1`.
5. Commit hanya jika pemilik memintanya.

## Informasi yang belum pasti

Tulis `UNKNOWN`, sebutkan bukti yang sudah ada, dan jangan mengisi celah dengan tebakan. Kesimpulan yang didukung bukti memakai `INFERRED` dan menyebut dasar kesimpulannya.

## Mencatat pekerjaan baru

Gunakan [scripts/log-ai-session.ps1](scripts/README.md). Log awal masuk ke [probation-review/](probation-review/README.md). Migrasi ke `ai/sessions/` dan `ai/prompt-history/` menunggu persetujuan terpisah.

## Keamanan

Remote GitHub masih public pada 2026-10-14. Baca [SECURITY.md](SECURITY.md) sebelum menambah data pribadi atau melakukan push.
