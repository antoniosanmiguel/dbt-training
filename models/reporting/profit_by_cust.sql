
with 

orders as(
    select * from {{ ref('stg_orders') }}
),

customer as (
    select * from {{ ref('raw_customer') }}
),

cust_tlv as (
    select 
        c.customerid,
        c.customername,
        sum(profit) as TLV
    from orders o
        join  customer c
        on o.customerid = c.customerid
    group by 1, 2
)

select * from cust_tlv