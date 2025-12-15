/*
    Patients Per Month

    This model should give the total number of active patients by month.

    Feel free to include additional columns with other information, but make sure to summarize by month.

*/


WITH patient_dates AS (
    SELECT 
        patient_id,
        date_activated,
        date_deactivated
    FROM "takehome"."dev_staging"."stg_patients" ),

bounds AS (
    SELECT
        MIN(date_activated)::date AS min_start,
        MAX(COALESCE(date_deactivated, current_date))::date AS max_end
    FROM patient_dates
),


month_spine AS (
    SELECT
        date_trunc('month', gs) AS month_start
    FROM bounds,
         generate_series(min_start, max_end, INTERVAL 1 month) AS t(gs)
),


patient_months AS (
    SELECT
        m.patient_id,
        ms.month_start
    FROM patient_dates m
    JOIN month_spine ms
      ON ms.month_start >= date_trunc('month', m.date_activated)
     AND ms.month_start <= date_trunc(
           'month',
           COALESCE(m.date_deactivated, current_date)
         )
),

final AS (
    SELECT
        month_start,
        COUNT(DISTINCT patient_id) AS patient_count
    FROM patient_months
    GROUP BY month_start
)

SELECT
    month_start,
    patient_count
FROM final
ORDER BY month_start