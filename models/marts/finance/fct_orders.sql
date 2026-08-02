select
    p.id as payment_id,
    o.id as order_id,
    o.user_id as customer_id,
    o.order_date,
    p.amount
from {{ source('stripe', 'payment') }} p
left join {{ source('jaffle_shop', 'orders') }} o on p.orderid = o.id
