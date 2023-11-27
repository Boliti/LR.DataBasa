USE cd;
/* Рассчитайте количество аренд каждого из объектов клуба. */
SELECT facilities.facid as Facid,
facilities.facility as Facility,
SUM(bookings.slots) AS rec
FROM facilities
JOIN bookings ON bookings.facid = facilities.facid
GROUP BY facilities.facid, facilities.facility;