SELECT
    *,
    now()as updated_at,
    id as visits_id
from {{ source( 'test_data', 'visits' ) }}