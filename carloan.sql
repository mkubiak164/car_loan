CREATE SCHEMA IF NOT EXISTS `car_loan` DEFAULT CHARACTER SET utf8 ;
USE `car_loan` ;

-- -----------------------------------------------------
-- Table `carloan`.`office`
-- -----------------------------------------------------

CREATE TABLE office (
    office_id INT NOT NULL AUTO_INCREMENT,
    adress VARCHAR(200) NULL,
    telephone VARCHAR(15) NULL,
    email VARCHAR(50) NULL,
    PRIMARY KEY (office_id)
);
    
    
CREATE TABLE customer (
	customer_id INT NOT NULL AUTO_INCREMENT,
    adress VARCHAR (200) NULL,
    email VARCHAR(45) NULL,
    dateOfBirth DATE NULL,
    telephone VARCHAR (15) NULL,
    cardNumber VARCHAR(40) NULL,
    PRIMARY KEY (client_id)
    );

CREATE TABLE car (
	car_id INT NOT NULL AUTO_INCREMENT,
	car_type VARCHAR (30) NOT NULL,
    mark VARCHAR (30) NOT NULL,
    yearOfProduction DATE NOT NULL,
    color VARCHAR (30) NULL,
    engineCapacity INT NULL,
    power INT NULL,
    mileage INT NULL,
    PRIMARY KEY (car_id)
    );


CREATE TABLE emp_position (
	position_id INT NOT NULL AUTO_INCREMENT,
	position_type VARCHAR (30),
    PRIMARY KEY (position_id)
    );

CREATE TABLE employee (
	employee_id INT NOT NULL AUTO_INCREMENT,
	employee_name STRING NOT NULL,
    employee_lastname STRING NOT NULL,
    date_of_birth DATE NOT NULL,
    position_id INT NOT NULL,
    office_id  INT NOT NULL,
    CONSTRAINT employee PRIMARY KEY (employee_id),
	CONSTRAINT position_id FOREIGN KEY (position_id) REFERENCES emp_position(position_id)
	);


CREATE TABLE loan (
	loan_id INT NOT NULL AUTO_INCREMENT,
    customer_id INT NOT NULL,
    car_id INT NOT NULL,
    office_from_id INT NOT NULL,
    office_to_id INT,
    date_from DATE,
    date_to DATE,
    price INT,
    CONSTRAINT loan PRIMARY KEY (loan_id),
    CONSTRAINT customer_id FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    CONSTRAINT car_id FOREIGN KEY (car_id) REFERENCES car(car_id),
	CONSTRAINT office_from_id FOREIGN KEY (office_from_id) REFERENCES office(office_id),
	CONSTRAINT office_to_id FOREIGN KEY (office_to_id) REFERENCES office(office_id)
);

CREATE TABLE keeper (
	keeper_id INT NOT NULL AUTO_INCREMENT,
    employee_id INT NOT NULL,
    keep_car_id INT NOT NULL,
    CONSTRAINT keeper_id PRIMARY KEY (keeper_id),
    CONSTRAINT employee_id FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
    CONSTRAINT keep_car_id FOREIGN KEY (keep_car_id) REFERENCES car(car_id)
);

	




















 
