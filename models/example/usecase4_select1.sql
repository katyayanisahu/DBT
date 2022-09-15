select CHANNEL,Count(CLICKS) as TotalClicks,Count(IMPRESSIONS) as TotalCount from  "VWE_S3"."PUBLIC"."MULTI_ATTRIBUTE"
Group by(CHANNEL)
