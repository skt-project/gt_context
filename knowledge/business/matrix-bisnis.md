---
title: "Matrix bisnis"
doc_type: reference
status: active
confidence: CONFIRMED
owner: repository-maintainer
source: "store_stock_gold_layer.md, stock_notation_matrix_2026-10-14.md, dan README matrix PO Portal pada 2026-10-14"
last_verified: 2026-10-14
next_review: 2026-11-14
sensitivity: internal
summary: "Matrix notasi stok, perbedaannya dengan implementasi, dan matrix kolom PO Portal."
---

# Matrix bisnis

## Notasi stok

Matrix sumber: `D:\Workspace\Notation Matrix.xlsx`, sheet `Notation`. Catatan implementasi: `D:\GitHub\docker-airflow\docs\gold_weekly_only\store_stock_gold_layer.md` bagian 6, dan `stock_notation_matrix_2026-10-14.md`.

Tiga masukan matrix: stok minggu ini, pembelian minggu ini, dan stok ditambah pembelian minggu lalu. Implementasi `v1.0` memakai perbandingan, bukan angka contoh pada spreadsheet.

| Baris matrix | Arti | Aturan implementasi yang tertulis |
| --- | --- | --- |
| SB Stock Baru | 0 / 1 / 1 | Pembelian positif, stok minggu ini 0, stok sebelumnya positif, atau tidak ada minggu sebelumnya |
| SK Stock Kurang | 1 / 1 / 1 | Pembelian positif dan stok di atas 0 tetapi di bawah stok ideal. Matrix tidak punya ambang. Implementasi menambah stok ideal dari permintaan kali WOI |
| OOS Out Of Stock | 0 / 1 / 0 | Stok 0 setelah pembelian, atau stok habis dengan bukti permintaan. Tanpa bukti permintaan hasilnya NO_STOCK, bukan OOS |
| SD Stock Diam | 1 / 0 / 1 | Terdistribusi, tidak ada pembelian, stok tetap. Status selalu POTENTIAL karena data order toko tidak ada |
| SL Stock Linkage | 2 / 0 / 1 | Terdistribusi, tidak ada pembelian, stok naik. Status selalu POTENTIAL karena pembelian distributor lain tidak ada |
| TL Tidak Laku | 1 / 0 / 1 | Tidak terdistribusi, stok positif, sell-out minggu ini 0 bila data penjualan ada. NULL tidak diubah menjadi 0 |
| BPJ Belum Pernah Jual | dua kali TL atau tidak ada data ST | TL sedikitnya dua minggu berturut-turut, belum pernah terjual, dan PLC bukan NPD |

Grup "Brand Distributed / Effective Call" diimplementasikan sebagai sell-through positif dari perusahaan dalam 13 minggu terakhir. Kunjungan dengan order tidak dibaca.

Keputusan 2026-10-14 yang mengubah usulan awal: bila minggu ini tidak ada stok, notasi terakhir pasangan toko dan SKU dibawa maju, bukan diubah menjadi INSUFFICIENT_DATA.

Batasan yang ditulis di catatan keputusan:

- Data yang hilang tidak diasumsikan.
- SL tidak FINAL tanpa data distributor lain.
- SD tidak FINAL tanpa data order toko.
- TL tidak diturunkan dari penjualan NULL.
- OOS bukan lost sales tanpa bukti permintaan.
- BPJ butuh sedikitnya dua minggu tanpa penjualan dan tidak berlaku untuk NPD.
- PLC terpisah dari notasi.
- Setiap baris membawa sumber, kepercayaan, alasan, waktu, dan versi aturan.

`is_distributed` bukan Effective Call. NPD pada kolom PLC berarti baru di toko itu, 0 sampai 2 minggu setelah sell-through pertama, bukan flag NPD di master produk.

Objek yang dokumen sebut sudah ada di BigQuery pada 2026-10-14: konfigurasi `STOCK_NOTATION`, `gt_mart.store_stock_notation_weekly_t`, override manual, dua stored procedure, dan lima view. DAG di server Airflow pada tanggal itu belum memuat task notasi. Checkout repo sudah memuat task di `GT_mart_store_stock_gt_mti`.

## Matrix kolom PO Portal

Sumber: `D:\Workspace\Company\Skintific\Data\po_portal_dynamic_matrix\README.md`, disiapkan 2026-08-14.

Tujuannya agar pengguna bisnis menambah, menghapus, mengganti nama, atau mengurutkan kolom tanpa mengubah definisi kolom di kode.

Status yang ditulis dokumen: implementasi selesai, belum di-deploy, validasi runtime belum dijalankan. Pemeriksaan read-only pada saat itu hanya menemukan `po_portal_distributor_users`, `po_portal_feedback`, dan `po_portal_suggestion`. Tabel matrix belum ada di production.

Tiga aliran yang dipisahkan dokumen:

| Fitur | Sumber | Penulis |
| --- | --- | --- |
| Saran PO | `gt_schema.po_portal_suggestion` | DAG `GT_po_portal_suggestion_refresh` dari sheet |
| Umpan balik unggahan | `gt_schema.po_portal_feedback` | aplikasi, langsung ke BigQuery |
| Pelacakan PO | `dms.gt_po_tracking_all_mv` | di luar pipeline saran |

Kolom wajib unggahan tetap kontrak Excel lama. Kolom dinamis hanya untuk tabel di layar.
