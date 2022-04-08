----------------------ESTRUCTURA BASE DE DATOS---------------------------------

/*ALMACENAMIENTO DE DATOS DE PERSONAS (PROVEEDORES,CLIENTES, VENDEDORES)*/

CREATE TABLE PROVEEDOR(
    id_Prov serial,
    rs_Prov varchar (80) not null, 
    nombre_Prov varchar (30) not null,
	apPat_Prov varchar (30) not null,
	apMat_Prov varchar (30) null,
	edo_Prov varchar (30) not null,
	col_Prov varchar(30) not null,
	calle_Prov varchar(30) not null,
	num_Prov varchar(30) not null,
	cp_Prov int not null,
	CONSTRAINT "PK_PROVEEDOR" PRIMARY KEY (id_Prov)
);
/*Se registra el teléfono de proveedores en una nueva tabla, 
con la finalidad de evitar campos multivaluados, dado que se
puede almacenar más de un campo*/

CREATE TABLE TELEFONO_PROV(
	telefono int not null,
	id_Prov serial,
	UNIQUE (id_prov),
	CONSTRAINT "PK_TELEFONO_PROV" PRIMARY KEY (telefono),
	CONSTRAINT "FK_TELEFONO_PROVEEDOR" FOREIGN KEY (id_Prov)
	REFERENCES PROVEEDOR(id_Prov)
);

--------------------------------------------------------------------------------
CREATE TABLE CLIENTE(
	id_Cliente serial,
	rs_Cliente varchar (80) not null,
    nombre_Cliente varchar (30) not null,
	apPat_Cliente varchar (30) not null,
	apMat_Cliente varchar (30) null,
	edo_Cliente varchar (30) not null,
	col_Cliente varchar(30) not null,
	calle_Cliente varchar (30) not null,
	num_Cliente varchar(30) not null,
	cp_Cliente int not null,
	CONSTRAINT "PK_CLIENTE" PRIMARY KEY (id_cliente)
);

/*Se registra el email de clientes en una nueva tabla, 
con la finalidad de evitar campos multivaluados (Se almacena al menos
uno, con la restricción de no aceptar registros nulos, pero pueden
ser más.*/
CREATE TABLE EMAIL(
	email varchar(50) not null, 
	id_Cliente serial,
	UNIQUE (id_Cliente),
	CONSTRAINT "PK_EMAIL" PRIMARY KEY (email),
	CONSTRAINT "FK_EMAIL_CLIENTE" FOREIGN KEY (id_Cliente)
	REFERENCES CLIENTE(id_Cliente)
);

--------------------------------------------------------------------------------

CREATE TABLE VENDEDOR(
	id_Vendedor serial,
    nombre_Vendedor varchar (30) not null,
	apPat_Vendedor varchar (30) not null,
	apMat_Vendedor varchar (30) null,
	edo_Vendedor varchar (30) not null,
	col_Vendedor varchar(30) not null,
	calle_Vendedor varchar (30) not null,
	num_Vendedor varchar(30) not null,
	cp_Vendedor int not null,
	CONSTRAINT "PK_VENDEDOR" PRIMARY KEY (id_Vendedor)
);

/*Se registra el teléfono de proveedores en una nueva tabla, 
con la finalidad de evitar campos multivaluados, dado que se
puede almacenar más de un campo*/


CREATE TABLE TELEFONO_VEND(
	telefono int not null,
	id_Vendedor serial,
	UNIQUE (id_Vendedor ),
	CONSTRAINT "PK_TELEFONO_VEN" PRIMARY KEY (telefono),
	CONSTRAINT "FK_TELEFONO_VENDEDOR" FOREIGN KEY (id_Vendedor )
	REFERENCES VENDEDOR(id_Vendedor)
);

--------------------------------------------------------------------------------

/*ALMACENAMIENTO DE INFORMACIÓN RELACIONADA A LOS PRODUCCTOS*/


--Creacion de indice
--CREATE INDEX Indice_Categoria on CATEGORIA(id_Categoria);

CREATE TABLE CATEGORIA (
	id_Categoria serial,
	nom_Categoria varchar (30),
	CONSTRAINT "PK_CATEGORIA" PRIMARY KEY (id_categoria)
);

CREATE TABLE PRODUCTO(
	id_Prod serial,
	id_Categoria int not null,--serial,
	id_Prov int not null,--serial,
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

/*Almacena información de los productos, relacionada a la compra al proveedor.

Así mismo se asigna un codigo de barras por producto y el precio de venta al cliente.

Por otra parte tenemos el atributo stock que nos permite tener un control sobre 
la cantidad de productos que hay almacenados, de esta forma, es volátil y cambia
con respecto a las ventas realizadas.*/

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



--------------------------------------------------------------------------------

/*ALMACENAMIENTO DE INFORMACIÓN RELACIONADA A LAS VENTAS DE LOS PRODCUTOS*/


CREATE TABLE VENTA(
	id_Venta varchar(50),
	id_Cliente serial,
	id_Vendedor int not null,
	fecha_Venta date not null,
	CONSTRAINT "PK_VENTA" PRIMARY KEY (id_Venta),
	CONSTRAINT "FK_VENTA_CLIENTE" FOREIGN KEY (id_Cliente)
	REFERENCES CLIENTE(id_Cliente),
	CONSTRAINT "FK_VENTA_VENDEDOR" FOREIGN KEY (id_Vendedor)
	REFERENCES VENDEDOR(id_Vendedor)
);

/*La tabla registrar, tiene una llave primaria compuesta, esto con la 
finalidad de almacenar más de 1 producto en 1 venta. 
Con la estructura de la siguiente tabla, podemos almacenar la cantidad de 
productos del mismo tipo, para tener el total de pago por producto.*/

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

/*La tabla registrar_pago, nos permite almacenar información del pago por venta realizada.*/


CREATE TABLE REGISTRAR_PAGO(
	id_Venta varchar(50) not null,
	subtotal numeric not null,
	IVA numeric not null,
	total numeric not null,
	CONSTRAINT "PK_REGISTRAR_PAGO" PRIMARY KEY (id_Venta),
	CONSTRAINT "FK_REGISTRAR_PAGO_VENTA" FOREIGN KEY(id_Venta)
	REFERENCES VENTA (id_Venta)
);


