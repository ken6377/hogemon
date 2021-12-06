SELECT
    _airbyte_pokemon_hashid,
    game_index,
    indices_version_name
FROM
    {{ref('src_game_indices')}}
LEFT OUTER JOIN
    {{ref('src_game_indices_version')}}
ON
    src_game_indices._airbyte_game_indices_hashid =
    src_game_indices_version._airbyte_game_indices_hashid