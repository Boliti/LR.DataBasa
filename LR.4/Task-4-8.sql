USE cd;
/* открываем транзакцию */
START TRANSACTION;
/*Удаляем пользователся с memid = 37 */
DELETE FROM members WHERE memid = 37;
SELECT * FROM members;
/* отменяем все предыдущие изменения */
ROLLBACK;
/* выводим список всех членов клуба */
SELECT * FROM members;
/* Когда мы удалили пользователся с memid = 37, он исчез из таблицы, а когда отменили изменения, он вернулся в таблицу. */