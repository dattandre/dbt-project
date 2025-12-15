SELECT
    *,
    now() as updated_at,
    id as medications_id
from "takehome"."raw"."medications"