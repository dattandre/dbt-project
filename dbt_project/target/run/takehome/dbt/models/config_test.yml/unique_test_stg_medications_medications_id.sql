
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    select
        medications_id as value,
        count(*) as num_rows
    from "takehome"."dev_staging"."stg_medications"
    group by medications_id
    having count(*) > 1

  
  
      
    ) dbt_internal_test