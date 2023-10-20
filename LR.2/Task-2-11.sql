/*Объедините имена членов и названия объектов в обдну таблицу с одним столбцом.*/
USE cd;
SELECT  firstname as new FROM members
UNION ALL
SELECT facility  FROM facilities;