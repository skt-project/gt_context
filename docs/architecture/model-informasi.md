---
title: "Model informasi"
doc_type: reference
status: active
confidence: CONFIRMED
owner: repository-maintainer
source: "Desain scaffold 2026-10-14"
last_verified: 2026-10-14
next_review: 2026-11-14
sensitivity: public
summary: "Jenis dokumen, status, dan alur log AI."
---

# Model informasi

## Objek

| Objek | Lokasi | Contoh |
| --- | --- | --- |
| Fakta konteks | `context/` | profil, prioritas |
| Proyek | `projects/` | katalog atau berkas siklus hidup |
| Sistem | `systems/` | laptop, toolchain |
| Pengetahuan | `knowledge/` | ADR, riset, lesson learned |
| Operasi | `operations/` | runbook, insiden |
| Sesi AI | `probation-review/` lalu `ai/sessions/` | log script |
| Ringkasan prompt | `ai/prompt-history/` | hasil migrasi |

## Metadata

Setiap dokumen penting memiliki `last_verified`, `next_review`, `owner`, `confidence`, `source`, dan `status`. Skema ada di [frontmatter.schema.json](../../ai/schemas/frontmatter.schema.json).

`fact_id` opsional dan hanya satu per file. ID yang sama dengan ringkasan berbeda membuat validasi gagal. Konflik yang tidak memakai ID yang sama tidak terdeteksi otomatis.

## Alur log

```text
platform AI -> template atau script -> probation-review -> tinjauan -> ai/sessions dan ai/prompt-history
```

Migrasi bawaan adalah dry-run.
