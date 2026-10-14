---
title: "ADR 0002 visibilitas repository"
doc_type: decision
status: proposed
confidence: CONFIRMED
owner: unassigned
source: "GitHub API field visibility=public pada 2026-10-14"
last_verified: 2026-10-14
next_review: 2026-11-14
sensitivity: public
summary: "Rekomendasi menjadikan repository private sebelum push. Keputusan pemilik masih terbuka."
---

# ADR 0002: Visibilitas repository

- Status keputusan: proposed
- Tanggal: 2026-10-14

## Konteks

`skt-project/gt_context` public dan kosong saat diaudit. Knowledge base ini memuat hostname, nama akun, dan daftar proyek internal.

## Keputusan yang diusulkan

Ubah visibilitas menjadi private sebelum push pertama. Matikan GitHub Wiki yang saat audit berstatus aktif.

## Status saat ini

Pemilik belum mengubah visibilitas di dalam sesi scaffold. Scaffold tidak di-push.

## Konsekuensi bila ditolak

Setiap push membuat inventaris dan katalog proyek dapat dibaca publik.
