//Se usa y listo
package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;
//Metódo para mantenimiento dentro de nuestra base de datos

public class ProductoDAO implements CRUD {

    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;
    Proveedor co = new Proveedor();
    Producto pro = new Producto();
    int r = 0;

    //Se usa en InventarioForm
    //Metódo para buscar al proveedor
    //public List listarID(){
    public Producto listarID(int id) {// Necesitamos el Dni para buscar al cliente
        Producto c = new Producto();
        String sql = "select * from producto where IdProducto=?";// Buscamos  en la tabla cliente el Dni
        try {
            con = cn.Conectar();
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();// ejecutamos la consulta

            while (rs.next()) { // Para ir buscando

                c.setId(rs.getInt(1));
                c.setIdc(rs.getInt(2));
                c.setIp(rs.getInt(3));
                c.setMarca(rs.getString(4));
                c.setDescripcion(rs.getString(5));
                c.setPrecio(rs.getDouble(6));

            }
        } catch (Exception e) {
        }
        return c;// Retornamos al obejto
    }

    //Se usa en ProductoForm
    @Override
    public List listar() {
        List<Producto> lista = new ArrayList<>();
        String sql = "select * from producto";//Consulra para cliente
        try {
            con = cn.Conectar();
            ps = con.prepareStatement(sql);//Consulta sql
            rs = ps.executeQuery();//Ejecuta la onsulta
            while (rs.next()) {
                Producto c = new Producto();

                c.setId(rs.getInt(1));
                c.setIdc(rs.getInt(2));
                c.setIp(rs.getInt(3));
                c.setMarca(rs.getString(4));
                c.setDescripcion(rs.getString(5));
                c.setPrecio(rs.getDouble(6));
                lista.add(c);//los agregamos dentro de la lists con e parametro c ...clientes
            }
        } catch (Exception e) {

        }
        return lista;
    }


    @Override
    public int actualizar(Object[] o) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int add(Object[] o) {

        throw new UnsupportedOperationException("Not supported yet.");
    }
    //Se usa en ProductoForm
    @Override
    public void eliminar(int id) {
        String sql = "delete from producto where IdProducto=?";//Recibimos todo el objeto
        try {
            con = cn.Conectar();
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

}
