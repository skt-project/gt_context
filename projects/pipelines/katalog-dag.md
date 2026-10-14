---
title: "Katalog DAG Airflow"
doc_type: catalog
status: active
confidence: CONFIRMED
owner: repository-maintainer
source: "D:\GitHub\docker-airflow\dags pada 2026-10-14"
last_verified: 2026-10-14
next_review: 2026-11-14
sensitivity: internal
summary: "dag_id, jadwal, owner, dan deskripsi dari file DAG di checkout lokal."
generated: "true"
---

<!-- GENERATED FILE. Jangan mengedit tangan. -->

# Katalog DAG Airflow

Sumbernya checkout `D:\GitHub\docker-airflow\dags`, bukan scheduler production. Aturan kode menyatakan laptop ini bukan host Airflow. Email, token, dan secret di dalam file DAG tidak disalin.

Jumlah file dengan `dag_id`: 63.

| File | dag_id | Schedule | Owner | Tags | Deskripsi | Penanda |
| --- | --- | --- | --- | --- | --- | --- |
| `dag_ass_assessment_reminder.py` | ASS_assessment_monthly_reminder | `'0 9 5 * *'` | GT | ASS, Assessment, Reminder, Email | Reminds Area Sales Supervisors who have not submitted their Distributor Operational Assessment for the prior period |  |
| `dag_gcp_cost_threshold_alert.py` | gcp_cost_threshold_alert | `"0 7 * * *"` | Data | GCP, BigQuery, Cost, FinOps, Alert |  |  |
| `dag_gt_ba_store_identifier.py.py` | GT_BA_store_identifier | `'7 7-22 * * *'` | GT | ETL, GT, STORE, IDENTIFIER, BA, GSHEET | Data pipeline to load BA Store Identifier data into BigQuery |  |
| `dag_gt_bq_sp_call.py` | GT_BQ_sp_caller | `'28 6-1 * * *'` | GT | BIGQUERY, STORED PROCEDURE, ST, RSA | A DAG to run a BigQuery stored procedure (si_st_so_target_data, fact_sell_through_all) |  |
| `dag_gt_cust_correction.py` | UNKNOWN | `'*/30 6-22 * * *'` | GT | ETL, PRODUCTION, GT, CUSTOMER, CORRECTION | Data pipeline to load data into BigQuery |  |
| `dag_gt_mapping_st_so_ba_store.py` | GT_mapping_st_so_ba_store | `'0 8` | GT | GT, GSHEET, MAPPING, ST, SO, BA, STORE | ETL: Mapping Store RSA vs. BA (ST/SO/BA store mapping) Google Sheet -> BigQuery |  |
| `dag_gt_mart_dim_store_api.py` | GT_mart_dim_store_api | `"0 4 * * *"` | GT | GT, MART, STORE, API, PHASE2, SHADOW | Phase 2 shadow refresh: API bronze -> canonical store/brand + Sheet reconciliation |  |
| `dag_gt_master_cust_smd.py` | UNKNOWN | `'*/30 6-22 * * *'` | GT | ETL, PRODUCTION, GT, CUSTOMER, SMD | Data pipeline to load data into BigQuery |  |
| `dag_gt_master_distributor.py` | GT_master_distributor | `'0 10 * * *'` | GT | GT, GSHEET, DISTRIBUTOR, DATABASE | ETL for GT Master Distributor from Google Sheets to BigQuery |  |
| `dag_gt_master_distributor_aom.py` | GT_master_distributor_aom | `"30 10 * * *"` | GT | GT, GSHEET, DISTRIBUTOR, AOM, DATABASE | ETL for GT Distributor AOM/Region mapping from Google Sheets to BigQuery |  |
| `dag_gt_master_offline_stock.py` | GT_master_offline_stock | `"3 9` | GT | GT, GSHEET, DATABASE, OFFLINE STOCK | ETL from Offline Stock Google Sheets to BigQuery |  |
| `dag_gt_master_product.py` | GT_master_product | `None` | GT | GT, GSHEET, DATABASE, PRODUCT | ETL for GT Master Product from Google Sheets to BigQuery (manual trigger only) |  |
| `dag_gt_master_store_database_api.py` | GT_master_store_database_api | `'0 1 * * *'` | GT | GT, API, DATABASE, STORE, CDC, SCD2, INCREMENTAL | Brand-by-brand CDC (SCD-2) ingestion of the Offline Store Info API into |  |
| `dag_gt_master_store_database_basis.py` | GT_master_store_database_basis | `'2` | GT | GT, GSHEET, DATABASE, STORE, BASIS | ETL from BASIS Store DB Google Sheets to BigQuery and Parquet GCS backup |  |
| `dag_gt_master_store_database_basis_api.py` | GT_master_store_database_basis_API | `'17 3` | GT | GT, API, DATABASE, STORE, BASIS | ETL from Offline Store Info API to BigQuery (replaces BASIS Google Sheet source) |  |
| `dag_gt_master_store_database_g2g.py` | GT_master_store_database_g2g | `'0 7` | GT | GT, GSHEET, DATABASE, STORE, G2G | ETL from G2G Store DB Google Sheets to BigQuery and Parquet GCS backup |  |
| `dag_gt_master_store_database_skt.py` | GT_master_store_database_skt | `'0 7` | GT | GT, GSHEET, DATABASE, STORE, SKINTIFIC | ETL from Skintific Store DB Google Sheets to BigQuery and Parquet GCS backup |  |
| `dag_gt_master_store_database_tph.py` | GT_master_store_database_tph | `'0 7` | GT | GT, GSHEET, DATABASE, STORE, TIMEPHORIA | ETL from TIMEPHORIA Store DB Google Sheets to BigQuery and Parquet GCS backup |  |
| `dag_gt_msl_mart.py` | GT_msl_mart | `"30 11 * * *"` | GT | GT, MSL, BIGQUERY, MART, DATABASE | Rebuild the MSL Tracker data mart natively in BigQuery (no Google Sheets). |  |
| `dag_gt_msl_pipeline.py` | GT_msl_pipeline | `"45 11 * * *"` | GT | GT, MSL, GSHEET, POWERBI, TARGET | MSL Tracker: target sheets -> revisioned BigQuery targets -> Power BI refresh -> validation |  |
| `dag_gt_mt_asset_management.py` | GT_MT_repsly_asset_management | `'4 6-22/2 * * *'` | GT MT | REPSLY, API, FORMS, GT, MT, ASSET MANAGEMENT | Incremental ETL from Repsly API (Forms) to BigQuery staging, then split by form type to target tables, with GCS Parquet backup |  |
| `dag_gt_mt_posm.py` | GT_MT_repsly_posm | `'6 6-22/2 * * *'` | GT MT | REPSLY, API, FORMS, POSM, GT, MT | Incremental ETL from Repsly API (POSM Forms) to BigQuery staging, then split by country/form type to target tables, with GCS Parquet backup |  |
| `dag_gt_mt_purchase_order.py` | GT_MT_repsly_purchase_orders | `'0 3` | GT MT | REPSLY, API, PURCHASE ORDER, GT, MT | Unique identifier for the purchase order. |  |
| `dag_gt_mt_repsly_clients.py` | GT_MT_repsly_clients | `"15 5-22 * * *"` | GT MT | REPSLY, STORE |  |  |
| `dag_gt_mt_repsly_representative.py` | GT_MT_repsly_dim_representative | `"03 5-22 * * *"` | GT MT | REPSLY, DIM, REPRESENTATIVE |  |  |
| `dag_gt_mt_repsly_retailaudit.py` | GT_MT_repsly_retailaudit | `"10 5-22/2 * * *"` | GT MT | REPSLY, RETAILAUDIT |  |  |
| `dag_gt_mt_repsly_visit.py` | GT_MT_repsly_visit | `"18 5` | GT MT | REPSLY, VISIT, ATTENDANCE |  |  |
| `dag_gt_po_shipment_dms.py` | GT_dms_po_shipment_IT_MTD | `'39 8-22 * * *'` | GT | DMS, API, PO SHIPMENT, GT, ELT, IN TRANSIT | ELT from DMS API (single fetch) to BigQuery via Raw Staging for multiple targets with GCS Parquet backup |  |
| `dag_gt_po_tracking_dms.py` | GT_dms_po_tracking_MTD | `'43 8-22 * * *'` | GT | DMS, API, PO TRACKING, GT | ETL from DMS API (separated fetch & transform) to BigQuery with GCS Parquet backup |  |
| `dag_gt_st_dms.py` | GT_dms_sell_through_MTD | `"39 5-23` | GT | DMS, API, SELL THROUGH, GT | ETL from DMS API (Offline Sell Through) to BigQuery with GCS Parquet backup |  |
| `dag_gt_stock_analysis_history.py` | GT_stock_analysis_history_weekly | `SCHEDULE_INTERVAL` | GT | GT, STOCK, HISTORY, SNAPSHOT, EVENT-DRIVEN |  |  |
| `dag_gt_stock_distributor.py` | GT_stock_analysis_MTD | `'3 10 * * *'` | GT | GT, GSHEET, STOCK, DISTRIBUTOR | ETL for GT Raw Data Distributor Stock from Google Sheets to BigQuery |  |
| `dag_gt_store_grading.py` | GT_store_grading | `'45 7 * * *'` | GT | GT, GRADING, STORE, MART | Store/Outlet grading: manual GROUP grades + calculated STORE grades from Average Sell Through |  |
| `dag_gt_store_stock_gt_mti.py` | GT_mart_store_stock_gt_mti | `'0 3 * * *'` | GT | GT, STOCK, BIGQUERY, MEDALLION | Daily refresh of the GT/MTI stock medallion: stock_unified_raw -> stock_gt_mti_clean -> store_stock_gt_mti_weekly_t -> store_stock_notation_weekly_t |  |
| `dag_gt_tpm_reimb.py` | GT_tpm_reimbursement | `'04 12 * * *'` | GT | GT, TPM, REIMBURSEMENT |  |  |
| `dag_mt_aeon_consi.py` | MT_aeon_consi_so | `None` | MT | AEON, MT | ETL AEON consignment CSVs + PLU & Store mapping, validate, then load to BQ |  |
| `dag_mt_dim_store.py` | MT_dim_store | `None` | MT | MT, BIGQUERY, STORE, DIMENSIONAL |  |  |
| `dag_mt_fact_sales_po.py` | UNKNOWN | `None` | MT | MT, FACT, SALES |  |  |
| `dag_mt_jurnal_invoice_batch.py` | UNKNOWN | `'0 2 * * *'` | MT | ETL, PRODUCTION, JURNAL | Process Jurnal Sales Invoice Data |  |
| `dag_mt_kam_assignment.py` | MT_dim_kam | `None` | MT | KAM, BIGQUERY, DIMENSIONAL |  |  |
| `dag_mt_po_batch_spreadsheet.py` | UNKNOWN | `'50 11` | MT | ETL, MT, SELL IN, DEV | ETL process for PO from spreadsheet to BigQuery |  |
| `dag_mt_po_dms.py` | MT_sales_po_dms | `"46 7-21 * * *"` | MT | DMS, MT, SELL IN |  |  |
| `dag_mt_sadata_att.py` | UNKNOWN | `"15 6 * * *"` | MT | ETL, MT, PRODUCTION, SADATA | ETL From Mongo for Sadata Attendance |  |
| `dag_mt_sadata_oos.py` | UNKNOWN | `"20 6 * * *"` | MT | ETL, MT, PRODUCTION, SADATA | ETL From Mongo for Sadata OOS |  |
| `dag_mt_sadata_stock.py` | UNKNOWN | `"10 6 * * *"` | MT | ETL, MT, PRODUCTION, SADATA | ETL From Mongo for Sadata Stock |  |
| `dag_mt_sku_dim.py` | MT_dim_sku | `None` | MT | MT, SKU, DIMENSIONAL | Read |  |
| `dag_mt_soci_po.py` | UNKNOWN | `'00 21 * * *'` | MT | MT, SOCI | Upload Skintific + G2G data to BigQuery |  |
| `dag_mt_soci_refcode.py` | MT_soci_refcode | `"0 20 * * 2` | MT | MT, SOCIOLLA |  |  |
| `dag_mt_soci_sanctum_api.txt` | MT_soci_sanctum_scrape | `"30 7 * * *"` | MT | ETL, MT, SOCIOLLA, SELL OUT | Pipeline to process Sanctum data and load to BigQuery |  |
| `dag_mt_soci_so_csv.py` | MT_soci_so_csv | `None` | MT | SOCIOLLA, MT, SELL OUT | Process Sociolla CSVs: upload raw to GCS and load to BigQuery |  |
| `dag_mt_soci_store_sanctum.txt` | MT_soci_store_sanctum | `'0 5 * * 0'` | MT | MT, SOCIOLLA |  |  |
| `dag_mt_soci_web_scrapper.txt` | MT_soci_web_scraper_dag | `"0 5 * * *"` | MT | SOCIOLLA, MT |  |  |
| `dag_mt_target.py` | MT_fact_target | `None` | MT | TARGET, BIGQUERY, MT, DIMENSIONAL |  |  |
| `dag_mt_testing_idm.py` | MT_testing_idm_so | `None` | UNKNOWN | idm, bq, staging | IDM ETL split per data source (SellIn/SellOut/Stock/MarketShare/Dimensions) using gcp-gateway |  |
| `dag_mt_tpm_deduction.py` | MT_tpm_deduction | `'00 12 * * *'` | MT | FINANCEBP, TPM, MT |  |  |
| `dag_mt_tpm_pnl.py` | MT_tpm_pnl | `'01 12 * * *'` | MT | PNL, MT |  |  |
| `dag_mt_tpm_reimb.py` | MT_tpm_reimbursement | `'02 12 * * *'` | MT | MT, TPM, REIMBURSEMENT |  |  |
| `dag_mt_watsons_dimensional.py` | MT_watsons_dim | `None` | MT | WATSONS, BQ |  |  |
| `dag_mt_watsons_so_monthly.py` | MT_watsons_so_monthly | `None` | MT | WATSONS, SELLOUT, MONTHLY | Watsons sell-out monthly ETL: local Excel -> stage -> validate -> delete by date -> insert -> (no SP) |  |
| `dag_mt_watsons_so_weekly.py` | MT_watsons_so_weekly | `None` | MT | WATSONS, MT, SELL OUT | Watsons sell-out ETL with a single param: file_paths |  |
| `dag_powerbi_governance_daily.py` | PBI_governance_daily | `"0 3 * * *"` | Data | BI, GOVERNANCE, POWERBI, RATIONALIZATION, MULTI-TENANT | Power BI tenant inventory + usage/activity/refresh evidence for report |  |
| `dag_testing_fbp_sales.py` | TESTING_FBP_sales_order_dms | `None` | MT | DMS, MT, FBP |  |  |
| `testing.py` | MT_sales_po_dms_testing | `None` | MT | TESTING |  |  |
