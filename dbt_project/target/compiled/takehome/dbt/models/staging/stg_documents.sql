SELECT
    *,
    now() as updated_at,
    document_id
from "takehome"."raw"."documents"