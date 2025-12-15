SELECT
    *,
    now() as updated_at,
    id as patient_conditions_id
from "takehome"."raw"."patient_conditions"