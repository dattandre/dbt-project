SELECT
    *,
    now()as updated_at,
    id as visits_id
from "takehome"."raw"."visits"