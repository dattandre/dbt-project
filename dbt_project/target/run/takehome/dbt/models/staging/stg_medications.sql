
  
  create view "takehome"."dev_staging"."stg_medications__dbt_tmp" as (
    SELECT
    *,
    now() as updated_at,
    id as medications_id
from "takehome"."raw"."medications"
  );
