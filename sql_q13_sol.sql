SELECT 
    p.player_id, p.player_name, d.team_id
FROM
    euro_cup_2016.goal_details AS d
        INNER JOIN
    euro_cup_2016.player_mast AS p USING (player_id)
WHERE
    posi_to_play = 'DF'
group by p.player_id, p.player_name, d.team_id