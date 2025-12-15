{{ config(
    materialized = 'table'
) }}

SELECT
      testId AS test_id,
      orderId AS order_id,
      patientId AS patient_id,
      resultDate AS result_date,
      year(resultDate) AS result_year,
      month(resultDate) AS result_month,
      day(resultDate) AS result_day,
      r.component.componentName AS component_name,
      r.component.componentRefHi AS component_refhi,
      r.component.componentRefLo AS component_reflo,
      r.component.componentUnits AS component_units,
      r.component.resultValue AS result_value
  FROM {{ ref( 'read_json_files' ) }} 
  CROSS JOIN UNNEST(testResults) AS r(component)