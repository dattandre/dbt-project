
  
  create view "takehome"."dev_staging"."stg_orders__dbt_tmp" as (
    SELECT
    *,
    now() as updated_at,
    id as orders_id
from "takehome"."raw"."orders"
  );
