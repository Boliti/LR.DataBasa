USE cd;
/* Выберите всех членов клуба и членов, которые их рекомендовали,  отсортировав их по имени и фамилии. */
SELECT DISTINCT m2.surname, m2.firstname 
FROM members m1, members m2 
WHERE m1.memid = m2.recommendedby ORDER BY surname;