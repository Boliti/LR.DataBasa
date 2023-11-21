USE cd;
/* Найдите общее количество участников (члены + гости), совершивших хотя бы одно бронирование. */
SELECT COUNT(DISTINCT memid) FROM bookings;