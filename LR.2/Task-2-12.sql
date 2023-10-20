USE cd;
/* Найдите дату последней регистрации члена клуба.*/
SELECT MAX(joindate) as 'Last registration' from members;