-- insert offices - min 3

INSERT INTO office (adress, telephone, email) VALUES ('Białystok, ul. Daleka', 888555999, 'bialystok@loan.com');
INSERT INTO office (adress, telephone, email) VALUES ('Inowrocław, ul. Bliska', 888555333, 'inowroclaw@loan.com');
INSERT INTO office (adress, telephone, email) VALUES ('Zakopane, ul. Daleka', 888555222, 'zakopane@loan.com');

-- insert position

INSERT INTO emp_position (position_type) VALUES ('sprzedawca');
INSERT INTO emp_position (position_type) VALUES ('kierownik');
INSERT INTO emp_position (position_type) VALUES ('księgowy');


-- insert employers - min 4 dla każdej placówki

INSERT INTO employee (employee_name, employee_lastname, date_of_birth, position_id, office_id) VALUES ('Maciej', 'Kowal', '1990-05-09', 1, 1);
INSERT INTO employee (employee_name, employee_lastname, date_of_birth, position_id, office_id) VALUES ('Andrzej', 'Brzoza', '1998-11-17', 2, 1);
INSERT INTO employee (employee_name, employee_lastname, date_of_birth, position_id, office_id) VALUES ('Wiktor', 'Meduza', '1975-03-01', 3, 1);
INSERT INTO employee (employee_name, employee_lastname, date_of_birth, position_id, office_id) VALUES ('Grzegorz', 'Sałata', '1969-02-19', 2, 2);
INSERT INTO employee (employee_name, employee_lastname, date_of_birth, position_id, office_id) VALUES ('Mikołaj', 'Korzonek', '1988-12-12', 1, 2);
INSERT INTO employee (employee_name, employee_lastname, date_of_birth, position_id, office_id) VALUES ('Anna', 'Nowak', '1972-08-01', 2, 3);
INSERT INTO employee (employee_name, employee_lastname, date_of_birth, position_id, office_id) VALUES ('Małgorzata', 'Mysz', '1999-03-09', 3, 3);
INSERT INTO employee (employee_name, employee_lastname, date_of_birth, position_id, office_id) VALUES ('Wiktoria', 'Ogórek', '1991-03-09', 1, 3);
INSERT INTO employee (employee_name, employee_lastname, date_of_birth, position_id, office_id) VALUES ('Angelika', 'Malinowska', '1988-11-27', 1, 1);
INSERT INTO employee (employee_name, employee_lastname, date_of_birth, position_id, office_id) VALUES ('Mateusz', 'Kret', '1965-09-21', 1, 1);
INSERT INTO employee (employee_name, employee_lastname, date_of_birth, position_id, office_id) VALUES ('Brajan', 'Smolisty', '1992-12-10', 3, 2);
INSERT INTO employee (employee_name, employee_lastname, date_of_birth, position_id, office_id) VALUES ('Oskar', 'Leśny', '1968-12-30', 1, 2);
INSERT INTO employee (employee_name, employee_lastname, date_of_birth, position_id, office_id) VALUES ('Marianna', 'Abecede', '1995-08-018', 1, 3);
INSERT INTO employee (employee_name, employee_lastname, date_of_birth, position_id, office_id) VALUES ('Żaneta', 'Żuk', '1996-04-01', 1, 3);
INSERT INTO employee (employee_name, employee_lastname, date_of_birth, position_id, office_id) VALUES ('Adrian', 'Dziób', '1983-10-01', 1, 3);

-- insert klient - min 10

