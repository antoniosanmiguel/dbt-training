{{
    config(
        materialized='table'
    )
}}

with orders as (
    select  * from 
    RAW.GLOBALMART.ORDERS
)

select * from orders