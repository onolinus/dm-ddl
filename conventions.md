# Conventions

## Filenames
`YYYY_MM_DD_HHMMSS__short_description.sql` (monotonic timestamps, concise description)

## One change per migration
Do not edit old migrations. Rollbacks are new migrations.

## Naming
- Lowercase, `snake_case` table & column names.
- MSSQL staging tables: `STG_<SourceSystem>_<base>`.
- Hologres: `bravo_sit.<base>` or `bravo_bau.<base>`.
- ODPS: `<base>_odps` in project `wsbfi_3`.
- Trino: `hive.raw_data_dev_cloud.<base>` (dev) / `hive.raw_data_prod_cloud.<base>` (prod).

## Metadata columns (recommended)
`created_at`, `updated_at`, `is_deleted`.

## Primary Keys
Each table should define a primary key (no nullable PKs).

## Dangerous patterns (blocked in CI)
- DROP TABLE
- TRUNCATE TABLE
- ALTER TABLE ... DROP COLUMN
- SELECT *

## PII / PDP
Mark & mask sensitive fields appropriately (follow org policy).
