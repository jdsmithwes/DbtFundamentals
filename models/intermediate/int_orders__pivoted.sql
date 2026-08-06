with payments as (
    select * from {{ref ('stg_stripe__payment')}}
),
pivoted as(
    select
        order_id,

        {% set payment_methods = ['bank_transfer', 'credit_card', 'coupon', 'gift_card'] %}
        {% for method in payment_methods %}
            sum(case when payment_method = '{{ method }}' then amount else 0 end) as {{ method }}_amount,

        {% endfor %}

    from payments
    group by 1
)
select * from pivoted