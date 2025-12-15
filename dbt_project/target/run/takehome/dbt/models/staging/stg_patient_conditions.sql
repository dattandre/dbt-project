
  
  create view "takehome"."dev_staging"."stg_patient_conditions__dbt_tmp" as (
    SELECT
    *,
    now() as updated_at,
    id as patient_conditions_id
from "takehome"."raw"."patient_conditions"
  );
