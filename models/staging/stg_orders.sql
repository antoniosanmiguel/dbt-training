
with orders as (
    select * from
    {{ ref('raw_orders') }}
)

select 

    *,
    ORDERSELLINGPRICE - ORDERCOSTPRICE as profit
    
 from orders