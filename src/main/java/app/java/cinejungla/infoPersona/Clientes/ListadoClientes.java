package app.java.cinejungla.infoPersona.Clientes;

import app.java.cinejungla.dataSQL.Connect;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class ListadoClientes {
    private static ListadoClientes instance;
    private Connect conexion;
    private Connection connection;
    private ArrayList<Cliente> listado = new ArrayList<>();

    public ListadoClientes() {
        conexion = Connect.getInstance();
    }

    public ArrayList<Cliente> getListado() {
        if (listado != null) {
            listado.clear();
        }
        try {
            connection = conexion.conectar();
            Statement statement = connection.createStatement();

            ResultSet resultSet = statement.executeQuery("select * from cliente");

            while (resultSet.next()) {
                Cliente cliente = new Cliente();

                cliente.setCedula(resultSet.getInt("CC_CLIENTE"));
                cliente.setNombre(resultSet.getString("NOM_CLIENTE"));
                cliente.setContraseña(resultSet.getString("CONTRASENA"));
                cliente.setPuntos(resultSet.getInt("PUNTOS"));

                listado.add(cliente);
            }

        } catch (Exception e){
            System.out.println("Error recuperando clientes: " + e);
        }

        return listado;
    }

    public static ListadoClientes getInstance(){
        if (instance== null) {
            instance= new ListadoClientes();
        }
        return instance;
    }
}
