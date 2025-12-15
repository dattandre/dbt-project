
  
  create view "takehome"."dev_staging"."stg_conditions__dbt_tmp" as (
    SELECT
    *,
    now() as updated_at,
    id as conditions_id
from "takehome"."raw"."conditions"
  );
