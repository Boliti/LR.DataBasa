USE cd;
/*Выберите самый дорогой и самый дешевый объект.*/
SELECT facility, membercost AS 'Качественная стоимость' FROM facilities WHERE membercost = (SELECT MAX(membercost) FROM facilities)
UNION
SELECT facility, membercost FROM facilities WHERE membercost = (SELECT MIN(membercost) FROM facilities);