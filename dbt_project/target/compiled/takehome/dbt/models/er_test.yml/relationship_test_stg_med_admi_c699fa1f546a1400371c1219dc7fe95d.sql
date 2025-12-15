
    select child.medication_id
    from "takehome"."dev_staging"."stg_med_admins" as child
    left join "takehome"."dev_staging"."stg_medications" as parent
        on child.medication_id = parent.medications_id
    where parent.medications_id is null
