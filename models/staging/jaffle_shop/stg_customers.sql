with customers as ( -- Renaming ID column as customer_id, using the other columns in DB.

    select
        id as customer_id,
        first_name,
        last_name
    from {{ source('jaffle_shop', 'customers')}}

)

select * from customers