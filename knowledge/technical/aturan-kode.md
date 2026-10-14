---
title: "Aturan kode"
doc_type: reference
status: active
confidence: CONFIRMED
owner: repository-maintainer
source: ".cursor/rules/airflow-windows-server.mdc dan komentar SQL grading pada 2026-10-14"
last_verified: 2026-10-14
next_review: 2026-11-14
sensitivity: internal
summary: "Aturan yang tertulis untuk Airflow on-prem, deploy DAG, dan tabel yang tidak boleh ditimpa."
---

# Aturan kode

Sumber utama: `D:\GitHub\docker-airflow\.cursor\rules\airflow-windows-server.mdc`. Aturan itu `alwaysApply`.

## Di mana Airflow berjalan

Production Airflow adalah Docker di server Windows perusahaan `192.168.110.37`. Container `airflow_msyswi`, LocalExecutor, UI pada port 8282. Zona default `Asia/Jakarta`, jadi cron dibaca sebagai WIB.

Checkout `D:\GitHub\docker-airflow\dags` di laptop ini bukan scheduler. Mengedit file lokal tidak mengubah DAG yang hidup.

## Cara menjadwalkan

1. Salin file DAG ke folder `dags/` di server. Git tidak men-deploy otomatis. `Server-Mirror` adalah snapshot, bukan host hidup.
2. Tunggu scheduler lokal selesai mem-parse.
3. Unpause atau trigger lewat UI server, atau `docker exec` pada server itu.

Cloud Composer, `gcloud composer`, dan Cloud Scheduler tidak dipakai untuk menjalankan DAG. Cloud Run dan Cloud Scheduler hanya untuk pekerjaan HTTP STEP Store Info.

## Larangan tulis

Jangan menimpa `dag_gt_master_store_database_basis.py` yang hidup dari git. Salinan server bisa berbeda. Jangan menulis `gt_schema.master_store_database_basis`, `gt_mart.dim_store`, atau `dim_store_brand` dari `GT_mart_dim_store_api`.

## Aturan lain yang tertulis di kode

- Nama koneksi GCP yang dipakai overview adalah `gcp-gateaway`. Ejaan itu disengaja.
- Proyek BigQuery yang disebut overview adalah `skintific-data-warehouse`.
- Ambang grading tidak di-hard-code di DAG. Komentar SQL `02_gt_config.grading_rule.sql` mengatakan tabel konfigurasi itu kosong saat dibuat dan pernyataan contohnya belum boleh dimuat.
- File DAG bertanda `(NO USE)` di nama file diperlakukan indeks sebagai penanda penulis, bukan sebagai bukti bahwa scheduler sudah mematikannya.
- Secret, Variable Airflow, dan daftar email di dalam file DAG tidak disalin ke knowledge base ini.
