{{
    config(
        materialized='table'
    )
}}

with products as (
    select  * from 
    RAW.GLOBALMART.PRODUCT
)

select * from products