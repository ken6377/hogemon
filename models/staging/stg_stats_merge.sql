SELECT
    _airbyte_pokemon_hashid,
    stat_name,
    effort,
    base_stat,
FROM
    {{ref('src_stats')}}
LEFT OUTER JOIN
    {{ref('src_stats_stat')}}
ON
    src_stats._airbyte_stats_hashid =
    src_stats_stat._airbyte_stats_hashid