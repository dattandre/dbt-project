/*

    Medications per Month

    This model should give the total number of patients actively taking each medication

*/


WITH med_admin AS (
    SELECT
        patient_id,
        medication_id,
        date_started,
        date_stopped
    FROM "takehome"."dev_staging"."stg_med_admins" ),

bounds AS (
    SELECT
        MIN(date_started)::date AS min_start,
        MAX(COALESCE(date_stopped, current_date))::date AS max_end
    FROM med_admin
),


month_spine AS (
    SELECT
        date_trunc('month', gs) AS month_start
    FROM bounds,
         generate_series(min_start, max_end, INTERVAL 1 month) AS t(gs)
),


patient_med_months AS (
    SELECT
        m.patient_id,
        m.medication_id,
        ms.month_start
    FROM med_admin m
    JOIN month_spine ms
      ON ms.month_start >= date_trunc('month', m.date_started)
     AND ms.month_start <= date_trunc(
           'month',
           COALESCE(m.date_stopped, current_date)
         )
),

final AS (
    SELECT
        month_start,
        medication_id,
        COUNT(DISTINCT patient_id) AS patient_count
    FROM patient_med_months
    GROUP BY month_start, medication_id
)

SELECT
    month_start,
    medication_id,
    patient_count
FROM final
ORDER BY month_start, medication_id