USE cd;
/* Выбрать имена объектов с их качественной стоимостью
 (качественной стоимостью == ‘дешевый’ если monthlymaintenance < 100 и 
 ‘дорогой’ в противном случае*/
SELECT * FROM facilities WHERE monthlymaintenance < 100;
SELECT * FROM facilities WHERE monthlymaintenance >= 100;