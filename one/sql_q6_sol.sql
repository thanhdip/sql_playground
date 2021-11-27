SELECT 
    COUNT(*)
FROM
    (SELECT 
        match_no, MAX(goal_score) - MIN(goal_score) AS won_by
    FROM
        euro_cup_2016.match_details
    WHERE
        NOT decided_by = 'P'
    GROUP BY match_no) AS won
WHERE
    won_by = 1;