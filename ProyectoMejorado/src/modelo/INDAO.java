//Se usa
package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class INDAO {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r=0;
    //Se usa en REGISTERFORM
      public int actualizarStock(int cant, int stock){
       String sql="update inventario set Stock=? where CB=?"; // Consultamos el del producto
       try {
           con=cn.Conectar(); // La clase conexion
           ps=con.prepareStatement(sql);
           ps.setInt(1, cant);
           ps.setInt(2, stock);
           ps.executeUpdate();
       } catch (Exception e) {
       }
       return r;
   }
    //Se usa en REGISTERFORM
     public Inv listarID(int id){
        Inv p=new Inv();
        String sql="select * from inventario where CB=?";
        try {
            con=cn.Conectar();// Conectamos la base
            ps=con.prepareStatement(sql);// Consultamos con la base de datos
            ps.setInt(1, id);// 1 es la columna de nuestra base datos producto
            rs=ps.executeQuery();
            while (rs.next()) { //Recorremos toda la tabla
                p.setIdc(rs.getInt(1));
                p.setCod(rs.getInt(2));
                p.setIp(rs.getInt(3));
                
                p.setPc(rs.getDouble(4));
                p.setPl(rs.getDouble(5));
               
                p.setFecha(rs.getString(6));
                p.setStock(rs.getInt(7));
                
            }
        } catch (Exception e) {
        }
        return p;//retornamos al objeto producto
    }
    
    //Metodo para generar el id ventas
    public String IdVentas(){
        String idv="";
        String sql="select max(IdVentas) from ventas";// Max es para saber el maximo que tenemos en IdVentas
        try {
            con=cn.Conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();// Consultamos la base de datos
            while (rs.next()) {
                idv=rs.getString(1);//idventas en la posicion 1
            }
        } catch (Exception e) {
        }
        return idv;//Retornamos el id ventas
    }
    public int GuardarVentas(Inv v){       
        String sql="insert into inventario(CB, IdPro,PreCom,PreVen,Fecha,Stock)values(?,?,?,?,?,?)";
        try {
            con=cn.Conectar();
            ps=con.prepareStatement(sql);//Lo conectamos con la consulta sql
            ps.setInt(1, v.getCod());
            ps.setInt(2, v.getIp());
            ps.setDouble(3, v.getPc());
            ps.setDouble(4, v.getPl());
            ps.setString(5, v.getFecha());
            ps.setInt(6, v.getStock());
            r=ps.executeUpdate();
            
        } catch (Exception e) {
        }
         return r;//Retornamos la respuesta
    }
    //Se usa en InventarioForm
    public int actualizar(Inv in) {
        //String sql = "update producto set Nombres=?,Precio=?,Stock=?,Estado=? where IdProducto=?";
         String sql = "update inventario set CB=?,IdPro=?,PreCom=?,PreVen=?,Fecha=?,Stock=? where IDI=?";
        try {
            con = cn.Conectar();
            ps = con.prepareStatement(sql);
            
            ps.setInt(1, in.getCod());
            ps.setInt(2, in.getIp());
            ps.setDouble(3, in.getPc());
            ps.setDouble(4, in.getPl());
            ps.setString(5, in.getFecha());
            ps.setInt(6, in.getStock());
            ps.setInt(7, in.getIdc());
            
            r=ps.executeUpdate();
            
        } catch (Exception e) {
        }
        return r;
    }
    //Se usa en VentasForm
    public int actualizarventas(Ventas in) {
        //String sql = "update producto set Nombres=?,Precio=?,Stock=?,Estado=? where IdProducto=?";
         String sql = "update venta set IdCliente=?,IdVendedor=?,Fecha=? where IdVenta=?";
        try {
            con = cn.Conectar();
            ps = con.prepareStatement(sql);
            
            ps.setInt(1, in.getCl());
            ps.setInt(2, in.getVendedor());
            ps.setString(3, in.getFeha());
            ps.setInt(4, in.getVn());

            r=ps.executeUpdate();
            
        } catch (Exception e) {
        }
        return r;
    }
    //Se usa en REFORM
     public int actualizarReg(Registro in) {
        //String sql = "update producto set Nombres=?,Precio=?,Stock=?,Estado=? where IdProducto=?";
         String sql = "update registrarpago set IdVenta=?,SubTotal=?,IVA=?,Total=? where IdReg=?";
        try {
            con = cn.Conectar();
            ps = con.prepareStatement(sql);
            
            ps.setInt(1, in.getIdv());
            ps.setDouble(2, in.getSub());
            ps.setDouble(3, in.getIva());
            ps.setDouble(4, in.getTotal());
            ps.setInt(5, in.getReg());

            r=ps.executeUpdate();
            
        } catch (Exception e) {
        }
        return r;
    }
     
     public int actualizarReg2(RV in) {
        //String sql = "update producto set Nombres=?,Precio=?,Stock=?,Estado=? where IdProducto=?";
         String sql = "update registrar set CodBarras=?,IdVentas=?,PrecioVenta=?,Cantidad=?,Pago=? where IdRegistro=?";
        try {
            con = cn.Conectar();
            ps = con.prepareStatement(sql);
            
            ps.setInt(1, in.getCod());
            ps.setInt(2, in.getIdv());
            ps.setDouble(3, in.getPv());
            ps.setInt(4, in.getCan());
            ps.setDouble(5, in.getTot());
            ps.setInt(6, in.getReg());

            r=ps.executeUpdate();
            
        } catch (Exception e) {
        }
        return r;
    }
    //Se usa en InventarioForm
    public void eliminar(int id) {
         String sql="delete from inventario where IDI=?";//Recibimos todo el objeto
        try {
            con=cn.Conectar();
            ps=con.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public void eliminarRegPag(int id) {
         String sql="delete from registrar where IdRegistro=?";//Recibimos todo el objeto
        try {
            con=cn.Conectar();
            ps=con.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    
    
    public void eliminarReg(int id) {
         String sql="delete from registrarpago where IdReg=?";//Recibimos todo el objeto
        try {
            con=cn.Conectar();
            ps=con.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    //Se usa en VentasForm
    public void eliminarVen(int id) {
         String sql="delete from venta where IdVenta=?";//Recibimos todo el objeto
        try {
            con=cn.Conectar();
            ps=con.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
}


