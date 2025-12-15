SELECT
    *,
    now() as updated_at,
    document_id
from {{ source( 'test_data', 'documents' ) }}