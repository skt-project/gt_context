---
title: "Prioritas saat ini"
doc_type: overview
status: active
confidence: CONFIRMED
owner: unassigned
source: "Permintaan pengguna pada sesi Cursor 2026-10-14"
last_verified: 2026-10-14
next_review: 2026-11-14
sensitivity: internal
summary: "Knowledge base diminta memuat seluruh aturan, matrix, dan dokumen tertulis."
---

# Prioritas saat ini

## Sedang dikerjakan

Membangun Global Context System di `skt-project/gt_context`. Pada 2026-10-14 scaffold lokal sudah ditulis dan belum di-push. Sumber: permintaan pada sesi Cursor yang sama, ditindaklanjuti dengan "jalanin aja". Kepercayaan: CONFIRMED untuk adanya permintaan ini.

Pada 2026-10-14 pemilik meminta seluruh matrix bisnis, aturan di kode, dan dokumen tertulis masuk ke knowledge base. Hasilnya ada di [pipeline](../projects/pipelines/README.md) dan [indeks dokumen](../knowledge/indexes/README.md). Production Airflow tidak diverifikasi dari server.

Sisa persetujuan yang masih terbuka:

- Mengubah visibilitas remote menjadi private sebelum push
- Meninjau fakta identitas dan inventaris
- Menyetujui migrasi `probation-review/` ke `ai/sessions/` dan `ai/prompt-history/`

## Di luar tugas ini

Prioritas pekerjaan lain: UNKNOWN. Commit terakhir pada checkout lokal tidak dipakai sebagai bukti prioritas.
