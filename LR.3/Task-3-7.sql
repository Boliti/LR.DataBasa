USE cd;
/* Выберите список всех членов, включая человека, который их рекомендовал (если таковой имеется), 
без использования каких-либо объединений. Исключите в списке дубликаты,
 упорядочите лист по ФИО (==   имя + фамилия). */
SELECT CONCAT(m1.surname, " ", m1.firstname) AS fiomember  , CONCAT(m2.surname, " ", m2.firstname) AS "Recommender fiomember"
FROM members m1, members m2
WHERE m1.recommendedby = m2.memid
ORDER BY fiomember;
