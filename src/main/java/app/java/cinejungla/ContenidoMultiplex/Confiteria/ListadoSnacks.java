package app.java.cinejungla.ContenidoMultiplex.Confiteria;

import app.java.cinejungla.ContenidoMultiplex.infoUnitaria.Pelicula.Pelicula;
import app.java.cinejungla.dataSQL.Connect;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class ListadoSnacks {
    private static ListadoSnacks instance;
    private Connect conexion;
    private Connection connection;
    private ArrayList<Snack> listadoSnacks = new ArrayList<>();

    public ListadoSnacks() {
        conexion = Connect.getInstance();
    }

    public ArrayList<Snack> getListado() {
        if (listadoSnacks != null) {
            listadoSnacks.clear();
        }
        try {
            connection = conexion.conectar();
            Statement statement = connection.createStatement();

            ResultSet resultSet = statement.executeQuery("select * from snacks");

            while (resultSet.next()) {
                Snack snack = new Snack();

                snack.setId_snack(resultSet.getInt("ID_SNACK"));
                snack.setNom_snack(resultSet.getString("NOM_SNACK"));
                snack.setPrecio(resultSet.getDouble("PRECIO"));
                snack.setTipo(resultSet.getString("TIPO_SNACK"));

                listadoSnacks.add(snack);
            }

        } catch (Exception e) {
            System.out.println("Error recuperando peliculas: " + e);
        }

        return listadoSnacks;
    }

    public static ListadoSnacks getInstance() {
        if (instance == null) {
            instance = new ListadoSnacks();
        }
        return instance;
    }
}
