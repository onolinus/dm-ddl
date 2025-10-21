# Data DDL – Multi-Platform, Multi-Env, Migration-Based

This repo manages DDL for MSSQL, Hologres, ODPS (MaxCompute), and Trino with **migration-based** workflows using **GitHub Actions**.

## Environments & Mapping
- `dev` branch → **sit/bau** environment
- `main` branch → **bau/prod** (production) environment
- ODPS uses a single project (`wsbfi_3`) without sit/bau split.

## Domains (examples included)
- onboarding, collection, finance, bpm, crm

## How it works
1. Add migrations under the right platform/env/domain folder with filename:
   `YYYY_MM_DD_HHMMSS__short_description.sql`
2. Open a PR → **validate_sql.yml** lints and blocks dangerous patterns.
3. Merge → Platform-specific **deploy_*.yml**:
   - creates per-domain `schema_version__<domain>` table if needed
   - applies **pending** migrations only
   - records filename + checksum + actor

## Required Secret
Create repository secret **`DB_CONFIG_JSON`** with structure like `DB_CONFIG_JSON.example` in this repo.

## Notes
- MSSQL table names follow `STG_<SourceSystem>_<base>` (e.g., `STG_BravoLOS_bpm_underwriting_review_summary`).
- Hologres tables should be fully qualified with schema `bravo_sit` / `bravo_bau`.
- ODPS tables use `<base>_odps` in project `wsbfi_3`.
- Trino uses `hive.<schema>.<table>` with schema `raw_data_dev_cloud` (dev) / `raw_data_prod_cloud` (prod).
