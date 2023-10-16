USE cd;
/* Выбрать объекты, пользование которых бесплатно для членов клуба. */
SELECT * FROM facilities  WHERE membercost = 0;
