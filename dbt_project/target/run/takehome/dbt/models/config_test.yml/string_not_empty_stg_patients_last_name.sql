
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    select last_name
    from "takehome"."dev_staging"."stg_patients"
    where TRIM(last_name) = ''

  
  
      
    ) dbt_internal_test