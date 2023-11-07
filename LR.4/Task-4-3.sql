USE cd;
/* Добавьте еще одно spa с такими же характеристиками как в задании 1 */
INSERT INTO facilities (facid, facility, membercost, guestcost, initialoutlay,monthlymaintenance )
SELECT max(facid)+1 ,'spa', 20, 30 , 100000, 800 FROM facilities;
SELECT * FROM facilities;