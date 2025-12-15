SELECT
    *,
    now() as updated_at,
    id as conditions_id
from "takehome"."raw"."conditions"