

SELECT
    *,
    now() as updated_at,
    id as conditions_id
from {{ source( 'test_data', 'conditions' ) }}



