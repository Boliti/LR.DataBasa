/*Выведите все объектов клуба, если они содержат в названии слово  ‘Tennis’ в произвольном регистре.*/
SELECT facility FROM facilities 
WHERE facility LIKE '%Tennis%';