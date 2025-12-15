
    select child.patient_id
    from "takehome"."dev_staging"."stg_patient_conditions" as child
    left join "takehome"."dev_staging"."stg_patients" as parent
        on child.patient_id = parent.patient_id
    where parent.patient_id is null
