CREATE DATABASE INVENTARIO;
USE INVENTARIO;

CREATE TABLE  Cliente (
  idCliente VARCHAR(5) NOT NULL,
  Nombre VARCHAR(30) NULL,
  Apellido VARCHAR(30) NULL,
  TipDocumento VARCHAR(10) NULL,
  Telefono INT NULL,
  PRIMARY KEY (idCliente))
ENGINE = InnoDB;


CREATE TABLE  cargo (
  idcargo VARCHAR(5) NOT NULL,
  Nomcargo VARCHAR(45) NULL,
  PRIMARY KEY (idcargo))
ENGINE = InnoDB;

CREATE TABLE  Personal (
  idPersonal VARCHAR(5) NOT NULL,
  Nombre VARCHAR(30) NULL,
  apellido VARCHAR(30) NULL,
  email VARCHAR(45) NULL,
  estado VARCHAR(15) NULL,
  usuario VARCHAR(15) NULL,
  contraseña VARCHAR(45) NULL,
  cargo_idcargo VARCHAR(5) NOT NULL,
  Personal_idPersonal VARCHAR(5) NOT NULL,
  Personal_cargo_idcargo VARCHAR(5) NOT NULL,
  PRIMARY KEY (idPersonal)
    );

CREATE TABLE  IVA (
  idIVA VARCHAR(5) NOT NULL,
  IVA INT NULL,
  PRIMARY KEY (idIVA))
ENGINE = InnoDB;


CREATE TABLE  Productos (
  idProductos VARCHAR(5) NOT NULL,
  Nomproducto VARCHAR(30) NULL,
  categoria VARCHAR(15) NULL,
  unidad_medida VARCHAR(25) NULL,
  unidad VARCHAR(25) NULL,
  valor DECIMAL(5,2) NULL,
  estado VARCHAR(15) NULL,
  IVA_idIVA VARCHAR(5) NOT NULL,
  FK_Categoria  VARCHAR(5) NOT NULL,
  FK_Imagen  VARCHAR(5) NOT NULL,
  PRIMARY KEY (idProductos)
    
);

CREATE TABLE Categoria (
idcategoria VARCHAR(5) NOT NULL,
NombreCategoria varchar (15),
PRIMARY KEY (idcategoria)
);

CREATE TABLE Imagen (
idImagen VARCHAR(5) NOT NULL,
NombreImagen Varchar (15),
Ruta VARCHAR (150),
PRIMARY KEY (IdImagen)
);

CREATE TABLE Factura (
  idFactura VARCHAR(5) NOT NULL,
  Fecha DATE NULL,
  Cantidad INT NULL,
  Cliente_idCliente VARCHAR(5) NOT NULL,
  Personal_idPersonal VARCHAR(5) NOT NULL,
  Productos_idProductos VARCHAR(5) NOT NULL,
  PRIMARY KEY (idFactura)
);



CREATE TABLE  TipoMov (
  idTipoMov VARCHAR(5) NOT NULL,
  NomMov VARCHAR(10) NULL,
  PRIMARY KEY (idTipoMov)
  )ENGINE = InnoDB;


CREATE TABLE  Inventario (
  idInventario VARCHAR(5) NOT NULL,
  fecha DATE NULL,
  cantidad INT NULL,
  val_unitario DECIMAL(5,2) NULL,
  val_total DECIMAL(5,2) NULL,
  Productos_idProductos VARCHAR(5) NOT NULL,
  TipoMov_idTipoMov VARCHAR(5) NOT NULL,
  PRIMARY KEY (idInventario)
    
    );

CREATE TABLE  Detalle_reporte (
  Factura_idFactura VARCHAR(5) NOT NULL,
  Inventario_idInventario VARCHAR(5) NOT NULL,
  PRIMARY KEY (Factura_idFactura, Inventario_idInventario)
   );

-- alter table Personal
-- ADD FOREIGN KEY (cargo_idcargo ) REFERENCES cargo (idcargo);

-- alter table Personal
-- ADD FOREIGN KEY (Personal_idPersonal )
--     REFERENCES Personal (idPersonal);
    
--     alter table Productos
-- ADD FOREIGN KEY (IVA_idIVA) REFERENCES IVA (idIVA);
    
--     alter table Factura
-- ADD FOREIGN KEY (Cliente_idCliente) REFERENCES Cliente (idCliente);

--  alter table Factura
-- ADD FOREIGN KEY (Personal_idPersonal) REFERENCES Personal (idPersonal);

--  alter table Factura
-- ADD FOREIGN KEY (Productos_idProductos) REFERENCES Productos (idProductos);

-- alter table Inventario 
-- ADD FOREIGN KEY (Productos_idProductos) REFERENCES Productos (idProductos);

-- alter table Inventario 
-- ADD FOREIGN KEY (TipoMov_idTipoMov) REFERENCES TipoMov (idTipoMov);

-- alter table Detalle_reporte 
-- ADD FOREIGN KEY (Factura_idFactura) REFERENCES Factura (idFactura);

-- alter table Detalle_reporte 
-- ADD FOREIGN KEY (Inventario_idInventario) REFERENCES Inventario (idInventario);

-- alter table Productos 
-- ADD FOREIGN KEY (FK_Categoria) REFERENCES Categoria (idcategoria);

-- alter table Productos 
-- ADD FOREIGN KEY (FK_Imagen) REFERENCES Imagen (IdImagen);

-- alter table personal
-- rename Usuario;

-- alter table Usuario 
-- change column idPersonal idUsuario varchar(5);

-- alter table Usuario
-- drop  Personal_cargo_idcargo;

-- alter table Usuario
-- drop column usuario;