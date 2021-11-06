SELECT 
    country_id, COUNT(*) AS no_refs
FROM
    euro_cup_2016.asst_referee_mast
GROUP BY country_id
ORDER BY no_refs DESC