
    select child.visit_id
    from "takehome"."dev_staging"."stg_documents" as child
    left join "takehome"."dev_staging"."stg_visits" as parent
        on child.visit_id = parent.visits_id
    where parent.visits_id is null
