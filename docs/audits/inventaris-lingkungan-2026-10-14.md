---
title: "Inventaris lingkungan 2026-10-14"
doc_type: audit
status: active
confidence: CONFIRMED
owner: repository-maintainer
source: "Perintah read-only pada laptop yang sama, 2026-10-14"
last_verified: 2026-10-14
next_review: 2026-11-14
sensitivity: internal
summary: "Catatan metode inventaris. Angka perangkat ada di folder systems."
---

# Inventaris lingkungan 2026-10-14

Laporan ini mencatat apa yang diperiksa. Tabel perangkat, OS, dan alat ada di [systems](../../systems/laptop/README.md) agar tidak disalin dua kali.

## Yang diperiksa

- WMI untuk OS, komputer, CPU, disk, dan GPU
- Budaya, locale, dan zona waktu
- `Get-Command` untuk daftar CLI yang ditentukan sebelumnya, lalu `--version` bila aman
- `git config --global` untuk kunci yang disebut di dokumen lingkungan. Nilai email tidak disimpan
- `docker ps`, `docker compose version`, `wsl -l -v`
- Anak langsung `D:\GitHub`: remote, tanggal commit terakhir, dan judul README
- Versi empat paket Python lewat `importlib.metadata`

## Yang sengaja tidak diambil

- Isi file pribadi dan isi `D:\AI\secrets`
- Nilai secret, email git, nomor seri, alamat IP, MAC, dan SSID
- Daftar uninstall registry
- Daftar service Windows dan scheduled task
- Daftar file di dalam backup

## Kesenjangan

Browser, versi DBeaver, versi Power BI, versi VS Code yang terpisah dari shim Cursor, versi Claude, dan scheduled task berstatus UNKNOWN. Upaya membaca uninstall registry tidak dipakai karena terlalu luas untuk audit ini.

## Peringatan push

Hasil inventaris ber-sensitivity internal. Remote knowledge base masih public.
