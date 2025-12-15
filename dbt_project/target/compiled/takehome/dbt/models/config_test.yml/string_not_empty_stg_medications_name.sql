
    select name
    from "takehome"."dev_staging"."stg_medications"
    where TRIM(name) = ''
