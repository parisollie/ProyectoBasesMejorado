//Se usa
// Clases para buscar los Id
package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
//Metódo para mantenimiento dentro de nuestra base de datos

public class INVENTARIODAO implements CRUD {

    Connection con;
    Inv in = new Inv();
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;
    //Cliente co=new Cliente();
    int r = 0;
   //Se usa en InventarioForm
    @Override
    public List listar() {

        List<Inv> lista = new ArrayList<>();
        String sql = "select * from inventario";//Consulra para cliente
        try {
            con = cn.Conectar();
            ps = con.prepareStatement(sql);//Consulta sql
            rs = ps.executeQuery();//Ejecuta la onsulta
            while (rs.next()) {
                Inv c = new Inv();

                c.setIdc(rs.getInt(1));
                c.setCod(rs.getInt(2));
                c.setIp(rs.getInt(3));
                c.setPc(rs.getDouble(4));
                c.setPl(rs.getDouble(5));
                c.setFecha(rs.getString(6));
                c.setStock(rs.getInt(7));
                lista.add(c);//los agregamos dentro de la lists con e parametro c ...clientes
            }
        } catch (Exception e) {

        }
        return lista;
    }
    //Agregamos a producto en bases
    //Se usa en InventarioForm
    @Override
    public int add(Object[] o) {
        int r = 0;
        String sql = "insert into inventario(CB, IdPro,PreCom,PreVen,Fecha,Stock)values(?,?,?,?,?,?)";
        //String sql = "insert into producto(IdCategoria,IdProv,Marca,Descripcion,Precio)values(?,?,?,?,?)";

        try {
            con = cn.Conectar();
            ps = con.prepareStatement(sql);//la consulta sql
            ps.setObject(1, o[0]);//Enviamos los datos posicion 0
            ps.setObject(2, o[1]);
            ps.setObject(3, o[2]);
            ps.setObject(4, o[3]);
            ps.setObject(5, o[4]);
            ps.setObject(6, o[5]);

            r = ps.executeUpdate();//actualizar
        } catch (Exception e) {
        }
        return r;
    }

    public int GuardarVentas(Inv v) {
        String sql = "insert into inventario(CB, IdPro,PreCom,PreVen,Fecha,Stock)values(?,?,?,?,?,?)";
        try {
            con = cn.Conectar();
            ps = con.prepareStatement(sql);//Lo conectamos con la consulta sql
            ps.setInt(1, v.getCod());
            ps.setInt(2, v.getIp());
            ps.setDouble(3, v.getPc());
            ps.setDouble(4, v.getPl());
            ps.setString(5, v.getFecha());
            ps.setInt(6, v.getStock());
            r = ps.executeUpdate();

        } catch (Exception e) {
        }
        return r;//Retornamos la respuesta
    }

    @Override
    public int actualizar(Object[] o) {
        int r = 0;
        String sql = "update inventario set CB=?,IdPro=?,PreCom=?,PreVen=?,Fecha=?,Stock=? where IDI=?";
        //String sql = "update cliente set Dni=?,Rs=?,Nombres=?,EdoCliente=?,ColCliente=?,CalleCliente=?,CpCliente=?,EmailCliente=? where IdCliente=?";//IdCliente=? ,que cliente borraremos
        try {
            con = cn.Conectar();
            ps = con.prepareStatement(sql);//la consulta sql
            ps.setObject(1, o[0]);//Enviamos los datos posicion 0
            ps.setObject(2, o[1]);
            ps.setObject(3, o[2]);
            ps.setObject(4, o[3]);
            ps.setObject(5, o[4]);
            ps.setObject(6, o[5]);
            ps.setObject(7, o[6]);

            r = ps.executeUpdate();//actualizar
        } catch (Exception e) {
        }
        return r;
    }

    @Override
    public void eliminar(int id) {
        String sql = "delete from inventario where IDI=?";//Recibimos todo el objeto
        try {
            con = cn.Conectar();
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

}
