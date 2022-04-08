------------------------------------------------------------------------------------------------------------------------------------------
/*Utilidad*/
CREATE PROCEDURE producto_one(codigoB varchar)
BEGIN
SELECT cod_Barras, precio_Compra, precio_Venta, sum(precio_Venta) - sum(precio_Compra) AS Utilidad
FROM Inventario I
GROUP BY cod_Barras, precio_Compra, precio_Venta
HAVING I.cod_Barras=codigoB
END;

------------------------------------------------------------------------------------------------------------------------------------------

/*CANTIDAD DE VENTAS FECHA : FORMATO AAAAMMDD*/

CREATE PROCEDURE producto_one(fechaInicio varchar,fechaFin varchar)
BEGIN
SELECT SUM(R.cantidad) as CantidadProductosVendidos
FROM Venta V
	INNER JOIN Registrar R ON R.id_Venta=v.id_Venta
WHERE fecha_Venta between fechaIncio and fechaFin
END;


/*EJEMPLO DE FORMATO DE LA FECHA


SELECT SUM(R.cantidad) as CantidadProductosVendidos
FROM Venta V
	INNER JOIN Registrar R ON R.id_Venta=v.id_Venta
WHERE fecha_Venta between '20150824' and '20200402';

*/

------------------------------------------------------------------------------------------------------------------------------------------

/*MENOS DE 3 EN STOCK*/

--Se debe llamar al crearse una venta


CREATE PROCEDURE producto_one()
BEGIN
SELECT I.stock, P.descripcion
FROM Inventario I
	INNER JOIN Producto P ON P.id_Prod=I.id_Prod
WHERE I.stock<3;
END;

------------------------------------------------------------------------------------------------------------------------------------------
