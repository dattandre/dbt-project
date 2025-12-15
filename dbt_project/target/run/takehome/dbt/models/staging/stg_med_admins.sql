
  
  create view "takehome"."dev_staging"."stg_med_admins__dbt_tmp" as (
    SELECT
    *,
    now() as updated_at,
    patient_id as patient_id
from "takehome"."raw"."med_admins"
  );
