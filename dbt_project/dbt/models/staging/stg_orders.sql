SELECT
    *,
    now() as updated_at,
    id as orders_id
from {{ source( 'test_data', 'orders' ) }}