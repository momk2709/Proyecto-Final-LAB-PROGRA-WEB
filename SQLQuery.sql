CREATE DATABASE Certificaciones;
 CREATE TABLE Usuarios (
  id INT PRIMARY KEY IDENTITY,
  nombre VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  password VARCHAR(50) NOT NULL,
  tipo_usuario INT NOT NULL
);
CREATE TABLE Inscripciones (
  id INT PRIMARY KEY IDENTITY,
  nombre VARCHAR(50) NOT NULL,
  curso VARCHAR(50) NOT NULL,
  fecha_inicio DATE NOT NULL,
  fecha_fin DATE NOT NULL,
  completado BIT NOT NULL
);
 CREATE TABLE Cursos (
  id INT PRIMARY KEY IDENTITY,
  nombre VARCHAR(50) NOT NULL,
  instructor VARCHAR(50) NOT NULL,
  categoria VARCHAR (50) NOT NULL,
  descripcion VARCHAR(255) NOT NULL,
  precio DECIMAL(10,2) NOT NULL,
  disponible BIT NOT NULL
);
 CREATE TABLE Facturas (
  id INT PRIMARY KEY IDENTITY,
  id_usuario INT NOT NULL,
  id_curso INT NOT NULL,
  fecha DATE NOT NULL,
  precio DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (id_usuario) REFERENCES Usuarios(id),
  FOREIGN KEY (id_curso) REFERENCES Cursos(id)
);
CREATE TABLE Instructores (
  id INT PRIMARY KEY IDENTITY,
  nombre VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  descripcion VARCHAR(255) NOT NULL,
  telefono VARCHAR(20) NOT NULL
);
CREATE TABLE Categorias (
  id INT PRIMARY KEY IDENTITY,
  nombre VARCHAR(50) NOT NULL,
  descripcion VARCHAR(255) NOT NULL
 );
 CREATE TABLE Sugerencias (
  id INT PRIMARY KEY IDENTITY,
  nombre VARCHAR(50) NOT NULL,
  curso VARCHAR(50) NOT NULL,
  fecha DATE NOT NULL,
  titulo VARCHAR (50) NOT NULL,
  contenido VARCHAR (255) NOT NULL
);
CREATE TABLE Informes (
  id INT PRIMARY KEY IDENTITY,
  nombre VARCHAR(50) NOT NULL,
  telefono VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  mensaje VARCHAR (50) NOT NULL
);
