
  
  create view "takehome"."dev_staging"."read_json_files__dbt_tmp" as (
    select *
from read_json_auto('src_data/lab_results/lab_*.json')
  );
