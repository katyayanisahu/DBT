{{config(materialized='table',schema='katyayani')}}

select
      ORDER_DATE as date_day,
    count(distinct ORDER_ID) as total_orders,
   count(distinct CUSTOMER_ID) as daily_users

 from  VWE_S3.PUBLIC.REVIEW_NEW
group by 1

--select * from VWE_S3.PUBLIC.REVIEW_NEW