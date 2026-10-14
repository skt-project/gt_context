---
title: "Indeks dokumen tertulis"
doc_type: catalog
status: active
confidence: CONFIRMED
owner: repository-maintainer
source: "scripts/inventory-written-sources.py pada checkout lokal 2026-10-14"
last_verified: 2026-10-14
next_review: 2026-11-14
sensitivity: internal
summary: "Daftar dokumen markdown, SQL, dan aturan yang ditemukan. Isi credential tidak disalin."
generated: "true"
---

<!-- GENERATED FILE. Jangan mengedit tangan. -->

# Indeks dokumen tertulis

Setiap baris adalah file yang ada pada tanggal generate. Judul diambil dari heading pertama. Isi lengkap tetap di path sumber. File yang namanya mengandung credential, secret, token, atau password tidak masuk tabel.

Jumlah yang diindeks: 1104. Jumlah yang dilewati: 35.

| Path | Jenis | Judul |
| --- | --- | --- |
| `D:\GitHub\docker-airflow\.cursor\rules\airflow-windows-server.mdc` | .mdc | Airflow is on-prem Windows, not GCP |
| `D:\GitHub\docker-airflow\ADR\001-offline-store-api-raw-landing-layer.md` | .md | ADR 001 — Raw landing (bronze) layer for the Offline Store Info API |
| `D:\GitHub\docker-airflow\ADR\002-brand-incremental-ingestion.md` | .md | ADR 002 — Brand-by-brand incremental commit for the Offline Store API ingestion |
| `D:\GitHub\docker-airflow\ADR\003-cdc-scd2-architecture.md` | .md | ADR 003 — CDC / SCD-2 architecture for the Offline Store Info API landing layer |
| `D:\GitHub\docker-airflow\ADR\003-stock-analysis-historical-snapshots.md` | .md | ADR 003 — Historical stock snapshots for `stock_analysis_sp` |
| `D:\GitHub\docker-airflow\ADR\004-distributor-aom-mapping-table.md` | .md | ADR 004 — Distributor AOM mapping as a separate overlay table |
| `D:\GitHub\docker-airflow\ADR\005-safe-master-sync.md` | .md | ADR 005 — Safe staging + validate + MERGE for Google-Sheet master tables |
| `D:\GitHub\docker-airflow\ADR\006-canonical-store-brand-mapping.md` | .md | ADR 006 — Canonical store master with store-brand mapping |
| `D:\GitHub\docker-airflow\ADR\007-final-stock-weekly-gt-mti.md` | .md | ADR 007 — Weekly Final Stock (GT + MTI): chronological reset engine |
| `D:\GitHub\docker-airflow\ADR\008-store-stock-v2-daily-weekly-13week.md` | .md | ADR 008 — Store Stock v2: daily layer, 13-week window, ST/SO-based anomaly rule |
| `D:\GitHub\docker-airflow\ADR\009-canonical-multi-channel-stock-discovery.md` | .md | ADR 009 — Canonical Multi-Channel Stock: discovery & architecture |
| `D:\GitHub\docker-airflow\ADR\010-unified-bronze-silver-stock.md` | .md | ADR 010 — Unified Bronze + Silver multi-channel stock foundation |
| `D:\GitHub\docker-airflow\ADR\011-gt-mti-mapping-and-productionization.md` | .md | ADR 011 — GT/MTI stock foundation: mapping investigation + productionization plan |
| `D:\GitHub\docker-airflow\ADR\012-gold-gt-mti-store-stock.md` | .md | ADR 012 — Gold GT/MTI Store Stock layer (ST, SO, carry-forward, OSA/OOS, anomaly) |
| `D:\GitHub\docker-airflow\ADR\README.md` | .md | ADR/ |
| `D:\GitHub\docker-airflow\checklists\README.md` | .md | checklists/ |
| `D:\GitHub\docker-airflow\context\README.md` | .md | context/ |
| `D:\GitHub\docker-airflow\context\active_files.md` | .md | Active Files |
| `D:\GitHub\docker-airflow\context\current_status.md` | .md | Current Status |
| `D:\GitHub\docker-airflow\context\important_paths.md` | .md | Important Paths |
| `D:\GitHub\docker-airflow\context\next_session.md` | .md | Next Session |
| `D:\GitHub\docker-airflow\context\project_summary.md` | .md | Project Summary — docker-airflow |
| `D:\GitHub\docker-airflow\database\README.md` | .md | database/ |
| `D:\GitHub\docker-airflow\database\deploy\00_rollback_procedure_pre_20260805.sql` | .sql | 00_rollback_procedure_pre_20260805 |
| `D:\GitHub\docker-airflow\database\deploy\01_row_hash_udf.sql` | .sql | 01_row_hash_udf |
| `D:\GitHub\docker-airflow\database\deploy\02_alter_table.sql` | .sql | 02_alter_table |
| `D:\GitHub\docker-airflow\database\deploy\03_backfill_row_hash.sql` | .sql | 03_backfill_row_hash |
| `D:\GitHub\docker-airflow\database\deploy\04_procedure.sql` | .sql | 04_procedure |
| `D:\GitHub\docker-airflow\database\deploy\gold_weekly_resolution\00_preflight_and_backup.sql` | .sql | 00_preflight_and_backup |
| `D:\GitHub\docker-airflow\database\deploy\gold_weekly_resolution\01_alter_table.sql` | .sql | 01_alter_table |
| `D:\GitHub\docker-airflow\database\deploy\gold_weekly_resolution\02_procedure_and_backfill.sql` | .sql | 02_procedure_and_backfill |
| `D:\GitHub\docker-airflow\database\deploy\gold_weekly_resolution\03_post_validation.sql` | .sql | 03_post_validation |
| `D:\GitHub\docker-airflow\database\deploy\gold_weekly_resolution\99_rollback.sql` | .sql | 99_rollback |
| `D:\GitHub\docker-airflow\database\deploy\stock_medallion_rename_2026-10-01\01_snapshots.sql` | .sql | 01_snapshots |
| `D:\GitHub\docker-airflow\database\deploy\stock_medallion_rename_2026-10-01\02_create_and_copy.sql` | .sql | 02_create_and_copy |
| `D:\GitHub\docker-airflow\database\deploy\stock_medallion_rename_2026-10-01\03_validate_copy.sql` | .sql | 03_validate_copy |
| `D:\GitHub\docker-airflow\database\deploy\stock_medallion_rename_2026-10-01\04_procedures_and_views.sql` | .sql | 04_procedures_and_views |
| `D:\GitHub\docker-airflow\database\deploy\stock_medallion_rename_2026-10-01\05_msl_views.sql` | .sql | 05_msl_views |
| `D:\GitHub\docker-airflow\database\deploy\stock_medallion_rename_2026-10-01\06_drop_old.sql` | .sql | 06_drop_old |
| `D:\GitHub\docker-airflow\database\deploy\stock_medallion_rename_2026-10-01\07_post_validation.sql` | .sql | 07_post_validation |
| `D:\GitHub\docker-airflow\database\deploy\stock_medallion_rename_2026-10-01\99_rollback.sql` | .sql | 99_rollback |
| `D:\GitHub\docker-airflow\database\deploy\stock_notation_2026-10-14\01_config_and_tables.sql` | .sql | 01_config_and_tables |
| `D:\GitHub\docker-airflow\database\deploy\stock_notation_2026-10-14\02_views.sql` | .sql | 02_views |
| `D:\GitHub\docker-airflow\database\deploy\stock_notation_2026-10-14\99_rollback.sql` | .sql | 99_rollback |
| `D:\GitHub\docker-airflow\database\gt_in_transit\01_current_in_transit.sql` | .sql | 01_current_in_transit |
| `D:\GitHub\docker-airflow\database\gt_in_transit\02_hist_in_transit_diagnostic.sql` | .sql | 02_hist_in_transit_diagnostic |
| `D:\GitHub\docker-airflow\database\gt_in_transit\03_validation.sql` | .sql | 03_validation |
| `D:\GitHub\docker-airflow\database\gt_mart.sp_final_stock_weekly_gt_mti.sql` | .sql | gt_mart.sp_final_stock_weekly_gt_mti |
| `D:\GitHub\docker-airflow\database\gt_mart.sp_stock_bronze_silver_gt_mti.GOLD_STAGED.sql` | .sql | gt_mart.sp_stock_bronze_silver_gt_mti.GOLD_STAGED |
| `D:\GitHub\docker-airflow\database\gt_mart.sp_stock_bronze_silver_gt_mti.PRE_GOLD.sql` | .sql | gt_mart.sp_stock_bronze_silver_gt_mti.PRE_GOLD |
| `D:\GitHub\docker-airflow\database\gt_mart.sp_stock_bronze_silver_gt_mti.WEEKLY_ONLY.sql` | .sql | gt_mart.sp_stock_bronze_silver_gt_mti.WEEKLY_ONLY |
| `D:\GitHub\docker-airflow\database\gt_mart.sp_stock_bronze_silver_gt_mti.WEEKLY_ONLY_FIX1.sql` | .sql | gt_mart.sp_stock_bronze_silver_gt_mti.WEEKLY_ONLY_FIX1 |
| `D:\GitHub\docker-airflow\database\gt_mart.sp_stock_bronze_silver_gt_mti.WEEKLY_RESOLUTION.sql` | .sql | gt_mart.sp_stock_bronze_silver_gt_mti.WEEKLY_RESOLUTION |
| `D:\GitHub\docker-airflow\database\gt_mart.sp_stock_bronze_silver_gt_mti.sql` | .sql | gt_mart.sp_stock_bronze_silver_gt_mti |
| `D:\GitHub\docker-airflow\database\gt_mart.sp_store_stock_notation_weekly.sql` | .sql | gt_mart.sp_store_stock_notation_weekly |
| `D:\GitHub\docker-airflow\database\gt_mart.sp_store_stock_v2_daily_weekly.sql` | .sql | gt_mart.sp_store_stock_v2_daily_weekly |
| `D:\GitHub\docker-airflow\database\gt_mart_jbp_real_data_migration.sql` | .sql | gt_mart_jbp_real_data_migration |
| `D:\GitHub\docker-airflow\database\gt_mart_jbp_real_data_validation.sql` | .sql | gt_mart_jbp_real_data_validation |
| `D:\GitHub\docker-airflow\database\gt_schema.dim_rebate_source_deleted.sql` | .sql | gt_schema.dim_rebate_source_deleted |
| `D:\GitHub\docker-airflow\database\gt_schema.dim_store_group_mapping_deleted.sql` | .sql | gt_schema.dim_store_group_mapping_deleted |
| `D:\GitHub\docker-airflow\database\gt_schema.jbp_target_rule_monthly_stg.sql` | .sql | gt_schema.jbp_target_rule_monthly_stg |
| `D:\GitHub\docker-airflow\database\gt_schema.mapping_st_so_ba_store.sql` | .sql | gt_schema.mapping_st_so_ba_store |
| `D:\GitHub\docker-airflow\database\gt_schema.master_distributor_aom.sql` | .sql | gt_schema.master_distributor_aom |
| `D:\GitHub\docker-airflow\database\gt_schema.master_store_database_api.sql` | .sql | gt_schema.master_store_database_api |
| `D:\GitHub\docker-airflow\database\gt_schema.master_store_database_api_hist.sql` | .sql | gt_schema.master_store_database_api_hist |
| `D:\GitHub\docker-airflow\database\gt_schema.master_store_database_api_support.sql` | .sql | gt_schema.master_store_database_api_support |
| `D:\GitHub\docker-airflow\database\gt_schema.master_sync_audit_log.sql` | .sql | gt_schema.master_sync_audit_log |
| `D:\GitHub\docker-airflow\database\gt_schema.rebate_group_target_achievement_deleted.sql` | .sql | gt_schema.rebate_group_target_achievement_deleted |
| `D:\GitHub\docker-airflow\database\gt_schema.rebate_store_target_achievement_deleted.sql` | .sql | gt_schema.rebate_store_target_achievement_deleted |
| `D:\GitHub\docker-airflow\database\gt_schema.rebate_store_target_deleted.sql` | .sql | gt_schema.rebate_store_target_deleted |
| `D:\GitHub\docker-airflow\database\gt_schema.sp_build_msl_mart.sql` | .sql | gt_schema.sp_build_msl_mart |
| `D:\GitHub\docker-airflow\database\gt_target_brand_addon\01_gt_schema.fact_gt_target_brand_addon_t.sql` | .sql | 01_gt_schema.fact_gt_target_brand_addon_t |
| `D:\GitHub\docker-airflow\database\gt_target_brand_addon\02_pbi_gt_dataset.fact_sales_po_gt_v2_v.sql` | .sql | 02_pbi_gt_dataset.fact_sales_po_gt_v2_v |
| `D:\GitHub\docker-airflow\database\gt_target_brand_addon\03_rsa_views.sql` | .sql | 03_rsa_views |
| `D:\GitHub\docker-airflow\database\gt_target_brand_addon\04_validation.sql` | .sql | 04_validation |
| `D:\GitHub\docker-airflow\database\gt_target_brand_addon\05_region_level_targets.sql` | .sql | 05_region_level_targets |
| `D:\GitHub\docker-airflow\database\gt_target_brand_addon\README.md` | .md | gt_target_brand_addon |
| `D:\GitHub\docker-airflow\database\gt_target_brand_addon\rollback\02_pbi_gt_dataset.fact_sales_po_gt_v2_v.ROLLBACK.sql` | .sql | 02_pbi_gt_dataset.fact_sales_po_gt_v2_v.ROLLBACK |
| `D:\GitHub\docker-airflow\database\gt_target_brand_addon\rollback\02b_pbi_gt_dataset.fact_sales_po_gt_v2_v.before_region_level.ROLLBACK.sql` | .sql | 02b_pbi_gt_dataset.fact_sales_po_gt_v2_v.before_region_level.ROLLBACK |
| `D:\GitHub\docker-airflow\database\gt_target_brand_addon\rollback\03_rsa_views.ROLLBACK.sql` | .sql | 03_rsa_views.ROLLBACK |
| `D:\GitHub\docker-airflow\database\gt_target_long\00_design_confirmation.md` | .md | Phase 1 design confirmation |
| `D:\GitHub\docker-airflow\database\gt_target_long\01_gt_schema.cfg_brand_target_column.sql` | .sql | 01_gt_schema.cfg_brand_target_column |
| `D:\GitHub\docker-airflow\database\gt_target_long\02_gt_schema.stg_gt_target_unpivot.sql` | .sql | 02_gt_schema.stg_gt_target_unpivot |
| `D:\GitHub\docker-airflow\database\gt_target_long\03_gt_schema.fact_gt_target_long_t.sql` | .sql | 03_gt_schema.fact_gt_target_long_t |
| `D:\GitHub\docker-airflow\database\gt_target_long\04_seed_cfg_brand_target_column.sql` | .sql | 04_seed_cfg_brand_target_column |
| `D:\GitHub\docker-airflow\database\gt_target_long\05_transform.sql` | .sql | 05_transform |
| `D:\GitHub\docker-airflow\database\gt_target_long\06_load_fact.sql` | .sql | 06_load_fact |
| `D:\GitHub\docker-airflow\database\gt_target_long\07_validation.sql` | .sql | 07_validation |
| `D:\GitHub\docker-airflow\database\gt_target_long\09_phase1_1_validation.sql` | .sql | 09_phase1_1_validation |
| `D:\GitHub\docker-airflow\database\gt_target_long\10_gt_schema.fact_gt_target_long_shadow_v.sql` | .sql | 10_gt_schema.fact_gt_target_long_shadow_v |
| `D:\GitHub\docker-airflow\database\gt_target_long\11_stg_gt_target_noo_map_shadow.sql` | .sql | 11_stg_gt_target_noo_map_shadow |
| `D:\GitHub\docker-airflow\database\gt_target_long\13_stg_gt_target_invalid_distributor_v.sql` | .sql | 13_stg_gt_target_invalid_distributor_v |
| `D:\GitHub\docker-airflow\database\gt_target_long\README.md` | .md | gt_target_long — Phase 1 |
| `D:\GitHub\docker-airflow\database\gt_target_long\phase1_1_aggregation.md` | .md | Phase 1.1 — Aggregation reconciliation |
| `D:\GitHub\docker-airflow\database\gt_target_long\phase1_1_distributor_exceptions.md` | .md | Phase 1.1 — Distributor exception report |
| `D:\GitHub\docker-airflow\database\gt_target_long\phase1_1_region_asm_exceptions.md` | .md | Phase 1.1 — Region / ASM exception report |
| `D:\GitHub\docker-airflow\database\gt_target_long\phase1_1_status.md` | .md | Phase 1.1 status |
| `D:\GitHub\docker-airflow\database\gt_target_long\phase1_validation_report.md` | .md | GT Target Long — Phase 1 validation report |
| `D:\GitHub\docker-airflow\database\gt_target_long\phase2_1_canonical_reconciliation.md` | .md | Phase 2.1 — Canonical Reconciliation |
| `D:\GitHub\docker-airflow\database\gt_target_long\phase2_1_distributor_dq.md` | .md | Phase 2.1 — Distributor Data Quality |
| `D:\GitHub\docker-airflow\database\gt_target_long\phase2_1_metric_audit.md` | .md | Phase 2.1 — Metric Audit |
| `D:\GitHub\docker-airflow\database\gt_target_long\phase2_1_readiness.md` | .md | Phase 2.1 — Final Readiness Report |
| `D:\GitHub\docker-airflow\database\gt_target_long\phase2_1_value_gap_waterfall.md` | .md | Phase 2.1 — Value Gap Waterfall |
| `D:\GitHub\docker-airflow\database\gt_target_long\phase2_2_canonical_reconciliation.md` | .md | Phase 2.2 — B. Canonical Reconciliation |
| `D:\GitHub\docker-airflow\database\gt_target_long\phase2_2_invalid_distributor.md` | .md | Phase 2.2 — C. Invalid Distributor Report |
| `D:\GitHub\docker-airflow\database\gt_target_long\phase2_2_legacy_pbi_gap.md` | .md | Phase 2.2 — E. Legacy PBI Gap Explanation |
| `D:\GitHub\docker-airflow\database\gt_target_long\phase2_2_metric_audit.md` | .md | Phase 2.2 — A. Final Metric Audit |
| `D:\GitHub\docker-airflow\database\gt_target_long\phase2_2_readiness.md` | .md | Phase 2.2 — F. Final Readiness Status |
| `D:\GitHub\docker-airflow\database\gt_target_long\phase2_2_region_asm_coverage.md` | .md | Phase 2.2 — D. Region / ASM Coverage |
| `D:\GitHub\docker-airflow\database\gt_target_long\phase2_distributor_reconciliation.md` | .md | Phase 2 — Distributor-level reconciliation |
| `D:\GitHub\docker-airflow\database\gt_target_long\phase2_exception_summary.md` | .md | Phase 2 — Exception summary |
| `D:\GitHub\docker-airflow\database\gt_target_long\phase2_noo_mapping_impact.md` | .md | Phase 2 — NOO mapping impact |
| `D:\GitHub\docker-airflow\database\gt_target_long\phase2_pbi_measure_mapping.md` | .md | Phase 2 — PBI target measure mapping |
| `D:\GitHub\docker-airflow\database\gt_target_long\phase2_readiness.md` | .md | Phase 2 readiness |
| `D:\GitHub\docker-airflow\database\master_store_database_api_cdc_merge.sql` | .sql | master_store_database_api_cdc_merge |
| `D:\GitHub\docker-airflow\database\master_store_database_api_setup.sql` | .sql | master_store_database_api_setup |
| `D:\GitHub\docker-airflow\database\master_store_database_api_validation.sql` | .sql | master_store_database_api_validation |
| `D:\GitHub\docker-airflow\database\master_store_phase1\00_README.md` | .md | Master Store Phase 1 — SQL pack |
| `D:\GitHub\docker-airflow\database\master_store_phase1\01_gt_config.cfg_store_api_brand.sql` | .sql | 01_gt_config.cfg_store_api_brand |
| `D:\GitHub\docker-airflow\database\master_store_phase1\02_ddl_shadow.sql` | .sql | 02_ddl_shadow |
| `D:\GitHub\docker-airflow\database\master_store_phase1\03_gt_mart.sp_refresh_dim_store_api_shadow.sql` | .sql | 03_gt_mart.sp_refresh_dim_store_api_shadow |
| `D:\GitHub\docker-airflow\database\master_store_phase1\04_gt_mart.sp_validate_dim_store_api.sql` | .sql | 04_gt_mart.sp_validate_dim_store_api |
| `D:\GitHub\docker-airflow\database\master_store_phase1\05_channel_profile.sql` | .sql | 05_channel_profile |
| `D:\GitHub\docker-airflow\database\master_store_phase1\06_validation_parity.sql` | .sql | 06_validation_parity |
| `D:\GitHub\docker-airflow\database\master_store_phase1\07_validation_dq.sql` | .sql | 07_validation_dq |
| `D:\GitHub\docker-airflow\database\master_store_phase1\08_brand5_simulation.sql` | .sql | 08_brand5_simulation |
| `D:\GitHub\docker-airflow\database\master_store_phase1\09_DO_NOT_APPLY_PROD.sql` | .sql | 09_DO_NOT_APPLY_PROD |
| `D:\GitHub\docker-airflow\database\master_store_phase2\00_README.md` | .md | Master Store Phase 2 — SQL pack |
| `D:\GitHub\docker-airflow\database\master_store_phase2\00_algorithm.md` | .md | Phase 2 — Latest-source algorithm (locked before code) |
| `D:\GitHub\docker-airflow\database\master_store_phase2\01_ddl_phase2.sql` | .sql | 01_ddl_phase2 |
| `D:\GitHub\docker-airflow\database\master_store_phase2\02_gt_mart.sp_refresh_dim_store_api_shadow.sql` | .sql | 02_gt_mart.sp_refresh_dim_store_api_shadow |
| `D:\GitHub\docker-airflow\database\master_store_phase2\03_gt_mart.sp_reconcile_dim_store_api.sql` | .sql | 03_gt_mart.sp_reconcile_dim_store_api |
| `D:\GitHub\docker-airflow\database\master_store_phase2\04_algorithm_tests.sql` | .sql | 04_algorithm_tests |
| `D:\GitHub\docker-airflow\database\master_store_phase2\05_dq_tests.sql` | .sql | 05_dq_tests |
| `D:\GitHub\docker-airflow\database\master_store_phase2\06_brand5_simulation.sql` | .sql | 06_brand5_simulation |
| `D:\GitHub\docker-airflow\database\master_store_phase2\07_read_summary.sql` | .sql | 07_read_summary |
| `D:\GitHub\docker-airflow\database\master_store_phase2_5\README.md` | .md | Master Store Phase 2.5 — investigation pack |
| `D:\GitHub\docker-airflow\database\master_store_phase2_5\phase2_5_business_validation_report.md` | .md | Phase 2.5 — Business Validation & Multi-API Readiness |
| `D:\GitHub\docker-airflow\database\master_store_phase2_5\phase2_5_distributor_analysis.sql` | .sql | phase2_5_distributor_analysis |
| `D:\GitHub\docker-airflow\database\master_store_phase2_5\phase2_5_dq_summary.sql` | .sql | phase2_5_dq_summary |
| `D:\GitHub\docker-airflow\database\master_store_phase2_5\phase2_5_grade_analysis.sql` | .sql | phase2_5_grade_analysis |
| `D:\GitHub\docker-airflow\database\master_store_phase2_5\phase2_5_grade_vocab.sql` | .sql | phase2_5_grade_vocab |
| `D:\GitHub\docker-airflow\database\master_store_phase2_5\phase2_5_multi_api_inventory.md` | .md | Phase 2.5 — Multi-API inventory |
| `D:\GitHub\docker-airflow\database\master_store_phase2_5\phase2_5_samples.sql` | .sql | phase2_5_samples |
| `D:\GitHub\docker-airflow\database\master_store_phase2_5\phase2_5_sheet_only_analysis.sql` | .sql | phase2_5_sheet_only_analysis |
| `D:\GitHub\docker-airflow\database\playground.sp_gold_old_ref.sql` | .sql | playground.sp_gold_old_ref |
| `D:\GitHub\docker-airflow\database\playground.sp_gold_weekly_only_test.sql` | .sql | playground.sp_gold_weekly_only_test |
| `D:\GitHub\docker-airflow\database\playground.sp_gold_weekly_resolution_r1_test.sql` | .sql | playground.sp_gold_weekly_resolution_r1_test |
| `D:\GitHub\docker-airflow\database\playground.sp_gold_weekly_resolution_test.sql` | .sql | playground.sp_gold_weekly_resolution_test |
| `D:\GitHub\docker-airflow\database\powerbi_governance.powerbi_activity_events.sql` | .sql | powerbi_governance.powerbi_activity_events |
| `D:\GitHub\docker-airflow\database\powerbi_governance.powerbi_datasets.sql` | .sql | powerbi_governance.powerbi_datasets |
| `D:\GitHub\docker-airflow\database\powerbi_governance.powerbi_refresh_history.sql` | .sql | powerbi_governance.powerbi_refresh_history |
| `D:\GitHub\docker-airflow\database\powerbi_governance.powerbi_report_rationalization.sql` | .sql | powerbi_governance.powerbi_report_rationalization |
| `D:\GitHub\docker-airflow\database\powerbi_governance.powerbi_report_usage.sql` | .sql | powerbi_governance.powerbi_report_usage |
| `D:\GitHub\docker-airflow\database\powerbi_governance.powerbi_report_usage_daily.sql` | .sql | powerbi_governance.powerbi_report_usage_daily |
| `D:\GitHub\docker-airflow\database\powerbi_governance.powerbi_reports.sql` | .sql | powerbi_governance.powerbi_reports |
| `D:\GitHub\docker-airflow\database\powerbi_governance.powerbi_workspaces.sql` | .sql | powerbi_governance.powerbi_workspaces |
| `D:\GitHub\docker-airflow\database\powerbi_governance.rationalization_analysis.sql` | .sql | powerbi_governance.rationalization_analysis |
| `D:\GitHub\docker-airflow\database\powerbi_governance.rationalization_dq_checks.sql` | .sql | powerbi_governance.rationalization_dq_checks |
| `D:\GitHub\docker-airflow\database\rebate_consolidation_sample_inserts_deleted.sql` | .sql | rebate_consolidation_sample_inserts_deleted |
| `D:\GitHub\docker-airflow\database\rebate_consolidation_validation_deleted.sql` | .sql | rebate_consolidation_validation_deleted |
| `D:\GitHub\docker-airflow\database\repsly.sp_repsly_promotion_forms_matrix.sql` | .sql | repsly.sp_repsly_promotion_forms_matrix |
| `D:\GitHub\docker-airflow\database\repsly.sp_repsly_promotion_forms_matrix_ROLLBACK.sql` | .sql | repsly.sp_repsly_promotion_forms_matrix_ROLLBACK |
| `D:\GitHub\docker-airflow\database\rsa.stock_analysis_history.sql` | .sql | rsa.stock_analysis_history |
| `D:\GitHub\docker-airflow\database\se_fcr_facerinna_rewire\01_dms.gt_st_all_mv.sql` | .sql | 01_dms.gt_st_all_mv |
| `D:\GitHub\docker-airflow\database\se_fcr_facerinna_rewire\02_dms.gt_st_mtd_mv.sql` | .sql | 02_dms.gt_st_mtd_mv |
| `D:\GitHub\docker-airflow\database\se_fcr_facerinna_rewire\03_pbi_gt_dataset.fact_sell_through_all.sql` | .sql | 03_pbi_gt_dataset.fact_sell_through_all |
| `D:\GitHub\docker-airflow\database\se_fcr_facerinna_rewire\04_pbi_gt_dataset.fact_sales_po_gt_v2_v.sql` | .sql | 04_pbi_gt_dataset.fact_sales_po_gt_v2_v |
| `D:\GitHub\docker-airflow\database\se_fcr_facerinna_rewire\README.md` | .md | FACERINNA `se_skt` → `se_fcr` rewire |
| `D:\GitHub\docker-airflow\database\se_fcr_facerinna_rewire\rollback\01_dms.gt_st_all_mv.rollback.sql` | .sql | 01_dms.gt_st_all_mv.rollback |
| `D:\GitHub\docker-airflow\database\se_fcr_facerinna_rewire\rollback\02_dms.gt_st_mtd_mv.rollback.sql` | .sql | 02_dms.gt_st_mtd_mv.rollback |
| `D:\GitHub\docker-airflow\database\se_fcr_facerinna_rewire\rollback\03_pbi_gt_dataset.fact_sell_through_all.rollback.sql` | .sql | 03_pbi_gt_dataset.fact_sell_through_all.rollback |
| `D:\GitHub\docker-airflow\database\se_fcr_facerinna_rewire\rollback\04_pbi_gt_dataset.fact_sales_po_gt_v2_v.rollback.sql` | .sql | 04_pbi_gt_dataset.fact_sales_po_gt_v2_v.rollback |
| `D:\GitHub\docker-airflow\database\se_fcr_facerinna_rewire\validation.sql` | .sql | validation |
| `D:\GitHub\docker-airflow\database\store_grading\01_gt_mart.dim_store_grading.sql` | .sql | 01_gt_mart.dim_store_grading |
| `D:\GitHub\docker-airflow\database\store_grading\02_gt_config.grading_rule.sql` | .sql | 02_gt_config.grading_rule |
| `D:\GitHub\docker-airflow\database\store_grading\03_backfill_and_merge.sql` | .sql | 03_backfill_and_merge |
| `D:\GitHub\docker-airflow\database\store_grading\04_compatibility_views.sql` | .sql | 04_compatibility_views |
| `D:\GitHub\docker-airflow\database\store_grading\05_gt_mart.sp_calculate_store_grading.sql` | .sql | 05_gt_mart.sp_calculate_store_grading |
| `D:\GitHub\docker-airflow\database\store_grading\06_gt_config.grading_cycle_and_thresholds.sql` | .sql | 06_gt_config.grading_cycle_and_thresholds |
| `D:\GitHub\docker-airflow\database\store_grading\07_gt_mart.sp_load_store_grading_manual.sql` | .sql | 07_gt_mart.sp_load_store_grading_manual |
| `D:\GitHub\docker-airflow\database\store_grading\08_gt_mart.store_grading_audit_v.sql` | .sql | 08_gt_mart.store_grading_audit_v |
| `D:\GitHub\docker-airflow\database\store_grading\tests_store_grade_logic.sql` | .sql | tests_store_grade_logic |
| `D:\GitHub\docker-airflow\database\store_grading\validate_store_st.sql` | .sql | validate_store_st |
| `D:\GitHub\docker-airflow\database\store_grading\validation.sql` | .sql | validation |
| `D:\GitHub\docker-airflow\database\store_stock_rep\01_repsly.ind_fact_stock_report_v.sql` | .sql | 01_repsly.ind_fact_stock_report_v |
| `D:\GitHub\docker-airflow\database\store_stock_rep\02_repsly.ind_gt_stock_with_matrix.sql` | .sql | 02_repsly.ind_gt_stock_with_matrix |
| `D:\GitHub\docker-airflow\database\store_stock_rep\03_gt_schema.sp_store_stock_monthly.sql` | .sql | 03_gt_schema.sp_store_stock_monthly |
| `D:\GitHub\docker-airflow\database\store_stock_rep\04_validation.sql` | .sql | 04_validation |
| `D:\GitHub\docker-airflow\database\tests\stock_notation_rederivation_check.sql` | .sql | stock_notation_rederivation_check |
| `D:\GitHub\docker-airflow\database\validation.gold_weekly_resolution.sql` | .sql | validation.gold_weekly_resolution |
| `D:\GitHub\docker-airflow\database\validation.gt_mart.gold_store_stock_gt_mti.sql` | .sql | validation.gt_mart.gold_store_stock_gt_mti |
| `D:\GitHub\docker-airflow\database\validation_scenarios.gt_mart.sp_final_stock_weekly_gt_mti.sql` | .sql | validation_scenarios.gt_mart.sp_final_stock_weekly_gt_mti |
| `D:\GitHub\docker-airflow\docs\ARCHITECTURE.md` | .md | Architecture |
| `D:\GitHub\docker-airflow\docs\BUSINESS_RULES.md` | .md | Business Rules |
| `D:\GitHub\docker-airflow\docs\CHANGELOG.md` | .md | Changelog |
| `D:\GitHub\docker-airflow\docs\CLAUDE_CODE_HANDOVER.md` | .md | 1. Project Overview |
| `D:\GitHub\docker-airflow\docs\CLAUDE_START_PROMPT.md` | .md | Required reading (in order) |
| `D:\GitHub\docker-airflow\docs\HANDOVER.md` | .md | Handover |
| `D:\GitHub\docker-airflow\docs\MASTER_STORE_PHASE_1_IMPLEMENTATION.md` | .md | MASTER STORE — PHASE 1 IMPLEMENTATION |
| `D:\GitHub\docker-airflow\docs\MASTER_STORE_PHASE_2_5_VALIDATION.md` | .md | MASTER STORE — PHASE 2.5 VALIDATION |
| `D:\GitHub\docker-airflow\docs\MASTER_STORE_PHASE_2_IMPLEMENTATION.md` | .md | MASTER STORE — PHASE 2 IMPLEMENTATION |
| `D:\GitHub\docker-airflow\docs\PROJECT_STATUS.md` | .md | PROJECT_STATUS |
| `D:\GitHub\docker-airflow\docs\README.md` | .md | README |
| `D:\GitHub\docker-airflow\docs\STORE_GRADE_G2G_GROUP_SOURCE.md` | .md | `store_grade_g2g_group` — Group Grade sheet source of truth |
| `D:\GitHub\docker-airflow\docs\STORE_GRADE_SKT_TPH_SHEET_OVERRIDE.md` | .md | SKT/TPH store grade — post-load Google Sheet override |
| `D:\GitHub\docker-airflow\docs\STORE_GRADING_ARCHITECTURE.md` | .md | Store Grading — Architecture |
| `D:\GitHub\docker-airflow\docs\STORE_GRADING_ARCHITECTURE_AUDIT.md` | .md | Store Grading — Architecture Audit |
| `D:\GitHub\docker-airflow\docs\STORE_GRADING_FORMULA_REFERENCE.md` | .md | Store Grading — Formula Reference |
| `D:\GitHub\docker-airflow\docs\STORE_GRADING_MIGRATION.md` | .md | Store Grading — Migration Runbook |
| `D:\GitHub\docker-airflow\docs\TECH_DEBT.md` | .md | Technical Debt |
| `D:\GitHub\docker-airflow\docs\gold_vs_rsa_bu1_stock_logic_comparison.md` | .md | Gold GT/MTI Stock Decision Engine vs RSA BU1 Stock Logic — business-logic comparison |
| `D:\GitHub\docker-airflow\docs\gold_weekly_only\deck_src\README.md` | .md | Deck sources |
| `D:\GitHub\docker-airflow\docs\gold_weekly_only\doc_src\README.md` | .md | Document sources |
| `D:\GitHub\docker-airflow\docs\gold_weekly_only\gold_weekly_only_parity_report.md` | .md | Gold GT/MTI — weekly-only parity report |
| `D:\GitHub\docker-airflow\docs\gold_weekly_only\gold_weekly_only_performance_report.md` | .md | Gold GT/MTI — weekly-only performance report |
| `D:\GitHub\docker-airflow\docs\gold_weekly_only\gold_weekly_only_refactor_analysis.md` | .md | Gold GT/MTI — weekly-only refactor: architecture analysis |
| `D:\GitHub\docker-airflow\docs\gold_weekly_only\production_migration_preflight.md` | .md | Gold weekly-only — production migration pre-flight |
| `D:\GitHub\docker-airflow\docs\gold_weekly_only\production_migration_report.md` | .md | Gold weekly-only — production migration report |
| `D:\GitHub\docker-airflow\docs\gold_weekly_only\stock_medallion_rename_2026-10-01.md` | .md | GT/MTI stock medallion — rename, clustering and daily DAG (2026-10-01) |
| `D:\GitHub\docker-airflow\docs\gold_weekly_only\stock_notation_matrix_2026-10-14.md` | .md | Stock Notation Matrix — implementation record (2026-10-14) |
| `D:\GitHub\docker-airflow\docs\gold_weekly_only\store_stock_gold_layer.md` | .md | GT/MTI store stock — Gold layer |
| `D:\GitHub\docker-airflow\docs\stock_decision_engine\stock_decision_engine_readme.md` | .md | GT/MTI Stock Decision Engine Simulator |
| `D:\GitHub\docker-airflow\engineering\DAG_STANDARDS.md` | .md | DAG Standards |
| `D:\GitHub\docker-airflow\engineering\README.md` | .md | engineering/ |
| `D:\GitHub\docker-airflow\gt_target_injection\ARCHITECTURE.md` | .md | Architecture — GT Target Injection V1 |
| `D:\GitHub\docker-airflow\gt_target_injection\DEPLOYMENT.md` | .md | GT Target Injection V1 — Deployment |
| `D:\GitHub\docker-airflow\gt_target_injection\README.md` | .md | GT Target Injection Service V1 |
| `D:\GitHub\docker-airflow\gt_target_injection\VALIDATION_REPORT.md` | .md | Phase 2.3 — GT Target Injection Service V1 — Final Validation Report |
| `D:\GitHub\docker-airflow\gt_target_injection\sql\01_gt_target_injection_batch.sql` | .sql | 01_gt_target_injection_batch |
| `D:\GitHub\docker-airflow\gt_target_injection\sql\02_stg_gt_target_injection.sql` | .sql | 02_stg_gt_target_injection |
| `D:\GitHub\docker-airflow\gt_target_injection\sql\03_gt_target_injection_row_audit.sql` | .sql | 03_gt_target_injection_row_audit |
| `D:\GitHub\docker-airflow\knowledge\2026-09-08-master-store-multi-brand-audit.md` | .md | 2026-09-08 — Master store multi-brand grain audit (index) |
| `D:\GitHub\docker-airflow\knowledge\2026-09-09-master-store-phase-1.md` | .md | 2026-09-09 — Master Store Phase 1 implementation (index) |
| `D:\GitHub\docker-airflow\knowledge\2026-09-09-master-store-phase-2.md` | .md | 2026-09-09 — Master Store Phase 2 implementation (index) |
| `D:\GitHub\docker-airflow\knowledge\README.md` | .md | knowledge/ |
| `D:\GitHub\docker-airflow\knowledge\distributor-aom-mapping-README.md` | .md | Distributor AOM Mapping — Sheet → BigQuery (README) |
| `D:\GitHub\docker-airflow\knowledge\gcp-cost-threshold-alert-README.md` | .md | GCP / BigQuery Cost Threshold Alert — `gcp_cost_threshold_alert` DAG |
| `D:\GitHub\docker-airflow\knowledge\master-store-api-raw-ingestion-DEPLOY.md` | .md | Deployment Runbook — Offline Store Info API CDC pipeline |
| `D:\GitHub\docker-airflow\knowledge\master-store-api-raw-ingestion-README.md` | .md | Offline Store Info API — CDC Ingestion Pipeline (README) |
| `D:\GitHub\docker-airflow\knowledge\master-store-api-raw-ingestion-migration.md` | .md | Migration Plan — Offline Store master data: Spreadsheet → API (CDC landing) |
| `D:\GitHub\docker-airflow\knowledge\master-store-api-raw-ingestion-testing.md` | .md | Testing Guide — Offline Store Info API raw ingestion |
| `D:\GitHub\docker-airflow\knowledge\msl-bigquery-native-migration.md` | .md | MSL Tracker — migration from spreadsheet logic to BigQuery-native (2026-09-15) |
| `D:\GitHub\docker-airflow\knowledge\msl-powerbi-data-contract.md` | .md | MSL Tracker — Power BI ⇄ BigQuery data contract (2026-09-15) |
| `D:\GitHub\docker-airflow\knowledge\msl-sku-cluster-pipeline.md` | .md | MSL Tracker data pipeline — audit + automation (2026-09-15) |
| `D:\GitHub\docker-airflow\knowledge\msl-source-freshness-audit.md` | .md | MSL source freshness audit (2026-09-15) |
| `D:\GitHub\docker-airflow\knowledge\powerbi-governance-README.md` | .md | Power BI Governance & Report Rationalization (README) |
| `D:\GitHub\docker-airflow\knowledge\powerbi-rationalization-analysis-README.md` | .md | Power BI REPORT Rationalization — data-driven analytical layer |
| `D:\GitHub\docker-airflow\knowledge\rebate-consolidation-README_deleted.md` | .md | Rebate Data Consolidation (Store + Group level) |
| `D:\GitHub\docker-airflow\knowledge\rebate-jbp-real-data-migration-README.md` | .md | JBP Rebate — Real Data Migration into gt_mart (2026-07-29) |
| `D:\GitHub\docker-airflow\knowledge\rebate-master-pipeline.md` | .md | gt_schema.rebate_master_store_skt — lineage |
| `D:\GitHub\docker-airflow\knowledge\stock-analysis-history-event-trigger-README.md` | .md | `GT_stock_analysis_history_weekly` — daily, event-gated, incremental |
| `D:\GitHub\docker-airflow\scripts\README.md` | .md | scripts/ |
| `D:\GitHub\docker-airflow\sessions\README.md` | .md | sessions/ |
| `D:\GitHub\docker-airflow\step_store_info\.cursor\rules\airflow-windows-server.mdc` | .mdc | Airflow vs STEP Cloud Run |
| `D:\GitHub\docker-airflow\step_store_info\README.md` | .md | STEP Store Info |
| `D:\GitHub\docker-airflow\step_store_info\database\01_shadow.sql` | .sql | 01_shadow |
| `D:\GitHub\docker-airflow\step_store_info\database\02_audit.sql` | .sql | 02_audit |
| `D:\GitHub\docker-airflow\step_store_info\database\03_validation_snapshot.sql` | .sql | 03_validation_snapshot |
| `D:\GitHub\docker-airflow\step_store_info\database\04_bootstrap.sql` | .sql | 04_bootstrap |
| `D:\GitHub\docker-airflow\step_store_info\database\05_step_correction.sql` | .sql | 05_step_correction |
| `D:\GitHub\docker-airflow\step_store_info\database\06_parity.sql` | .sql | 06_parity |
| `D:\GitHub\docker-airflow\step_store_info\database\_uat_perf.sql` | .sql | _uat_perf |
| `D:\GitHub\docker-airflow\step_store_info\docs\CLAUDE_CODE_HANDOVER.md` | .md | Claude Code Handover |
| `D:\GitHub\docker-airflow\step_store_info\docs\CLAUDE_START_PROMPT.md` | .md | Claude Code Start Prompt |
| `D:\GitHub\docker-airflow\step_store_info\docs\PROJECT_STATUS.md` | .md | PROJECT STATUS |
| `D:\GitHub\docker-airflow\step_store_info\docs\STEP_SO_STORE_ID_UNMAPPED.md` | .md | SO Store ID Unmapped |
| `D:\GitHub\docker-airflow\step_store_info\docs\STEP_STORE_INFO_API.md` | .md | STEP STORE INFO — API |
| `D:\GitHub\docker-airflow\step_store_info\docs\STEP_STORE_INFO_ARCHITECTURE.md` | .md | STEP STORE INFO — Architecture |
| `D:\GitHub\docker-airflow\step_store_info\docs\STEP_STORE_INFO_DATA_MODEL.md` | .md | STEP STORE INFO — Data Model |
| `D:\GitHub\docker-airflow\step_store_info\docs\STEP_STORE_INFO_DEPLOYMENT.md` | .md | STEP STORE INFO — Deployment |
| `D:\GitHub\docker-airflow\step_store_info\docs\STEP_STORE_INFO_FIN001_REGION_FILTER_RETEST.md` | .md | STEP Store Info — FIN-001 Region Filter Retest |
| `D:\GitHub\docker-airflow\step_store_info\docs\STEP_STORE_INFO_FINAL_FIX_PLAN.md` | .md | STEP Store Info — Final Fix Plan |
| `D:\GitHub\docker-airflow\step_store_info\docs\STEP_STORE_INFO_FINAL_PRODUCTION_READINESS.md` | .md | STEP Store Info — Final Production Readiness |
| `D:\GitHub\docker-airflow\step_store_info\docs\STEP_STORE_INFO_FINAL_REPORT.md` | .md | STEP Store Info — Implementation report |
| `D:\GitHub\docker-airflow\step_store_info\docs\STEP_STORE_INFO_FIX_PLAN.md` | .md | STEP Store Info — Fix Plan |
| `D:\GitHub\docker-airflow\step_store_info\docs\STEP_STORE_INFO_MIGRATION_PLAN.md` | .md | STEP STORE INFO — Future migration (not this release) |
| `D:\GitHub\docker-airflow\step_store_info\docs\STEP_STORE_INFO_PHASE2_P1_DMS_REGION_RETEST.md` | .md | STEP Store Info — DMS Snapshot & Region Retest |
| `D:\GitHub\docker-airflow\step_store_info\docs\STEP_STORE_INFO_PHASE2_P1_SHADOW_AUDIT_RETEST.md` | .md | STEP Store Info — Phase 2 P1 Shadow/Audit Retest |
| `D:\GitHub\docker-airflow\step_store_info\docs\STEP_STORE_INFO_PRODUCTION_MVP.md` | .md | STEP Store Info — Production MVP |
| `D:\GitHub\docker-airflow\step_store_info\docs\STEP_STORE_INFO_SUPPORT_ANNOUNCEMENT.md` | .md | Access |
| `D:\GitHub\docker-airflow\step_store_info\docs\STEP_STORE_INFO_SUPPORT_QUICK_GUIDE.md` | .md | STEP Store Info — Support Quick Guide |
| `D:\GitHub\docker-airflow\step_store_info\docs\STEP_STORE_INFO_UAT_AUDIT_REPORT.md` | .md | STEP Store Info — UAT, BigQuery, Security & Performance Audit |
| `D:\GitHub\docker-airflow\step_store_info\docs\STEP_STORE_INFO_USER_GUIDE.md` | .md | STEP STORE INFO — User Guide |
| `D:\GitHub\docker-airflow\tasks\README.md` | .md | tasks/ |
| `D:\GitHub\docker-airflow\tasks\current.md` | .md | Current Tasks |
| `D:\GitHub\docker-airflow\tests\README.md` | .md | tests/ |
| `D:\GitHub\irwan-ai\ARCHITECTURE.md` | .md | Arsitektur — Irwan AI |
| `D:\GitHub\irwan-ai\DEPLOYMENT.md` | .md | Deployment — Irwan AI |
| `D:\GitHub\irwan-ai\DINGTALK_SETUP.md` | .md | Setup DingTalk — Irwan AI |
| `D:\GitHub\irwan-ai\README.md` | .md | Irwan AI |
| `D:\GitHub\irwan-ai\SECURITY.md` | .md | Security — Irwan AI |
| `D:\GitHub\irwan-ai\app\prompts\system_prompt.md` | .md | Identitas |
| `D:\GitHub\irwan-ai\knowledge\AIRFLOW\docker-airflow-architecture.md` | .md | Architecture |
| `D:\GitHub\irwan-ai\knowledge\AIRFLOW\docker-airflow-tech-debt.md` | .md | Technical Debt |
| `D:\GitHub\irwan-ai\knowledge\AIRFLOW\overview.md` | .md | Airflow |
| `D:\GitHub\irwan-ai\knowledge\BIGQUERY\asm-brand-split-impact-analysis.md` | .md | ASM Brand-Split Structural Change — End-to-End Impact Analysis |
| `D:\GitHub\irwan-ai\knowledge\BIGQUERY\asm-mapping-view-mv-inventory.md` | .md | ASM Mapping — Full View/MV/Procedure Inventory |
| `D:\GitHub\irwan-ai\knowledge\BIGQUERY\data-pipeline-overview.md` | .md | Skintific Data Pipeline — Full Overview |
| `D:\GitHub\irwan-ai\knowledge\BIGQUERY\distributor-configs-reference.md` | .md | `gt_schema.distributor_configs` — Reference |
| `D:\GitHub\irwan-ai\knowledge\BIGQUERY\distributor-name-reference.md` | .md | Distributor Name Reference — canonical spellings & cheap lookup |
| `D:\GitHub\irwan-ai\knowledge\BIGQUERY\gcp-service-accounts-reference.md` | .md | GCP Service Accounts — Reference |
| `D:\GitHub\irwan-ai\knowledge\BIGQUERY\lineage-distributor-po.md` | .md | Distributor / Purchase Order & Visit Data Lineage |
| `D:\GitHub\irwan-ai\knowledge\BIGQUERY\lineage-gt-stock.md` | .md | GT Stock & Stock Quality — Data Lineage (curated for Irwan AI) |
| `D:\GitHub\irwan-ai\knowledge\BIGQUERY\lineage-master-store.md` | .md | Master Store / Dimension Data — Lineage Reference |
| `D:\GitHub\irwan-ai\knowledge\BIGQUERY\lineage-sell-in-out-through.md` | .md | Sell-In / Sell-Through / Sell-Out Data Lineage (Skintific Data Warehouse) |
| `D:\GitHub\irwan-ai\knowledge\BIGQUERY\local-dev-environment-bigquery.md` | .md | Local Development Environment — BigQuery to Local Stack |
| `D:\GitHub\irwan-ai\knowledge\BIGQUERY\master-store-api-raw-ingestion-readme.md` | .md | Offline Store Info API — CDC Ingestion Pipeline (README) |
| `D:\GitHub\irwan-ai\knowledge\BIGQUERY\offline-store-info-api-reference.md` | .md | Offline Store Info API — Internal Reference |
| `D:\GitHub\irwan-ai\knowledge\BIGQUERY\overview.md` | .md | BigQuery conventions |
| `D:\GitHub\irwan-ai\knowledge\BIGQUERY\so-code-mapping-v2-apply-guide.md` | .md | SO Code Mapping v2 — Branch-Account (-A/-B) Consolidation |
| `D:\GitHub\irwan-ai\knowledge\BIGQUERY\store-grading-architecture.md` | .md | Store Grading — Architecture |
| `D:\GitHub\irwan-ai\knowledge\BIGQUERY\store-grading-formula-reference.md` | .md | Store Grading — Formula Reference |
| `D:\GitHub\irwan-ai\knowledge\BIGQUERY\store-name-lineage-dms-basis-bigquery.md` | .md | Store Name Lineage Audit: DMS → Basis → BigQuery |
| `D:\GitHub\irwan-ai\knowledge\BUSINESS_RULES\building-block-sales-monitoring-summary.md` | .md | Analysis: "2026 - Building Block (Sales Monitoring - National)" Workbook |
| `D:\GitHub\irwan-ai\knowledge\BUSINESS_RULES\docker-airflow-business-rules.md` | .md | Business Rules |
| `D:\GitHub\irwan-ai\knowledge\BUSINESS_RULES\overview.md` | .md | Business rules |
| `D:\GitHub\irwan-ai\knowledge\NOO_SKU_MAPPING\overview.md` | .md | NOO & SKU Mapping |
| `D:\GitHub\irwan-ai\knowledge\POWERBI\npd-sku-focus-visual-build-guide.md` | .md | NPD & SKU Focus — Manual Visual Build Guide |
| `D:\GitHub\irwan-ai\knowledge\POWERBI\overview.md` | .md | Power BI |
| `D:\GitHub\irwan-ai\knowledge\POWERBI\system-guideline-reference.md` | .md | Full GT Data Pipeline Reference |
| `D:\GitHub\irwan-ai\knowledge\PO_PORTAL\overview.md` | .md | PO Portal / PO Suggestion tooling |
| `D:\GitHub\irwan-ai\knowledge\README.md` | .md | Knowledge base format |
| `D:\GitHub\irwan-ai\knowledge\SFA\overview.md` | .md | SFA (Sales Force Automation) |
| `D:\GitHub\irwan-ai\knowledge\SOP\cicd-guideline-windows-server.md` | .md | Production Windows Server → GitHub CI/CD Setup Guideline |
| `D:\GitHub\irwan-ai\knowledge\SOP\cicd-guideline.md` | .md | Production Server → GitHub CI/CD Setup Guideline |
| `D:\GitHub\irwan-ai\knowledge\SOP\monthly-migration-checklist.md` | .md | Monthly Migration Checklist — PO Tracking DMS |
| `D:\GitHub\irwan-ai\knowledge\SOP\overview.md` | .md | SOP |
| `D:\GitHub\irwan-ai\knowledge\STEP\overview.md` | .md | STEP (sfa-step / sfa-mobile) |
| `D:\GitHub\irwan-ai\knowledge\STEP\sfa-rebuild-plan.md` | .md | SFA Rebuild & STEP Integration — Architecture Plan |
| `D:\GitHub\irwan-ai\knowledge\STEP\sfa-step-readme.md` | .md | Skintific Territory & Execution Platform (STEP) |
| `D:\GitHub\irwan-ai\knowledge\STEP\step-engineering-audit.md` | .md | STEP Platform — Engineering Audit & Improvement Roadmap |
| `D:\GitHub\irwan-ai\knowledge\STEP\step-pjp-integration-analysis.md` | .md | STEP × Salesman PJP — Phase 1: Full Integration Analysis |
| `D:\GitHub\irwan-ai\knowledge\STEP\step-sprint-2026-07-13-final-enhancement-report.md` | .md | STEP SFA — Final Enhancement Implementation Report |
| `D:\GitHub\irwan-ai\knowledge\STEP\step-sprint-2026-07-13-production-readiness.md` | .md | STEP SFA — Final Production Readiness Report (Pre-UAT) |
| `D:\GitHub\irwan-ai\knowledge\STEP\step-sprint-2026-07-13-release-report.md` | .md | STEP Sprint Release Report — 2026-07-13 |
| `D:\GitHub\irwan-ai\knowledge\STEP\step-web-population-runbook.md` | .md | STEP Web Population — Runbook |
| `D:\GitHub\irwan-ai\knowledge\TECHNICAL_DECISIONS\digital-architecture-assessment-2026-06-22.md` | .md | Skintific Group — Digital Architecture & Environment Separation Assessment |
| `D:\GitHub\irwan-ai\knowledge\TECHNICAL_DECISIONS\docker-airflow-handover.md` | .md | Handover |
| `D:\GitHub\irwan-ai\knowledge\TECHNICAL_DECISIONS\implementation-report-assessment-app.md` | .md | Implementation Report — Distributor Operational Assessment Hardening Pass |
| `D:\GitHub\irwan-ai\knowledge\TECHNICAL_DECISIONS\internal-knowledge-base-openrouter-sumopod-cursor.md` | .md | Internal Knowledge Base: OpenRouter, Sumopod & Cursor |
| `D:\GitHub\irwan-ai\knowledge\TECHNICAL_DECISIONS\overview.md` | .md | Technical decisions |
| `D:\GitHub\irwan-ai\knowledge\TECHNICAL_DECISIONS\rca-check-stock-data-all-v.md` | .md | Root Cause Analysis — `sadata.check_stock_data_all_v` empty / missing values |
| `D:\GitHub\irwan-ai\knowledge\TECHNICAL_DECISIONS\rca-gcp-billing-reconciliation-july2026.md` | .md | BigQuery / Google Cloud Billing Reconciliation — July 2026 |
| `D:\GitHub\irwan-ai\knowledge\TECHNICAL_DECISIONS\rca-po-portal-suggestion-schema-race.md` | .md | PO Portal Suggestion — Intermittent `BadRequest: Unrecognized name` (Schema Race Condition) |
| `D:\GitHub\irwan-ai\knowledge\TECHNICAL_DECISIONS\service-account-audit.md` | .md | Service Account Audit |
| `D:\GitHub\irwan-ai\sql\001_create_bot_governance.sql` | .sql | 001_create_bot_governance |
| `D:\GitHub\irwan-ai\tools\knowledge_ingest\README.md` | .md | Knowledge ingestion |
| `D:\GitHub\po-portal\README.md` | .md | PO Portal |
| `D:\GitHub\po-portal\docs\ARCHITECTURE.md` | .md | PO Portal Architecture |
| `D:\GitHub\po-portal\docs\ARCHITECTURE_ASSESSMENT.md` | .md | Audit summary |
| `D:\GitHub\po-portal\docs\BIGQUERY_OLTP.md` | .md | BigQuery OLTP for PO Portal |
| `D:\GitHub\po-portal\docs\FINAL_HANDOVER_REPORT.md` | .md | PO Portal — Final Handover Report |
| `D:\GitHub\po-portal\docs\FINAL_IMPLEMENTATION_REPORT.md` | .md | 1. What was audited |
| `D:\GitHub\po-portal\docs\MASTER_SPEC_FINAL_REPORT.md` | .md | 1. Executive Summary |
| `D:\GitHub\po-portal\docs\PRODUCTION_READINESS_REPORT.md` | .md | PO Portal — Final SMTP & Production Readiness Report |
| `D:\GitHub\po-portal\docs\RESUME_IMPLEMENTATION_REPORT.md` | .md | PO Portal — Resume Implementation Report |
| `D:\GitHub\po-portal\docs\SMTP_PROVISIONING_GUIDE.md` | .md | PO Portal — SMTP Provisioning Guide |
| `D:\GitHub\po-portal\frontend\README.md` | .md | PO Portal Frontend |
| `D:\GitHub\po-portal\sql\bigquery_ddl.sql` | .sql | bigquery_ddl |
| `D:\GitHub\po-portal\sql\bq_po_portal_ddl.sql` | .sql | bq_po_portal_ddl |
| `D:\GitHub\sfa-mobile\.expo\README.md` | .md | README |
| `D:\GitHub\sfa-mobile\AGENTS.md` | .md | Expo HAS CHANGED |
| `D:\GitHub\sfa-mobile\CLAUDE.md` | .md | CLAUDE |
| `D:\GitHub\sfa-mobile\README.md` | .md | Skintific SFA — STEP Mobile |
| `D:\GitHub\sfa-step\README.md` | .md | Skintific Territory & Execution Platform (STEP) |
| `D:\GitHub\sfa-step\backend\scripts\README.md` | .md | backend/scripts |
| `D:\GitHub\sfa-step\database\migrations\001_sfa_web_new_tables.sql` | .sql | 001_sfa_web_new_tables |
| `D:\GitHub\sfa-step\database\migrations\002_approval_enhancements.sql` | .sql | 002_approval_enhancements |
| `D:\GitHub\sfa-step\database\migrations\002_link_salesman_users.sql` | .sql | 002_link_salesman_users |
| `D:\GitHub\sfa-step\database\migrations\003_approval_linkage.sql` | .sql | 003_approval_linkage |
| `D:\GitHub\sfa-step\database\migrations\003_fix_salesman_sk_type.sql` | .sql | 003_fix_salesman_sk_type |
| `D:\GitHub\sfa-step\database\migrations\004_fix_salesman_sk_types.sql` | .sql | 004_fix_salesman_sk_types |
| `D:\GitHub\sfa-step\database\migrations\005_visit_adjustment.sql` | .sql | 005_visit_adjustment |
| `D:\GitHub\sfa-step\database\migrations\007_ext_distributor_transactions.sql` | .sql | 007_ext_distributor_transactions |
| `D:\GitHub\sfa-step\database\migrations\008_ext_visit_adjustment.sql` | .sql | 008_ext_visit_adjustment |
| `D:\GitHub\sfa-step\database\migrations\009_ext_sync_sku_brand_tracking.sql` | .sql | 009_ext_sync_sku_brand_tracking |
| `D:\GitHub\sfa-step\database\migrations\010_additional_transaction.sql` | .sql | 010_additional_transaction |
| `D:\GitHub\sfa-step\database\migrations\011_return_module.sql` | .sql | 011_return_module |
| `D:\GitHub\sfa-step\database\schema\sfa_step_additions.sql` | .sql | sfa_step_additions |
| `D:\GitHub\sfa-step\database\schema\sfa_step_architecture.md` | .md | sfa_step Architecture |
| `D:\GitHub\sfa-step\database\schema\sfa_step_data_dictionary.md` | .md | sfa_step Data Dictionary |
| `D:\GitHub\sfa-step\database\schema\sfa_step_ddl.sql` | .sql | sfa_step_ddl |
| `D:\GitHub\sfa-step\database\schema\sfa_step_demand_report.sql` | .sql | sfa_step_demand_report |
| `D:\GitHub\sfa-step\database\schema\sfa_step_demand_sync.sql` | .sql | sfa_step_demand_sync |
| `D:\GitHub\sfa-step\database\schema\sfa_step_deployment_guide.md` | .md | sfa_step Deployment Guide |
| `D:\GitHub\sfa-step\database\schema\sfa_step_sync.sql` | .sql | sfa_step_sync |
| `D:\GitHub\sfa-step\database\schema\store_opportunity.sql` | .sql | store_opportunity |
| `D:\GitHub\sfa-step\docs\01-PRD.md` | .md | Product Requirement Document |
| `D:\GitHub\sfa-step\docs\02-information-architecture.md` | .md | Information Architecture & Sitemap |
| `D:\GitHub\sfa-step\docs\03-ux-flows.md` | .md | UX Flow Diagrams |
| `D:\GitHub\sfa-step\docs\04-database-erd.md` | .md | Database Entity Diagram & Recommendation |
| `D:\GitHub\sfa-step\docs\05-api-recommendation.md` | .md | API Recommendation |
| `D:\GitHub\sfa-step\docs\06-design-system.md` | .md | Design System & Component Library |
| `D:\GitHub\sfa-step\docs\07-screen-specifications.md` | .md | Screen-by-Screen Specifications |
| `D:\GitHub\sfa-step\docs\08-approval-workflow.md` | .md | Approval Workflow Diagrams |
| `D:\GitHub\sfa-step\docs\09-sfa-integration-architecture.md` | .md | SFA Integration Architecture |
| `D:\GitHub\sfa-step\docs\10-roadmap-and-backlog.md` | .md | Phase Roadmap & Future Enhancement Backlog |
| `D:\GitHub\sfa-step\docs\CLAUDE_CODE_HANDOVER.md` | .md | Claude Code Handover |
| `D:\GitHub\sfa-step\docs\CLAUDE_START_PROMPT.md` | .md | Read first |
| `D:\GitHub\sfa-step\docs\PROJECT_STATUS.md` | .md | PROJECT STATUS |
| `D:\GitHub\sfa-step\docs\STEP_V2_AUDIT.md` | .md | STEP V2 — Repository Audit |
| `D:\GitHub\sfa-step\docs\STEP_V2_EMBEDDING.md` | .md | STEP V2 embedding and first vertical slice |
| `D:\GitHub\sfa-step\docs\application-entitlements.md` | .md | Application entitlements (as implemented) |
| `D:\GitHub\sfa-step\docs\architecture.md` | .md | Architecture (as implemented) |
| `D:\GitHub\sfa-step\docs\authentication.md` | .md | Authentication (as implemented) |
| `D:\GitHub\sfa-step\docs\authorization.md` | .md | Authorization (as implemented) |
| `D:\GitHub\sfa-step\docs\brand-model.md` | .md | Brand model (as implemented) |
| `D:\GitHub\sfa-step\docs\current\00-INDEX.md` | .md | STEP SFA — Current Documentation (As-Built) |
| `D:\GitHub\sfa-step\docs\current\01-system-overview.md` | .md | 01 — System Overview (As-Built) |
| `D:\GitHub\sfa-step\docs\current\02-business-rules.md` | .md | 02 — Business Rules (As-Built) |
| `D:\GitHub\sfa-step\docs\current\03-api-reference.md` | .md | 03 — API Reference (As-Built) |
| `D:\GitHub\sfa-step\docs\current\04-database-guide.md` | .md | 04 — Database Guide (As-Built) |
| `D:\GitHub\sfa-step\docs\current\05-mobile-guide.md` | .md | 05 — Mobile App Guide (As-Built) |
| `D:\GitHub\sfa-step\docs\current\06-operations-runbook.md` | .md | 06 — Operations Runbook |
| `D:\GitHub\sfa-step\docs\current\07-changelog.md` | .md | 07 — Changelog |
| `D:\GitHub\sfa-step\docs\current\08-e2e-test-scripts.md` | .md | STEP — End-to-End Manual Testing Scripts |
| `D:\GitHub\sfa-step\docs\current\09-windows-server-deployment.md` | .md | STEP Web — Windows Server Deployment Guide (Netlify → On-Prem) |
| `D:\GitHub\sfa-step\docs\current\10-production-readiness-audit.md` | .md | 10 — Production Readiness Audit |
| `D:\GitHub\sfa-step\docs\current\11-e2e-test-cases.md` | .md | 11 — End-to-End Test Cases (formal) |
| `D:\GitHub\sfa-step\docs\current\12-step-design-system.md` | .md | 12 — STEP Design System |
| `D:\GitHub\sfa-step\docs\current\13-ecosystem-e2e-audit.md` | .md | 13 — STEP Ecosystem End-to-End Audit (Web + Handheld) |
| `D:\GitHub\sfa-step\docs\current\14-e2e-test-script-audit13.md` | .md | 14 — E2E Test Script for the Audit-13 Fix Branches |
| `D:\GitHub\sfa-step\docs\current\15-e2e-bu1-bu2-audit13.md` | .md | 15 — BU-1 (SKT) & BU-2 (G2G) E2E Test Script — audit-13 branch |
| `D:\GitHub\sfa-step\docs\current\17-external-distributor-transactions.md` | .md | 17 — External Distributor Transactions |
| `D:\GitHub\sfa-step\docs\current\18-distributor-multisource-orders.md` | .md | 18 — Distributor RBAC + Multi-source Visit & Order + Excel Export |
| `D:\GitHub\sfa-step\docs\current\adr-0001-bigquery-as-transactional-store.md` | .md | ADR-0001 — BigQuery as the transactional store |
| `D:\GitHub\sfa-step\docs\deployment-gcp.md` | .md | GCP deployment path (not yet provisioned) |
| `D:\GitHub\sfa-step\docs\external-dms.md` | .md | External DMS (as implemented) |
| `D:\GitHub\sfa-step\docs\migration-strategy.md` | .md | Migration strategy (as implemented) |
| `D:\GitHub\sfa-step\docs\salesman_pjp_architecture_analysis.md` | .md | Salesman PJP — Technical Architecture Analysis |
| `D:\GitHub\sfa-step\docs\salesman_pjp_business_process.md` | .md | Salesman PJP — Business Process Documentation |
| `D:\GitHub\sfa-step\docs\salesman_pjp_function_inventory.md` | .md | Salesman PJP — Function Inventory |
| `D:\GitHub\sfa-step\docs\salesman_pjp_implementation_roadmap.md` | .md | Salesman PJP — STEP Integration Implementation Roadmap |
| `D:\GitHub\sfa-step\docs\salesman_pjp_step_gap_analysis.md` | .md | Salesman PJP — STEP Gap Analysis |
| `D:\GitHub\sfa-step\docs\salesman_pjp_step_integration_recommendation.md` | .md | Salesman PJP — STEP Integration Recommendations |
| `D:\GitHub\sfa-step\docs\step_demand_report_api.md` | .md | STEP — Demand Monitoring Report API |
| `D:\GitHub\sfa-step\docs\step_demand_report_architecture.md` | .md | STEP — Demand Monitoring Report Architecture |
| `D:\GitHub\sfa-step\docs\step_demand_report_functional_spec.md` | .md | STEP — Demand Monitoring Report Functional Specification |
| `D:\GitHub\sfa-step\docs\store_opportunity_api.md` | .md | STEP — Store Opportunity API |
| `D:\GitHub\sfa-step\docs\store_opportunity_architecture.md` | .md | STEP — Store Opportunity Module Architecture |
| `D:\GitHub\sfa-step\docs\store_opportunity_functional_spec.md` | .md | STEP — Store Opportunity Module Functional Specification |
| `D:\GitHub\sfa-step\docs\store_opportunity_proposal_template.md` | .md | STEP — Offer Proposal Template Design |
| `D:\GitHub\sfa-step\platform\README.md` | .md | STEP V2 platform (local) |
| `D:\GitHub\sfa-step\platform\deploy\README.md` | .md | STEP V2 staging deploy (not production) |
| `D:\GitHub\sfa-step\platform\embed\README.md` | .md | Local embed runtimes |
| `D:\GitHub\streamlit_app\CHANGELOG.md` | .md | Changelog — Distributor Operational Assessment (Multi-Role) |
| `D:\GitHub\streamlit_app\IMPLEMENTATION_REPORT.md` | .md | Implementation Report — Distributor Operational Assessment Hardening Pass |
| `D:\GitHub\streamlit_app\README.md` | .md | noo-detector |
| `D:\GitHub\streamlit_app\User_Guide.md` | .md | Distributor Operational Assessment — User Guide |
| `D:\GitHub\streamlit_app\User_Guide_ID.md` | .md | Distributor Operational Assessment — Panduan Pengguna |
| `D:\GitHub\streamlit_app\analysis\PO_Portal_Suggestion_Report_for_Management.md` | .md | PO Portal Suggestion — Performance Investigation Summary |
| `D:\GitHub\streamlit_app\analysis\streamlit_action_plan.md` | .md | Action Plan — `po_portal_suggestion.py` |
| `D:\GitHub\streamlit_app\analysis\streamlit_architecture.md` | .md | Architecture Report — `po_portal_suggestion.py` |
| `D:\GitHub\streamlit_app\analysis\streamlit_improvement_backlog.md` | .md | Prioritized Improvement Backlog — `po_portal_suggestion.py` |
| `D:\GitHub\streamlit_app\analysis\streamlit_performance_findings.md` | .md | Performance Findings — `po_portal_suggestion.py` |
| `D:\GitHub\streamlit_app\analysis\streamlit_performance_summary.md` | .md | Executive Summary — `po_portal_suggestion.py` Stability & Performance |
| `D:\GitHub\streamlit_app\analysis\streamlit_v2_bigquery_dryrun.md` | .md | BigQuery Dry-Run Comparison — v1 vs v2 Query Cost |
| `D:\GitHub\streamlit_app\analysis\streamlit_v2_concurrency_benchmark.md` | .md | Concurrency Benchmark — v1 vs v2 Under Simulated Concurrent Load |
| `D:\GitHub\streamlit_app\analysis\streamlit_v2_deployment_guide.md` | .md | Deployment Guide — `po_portal_suggestion_v2.py` on Streamlit Community Cloud |
| `D:\GitHub\streamlit_app\analysis\streamlit_v2_local_benchmark.md` | .md | Local Benchmark — v1 vs v2 Code-Level Overhead |
| `D:\GitHub\streamlit_app\docs\distributor-account-management.md` | .md | Distributor Account Management — Salesman & PJP Template Manager |
| `D:\GitHub\streamlit_app\docs\migration\ARCHITECTURE.md` | .md | Architecture — Current State and Proposed Target |
| `D:\GitHub\streamlit_app\docs\migration\CHECKPOINT_1.md` | .md | Checkpoint 1 — after Pilots 1–6 |
| `D:\GitHub\streamlit_app\docs\migration\DEPLOYMENT_TEMPLATE.md` | .md | Deployment Template — reusable pattern for every migration pilot |
| `D:\GitHub\streamlit_app\docs\migration\DUPLICATION_PLAN.md` | .md | Duplication Plan — Safe Parallel Environment |
| `D:\GitHub\streamlit_app\docs\migration\EXECUTION_LOG.md` | .md | Execution Log — GCP Migration Environment |
| `D:\GitHub\streamlit_app\docs\migration\FEATURE_MIGRATION_MATRIX.md` | .md | Feature Migration Matrix |
| `D:\GitHub\streamlit_app\docs\migration\GCP_REQUIREMENTS.md` | .md | GCP Requirements |
| `D:\GitHub\streamlit_app\docs\migration\MIGRATION_PLAN.md` | .md | Migration Plan — Streamlit Portfolio → Cloud Run / GCS / BigQuery |
| `D:\GitHub\streamlit_app\docs\migration\SCORECARD.md` | .md | Migration Scorecard |
| `D:\GitHub\streamlit_app\docs\streamlit_noo_sku_mapping_audit.md` | .md | NOO & SKU Mapping — Pre-Refactor Audit |
| `D:\GitHub\streamlit_app\docs\streamlit_noo_sku_mapping_design.md` | .md | Streamlit NOO & SKU Mapping — Design Document |
| `D:\GitHub\streamlit_app\docs\streamlit_noo_sku_mapping_implementation.md` | .md | Streamlit NOO & SKU Mapping — Implementation |
| `D:\GitHub\streamlit_app\docs\streamlit_noo_sku_mapping_uat.md` | .md | NOO & SKU Mapping — UAT Runbook |
| `D:\GitHub\streamlit_app\po_portal\sql\create_tables.sql` | .sql | create_tables |
| `D:\GitHub\streamlit_app\sql\sfa_pjp_distributor_accounts.sql` | .sql | sfa_pjp_distributor_accounts |
| `D:\Workspace\Company\Skintific\Data\SellOut_SKT_FCR_TPH_FY2026\Google_Sheets_Setup_Guide.md` | .md | Google Sheets Connected-Sheets Setup — SKT / FACERINNA / TIMEPHORIA Sell-Out FY2026 |
| `D:\Workspace\Company\Skintific\Data\SellOut_SKT_FCR_TPH_FY2026\README_Field_Mapping.md` | .md | SKT / FACERINNA / TIMEPHORIA Sell-Out FY2026 — What's in this folder and how it's built |
| `D:\Workspace\Company\Skintific\Data\SellOut_SKT_FCR_TPH_FY2026\gsheets_query_facerinna.sql` | .sql | gsheets_query_facerinna |
| `D:\Workspace\Company\Skintific\Data\SellOut_SKT_FCR_TPH_FY2026\gsheets_query_skintific.sql` | .sql | gsheets_query_skintific |
| `D:\Workspace\Company\Skintific\Data\SellOut_SKT_FCR_TPH_FY2026\gsheets_query_timephoria.sql` | .sql | gsheets_query_timephoria |
| `D:\Workspace\Company\Skintific\Data\SellOut_SKT_FCR_TPH_FY2026\sellout_skt_fcr_tph_fy2026.sql` | .sql | sellout_skt_fcr_tph_fy2026 |
| `D:\Workspace\Company\Skintific\Data\backups\po_portal_2026-08-14\ROLLBACK.md` | .md | PO Portal Suggestion — production fix 2026-08-14 |
| `D:\Workspace\Company\Skintific\Data\connected_sheets\01_cs_si.sql` | .sql | 01_cs_si |
| `D:\Workspace\Company\Skintific\Data\connected_sheets\02_cs_st.sql` | .sql | 02_cs_st |
| `D:\Workspace\Company\Skintific\Data\connected_sheets\03_cs_so.sql` | .sql | 03_cs_so |
| `D:\Workspace\Company\Skintific\Data\connected_sheets\04_cs_ao.sql` | .sql | 04_cs_ao |
| `D:\Workspace\Company\Skintific\Data\connected_sheets\05_cs_warehouse_stock.sql` | .sql | 05_cs_warehouse_stock |
| `D:\Workspace\Company\Skintific\Data\connected_sheets\06_cs_distributor_stock_current.sql` | .sql | 06_cs_distributor_stock_current |
| `D:\Workspace\Company\Skintific\Data\connected_sheets\07_cs_distributor_stock_monthly.sql` | .sql | 07_cs_distributor_stock_monthly |
| `D:\Workspace\Company\Skintific\Data\connected_sheets\08_cs_distributor_stock_sku_total.sql` | .sql | 08_cs_distributor_stock_sku_total |
| `D:\Workspace\Company\Skintific\Data\connected_sheets\09_cs_store_stock.sql` | .sql | 09_cs_store_stock |
| `D:\Workspace\Company\Skintific\Data\connected_sheets\09b_cs_store_stock_g2g_repsly.sql` | .sql | 09b_cs_store_stock_g2g_repsly |
| `D:\Workspace\Company\Skintific\Data\connected_sheets\10_validation.sql` | .sql | 10_validation |
| `D:\Workspace\Company\Skintific\Data\connected_sheets\11_grain_validation.sql` | .sql | 11_grain_validation |
| `D:\Workspace\Company\Skintific\Data\connected_sheets\README.md` | .md | Connected Sheets sources — GT + MTI, all brands |
| `D:\Workspace\Company\Skintific\Data\connected_sheets\_discovery_01_masters.sql` | .sql | _discovery_01_masters |
| `D:\Workspace\Company\Skintific\Data\connected_sheets\_discovery_02_si_aug.sql` | .sql | _discovery_02_si_aug |
| `D:\Workspace\Company\Skintific\Data\connected_sheets\_discovery_03_dims.sql` | .sql | _discovery_03_dims |
| `D:\Workspace\Company\Skintific\Data\connected_sheets\_discovery_04_volumes.sql` | .sql | _discovery_04_volumes |
| `D:\Workspace\Company\Skintific\Data\connected_sheets\_discovery_05_si_visual.sql` | .sql | _discovery_05_si_visual |
| `D:\Workspace\Company\Skintific\Data\connected_sheets\_discovery_06_rsa_si.sql` | .sql | _discovery_06_rsa_si |
| `D:\Workspace\Company\Skintific\Data\connected_sheets\_discovery_07_joins.sql` | .sql | _discovery_07_joins |
| `D:\Workspace\Company\Skintific\Data\connected_sheets\_discovery_08_si_channel.sql` | .sql | _discovery_08_si_channel |
| `D:\Workspace\Company\Skintific\Data\connected_sheets\_discovery_10_schema.sql` | .sql | _discovery_10_schema |
| `D:\Workspace\Company\Skintific\Data\connected_sheets\_discovery_11_recon.sql` | .sql | _discovery_11_recon |
| `D:\Workspace\Company\Skintific\Data\looker_aug_diag\q1_coverage.sql` | .sql | q1_coverage |
| `D:\Workspace\Company\Skintific\Data\looker_aug_diag\q2_monthly.sql` | .sql | q2_monthly |
| `D:\Workspace\Company\Skintific\Data\looker_aug_diag\q3_regions.sql` | .sql | q3_regions |
| `D:\Workspace\Company\Skintific\Data\looker_aug_diag\q4_source_of.sql` | .sql | q4_source_of |
| `D:\Workspace\Company\Skintific\Data\looker_aug_diag\q5_schema.sql` | .sql | q5_schema |
| `D:\Workspace\Company\Skintific\Data\po_portal_dynamic_matrix\README.md` | .md | PO Portal Suggestion — Dynamic Matrix Table |
| `D:\Workspace\Company\Skintific\Data\po_portal_dynamic_matrix\sql\01_create_po_portal_suggestion_matrix.sql` | .sql | 01_create_po_portal_suggestion_matrix |
| `D:\Workspace\Company\Skintific\Data\po_portal_dynamic_matrix\sql\02_create_po_portal_feedback_matrix.sql` | .sql | 02_create_po_portal_feedback_matrix |
| `D:\Workspace\Company\Skintific\Knowledge\business\building-block-sales-monitoring-summary.md` | .md | Analysis: "2026 - Building Block (Sales Monitoring - National)" Workbook |
| `D:\Workspace\Company\Skintific\Knowledge\rca\2026-07-21_check_stock_data_all_v_RCA.md` | .md | Root Cause Analysis — `sadata.check_stock_data_all_v` empty / missing values |
| `D:\Workspace\Company\Skintific\Knowledge\rca\2026-08-11_bigquery_gcp_billing_reconciliation_july2026_RCA.md` | .md | BigQuery / Google Cloud Billing Reconciliation — July 2026 |
| `D:\Workspace\Company\Skintific\Knowledge\rca\2026-08-18_po_portal_suggestion_schema_race_RCA.md` | .md | PO Portal Suggestion — Intermittent `BadRequest: Unrecognized name` (Schema Race Condition) |
| `D:\Workspace\Company\Skintific\Knowledge\rca\2026-10-01_bigquery_check_stock_expensive_jobs_audit.md` | .md | Audit Read-Only BigQuery — Job Mahal yang Mengakses `sadata.check_stock_data_hist` × `gt_schema.master_store_database_basis` |
| `D:\Workspace\Company\Skintific\Knowledge\rca\2026-10-01_bigquery_check_stock_expensive_jobs_audit_sql\E1_after_window.sql` | .sql | E1_after_window |
| `D:\Workspace\Company\Skintific\Knowledge\rca\2026-10-01_bigquery_check_stock_expensive_jobs_audit_sql\E1_before.sql` | .sql | E1_before |
| `D:\Workspace\Company\Skintific\Knowledge\rca\2026-10-01_bigquery_check_stock_expensive_jobs_audit_sql\E1_probe_before.sql` | .sql | E1_probe_before |
| `D:\Workspace\Company\Skintific\Knowledge\rca\2026-10-01_bigquery_check_stock_expensive_jobs_audit_sql\E1_view_filtered.sql` | .sql | E1_view_filtered |
| `D:\Workspace\Company\Skintific\Knowledge\rca\2026-10-01_bigquery_check_stock_expensive_jobs_audit_sql\E2_after_window.sql` | .sql | E2_after_window |
| `D:\Workspace\Company\Skintific\Knowledge\rca\2026-10-01_bigquery_check_stock_expensive_jobs_audit_sql\E2_before.sql` | .sql | E2_before |
| `D:\Workspace\Company\Skintific\Knowledge\rca\2026-10-01_bigquery_check_stock_expensive_jobs_audit_sql\E3_after.sql` | .sql | E3_after |
| `D:\Workspace\Company\Skintific\Knowledge\rca\2026-10-01_bigquery_check_stock_expensive_jobs_audit_sql\E3_after_v2.sql` | .sql | E3_after_v2 |
| `D:\Workspace\Company\Skintific\Knowledge\rca\2026-10-01_bigquery_check_stock_expensive_jobs_audit_sql\E3_before.sql` | .sql | E3_before |
| `D:\Workspace\Company\Skintific\Knowledge\rca\2026-10-01_bigquery_check_stock_expensive_jobs_audit_sql\V1_E1_equivalence_and_size.sql` | .sql | V1_E1_equivalence_and_size |
| `D:\Workspace\Company\Skintific\Knowledge\rca\2026-10-01_bigquery_check_stock_expensive_jobs_audit_sql\V2_E1_diff_vs_ties.sql` | .sql | V2_E1_diff_vs_ties |
| `D:\Workspace\Company\Skintific\Knowledge\rca\2026-10-01_bigquery_check_stock_expensive_jobs_audit_sql\V3_E3_equivalence_and_bugs.sql` | .sql | V3_E3_equivalence_and_bugs |
| `D:\Workspace\Company\Skintific\Knowledge\rca\2026-10-01_bigquery_check_stock_expensive_jobs_audit_sql\V4_E3_diff_vs_ties.sql` | .sql | V4_E3_diff_vs_ties |
| `D:\Workspace\Company\Skintific\Knowledge\rca\2026-10-01_bigquery_check_stock_expensive_jobs_audit_sql\V5_E3_summary_multirow_sim_20260920.sql` | .sql | V5_E3_summary_multirow_sim_20260920 |
| `D:\Workspace\Company\Skintific\Knowledge\rca\2026-10-01_bigquery_check_stock_expensive_jobs_audit_sql\V6_E3_v1_vs_v2.sql` | .sql | V6_E3_v1_vs_v2 |
| `D:\Workspace\Company\Skintific\Knowledge\rca\2026-10-01_bigquery_check_stock_expensive_jobs_audit_sql\in_place_migration\00_preflight.sql` | .sql | 00_preflight |
| `D:\Workspace\Company\Skintific\Knowledge\rca\2026-10-01_bigquery_check_stock_expensive_jobs_audit_sql\in_place_migration\01_create_table.sql` | .sql | 01_create_table |
| `D:\Workspace\Company\Skintific\Knowledge\rca\2026-10-01_bigquery_check_stock_expensive_jobs_audit_sql\in_place_migration\02_parity_check.sql` | .sql | 02_parity_check |
| `D:\Workspace\Company\Skintific\Knowledge\rca\2026-10-01_bigquery_check_stock_expensive_jobs_audit_sql\in_place_migration\03_swap_view.sql` | .sql | 03_swap_view |
| `D:\Workspace\Company\Skintific\Knowledge\rca\2026-10-01_bigquery_check_stock_expensive_jobs_audit_sql\in_place_migration\04_post_swap_check.sql` | .sql | 04_post_swap_check |
| `D:\Workspace\Company\Skintific\Knowledge\rca\2026-10-01_bigquery_check_stock_expensive_jobs_audit_sql\in_place_migration\05_refresh_table.sql` | .sql | 05_refresh_table |
| `D:\Workspace\Company\Skintific\Knowledge\rca\2026-10-01_bigquery_check_stock_expensive_jobs_audit_sql\in_place_migration\06_monitor_cost.sql` | .sql | 06_monitor_cost |
| `D:\Workspace\Company\Skintific\Knowledge\rca\2026-10-01_bigquery_check_stock_expensive_jobs_audit_sql\in_place_migration\99_rollback_view.sql` | .sql | 99_rollback_view |
| `D:\Workspace\Company\Skintific\Knowledge\rca\2026-10-01_bigquery_check_stock_expensive_jobs_audit_sql\in_place_migration\README.md` | .md | Migrasi in-place `sadata.check_stock_data_all_v` — panduan jalan manual |
| `D:\Workspace\Company\Skintific\Knowledge\rca\SERVICE_ACCOUNT_AUDIT.md` | .md | Service Account Audit |
| `D:\Workspace\Company\Skintific\Knowledge\sql\recon_repsly_form_excel_vs_bq.sql` | .sql | recon_repsly_form_excel_vs_bq |
| `D:\Workspace\Company\Skintific\Knowledge\sql\repsly.sp_repsly_promotion_forms_matrix.sql` | .sql | repsly.sp_repsly_promotion_forms_matrix |
| `D:\Workspace\Company\Skintific\Knowledge\sql\repsly.sp_repsly_promotion_forms_matrix_ROLLBACK.sql` | .sql | repsly.sp_repsly_promotion_forms_matrix_ROLLBACK |
| `D:\Workspace\Company\Skintific\Knowledge\tech\api\DMS Financial SKU Online Sales Detail Sync Guide.md` | .md | DMS Financial SKU Online Sales Detail Sync Guide |
| `D:\Workspace\Company\Skintific\Knowledge\tech\api\master-store-api-migration-validation.sql` | .sql | master-store-api-migration-validation |
| `D:\Workspace\Company\Skintific\Knowledge\tech\api\master-store-api-migration.md` | .md | Migration: master_store_database_basis — Google Sheet → Offline Store Info API |
| `D:\Workspace\Company\Skintific\Knowledge\tech\api\master-store-api-raw-ingestion-DEPLOY.md` | .md | Deployment Runbook — Offline Store Info API CDC pipeline |
| `D:\Workspace\Company\Skintific\Knowledge\tech\api\master-store-api-raw-ingestion-README.md` | .md | Offline Store Info API — CDC Ingestion Pipeline (README) |
| `D:\Workspace\Company\Skintific\Knowledge\tech\api\master-store-api-raw-ingestion-migration.md` | .md | Migration Plan — Offline Store master data: Spreadsheet → API (CDC landing) |
| `D:\Workspace\Company\Skintific\Knowledge\tech\api\monthly-migration-checklist.md` | .md | Monthly Migration Checklist — PO Tracking DMS |
| `D:\Workspace\Company\Skintific\Knowledge\tech\api\offline-store-info-api-integration-guide.md` | .md | Offline Store Information API Integration Guide |
| `D:\Workspace\Company\Skintific\Knowledge\tech\api\offline-store-info-api-reference.md` | .md | Offline Store Info API — Internal Reference |
| `D:\Workspace\Company\Skintific\Knowledge\tech\api\so-code-mapping-v2-apply-guide.md` | .md | SO Code Mapping v2 — Branch-Account (-A/-B) Consolidation |
| `D:\Workspace\Company\Skintific\Knowledge\tech\assessments\CHANGELOG_assessment_app.md` | .md | Changelog — Distributor Operational Assessment (Multi-Role) |
| `D:\Workspace\Company\Skintific\Knowledge\tech\assessments\Digital_Architecture_Assessment_2026-06-22.md` | .md | Skintific Group — Digital Architecture & Environment Separation Assessment |
| `D:\Workspace\Company\Skintific\Knowledge\tech\assessments\IMPLEMENTATION_REPORT_assessment_app.md` | .md | Implementation Report — Distributor Operational Assessment Hardening Pass |
| `D:\Workspace\Company\Skintific\Knowledge\tech\assessments\internal-knowledge-base-openrouter-sumopod-cursor.md` | .md | Internal Knowledge Base: OpenRouter, Sumopod & Cursor |
| `D:\Workspace\Company\Skintific\Knowledge\tech\assessments\npd-sku-focus-visual-build-guide.md` | .md | NPD & SKU Focus — Manual Visual Build Guide |
| `D:\Workspace\Company\Skintific\Knowledge\tech\assessments\session_notes_skt_assessment.md` | .md | Session Notes — skt_area_execution_capability & Streamlit Deploy |
| `D:\Workspace\Company\Skintific\Knowledge\tech\assessments\system-guideline-reference.md` | .md | Full GT Data Pipeline Reference |
| `D:\Workspace\Company\Skintific\Knowledge\tech\data-pipeline-overview.md` | .md | Skintific Data Pipeline — Full Overview |
| `D:\Workspace\Company\Skintific\Knowledge\tech\db\2026-07-29_store_name_lineage_DMS_Basis_BigQuery.md` | .md | Store Name Lineage Audit: DMS → Basis → BigQuery |
| `D:\Workspace\Company\Skintific\Knowledge\tech\db\2026-08-07_asm_brand_split_impact_analysis.md` | .md | ASM Brand-Split Structural Change — End-to-End Impact Analysis |
| `D:\Workspace\Company\Skintific\Knowledge\tech\db\2026-08-13_asm_mapping_view_mv_inventory.md` | .md | ASM Mapping — Full View/MV/Procedure Inventory |
| `D:\Workspace\Company\Skintific\Knowledge\tech\db\2026-09-08_master_store_multi_brand_audit.md` | .md | Master Store Multi-Brand Grain Audit |
| `D:\Workspace\Company\Skintific\Knowledge\tech\db\2026-09-08_source_target_row_based_migration\00_README.md` | .md | Column-Based → Row-Based Target Migration |
| `D:\Workspace\Company\Skintific\Knowledge\tech\db\2026-09-08_source_target_row_based_migration\01_executive_summary_and_architecture.md` | .md | A–D. Executive Summary, Architecture, Spreadsheet |
| `D:\Workspace\Company\Skintific\Knowledge\tech\db\2026-09-08_source_target_row_based_migration\02_lineage_and_impact.md` | .md | E–G. Lineage, Impact Matrix, Brand Logic |
| `D:\Workspace\Company\Skintific\Knowledge\tech\db\2026-09-08_source_target_row_based_migration\03_target_schema.md` | .md | H. Proposed Target Schema |
| `D:\Workspace\Company\Skintific\Knowledge\tech\db\2026-09-08_source_target_row_based_migration\04_migration_validation_rollback.md` | .md | I–M. Migration, Validation, Rollback, Risks, Checklist |
| `D:\Workspace\Company\Skintific\Knowledge\tech\db\2026-09-08_source_target_row_based_migration\05_files_and_objects.md` | .md | N–O. Files, Untouched Objects, Discrepancies |
| `D:\Workspace\Company\Skintific\Knowledge\tech\db\2026-09-08_source_target_row_based_migration\06_redesign_implementation_plan.md` | .md | 06. Redesign Implementation Plan — Distributor-Level Long Target |
| `D:\Workspace\Company\Skintific\Knowledge\tech\db\2026-10-01_master_store_erd_sheet_readiness_review.md` | .md | Review Kesiapan ERD — Spreadsheet Rancangan Master Store |
| `D:\Workspace\Company\Skintific\Knowledge\tech\db\2026-10-09_gt_st_all_mv_partitioned\01_create_or_replace_gt_st_all_mv.sql` | .sql | 01_create_or_replace_gt_st_all_mv |
| `D:\Workspace\Company\Skintific\Knowledge\tech\db\2026-10-09_gt_st_all_mv_partitioned\02_post_check.sql` | .sql | 02_post_check |
| `D:\Workspace\Company\Skintific\Knowledge\tech\db\2026-10-09_gt_st_all_mv_partitioned\99_rollback_original_definition.sql` | .sql | 99_rollback_original_definition |
| `D:\Workspace\Company\Skintific\Knowledge\tech\db\MASTER_STORE_PHASE_1_IMPLEMENTATION.md` | .md | MASTER STORE — PHASE 1 IMPLEMENTATION |
| `D:\Workspace\Company\Skintific\Knowledge\tech\db\MASTER_STORE_PHASE_2_5_BUSINESS_VALIDATION.md` | .md | Phase 2.5 — Business Validation & Multi-API Readiness |
| `D:\Workspace\Company\Skintific\Knowledge\tech\db\MASTER_STORE_PHASE_2_5_MULTI_API.md` | .md | Phase 2.5 — Multi-API inventory |
| `D:\Workspace\Company\Skintific\Knowledge\tech\db\MASTER_STORE_PHASE_2_5_VALIDATION.md` | .md | MASTER STORE — PHASE 2.5 VALIDATION |
| `D:\Workspace\Company\Skintific\Knowledge\tech\db\MASTER_STORE_PHASE_2_IMPLEMENTATION.md` | .md | MASTER STORE — PHASE 2 IMPLEMENTATION |
| `D:\Workspace\Company\Skintific\Knowledge\tech\db\distributor-configs-reference.md` | .md | `gt_schema.distributor_configs` — Reference |
| `D:\Workspace\Company\Skintific\Knowledge\tech\db\local-dev-environment-bigquery.md` | .md | Local Development Environment — BigQuery to Local Stack |
| `D:\Workspace\Company\Skintific\Knowledge\tech\gcp-service-accounts-reference.md` | .md | GCP Service Accounts — Reference |
| `D:\Workspace\Company\Skintific\Knowledge\tech\github\cicd-guideline-windows-server.md` | .md | Production Windows Server → GitHub CI/CD Setup Guideline |
| `D:\Workspace\Company\Skintific\Knowledge\tech\github\cicd-guideline.md` | .md | Production Server → GitHub CI/CD Setup Guideline |
| `D:\Workspace\Company\Skintific\Knowledge\tech\lineage\bigquery_blocked_mv_rewrite_and_migration.md` | .md | BigQuery — Blocked VIEW → MATERIALIZED VIEW: Rewrite Analysis & Migration Package |
| `D:\Workspace\Company\Skintific\Knowledge\tech\lineage\bigquery_core_table_mv_impact_analysis.md` | .md | BigQuery Core Tables — VIEW → MATERIALIZED VIEW Impact Analysis |
| `D:\Workspace\Company\Skintific\Knowledge\tech\lineage\lineage_distributor_po.md` | .md | Distributor / Purchase Order & Visit Data Lineage |
| `D:\Workspace\Company\Skintific\Knowledge\tech\lineage\lineage_gt_stock.md` | .md | GT Stock & Stock Quality — Data Lineage (curated for Irwan AI) |
| `D:\Workspace\Company\Skintific\Knowledge\tech\lineage\lineage_master_store.md` | .md | Master Store / Dimension Data — Lineage Reference |
| `D:\Workspace\Company\Skintific\Knowledge\tech\lineage\lineage_sell_in_out_through.md` | .md | Sell-In / Sell-Through / Sell-Out Data Lineage (Skintific Data Warehouse) |
| `D:\Workspace\Company\Skintific\Knowledge\tech\lineage\mv_migration\00_preflight.sql` | .sql | 00_preflight |
| `D:\Workspace\Company\Skintific\Knowledge\tech\lineage\mv_migration\01_capture_current_definitions.sql` | .sql | 01_capture_current_definitions |
| `D:\Workspace\Company\Skintific\Knowledge\tech\lineage\mv_migration\02_validate_dependencies.sql` | .sql | 02_validate_dependencies |
| `D:\Workspace\Company\Skintific\Knowledge\tech\lineage\mv_migration\03_create_test_fact_sell_out_mv.sql` | .sql | 03_create_test_fact_sell_out_mv |
| `D:\Workspace\Company\Skintific\Knowledge\tech\lineage\mv_migration\04_validate_fact_sell_out_mv.sql` | .sql | 04_validate_fact_sell_out_mv |
| `D:\Workspace\Company\Skintific\Knowledge\tech\lineage\mv_migration\05_create_test_rsa_physical_table_and_compat_view.sql` | .sql | 05_create_test_rsa_physical_table_and_compat_view |
| `D:\Workspace\Company\Skintific\Knowledge\tech\lineage\mv_migration\06_validate_rsa.sql` | .sql | 06_validate_rsa |
| `D:\Workspace\Company\Skintific\Knowledge\tech\lineage\mv_migration\07_fact_sell_out_production_migration.sql` | .sql | 07_fact_sell_out_production_migration |
| `D:\Workspace\Company\Skintific\Knowledge\tech\lineage\mv_migration\07b_fact_sell_out_variant_A_literal_mv.sql` | .sql | 07b_fact_sell_out_variant_A_literal_mv |
| `D:\Workspace\Company\Skintific\Knowledge\tech\lineage\mv_migration\07c_fact_sell_out_physical_table_alternative.sql` | .sql | 07c_fact_sell_out_physical_table_alternative |
| `D:\Workspace\Company\Skintific\Knowledge\tech\lineage\mv_migration\08_rsa_production_migration.sql` | .sql | 08_rsa_production_migration |
| `D:\Workspace\Company\Skintific\Knowledge\tech\lineage\mv_migration\09_post_migration_validation.sql` | .sql | 09_post_migration_validation |
| `D:\Workspace\Company\Skintific\Knowledge\tech\lineage\mv_migration\10_rollback_fact_sell_out.sql` | .sql | 10_rollback_fact_sell_out |
| `D:\Workspace\Company\Skintific\Knowledge\tech\lineage\mv_migration\11_rollback_rsa.sql` | .sql | 11_rollback_rsa |
| `D:\Workspace\Company\Skintific\Knowledge\tech\lineage\mv_migration\14_orphaned_procedures.sql` | .sql | 14_orphaned_procedures |
| `D:\Workspace\Company\Skintific\Knowledge\tech\lineage\mv_migration\15_prerequisite_P1_ind_dim_clients_inplace_refresh.sql` | .sql | 15_prerequisite_P1_ind_dim_clients_inplace_refresh |
| `D:\Workspace\Company\Skintific\Knowledge\tech\lineage\mv_migration\16_deployment_script_changes.md` | .md | 16 — Deployment-script changes (proposal only; the repository was NOT modified) |
| `D:\Workspace\Company\Skintific\Knowledge\tech\lineage\mv_migration\README.md` | .md | mv_migration — migration package for `fact_sell_out_all` and `rsa.si_st_so_target_data_all` |
| `D:\Workspace\Company\Skintific\Knowledge\tech\lineage\mv_migration\reference\_equiv_rsa_script.sql` | .sql | _equiv_rsa_script |
| `D:\Workspace\Company\Skintific\Knowledge\tech\lineage\mv_migration\reference\_equiv_rsa_script2.sql` | .sql | _equiv_rsa_script2 |
| `D:\Workspace\Company\Skintific\Knowledge\tech\lineage\mv_migration\reference\_inline_ctes.sql` | .sql | _inline_ctes |
| `D:\Workspace\Company\Skintific\Knowledge\tech\lineage\mv_migration\reference\_inline_so_data_new_v.sql` | .sql | _inline_so_data_new_v |
| `D:\Workspace\Company\Skintific\Knowledge\tech\lineage\mv_migration\reference\_ref_fact_sales_po_gt_v2_v_ORIGINAL.sql` | .sql | _ref_fact_sales_po_gt_v2_v_ORIGINAL |
| `D:\Workspace\Company\Skintific\Knowledge\tech\lineage\mv_migration\reference\_ref_fact_sales_po_gt_v2_v_REWRITTEN.sql` | .sql | _ref_fact_sales_po_gt_v2_v_REWRITTEN |
| `D:\Workspace\Company\Skintific\Knowledge\tech\lineage\mv_migration\reference\_ref_fact_sales_po_gt_v2_v_REWRITTEN_v2.sql` | .sql | _ref_fact_sales_po_gt_v2_v_REWRITTEN_v2 |
| `D:\Workspace\Company\Skintific\Knowledge\tech\lineage\mv_migration\reference\_ref_fact_sales_po_gt_v2_v_REWRITTEN_v3.sql` | .sql | _ref_fact_sales_po_gt_v2_v_REWRITTEN_v3 |
| `D:\Workspace\Company\Skintific\Knowledge\tech\lineage\mv_migration\reference\_ref_fact_sell_through_all_LIVE.sql` | .sql | _ref_fact_sell_through_all_LIVE |
| `D:\Workspace\Company\Skintific\Knowledge\tech\lineage\mv_migration\reference\_ref_gt_po_shipment_all_mv_definition.sql` | .sql | _ref_gt_po_shipment_all_mv_definition |
| `D:\Workspace\Company\Skintific\Knowledge\tech\lineage\mv_migration\reference\_ref_rsa_si_st_so_target_data_all_REWRITTEN_v3.sql` | .sql | _ref_rsa_si_st_so_target_data_all_REWRITTEN_v3 |
| `D:\Workspace\Company\Skintific\Knowledge\tech\lineage\mv_migration\reference\_ref_rsa_si_st_so_target_data_all_REWRITTEN_v4.sql` | .sql | _ref_rsa_si_st_so_target_data_all_REWRITTEN_v4 |
| `D:\Workspace\Company\Skintific\Knowledge\tech\lineage\mv_migration\reference\_ref_sp_load_ind_dim_clients_ORIGINAL.sql` | .sql | _ref_sp_load_ind_dim_clients_ORIGINAL |
| `D:\Workspace\Company\Skintific\Knowledge\tech\lineage\mv_migration\reference\fact_sell_out_all_MV_body.sql` | .sql | fact_sell_out_all_MV_body |
| `D:\Workspace\Company\Skintific\Knowledge\tech\lineage\mv_migration\repo_changes\03_pbi_gt_dataset.fact_sell_through_all.PROPOSED.sql` | .sql | 03_pbi_gt_dataset.fact_sell_through_all.PROPOSED |
| `D:\Workspace\Company\Skintific\Knowledge\tech\lineage\mv_migration\repo_changes\04_pbi_gt_dataset.fact_sales_po_gt_v2_v.PROPOSED.sql` | .sql | 04_pbi_gt_dataset.fact_sales_po_gt_v2_v.PROPOSED |
| `D:\Workspace\Company\Skintific\Knowledge\tech\step\STEP-Engineering-Audit.md` | .md | STEP Platform — Engineering Audit & Improvement Roadmap |
| `D:\Workspace\Company\Skintific\Knowledge\tech\step\STEP-Sprint-2026-07-13\E2E-Manual-Testing-Scripts.md` | .md | STEP — End-to-End Manual Testing Scripts |
| `D:\Workspace\Company\Skintific\Knowledge\tech\step\STEP-Sprint-2026-07-13\Final-Enhancement-Report-2026-07-15.md` | .md | STEP SFA — Final Enhancement Implementation Report |
| `D:\Workspace\Company\Skintific\Knowledge\tech\step\STEP-Sprint-2026-07-13\Production-Checklist.md` | .md | STEP — Production Readiness Checklist |
| `D:\Workspace\Company\Skintific\Knowledge\tech\step\STEP-Sprint-2026-07-13\Production-Readiness-Final.md` | .md | STEP SFA — Final Production Readiness Report (Pre-UAT) |
| `D:\Workspace\Company\Skintific\Knowledge\tech\step\STEP-Sprint-2026-07-13\Sprint-Release-Report.md` | .md | STEP Sprint Release Report — 2026-07-13 |
| `D:\Workspace\Company\Skintific\Knowledge\tech\step\STEP-Sprint-2026-07-13\Windows-Server-Deployment-Guide.md` | .md | STEP Web — Windows Server Deployment Guide (Netlify → On-Prem) |
| `D:\Workspace\Company\Skintific\Knowledge\tech\step\sfa-rebuild-plan.md` | .md | SFA Rebuild & STEP Integration — Architecture Plan |
| `D:\Workspace\Company\Skintific\Knowledge\tech\step\step-pjp-integration-analysis.md` | .md | STEP × Salesman PJP — Phase 1: Full Integration Analysis |
| `D:\Workspace\Company\Skintific\Knowledge\tech\step\step-platform-status.md` | .md | STEP Platform — Status & Development Notes |
| `D:\Workspace\Company\Skintific\Knowledge\tech\step\step-test-and-present.md` | .md | STEP Platform — Manual Testing & Presentation Guide |
| `D:\Workspace\Company\Skintific\Knowledge\tech\step\step-web-population-runbook.md` | .md | STEP Web Population — Runbook |
| `D:\Workspace\Company\Skintific\Portfolio\Airflow DAG Audit & Critical Bug Fixes\00-Executive-Summary.md` | .md | Airflow DAG Audit & Critical Bug Fixes — Executive Summary |
| `D:\Workspace\Company\Skintific\Portfolio\Airflow DAG Audit & Critical Bug Fixes\01-Initial-Assessment-Repo-vs-Production.md` | .md | 01 — Repo vs. Production Drift Analysis |
| `D:\Workspace\Company\Skintific\Portfolio\Airflow DAG Audit & Critical Bug Fixes\02-Code-Quality-Audit-Findings.md` | .md | 02 — Code Quality & Security Audit Findings |
| `D:\Workspace\Company\Skintific\Portfolio\Airflow DAG Audit & Critical Bug Fixes\03-Bug-Fix-Online-Sales-Duplication.md` | .md | 03 — Online Sales Pipeline: Duplication & Silent Data Loss |
| `D:\Workspace\Company\Skintific\Portfolio\Airflow DAG Audit & Critical Bug Fixes\04-Bug-Fix-Repsly-Duplication.md` | .md | 04 — Repsly Pipeline: Deterministic Duplication on Every Run |
| `D:\Workspace\Company\Skintific\Portfolio\Airflow DAG Audit & Critical Bug Fixes\05-Status-And-Next-Steps.md` | .md | 05 — Current Status & Next Steps |
| `D:\Workspace\Company\Skintific\Portfolio\Area Distributor Submission Web\00_Overview_and_Story.md` | .md | Project: Distributor Operational Assessment — From Single Form to Multi-Role System |
| `D:\Workspace\Company\Skintific\Portfolio\Area Distributor Submission Web\01_Before_Revamp_Legacy_System.md` | .md | Before the Revamp — Legacy System (`skt_area_execution_capability.py`) |
| `D:\Workspace\Company\Skintific\Portfolio\Area Distributor Submission Web\02_After_Revamp_New_System.md` | .md | After the Revamp — New System (`skt_area_execution_capability_v2.py`) |
| `D:\Workspace\Company\Skintific\Portfolio\Area Distributor Submission Web\03_Engineering_Process_Bugs_Fixed.md` | .md | Engineering Process — Real Bugs Found and Fixed |
| `D:\Workspace\Company\Skintific\Portfolio\Area Distributor Submission Web\04_Documentation_and_Enablement.md` | .md | Documentation & Enablement Produced |
| `D:\Workspace\Company\Skintific\Portfolio\Area Distributor Submission Web\05_Presentation_Talking_Points_Summary.md` | .md | Presentation Talking Points — Suggested Slide Outline |
| `D:\Workspace\Company\Skintific\Portfolio\Area Distributor Submission Web\06_Rollout_and_UAT_Readiness.md` | .md | Rollout & UAT Readiness |
| `D:\Workspace\Company\Skintific\Portfolio\Area Distributor Submission Web\07_Reminder_and_Compliance_Tracking.md` | .md | Reminder & Compliance Tracking System |
| `D:\Workspace\Company\Skintific\Portfolio\Area Distributor Submission Web\08_Bad_Stock_Calculation_Revision.md` | .md | Bad Stock Calculation Revision — Sell In, New-Distributor Exemption, and a Live Bug |
| `D:\Workspace\Company\Skintific\Portfolio\DDM Distributor Scorecard\00_Overview_and_Story.md` | .md | Project: DDM Distributor Scorecard — From a Silently Wrong Scorecard to a Verified, Slicer-Responsive Model |
| `D:\Workspace\Company\Skintific\Portfolio\DDM Distributor Scorecard\01_Before_Revamp_Legacy_System.md` | .md | Before the Revamp — Legacy Scorecard (`Scorecard Dashboard.SemanticModel`) |
| `D:\Workspace\Company\Skintific\Portfolio\DDM Distributor Scorecard\02_After_Revamp_New_System.md` | .md | After the Revamp — Current State of the Scorecard |
| `D:\Workspace\Company\Skintific\Portfolio\DDM Distributor Scorecard\03_Engineering_Process_Bugs_Fixed.md` | .md | Engineering Process — Real Bugs Found and Fixed |
| `D:\Workspace\Company\Skintific\Portfolio\DDM Distributor Scorecard\04_Validation_and_Deployment_Guidance.md` | .md | Validation Approach and Deployment Guidance |
| `D:\Workspace\Company\Skintific\Portfolio\DDM Distributor Scorecard\05_Presentation_Talking_Points_Summary.md` | .md | Presentation Talking Points — Suggested Slide Outline |
| `D:\Workspace\Company\Skintific\Portfolio\Dist Stock Hist — Aug-31 Closing Correction\README.md` | .md | dist_stock_hist — 2026-08-31 Closing Correction |
| `D:\Workspace\Company\Skintific\Portfolio\Dist Stock Hist — Aug-31 Closing Correction\correction_script.sql` | .sql | correction_script |
| `D:\Workspace\Company\Skintific\Portfolio\GT PO Shipment & Tracking — Suntone Principal Exclusion\00-Executive-Summary.md` | .md | GT PO Shipment & Tracking — Suntone Principal Exclusion |
| `D:\Workspace\Company\Skintific\Portfolio\GT Store Stock Data Quality Framework\00_README.md` | .md | GT Store Stock Data Quality & Anomaly Detection Framework |
| `D:\Workspace\Company\Skintific\Portfolio\GT Store Stock Data Quality Framework\docs\06_data_dictionary.md` | .md | Data Dictionary — `gt_schema.gt_store_stock_data_quality` |
| `D:\Workspace\Company\Skintific\Portfolio\GT Store Stock Data Quality Framework\docs\07_statistical_methods.md` | .md | Statistical Methods |
| `D:\Workspace\Company\Skintific\Portfolio\GT Store Stock Data Quality Framework\docs\08_business_rules.md` | .md | Business Rules |
| `D:\Workspace\Company\Skintific\Portfolio\GT Store Stock Data Quality Framework\docs\09_performance_notes.md` | .md | Performance Notes |
| `D:\Workspace\Company\Skintific\Portfolio\GT Store Stock Data Quality Framework\docs\10_next_steps_guideline.md` | .md | Next Steps Guideline |
| `D:\Workspace\Company\Skintific\Portfolio\GT Store Stock Data Quality Framework\sql\01_dq_thresholds_config_ddl.sql` | .sql | 01_dq_thresholds_config_ddl |
| `D:\Workspace\Company\Skintific\Portfolio\GT Store Stock Data Quality Framework\sql\02_dq_final_table_ddl.sql` | .sql | 02_dq_final_table_ddl |
| `D:\Workspace\Company\Skintific\Portfolio\GT Store Stock Data Quality Framework\sql\03_sp_store_stock_data_quality.sql` | .sql | 03_sp_store_stock_data_quality |
| `D:\Workspace\Company\Skintific\Portfolio\GT Store Stock Data Quality Framework\sql\03_sp_store_stock_data_quality_ROLLBACK.sql` | .sql | 03_sp_store_stock_data_quality_ROLLBACK |
| `D:\Workspace\Company\Skintific\Portfolio\GT Store Stock Data Quality Framework\sql\04_scheduled_query_setup.sql` | .sql | 04_scheduled_query_setup |
| `D:\Workspace\Company\Skintific\Portfolio\GT Store Stock Data Quality Framework\sql\05_verification_checks.sql` | .sql | 05_verification_checks |
| `D:\Workspace\Company\Skintific\Portfolio\IND-G2G GT Stock Report DAG\ARCHITECTURE.md` | .md | Architecture — `GT_repsly_forms_ind_g2g_gt_stock_report` |
| `D:\Workspace\Company\Skintific\Portfolio\IND-G2G GT Stock Report DAG\README.md` | .md | IND-G2G GT Stock Report — dedicated Repsly ingestion DAG |
| `D:\Workspace\Company\Skintific\Portfolio\IND-G2G GT Stock Report DAG\RUNBOOK.md` | .md | Deploy runbook — IND-G2G GT Stock Report DAG |
| `D:\Workspace\Company\Skintific\Portfolio\IND-G2G GT Stock Report DAG\sql\01_sp_load_repsly_stock_ind_g2g.sql` | .sql | 01_sp_load_repsly_stock_ind_g2g |
| `D:\Workspace\Company\Skintific\Portfolio\MSL Tracker — Spreadsheet to Power BI Migration\00-overview.md` | .md | 00 — Overview: MSL Tracker (Spreadsheet → Power BI Migration) |
| `D:\Workspace\Company\Skintific\Portfolio\MSL Tracker — Spreadsheet to Power BI Migration\01-data-sources.md` | .md | 01 — Data Sources |
| `D:\Workspace\Company\Skintific\Portfolio\MSL Tracker — Spreadsheet to Power BI Migration\02-data-model.md` | .md | 02 — Data Model |
| `D:\Workspace\Company\Skintific\Portfolio\MSL Tracker — Spreadsheet to Power BI Migration\03-measures.md` | .md | 03 — Measure Catalog (`msl_measures`) |
| `D:\Workspace\Company\Skintific\Portfolio\MSL Tracker — Spreadsheet to Power BI Migration\04-report-pages.md` | .md | 04 — Report Pages & UX |
| `D:\Workspace\Company\Skintific\Portfolio\MSL Tracker — Spreadsheet to Power BI Migration\05-validation-performance.md` | .md | 05 — Validation & Performance |
| `D:\Workspace\Company\Skintific\Portfolio\MSL Tracker — Spreadsheet to Power BI Migration\06-assumptions-risks-runbook.md` | .md | 06 — Assumptions, Risks & Runbook |
| `D:\Workspace\Company\Skintific\Portfolio\NPD & SKU Focus Dashboard\00-Executive-Summary.md` | .md | G2G — NPD & SKU Focus Dashboard (Power BI) |
| `D:\Workspace\Company\Skintific\Portfolio\NPD & SKU Focus Dashboard\01-Data-Layer-And-Model.md` | .md | 01 — Data Layer & Semantic Model |
| `D:\Workspace\Company\Skintific\Portfolio\NPD & SKU Focus Dashboard\02-Measures-And-Toggle.md` | .md | 02 — Measures & the Quantity/Value Toggle |
| `D:\Workspace\Company\Skintific\Portfolio\NPD & SKU Focus Dashboard\03-Report-Pages-And-Build.md` | .md | 03 — Report Pages & Build |
| `D:\Workspace\Company\Skintific\Portfolio\NPD & SKU Focus Dashboard\04-Issues-Fixed-And-Open-Items.md` | .md | 04 — Issues Fixed & Open Items |
| `D:\Workspace\Company\Skintific\Portfolio\NPD & SKU Focus Dashboard\05-Data-Semantics-And-Validation.md` | .md | 05 — Data Semantics & Validation |
| `D:\Workspace\Company\Skintific\Portfolio\PO Portal Mockup\00_Overview_and_Story.md` | .md | Project: PO Portal — From Working Mockup to Tested, Production-Minded System |
| `D:\Workspace\Company\Skintific\Portfolio\PO Portal Mockup\01_Before_Revamp_Initial_Mockup.md` | .md | Before the Revamp — Initial Mockup State |
| `D:\Workspace\Company\Skintific\Portfolio\PO Portal Mockup\02_After_Revamp_New_System.md` | .md | After the Revamp — New System |
| `D:\Workspace\Company\Skintific\Portfolio\PO Portal Mockup\03_Engineering_Process_Bugs_Fixed.md` | .md | Engineering Process — Real Bugs Found and Fixed |
| `D:\Workspace\Company\Skintific\Portfolio\PO Portal Mockup\04_Testing_and_Quality_Assurance.md` | .md | Testing and Quality Assurance |
| `D:\Workspace\Company\Skintific\Portfolio\PO Portal Mockup\05_Presentation_Talking_Points_Summary.md` | .md | Presentation Talking Points — Suggested Slide Outline |
| `D:\Workspace\Company\Skintific\Portfolio\PO Portal Mockup\06_Next_Steps_and_Production_Readiness.md` | .md | Next Steps and Production Readiness |
| `D:\Workspace\Company\Skintific\Portfolio\Probation_Work_Portfolio.md` | .md | Probation Work Portfolio |
| `D:\Workspace\Company\Skintific\Portfolio\SE FCR — Facerinna Salesman Column Onboarding\00-Executive-Summary.md` | .md | SE FCR — Facerinna Salesman Column Onboarding |
| `D:\Workspace\Company\Skintific\Portfolio\SE FCR — Facerinna Salesman Column Onboarding\01-Ingestion-Analysis.md` | .md | 01 — Ingestion Analysis |
| `D:\Workspace\Company\Skintific\Portfolio\SE FCR — Facerinna Salesman Column Onboarding\02-Changes-Applied.md` | .md | 02 — Changes Applied |
| `D:\Workspace\Company\Skintific\Portfolio\SE FCR — Facerinna Salesman Column Onboarding\03-Downstream-Impact-And-DDL.md` | .md | 03 — Downstream Impact & Phase 2 DDL |
| `D:\Workspace\Company\Skintific\Portfolio\SE FCR — Facerinna Salesman Column Onboarding\04-Remaining-Steps-And-Risks.md` | .md | 04 — Remaining Steps, Risks & Pre-existing Defects |
| `D:\Workspace\Company\Skintific\Portfolio\SE FCR — Facerinna Salesman Column Onboarding\05-Validation-Plan.md` | .md | 05 — Validation Plan |
| `D:\Workspace\Company\Skintific\Portfolio\ST Zero Value — SKU Price Mapping Investigation\00-Executive-Summary.md` | .md | ST Zero-Value Rows — SKU Price Mapping Investigation |
| `D:\Workspace\Company\Skintific\Portfolio\ST Zero Value — SKU Price Mapping Investigation\01-Pattern-Analysis-File-1.md` | .md | 01 — Pattern Analysis (File 1: the 27-row sample) |
| `D:\Workspace\Company\Skintific\Portfolio\ST Zero Value — SKU Price Mapping Investigation\02-Reanalysis-File-2-SKU-Mapping.md` | .md | 02 — Re-analysis with File 2: validating the smoking gun & the mapping worksheet |
| `D:\Workspace\Company\Skintific\Portfolio\ST Zero Value — SKU Price Mapping Investigation\03-Impact-Quantification.md` | .md | 03 — Impact Quantification |
| `D:\Workspace\Company\Skintific\Portfolio\ST Zero Value — SKU Price Mapping Investigation\04-Open-Items-And-Next-Steps.md` | .md | 04 — Open Items & Next Steps |
| `D:\Workspace\Company\Skintific\Portfolio\ST-SO Store Code Correction — Bug Fix\00-Executive-Summary.md` | .md | ST↔SO Store Code Correction — Bug Fix |
| `D:\Workspace\Company\Skintific\Portfolio\ST-SO Store Code Correction — Bug Fix\01-Root-Cause-Analysis.md` | .md | 01 — Root Cause Analysis |
| `D:\Workspace\Company\Skintific\Portfolio\ST-SO Store Code Correction — Bug Fix\02-Fixes-Applied.md` | .md | 02 — Fixes Applied |
| `D:\Workspace\Company\Skintific\Portfolio\ST-SO Store Code Correction — Bug Fix\03-Validation-And-Impact.md` | .md | 03 — Validation & Impact |
| `D:\Workspace\Company\Skintific\Portfolio\ST-SO Store Code Correction — Bug Fix\04-Open-Items-And-Prevention.md` | .md | 04 — Open Items, Backlog & Prevention |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\00_Master_Index.md` | .md | Master Index |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\00_Overview_and_Story.md` | .md | Project: STEP — Skintific Territory & Execution Platform (Design & Architecture Deliverable) |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\01_Before_Manual_Territory_Planning.md` | .md | Before STEP: The Problem This Design Responds To |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\01_Executive_Summary.md` | .md | 01 – Executive Summary |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\02_After_STEP_Platform.md` | .md | After: The STEP Platform, Screen by Screen |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\02_System_Architecture.md` | .md | Component Diagram |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\03_Data_Model.md` | .md | Write Policy (Absolute Rule) |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\03_Engineering_Process_and_Key_Decisions.md` | .md | Engineering Process: The Real Bug Found, and the Key Decisions Made |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\04_Backend_API.md` | .md | 04 – Backend API |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\04_Documentation_and_Deliverables.md` | .md | Documentation Index & How to Run the Prototype |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\05_Presentation_Talking_Points_Summary.md` | .md | Presentation Talking Points — Suggested Slide Outline |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\05_Web_Application.md` | .md | 05 – Web Application |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\06_Mobile_Application.md` | .md | 06 – Mobile Application (SFA Mobile) |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\07_Authentication_Security.md` | .md | Auth Flow |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\08_Deployment_Infrastructure.md` | .md | Overview |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\09_Offline_Sync_Design.md` | .md | 09 – Offline Sync Design |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\10_Approval_Workflow.md` | .md | 10 – Approval Workflow |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\11_Target_Management.md` | .md | Overview |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\12_Route_Planning.md` | .md | Overview |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\13_Store_Opportunity.md` | .md | Overview |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\14_Testing_Strategy.md` | .md | 14 – Testing Strategy |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\15_Runbook.md` | .md | Quick Reference |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\16_Final_Handover.md` | .md | Go-Live Target: 2026-07-07 (Monday) |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\Feature_Discovery\API_Inventory.md` | .md | Base URL |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\Feature_Discovery\Business_Process_Map.md` | .md | 1. Visit Workflow (Core SFA Process) |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\Feature_Discovery\Database_Inventory.md` | .md | Storage Architecture |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\Feature_Discovery\Enhancement_Recommendations.md` | .md | Per-Feature Analysis |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\Feature_Discovery\INDEX.md` | .md | Overview |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\Feature_Discovery\Migration_Plan.md` | .md | Executive Summary |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\Feature_Discovery\Navigation_Map.md` | .md | High-Level Architecture |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\Feature_Discovery\README.md` | .md | Overview |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\Feature_Discovery\Reusable_Components.md` | .md | Reusable UI Components (React) |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\Feature_Discovery\SFAHandheld_Inventory.md` | .md | Project Overview |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\Feature_Discovery\Screen_Inventory.md` | .md | Desktop Screens (Web UI) |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\SFA Building Block - Sales Monitoring National\building-block-sales-monitoring-summary.md` | .md | Analysis: "2026 - Building Block (Sales Monitoring - National)" Workbook |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\SFA-Handheld\00_Overview_and_Story.md` | .md | Project: SFA Handheld — From Generic Prototype to a Branded, Tested Field Tool |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\SFA-Handheld\01_Before_Revamp_Legacy_System.md` | .md | Before the Revamp — What the App Actually Looked Like |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\SFA-Handheld\02_After_Revamp_New_System.md` | .md | After the Revamp — New System |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\SFA-Handheld\03_Engineering_Process_Bugs_Fixed.md` | .md | Engineering Process — Real Bugs Found and Fixed |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\SFA-Handheld\04_Testing_and_Quality_Assurance.md` | .md | Testing and Quality Assurance |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\SFA-Handheld\05_Presentation_Talking_Points_Summary.md` | .md | Presentation Talking Points — Suggested Slide Outline |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\Tests\API_Test_Report.md` | .md | API Test Report |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\Tests\Authentication_Test_Report.md` | .md | Authentication Test Report |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\Tests\BigQuery_Test_Report.md` | .md | BigQuery Validation Report |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\Tests\Final_Test_Summary.md` | .md | Final Test Summary — STEP Platform v1.0 |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\Tests\Mobile_Functional_Test_Report.md` | .md | Mobile Functional Test Report |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\Tests\Production_Readiness_Report.md` | .md | Production Readiness Report |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\Tests\RBAC_Test_Report.md` | .md | RBAC Test Report |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\Tests\Security_Test_Report.md` | .md | Security Test Report |
| `D:\Workspace\Company\Skintific\Portfolio\STEP - Territory & Execution Platform\Tests\Test_Master_Index.md` | .md | STEP Platform — Test Master Index |
| `D:\Workspace\Company\Skintific\Portfolio\Sell Through Mapping Enhancement\00-Executive-Summary.md` | .md | Sell Through Mapping Enhancement — Executive Summary |
| `D:\Workspace\Company\Skintific\Portfolio\Sell Through Mapping Enhancement\01-Root-Cause-Analysis.md` | .md | 01 — Root Cause Analysis |
| `D:\Workspace\Company\Skintific\Portfolio\Sell Through Mapping Enhancement\02-Changes-Applied.md` | .md | 02 — Changes Applied |
| `D:\Workspace\Company\Skintific\Portfolio\Sell Through Mapping Enhancement\03-Validation-And-Impact.md` | .md | 03 — Validation & Impact |
| `D:\Workspace\Company\Skintific\Portfolio\Sell Through Mapping Enhancement\04-Remaining-Steps-And-Assumptions.md` | .md | 04 — Remaining Steps, Assumptions & Risks |
| `D:\Workspace\Company\Skintific\Portfolio\Sell Through Mapping Enhancement\05-Final-Summary.md` | .md | 05 — Final Summary (as of 2026-07-16) |
| `D:\Workspace\Company\Skintific\Portfolio\Store Stock Anomaly Detection - Analysis Report.md` | .md | STOCK ANOMALY ANALYSIS — Store Stock, GT + MTI |
| `D:\Workspace\Company\Skintific\Portfolio\Visit Validator — GPS Store Visit Validation\00_Overview_and_Story.md` | .md | Project: Visit Validator — GPS Store Visit Validation |
| `D:\Workspace\Company\Skintific\Portfolio\Visit Validator — GPS Store Visit Validation\01_Before_Manual_GPS_Check.md` | .md | Before: What Was in the DMS Export and What Wasn't |
| `D:\Workspace\Company\Skintific\Portfolio\Visit Validator — GPS Store Visit Validation\02_After_Visit_Validator_App.md` | .md | After: The Visit Validator App, Screen by Screen |
| `D:\Workspace\Company\Skintific\Portfolio\Visit Validator — GPS Store Visit Validation\03_Engineering_Process_and_Key_Decisions.md` | .md | Engineering Process: Bugs Found and Key Decisions Made |
| `D:\Workspace\Company\Skintific\Portfolio\Visit Validator — GPS Store Visit Validation\04_Documentation_and_Deployment.md` | .md | Documentation: File Structure and Deployment |
| `D:\Workspace\Company\Skintific\Portfolio\Visit Validator — GPS Store Visit Validation\05_Presentation_Talking_Points_Summary.md` | .md | Presentation Talking Points — Suggested Slide Outline |
| `D:\Workspace\Company\Skintific\Portfolio\probation_review\README.md` | .md | Probation Review System — v2 |
| `D:\Workspace\Company\Skintific\Portfolio\probation_review\bot_irwan\README.md` | .md | Bot Irwan — documented-work knowledge layer |
| `D:\Workspace\Company\Skintific\Portfolio\probation_review\changelog.md` | .md | Changelog — Probation Review Presentation System |
| `D:\Workspace\Company\Skintific\Portfolio\probation_review\last_update_report.md` | .md | Portfolio Update Report |
| `D:\Workspace\Company\Skintific\Portfolio\probation_review\probation_review_speaking_notes.md` | .md | Probation Review — English Speaking Notes |
| `D:\Workspace\Company\Skintific\Portfolio\probation_review\roadmap.md` | .md | Roadmap |
| `D:\Workspace\Company\Skintific\Portfolio\probation_review\speaker_notes.md` | .md | Speaker Notes — v2 (official probation structure) |
| `D:\Workspace\Company\Skintific\PowerBI\GLAD2GLOW\G2G - Inventory & WOI\Documentation\00_Index.md` | .md | G2G Inventory & WOI — Documentation |
| `D:\Workspace\Company\Skintific\PowerBI\GLAD2GLOW\G2G - Inventory & WOI\Documentation\01_Source_Mapping.md` | .md | 01 — Source Mapping |
| `D:\Workspace\Company\Skintific\PowerBI\GLAD2GLOW\G2G - Inventory & WOI\Documentation\02_Data_Model.md` | .md | 02 — Data Model |
| `D:\Workspace\Company\Skintific\PowerBI\GLAD2GLOW\G2G - Inventory & WOI\Documentation\03_DAX_Reference.md` | .md | 03 — DAX Reference |
| `D:\Workspace\Company\Skintific\PowerBI\GLAD2GLOW\G2G - Inventory & WOI\Documentation\04_Data_Gaps_and_Open_Questions.md` | .md | 04 — Data Gaps and Open Questions |
| `D:\Workspace\Company\Skintific\PowerBI\GLAD2GLOW\G2G - Inventory & WOI\Documentation\05_Validation.md` | .md | 05 — Validation |
| `D:\Workspace\Company\Skintific\PowerBI\GLAD2GLOW\G2G - Inventory & WOI\Documentation\06_Report_Layout.md` | .md | 06 — Report Layout |
| `D:\Workspace\Company\Skintific\PowerBI\GLAD2GLOW\G2G - Inventory & WOI\Documentation\07_Build_and_Deploy.md` | .md | 07 — Build and Deploy |
| `D:\Workspace\Company\Skintific\PowerBI\GLAD2GLOW\G2G - Inventory & WOI\Documentation\08_Data_Source_Update_2026-08-06.md` | .md | 08 — Data Source Update (2026-08-06) |
| `D:\Workspace\Company\Skintific\PowerBI\GLAD2GLOW\G2G - Inventory & WOI\Documentation\09_DAX_Pitfalls_and_Fixes.md` | .md | 09 — DAX Pitfalls and Fixes |
| `D:\Workspace\Company\Skintific\PowerBI\GLAD2GLOW\G2G - Inventory & WOI\Documentation\validation_baseline.sql` | .sql | validation_baseline |
| `D:\Workspace\Company\Skintific\PowerBI\GLAD2GLOW\G2G - Inventory & WOI\Documentation\validation_by_sku.sql` | .sql | validation_by_sku |
| `D:\Workspace\Company\Skintific\PowerBI\GLAD2GLOW\G2G - Inventory & WOI\G2G_Inventory_WOI_PowerBI_vs_Spreadsheet_Reconciliation.md` | .md | G2G Inventory & WOI — Power BI vs. Spreadsheet Reconciliation |
| `D:\Workspace\Company\Skintific\PowerBI\GLAD2GLOW\G2G - Inventory & WOI\G2G_Store_Stock_Reconciliation_July_August_2026.md` | .md | G2G Store Stock Quantity — Forensic Reconciliation (July–August 2026) |
| `D:\Workspace\Company\Skintific\PowerBI\GLAD2GLOW\G2G - Inventory & WOI\README.md` | .md | G2G Inventory & WOI |
| `D:\Workspace\Company\Skintific\PowerBI\GLAD2GLOW\G2G - NPD & SKU Focus\00_README.md` | .md | G2G — NPD & SKU Focus: rebuilt data layer |
| `D:\Workspace\Company\Skintific\PowerBI\GLAD2GLOW\G2G - NPD & SKU Focus\05_powerbi_build_guide.md` | .md | Power BI build guide — NPD & SKU Focus dashboard |
| `D:\Workspace\Company\Skintific\PowerBI\GLAD2GLOW\G2G - NPD & SKU Focus\06_target_achievement_redesign.md` | .md | NPD & SKU Focus — Target & Achievement: Changes & Redesign |
| `D:\Workspace\Company\Skintific\PowerBI\GLAD2GLOW\G2G - NPD & SKU Focus\sql\01_npd_sku_focus_sp.sql` | .sql | 01_npd_sku_focus_sp |
| `D:\Workspace\Company\Skintific\PowerBI\GLAD2GLOW\G2G - NPD & SKU Focus\sql\01_npd_sku_focus_sp_ROLLBACK.sql` | .sql | 01_npd_sku_focus_sp_ROLLBACK |
| `D:\Workspace\Company\Skintific\PowerBI\GLAD2GLOW\G2G - NPD & SKU Focus\sql\01_npd_sku_focus_sp_v2.sql` | .sql | 01_npd_sku_focus_sp_v2 |
| `D:\Workspace\Company\Skintific\PowerBI\GLAD2GLOW\G2G - NPD & SKU Focus\sql\01_npd_sku_focus_sp_v3.sql` | .sql | 01_npd_sku_focus_sp_v3 |
| `D:\Workspace\Company\Skintific\PowerBI\GLAD2GLOW\G2G - NPD & SKU Focus\sql\01_npd_sku_focus_sp_v4.sql` | .sql | 01_npd_sku_focus_sp_v4 |
| `D:\Workspace\Company\Skintific\PowerBI\GLAD2GLOW\G2G - NPD & SKU Focus\sql\01_npd_sku_focus_sp_v4_ROLLBACK.sql` | .sql | 01_npd_sku_focus_sp_v4_ROLLBACK |
| `D:\Workspace\Company\Skintific\PowerBI\GLAD2GLOW\G2G - NPD & SKU Focus\sql\01_npd_sku_focus_sp_v5.sql` | .sql | 01_npd_sku_focus_sp_v5 |
| `D:\Workspace\Company\Skintific\PowerBI\GLAD2GLOW\G2G - NPD & SKU Focus\sql\01_npd_sku_focus_sp_v5_ROLLBACK.sql` | .sql | 01_npd_sku_focus_sp_v5_ROLLBACK |
| `D:\Workspace\Company\Skintific\PowerBI\GLAD2GLOW\G2G - NPD & SKU Focus\sql\01_npd_sku_focus_sp_v6.sql` | .sql | 01_npd_sku_focus_sp_v6 |
| `D:\Workspace\Company\Skintific\PowerBI\GLAD2GLOW\G2G - NPD & SKU Focus\sql\01_npd_sku_focus_sp_v6_ROLLBACK.sql` | .sql | 01_npd_sku_focus_sp_v6_ROLLBACK |
| `D:\Workspace\Company\Skintific\PowerBI\GLAD2GLOW\G2G - NPD & SKU Focus\sql\01_npd_sku_focus_sp_v7.sql` | .sql | 01_npd_sku_focus_sp_v7 |
| `D:\Workspace\Company\Skintific\PowerBI\GLAD2GLOW\G2G - NPD & SKU Focus\sql\01_npd_sku_focus_sp_v7_ROLLBACK.sql` | .sql | 01_npd_sku_focus_sp_v7_ROLLBACK |
| `D:\Workspace\Company\Skintific\PowerBI\GLAD2GLOW\G2G - NPD & SKU Focus\sql\01_npd_sku_focus_sp_v8.sql` | .sql | 01_npd_sku_focus_sp_v8 |
| `D:\Workspace\Company\Skintific\PowerBI\GLAD2GLOW\G2G - NPD & SKU Focus\sql\01_npd_sku_focus_sp_v8_ROLLBACK.sql` | .sql | 01_npd_sku_focus_sp_v8_ROLLBACK |
| `D:\Workspace\Company\Skintific\PowerBI\GLAD2GLOW\G2G - NPD & SKU Focus\sql\02_powerbi_source_queries.sql` | .sql | 02_powerbi_source_queries |
| `D:\Workspace\Company\Skintific\PowerBI\GLAD2GLOW\G2G - NPD & SKU Focus\sql\03_verification_checks.sql` | .sql | 03_verification_checks |
| `D:\Workspace\Company\Skintific\PowerBI\GLAD2GLOW\GT - Sell Through Detail\SELL_THROUGH_PBIP_IMPLEMENTATION.md` | .md | Sell Through Detail — PBIP Implementation |
| `D:\Workspace\Company\Skintific\PowerBI\GLAD2GLOW\_backup_GT-Sell-Through-Detail_20261013\SELL_THROUGH_PBIP_IMPLEMENTATION.md` | .md | Sell Through Detail — PBIP Implementation |
| `D:\Workspace\Company\Skintific\PowerBI\Governance\PowerBI Governance & Rationalization\README.md` | .md | Power BI Governance & Rationalization (README) |
| `D:\Workspace\Company\Skintific\PowerBI\Governance\PowerBI Governance & Rationalization\validation\reconciliation.sql` | .sql | reconciliation |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Channel Retail Management\audit_performance\MT_sellout_dedup_proposal.md` | .md | Proposal: Perbaikan duplikasi MT sell-out di `fact_sell_out` |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Channel Retail Management\audit_performance\P0_P1_execution_audit.md` | .md | P0/P1 Execution Audit — Channel Retail Management Dashboard |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Channel Retail Management\audit_performance\validation\MT_fanout\P0-2_mt_dedup_optA.sql` | .sql | P0-2_mt_dedup_optA |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Channel Retail Management\audit_performance\validation\MT_fanout\P0-2_mt_dedup_optB.sql` | .sql | P0-2_mt_dedup_optB |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Channel Retail Management\audit_performance\validation\P0-2_new.sql` | .sql | P0-2_new |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Channel Retail Management\audit_performance\validation\P0-2_old.sql` | .sql | P0-2_old |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Distributor Score Card\documentation\Distributor Operational Assessment App\User_Guide_EN.md` | .md | Distributor Operational Assessment — User Guide |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Distributor Score Card\documentation\Distributor Operational Assessment App\User_Guide_ID.md` | .md | Distributor Operational Assessment — Panduan Pengguna |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Distributor Score Card\documentation\KPI_Distributor_Executive_Summary.md` | .md | 2026 KPI Distributor Scorecard — Executive Summary |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Distributor Score Card\documentation\KPI_Distributor_Full_Rankings.md` | .md | 2026 KPI Distributor Scorecard — Full Rankings |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Distributor Score Card\documentation\KPI_Distributor_Metric_Analysis.md` | .md | 2026 KPI Distributor Scorecard — Metric Analysis & Model Audit |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Distributor Score Card\documentation\PowerBI_Build_Guide.md` | .md | SKINTIFIC Distributor Scorecard — Power BI Build Guide |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Distributor Score Card\documentation\validate_distributor_scorecard.sql` | .sql | validate_distributor_scorecard |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - MSL Tracker\docs\MSL-Tracker-Build-Documentation.md` | .md | MSL Tracker — Build Documentation |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - MSL Tracker\docs\MSL-Tracker-Business-Tooltip.md` | .md | MSL Tracker - Business Help Tooltip |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - MSL Tracker\docs\MSL-Tracker-Data-Audit-2026-08-07.md` | .md | MSL Tracker — Data & Governance Audit |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - MSL Tracker\sql\00_baseline_pre_change_logic.sql` | .sql | 00_baseline_pre_change_logic |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - MSL Tracker\sql\01_msl_config_tables.sql` | .sql | 01_msl_config_tables |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - MSL Tracker\sql\02_msl_views.sql` | .sql | 02_msl_views |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - MSL Tracker\sql\03_msl_dq_exceptions.sql` | .sql | 03_msl_dq_exceptions |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - MSL Tracker\sql\04_msl_kpi_validation_view.sql` | .sql | 04_msl_kpi_validation_view |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - MSL Tracker\sql\05_msl_target_revisions.sql` | .sql | 05_msl_target_revisions |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - MSL Tracker\sql\06_msl_target_migrate_rev1.sql` | .sql | 06_msl_target_migrate_rev1 |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - MSL Tracker\sql\07_msl_validation_results_grain.sql` | .sql | 07_msl_validation_results_grain |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - MSL Tracker\sql\08_msl_kpi_validation_detail_view.sql` | .sql | 08_msl_kpi_validation_detail_view |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - MSL Tracker\sql\09_msl_pipeline_runs.sql` | .sql | 09_msl_pipeline_runs |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - MSL Tracker\sql\10_msl_pencapaian_distributor_reconciliation.sql` | .sql | 10_msl_pencapaian_distributor_reconciliation |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - MSL Tracker\tools\explore\dq_summary.sql` | .sql | dq_summary |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - MSL Tracker\tools\explore\e01_fact_brands.sql` | .sql | e01_fact_brands |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - MSL Tracker\tools\explore\e02_objects.sql` | .sql | e02_objects |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - MSL Tracker\tools\explore\e03_sku_multi_brand.sql` | .sql | e03_sku_multi_brand |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - MSL Tracker\tools\explore\e04_fact_sku_multi_brand.sql` | .sql | e04_fact_sku_multi_brand |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - MSL Tracker\tools\explore\e05_store_snapshots.sql` | .sql | e05_store_snapshots |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - MSL Tracker\tools\explore\e06_grade_dist.sql` | .sql | e06_grade_dist |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - MSL Tracker\tools\explore\e07_dist_multi_map.sql` | .sql | e07_dist_multi_map |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - MSL Tracker\tools\explore\e08_fcr_cols.sql` | .sql | e08_fcr_cols |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - MSL Tracker\tools\explore\org_status.sql` | .sql | org_status |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - MSL Tracker\tools\explore\target_region_match.sql` | .sql | target_region_match |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - MSL Tracker\tools\explore\v01_target_org.sql` | .sql | v01_target_org |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - MSL Tracker\tools\explore\v02_target_total_check.sql` | .sql | v02_target_total_check |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - MSL Tracker\tools\explore\v03_norm.sql` | .sql | v03_norm |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - MSL Tracker\tools\explore\v04_store_grade.sql` | .sql | v04_store_grade |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - MSL Tracker\tools\explore\v05_mapping.sql` | .sql | v05_mapping |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Month To Month Report\New Enterprise Report\Documentation\01_Legacy_Architecture.md` | .md | Legacy Architecture Document |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Month To Month Report\New Enterprise Report\Documentation\02_JBP_Program_Requirements_Conceptual_Design.md` | .md | JBP Program — Business Requirements & Conceptual Design |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Month To Month Report\New Enterprise Report\Documentation\03_Database_Assessment.md` | .md | Database Assessment Report |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Month To Month Report\New Enterprise Report\Documentation\04_Target_Architecture_Data_Model.md` | .md | Target Architecture & Data Model Design |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Month To Month Report\New Enterprise Report\Documentation\05_New_PBIP_Build_Guide.md` | .md | New PBIP Build — SKT GT Performance Platform |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Month To Month Report\New Enterprise Report\Documentation\06_Report_UX_Design.md` | .md | Report UX Design — SKT GT Performance Platform |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Month To Month Report\New Enterprise Report\Documentation\07_GT_Mart_Enterprise_Redesign.md` | .md | GT Mart — Enterprise Analytics Layer Redesign |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Month To Month Report\New Enterprise Report\Documentation\08_National_DBDB_Migration_Mapping.md` | .md | Migration Analysis — Report → National Daily DB-DB Semantic Model |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Month To Month Report\New Enterprise Report\Documentation\09_JBP_Real_Data_Handoff_PowerBI_Development.md` | .md | JBP Real Data Handoff — Power BI Development Guide |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Month To Month Report\New Enterprise Report\Documentation\10_National_DBDB_Refactoring_QA_Review.md` | .md | National DB-DB Report — Refactoring & QA Review (for review, not yet applied) |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Month To Month Report\New Enterprise Report\Documentation\11_National_DBDB_Audit_QA_Report.md` | .md | National DB-DB — Safe Refactoring, Audit & QA Report |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Month To Month Report\New Enterprise Report\Documentation\12_Inventory_WOI_Report_Mapping.md` | .md | 12 — Inventory & WOI Report *(moved)* |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Month To Month Report\New Enterprise Report\Documentation\13_WOI_Distributor_Build.md` | .md | 13. Distributor WOI (Weeks of Inventory) Build — 2026-08-06 |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Month To Month Report\New Enterprise Report\Documentation\business_tooltip_documentation\01_report_inventory.md` | .md | 01 — Report Inventory |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Month To Month Report\New Enterprise Report\Documentation\business_tooltip_documentation\02_visual_inventory.md` | .md | 02 — Visual Inventory |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Month To Month Report\New Enterprise Report\Documentation\business_tooltip_documentation\03_measure_dictionary.md` | .md | 03 — Measure Dictionary |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Month To Month Report\New Enterprise Report\Documentation\business_tooltip_documentation\04_business_glossary.md` | .md | 04 — Business Glossary |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Month To Month Report\New Enterprise Report\Documentation\business_tooltip_documentation\05_business_definitions.md` | .md | 05 — Business Definitions (KPI) |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Month To Month Report\New Enterprise Report\Documentation\business_tooltip_documentation\06_technical_lineage.md` | .md | 06 — Technical Lineage |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Month To Month Report\New Enterprise Report\Documentation\business_tooltip_documentation\06b_table_sources.md` | .md | Appendix — Table → Source |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Month To Month Report\New Enterprise Report\Documentation\business_tooltip_documentation\07_impact_analysis.md` | .md | 07 — Impact Analysis |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Month To Month Report\New Enterprise Report\Documentation\business_tooltip_documentation\08_tooltip_changes.md` | .md | 08 — Tooltip Analysis & Changes |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Month To Month Report\New Enterprise Report\Documentation\business_tooltip_documentation\09_change_log.md` | .md | 09 — Change Log |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Month To Month Report\New Enterprise Report\Documentation\business_tooltip_documentation\10_review_required.md` | .md | 10 — Review Required |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Month To Month Report\New Enterprise Report\Documentation\business_tooltip_documentation\11_business_user_guide.md` | .md | 11 — Panduan Pengguna Bisnis |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Month To Month Report\New Enterprise Report\Documentation\business_tooltip_documentation\12_enhancement_2026-09-24.md` | .md | 12 — Enhancement 2026-09-24 (SKT GT Performance Platform, National DB-DB) |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Month To Month Report\New Enterprise Report\backup_original\2026-09-25_status_wording_112753\business_tooltip_documentation\01_report_inventory.md` | .md | 01 — Report Inventory |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Month To Month Report\New Enterprise Report\backup_original\2026-09-25_status_wording_112753\business_tooltip_documentation\02_visual_inventory.md` | .md | 02 — Visual Inventory |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Month To Month Report\New Enterprise Report\backup_original\2026-09-25_status_wording_112753\business_tooltip_documentation\03_measure_dictionary.md` | .md | 03 — Measure Dictionary |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Month To Month Report\New Enterprise Report\backup_original\2026-09-25_status_wording_112753\business_tooltip_documentation\04_business_glossary.md` | .md | 04 — Business Glossary |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Month To Month Report\New Enterprise Report\backup_original\2026-09-25_status_wording_112753\business_tooltip_documentation\05_business_definitions.md` | .md | 05 — Business Definitions (KPI) |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Month To Month Report\New Enterprise Report\backup_original\2026-09-25_status_wording_112753\business_tooltip_documentation\06_technical_lineage.md` | .md | 06 — Technical Lineage |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Month To Month Report\New Enterprise Report\backup_original\2026-09-25_status_wording_112753\business_tooltip_documentation\06b_table_sources.md` | .md | Appendix — Table → Source |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Month To Month Report\New Enterprise Report\backup_original\2026-09-25_status_wording_112753\business_tooltip_documentation\07_impact_analysis.md` | .md | 07 — Impact Analysis |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Month To Month Report\New Enterprise Report\backup_original\2026-09-25_status_wording_112753\business_tooltip_documentation\08_tooltip_changes.md` | .md | 08 — Tooltip Analysis & Changes |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Month To Month Report\New Enterprise Report\backup_original\2026-09-25_status_wording_112753\business_tooltip_documentation\09_change_log.md` | .md | 09 — Change Log |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Month To Month Report\New Enterprise Report\backup_original\2026-09-25_status_wording_112753\business_tooltip_documentation\10_review_required.md` | .md | 10 — Review Required |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Month To Month Report\New Enterprise Report\backup_original\2026-09-25_status_wording_112753\business_tooltip_documentation\11_business_user_guide.md` | .md | 11 — Panduan Pengguna Bisnis |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Month To Month Report\New Enterprise Report\backup_original\2026-09-25_status_wording_112753\business_tooltip_documentation\12_enhancement_2026-09-24.md` | .md | 12 — Enhancement 2026-09-24 (SKT GT Performance Platform, National DB-DB) |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\SKT - Month To Month Report\README.md` | .md | SKT GT BI Platform |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\YTD SKU Performance\documentation\00_OVERVIEW.md` | .md | YTD SKU Performance Tracker — Overview |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\YTD SKU Performance\documentation\01_DATA_DICTIONARY.md` | .md | Data Dictionary — YTD SKU Performance Tracker |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\YTD SKU Performance\documentation\02_DEPENDENCY_MAP.md` | .md | Dependency Map & Metric Logic |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\YTD SKU Performance\documentation\03_DEV_NOTES.md` | .md | Developer Notes — Building on this workbook in Claude Code |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260928_145149\docs\MSL-Tracker-Build-Documentation.md` | .md | MSL Tracker — Build Documentation |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260928_145149\docs\MSL-Tracker-Data-Audit-2026-08-07.md` | .md | MSL Tracker — Data & Governance Audit |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260928_173900_pre_bo_sku\docs\MSL-Tracker-Build-Documentation.md` | .md | MSL Tracker — Build Documentation |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260928_173900_pre_bo_sku\docs\MSL-Tracker-Data-Audit-2026-08-07.md` | .md | MSL Tracker — Data & Governance Audit |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260928_173900_pre_bo_sku\sql\00_baseline_pre_change_logic.sql` | .sql | 00_baseline_pre_change_logic |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260928_173900_pre_bo_sku\sql\01_msl_config_tables.sql` | .sql | 01_msl_config_tables |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260928_173900_pre_bo_sku\sql\02_msl_views.sql` | .sql | 02_msl_views |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260928_173900_pre_bo_sku\sql\03_msl_dq_exceptions.sql` | .sql | 03_msl_dq_exceptions |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260928_173900_pre_bo_sku\sql\04_msl_kpi_validation_view.sql` | .sql | 04_msl_kpi_validation_view |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_090450_pre_tooltip\docs\MSL-Tracker-Build-Documentation.md` | .md | MSL Tracker — Build Documentation |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_090450_pre_tooltip\docs\MSL-Tracker-Data-Audit-2026-08-07.md` | .md | MSL Tracker — Data & Governance Audit |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_090450_pre_tooltip\sql\00_baseline_pre_change_logic.sql` | .sql | 00_baseline_pre_change_logic |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_090450_pre_tooltip\sql\01_msl_config_tables.sql` | .sql | 01_msl_config_tables |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_090450_pre_tooltip\sql\02_msl_views.sql` | .sql | 02_msl_views |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_090450_pre_tooltip\sql\03_msl_dq_exceptions.sql` | .sql | 03_msl_dq_exceptions |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_090450_pre_tooltip\sql\04_msl_kpi_validation_view.sql` | .sql | 04_msl_kpi_validation_view |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_090450_pre_tooltip\tools\explore\dq_summary.sql` | .sql | dq_summary |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_090450_pre_tooltip\tools\explore\e01_fact_brands.sql` | .sql | e01_fact_brands |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_090450_pre_tooltip\tools\explore\e02_objects.sql` | .sql | e02_objects |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_090450_pre_tooltip\tools\explore\e03_sku_multi_brand.sql` | .sql | e03_sku_multi_brand |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_090450_pre_tooltip\tools\explore\e04_fact_sku_multi_brand.sql` | .sql | e04_fact_sku_multi_brand |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_090450_pre_tooltip\tools\explore\e05_store_snapshots.sql` | .sql | e05_store_snapshots |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_090450_pre_tooltip\tools\explore\e06_grade_dist.sql` | .sql | e06_grade_dist |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_090450_pre_tooltip\tools\explore\e07_dist_multi_map.sql` | .sql | e07_dist_multi_map |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_090450_pre_tooltip\tools\explore\e08_fcr_cols.sql` | .sql | e08_fcr_cols |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_090450_pre_tooltip\tools\explore\org_status.sql` | .sql | org_status |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_090450_pre_tooltip\tools\explore\target_region_match.sql` | .sql | target_region_match |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_090450_pre_tooltip\tools\explore\v01_target_org.sql` | .sql | v01_target_org |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_090450_pre_tooltip\tools\explore\v02_target_total_check.sql` | .sql | v02_target_total_check |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_090450_pre_tooltip\tools\explore\v03_norm.sql` | .sql | v03_norm |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_090450_pre_tooltip\tools\explore\v04_store_grade.sql` | .sql | v04_store_grade |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_090450_pre_tooltip\tools\explore\v05_mapping.sql` | .sql | v05_mapping |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_135622_pre_remove_proxy\docs\MSL-Tracker-Build-Documentation.md` | .md | MSL Tracker — Build Documentation |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_135622_pre_remove_proxy\docs\MSL-Tracker-Business-Tooltip.md` | .md | MSL Tracker - Business Help Tooltip |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_135622_pre_remove_proxy\docs\MSL-Tracker-Data-Audit-2026-08-07.md` | .md | MSL Tracker — Data & Governance Audit |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_135622_pre_remove_proxy\sql\00_baseline_pre_change_logic.sql` | .sql | 00_baseline_pre_change_logic |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_135622_pre_remove_proxy\sql\01_msl_config_tables.sql` | .sql | 01_msl_config_tables |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_135622_pre_remove_proxy\sql\02_msl_views.sql` | .sql | 02_msl_views |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_135622_pre_remove_proxy\sql\03_msl_dq_exceptions.sql` | .sql | 03_msl_dq_exceptions |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_135622_pre_remove_proxy\sql\04_msl_kpi_validation_view.sql` | .sql | 04_msl_kpi_validation_view |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_135622_pre_remove_proxy\tools\explore\dq_summary.sql` | .sql | dq_summary |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_135622_pre_remove_proxy\tools\explore\e01_fact_brands.sql` | .sql | e01_fact_brands |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_135622_pre_remove_proxy\tools\explore\e02_objects.sql` | .sql | e02_objects |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_135622_pre_remove_proxy\tools\explore\e03_sku_multi_brand.sql` | .sql | e03_sku_multi_brand |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_135622_pre_remove_proxy\tools\explore\e04_fact_sku_multi_brand.sql` | .sql | e04_fact_sku_multi_brand |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_135622_pre_remove_proxy\tools\explore\e05_store_snapshots.sql` | .sql | e05_store_snapshots |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_135622_pre_remove_proxy\tools\explore\e06_grade_dist.sql` | .sql | e06_grade_dist |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_135622_pre_remove_proxy\tools\explore\e07_dist_multi_map.sql` | .sql | e07_dist_multi_map |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_135622_pre_remove_proxy\tools\explore\e08_fcr_cols.sql` | .sql | e08_fcr_cols |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_135622_pre_remove_proxy\tools\explore\org_status.sql` | .sql | org_status |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_135622_pre_remove_proxy\tools\explore\target_region_match.sql` | .sql | target_region_match |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_135622_pre_remove_proxy\tools\explore\v01_target_org.sql` | .sql | v01_target_org |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_135622_pre_remove_proxy\tools\explore\v02_target_total_check.sql` | .sql | v02_target_total_check |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_135622_pre_remove_proxy\tools\explore\v03_norm.sql` | .sql | v03_norm |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_135622_pre_remove_proxy\tools\explore\v04_store_grade.sql` | .sql | v04_store_grade |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_135622_pre_remove_proxy\tools\explore\v05_mapping.sql` | .sql | v05_mapping |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_142036_pre_prod_pipeline\docs\MSL-Tracker-Build-Documentation.md` | .md | MSL Tracker — Build Documentation |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_142036_pre_prod_pipeline\docs\MSL-Tracker-Business-Tooltip.md` | .md | MSL Tracker - Business Help Tooltip |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_142036_pre_prod_pipeline\docs\MSL-Tracker-Data-Audit-2026-08-07.md` | .md | MSL Tracker — Data & Governance Audit |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_142036_pre_prod_pipeline\sql\00_baseline_pre_change_logic.sql` | .sql | 00_baseline_pre_change_logic |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_142036_pre_prod_pipeline\sql\01_msl_config_tables.sql` | .sql | 01_msl_config_tables |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_142036_pre_prod_pipeline\sql\02_msl_views.sql` | .sql | 02_msl_views |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_142036_pre_prod_pipeline\sql\03_msl_dq_exceptions.sql` | .sql | 03_msl_dq_exceptions |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_142036_pre_prod_pipeline\sql\04_msl_kpi_validation_view.sql` | .sql | 04_msl_kpi_validation_view |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_142036_pre_prod_pipeline\tools\explore\dq_summary.sql` | .sql | dq_summary |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_142036_pre_prod_pipeline\tools\explore\e01_fact_brands.sql` | .sql | e01_fact_brands |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_142036_pre_prod_pipeline\tools\explore\e02_objects.sql` | .sql | e02_objects |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_142036_pre_prod_pipeline\tools\explore\e03_sku_multi_brand.sql` | .sql | e03_sku_multi_brand |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_142036_pre_prod_pipeline\tools\explore\e04_fact_sku_multi_brand.sql` | .sql | e04_fact_sku_multi_brand |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_142036_pre_prod_pipeline\tools\explore\e05_store_snapshots.sql` | .sql | e05_store_snapshots |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_142036_pre_prod_pipeline\tools\explore\e06_grade_dist.sql` | .sql | e06_grade_dist |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_142036_pre_prod_pipeline\tools\explore\e07_dist_multi_map.sql` | .sql | e07_dist_multi_map |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_142036_pre_prod_pipeline\tools\explore\e08_fcr_cols.sql` | .sql | e08_fcr_cols |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_142036_pre_prod_pipeline\tools\explore\org_status.sql` | .sql | org_status |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_142036_pre_prod_pipeline\tools\explore\target_region_match.sql` | .sql | target_region_match |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_142036_pre_prod_pipeline\tools\explore\v01_target_org.sql` | .sql | v01_target_org |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_142036_pre_prod_pipeline\tools\explore\v02_target_total_check.sql` | .sql | v02_target_total_check |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_142036_pre_prod_pipeline\tools\explore\v03_norm.sql` | .sql | v03_norm |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_142036_pre_prod_pipeline\tools\explore\v04_store_grade.sql` | .sql | v04_store_grade |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_142036_pre_prod_pipeline\tools\explore\v05_mapping.sql` | .sql | v05_mapping |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_164429_pre_assortment_share\tools\explore\dq_summary.sql` | .sql | dq_summary |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_164429_pre_assortment_share\tools\explore\e01_fact_brands.sql` | .sql | e01_fact_brands |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_164429_pre_assortment_share\tools\explore\e02_objects.sql` | .sql | e02_objects |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_164429_pre_assortment_share\tools\explore\e03_sku_multi_brand.sql` | .sql | e03_sku_multi_brand |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_164429_pre_assortment_share\tools\explore\e04_fact_sku_multi_brand.sql` | .sql | e04_fact_sku_multi_brand |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_164429_pre_assortment_share\tools\explore\e05_store_snapshots.sql` | .sql | e05_store_snapshots |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_164429_pre_assortment_share\tools\explore\e06_grade_dist.sql` | .sql | e06_grade_dist |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_164429_pre_assortment_share\tools\explore\e07_dist_multi_map.sql` | .sql | e07_dist_multi_map |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_164429_pre_assortment_share\tools\explore\e08_fcr_cols.sql` | .sql | e08_fcr_cols |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_164429_pre_assortment_share\tools\explore\org_status.sql` | .sql | org_status |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_164429_pre_assortment_share\tools\explore\target_region_match.sql` | .sql | target_region_match |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_164429_pre_assortment_share\tools\explore\v01_target_org.sql` | .sql | v01_target_org |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_164429_pre_assortment_share\tools\explore\v02_target_total_check.sql` | .sql | v02_target_total_check |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_164429_pre_assortment_share\tools\explore\v03_norm.sql` | .sql | v03_norm |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_164429_pre_assortment_share\tools\explore\v04_store_grade.sql` | .sql | v04_store_grade |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20260929_164429_pre_assortment_share\tools\explore\v05_mapping.sql` | .sql | v05_mapping |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261001_101821_pre_stock_rename\docs\MSL-Tracker-Build-Documentation.md` | .md | MSL Tracker — Build Documentation |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261001_101821_pre_stock_rename\docs\MSL-Tracker-Business-Tooltip.md` | .md | MSL Tracker - Business Help Tooltip |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261001_101821_pre_stock_rename\sql\03_msl_dq_exceptions.sql` | .sql | 03_msl_dq_exceptions |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261001_101821_pre_stock_rename\sql\08_msl_kpi_validation_detail_view.sql` | .sql | 08_msl_kpi_validation_detail_view |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_141450_pre_q4_sku\docs\MSL-Tracker-Build-Documentation.md` | .md | MSL Tracker — Build Documentation |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_141450_pre_q4_sku\docs\MSL-Tracker-Business-Tooltip.md` | .md | MSL Tracker - Business Help Tooltip |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_141450_pre_q4_sku\docs\MSL-Tracker-Data-Audit-2026-08-07.md` | .md | MSL Tracker — Data & Governance Audit |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_141450_pre_q4_sku\sql\00_baseline_pre_change_logic.sql` | .sql | 00_baseline_pre_change_logic |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_141450_pre_q4_sku\sql\01_msl_config_tables.sql` | .sql | 01_msl_config_tables |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_141450_pre_q4_sku\sql\02_msl_views.sql` | .sql | 02_msl_views |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_141450_pre_q4_sku\sql\03_msl_dq_exceptions.sql` | .sql | 03_msl_dq_exceptions |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_141450_pre_q4_sku\sql\04_msl_kpi_validation_view.sql` | .sql | 04_msl_kpi_validation_view |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_141450_pre_q4_sku\sql\05_msl_target_revisions.sql` | .sql | 05_msl_target_revisions |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_141450_pre_q4_sku\sql\06_msl_target_migrate_rev1.sql` | .sql | 06_msl_target_migrate_rev1 |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_141450_pre_q4_sku\sql\07_msl_validation_results_grain.sql` | .sql | 07_msl_validation_results_grain |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_141450_pre_q4_sku\sql\08_msl_kpi_validation_detail_view.sql` | .sql | 08_msl_kpi_validation_detail_view |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_141450_pre_q4_sku\sql\09_msl_pipeline_runs.sql` | .sql | 09_msl_pipeline_runs |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_141450_pre_q4_sku\sql\10_msl_pencapaian_distributor_reconciliation.sql` | .sql | 10_msl_pencapaian_distributor_reconciliation |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_141450_pre_q4_sku\tools\explore\dq_summary.sql` | .sql | dq_summary |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_141450_pre_q4_sku\tools\explore\e01_fact_brands.sql` | .sql | e01_fact_brands |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_141450_pre_q4_sku\tools\explore\e02_objects.sql` | .sql | e02_objects |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_141450_pre_q4_sku\tools\explore\e03_sku_multi_brand.sql` | .sql | e03_sku_multi_brand |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_141450_pre_q4_sku\tools\explore\e04_fact_sku_multi_brand.sql` | .sql | e04_fact_sku_multi_brand |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_141450_pre_q4_sku\tools\explore\e05_store_snapshots.sql` | .sql | e05_store_snapshots |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_141450_pre_q4_sku\tools\explore\e06_grade_dist.sql` | .sql | e06_grade_dist |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_141450_pre_q4_sku\tools\explore\e07_dist_multi_map.sql` | .sql | e07_dist_multi_map |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_141450_pre_q4_sku\tools\explore\e08_fcr_cols.sql` | .sql | e08_fcr_cols |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_141450_pre_q4_sku\tools\explore\org_status.sql` | .sql | org_status |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_141450_pre_q4_sku\tools\explore\target_region_match.sql` | .sql | target_region_match |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_141450_pre_q4_sku\tools\explore\v01_target_org.sql` | .sql | v01_target_org |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_141450_pre_q4_sku\tools\explore\v02_target_total_check.sql` | .sql | v02_target_total_check |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_141450_pre_q4_sku\tools\explore\v03_norm.sql` | .sql | v03_norm |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_141450_pre_q4_sku\tools\explore\v04_store_grade.sql` | .sql | v04_store_grade |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_141450_pre_q4_sku\tools\explore\v05_mapping.sql` | .sql | v05_mapping |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_153527_pre_single_brand\tools\explore\dq_summary.sql` | .sql | dq_summary |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_153527_pre_single_brand\tools\explore\e01_fact_brands.sql` | .sql | e01_fact_brands |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_153527_pre_single_brand\tools\explore\e02_objects.sql` | .sql | e02_objects |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_153527_pre_single_brand\tools\explore\e03_sku_multi_brand.sql` | .sql | e03_sku_multi_brand |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_153527_pre_single_brand\tools\explore\e04_fact_sku_multi_brand.sql` | .sql | e04_fact_sku_multi_brand |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_153527_pre_single_brand\tools\explore\e05_store_snapshots.sql` | .sql | e05_store_snapshots |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_153527_pre_single_brand\tools\explore\e06_grade_dist.sql` | .sql | e06_grade_dist |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_153527_pre_single_brand\tools\explore\e07_dist_multi_map.sql` | .sql | e07_dist_multi_map |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_153527_pre_single_brand\tools\explore\e08_fcr_cols.sql` | .sql | e08_fcr_cols |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_153527_pre_single_brand\tools\explore\org_status.sql` | .sql | org_status |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_153527_pre_single_brand\tools\explore\target_region_match.sql` | .sql | target_region_match |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_153527_pre_single_brand\tools\explore\v01_target_org.sql` | .sql | v01_target_org |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_153527_pre_single_brand\tools\explore\v02_target_total_check.sql` | .sql | v02_target_total_check |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_153527_pre_single_brand\tools\explore\v03_norm.sql` | .sql | v03_norm |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_153527_pre_single_brand\tools\explore\v04_store_grade.sql` | .sql | v04_store_grade |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_153527_pre_single_brand\tools\explore\v05_mapping.sql` | .sql | v05_mapping |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_164550_pre_q4_rule_target\docs\MSL-Tracker-Build-Documentation.md` | .md | MSL Tracker — Build Documentation |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_164550_pre_q4_rule_target\docs\MSL-Tracker-Business-Tooltip.md` | .md | MSL Tracker - Business Help Tooltip |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_164550_pre_q4_rule_target\docs\MSL-Tracker-Data-Audit-2026-08-07.md` | .md | MSL Tracker — Data & Governance Audit |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_164550_pre_q4_rule_target\sql\00_baseline_pre_change_logic.sql` | .sql | 00_baseline_pre_change_logic |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_164550_pre_q4_rule_target\sql\01_msl_config_tables.sql` | .sql | 01_msl_config_tables |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_164550_pre_q4_rule_target\sql\02_msl_views.sql` | .sql | 02_msl_views |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_164550_pre_q4_rule_target\sql\03_msl_dq_exceptions.sql` | .sql | 03_msl_dq_exceptions |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_164550_pre_q4_rule_target\sql\04_msl_kpi_validation_view.sql` | .sql | 04_msl_kpi_validation_view |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_164550_pre_q4_rule_target\sql\05_msl_target_revisions.sql` | .sql | 05_msl_target_revisions |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_164550_pre_q4_rule_target\sql\06_msl_target_migrate_rev1.sql` | .sql | 06_msl_target_migrate_rev1 |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_164550_pre_q4_rule_target\sql\07_msl_validation_results_grain.sql` | .sql | 07_msl_validation_results_grain |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_164550_pre_q4_rule_target\sql\08_msl_kpi_validation_detail_view.sql` | .sql | 08_msl_kpi_validation_detail_view |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_164550_pre_q4_rule_target\sql\09_msl_pipeline_runs.sql` | .sql | 09_msl_pipeline_runs |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_164550_pre_q4_rule_target\sql\10_msl_pencapaian_distributor_reconciliation.sql` | .sql | 10_msl_pencapaian_distributor_reconciliation |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_164550_pre_q4_rule_target\tools\explore\dq_summary.sql` | .sql | dq_summary |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_164550_pre_q4_rule_target\tools\explore\e01_fact_brands.sql` | .sql | e01_fact_brands |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_164550_pre_q4_rule_target\tools\explore\e02_objects.sql` | .sql | e02_objects |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_164550_pre_q4_rule_target\tools\explore\e03_sku_multi_brand.sql` | .sql | e03_sku_multi_brand |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_164550_pre_q4_rule_target\tools\explore\e04_fact_sku_multi_brand.sql` | .sql | e04_fact_sku_multi_brand |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_164550_pre_q4_rule_target\tools\explore\e05_store_snapshots.sql` | .sql | e05_store_snapshots |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_164550_pre_q4_rule_target\tools\explore\e06_grade_dist.sql` | .sql | e06_grade_dist |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_164550_pre_q4_rule_target\tools\explore\e07_dist_multi_map.sql` | .sql | e07_dist_multi_map |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_164550_pre_q4_rule_target\tools\explore\e08_fcr_cols.sql` | .sql | e08_fcr_cols |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_164550_pre_q4_rule_target\tools\explore\org_status.sql` | .sql | org_status |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_164550_pre_q4_rule_target\tools\explore\target_region_match.sql` | .sql | target_region_match |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_164550_pre_q4_rule_target\tools\explore\v01_target_org.sql` | .sql | v01_target_org |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_164550_pre_q4_rule_target\tools\explore\v02_target_total_check.sql` | .sql | v02_target_total_check |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_164550_pre_q4_rule_target\tools\explore\v03_norm.sql` | .sql | v03_norm |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_164550_pre_q4_rule_target\tools\explore\v04_store_grade.sql` | .sql | v04_store_grade |
| `D:\Workspace\Company\Skintific\PowerBI\SKINTIFIC\_backup\SKT - MSL Tracker_20261002_164550_pre_q4_rule_target\tools\explore\v05_mapping.sql` | .sql | v05_mapping |
| `D:\Workspace\Company\Skintific\README.md` | .md | Company — Skintific |
| `D:\Workspace\Company\Skintific\Server-Mirror\Backup\repsly\price-update\README-price-update.md` | .md | Repsly Price-Update Script Audit |
| `D:\Workspace\Company\Skintific\Server-Mirror\Claude\windows_server_audit_summary.md` | .md | Windows Server Audit Report |
| `D:\Workspace\Company\Skintific\Server-Mirror\README.md` | .md | Server-Mirror (formerly D:\Server Data) |
| `D:\Workspace\Company\Skintific\Tools\gcp-billing-awareness-emails\ALERT_SYSTEM_DESIGN.md` | .md | Mid-Month Cost Alert System — Design Doc (Rp 500,000 threshold) |
| `D:\Workspace\Company\Skintific\Tools\gcp-billing-awareness-emails\README.md` | .md | GCP / BigQuery Cost-Awareness Emails |
| `D:\Workspace\Company\Skintific\Tools\gcp-billing-awareness-emails\data\2026-07\README.md` | .md | data/2026-07/phase9.csv — coverage note |
| `D:\Workspace\Company\Skintific\Tools\gcp-billing-awareness-emails\reports\2026-08-20\sql_queries_used.sql` | .sql | sql_queries_used |
| `D:\Workspace\Company\Skintific\Tools\gcp-billing-awareness-emails\sql\mtd_cost_check.sql` | .sql | mtd_cost_check |
| `D:\Workspace\Company\Skintific\Tools\gcp-billing-awareness-emails\sql\mtd_cost_vs_last_month.sql` | .sql | mtd_cost_vs_last_month |
| `D:\Workspace\Company\Skintific\Tools\gcp-billing-awareness-emails\sql\phase9_extract.sql` | .sql | phase9_extract |
| `D:\Workspace\Company\Skintific\Tools\gcp-billing-awareness-emails\tests\fixtures\sample_report.md` | .md | Sample Report |
| `D:\Workspace\Company\Skintific\Tools\openmetadata-bi-review\README_openmetadata_bi_review.md` | .md | OpenMetadata BI Review — end-to-end business metadata |

## Tidak disalin

35 file dilewati karena namanya mengandung credential, secret, token, password, atau `.env`. Path lengkap tidak ditulis di repository ini. Nilainya tidak dibaca.
