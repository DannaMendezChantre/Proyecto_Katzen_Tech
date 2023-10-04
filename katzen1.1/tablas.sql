CREATE DATABASE sanbra1111;

USE sanbra1111;

CREATE TABLE usuario (
  id INT(11) AUTO_INCREMENT NOT NULL PRIMARY KEY,
  nombre VARCHAR(35) NOT NULL,
  nombreusuario VARCHAR(25) NOT NULL,
  correo VARCHAR(35) NOT NULL,
  contraseña VARCHAR(10) NOT NULL,
  fecha_registro DATE,
  estado char(1) NOT NULL
);

CREATE TABLE cliente (
  idcliente INT(11) AUTO_INCREMENT NOT NULL PRIMARY KEY,
  tipo_documento VARCHAR(30) NOT NULL,
  numero_documento INT(10) NOT NULL,
  nombre VARCHAR(40) NOT NULL,
  telefono INT(20) NOT NULL,
  estado CHAR(1) NOT NULL,
  direccion VARCHAR(100) NOT NULL,
  fecha_registro DATE NOT NULL
);


CREATE TABLE categoria (
  id_categoria INT(20) AUTO_INCREMENT NOT NULL PRIMARY KEY,
  nombre_categoria VARCHAR(100) NOT NULL,
  estado CHAR(1) NOT NULL,
  fecha_registro DATE NOT NULL
);

CREATE TABLE producto (
  id_producto int NOT NULL,
  codigo_producto INT(14) NOT NULL ,
  nombre_producto VARCHAR(50) NOT NULL,
  descripcion_producto VARCHAR(150) NOT NULL,
  foto VARCHAR(255) COLLATE utf8_unicode_ci NOT NULL,
  precio DECIMAL(10,2) NOT NULL,
  stock INT(3) NOT NULL,
  id_marca INT(20) NOT NULL,
  id_categoria INT(20) NOT NULL,
  modelo VARCHAR(20) NOT NULL,
  estado char(1) NOT NULL,
  fecha_registro DATE NOT NULL,
  PRIMARY KEY (id_producto, id_marca, id_categoria)
);

CREATE TABLE marca (
  id_marca INT(20) AUTO_INCREMENT NOT NULL PRIMARY KEY,
  nombre_marca VARCHAR(50) NOT NULL,
  estado INT(10) NOT NULL,
  fecha_registro DATE NOT NULL 
);

CREATE TABLE carrito (
  id_venta INT(20) AUTO_INCREMENT NOT NULL,
  id_cliente INT(20) NOT NULL,
  id_producto INT(20) NOT NULL,
  nombre_producto VARCHAR(50) NOT NULL,
  precio DECIMAL(10,2) NOT NULL,
  cantidad INT(100) NOT NULL,
  PRIMARY KEY (id_venta, id_usuario, id_producto)
);

CREATE TABLE pedido (
  id_pedido INT(20) AUTO_INCREMENT NOT NULL,
  id_cliente INT(20) NOT NULL,
  nombre_cliente VARCHAR(50) NOT NULL,
  metodo_pago VARCHAR(30) NOT NULL,
  total_productos TEXT NOT NULL,
  total_precio DECIMAL(10,2) NOT NULL,
  fecha_realizacion DATE NOT NULL,
  estado_pago INT(20) NOT NULL,
  PRIMARY KEY (id_pedido, id_usuario)
);




