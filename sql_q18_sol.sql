select max(card_no)
from (
SELECT 
    match_no,
    row_number() over(partition by match_no) as card_no
FROM
    euro_cup_2016.player_booked) as booked