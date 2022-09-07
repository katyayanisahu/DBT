select CAMPAIGN_TYPE,Count(CLICKS) as TotalClicks,Count(IMPRESSIONS) as TotalImpressions from "VWE_S3"."PUBLIC"."MULTI_ATTRIBUTE"
Group by(CAMPAIGN_TYPE)
