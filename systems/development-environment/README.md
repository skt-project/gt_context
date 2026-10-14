---
title: "Lingkungan pengembangan"
doc_type: reference
status: active
confidence: CONFIRMED
owner: repository-maintainer
source: "Get-Command dan git config --global pada 2026-10-14"
last_verified: 2026-10-14
next_review: 2026-11-14
sensitivity: internal
summary: "Shell, Git, runtime, dan identitas Git yang terverifikasi."
---

# Lingkungan pengembangan

## Shell dan terminal

| Alat | Versi | Lokasi | Kepercayaan |
| --- | --- | --- | --- |
| Windows PowerShell | 5.1.26100.9444 | Desktop edition | CONFIRMED |
| Git Bash | GNU bash 5.3.9(1)-release | `D:\Git\bin\bash.exe` | CONFIRMED |
| OpenSSH | OpenSSH_for_Windows_9.5p2, LibreSSL 3.8.2 | `C:\Windows\System32\OpenSSH\ssh.exe` | CONFIRMED |
| PowerShell 7 | tidak ada di PATH | UNKNOWN di luar PATH | CONFIRMED tidak ada di PATH |
| `bash` WindowsApps | gagal karena tidak ada `/bin/bash` WSL yang bisa dijalankan dari alias itu | WindowsApps | CONFIRMED pada percobaan `--version` |

## Git

| Item | Nilai | Kepercayaan |
| --- | --- | --- |
| Versi | 2.54.0.windows.1 | CONFIRMED |
| Lokasi | `D:\Git\cmd\git.exe` | CONFIRMED |
| user.name | Irwan Raditya | CONFIRMED |
| user.email | terisi, nilai tidak disimpan | CONFIRMED |
| credential.helper | tidak di-set | CONFIRMED |
| init.defaultBranch | tidak di-set | CONFIRMED |
| pull.rebase | tidak di-set | CONFIRMED |
| core.editor | tidak di-set | CONFIRMED |
| core.autocrlf | tidak di-set | CONFIRMED |

Workflow yang teramati: clone HTTPS ke folder kerja, branch mengikuti checkout masing-masing. Remote `gt_context` belum menerima push dari scaffold ini.

## Runtime di PATH

| Runtime | Versi | Lokasi |
| --- | --- | --- |
| Python | 3.13.3 | `D:\Python\python.exe` |
| py launcher | 3.13.3 | `C:\Windows\py.exe` |
| pip | 26.2.1 | `D:\Python\Scripts\pip.exe` |
| Node.js | v26.3.0 | `D:\nodejs\node.exe` |
| npm | 11.16.0 | `D:\nodejs\npm.ps1` |

`python3` pada WindowsApps bukan interpreter. Ia meminta instalasi Microsoft Store.

Paket Python yang terpasang pada interpreter default:

| Paket | Versi |
| --- | --- |
| pandas | 3.0.3 |
| google-cloud-bigquery | 3.27.0 |
| streamlit | 1.58.0 |
| pytest | 9.1.1 |
| apache-airflow | tidak terpasang |
| litellm | tidak terpasang |
| dbt-core | tidak terpasang |

Java, Go, Rust, .NET, PHP, Ruby, conda, pnpm, yarn, bun, dan deno tidak ada di PATH pada pemeriksaan ini. Keberadaannya di luar PATH: UNKNOWN.

## Editor

| Perintah | Hasil |
| --- | --- |
| `cursor` | 3.23.12 di `D:\cursor\resources\app\bin\cursor.cmd` |
| `code` | 3.23.12 di `d:\cursor\resources\app\codeBin\code.cmd` |

Folder `D:\Microsoft VS Code` ada. Versi produk VS Code yang terpisah: UNKNOWN.
