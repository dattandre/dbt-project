
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    select child.patient_condition_id
    from "takehome"."dev_staging"."stg_visits" as child
    left join "takehome"."dev_staging"."stg_patient_conditions" as parent
        on child.patient_condition_id = parent.patient_condition_id
    where parent.patient_condition_id is null

  
  
      
    ) dbt_internal_test