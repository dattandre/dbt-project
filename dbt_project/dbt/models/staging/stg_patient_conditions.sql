SELECT
    *,
    now() as updated_at,
    id as patient_conditions_id
from {{ source( 'test_data', 'patient_conditions' ) }}