
    select child.condition_id
    from "takehome"."dev_staging"."stg_orders" as child
    left join "takehome"."dev_staging"."stg_conditions" as parent
        on child.condition_id = parent.conditions_id
    where parent.conditions_id is null
