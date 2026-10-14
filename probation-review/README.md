---
title: "Probation review"
doc_type: guide
status: active
confidence: CONFIRMED
owner: repository-maintainer
source: "Desain logging 2026-10-14"
last_verified: 2026-10-14
next_review: 2026-11-14
sensitivity: internal
summary: "Antrean awal log AI sebelum struktur migrasi disetujui."
---

# Probation review

Taruh log sesi di sini selama masa uji. File dibuat oleh `scripts/log-ai-session.ps1`.

Migrasi ke [ai/sessions](../ai/sessions/README.md) dan [ai/prompt-history](../ai/prompt-history/README.md) memakai:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\scripts\migrate-probation-review.ps1
powershell -NoProfile -ExecutionPolicy Bypass -File .\scripts\migrate-probation-review.ps1 -Apply
```

`-Apply` belum dijalankan pada scaffold awal. README ini tidak ikut dipindahkan.
