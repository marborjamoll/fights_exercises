-- Active: 1704637861352@@127.0.0.1@5432@flights
-- CREATE DATABASE
CREATE DATABASE flights;

-- CAMBIAR A LA NUEVA BBDD CREADA
CREATE TABLE persona (
    dni CHAR(9) PRIMARY KEY,
    nombre NAME,
    apellidos NAME,
    fecha_nacimiento DATE
);

CREATE TABLE reserva (
    id SERIAL PRIMARY KEY,
    fecha DATE,
    hora TIME,
    persona_id CHAR(9) REFERENCES persona(dni)
);

CREATE TABLE viajan (
    persona_id CHAR(9) REFERENCES persona(dni),
    reserva_id INT REFERENCES reserva(id)
);
ALTER TABLE viajan 
ADD PRIMARY KEY (persona_id, reserva_id);

CREATE TABLE pais (
    id SERIAL PRIMARY KEY,
    pais NAME
);

CREATE TABLE ciudad (
    id SERIAL PRIMARY KEY,
    ciudad NAME,
    pais_id INT REFERENCES pais(id)
);

CREATE TABLE avion (
    id SERIAL PRIMARY KEY,
    fecha_estreno DATE,
    modelo NAME,
    capacidad SMALLINT
);

CREATE TABLE compania (
    id SERIAL PRIMARY KEY,
    compania NAME, 
    pais_id INT REFERENCES pais(id)
);

CREATE TABLE aeropuerto (
    id CHAR(3) PRIMARY KEY,
    nombre NAME,
    ciudad_id INT REFERENCES ciudad(id)
);

CREATE TABLE vuelo (
    id CHAR(8) PRIMARY KEY,
    fecha DATE,
    hora TIME,
    avion_id INT REFERENCES avion(id),
    compania_id INT REFERENCES compania(id),
    origen_id CHAR(3) REFERENCES aeropuerto(id),
    destino_id CHAR(3) REFERENCES aeropuerto(id)
);

CREATE TABLE r_reserva_vuelo (
    reserva_id INT REFERENCES reserva(id),
    vuelo_id CHAR(8) REFERENCES vuelo(id),
    PRIMARY KEY(reserva_id, vuelo_id)
);