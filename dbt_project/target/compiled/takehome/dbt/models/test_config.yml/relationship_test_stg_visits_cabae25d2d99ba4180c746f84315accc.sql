
    select child.patient_condition_id
    from "takehome"."dev_staging"."stg_visits" as child
    left join "takehome"."dev_staging"."stg_patient_conditions" as parent
        on child.patient_condition_id = parent.patient_conditions_id
    where parent.patient_conditions_id is null
