
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    select name
    from "takehome"."dev_staging"."stg_medications"
    where TRIM(name) = ''

  
  
      
    ) dbt_internal_test