---
title: "Batasan yang diketahui"
doc_type: reference
status: active
confidence: CONFIRMED
owner: repository-maintainer
source: "Inventaris PATH, GitHub API, dan perintah Docker/WSL pada 2026-10-14"
last_verified: 2026-10-14
next_review: 2026-11-14
sensitivity: internal
summary: "Batasan alat dan repository yang terverifikasi pada tanggal audit."
---

# Batasan yang diketahui

| Batasan | Status | Kepercayaan |
| --- | --- | --- |
| Remote `gt_context` public | Masih berlaku pada audit 2026-10-14 | CONFIRMED |
| `gh` tidak ada di PATH | Tidak bisa mengelola GitHub dari CLI ini | CONFIRMED |
| PowerShell 7 (`pwsh`) tidak ada di PATH | Script diuji dengan Windows PowerShell 5.1 | CONFIRMED |
| `python3` pada WindowsApps adalah alias yang gagal | Pakai `python` atau `py`, keduanya 3.13.3 | CONFIRMED |
| Perintah `code` mengarah ke shim Cursor 3.23.12 | Bukan bukti versi VS Code yang terpisah | CONFIRMED |
| Docker daemon tidak berjalan saat inventaris | `docker ps` gagal pada named pipe Desktop | CONFIRMED |
| WSL `Ubuntu-22.04` dan `docker-desktop` Stopped | Keduanya versi WSL 2 | CONFIRMED |
| `git` credential helper global tidak di-set | Tidak ada helper yang tercatat | CONFIRMED |
| Identitas Windows dan git belum disatukan | Jangan menggabungkan kedua nama | CONFIRMED sebagai ketidaktahuan |

Batasan organisasi, anggaran, dan akses production: UNKNOWN.
