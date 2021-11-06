SELECT 
    play_schedule, play_half, COUNT(*) as no_substitutions
FROM
    euro_cup_2016.player_in_out
WHERE
    in_out = 'O'
GROUP BY play_schedule , play_half;