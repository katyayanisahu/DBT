{{ config(materialized='incremental' ,unique_key='emp_id') }}

select
      emp_id,
      emp_name,
      date_trunc('day', order_date) as date_day,
      salary
 
 from  VWE_S3.PUBLIC.EMPLOYEE

{% if is_incremental() %}
  -- this filter will only be applied on an incremental run
  
  where date_day >= (select max(date_day) from {{ this }})
{% endif %}