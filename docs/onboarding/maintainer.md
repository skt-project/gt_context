---
title: "Onboarding maintainer"
doc_type: guide
status: active
confidence: CONFIRMED
owner: repository-maintainer
source: "Script dan workflow pada 2026-10-14"
last_verified: 2026-10-14
next_review: 2026-11-14
sensitivity: internal
summary: "Cara merawat metadata, validasi, dan changelog."
---

# Onboarding maintainer

## Tugas

- Menjaga frontmatter dan tanggal tinjau
- Menjalankan [runbook validasi](../../operations/runbooks/validasi-dan-pemindaian.md) sebelum commit
- Meninjau log di [probation-review](../../probation-review/README.md)
- Memindahkan fakta yang `persist_to_knowledge_base`-nya `yes` ke dokumen sumber
- Menulis ADR untuk keputusan yang mengubah struktur

## Perintah

Ada di [scripts/README.md](../../scripts/README.md). Workflow `.github/workflows/context-health.yml` mengulang pemeriksaan itu di GitHub Actions.

## Perubahan

Branch dari `main`, commit dengan pesan yang menjelaskan alasan, dan jangan push selama [ADR visibilitas](../../knowledge/decisions/0002-visibilitas-repository.md) masih proposed dan remote masih public.

## Sensitivitas

Tolak file `restricted`. Scanner yang lulus tidak sama dengan izin push.
