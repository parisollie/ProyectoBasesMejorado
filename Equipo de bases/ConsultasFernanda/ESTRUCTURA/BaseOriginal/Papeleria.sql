--------------ESTRUCTURA BASE DE DATOS----------------------------------------------

CREATE TABLE PROVEEDOR(
    id_Prov serial, 
    rs_Prov varchar (80) not null, 
    nombre_Prov varchar (30) not null,
	apPat_Prov varchar (30) not null,
	apMat_Prov varchar (30) null,
	edo_Prov varchar (20) not null,
	col_Prov varchar(20) not null,
	calle_Prov varchar(15) not null,
	num_Prov int not null,
	cp_Prov int not null,
	CONSTRAINT "PK_PROVEEDOR" PRIMARY KEY (id_Prov)
);

CREATE TABLE TELEFONO(
	telefono int not null,
	id_Prov serial,
	UNIQUE (id_prov),
	CONSTRAINT "PK_TELEFONO" PRIMARY KEY (telefono),
	CONSTRAINT "FK_TELEFONO_PROVEEDOR" FOREIGN KEY (id_Prov)
	REFERENCES PROVEEDOR(id_Prov)
);



CREATE TABLE CLIENTE(
	id_Cliente serial,
	rs_Cliente varchar (80) not null,
    nombre_Cliente varchar (30) not null,
	apPat_Cliente varchar (30) not null,
	apMat_Cliente varchar (30) null,
	edo_Cliente varchar (30) not null,
	col_Cliente varchar(30) not null,
	calle_Cliente varchar (30) not null,
	num_Cliente int not null,
	cp_Cliente int not null,
	CONSTRAINT "PK_CLIENTE" PRIMARY KEY (id_cliente)
);

CREATE TABLE EMAIL(
	email varchar(50) not null, 
	id_Cliente serial,
	UNIQUE (id_Cliente),
	CONSTRAINT "PK_EMAIL" PRIMARY KEY (email),
	CONSTRAINT "FK_EMAIL_CLIENTE" FOREIGN KEY (id_Cliente)
	REFERENCES CLIENTE(id_Cliente)
);

--Creacion de indice
--CREATE INDEX Indice_Categoria on CATEGORIA(id_Categoria);

CREATE TABLE CATEGORIA (
	id_Categoria serial,
	nom_Categoria varchar (30),
	CONSTRAINT "PK_CATEGORIA" PRIMARY KEY (id_categoria)
);

CREATE TABLE PRODUCTO(
	id_Prod serial,
	id_Categoria serial,
	id_Prov int not null,
	marca varChar (60),
	descripcion varchar (30),
	precio numeric not null,
	CONSTRAINT "PK_PRODUCTO" PRIMARY KEY (id_Prod),
    CONSTRAINT "FK_PRODUCTO_CATEGORIA" FOREIGN KEY (id_Categoria)
	REFERENCES CATEGORIA(id_Categoria),
	CONSTRAINT "CK_PRECIO_PRODUCTO" CHECK (precio>0),
	CONSTRAINT "FK_PRODUCTO_PROVEEDOR" FOREIGN KEY (id_Prov)
	REFERENCES PROVEEDOR(id_Prov)
);


CREATE TABLE INVENTARIO(
	cod_Barras varchar(80) not null,
	id_Prod serial,
	precio_Compra numeric not null,
	precio_Venta numeric not null,
	fecha_Llegada date not null,
	stock int not null,
	UNIQUE (id_Prod),
	CONSTRAINT "PK_INVENTARIO" PRIMARY KEY (cod_Barras),
	--CONSTRAINT "CK_STOCK" CHECK (stock>3),
	CONSTRAINT "CK_PRECIO" CHECK (precio_Venta>0),
	CONSTRAINT "FK_PRODUCTO_INVENTARIO" FOREIGN KEY (id_Prod)
	REFERENCES PRODUCTO(id_Prod)
);




CREATE TABLE VENTA(
	id_Venta varchar(50),
	id_Cliente serial not null,
	fecha_Venta date not null,
	CONSTRAINT "PK_VENTA_DETALLES_CLIENTE" PRIMARY KEY (id_Venta),
	CONSTRAINT "FK_VENTA_DETALLES_CLIENTE" FOREIGN KEY (id_Cliente)
	REFERENCES CLIENTE(id_Cliente)
);

CREATE TABLE REGISTRAR(
	cod_Barras varchar(80) not null,
	id_Venta varchar(50) not null,
	precio_Venta numeric not null,
	cantidad int not null,
	pago numeric not null,
	CONSTRAINT "PK_REGISTRAR" PRIMARY KEY (id_Venta, cod_Barras),
	CONSTRAINT "FK_REGISTRAR_INVENTARIO" FOREIGN KEY(cod_Barras)
	REFERENCES INVENTARIO (cod_Barras),
	CONSTRAINT "FK_REGISTRAR_VENTA" FOREIGN KEY(id_Venta)
	REFERENCES VENTA (id_Venta)
 
);

CREATE TABLE REGISTRAR_PAGO(
	id_Venta varchar(50) not null,
	subtotal numeric not null,
	IVA numeric not null,
	total numeric not null,
	CONSTRAINT "PK_REGISTRAR_PAGO" PRIMARY KEY (id_Venta),
	CONSTRAINT "FK_REGISTRAR_PAGO_VENTA" FOREIGN KEY(id_Venta)
	REFERENCES VENTA (id_Venta)
);


