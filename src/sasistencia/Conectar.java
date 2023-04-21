/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sasistencia;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Usuario
 */
public class Conectar {
static String bd="dbregasi";
    static String login="root";
    static String password ="root";
    static String url="jdbc:mysql://localhost/"+bd;
    Connection Conectar=null;
    public Connection conexion()
    {
       try
       {
           Class.forName("com.mysql.jdbc.Driver").newInstance();
           Conectar=DriverManager.getConnection(url,login,password);
       }catch(Exception e)
       {
           System.out.println(e.getMessage());//
       }
       return Conectar;
    }
    
}
