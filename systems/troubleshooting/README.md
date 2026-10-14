---
title: "Troubleshooting lingkungan"
doc_type: guide
status: active
confidence: CONFIRMED
owner: repository-maintainer
source: "Kegagalan perintah yang terjadi saat inventaris 2026-10-14"
last_verified: 2026-10-14
next_review: 2026-11-14
sensitivity: internal
summary: "Gejala yang benar-benar muncul saat inventaris, plus pemeriksaan yang belum dilakukan."
---

# Troubleshooting lingkungan

## `docker ps` gagal

Gejala pada 2026-10-14: Docker client tidak menemukan `npipe:////./pipe/dockerDesktopLinuxEngine`. WSL `docker-desktop` berstatus Stopped. Daemon dianggap tidak berjalan. Perbaikan tidak dijalankan.

## `python3` gagal

Alias WindowsApps meminta instalasi Microsoft Store. Interpreter yang terverifikasi adalah `python` dan `py` 3.13.3 di `D:\Python`.

## `bq --version` tidak menghasilkan versi

Perintah ada, tetapi keluaran pertama adalah traceback yang tidak disimpan. Versi `bq`: UNKNOWN. `gcloud` 575.0.0 tetap terbaca.

## `gh` tidak dikenali

GitHub CLI tidak ada di PATH. Pekerjaan remote pada scaffold ini memakai Git dan GitHub REST API publik.

## Belum dicakup

Scheduled task, service Windows di luar Docker, dan konektivitas GCP tidak diuji.
