-- Stwórz widok który przedstawi klientów wraz z datami wypożyczeń i markami samochodów.

DROP VIEW v_customer_car;

CREATE VIEW v_customer_car AS (
SELECT c.*, date_from, date_to, mark 
FROM customer c 
JOIN loan l ON c.customer_id=l.customer_id
JOIN car ON l.car_id=car.car_id);


SELECT customer_id, COUNT(*)  FROM loan 
GROUP BY customer_id;


-- Stwórzcie sobie widok, który ma następujące kolumny:
-- Miesiąc | Rok | ID klienta | Liczba wypożyczeń tego klienta w tym miesiący w tym roku

CREATE OR REPLACE VIEW v_customer_loans AS (
SELECT MONTH(l.date_from) l_month, YEAR(l.date_from) l_year, c.email, l.customer_id, COUNT(*) loans
FROM loan l
JOIN customer c ON c.customer_id=l.customer_id
GROUP BY l.customer_id
ORDER BY MONTH(l.date_from)
);

CREATE OR REPLACE VIEW amount_of_rentals AS (
SELECT customer_id, year(l.date_from) year, month(l.date_to) month, COUNT(*)
FROM loan l GROUP BY customer_id, year, month);

select * from amount_of_rentals;

select * from v_customer_loans;

-- dla każdego miesiąca(w każdym roku) najczęściej wypożyczaną markę i ilość wypożyczeń tej marki
-- może być pomocniczy widok

CREATE OR REPLACE VIEW helpful_view AS (
SELECT c.mark cm, COUNT(*) cou, MONTH(l.date_from) lmonth, YEAR(l.date_from) lyear
FROM car c 
JOIN loan l ON l.car_id = c.car_id
GROUP BY lmonth, lyear, cm
ORDER BY cou DESC);

-- dla każdego keepera znajdz typ samochodu którym opiekuje sie najwiecej 

CREATE OR REPLACE VIEW keeper_car AS (
SELECT k.employee_id em, c.car_type ct, COUNT(*) cou
FROM keeper k
JOIN car c ON c.car_id=k.keep_car_id
GROUP BY em, ct
ORDER BY cou DESC)
;



-- m znajdź klienta, który najczęściej wypożycza i oddaje samochody w innych miejscach ; 
-- jeśli będzie kilka klientów z taką samą liczba (maxem), to chcę zobaczyć ich wszystkich
CREATE OR REPLACE VIEW customer_loan_places AS (
SELECT c.customer_id, c.email, office_from_id, office_to_id, COUNT(*) c
FROM customer c
JOIN loan l ON c.customer_id=l.customer_id
WHERE office_from_id<>office_to_id
GROUP BY c.customer_id
ORDER BY c DESC
);

CREATE OR REPLACE VIEW price AS(
SELECT mark, SUM(price) s
FROM car c
JOIN loan l ON c.car_id=l.car_id
GROUP BY mark);















