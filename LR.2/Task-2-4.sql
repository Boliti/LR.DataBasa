USE cd;
/* Выбрать объекты, пользование которых платно для членов клуба */
SELECT * FROM facilities  WHERE membercost != 0;