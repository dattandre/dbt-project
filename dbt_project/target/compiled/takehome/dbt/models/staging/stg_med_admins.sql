SELECT
    *,
    now() as updated_at,
    patient_id as patient_id
from "takehome"."raw"."med_admins"