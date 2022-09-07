select EVENTS,Count(CONVERSION_STATUS) as TotalConversion_Status from "VWE_S3"."PUBLIC"."LATEST_CONVERSION" 
where EVENT_YEAR=2022 group by(EVENTS)
