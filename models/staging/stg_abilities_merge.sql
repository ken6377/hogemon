SELECT
    _airbyte_pokemon_hashid,
    abilities_slot,
    is_hidden,
    abilities_name

FROM
    {{ref('src_abilities')}}
LEFT OUTER JOIN
    {{ref('src_abilities_ability')}}
ON
    src_abilities._airbyte_abilities_hashid =
    src_abilities_ability._airbyte_abilities_hashid