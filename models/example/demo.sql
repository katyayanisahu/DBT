select CUSTOMER_NAME ,GENDER, {{multiply_by10('RATING') }} as Ratings from VWE_S3.PUBLIC.REVIEW_NEW