INSERT INTO customer (adress, email, dateOfBirth, telephone, cardNumber) VALUES ('Gdańsk ul. Morska', 'klient1@gmail.com', '1988-03-09', 586987415, 369369852852);
INSERT INTO customer (adress, email, dateOfBirth, telephone, cardNumber) VALUES ('Bydgoszcz ul. Owocowa', 'fajnyklient@gmail.com', '1996-07-02', 654897241, 252145879635);
INSERT INTO customer (adress, email, dateOfBirth, telephone, cardNumber) VALUES ('Warszawa ul. Kręta', 'stolyca@wp.pl', '1952-12-12', 875694214, 965984521741);
INSERT INTO customer (adress, email, dateOfBirth, telephone, cardNumber) VALUES ('Zalasewo ul. Glebowa', 'tojaklient@interia.pl', '1987-08-19', 532687419, 323652411257);
INSERT INTO customer (adress, email, dateOfBirth, telephone, cardNumber) VALUES ('Ustrzyki ul. Przyjazna', 'goralskiwoz@gmail.com', '1963-05-24', 698621457, 784253216958);
INSERT INTO customer (adress, email, dateOfBirth, telephone, cardNumber) VALUES ('Szczecin ul. Prosta', 'chceauto@yahoo.com', '1990-03-30', 741254839, 100241503656);
INSERT INTO customer (adress, email, dateOfBirth, telephone, cardNumber) VALUES ('Wrocław ul. Pusta', 'krasnal72@gmail.com', '1981-11-09', 736512485, 528569345014);
INSERT INTO customer (adress, email, dateOfBirth, telephone, cardNumber) VALUES ('Międzyzdroje ul. Rybna', 'kolorowyswiat@gmail.com', '1972-09-28', 501405987, 220326658847);
INSERT INTO customer (adress, email, dateOfBirth, telephone, cardNumber) VALUES ('Ełk ul. Zaleśna', 'lucznik90@o2.pl', '1979-01-01', 695301240, 113666985544);
INSERT INTO customer (adress, email, dateOfBirth, telephone, cardNumber) VALUES ('Katowice ul. Rynek', 'katowicenoca@gmail.com', '1993-03-18', 804057486, 300447788995);


-- insert car - min 10

INSERT INTO car (car_type, mark, yearOfProduction, color, engineCapacity, power, mileage) VALUES ('kombi', 'Opel', 1999, 'white', 1.4, 230, 100500);
INSERT INTO car (car_type, mark, yearOfProduction, color, engineCapacity, power, mileage) VALUES ('sedan', 'Skoda', 2009, 'black', 1.6, 180, 310500);
INSERT INTO car (car_type, mark, yearOfProduction, color, engineCapacity, power, mileage) VALUES ('van', 'VW', 2010, 'red', 1.2, 260, 250500);
INSERT INTO car (car_type, mark, yearOfProduction, color, engineCapacity, power, mileage) VALUES ('hatchback', 'Peugeot', 1999, 'white', 1.6, 230, 350500);
INSERT INTO car (car_type, mark, yearOfProduction, color, engineCapacity, power, mileage) VALUES ('kabriolet', 'BMW', 2003, 'silver', 1.6, 210, 400500);
INSERT INTO car (car_type, mark, yearOfProduction, color, engineCapacity, power, mileage) VALUES ('kombi', 'Citroen', 2012, 'silver', 1.4, 190, 212500);
INSERT INTO car (car_type, mark, yearOfProduction, color, engineCapacity, power, mileage) VALUES ('sedan', 'Ford', 2007, 'white', 1.2, 200, 333500);
INSERT INTO car (car_type, mark, yearOfProduction, color, engineCapacity, power, mileage) VALUES ('sportowe', 'Mitsubishi', 1996, 'red', 1.4, 240, 432500);
INSERT INTO car (car_type, mark, yearOfProduction, color, engineCapacity, power, mileage) VALUES ('terenowe', 'Opel', 2004, 'yellow', 1.6, 220, 156500);
INSERT INTO car (car_type, mark, yearOfProduction, color, engineCapacity, power, mileage) VALUES ('van', 'Opel', 2010, 'black', 1.2, 180, 86500);

-- insert loan - 

