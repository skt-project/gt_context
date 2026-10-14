---
title: "Indeks script"
doc_type: guide
status: active
confidence: CONFIRMED
owner: repository-maintainer
source: "Script PowerShell pada scaffold 2026-10-14"
last_verified: 2026-10-14
next_review: 2026-11-14
sensitivity: public
summary: "Perintah validasi, secret scan, generate, log, migrasi, dan changelog."
---

# Script

Semua script memakai Windows PowerShell 5.1 dan menulis UTF-8 tanpa BOM.

| Script | Fungsi |
| --- | --- |
| `validate-context.ps1` | Frontmatter, tanggal, tautan relatif, judul ganda, `fact_id`, status proyek, dan pola secret |
| `scan-secrets.ps1` | Self-test pola, lalu pindai repository tanpa mencetak nilai |
| `generate-ai-context.ps1` | Menulis digest. `-Check` membandingkan tanpa menulis |
| `log-ai-session.ps1` | Menulis log ke `probation-review/`. `-InputFile` menerima JSON |
| `migrate-probation-review.ps1` | Dry-run. `-Apply` memindahkan log yang lulus scan |
| `update-changelog.ps1` | Menambah butir di bawah `## [Unreleased]`. `-DryRun` tidak menulis |

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\scripts\validate-context.ps1
powershell -NoProfile -ExecutionPolicy Bypass -File .\scripts\scan-secrets.ps1
powershell -NoProfile -ExecutionPolicy Bypass -File .\scripts\generate-ai-context.ps1
powershell -NoProfile -ExecutionPolicy Bypass -File .\scripts\log-ai-session.ps1 -Platform cursor -Prompt "Ringkasan" -Goal "Tujuan"
powershell -NoProfile -ExecutionPolicy Bypass -File .\scripts\migrate-probation-review.ps1
powershell -NoProfile -ExecutionPolicy Bypass -File .\scripts\update-changelog.ps1 -Note "Contoh" -DryRun
```
