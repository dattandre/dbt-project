
  
  create view "takehome"."dev_staging"."stg_patients__dbt_tmp" as (
    SELECT
    *,
    now() as updated_at,
    id as patient_id
from "takehome"."raw"."patients"
  );
