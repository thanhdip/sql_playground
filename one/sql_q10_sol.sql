SELECT 
    *
FROM
    euro_cup_2016.soccer_country AS t
        LEFT JOIN
    euro_cup_2016.player_mast AS p ON t.country_id = p.team_id
WHERE
    country_name = 'England';