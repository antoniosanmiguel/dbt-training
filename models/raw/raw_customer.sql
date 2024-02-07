{{
    config(
        materialized='table'
    )
}}

with customer as (
    select  * from 
    RAW.GLOBALMART.CUSTOMER
)

select * from customer