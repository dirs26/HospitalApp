DROP DATABASE IF EXISTS hito2;
CREATE DATABASE IF NOT EXISTS hito2;
USE hito2;

CREATE TABLE IF NOT EXISTS operador (
  nif_operador VARCHAR(9) PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  turno VARCHAR(50), 
  horario DATETIME NOT NULL
);


CREATE TABLE IF NOT EXISTS paciente (
  nif_paciente VARCHAR(9) PRIMARY KEY,
  nombre VARCHAR(255) NOT NULL,
  edad INT,
  numero_llamante int(9),
  correo VARCHAR(255) NOT NULL
);


CREATE TABLE IF NOT EXISTS especialista (
  nif_especialista VARCHAR(9) PRIMARY KEY,
  nombre VARCHAR(255) NOT NULL,
  especialidad VARCHAR(255) NOT NULL,
  turno VARCHAR(50),
  horario DATETIME NOT NULL
);


CREATE TABLE IF NOT EXISTS llamada (
  id_llamada INT AUTO_INCREMENT PRIMARY KEY,
  fecha_hora DATETIME NOT NULL,
  duracion INT NOT NULL,
  id_operador VARCHAR(9),
  id_paciente VARCHAR(9),
  id_especialista VARCHAR(9),
  numero_llamante int(20), 
  turno VARCHAR(50), 
  motivo VARCHAR(255), 
  llamada_molesta  varchar(50), 
  solo_o_no  varchar(50), 
  Quien_necesita_ayuda VARCHAR(255), 
  ambulancia varchar(50), 
  hay_heridos  varchar(50), 
  consejo VARCHAR(255),
  especialidad VARCHAR(50),
  FOREIGN KEY (id_operador) REFERENCES operador(nif_operador),
  FOREIGN KEY (id_paciente) REFERENCES paciente(nif_paciente),
  FOREIGN KEY (id_especialista) REFERENCES especialista(nif_especialista)
);
-- inserts
-- operador
INSERT INTO operador (nif_operador, nombre, turno, horario) VALUES ('00000000A','Juan Pérez', 'Lunes a viernes no festivos 7:00 a 15:00', '2023-01-01 07:00:00');
INSERT INTO operador (nif_operador, nombre, turno, horario) VALUES ('99999999B','María Rodríguez', 'Lunes a viernes no festivos 15:00 a 23:00', '2023-01-01 15:00:00');
INSERT INTO operador (nif_operador, nombre, turno, horario) VALUES ('23456789C','Dr. González', 'Sábados, domingos y festivos 7:00 a 15:00', '2023-01-07 07:00:00');
INSERT INTO operador (nif_operador, nombre, turno, horario) VALUES ('34567890D','Psic. Martínez', 'Sábados, domingos y festivos 23:00 a 7:00', '2023-01-08 23:00:00');


-- especialista
INSERT INTO especialista (nif_especialista, nombre, especialidad, turno, horario) VALUES ('11111111A','Dra. Pérez', 'Pediatria', 'Lunes a viernes no festivos 15:00 a 23:00', '2023-01-01 15:00:00');
INSERT INTO especialista (nif_especialista, nombre, especialidad, turno, horario) VALUES ('22222222B','Lic. Rodríguez', 'Psicologia', 'Sábados, domingos y festivos 7:00 a 15:00', '2023-01-07 07:00:00');
INSERT INTO especialista (nif_especialista, nombre, especialidad, turno, horario) VALUES ('33333333C','Dr. Gómez', 'Emergencias', 'Sábados, domingos y festivos 23:00 a 7:00', '2023-01-08 23:00:00');
INSERT INTO especialista (nif_especialista, nombre, especialidad, turno, horario) VALUES ('44444444A','Lic. Sánchez', 'Enfermeria', 'Lunes a viernes no festivos 7:00 a 15:00', '2023-01-01 07:00:00');


-- paciente
INSERT INTO paciente (nif_paciente, nombre, edad, numero_llamante, correo) VALUES ('12345678A','Ana García', 25, 111222333, 'ana@gmail.com');

SELECT * FROM paciente
 