
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  SELECT patient_id
FROM "takehome"."dev_staging"."stg_patients"
WHERE 
date_of_birth > current_date + 1 AND
date_of_death > current_date + 1 AND
date_activated > current_date + 1 AND 
date_deactivated > current_date + 1


UNION ALL

SELECT patient_id
FROM "takehome"."dev_staging"."stg_patient_conditions"
WHERE 
date_started > current_date + 1 AND
date_ended > current_date + 1

UNION ALL

SELECT id as patient_id
FROM "takehome"."dev_staging"."stg_visits"
WHERE 
visit_date > current_date + 1
  
  
      
    ) dbt_internal_test