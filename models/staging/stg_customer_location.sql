with source as (

    {#-
    Normally we would select from the table here, but we are using seeds to load
    our data in this project
    #}
    select * from {{ ref('raw_customerloc') }}

),

renamed as (

    select
        customer_id,
        region as location
    from source

)

select * from renamed
