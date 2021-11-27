SELECT referee_id, max(booking_count) as booking_count
FROM
(
SELECT 
    referee_id, count(match_no) as booking_count
FROM
    euro_cup_2016.player_booked
left join euro_cup_2016.match_mast
using(match_no)
group by referee_id
order by booking_count desc) as booking