INSERT INTO loan (customer_id, car_id, office_from_id, office_to_id, date_from,  date_to, price) VALUES (1, 2, 3, 1, '2018-05-09', '2018-05-19', 800);
INSERT INTO loan (customer_id, car_id, office_from_id, office_to_id, date_from,  date_to, price) VALUES (6, 3, 1, 1, '2018-05-14', '2018-05-19', 1800);
INSERT INTO loan (customer_id, car_id, office_from_id, office_to_id, date_from,  date_to, price) VALUES (2, 4, 2, 1, '2018-06-11', '2018-06-17', 500);
INSERT INTO loan (customer_id, car_id, office_from_id, office_to_id, date_from,  date_to, price) VALUES (4, 5, 2, 1, '2018-08-01', '2018-08-11', 2300);
INSERT INTO loan (customer_id, car_id, office_from_id, office_to_id, date_from,  date_to, price) VALUES (5, 5, 3, 1, '2018-05-29', '2018-06-11', 1000);
INSERT INTO loan (customer_id, car_id, office_from_id, office_to_id, date_from,  date_to, price) VALUES (7, 1, 3, 1, '2018-07-09', '2018-08-05', 2870);
INSERT INTO loan (customer_id, car_id, office_from_id, office_to_id, date_from,  date_to, price) VALUES (8, 7, 1, 1, '2018-04-30', '2018-05-06', 1230);
INSERT INTO loan (customer_id, car_id, office_from_id, office_to_id, date_from,  date_to, price) VALUES (9, 6, 2, 1, '2018-04-09', '2018-04-13', 800);
INSERT INTO loan (customer_id, car_id, office_from_id, office_to_id, date_from,  date_to, price) VALUES (10, 5, 2, 1, '2018-01-01', '2018-01-17', 1800);
INSERT INTO loan (customer_id, car_id, office_from_id, office_to_id, date_from,  date_to, price) VALUES (2, 4, 1, 1, '2018-02-09', '2018-02-14', 900);
INSERT INTO loan (customer_id, car_id, office_from_id, office_to_id, date_from,  date_to, price) VALUES (2, 10, 3, 1, '2018-03-14', '2018-03-15', 90);
INSERT INTO loan (customer_id, car_id, office_from_id, office_to_id, date_from,  date_to, price) VALUES (3, 8, 3, 1, '2018-02-19', '2018-02-27', 1200);
INSERT INTO loan (customer_id, car_id, office_from_id, office_to_id, date_from,  date_to, price) VALUES (5, 9, 2, 1, '2018-06-11', '2018-06-18', 990);
INSERT INTO loan (customer_id, car_id, office_from_id, office_to_id, date_from,  date_to, price) VALUES (6, 5, 3, 1, '2018-07-01', '2018-07-28', 2600);
INSERT INTO loan (customer_id, car_id, office_from_id, office_to_id, date_from,  date_to, price) VALUES (2, 5, 1, 3, '2018-01-010',loanloanloan '2018-08-08', 80);


-- insert keeper

INSERT INTO keeper (employee_id, keep_car_id) VALUES (14, 10);
INSERT INTO keeper (employee_id, keep_car_id) VALUES (13, 10);
INSERT INTO keeper (employee_id, keep_car_id) VALUES (12, 9);
INSERT INTO keeper (employee_id, keep_car_id) VALUES (11, 8);
INSERT INTO keeper (employee_id, keep_car_id) VALUES (10, 8);
INSERT INTO keeper (employee_id, keep_car_id) VALUES (9, 7);
INSERT INTO keeper (employee_id, keep_car_id) VALUES (8, 6);
INSERT INTO keeper (employee_id, keep_car_id) VALUES (7, 5);
INSERT INTO keeper (employee_id, keep_car_id) VALUES (6, 5);
INSERT INTO keeper (employee_id, keep_car_id) VALUES (5, 4);
INSERT INTO keeper (employee_id, keep_car_id) VALUES (4, 3);
INSERT INTO keeper (employee_id, keep_car_id) VALUES (3, 2);
INSERT INTO keeper (employee_id, keep_car_id) VALUES (2, 2);
INSERT INTO keeper (employee_id, keep_car_id) VALUES (1, 1);
INSERT INTO keeper (employee_id, keep_car_id) VALUES (1, 6);
INSERT INTO keeper (employee_id, keep_car_id) VALUES (2, 7);












