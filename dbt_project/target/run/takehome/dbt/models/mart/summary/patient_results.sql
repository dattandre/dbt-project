
  
  create view "takehome"."dev"."patient_results__dbt_tmp" as (
    with patien_cond as (
    select distinct pa.patient_id, pa.first_name, pa.last_name, pacon.condition_id, con.name
    from "takehome"."dev_staging"."stg_patients"  as pa
    inner join "takehome"."dev_staging"."stg_patient_conditions"  as pacon
    on pa.patient_id = pacon.patient_id
    inner join "takehome"."dev_staging"."stg_conditions"  as con
    on pacon.condition_id = con.conditions_id),

patient_result as (
    select re.test_id, re.patient_id, pa.first_name, pa.last_name, pa.condition_id, pa.name, re.component_name, re.result_year, re.result_month, re.result_day, re.component_reflo, re.component_refhi, re.result_value
    from "takehome"."dev"."lab_results_json"  as re
    inner join patien_cond as pa
    on re.patient_id = pa.patient_id)

select *
from patient_result
order by patient_id
  );
