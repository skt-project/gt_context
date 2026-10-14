---
title: "Adapter Codex"
doc_type: guide
status: active
confidence: CONFIRMED
owner: repository-maintainer
source: "AGENTS.md pada root repository, 2026-10-14"
last_verified: 2026-10-14
next_review: 2026-11-14
sensitivity: internal
summary: "Codex diarahkan lewat AGENTS.md saat folder repository dibuka."
---

# Adapter Codex

Buka folder repository sebagai workspace. [AGENTS.md](../../AGENTS.md) adalah instruksi operasional. Urutan baca sama dengan adapter lain:

1. [README.md](../../README.md)
2. [AI_CONTEXT.md](../../AI_CONTEXT.md)
3. [AGENTS.md](../../AGENTS.md)
4. [context/00-overview.md](../../context/00-overview.md)
5. [context/03-current-priorities.md](../../context/03-current-priorities.md)

Jika sebuah sesi Codex tidak memuat file itu, tempelkan `AI_CONTEXT.md`. Tidak ada plugin logging Codex yang terpasang pada scaffold ini.
