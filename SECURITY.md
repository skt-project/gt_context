---
title: "Keamanan"
doc_type: policy
status: active
confidence: CONFIRMED
owner: repository-maintainer
source: "Audit GitHub API 2026-10-14 dan aturan pengumpulan data"
last_verified: 2026-10-14
next_review: 2026-11-14
sensitivity: public
summary: "Aturan secret, visibilitas repository, dan data yang tidak boleh disimpan."
---

# Keamanan

## Visibilitas

https://github.com/skt-project/gt_context berstatus **public** pada 2026-10-14. Tidak ada commit di remote pada saat audit. Scaffold ini dibuat di clone lokal dan tidak di-push oleh sesi yang membangunnya.

Data internal di dokumen ini belum aman untuk di-push. Ubah repository menjadi private, atau keluarkan data internal, sebelum push pertama. Rekomendasi itu berstatus proposed di [ADR visibilitas](knowledge/decisions/0002-visibilitas-repository.md).

Wiki GitHub aktif pada saat audit. Wiki adalah saluran terpisah. Matikan wiki bila repository menjadi private.

## Data yang tidak disimpan

Jangan memasukkan password, API key, private key, token, cookie, recovery code, data kartu, atau secret lain. Nilai `git config --global user.email` terdeteksi ada dan sengaja tidak ditulis.

Jika secret ditemukan:

1. Catat jenis temuan, path, dan baris.
2. Jangan salin nilai, jangan commit, dan jangan menempelkannya ke chat.
3. Rotasi secret itu di sistem asalnya.
4. Tambahkan jejak remediation di [operations/incident-log.md](operations/incident-log.md) tanpa nilai secret.

## Lokasi sensitif di laptop

Direktori `D:\AI\secrets` ada pada 2026-10-14. Isinya tidak dibaca dan tidak disalin. Remediation: jangan commit folder itu, jangan menyalin isinya ke repository ini, dan tinjau ACL-nya di luar sesi ini.

## Pemeriksaan

Setiap perubahan menjalankan [scripts/scan-secrets.ps1](scripts/README.md). GitHub Actions `context-health` menjalankan script yang sama dan Gitleaks. Scanner lokal menolak menulis log yang mengandung pola secret.

Dokumen `sensitivity: restricted` gagal pada validasi karena tidak boleh masuk commit.

## Melapor

Untuk repository ini, buka issue private setelah visibilitas diubah. Jangan menempel secret di issue public.
