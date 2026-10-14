---
title: "Aturan bisnis"
doc_type: reference
status: active
confidence: CONFIRMED
owner: repository-maintainer
source: "docs/BUSINESS_RULES.md, STORE_GRADING_FORMULA_REFERENCE.md, dan data-pipeline-overview.md pada 2026-10-14"
last_verified: 2026-10-14
next_review: 2026-11-14
sensitivity: internal
summary: "Aturan channel, migrasi bulanan, grading toko, dan pola ETL yang tertulis di sumber."
---

# Aturan bisnis

Teks di bawah ini disalin dari dokumen sumber pada 2026-10-14. Kepercayaan CONFIRMED berarti dokumen itu menyatakan aturan ini. Apakah production masih sama: belum diuji ulang di scheduler.

## Channel dan merek

Sumber: `D:\Workspace\Company\Skintific\Knowledge\tech\data-pipeline-overview.md`.

| Kode | Arti |
| --- | --- |
| GT | General Trade |
| MT | Modern Trade |
| 125 | SKINTIFIC |
| 128 | GLAD2GLOW |
| 201 | TIMEPHORIA |
| 202 | FACERINNA |
| 203 | BODIBREZE |

`GT` lewat DMS distributor. `MT` adalah Modern Trade. Owner DAG dan awalan ID mengikuti channel. Sumber kalimat channel: `D:\GitHub\docker-airflow\docs\BUSINESS_RULES.md`.

## Siklus migrasi bulanan GT/DMS

Sumber: `BUSINESS_RULES.md`, status dokumen itu "seeded 2026-07-17" dan meminta verifikasi ulang terhadap DAG.

- Tabel fisik `_mtd_t` hanya menyimpan bulan berjalan. Migrasi manual memindahkan data ke `_hist_t` lalu mengosongkan tabel MTD, sekali per bulan.
- DAG `*_after_eom.py` dinyalakan manual setelah awal bulan dan dimatikan setelah migrasi bulan itu selesai. Pelacakan ada di Google Sheet "Check Migrate".
- View `_all_mv` menggabungkan MTD dan histori.
- Sell-out `repsly.ind_purchase_orders_v` tidak punya langkah migrasi. Tabelnya satu riwayat penuh.

## Pola ETL tertulis

Sumber: overview pipeline.

1. Ambil data mentah ke Parquet sementara.
2. Bersihkan dan turunkan kolom ke Parquet kedua.
3. `WRITE_TRUNCATE` ke tabel staging, lalu `MERGE` ke target berpartisi.
4. Unggah cadangan Parquet mingguan ke bucket `backup_dwh`.
5. Bandingkan data baru dengan histori.
6. Email duplikat hanya lewat `ShortCircuitOperator`.
7. Hapus file sementara dengan `trigger_rule` all_done.

Jendela merge memakai `DATE_START` sampai `DATE_END`, bukan mengganti seluruh tabel. Partisi bulanan pada kolom tanggal.

DMS membatasi satu permintaan ke jendela 3 hari, dengan jeda 15 detik. Tanda tangan permintaan memakai HMAC-MD5 dari kunci yang disimpan di Airflow Variable. Nilai kuncinya tidak disalin ke repository ini.

## Grading toko

Sumber: `D:\GitHub\docker-airflow\docs\STORE_GRADING_FORMULA_REFERENCE.md`, diperbarui 2026-08-14. Implementasi yang disebut dokumen: `gt_mart.sp_calculate_store_grading`. Metriknya `pbi_gt_dataset.fact_sell_through_all`, nilai dalam IDR.

G2G dan SKINTIFIC/TIMEPHORIA memakai aturan yang terpisah.

| | G2G | SKINTIFIC | TIMEPHORIA |
| --- | --- | --- | --- |
| Irama | kuartalan | semester | semester |
| Jendela hitung | 3 bulan sebelumnya | 6 bulan sebelumnya | 6 bulan sebelumnya |
| Pembagi | beda toko baru dan toko lama | hanya bulan yang punya transaksi | hanya bulan yang punya transaksi |
| Jika tidak ada data | cari kuartal histori | kosong | kosong |
| Skala | S A B C D | S A B C D | S A B |

Toko G2G baru bila `first_st_date` berada di dalam jendela hitung. Tanggal itu adalah transaksi sell-through pertama merek itu, bukan tanggal buka toko di master. Pembagi toko baru adalah jumlah bulan kalender sejak bulan pertama sampai akhir jendela. Pembagi toko lama selalu 3, termasuk bulan tanpa transaksi.

Rata-rata G2G adalah jumlah sell-through jendela dibagi pembagi itu. Dokumen melarang memakai `SUM(ST) / COUNT(bulan yang ada transaksi)` untuk toko G2G yang sudah ada.

Ambang G2G dan SKINTIFIC, setengah terbuka:

| Grade | Rata-rata sell-through |
| --- | --- |
| S | lebih dari atau sama dengan 150.000.000 |
| A | lebih dari atau sama dengan 60.000.000 dan di bawah 150.000.000 |
| B | lebih dari atau sama dengan 10.000.000 dan di bawah 60.000.000 |
| C | lebih dari atau sama dengan 1.000.000 dan di bawah 10.000.000 |
| D | lebih dari 0 dan di bawah 1.000.000 |
| kosong | kurang dari atau sama dengan 0, atau tidak ada data |

SKINTIFIC dan TIMEPHORIA membagi jumlah sell-through dengan jumlah bulan yang punya sedikitnya satu transaksi. Nol bulan layak membuat grade kosong, tanpa pencarian histori.

Ambang TIMEPHORIA berbeda. Tidak ada grade C atau D. Tepat 40.000.000 adalah A, bukan S.

| Grade | Rata-rata sell-through |
| --- | --- |
| S | lebih dari 40.000.000 |
| A | dari 15.000.000 sampai 40.000.000, kedua ujung termasuk |
| B | lebih dari 0 dan di bawah 15.000.000 |
| kosong | kurang dari atau sama dengan 0, atau tidak ada data |

`customer_status` tidak dibaca prosedur ini. Satu gate toko tidak aktif sempat ada pada 2026-08-14 dan dihapus pada hari yang sama.

Tabel `gt_config.grading_rule` di SQL `02_gt_config.grading_rule.sql` dibuat kosong. Komentar SQL menyatakan threshold contoh belum dikonfirmasi bisnis dan belum dijalankan. Angka pada formula reference di atas yang dipakai dokumen sebagai aturan hidup.

## Building block penjualan

Sumber: `building-block-sales-monitoring-summary.md`.

Workbook "2026 - Building Block (Sales Monitoring - National)" adalah spesifikasi manual tenaga penjualan GT nasional. Istilah yang dokumen itu anggap terkonfirmasi dari struktur sheet:

- PJP adalah Permanent Journey Plan. Non PJP adalah kunjungan di luar rute tetap.
- Hierarki yang terlihat: Region, ASM, ASS, Salesman.
- Cluster TM memakai grade S, A, B, C, D.

AO dan EC ditandai inferred di sumber itu, bukan definisi yang dieja workbook. Summary workbook menyebut 59 salesman dan 11 salesman MTI. ETL dari workbook ke `gt_schema.stg_target_building_block` belum ditemukan pada saat catatan itu ditulis.
