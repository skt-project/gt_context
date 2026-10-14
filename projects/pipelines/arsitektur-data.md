---
title: "Arsitektur data pipeline"
doc_type: reference
status: active
confidence: CONFIRMED
owner: repository-maintainer
source: "D:\\Workspace\\Company\\Skintific\\Knowledge\\tech\\data-pipeline-overview.md"
last_verified: 2026-10-14
next_review: 2026-11-14
sensitivity: internal
summary: "Aliran sumber, Airflow, BigQuery, dan konsumen yang ditulis di overview pipeline."
---

# Arsitektur data pipeline

Ringkasan ini mengikuti overview bertanggal yang ada di folder Knowledge perusahaan. Angka jadwal di bawah adalah klaim dokumen itu, bukan hasil pembacaan ulang setiap file DAG. Katalog file ada di [katalog-dag.md](katalog-dag.md).

## Lapisan

Sumber masuk lewat DAG Airflow ke dataset BigQuery, lalu dikonsumsi Power BI dan prosedur tersimpan.

| Sumber | Jalur yang ditulis | Tujuan |
| --- | --- | --- |
| DMS API beautydms dan cerahdms | DAG GT/MT DMS | `dms.*` |
| Google Sheets | DAG master dan batch | `gt_schema.*` atau `mt_schema.*` |
| Excel di volume `/data` | DAG dimensi MT | `mt_schema.*` |
| MongoDB SaData | DAG kehadiran, OOS, stok | `sadata.*` |
| Jurnal API | DAG invoice MT | `staging.*` |
| Stored procedure BigQuery | DAG pemanggil dan prosedur | `rsa.*` dan dataset Power BI |

Overview menyebut Airflow 2.10.5, Python 3.12, Docker, LocalExecutor. Metadata Airflow ada di PostgreSQL pada host yang sama. Bucket cadangan `backup_dwh`. Bucket sementara SaData `skintific_storage`. Volume `D:/msy-swishared` dipetakan ke `/data`. PostgreSQL kedua `postgres-msy` schema `mt-dwh` dipakai tulis ganda TPM dan PO MT.

Alamat email SMTP dan cuplikan API key yang ada di overview tidak disalin.

## GT

Master yang disebut overview meliputi koreksi pelanggan, customer SMD, distributor, stok offline, stok "All Stock", identifier BA, dan database toko basis serta G2G. Transaksi yang disebut: sell-through DMS ke `dms.gt_st_mtd_t`, shipment dan tracking PO, serta TPM reimbursement dari Excel. `dag_gt_bq_sp_call.py` memanggil prosedur ke `rsa.*` dan `pbi_gt_dataset.*`.

## MT

Tiga aliran sell-in tertulis:

1. DMS per merek ke staging, lalu `dag_mt_fact_sales_po.py` yang jadwalnya `None`, menuju `mt_schema.fact_direct_purchase_po`.
2. Batch Google Sheet puluhan akun ke `fact_sales_po_sheet_dp` dan PostgreSQL `mt-dwh.fact_sales_po_mt`.
3. Sociolla lewat `dag_mt_soci_po.py` ke `fact_sales_po_soci` dengan jendela tiga bulan.

Sell-out yang disebut: Watsons mingguan dari Excel dan AEON consignment dari CSV, pemicu manual. TPM mencakup deduction, P&L, dan reimbursement, dengan tulis ganda ke BigQuery dan PostgreSQL.

## Dataset

| Dataset | Peran yang ditulis |
| --- | --- |
| `dms` | transaksi DMS, termasuk MTD dan histori |
| `gt_schema` | master dan dimensi GT |
| `mt_schema` | dimensi dan fakta MT |
| `sadata` | aktivitas BA dari aplikasi SaData |
| `rsa` | lapisan analitik, termasuk `si_st_so_target_data_all` |
| `pbi_gt_dataset` | agregat Power BI GT dari stored procedure |
| `staging` | lahan pendaratan |
| `bosnet` | ERP lama. DAG-nya bertanda tidak dipakai |
| `repsly` | SFA BA untuk MT, terpisah dari SaData |
| `mti_schema` | channel MTI |

Overview menyatakan display audit, promo, harga ritel, dan visibilitas ada di dataset `sadata`, tetapi DAG-nya belum dikonfirmasi di kode pada saat dokumen itu ditulis.
