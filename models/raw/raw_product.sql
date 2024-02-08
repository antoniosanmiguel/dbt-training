{{
    config(
        materialized='table'
    )
}}

with product as (
    select  * from 
    RAW.GLOBALMART.PRODUCT
)

select * from product