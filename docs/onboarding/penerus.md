---
title: "Onboarding penerus"
doc_type: guide
status: active
confidence: CONFIRMED
owner: repository-maintainer
source: "Keadaan repository dan laptop pada 2026-10-14"
last_verified: 2026-10-14
next_review: 2026-11-14
sensitivity: internal
summary: "Cara melanjutkan sistem ini bila maintainer utama tidak tersedia."
---

# Onboarding penerus

## Kondisi yang diketahui

- Clone scaffold: `D:\Workspace\Knowledge\gt_context`
- Remote: https://github.com/skt-project/gt_context
- Remote public dan belum menerima scaffold ini pada saat dokumen ditulis
- Akun Windows dan git `user.name` belum disatukan. Lihat [profil](../../context/01-personal-profile.md)
- Git config global tidak diubah oleh scaffold

## Pulihkan konteks

1. Baca [ikhtisar](../../context/00-overview.md) dan [prioritas](../../context/03-current-priorities.md).
2. Baca [katalog proyek](../../projects/catalog/direktori-lokal.md) dan [laptop](../../systems/laptop/README.md).
3. Jalankan validasi. Kegagalan tanggal berarti dokumen lewat `next_review`, bukan berarti fakta otomatis salah.
4. Cari log yang belum dimigrasi di `probation-review/`.

## Arsip proyek

Salin template proyek ke `projects/archived/`, isi field yang terbukti, set `project_status: archived`, dan sisakan UNKNOWN pada field yang tidak diketahui. Jangan memindahkan folder kerja di disk tanpa persetujuan.

## Yang tidak ada di repository

Password, email git, isi `D:\AI\secrets`, dan akses production. Minta akses lewat proses organisasi. Jangan mencari secret di dalam Git history scaffold ini; scaffold tidak memuatnya.

## Identitas

Jangan menggabungkan nama `Jonathan Lukasanto` dan `Irwan Raditya` sampai ada konfirmasi tertulis.
