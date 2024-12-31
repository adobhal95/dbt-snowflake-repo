with customers as (
    select * from {{ref("stg_customers")}}
),
orders as (
    select * from {{ref("stg_orders")}}
),
payments as (
    select * from {{ref("stg_payments")}}
),
customer_level_details as (
    select
    c.customer_id, 
    c.first_name,
    c.last_name,
    min(o.order_id) as first_order_id,
    max(o.order_id) as most_recent_order_id
    from customers c
    left join orders o 
    on c.customer_id = o.customer_id
    group by 1,2,3
    order by 1
),
payment_level_details as (
    select
    o.customer_id,
    sum(p.sales_amount) as total_sales
    from payments p
    left join orders o
    on p.order_id = p.order_id
    group by 1
)
select * from payment_level_details
