USE cd;
/*Составьте список объектов вместе с их общим доходом. Выходная таблица должна состоять из названия объекта и доходов, 
отсортированных по доходам.*/
SELECT facility, SUM(IF(b.memid = 0, f.guestcost * b.slots, f.membercost * b.slots)) AS SUM from facilities f
LEFT JOIN bookings b ON b.facid = f.facid GROUP BY f.facility ORDER BY SUM DESC;