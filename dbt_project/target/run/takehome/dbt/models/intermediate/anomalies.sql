
  
    
    

    create  table
      "takehome"."dev_bronze"."anomalies__dbt_tmp"
  
    as (
      select 
patient_id, condition_id, name, result_year, result_month, count(*) as num_anomalies
from "takehome"."dev"."patient_results"
where result_value not between component_reflo and component_refhi
group by 
patient_id, condition_id, name, result_year, result_month, 
order by patient_id, condition_id, result_year, result_month
    );
  
  