
    select last_name
    from "takehome"."dev_staging"."stg_patients"
    where TRIM(last_name) = ''
