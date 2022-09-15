
select CUSTOMER_NAME,{{find_sum('QUANTITY')}} as total_quantity,{{find_sum('"Sales_Amount($)"')}} as overall_sales from "VWE_S3"."PUBLIC"."WHOLESALE"
GROUP BY(CUSTOMER_NAME)

