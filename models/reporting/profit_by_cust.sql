
with 

orders as(
    select * from {{ ref('stg_orders') }}
),

customer as (
    select * from {{ ref('raw_customer') }}
),

cust_tlv as (
    select 
        customerid,
        sum(profit) as TLV
    from orders
    group by 1
),

cust_name as (
    select 

        c.customerid,
        c.customername,
        ct.tlv

    from cust_tlv ct
        join  customer c
        on ct.customerid = c.customerid
)

select * from cust_name