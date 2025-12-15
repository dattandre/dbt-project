
    select first_name
    from "takehome"."dev_staging"."stg_patients"
    where TRIM(first_name) = ''
