SELECT 
    *
FROM
    (SELECT 
        venue_id
    FROM
        euro_cup_2016.match_mast
    LEFT JOIN euro_cup_2016.penalty_shootout USING (match_no)
    WHERE
        kick_id IS NOT NULL
    GROUP BY venue_id) pen_venues
        INNER JOIN
    euro_cup_2016.soccer_venue USING (venue_id);