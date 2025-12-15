relationship_test.sql

{% test relationship_test(model, column_name, parent_model, parent_field) %}
    select child.{{ column_name }}
    from {{ model }} as child
    left join {{ parent_model }} as parent
        on child.{{ column_name }} = parent.{{ parent_field }}
    where parent.{{ parent_field }} is null
{% endtest %}