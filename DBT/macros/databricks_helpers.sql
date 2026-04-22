{# 
    databricks_helpers.sql
    Utility macros for Databricks/Delta Lake post-hooks.
    Change: update ownership principal in change_ownership() before use.
#}

{% macro optimize_table(table) %}
    {#
        Runs OPTIMIZE on a Delta table in Databricks.
        Example with Z-ORDER:
        OPTIMIZE {{ table }} ZORDER BY (id, created_at)
    #}
    OPTIMIZE {{ table }}
{% endmacro %}

{% macro change_ownership(table) %}
    {#
        Changes ownership of a table in Unity Catalog.
        Replace 'your_owner' with the desired principal.
        Example: ALTER TABLE {{ table }} SET OWNER TO `data-team@company.com`
    #}
    ALTER TABLE {{ table }} SET OWNER TO `your_owner`
{% endmacro %}
