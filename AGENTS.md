---
title: "Instruksi agent"
doc_type: policy
status: active
confidence: CONFIRMED
owner: repository-maintainer
source: "Permintaan pengguna pada sesi Cursor 2026-10-14"
last_verified: 2026-10-14
next_review: 2026-11-14
sensitivity: internal
summary: "Instruksi operasional untuk coding agent yang bekerja di repository ini."
---

# Instruksi agent

Berlaku untuk Cursor, Claude Code, Codex, Copilot, dan agent lain yang membuka repository ini.

## Sebelum mengubah apa pun

Baca:

1. [README.md](README.md)
2. [AI_CONTEXT.md](AI_CONTEXT.md)
3. [context/00-overview.md](context/00-overview.md)
4. [context/03-current-priorities.md](context/03-current-priorities.md)
5. Dokumen proyek, keputusan, dan runbook yang disebut tugas

Jika dokumen-dokumen itu tidak tersedia di sesi, minta pengguna membuka folder repository. Jangan berasumsi bahwa AI dapat membaca GitHub secara otomatis.

## Saat bekerja

- Ubah sumber kebenaran. Jangan mengedit file generated kecuali dengan menjalankan script generate.
- Pertahankan frontmatter. Perbarui `last_verified` bila fakta berubah.
- Bedakan fakta mesin, klaim README proyek, dan kesimpulan.
- Jangan menyalin isi folder `D:\AI\secrets` atau file credential.
- Jangan mengubah git config, sistem operasi, atau service.
- Jangan push, force-push, atau melewati hook kecuali pengguna meminta dengan eksplisit.
- Commit hanya saat pengguna meminta.

## Setelah bekerja

1. Jalankan validasi dan secret scan di [operations/runbooks/validasi-dan-pemindaian.md](operations/runbooks/validasi-dan-pemindaian.md).
2. Regenerasi digest bila frontmatter sumber berubah.
3. Catat sesi dengan `scripts/log-ai-session.ps1` bila pekerjaan layak diingat.
4. Tandai `persist_to_knowledge_base` sebagai `yes` hanya jika ada fakta yang harus dipindahkan ke `context/`, `projects/`, `systems/`, atau `knowledge/`.

## Jika informasi bentrok

Tampilkan kedua klaim, sumbernya, dan tanggalnya. Jangan memilih salah satu tanpa bukti baru. Pemeriksaan `fact_id` hanya menangkap konflik yang memakai id yang sama; konflik prosa tetap diperiksa manusia.
