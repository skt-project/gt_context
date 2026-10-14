---
title: "Adapter Claude Code"
doc_type: guide
status: active
confidence: CONFIRMED
owner: repository-maintainer
source: "CLAUDE.md yang ditulis pada 2026-10-14. Hook logging tidak dipasang."
last_verified: 2026-10-14
next_review: 2026-11-14
sensitivity: internal
summary: "Claude Code membaca CLAUDE.md bila working directory adalah repository ini."
---

# Adapter Claude Code

## Working directory repository

[CLAUDE.md](../../CLAUDE.md) menunjuk ke README, AI_CONTEXT, AGENTS, ikhtisar, dan prioritas. Claude Code membacanya ketika folder ini adalah working directory.

## Sesi yang tidak membuka folder

Clone repository ke mesin yang dipakai Claude Code, lalu jalankan sesi dari folder itu. Tidak ada integrasi yang menarik repository ini dari GitHub tanpa clone atau lampiran.

## Logging

Tidak ada hook Claude Code yang terpasang pada 2026-10-14. Pakai template manual atau `scripts/log-ai-session.ps1 -InputFile`.
