---
title: "Runbook validasi"
doc_type: guide
status: active
confidence: CONFIRMED
owner: repository-maintainer
source: "Script di scripts/ pada 2026-10-14"
last_verified: 2026-10-14
next_review: 2026-11-14
sensitivity: public
summary: "Cara memeriksa metadata, secret, dan digest."
---

# Runbook validasi dan pemindaian

Jalankan dari root repository pada Windows PowerShell:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\scripts\validate-context.ps1
powershell -NoProfile -ExecutionPolicy Bypass -File .\scripts\scan-secrets.ps1
powershell -NoProfile -ExecutionPolicy Bypass -File .\scripts\generate-ai-context.ps1
powershell -NoProfile -ExecutionPolicy Bypass -File .\scripts\generate-ai-context.ps1 -Check
```

Hasil yang diharapkan adalah baris lulus dan exit code 0.

Secret scan tidak mencetak nilai yang cocok. Bila gagal, baca path dan nama pola, lalu keluarkan secret dari file.

Workflow GitHub `context-health` menjalankan pemeriksaan yang sama ditambah Markdown lint, pengecekan tautan offline, dan Gitleaks.
