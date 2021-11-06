SELECT 
    player_name, jersey_no, playing_club
FROM
    euro_cup_2016.soccer_country AS t
        LEFT JOIN
    euro_cup_2016.player_mast AS p ON t.country_id = p.team_id
WHERE
    country_name = 'England'
        AND posi_to_play = 'GK';