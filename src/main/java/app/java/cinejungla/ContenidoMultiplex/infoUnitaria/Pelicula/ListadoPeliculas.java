package app.java.cinejungla.ContenidoMultiplex.infoUnitaria.Pelicula;

import app.java.cinejungla.dataSQL.Connect;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class ListadoPeliculas {

    private static ListadoPeliculas instance;
    private Connect conexion;
    private Connection connection;
    private ArrayList<Pelicula> listado = new ArrayList<>();


    public ListadoPeliculas() {
        conexion = Connect.getInstance();
    }

    public ArrayList<Pelicula> getPeliculas() {
        if (listado != null) {
            listado.clear();
        }
        try {
            connection = conexion.conectar();
            Statement statement = connection.createStatement();

            ResultSet resultSet = statement.executeQuery("select * from peliculas");

            while (resultSet.next()) {
                Pelicula pelicula = new Pelicula();

                pelicula.setNom_pelicula(resultSet.getString("NOM_PELICULA"));
                pelicula.setDuracion(resultSet.getString("DURACION"));
                pelicula.setDescripcion(resultSet.getString("DESCRIPCION"));
                pelicula.setImagen(resultSet.getString("IMAGEN"));

                listado.add(pelicula);
            }

        } catch (Exception e) {
            System.out.println("Error recuperando peliculas: " + e);
        }
        return listado;
    }

    public static ListadoPeliculas getInstance(){
        if (instance == null) {
            instance = new ListadoPeliculas();
        }
        return instance;
    }
}
