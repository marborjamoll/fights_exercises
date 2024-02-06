-- Active: 1704637861352@@127.0.0.1@5432@flights
INSERT INTO persona (dni, nombre, apellidos, fecha_nacimiento) VALUES
('12345678', 'Miquela', 'Santacana', '1990-05-15'),
('12345679', 'Juan', 'García', '1985-11-22'),
('12345680', 'María', 'Rodríguez', '1978-03-08'),
('12345681', 'Carlos', 'Martínez', '2002-09-30'),
('12345682', 'Laura', 'López', '1995-07-12'),
('12345683', 'José', 'Pérez', '1980-01-25'),
('12345684', 'Gabriela', 'Sánchez', '1998-06-18'),
('12345685', 'Roberto', 'González', '1973-12-05'),
('12345686', 'Patricia', 'Hernández', '1987-04-20'),
('12345687', 'Alejandro', 'Díaz', '2005-08-09'),
('12345688', 'Sofía', 'Romero', '1992-02-14'),
('12345689', 'Miguel', 'Ruiz', '1970-10-28'),
('12345690', 'Isabel', 'Torres', '1983-09-03');

INSERT INTO reserva (fecha, hora, persona_id) VALUES
('2024-01-01', '0:05:20', '12345678'),
('2024-01-07', '8:30:00', '12345679'),
('2024-01-08', '9:50:00', '12345680'),
('2024-01-08', '12:30:00', '12345681'),
('2024-01-20', '5:30:00', '12345682'),
('2024-01-25', '19:25:00', '12345678');


INSERT INTO viajan (persona_id, reserva_id) VALUES
('12345678', 1),
('12345679', 2),
('12345680', 2),
('12345681', 3),
('12345682', 3),
('12345683', 3),
('12345684', 3),
('12345678', 4),
('12345679', 4),
('12345680', 5),
('12345678', 6);


INSERT INTO pais (pais) VALUES
('España'),
('Reino Unido'),
('Francia');

INSERT INTO ciudad (ciudad, pais_id) VALUES
('Palma', 1),
('Manchester', 2),
('Londres', 2),
('Sant-Louis', 3),
('Mahón', 1);

INSERT INTO avion(fecha_estreno, modelo, capacidad) VALUES
(NULL, 'Boeing 737-8AS', 174),
('1988-03-28', 'Airbus A320', 146),
('1995-08-25', 'Airbus A319-111', 141),
(NULL, 'Embraer 190', 98),
(NULL, 'BOMBARDIER Regional Jet CRJ-1000', 100);

INSERT INTO compania (compania, pais_id) VALUES
('Ryanair', 2),
('EasyJet', 2),
('Iberia', 1),
('British Airways', 2);

INSERT INTO aeropuerto (id, nombre, ciudad_id) VALUES
('PMI', 'Son Sant Joan', 1),
('MAN', 'Manchester Airport', 2),
('STN', 'London Stanted Airport', 3),
('BSL', 'EuroAirport Basel Mulhouse Freiburg', 4),
('MAH', 'Aeropuerto de Menorca', 5),
('LTN', 'London Luton', 3);

INSERT INTO vuelo (id, fecha, hora, avion_id, compania_id, origen_id, destino_id) VALUES
('FR1104', '2024-01-26', '22:00:00', 1, 1, 'PMI', 'MAN'),
('BA8484', '2024-01-26', '10:50:00', 2, 4, 'PMI', 'MAN'),
('U21004', '2024-02-05', '16:20:00', 3, 2, 'BSL', 'PMI'),
('IB8486', '2024-02-05', '15:40:00', 5, 3, 'PMI', 'MAH'),
('U22322', '2024-02-05', '11:55:00', 3, 2, 'PMI', 'LTN'),
('FR1105', '2024-02-05', '22:20:00', 1, 1, 'PMI', 'MAN'),
('U22019', '2024-02-10', '7:50:00', 2, 2, 'MAN', 'PMI');

INSERT INTO r_reserva_vuelo VALUES
(1, 'FR1104'),
(2, 'FR1104'),
(3, 'BA8484'),
(4, 'BA8484'),
(5, 'U21004'),
(6, 'FR1105'),
(6, 'U22019');
