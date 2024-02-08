with customer as (
    select  * from 
    {{ source('ecommerce', 'customer') }}

)

select * from customer