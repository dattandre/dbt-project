
  
  create view "takehome"."dev_staging"."stg_patient_conditios__dbt_tmp" as (
    SELECT
    *,
    null as updated_at,
    id as patient_conditions_id
from "takehome"."raw"."patient_conditions"
  );
