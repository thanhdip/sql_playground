SELECT 
    distinct player_id
FROM
    euro_cup_2016.player_in_out
WHERE
    play_schedule = 'NT'
    and play_half = 1;