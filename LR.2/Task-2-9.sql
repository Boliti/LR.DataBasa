USE cd;
/* Выбрать всех членов клуба, зарегистрированных с сентября 2012 года.*/
SELECT memid, surname, firstname  FROM members WHERE YEAR(joindate) = 2012 AND MONTH(joindate) >= 9;