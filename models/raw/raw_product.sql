with product as (
    select  * from 
    {{ source('ecommerce', 'product') }}
)

select * from product