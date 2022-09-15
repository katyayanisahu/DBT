{{ config(materialized='table') }}
 
select * from  VWE_S3.PUBLIC.PREMIUM_CUSTOMER
where VWE_S3.PUBLIC.PREMIUM_CUSTOMER.CUSTOMER_NAME = 'JPMorgan Chase'