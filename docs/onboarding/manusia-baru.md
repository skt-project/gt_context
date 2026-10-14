---
title: "Onboarding manusia baru"
doc_type: guide
status: active
confidence: CONFIRMED
owner: repository-maintainer
source: "Struktur repository pada 2026-10-14"
last_verified: 2026-10-14
next_review: 2026-11-14
sensitivity: internal
summary: "Cara manusia memahami repository ini dan mengubahnya dengan aman."
---

# Onboarding manusia baru

## Apa ini

Knowledge base untuk konteks kerja. Remote-nya https://github.com/skt-project/gt_context. Pada 2026-10-14 remote itu public dan scaffold baru ada di clone lokal.

## Baca

1. [README.md](../../README.md)
2. [AI_CONTEXT.md](../../AI_CONTEXT.md)
3. [context/00-overview.md](../../context/00-overview.md)
4. [context/03-current-priorities.md](../../context/03-current-priorities.md)
5. [SECURITY.md](../../SECURITY.md)

## Boleh

- Mengoreksi fakta dengan sumber dan status kepercayaan
- Menambah proyek lewat template setelah statusnya dikonfirmasi
- Menjalankan script validasi

## Tidak boleh

- Menulis secret atau data restricted
- Mengarang bagian yang masih UNKNOWN
- Push saat remote masih public dan diff memuat data internal
- Mengedit `ai/generated/context-digest.md` tangan

## Memperbarui

Ubah dokumen sumber, perbarui `last_verified`, generate digest, lalu jalankan [runbook validasi](../../operations/runbooks/validasi-dan-pemindaian.md).

## Informasi sensitif

Ikuti [SECURITY.md](../../SECURITY.md). Nilai secret tidak masuk Git. Lokasi `D:\AI\secrets` hanya dicatat sebagai nama folder.
