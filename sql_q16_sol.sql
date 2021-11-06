SELECT 
    referee_id, venue_id, COUNT(*) AS matches
FROM
    euro_cup_2016.match_mast
GROUP BY referee_id , venue_id