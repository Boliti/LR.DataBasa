/*Выведите наименования всех объектов клуба заглавными буквами, если они содержат в названии слово ‘Tennis’*/
SELECT UPPER(facility) FROM facilities 
WHERE facility LIKE '%Tennis%';
