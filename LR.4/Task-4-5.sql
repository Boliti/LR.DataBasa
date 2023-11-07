-- Active: 1696928880744@@127.0.0.1@3306@cd
USE cd;
/* Реальные затраты на создание корта 2 (facid =1) составили 10000. Обновите данные в таблице, чтобы учесть это изменение. */
UPDATE facilities
SET membercost = 6, guestcost = 30
WHERE facid < 2;
SELECT * FROM facilities;