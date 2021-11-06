SELECT 
    d.team_id, posi_to_play, count(*) as goals_scored
FROM
    euro_cup_2016.goal_details as d
inner join euro_cup_2016.player_mast  as p
using(player_id)
group by team_id, posi_to_play