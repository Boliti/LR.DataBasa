use cd;
/*Выбрать объекты, которые платны для членов клуба, но стоимость использование не превышает 1/50 от стоимость месячного обслуживания */
SELECT facility  FROM facilities  WHERE membercost != 0 and membercost/monthlymaintenance <= 1/50;