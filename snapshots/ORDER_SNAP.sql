{% snapshot ORDER_SNAPSHOT %}
{{
    config(
      target_database='VWE_S3',
      target_schema='snapshots',
      unique_key='ORDER_ID',

      strategy='timestamp',
      updated_at='UPDATED_AT',
    )
}}
select * from {{ source('PUBLIC', 'ORDER_SNAP') }}
{% endsnapshot %}