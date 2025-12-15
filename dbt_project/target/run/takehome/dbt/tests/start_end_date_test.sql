
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  SELECT patient_id
FROM "takehome"."dev_staging"."stg_med_admins"
WHERE 
date_stopped < date_started

UNION ALL

SELECT patient_id
FROM "takehome"."dev_staging"."stg_patient_conditions"
WHERE 
date_ended < date_started

UNION ALL

SELECT patient_id
FROM "takehome"."dev_staging"."stg_patients"
WHERE 
date_deactivated < date_activated
  
  
      
    ) dbt_internal_test