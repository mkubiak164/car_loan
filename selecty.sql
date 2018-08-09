use car_loan;

-- a znajdź pracowników starszych niż 25 lat
SELECT * FROM employee e WHERE e.date_of_birth<DATE_SUB(CURDATE(), INTERVAL 25 YEAR);

-- b znajdź pracowników, których nazwisko jest dłuższe niż N znaków – N = 5
SELECT * FROM employee e WHERE length(e.employee_lastname)>5;

-- c znajdź pracowników, w których nazwisku na drugim miejscu wystepuje duża litera 'F'
SELECT * FROM employee e WHERE e.employee_lastname like '_F%';

-- d znajdź samochody z największym przebiegiem – konkretny samochód z największym przebieg
SELECT * FROM car ORDER BY mileage DESC LIMIT 1;

-- e policz ilość samochodów których przebieg jest pomiędzy 200 a 300 tys.
SELECT COUNT(*) FROM car WHERE mileage BETWEEN 200000 AND 300000;

-- f znajdź wszystkich kierowników
SELECT e.*, position_type FROM employee e 
JOIN emp_position ep ON e.position_id=ep.position_id
WHERE position_type='kierownik';

-- g group:
-- 1 znajdź klienta z największa liczbą wypożyczeń – id, imie, nazwisko; np. 2 pracowników
SELECT v.email, COUNT(*) c
FROM v_customer_car v
GROUP BY v.email
ORDER BY c DESC
LIMIT 2;

-- 2 podaj liczbę wszystkich wpożyczeń na miesiąc – tylko te, w których były jakies wypozyczenia; niezależnie od roku
SELECT month(l.date_from) m, COUNT(*) c FROM loan l 
GROUP BY m
ORDER BY m ASC;

-- 3 znajdź miesiąc i rok w którym każdy z klientów miał największą liczbę wypożyczeń
SELECT v.loans, v.l_month, v.l_year, v.customer_id, v.email FROM v_customer_loans v
JOIN (
SELECT MAX(loans) maxx, customer_id, email 
FROM v_customer_loans vv
GROUP BY customer_id
) v2
ON v.customer_id = v2.customer_id
AND v.loans = v2.maxx;

-- 4 dla każdego miesiąca podaj średnią liczbę wypożyczeń na klienta
SELECT
MONTHNAME(date_from) loanmonth, ROUND(COUNT(*) / (select count(distinct customer_id) from loan),2) avgcnt
FROM
loan
GROUP BY loanmonth
ORDER BY month(date_from)asc;

-- h znajdź klientów, którzy wypożyczyli największą liczbę różnych samochodów
SELECT v.email, COUNT(*) c
FROM v_customer_car v
JOIN loan l ON v.customer_id=l.customer_id
GROUP BY v.email
HAVING c=(
SELECT DISTINCT COUNT(*) FROM v_customer_car vv
GROUP BY vv.email
ORDER BY COUNT(*) DESC
LIMIT 1
);

-- i znajdź samochody najczęściej wypożyczane – która marka była najczęściej wypożyczana
SELECT c.mark, COUNT(*) count
FROM car c 
JOIN loan l ON c.car_id=l.car_id
GROUP BY c.mark
HAVING count=(
SELECT COUNT(*) FROM loan ll
JOIN car cc ON cc.car_id=ll.car_id
GROUP BY cc.mark
ORDER BY COUNT(*) DESC
LIMIT 1);

-- j znajdź klientów, którzy zapłacili najwięcej za wypożyczenia w tym roku
SELECT c.email, SUM(price) s
FROM customer c
JOIN loan l ON c.customer_id=l.customer_id
WHERE YEAR(l.date_from)='2018'
GROUP BY c.email
ORDER BY SUM(price) DESC;

-- k group:
-- 1 znajdź klientów, którzy wypożyczyli samochód X(id=5) w dacie miedzy Y a Z.
SELECT c.*, l.date_from, l.date_to FROM customer c
JOIN loan l ON c.customer_id=l.customer_id
WHERE l.car_id=5 
   AND l.date_from > '2018-04-02' 
   AND l.date_to < '2018-08-26'; 

