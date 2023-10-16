USE cd;
/* Выбрать всех членов клуба, зарегистрированных с сентября 2012 года.*/
SELECT * FROM members WHERE joindate LIKE "2012-09%" ;