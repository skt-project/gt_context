---
title: "Service"
doc_type: reference
status: active
confidence: CONFIRMED
owner: repository-maintainer
source: "docker ps dan wsl -l -v pada 2026-10-14"
last_verified: 2026-10-14
next_review: 2026-11-14
sensitivity: internal
summary: "Docker daemon tidak berjalan. Daftar service Windows tidak diambil."
---

# Service

| Service | Status pada pemeriksaan | Kepercayaan |
| --- | --- | --- |
| Docker Desktop Linux engine | named pipe tidak ada, `docker ps` gagal | CONFIRMED |
| WSL distro `docker-desktop` | Stopped, WSL 2 | CONFIRMED |
| WSL distro `Ubuntu-22.04` | Stopped, WSL 2 | CONFIRMED |

Daftar service Windows, database server, dan scheduled task tidak diambil. Statusnya UNKNOWN.

Cara menjalankan Docker tidak diubah. Untuk memakai daemon, mulai Docker Desktop di luar repository ini, lalu ulangi `docker ps`.
