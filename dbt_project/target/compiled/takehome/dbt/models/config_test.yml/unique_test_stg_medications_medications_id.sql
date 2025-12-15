
    select
        medications_id as value,
        count(*) as num_rows
    from "takehome"."dev_staging"."stg_medications"
    group by medications_id
    having count(*) > 1
