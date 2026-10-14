---
title: "Profil pribadi"
doc_type: profile
status: active
confidence: CONFIRMED
owner: unassigned
source: "Inventaris read-only 2026-10-14: env Windows dan git config --global"
last_verified: 2026-10-14
next_review: 2026-11-14
sensitivity: internal
summary: "Identitas mesin yang teramati. Hubungan antar nama belum dikonfirmasi."
---

# Profil pribadi

## Terverifikasi

| Fakta | Nilai | Kepercayaan | Sumber |
| --- | --- | --- | --- |
| Nama akun Windows | Jonathan Lukasanto | CONFIRMED | `$env:USERNAME` pada 2026-10-14 |
| User domain | LAPTOP-E3DBSCG4 | CONFIRMED | `$env:USERDOMAIN` |
| Hostname | LAPTOP-E3DBSCG4 | CONFIRMED | `$env:COMPUTERNAME` |
| Git `user.name` | Irwan Raditya | CONFIRMED | `git config --global --get user.name` |
| Git `user.email` | nilai ada, tidak disimpan | CONFIRMED | `git config --global --get user.email` hanya diuji kosong atau tidak |

## Belum tersambung

Hubungan antara akun Windows `Jonathan Lukasanto` dan git identity `Irwan Raditya` berstatus UNKNOWN. README lokal `D:\GitHub\irwan-ai\README.md` memakai nama Irwan dan menyebut tim data/engineering Skintific. Itu klaim README, bukan konfirmasi bahwa pemilik laptop adalah orang yang sama.

Nama publik yang ingin dipakai di dokumen ini: UNKNOWN.

Peran, jabatan, organisasi, dan kontak: UNKNOWN. Jangan menambahkan email, nomor telepon, atau alamat.

## Pemilik informasi

`owner` dokumen ini `unassigned` sampai seseorang mengklaim peran maintainer secara eksplisit.
