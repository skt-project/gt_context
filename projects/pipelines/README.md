---
title: "Indeks pipeline"
doc_type: index
status: active
confidence: CONFIRMED
owner: repository-maintainer
source: "Dokumen pipeline perusahaan yang dibaca pada 2026-10-14"
last_verified: 2026-10-14
next_review: 2026-11-14
sensitivity: internal
summary: "Peta pipeline yang tertulis. Katalog DAG dihasilkan dari checkout lokal."
---

# Pipeline

Folder ini memuat pipeline yang tertulis di sumber perusahaan. Status siklus hidup tiap DAG belum dikonfirmasi pemilik, jadi berkasnya tidak dipindahkan ke `projects/active/`.

| Dokumen | Isi |
| --- | --- |
| [Arsitektur data](arsitektur-data.md) | Sumber, channel, dataset, dan aliran yang ditulis overview |
| [Katalog DAG](katalog-dag.md) | `dag_id` dan jadwal dari file di checkout |
| [Aturan bisnis](../../knowledge/business/aturan-bisnis.md) | Migrasi, grading, pola ETL |
| [Migrasi MTD ke histori](../../operations/runbooks/migrasi-mtd-ke-hist.md) | Tata cara bulanan `_mtd_t` ke `_hist_t` |
| [Matrix bisnis](../../knowledge/business/matrix-bisnis.md) | Notasi stok dan matrix PO Portal |
| [Aturan kode](../../knowledge/technical/aturan-kode.md) | Server Airflow dan larangan tulis |
| [Indeks dokumen](../../knowledge/indexes/dokumen-tertulis.md) | Semua markdown dan SQL yang ditemukan |

Production tidak sama dengan laptop. Baca aturan kode sebelum menganggap katalog DAG adalah jadwal yang sedang berjalan.
