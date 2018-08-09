
-- Załóżmy, że minimalna cena wynajmu wynosi 100zł. 
-- Stwórz trigger, który ustawi cenę wynajmu na 100zł, jeżeli ktoś będzie starał sie wprowadzić do bazy niższą kwotę.

delimiter $$
CREATE TRIGGER price_check BEFORE INSERT ON loan 
	FOR EACH ROW 
		IF NEW.price < 100 THEN 
			SET NEW.price = 100;
		END IF;
delimiter;



delimiter $$
CREATE TRIGGER price_check2 BEFORE INSERT ON loan 
	FOR EACH ROW 
		IF NEW.price < 100 THEN 
			SET NEW.price = 100;
		END IF;
delimiter;