-- 2 znajdź klientów, którzy mieli choć przez chwilę wypożyczony samochód X w dacie miedzy Y a Z. 
-- Proszę wziąć pod uwagę różne możliwości nakładania się terminów (!)
SELECT c.*, l.date_from, l.date_to, l.car_id FROM customer c
JOIN loan l ON c.customer_id=l.customer_id
WHERE l.car_id=5 
   AND (l.date_from <= '2018-08-26' AND
		l.date_to >= '2018-04-02');
   
-- l zaktualizuj kolor samochodu X
UPDATE car SET color='pink' WHERE id=3;

-- m znajdź klienta, który najczęściej wypożycza i oddaje samochody w innych miejscach ; 
-- jeśli będzie kilka klientów z taką samą liczba (maxem), to chcę zobaczyć ich wszystkich
SELECT customer_id, email, MAX(c) FROM customer_loan_places;

-- n sprawdź w jakiej domenie klienci maja najczęściej email – domena = wszystko co jest po znaku @
SELECT (SUBSTRING_INDEX(SUBSTR(email, INSTR(email, '@') + 1),'.',1)) domain, COUNT(*) c
FROM customer
GROUP BY domain;

-- o znajdź samochody, które mają conajmniej 2 opiekunów
SELECT c.*, k.employee_id
FROM car c 
JOIN keeper k ON c.car_id=k.keep_car_id
WHERE keep_car_id IN(SELECT keep_car_id FROM keeper GROUP BY keep_car_id HAVING count(keep_car_id)>1);

-- p znajdź pracowników, którzy nie opiekują się żadnym samochodem
SELECT *
FROM employee e 
LEFT JOIN keeper k ON e.employee_id=k.employee_id
WHERE k.employee_id IS NULL;


-- dla każdego miesiąca(w każdym roku) najczęściej wypożyczaną markę i ilość wypożyczeń tej marki
-- może być pomocniczy widok
SELECT cm, cou, lmonth, lyear 
FROM helpful_view v
WHERE cou = (
SELECT MAX(cou) FROM helpful_view vv
WHERE v.lmonth = vv.lmonth AND v.lyear = vv.lyear
);

-- dla każdego keepera znajdz typ samochodu którym opiekuje sie najwiecej 
SELECT em, cou, ct
FROM keeper_car k
WHERE cou=(
SELECT MAX(cou) FROM keeper_car kk
WHERE k.em=kk.em)
ORDER BY em ASC;

-- dla każdego klienta znajdz miesiac i rok gdzie dokonał najwiecej wypożyczeń
-- dla każdej marki saomchodu podaj sume zarobionych pieniedzy przez ta marke
SELECT mark, SUM(price) s
FROM car c
JOIN loan l ON c.car_id=l.car_id
GROUP BY mark;

-- dla każdej marki saomchodu podaj średnie koszty wypożyczenia tej marki 

-- pocwiczyc znajdz najwiecej

-- marka samochodu, id samochodu, id employee w keeperze, imie keepera

SELECT c.mark, c.car_id, e.employee_id, employee_name
FROM car c
JOIN keeper k ON keep_car_id = car_id
RIGHT JOIN employee e ON k.employee_id = e.employee_id;

SELECT mark, c.car_id, e.employee_id, employee_name
FROM employee e
LEFT JOIN keeper k ON k.employee_id = e.employee_id
LEFT JOIN car c ON  car_id = keep_car_id;

-- dla pracownika z id 1 (najminejsze id) imie, nazwisko wybrać wszystkich klientów dla których jest możliwośc że on im wypożyczył samochód
-- tzn że on jest opiekunem samochodu, a ktoś go wypożyczyłalter

SELECT e.employee_name, e.employee_lastname, l.customer_id customer_id, email
FROM employee e
JOIN keeper k ON k.employee_id = e.employee_id
JOIN loan l ON l.car_id=k.keep_car_id
JOIN customer c ON l.customer_id = c.customer_id
WHERE e.employee_id = 1
;

