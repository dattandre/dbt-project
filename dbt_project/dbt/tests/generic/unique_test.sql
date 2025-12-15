{% test unique_test(model, column_name) %}
    select
        {{ column_name }} as value,
        count(*) as num_rows
    from {{ model }}
    group by {{ column_name }}
    having count(*) > 1
{% endtest %}