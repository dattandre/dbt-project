
    select
        conditions_id as value,
        count(*) as num_rows
    from "takehome"."dev_staging"."stg_conditions"
    group by conditions_id
    having count(*) > 1
