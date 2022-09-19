with orders as (

  select *
  from {{ ref('ORDER_NEW') }}

), 

daily as (

  select 
       ORDER_DATE,
       ORDER_ID
  from orders

)

select * from daily