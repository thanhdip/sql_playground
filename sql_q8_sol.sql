SELECT 
    d.match_no, team_id, c.country_name
FROM
    euro_cup_2016.match_details AS d
        LEFT JOIN
    euro_cup_2016.soccer_country AS c ON d.team_id = c.country_id
WHERE
    d.match_no IN (SELECT 
            match_no
        FROM
            (SELECT 
                match_no, MAX(shot_count) AS shot_count
            FROM
                (SELECT 
                match_no, COUNT(*) AS shot_count
            FROM
                euro_cup_2016.penalty_shootout
            GROUP BY match_no) AS max_match) AS fin_match)
	