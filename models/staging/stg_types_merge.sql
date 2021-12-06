SELECT
    _airbyte_pokemon_hashid,
    types_slot,
    types_name
FROM
    {{ref('src_types')}}
LEFT OUTER JOIN
    {{ref('src_types_type')}}
ON
    src_types._airbyte_types_hashid =
    src_types_type._airbyte_types_hashid