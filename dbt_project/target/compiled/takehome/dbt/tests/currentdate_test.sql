SELECT patient_id
FROM "takehome"."dev_staging"."stg_patients"
WHERE 
date_of_birth > current_date  OR
date_of_death > current_date OR
date_activated > current_date OR 
date_deactivated > current_date


UNION ALL

SELECT patient_id
FROM "takehome"."dev_staging"."stg_patient_conditions"
WHERE 
date_started > current_date OR
date_ended > current_date

UNION ALL

SELECT id as patient_id
FROM "takehome"."dev_staging"."stg_visits"
WHERE 
visit_date > current_date