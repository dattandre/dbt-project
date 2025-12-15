SELECT patient_id
FROM {{ ref('stg_med_admins') }}
WHERE 
date_stopped < date_started

UNION ALL

SELECT patient_id
FROM {{ ref('stg_patient_conditions') }}
WHERE 
date_ended < date_started

UNION ALL

SELECT patient_id
FROM {{ ref('stg_patients') }}
WHERE 
date_deactivated < date_activated
