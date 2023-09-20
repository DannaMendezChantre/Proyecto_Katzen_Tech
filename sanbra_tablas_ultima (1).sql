CREATE DATABASE sanbra11;
USE sanbra11;

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
    Tipo_documento VARCHAR (40) NOT NULL PRIMARY KEY,
    Estado_documento BOOLEAN NOT NULL
);

CREATE TABLE cliente (
    pk_fk_Tipo_documento VARCHAR (40) NOT NULL ,
    Id_cliente INT NOT NULL,
    Numero_documento INT NOT NULL,
    Nombre_empresa VARCHAR(30) NOT NULL,
    Telefono VARCHAR(10) NOT NULL,
    Direccion VARCHAR(50) NOT NULL,
    PRIMARY KEY (pk_fk_Tipo_documento, Id_cliente)
);


CREATE TABLE factura(
    Id_factura INT PRIMARY KEY NOT NULL,
    Administrador_id INT NOT NULL,
    Cliente_id INT NOT NULL,
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
    fk_Nombre_categoria VARCHAR(50) NOT NULL,
    Nombre_producto VARCHAR(50) NOT NULL,
    Valor_UNI DECIMAL(20) NOT NULL,
    Cantidad INT NOT NULL,
    Descripcion VARCHAR (100) NOT NULL,
    Imagen VARCHAR(50) NOT NULL,
    Stock_Maximo INT NOT NULL,
    Stock_Minimo INT NOT NULL
);

CREATE TABLE categoria_producto (
    Nombre_categoria VARCHAR(50) NOT NULL PRIMARY KEY,
    Descripcion VARCHAR(50) NOT NULL
);

CREATE TABLE  anticipo(
    Id_anticipo INT NOT NULL,
    fk_pk_Id_factura INT NOT NULL,
    Valor_abono INT NOT NULL,
    Fecha_abono DATE NOT NULL,
    PRIMARY KEY ( Id_anticipo, fk_pk_Id_factura)
);

ALTER TABLE cliente
ADD FOREIGN KEY (pk_fk_Tipo_documento)
REFERENCES tipo_documento(Tipo_documento);


ALTER TABLE factura
ADD FOREIGN KEY (Cliente_id)
REFERENCES cliente (Id_cliente);

ALTER TABLE factura
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