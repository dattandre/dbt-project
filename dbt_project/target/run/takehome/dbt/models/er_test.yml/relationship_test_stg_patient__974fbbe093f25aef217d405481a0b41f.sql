
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    select child.condition_id
    from "takehome"."dev_staging"."stg_patient_conditions" as child
    left join "takehome"."dev_staging"."stg_conditions" as parent
        on child.condition_id = parent.conditions_id
    where parent.conditions_id is null

  
  
      
    ) dbt_internal_test