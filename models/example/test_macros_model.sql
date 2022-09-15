select CUSTOMER_NAME, {{test_macros('RATING')}} as RATING from "VWE_S3"."PUBLIC"."REVIEW_NEW"
limit 100000