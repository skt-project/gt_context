---
title: "Template prompt manual"
doc_type: template
status: draft
confidence: UNKNOWN
owner: repository-maintainer
source: "Kebutuhan import untuk platform tanpa API pada 2026-10-14"
last_verified: 2026-10-14
next_review: 2026-11-14
sensitivity: internal
summary: "JSON yang dinormalisasi oleh log-ai-session.ps1."
---

# Template prompt manual

Salin JSON ini ke file di luar chat, isi nilainya, lalu jalankan `scripts/log-ai-session.ps1 -InputFile`. Field yang tidak dikenal diabaikan. `platform`, `prompt`, dan `goal` wajib.

```json
{
  "timestamp": "2026-10-14T00:00:00Z",
  "platform": "chatgpt",
  "model": "UNKNOWN",
  "workspace": "UNKNOWN",
  "project": "UNKNOWN",
  "prompt": "Ringkasan prompt tanpa secret",
  "goal": "Tujuan sesi",
  "files_touched": "",
  "decisions": "",
  "important_output": "",
  "follow_up": "",
  "status": "draft",
  "persist_to_knowledge_base": "unknown",
  "sensitivity": "internal",
  "session_id": ""
}
```

Jangan menaruh token atau password pada field mana pun. Sensitivity `restricted` ditolak dan tidak ditulis.
