
with 

orders as(
    select * from {{ ref('stg_orders') }}
),

product as (
    select * from {{ ref('raw_product') }}  -- Problema productids duplicados
)

select 
    p.productid,
    p.productname,
    sum(profit) as product_profit
from orders o 
    join product p 
    on o.productid = p.productid
group by 1, 2
order by 1


