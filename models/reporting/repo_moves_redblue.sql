{{ config(
    materialized='table'
)}}

SELECT
    level_learned_at,
    move_name,
    learn_method_name,
    version_name
FROM
    {{ref('stg_moves_merge')}}
WHERE
    version_name = 'red-blue'
ORDER BY
    level_learned_at
