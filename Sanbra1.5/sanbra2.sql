CREATE DATABASE sanbra2;
USE sanbra2;

CREATE TABLE clientes (
    Id_Cliente INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Nombre_Empresa VARCHAR(50) NOT NULL,
    Telefono VARCHAR(10) NOT NULL,
    Direccion VARCHAR(20) NOT NULL
);

CREATE TABLE proveedores (
    Id_Proveedor INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Nombre_Empresa VARCHAR(50) NOT NULL,
    Telefono VARCHAR(10) NOT NULL,
    Direccion VARCHAR(205) NOT NULL
);

CREATE TABLE productos (
    Codigo_Productos INT PRIMARY KEY NOT NULL,
    Categoria VARCHAR(20) NOT NULL,
    Nombre_Producto VARCHAR(50) NOT NULL,
    Valor_UNI DECIMAL(20) NOT NULL,
    Cantidad INT NOT NULL,
    Imagen VARCHAR(50) NOT NULL,
    Stock_Maximo INT NOT NULL,
    Stock_Minimo INT NOT NULL
);

CREATE TABLE facturas (
    Id_Factura INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    fk_Id_Cliente INT NOT NULL,
    Fecha_Factura DATE NOT NULL,
    Total_Factura DECIMAL(10) NOT NULL
);

CREATE TABLE anticipos (
    pk_N_factura INT NOT NULL,
    fk_pk_Cod_Producto INT NOT NULL,
    Cantidad_Prod INT NOT NULL,
    Valor_Prod_Cant DECIMAL(10) NOT NULL,
    PRIMARY KEY (pk_N_factura, fk_pk_Cod_Producto)
);


CREATE TABLE dotaciones (
    Codigo INT AUTO_INCREMENT NOT NULL,
    fk_pk_Id_Cliente INT NOT NULL,
    fk_pk_Id_Proveedor INT NOT NULL,
    Tipo_Dotacion VARCHAR(50) NOT NULL,
    Talla VARCHAR(10) NOT NULL,
    Color VARCHAR(20) NOT NULL,
    Sexo VARCHAR(10) NOT NULL,
    Especificaciones TEXT NOT NULL,
    PRIMARY KEY (Codigo, fk_pk_Id_Cliente, fk_pk_Id_Proveedor)
);

ALTER TABLE dotaciones
ADD FOREIGN KEY (fk_pk_Id_Cliente)
REFERENCES clientes (Id_Cliente);

ALTER TABLE dotaciones
ADD FOREIGN KEY (fk_pk_Id_Proveedor)
REFERENCES proveedores (Id_Proveedor);

ALTER TABLE anticipos
ADD FOREIGN KEY (pk_N_factura)
REFERENCES facturas (Id_Factura);

ALTER TABLE anticipos
ADD FOREIGN KEY (fk_pk_Cod_Producto)
REFERENCES productos (Codigo_Productos);

ALTER TABLE facturas
ADD FOREIGN KEY (fk_Id_Cliente)
REFERENCES clientes (Id_Cliente);