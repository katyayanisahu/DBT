select 
  ORDER_DATE,
  sum(AMOUNT) as daily_revenue
from VWE_S3.PUBLIC.REVENUE_SNAP
having not(daily_revenue >= 0)