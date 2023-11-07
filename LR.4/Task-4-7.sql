USE cd;
/* удаляем все данные из таблицы bookings, а потом возвращаем их обратно */
START TRANSACTION;
DELETE FROM bookings;
SELECT * FROM bookings;
ROLLBACK;
SELECT * FROM bookings;