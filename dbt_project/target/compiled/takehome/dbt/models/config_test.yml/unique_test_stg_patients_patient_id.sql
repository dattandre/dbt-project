
    select
        patient_id as value,
        count(*) as num_rows
    from "takehome"."dev_staging"."stg_patients"
    group by patient_id
    having count(*) > 1
