CREATE DATABASE computer_advance;

USE computer_advance;

CREATE TABLE cart (
  idv int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  user_id int(11) NOT NULL,
  idprod int(11) NOT NULL,
  name text NOT NULL,
  price decimal(10,2) NOT NULL,
  quantity int(11) NOT NULL
);

CREATE TABLE cart_purchase (
  idcpr int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  user_id int(11) NOT NULL,
  idprod int(11) NOT NULL,
  name text NOT NULL,
  price decimal(10,2) NOT NULL,
  quantity int(11) NOT NULL
);

CREATE TABLE categoria (
  idcate int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nocate varchar(100) NOT NULL,
  state char(1) NOT NULL,
  fere timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
);

CREATE TABLE clientes (
  idusu int(11) NOT NULL,
  tipd varchar(25) NOT NULL,
  nudoc char(8) NOT NULL PRIMARY KEY,
  nocl varchar(35) NOT NULL,
  telfcl char(9) NOT NULL,
  state char(1) NOT NULL,
  fere timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
);

CREATE TABLE marca (
  idmar int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nomarc text NOT NULL,
  state char(1) NOT NULL,
  fere timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
);

CREATE TABLE orders (
  idord int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  clien_numdoc char(8) NOT NULL,
  nomcl text NOT NULL,
  method varchar(50) NOT NULL,
  total_products text NOT NULL,
  total_price decimal(10,2) NOT NULL,
  placed_on varchar(15) NOT NULL,
  payment_status varchar(20) NOT NULL,
  tipc varchar(15) NOT NULL
);

CREATE TABLE orders_purchase (
  idordpur int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  user_id int(11) NOT NULL,
  idprov int(11) NOT NULL,
  method varchar(50) NOT NULL,
  total_products text NOT NULL,
  total_price decimal(10,2) NOT NULL,
  placed_on varchar(15) NOT NULL,
  payment_status varchar(20) NOT NULL,
  tipc varchar(15) NOT NULL
);

CREATE TABLE productos (
  idprod int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  codpro char(14) NOT NULL,
  nomprd text NOT NULL,
  desprd text NOT NULL,
  foto varchar(255) NOT NULL,
  precio decimal(10,2) NOT NULL,
  stock char(3) NOT NULL,
  idmar int(11) NOT NULL,
  idcate int(11) NOT NULL,
  state char(1) NOT NULL,
  fere timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
);

CREATE TABLE proveedores (
  idprov int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  idusu int(11) NOT NULL,
  rucprv char(11) NOT NULL,
  nomprv text NOT NULL,
  corrprv varchar(35) NOT NULL,
  state char(1) NOT NULL,
  fere timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
);

CREATE TABLE usuarios (
  id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nombre varchar(35) NOT NULL,
  username varchar(25) NOT NULL,
  correo varchar(35) NOT NULL,
  password varchar(255) NOT NULL,
  rol char(1) NOT NULL,
  fere timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  state char(1) NOT NULL
);


ALTER TABLE productos
ADD FOREIGN KEY (idcate)
REFERENCES categoria (idcate);

ALTER TABLE productos
ADD FOREIGN KEY (idmar)
REFERENCES marca (idmar);

ALTER TABLE cart_purchase
ADD FOREIGN KEY (idprod)
REFERENCES productos (idprod);

ALTER TABLE cart
ADD FOREIGN KEY (idprod)
REFERENCES productos (idprod);

ALTER TABLE cart_purchase
ADD FOREIGN KEY (user_id)
REFERENCES usuarios (id);

ALTER TABLE cart
ADD FOREIGN KEY (user_id)
REFERENCES usuarios (id);

ALTER TABLE clientes
ADD FOREIGN KEY (idusu)
REFERENCES usuarios (id);

ALTER TABLE proveedores
ADD FOREIGN KEY (idusu)
REFERENCES usuarios (id);

ALTER TABLE orders_purchase
ADD FOREIGN KEY (idprov)
REFERENCES proveedores (idprov);

ALTER TABLE orders
ADD FOREIGN KEY (clien_numdoc)
REFERENCES clientes (nudoc);