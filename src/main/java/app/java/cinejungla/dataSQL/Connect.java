package app.java.cinejungla.dataSQL;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class Connect {

    //"jdbc:mysql://localhost:3306/"+bd+"?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false";

    public static Connect instance;

    String bd = "cine_jungla";
    String url = "jdbc:mysql://localhost:3306/"+bd+"?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false";
    String user = "root";
    String password = "mysqlrooter";

    public Connect() {

    }

    public Connection conectar() {
        Connection connection = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(url,user, password);
            Statement statement = connection.createStatement();

            return connection;

        } catch (ClassNotFoundException e) {
            System.out.println("Clase no encontrada: "+e);
        } catch (SQLException e) {
            System.out.println("Error de conexion: "+e);
        } catch (Exception e) {
            System.out.println("Error desconocido: "+e);
        }

        return connection;
    }

    public void desconectar(Connection conexion) {
        try {
            conexion.close();
        } catch (SQLException e) {
            System.out.println("Error de desconexion: "+e);
        }
    }

    public static Connect getInstance(){
        if (instance == null){
            instance = new Connect();
        }
        return instance;
    }
}
