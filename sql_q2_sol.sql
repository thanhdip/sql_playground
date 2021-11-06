SELECT count(*) 
FROM euro_cup_2016.match_mast
WHERE results = 'WIN'
AND decided_by = 'P';