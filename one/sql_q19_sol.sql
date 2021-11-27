SELECT 
    COUNT(*) AS no_gk_capts
FROM
    (SELECT DISTINCT
        player_captain
    FROM
        euro_cup_2016.match_captain AS c
    INNER JOIN euro_cup_2016.player_mast AS p ON c.player_captain = p.player_id
    WHERE
        posi_to_play = 'GK') AS gk_captains