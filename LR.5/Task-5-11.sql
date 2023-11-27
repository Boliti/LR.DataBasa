/* Составьте список общего количества часов, забронированных на один объект, помня, что интервал длится полчаса. 
Выходная таблица должна состоять из идентификатора объекта, имени и забронированных часов, отсортированных по идентификатору объекта. 
Попробуйте отформатировать часы с точностью до двух десятичных знаков.*/
SELECT b.facid, f.facility, ROUND(SUM(b.slots) / 2, 2) AS 'Часы' FROM bookings b
LEFT JOIN facilities f ON b.facid = f.facid GROUP BY b.facid ORDER BY b.facid;