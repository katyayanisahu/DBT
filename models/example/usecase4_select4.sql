select SOURCE,Count(SOURCE) as total_source from VWE_S3.PUBLIC.SENTIMENTAL_FINAL 
Group by(SOURCE)