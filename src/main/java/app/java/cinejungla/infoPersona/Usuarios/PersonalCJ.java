package app.java.cinejungla.infoPersona.Usuarios;

import app.java.cinejungla.dataSQL.Connect;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class PersonalCJ {
    private static PersonalCJ instance;
    private Connect conexion;
    private Connection connection;
    private ArrayList<Usuario> listado = new ArrayList<>();

    public PersonalCJ() {
        conexion = Connect.getInstance();
    }

    public ArrayList<Usuario> getListado() {
        if (listado != null) {
            listado.clear();
        }
        try {
            connection = conexion.conectar();
            Statement statement = connection.createStatement();

            ResultSet resultSet = statement.executeQuery("select u.CC_USUARIO, u.NOM_USUARIO, u.CONTRASENA, u.TELEFONO, u.SALARIO, u.FEC_INI_CONTRATO, c.NOM_CARGO, m.NOM_MULTIPLEX  from usuario as u inner join cargo as c on u.ID_CARGO = c.ID_CARGO inner join multiplex as m on u.ID_MULTIPLEX = m.ID_MULTIPLEX");

            while (resultSet.next()) {
                Usuario usuario = new Usuario();

                usuario.setCedula(resultSet.getInt("CC_USUARIO"));
                usuario.setNombre(resultSet.getString("NOM_USUARIO"));
                usuario.setContraseña(resultSet.getString("CONTRASENA"));
                usuario.setTelefono(resultSet.getString("TELEFONO"));
                usuario.setSalario(resultSet.getDouble("SALARIO"));
                usuario.setFec_ini_contrato(resultSet.getString("FEC_INI_CONTRATO"));
                usuario.setCargo(resultSet.getString("NOM_CARGO"));
                usuario.setMultiplex(resultSet.getString("NOM_MULTIPLEX"));

                listado.add(usuario);
            }

        } catch (Exception e) {
            System.out.println("Error recuperando personal: " + e);
        }

        return listado;
    }

    public static PersonalCJ getInstance(){
        if (instance == null) {
            instance = new PersonalCJ();
        }
        return instance;
    }
}
