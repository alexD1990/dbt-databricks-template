{{ config(
    materialized='view',
    tags=['dbt_test']
) }}
-- DBT test: confirms that dbt compiles and runs against Databricks.
-- Can be deleted once the project is set up.
select 1 as dbt_test
