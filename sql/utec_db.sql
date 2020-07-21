DROP DATABASE IF EXISTS escuela;
CREATE DATABASE IF NOT EXISTS escuela;

USE escuela;

CREATE TABLE alumnos(
    id_alumno INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    matricula INT(11) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    onelastname VARCHAR(50) NOT NULL,
    twolastname VARCHAR(50) NOT NULL,
    edad TINYINT NOT NULL,
    borndate DATE NOT NULL,
    sex VARCHAR(10) NOT NULL,
    estado VARCHAR(50) NOT NULL
) ENGINE= InnoDB DEFAULT CHARSET=latin1;

INSERT INTO alumnos(matricula, nombre, onelastname, twolastname, edad, borndate, sex, estado)
VALUES
(1718110385, 'Nazareth', 'Muñoz', 'Ruiz', 20, '2000-04-04', 'Femenino', 'Hidalgo'),
(1718110411, 'Maria Fernanda', 'Reyes', 'Lopez', 20, '1999-04-23', 'Femenino', 'Hidalgo');

DROP USER 'user_utec'@'localhost';
CREATE USER 'user_utec'@'localhost' IDENTIFIED BY 'User.0404';
GRANT ALL PRIVILEGES ON *. * TO 'user_utec'@'localhost';
FLUSH PRIVILEGES;