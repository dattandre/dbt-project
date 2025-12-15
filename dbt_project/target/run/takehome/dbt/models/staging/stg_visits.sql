
  
  create view "takehome"."dev_staging"."stg_visits__dbt_tmp" as (
    SELECT
    *,
    now()as updated_at,
    id as visits_id
from "takehome"."raw"."visits"
  );
