{% snapshot REVENUE_SNAPSHOT %}
{{
    config(
      target_database='VWE_S3',
      target_schema='snapshots',
      unique_key='ORDER_DATE',

      strategy='check',
      check_cols=['daily_revenue'],
    )
}}
select 
  order_date,
  sum(amount) as daily_revenue
from {{ source('PUBLIC', 'REVENUE_SNAP') }}
group by 1
{% endsnapshot %}