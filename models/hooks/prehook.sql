{{ config(
    materialized='table',
    pre_hook=[
        "use database VWE_S3",
        "use schema PUBLIC",
        "create or replace table hookdemo(empid int,emp_name string,mobile bigint)"
      
    ]
) }}

