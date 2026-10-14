---
title: "Global Context System"
doc_type: overview
status: active
confidence: CONFIRMED
owner: repository-maintainer
source: "Permintaan pengguna pada sesi Cursor 2026-10-14 dan audit repository"
last_verified: 2026-10-14
next_review: 2026-11-14
sensitivity: internal
summary: "Pintu masuk knowledge base untuk manusia dan AI."
---

# Global Context System

Repository ini adalah sumber kebenaran untuk konteks kerja yang boleh dibagikan kepada manusia dan AI. Isi yang belum terbukti ditulis sebagai `UNKNOWN`. Isi yang disimpulkan dari bukti ditulis sebagai `INFERRED`.

Remote: https://github.com/skt-project/gt_context

Pada 2026-10-14 remote itu **public** dan kosong saat diaudit. Clone lokal yang dipakai untuk scaffold ini ada di `D:\Workspace\Knowledge\gt_context`. Jangan push sebelum visibilitas diubah menjadi private dan isi dokumen disetujui. Detailnya ada di [SECURITY.md](SECURITY.md) dan [docs/audits/initial-audit.md](docs/audits/initial-audit.md).

## Baca lebih dulu

1. [AI_CONTEXT.md](AI_CONTEXT.md)
2. [AGENTS.md](AGENTS.md)
3. [context/00-overview.md](context/00-overview.md)
4. [context/03-current-priorities.md](context/03-current-priorities.md)
5. [SECURITY.md](SECURITY.md)

## Peta folder

| Path | Fungsi |
| --- | --- |
| [context/](context/00-overview.md) | Profil, cara kerja, prioritas, dan batasan |
| [projects/](projects/README.md) | Katalog dan template proyek |
| [systems/](systems/laptop/README.md) | Laptop dan lingkungan kerja |
| [knowledge/](knowledge/glossary.md) | Pengetahuan, keputusan, dan glosarium |
| [operations/](operations/recurring-tasks.md) | Tugas, runbook, insiden, dan maintenance |
| [ai/](ai/universal-instructions.md) | Instruksi AI, adapter, dan log |
| [docs/](docs/onboarding/README.md) | Onboarding, arsitektur, dan audit |
| [scripts/](scripts/README.md) | Validasi, secret scan, generate, dan logging |
| [probation-review/](probation-review/README.md) | Antrean log AI sebelum migrasi |

## Status kepercayaan

| Status | Arti |
| --- | --- |
| CONFIRMED | Terbukti oleh sumber yang disebut, atau dikonfirmasi pengguna |
| INFERRED | Kesimpulan dari bukti, belum dikonfirmasi langsung |
| UNKNOWN | Belum diketahui |
| OUTDATED | Pernah benar, tetapi mungkin tidak berlaku lagi |

Setiap dokumen penting menyimpan `source`, `last_verified`, `owner`, dan `confidence` pada frontmatter.

## Perintah

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\scripts\validate-context.ps1
powershell -NoProfile -ExecutionPolicy Bypass -File .\scripts\scan-secrets.ps1
powershell -NoProfile -ExecutionPolicy Bypass -File .\scripts\generate-ai-context.ps1
```

Ringkasan yang dihasilkan berada di [ai/generated/context-digest.md](ai/generated/context-digest.md). File itu bukan sumber kebenaran.
