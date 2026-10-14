---
title: "Katalog direktori lokal"
doc_type: catalog
status: active
confidence: CONFIRMED
owner: repository-maintainer
source: "git remote, git log -1 --format=%cs, dan judul README pada D:\\GitHub tanggal 2026-10-14"
last_verified: 2026-10-14
next_review: 2026-11-14
sensitivity: internal
summary: "Checkout dan folder di D:\\GitHub. Status siklus hidup belum dikonfirmasi."
---

# Katalog direktori lokal

Pemeriksaan terbatas pada anak langsung `D:\GitHub`. Working tree tidak dibandingkan. Isi README tidak disalin. Kalimat di kolom "Klaim README" adalah parafrase judul dan pembuka, dengan status CONFIRMED bahwa file itu menyatakan hal tersebut pada tanggal pemeriksaan.

| Direktori | Branch | Origin | Commit terakhir | Klaim README |
| --- | --- | --- | --- | --- |
| `D:\GitHub\docker-airflow` | master | https://github.com/skt-project/docker-airflow.git | 2026-07-09 | README tidak ada |
| `D:\GitHub\docker-airflow-gt-fact-materialization` | feature/gt-fact-materialization-pipeline | https://github.com/skt-project/docker-airflow.git | 2026-07-09 | README tidak ada |
| `D:\GitHub\irwan-ai` | `git rev-parse --abbrev-ref HEAD` mengembalikan HEAD; origin tidak ada | tidak ada | tidak ada commit | Judul "Irwan AI". Pembuka menyebut asisten internal di DingTalk yang di-deploy ke GCP Cloud Run |
| `D:\GitHub\online-bi-dashboard-mockup` | bukan git root | UNKNOWN | UNKNOWN | UNKNOWN |
| `D:\GitHub\po-portal` | main | tidak ada | 2026-09-15 | Judul "PO Portal". Pembuka menyebut portal FastAPI dan React untuk approval Purchase Order, dengan persistence UAT/production pada BigQuery |
| `D:\GitHub\sfa-mobile` | fix/sync-issues | https://github.com/skt-project/sfa-mobile.git | 2026-07-23 | Judul "Skintific SFA — STEP Mobile". Pembuka menyebut aplikasi Android offline-first, rilis README v1.4.2 |
| `D:\GitHub\sfa-step` | feature/step-enterprise-platform | https://github.com/skt-project/sfa-step.git | 2026-09-09 | Judul "Skintific Territory & Execution Platform (STEP)". Pembuka menyebut web app dan backend API |
| `D:\GitHub\skintific-one` | bukan git root | UNKNOWN | UNKNOWN | UNKNOWN |
| `D:\GitHub\streamlit_app` | migration/cloud-run | https://github.com/skt-project/streamlit_app.git | 2026-10-14 | Judul README "noo-detector". Fungsi produk UNKNOWN |

Dua folder `docker-airflow` memakai origin dan tanggal commit terakhir yang sama. Apakah working tree-nya sama: UNKNOWN.

## Folder lain yang terlihat, belum diaudit sebagai proyek

Anak langsung `D:\Workspace` pada pemeriksaan sebelumnya: `Archive`, `Company`, `EWOS`, `Knowledge`, `Projects`, `review_inspect_20260930_a`.

Anak langsung `D:\` yang namanya tampak terkait kerja: `ITL Trisakti`, `management`, `priority-list`, `spreadsheet_task_tmp`, `AI`.

Tujuan folder-folder itu UNKNOWN. Isi `D:\AI\secrets` tidak dibaca. Lihat [SECURITY.md](../../SECURITY.md).
