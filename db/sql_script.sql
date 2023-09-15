DROP DATABASE IF EXISTS `reto_pasos`;

CREATE DATABASE `reto_pasos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;

USE `reto_pasos`;

DROP TABLE IF EXISTS `usuarios`

CREATE TABLE usuarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255) NOT NULL,
    correo VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);

DROP TABLE IF EXIST ´partidas´

CREATE TABLE partidas (
    id INT PRIMARY KEY,
    referencia VARCHAR(255) NOT NULL,
    semana INT,
    objetivo DECIMAL(10, 2),
    fecha_inicio DATE,
    fecha_fin DATE
);

DROP TABLE IF EXIST `registros`

CREATE TABLE registros (
    id INT PRIMARY KEY,
    id_usuario INT,
    pasos INT,
    fecha DATE,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id)
);

