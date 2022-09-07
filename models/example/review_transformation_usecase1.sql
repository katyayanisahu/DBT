{{ config(
    materialized='table',
    post_hook=[
      "update {{this}} 
set REMARKS=' Smell is good'  
where STATUS='Unhappy' and RATING=1",

"update {{this}}
set REMARKS='Taste is good' 
where STATUS='Unhappy' and RATING=2"

    ]
) }}

select * from {{ref('join_review_new')}}