-- a)	użytkownik user_ro może tylko odczytywać dane z wszystkich tabel

CREATE USER 'user_ro' IDENTIFIED BY 'ro';
REVOKE ALL PRIVILEGES, GRANT OPTION  FROM user_ro;
GRANT SELECT ON car_loan.* TO user_ro;
SHOW GRANTS FOR user_ro;

-- b)	użytkownik user_rw_adres ma pełny dostęp do tabeli z adresami / do obojętnie jakiej (tzn. może wstawiać i usuwać dane), 
-- do innych tabel w projekcie ma tylko prawo odczytu

CREATE USER 'user_rw' IDENTIFIED BY 'rw';
REVOKE ALL PRIVILEGES, GRANT OPTION  FROM user_rw;
GRANT ALL PRIVILEGES ON customer TO user_rw;
GRANT SELECT ON car TO user_rw;
GRANT SELECT ON emp_position TO user_rw;
GRANT SELECT ON employee TO user_rw;
GRANT SELECT ON keeper TO user_rw;
GRANT SELECT ON loan TO user_rw;
GRANT SELECT ON office TO user_rw;
SHOW GRANTS FOR user_rw;


-- c)	użytkownik user_admin ma pełny dostęp do wszystkich uprawnień

CREATE USER 'user_admin' IDENTIFIED BY 'admin';
GRANT ALL PRIVILEGES ON car_loan.* TO user_admin;
SHOW GRANTS FOR user_admin;






