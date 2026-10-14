---
title: "Runbook migrasi MTD ke histori"
doc_type: guide
status: active
confidence: CONFIRMED
owner: repository-maintainer
source: "monthly-migration-checklist.md dan system-guideline-reference.md pada 2026-10-14"
last_verified: 2026-10-14
next_review: 2026-11-14
sensitivity: internal
summary: "Tata cara bulanan memindahkan DMS MTD ke hist, plus batas SQL yang belum tersimpan."
---

# Runbook migrasi MTD ke histori

Sumber yang dipakai:

- `D:\Workspace\Company\Skintific\Knowledge\tech\api\monthly-migration-checklist.md`
- `D:\Workspace\Company\Skintific\Knowledge\tech\assessments\system-guideline-reference.md`
- `D:\GitHub\docker-airflow\docs\BUSINESS_RULES.md`
- `D:\Workspace\Company\Skintific\Server-Mirror\script\check_migrate_readiness_po_tracking_dms.py`

`D:\Claude\monthly-migration-checklist.md` disebut `BUSINESS_RULES.md`, tetapi file itu tidak ada pada pemeriksaan 2026-10-14. Checklist yang ada ada di folder Knowledge perusahaan.

## Apa yang dipindahkan

| Aliran | Bulan berjalan | Histori | Gabungan |
| --- | --- | --- | --- |
| PO Tracking | `dms.gt_po_tracking_mtd_t` | `dms.gt_po_tracking_hist_t` | `dms.gt_po_tracking_all_mv` |
| PO Shipment | `dms.gt_po_shipment_mtd_t` | `dms.gt_po_shipment_hist_t` | `dms.gt_po_shipment_all_mv` |
| Sell-through | `dms.gt_st_mtd_t` | `dms.gt_st_hist_t` | `dms.gt_st_all_mv` |

Sell-out `repsly.ind_purchase_orders_v` tidak dimigrasi. Dokumen guideline menyatakan itu satu tabel riwayat penuh.

`_after_eom` bukan tabel histori. DAG itu menangkap sisa aktivitas bulan lalu setelah bulan baru mulai, ke tabel terpisah seperti `dms.gt_st_after_eom`.

## Urutan bulanan yang tertulis

1. Awal bulan, nyalakan manual DAG `dag_gt_po_tracking_dms_after_eom.py`, `dag_gt_po_shipment_dms_after_eom.py`, dan `dag_gt_st_dms_after_eom.py`.
2. Jalankan tiga kueri migrasi di BigQuery Console: PO Tracking DMS, PO Shipment DMS, dan ST DMS.
3. Ubah rentang tanggal yang di-hard-code di DAG `_after_eom`.
4. Setelah migrasi selesai, matikan DAG `_after_eom`.
5. Untuk stok distributor, jalankan kueri "Data Migration Dist-Stock Hist", lalu ubah tanggal di view `gt_schema.dist_stock_all_v`.

Pelacakan manual ada di spreadsheet Check Migrate, ID `1gPlM7LZgHz_ClFrc2rPSxw-7NxdDeWhNOJ286jRfsRg`. Langkah mengubah tanggal belum punya checklist sendiri.

## Bentuk kueri PO Tracking

Checklist hanya menyimpan bentuknya, bukan teks SQL lengkap:

```sql
INSERT INTO dms.gt_po_tracking_hist_t
SELECT ...
FROM dms.gt_po_tracking_mtd_t
WHERE NOT EXISTS (...)
```

Kunci yang ditulis: `customerOrderNo`, `sku`, `deliveryNoticeNo`. Kueri itu INSERT saja. Baris yang kuncinya sudah ada di histori tidak di-update.

`BUSINESS_RULES.md` juga menyebut tabel MTD dikosongkan setelah pindah. Perintah DELETE atau TRUNCATE itu tidak ada di checklist maupun skrip kesiapan. Status langkah pengosongan: UNKNOWN sampai SQL lengkap ditemukan.

SQL PO Shipment, ST, dan Dist-Stock Hist juga belum tersimpan. Checklist menyatakan risikonya mungkin sama, tetapi belum dikonfirmasi.

## Sebelum menjalankan PO Tracking

Skrip kesiapan hanya membaca. Ia tidak memigrasi.

Perintah yang ditulis checklist:

```text
python "D:\Server Data\script\check_migrate_readiness_po_tracking_dms.py" [YYYY-MM]
```

Salinan yang ditemukan ada di `D:\Workspace\Company\Skintific\Server-Mirror\script\check_migrate_readiness_po_tracking_dms.py`. `Server-Mirror` adalah snapshot, bukan bukti bahwa path itu adalah skrip yang dipakai di server.

Tanpa argumen bulan, skrip memakai bulan kalender sebelumnya. Verdict-nya READY atau NOT READY.

| Pemeriksaan | Gagal bila |
| --- | --- |
| Status order | Ada baris bulan itu yang belum `Closing DN` |
| Harga | Tidak ada harga di `master_product_archive` untuk tanggal order, lalu jatuh ke harga `master_product` sekarang |
| Kunci ganda | `customerOrderNo`, `sku`, `deliveryNoticeNo` ganda di MTD |
| Ukuran | Hanya informasi jumlah baris yang akan di-insert |

Status `Closing DN` adalah satu-satunya status yang dianggap lengkap. `signoffTime` baru terisi pada status itu. Migrasi lebih awal membekukan baris tidak lengkap karena kunci yang sama tidak pernah di-update.

Setelah skrip, checklist meminta empat pemeriksaan manual di BigQuery: kunci ganda di MTD, kunci ganda di histori, SKU ganda di `gt_schema.master_product`, dan rentang `valid_from`/`valid_to` yang tumpang tindih di `gt_schema.master_product_archive`. Hasil bersih terakhir yang ditulis adalah 2026-06-25. Itu bukan jaminan untuk bulan berikutnya.

Pada 2026-06-25, checklist juga mencatat 16.888 baris dan 440 SKU untuk Juni 2026 jatuh ke harga sekarang karena arsip harga usang.
