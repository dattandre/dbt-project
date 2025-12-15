SELECT
    *,
    now() as updated_at,
    patient_id as patient_id
from {{ source( 'test_data', 'med_admins' ) }}