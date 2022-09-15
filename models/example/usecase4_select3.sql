select SOURCE,Count(SOURCE) as TotalSource from "VWE_S3"."PUBLIC"."SENTIMENTAL_FINAL" 
Group by(SOURCE)
