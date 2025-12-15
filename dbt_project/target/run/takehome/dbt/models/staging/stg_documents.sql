
  
  create view "takehome"."dev_staging"."stg_documents__dbt_tmp" as (
    SELECT
    *,
    now() as updated_at,
    document_id
from "takehome"."raw"."documents"
  );
