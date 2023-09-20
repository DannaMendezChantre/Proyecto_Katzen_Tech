CREATE DATABASE sanbra;
USE sanbra;

CREATE TABLE administrador(
    Id_administrador INT NOT NULL PRIMARY KEY,
    Nombre VARCHAR (20) NOT NULL,
    Apellido VARCHAR (20) NOT NULL,
    Telefono INT NOT NULL,
    Usuario VARCHAR (20) NOT NULL,
    Correo VARCHAR (20) NOT NULL,
    Contraseña VARCHAR (20) NOT NULL
);

CREATE TABLE  tipo_documento (
    Tipo_documento INT NOT NULL PRIMARY KEY,
    Estado_documento BOOLEAN NOT NULL
);

CREATE TABLE rol (
    Id_rol INT NOT NULL PRIMARY KEY,
    Rol VARCHAR (20) NOT NULL
);

CREATE TABLE usuario (
    pk_fk_Tipo_documento INT NOT NULL ,
    Id_usuario INT NOT NULL,
    Nombre_empresa VARCHAR(30) NOT NULL,
    Telefono VARCHAR(10) NOT NULL,
    Direccion VARCHAR(20) NOT NULL,
    PRIMARY KEY (pk_fk_Tipo_documento, Id_usuario)
);

CREATE TABLE persona_roles(
    Usuario_Tipo_documento VARCHAR (10) NOT NULL,
    Usuario_Id INT NOT NULL PRIMARY KEY,
    Usuario_Rol INT NOT NULL,
    Estado_Rol BOOLEAN NOT NULL,
    PRIMARY KEY (Usuario_Tipo_documento, Usuario_Id, Usuario_Id_Rol)
);

CREATE TABLE proveedor(
    Tipo_documento_proveedor VARCHAR (10) NOT NULL,
    Id_proveedor INT NOT NULL,
    PRIMARY KEY (Tipo_documento_proveedor, Id_Proveedor)
);

CREATE TABLE cliente(
    Tipo_documento_cliente VARCHAR (10) NOT NULL,
    Id_cliente INT NOT NULL,
    PRIMARY KEY (Tipo_documento_cliente, Id_cliente)
);

CREATE TABLE factura_compra(
    Id_factura_compra INT PRIMARY KEY NOT NULL,
    Administrador_id VARCHAR (10) NOT NULL,
    Proveedor_Tipo_documento VARCHAR (10) NOT NULL,
    Proveedor_id INT NOT NULL
);

CREATE TABLE factura_venta(
    Id_factura_venta INT NOT NULL PRIMARY KEY,
    Administrador_id VARCHAR (10) NOT NULL,
    Cliente_Tipo_documento VARCHAR (10) NOT NULL,
    Cliente_id INT NOT NULL
);

CREATE TABLE factura(
    Id_factura INT PRIMARY KEY NOT NULL,
    Fecha_factura DATE NOT NULL,
    Total_factura DOUBLE NOT NULL
);

CREATE TABLE detalle_factura(
    fk_pk_Id_Factura INT NOT NULL,
    fk_pk_Id_Producto VARCHAR (10) NOT NULL,
    Cantidad_Producto INT NOT NULL,
    valor_producto_cantidad DOUBLE NOT NULL,
    PRIMARY KEY (fk_pk_Id_Factura, fk_pk_Id_Producto)
);

CREATE TABLE ingreso_producto (
    Id_producto INT NOT NULL PRIMARY KEY,
    fk_Nombre_categoria VARCHAR(20) NOT NULL,
    Nombre_producto VARCHAR(50) NOT NULL,
    Valor_UNI DECIMAL(20) NOT NULL,
    Cantidad INT NOT NULL,
    Descripcion VARCHAR (100) NOT NULL,
    Imagen VARCHAR(50) NOT NULL,
    Stock_Maximo INT NOT NULL,
    Stock_Minimo INT NOT NULL
);

CREATE TABLE categoria_producto (
    Nombre_categoria VARCHAR(10) NOT NULL PRIMARY KEY,
    Descripcion VARCHAR(50) NOT NULL
);

CREATE TABLE  anticipo(
    Id_anticipo INT NOT NULL,
    fk_pk_Id_factura INT NOT NULL,
    Valor_abono INT NOT NULL,
    Fecha_abono DATETIME NOT NULL,
    PRIMARY KEY ( Id_anticipo, fk_pk_Id_factura)
);

ALTER TABLE usuario
ADD FOREIGN KEY (pk_fk_Tipo_documento)
REFERENCES tipo_documento(Tipo_documento);

ALTER TABLE persona_roles
ADD FOREIGN KEY (Usuario_Tipo_documento, Usuario_Id)
REFERENCES usuario (pk_fk_Tipo_documento, Id_usuario);

ALTER TABLE persona_roles
ADD FOREIGN KEY (Usuario_Rol)
REFERENCES rol (Id_rol);

ALTER TABLE proveedor
ADD FOREIGN KEY (Tipo_documento_proveedor, Id_proveedor)
REFERENCES usuario (pk_fk_Tipo_documento, Id_usuario);

ALTER TABLE cliente
ADD FOREIGN KEY (Tipo_documento_cliente, Id_cliente)
REFERENCES usuario (pk_fk_Tipo_documento, Id_usuario);

ALTER TABLE factura_compra
ADD FOREIGN KEY (Proveedor_Tipo_documento, Proveedor_id)
REFERENCES proveedor (Tipo_documento_proveedor, Id_proveedor);

ALTER TABLE factura_compra
ADD FOREIGN KEY (Administrador_id)
REFERENCES administrador (Id_administrador);

ALTER TABLE factura_compra
ADD FOREIGN KEY (Id_factura_compra)
REFERENCES factura (Id_factura);

ALTER TABLE factura_venta
ADD FOREIGN KEY (Cliente_Tipo_documento, Cliente_id)
REFERENCES cliente (Tipo_documento_cliente, Id_cliente);

ALTER TABLE factura_venta
ADD FOREIGN KEY (Administrador_id)
REFERENCES administrador (Id_administrador);

ALTER TABLE factura_venta
ADD FOREIGN KEY (Id_factura_venta)
REFERENCES factura (Id_factura);

ALTER TABLE detalle_factura
ADD FOREIGN KEY (fk_pk_Id_Factura)
REFERENCES factura (Id_factura);

ALTER TABLE detalle_factura
ADD FOREIGN KEY (fk_pk_Id_Producto)
REFERENCES ingreso_producto (Id_producto);

ALTER TABLE ingreso_producto
ADD FOREIGN KEY (fk_Nombre_categoria)
REFERENCES categoria_producto (Nombre_categoria);

ALTER TABLE anticipo
ADD FOREIGN KEY (fk_pk_Id_factura)
REFERENCES factura (Id_factura);