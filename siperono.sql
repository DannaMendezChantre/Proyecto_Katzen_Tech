CREATE TABLE anticipos (
  fk_pk_n_factura int(11) NOT NULL,
  fk_pk_cod_producto int(11) NOT NULL,
  cantidad_prod int(11) NOT NULL,
  valor_prod_cant double NOT NULL,
  PRIMARY KEY (fk_pk_n_factura, fk_pk_cod_producto)
);

CREATE TABLE dotaciones (
  Codigo int(11) NOT NULL,
  Dotacion varchar(10) NOT NULL,
  Talla varchar(10) NOT NULL,
  Color varchar(10) NOT NULL,
  Sexo varchar(10) NOT NULL,
  Especificaciones varchar(100) NOT NULL,
  PRIMARY KEY (Codigo)
);

CREATE TABLE facturas (
  N_Factura int(11) PRIMARY KEY NOT NULL,
  Fecha_Factura date NOT NULL,
  Total_Factura double NOT NULL
);

CREATE TABLE productos (
  Codigo int(11) NOT NULL,
  Categoria varchar(100) NOT NULL,
  Nombre_Producto varchar(100) NOT NULL,
  Valor_UNI int(11) NOT NULL,
  Cantidad int(11) NOT NULL,
  Imagen varchar(2) NOT NULL,
  Stock_Maximo int(11) NOT NULL,
  Stock_Minimo int(11) NOT NULL,
  PRIMARY KEY (Codigo)
);

ALTER TABLE anticipos
ADD FOREIGN KEY (fk_pk_n_factura)
REFERENCES facturas (N_Factura);

ALTER TABLE anticipos
ADD FOREIGN KEY (fk_pk_cod_producto)
REFERENCES productos (Codigo);

