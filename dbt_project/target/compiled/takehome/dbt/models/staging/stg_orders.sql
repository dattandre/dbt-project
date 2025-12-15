SELECT
    *,
    now() as updated_at,
    id as orders_id
from "takehome"."raw"."orders"