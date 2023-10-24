USE cd;
/* Выберите ФИО (== имя + фамилия) всех, кто покупал корты 1 и 2. */
SELECT DISTINCT surname, firstname FROM members 
JOIN bookings ON members.memid = bookings.memid 
WHERE  bookings.facid IN (0, 1) AND members.memid !=0;