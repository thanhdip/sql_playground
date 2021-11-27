SELECT 
    p.player_name, p.jersey_no
FROM
    euro_cup_2016.match_details as d
    inner join euro_cup_2016.player_mast as p
   on d.player_gk = p.player_id
WHERE
    play_stage = 'G'
        AND d.team_id IN (SELECT 
            country_id
        FROM
            euro_cup_2016.soccer_country
        WHERE
            country_name = 'Germany')
group by player_gk