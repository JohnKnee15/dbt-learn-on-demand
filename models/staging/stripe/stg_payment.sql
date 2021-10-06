with payment as(
    select
        id as payment_id,
        orderid as order_id,
        paymentmethod as payment_method,
        status,

        -- amount is stored in cents, change to dollar value
        amount/100 as amount,
        created as created_at
    
    from {{ source('stripe','payment')}}
)

select * from payment