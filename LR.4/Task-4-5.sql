-- Active: 1696928880744@@127.0.0.1@3306@cd
USE cd;
/* Стоимость аренды объектов 0 и 1 изменилась (член клуба == 6, гость = 30). */
UPDATE facilities
SET membercost = 6, guestcost = 30
WHERE facid < 2;
SELECT * FROM facilities;