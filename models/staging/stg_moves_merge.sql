SELECT
    _airbyte_pokemon_hashid,
    level_learned_at,
    version_name,
    learn_method_name,
    move_name
FROM
    {{ref('src_moves_version_group_details')}}
LEFT OUTER JOIN
    {{ref('src_moves_version_group_details_version_group')}}
ON
    src_moves_version_group_details._airbyte_version_group_details_hashid =
    src_moves_version_group_details_version_group._airbyte_version_group_details_hashid
LEFT OUTER JOIN
    {{ref('src_moves_version_group_details_move_learn_method')}}
ON
    src_moves_version_group_details._airbyte_version_group_details_hashid =
    src_moves_version_group_details_move_learn_method._airbyte_version_group_details_hashid
LEFT OUTER JOIN
    {{ref('src_moves_move')}}
ON
    src_moves_version_group_details._airbyte_moves_hashid =
    src_moves_move._airbyte_moves_hashid
LEFT OUTER JOIN
    {{ref('src_moves')}}
ON
    src_moves_version_group_details._airbyte_moves_hashid =
    src_moves._airbyte_moves_hashid
