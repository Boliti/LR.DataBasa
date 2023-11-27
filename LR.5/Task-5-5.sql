USE cd;
/* Рассчитайте количество аренд каждого из объектов клуба за сентябрь 2012 года. */
SELECT facilities.facid as Facid,
facilities.facility as Facility,
SUM(bookings.slots) AS rec
FROM facilities
JOIN bookings ON bookings.facid = facilities.facid
WHERE DATE(bookings.starttime) >= '2012-09-01' AND DATE(bookings.starttime) <= '2012-09-30'
GROUP BY facilities.facid, facilities.facility;