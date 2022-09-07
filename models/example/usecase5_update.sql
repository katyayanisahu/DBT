{{ config(
    materialized='table',
    post_hook=[
        "CREATE OR REPLACE TABLE VWE_S3.PUBLIC.PREMIUM_CUSTOMER2 AS
select * from  VWE_S3.PUBLIC.PREMIUM_CUSTOMER where MEMBERSHIP_STATUS ='Active'",
  "alter table VWE_S3.PUBLIC.PREMIUM_CUSTOMER2 add MEMBERSHIP_PLAN varchar(90)",

 "update VWE_S3.PUBLIC.PREMIUM_CUSTOMER2 set MEMBERSHIP_PLAN =
          case 
          when MEMBERSHIP_STATUS = 'Active' and TENURE_IN_MONTHS >=36 then 'Gold'
          when MEMBERSHIP_STATUS = 'Active' and TENURE_IN_MONTHS >=19 And TENURE_IN_MONTHS <36 then 'Silver'
          when  MEMBERSHIP_STATUS = 'Active' and TENURE_IN_MONTHS <=18 then 'Bronze'
          end"
          ]
)}}

 select * from VWE_S3.PUBLIC.PREMIUM_CUSTOMER2         
