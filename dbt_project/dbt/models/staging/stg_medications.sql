SELECT
    *,
    now() as updated_at,
    id as medications_id
from {{ source( 'test_data', 'medications' ) }}