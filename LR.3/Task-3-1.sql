USE cd;
SELECT starttime FROM bookings 
JOIN members ON bookings.memid = members.memid 
WHERE members.surname = "Farrell" AND members.firstname = "David";