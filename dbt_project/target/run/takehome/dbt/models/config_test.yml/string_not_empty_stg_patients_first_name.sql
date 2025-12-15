
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    select first_name
    from "takehome"."dev_staging"."stg_patients"
    where TRIM(first_name) = ''

  
  
      
    ) dbt_internal_test