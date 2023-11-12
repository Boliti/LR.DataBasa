/*Добавить (одновременно)  два сквош-корта (2 и 3 == ‘Squash Court 2’, ‘Squash Court 3’) */
USE cd;
/* изменяем membercost для того чтобы можно писать не только целые числа */
ALTER TABLE facilities
MODIFY membercost
DECIMAL(10,1);
/* изменяем guestcost для того чтобы можно писать не только целые числа */
ALTER TABLE facilities
MODIFY guestcost
DECIMAL(10,1);

INSERT INTO facilities (facid, facility, membercost, guestcost, initialoutlay, monthlymaintenance)
VALUES (10, 'Squash Court 2', 3.5, 17.5, 5000, 80),
       (11, 'Squash Court 3', 3.5, 17.5, 5000, 80);
SELECT * FROM facilities;





/* Удаление строк с facid = (10,11) (для проверки работы скрипта) */
DELETE FROM facilities
WHERE facid IN(10,11);
