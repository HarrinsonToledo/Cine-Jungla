package app.java.cinejungla.infoPersona;

import app.java.cinejungla.dataSQL.Connect;
import app.java.cinejungla.infoPersona.Clientes.Cliente;
import app.java.cinejungla.infoPersona.Clientes.ListadoClientes;
import app.java.cinejungla.infoPersona.Clientes.SelectCliente;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class RegistrarCliente {
    private static RegistrarCliente instance;
    private Connect conexion;
    private Connection connection;
    private ListadoClientes listadoClientes;
    private SelectCliente selectCliente;

    public RegistrarCliente() {
        conexion = Connect.getInstance();
        listadoClientes = ListadoClientes.getInstance();
        selectCliente = SelectCliente.getInstance();
    }

    public int insertar(String nombre, int cedula, String contraseña) {
        for (Cliente cliente : listadoClientes.getListado()) {
            if (cliente.getCedula() == cedula) {
                return 1;
            }
        }

        try {
            connection = conexion.conectar();
            PreparedStatement insertar = connection.prepareStatement("insert into cliente(CC_CLIENTE,NOM_CLIENTE,PUNTOS,CONTRASENA) values (?,?,?,?)");

            insertar.setInt(1,cedula);
            insertar.setString(2,nombre);
            insertar.setInt(3,0);
            insertar.setString(4,contraseña);

            insertar.executeUpdate();

            return 2;
        } catch (Exception e) {
            System.out.println("Error en registrar cliente: " + e);
        }
        return 3;
    }

    public static RegistrarCliente getInstance(){
        if (instance== null){
            instance= new RegistrarCliente();
        }
        return instance;
    }
}
