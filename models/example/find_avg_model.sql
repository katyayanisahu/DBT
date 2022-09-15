
select CUSTOMER_NAME, {{find_avg('RATING',4)}} as AVG_RATING from "VWE_S3"."PUBLIC"."REVIEW_NEW" group by CUSTOMER_NAME