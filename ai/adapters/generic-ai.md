---
title: "Adapter AI generik"
doc_type: guide
status: active
confidence: CONFIRMED
owner: repository-maintainer
source: "Tidak ada konektor ChatGPT atau Copilot yang terpasang pada 2026-10-14"
last_verified: 2026-10-14
next_review: 2026-11-14
sensitivity: internal
summary: "Cara menghubungkan AI yang tidak membaca repository secara otomatis."
---

# Adapter AI generik

Berlaku untuk ChatGPT, Copilot chat di luar instruksi repository, dan agent lain.

## Copilot di editor

File [`.github/copilot-instructions.md`](../../.github/copilot-instructions.md) mengikuti konvensi instruksi repository GitHub Copilot. Apakah sebuah paket Copilot memuat file itu bergantung pada produk yang terpasang. Keadaan paket di laptop ini: UNKNOWN.

## ChatGPT dan AI tanpa akses folder

1. Unggah atau tempel [AI_CONTEXT.md](../../AI_CONTEXT.md).
2. Minta model membaca urutan di file itu sebelum menjawab.
3. Setelah sesi, isi [template tempel](../templates/manual-prompt-entry.md).
4. Simpan JSON itu, lalu jalankan:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\scripts\log-ai-session.ps1 -InputFile .\jalur\sesi.json
```

Tidak ada API, export, atau plugin yang terverifikasi pada mesin ini untuk menarik riwayat ChatGPT secara otomatis.

## Yang tetap dibaca

1. [README.md](../../README.md)
2. [AI_CONTEXT.md](../../AI_CONTEXT.md)
3. [AGENTS.md](../../AGENTS.md)
4. [context/00-overview.md](../../context/00-overview.md)
5. [context/03-current-priorities.md](../../context/03-current-priorities.md)
6. Proyek yang relevan di [katalog](../../projects/catalog/direktori-lokal.md)
7. Keputusan dan runbook yang relevan
