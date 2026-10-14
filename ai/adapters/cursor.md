---
title: "Adapter Cursor"
doc_type: guide
status: active
confidence: CONFIRMED
owner: repository-maintainer
source: "File .cursor/rules dan AGENTS.md yang ditulis pada 2026-10-14"
last_verified: 2026-10-14
next_review: 2026-11-14
sensitivity: internal
summary: "Cara memakai knowledge base dari Cursor."
---

# Adapter Cursor

## Jika folder repository terbuka

Cursor membaca [AGENTS.md](../../AGENTS.md) dan aturan di `.cursor/rules/global-context.mdc`. Keduanya mengarahkan agent ke:

1. [README.md](../../README.md)
2. [AI_CONTEXT.md](../../AI_CONTEXT.md)
3. [AGENTS.md](../../AGENTS.md)
4. [context/00-overview.md](../../context/00-overview.md)
5. [context/03-current-priorities.md](../../context/03-current-priorities.md)

Lalu proyek, keputusan, dan runbook yang relevan.

Buka `D:\Workspace\Knowledge\gt_context` sebagai workspace. Workspace `D:\` pada awal sesi scaffold bukan root repository ini.

## Jika Cursor tidak membuka folder ini

Salin isi `AI_CONTEXT.md` ke percakapan, atau tambahkan user rule yang menunjuk path lokal itu. Repository GitHub tidak terbaca otomatis hanya karena URL-nya ada di chat.

## Logging

Riwayat chat Cursor tidak masuk ke repository secara otomatis. Jalankan `scripts/log-ai-session.ps1` dengan ringkasan prompt.
