USE cd;
/* Выберите список всех членов, включая человека, который их рекомендовал (если таковой имеется), 
без использования каких-либо объединений. Исключите в списке дубликаты,
 упорядочите лист по ФИО (==   имя + фамилия). */
WITH new AS (
    SELECT CONCAT(m1.surname, " ", m1.firstname) AS fiomember 
    FROM members m1, members m2
    WHERE m1.recommendedby = m2.memid OR m1.recommendedby IS NULL
)
SELECT DISTINCT fiomember FROM new
WHERE fiomember NOT LIKE "%GUEST%" ORDER BY fiomember;