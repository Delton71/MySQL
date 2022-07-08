/*
Сколько заказов с комиссией 2019р.?
*/
-- ans: 6
SELECT comission, total_price, round(total_price * comission) as res, ctime FROM hands.bus_order
WHERE year(ctime) < 2020 and comission is not null and round(total_price * comission) = 2019;

/*
Сколько заказов стоимостью 2020р.?
*/
-- ans: 2
SELECT total_price FROM hands.bus_order		-- 2
WHERE year(ctime) < 2020 and total_price = 2020;

/*
Кто на нас больше всех разбогател?
*/
-- ??? это в заказчиках?

/*
А кто больше всех выручил?
*/
-- ??? это в заказчиках?

/*
Сколько у нас Панько?
*/
SELECT * FROM hands.bus_specialist
WHERE surname = 'Панько';

/*
Сколько КО на м. Аэропорт?
*/
-- что означает КО?
SELECT * FROM hands.bus_order	-- 2
WHERE address LIKE '%м. Аэропорт%';

/*
Сколько ждал самый терпеливый клиент?
*/
-- ???

/*
Сколько Фархудов среди наших клиентов?
*/
SELECT * FROM hands.bus_client	-- ans: 1
WHERE name LIKE '%Фархуд%';

/*
В скольких заказах у клиента Костин номер телефона?
*/
-- знать бы Костин номер телефона)))

SELECT tags FROM hands.bus_order	-- ?
WHERE tags is not null;

