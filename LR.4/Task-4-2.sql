/*Добавить (одновременно)  два сквош-корта (2 и 3 == ‘Squash Court 2’, ‘Squash Court 3’) */
USE cd;
ALTER TABLE facilities
MODIFY membercost
DECIMAL(10,1);

ALTER TABLE facilities
MODIFY guestcost
DECIMAL(10,1);

INSERT INTO facilities (facid, facility, membercost, guestcost, initialoutlay, monthlymaintenance)
VALUES (10, 'Squash Court 2', 3.5, 17.5, 5000, 80),
       (11, 'Squash Court 3', 3.5, 17.5, 5000, 80);
SELECT * FROM facilities;
