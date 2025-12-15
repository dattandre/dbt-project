
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    select child.visit_id
    from "takehome"."dev_staging"."stg_documents" as child
    left join "takehome"."dev_staging"."stg_visits" as parent
        on child.visit_id = parent.visits_id
    where parent.visits_id is null

  
  
      
    ) dbt_internal_test