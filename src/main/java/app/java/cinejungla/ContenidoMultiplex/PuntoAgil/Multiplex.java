package app.java.cinejungla.ContenidoMultiplex.PuntoAgil;

import app.java.cinejungla.ContenidoMultiplex.Funciones.Funcion;
import app.java.cinejungla.dataSQL.Connect;

import javax.swing.*;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class Multiplex {

    Connect conexion;
    Connection connection;
    ArrayList<Funcion> contenido = new ArrayList<>();

    public Multiplex() {
        conexion = Connect.getInstance();
    }

    public  void registrar(int multiplex) {
        try {

            connection = conexion.conectar();
            Statement statement = connection.createStatement();

            ResultSet resultSet = statement.executeQuery("select f.DIA, f.HORA, p.NOM_PELICULA, p.IMAGEN, s.CODIGO from funcion as f inner join salas as s on s.ID_SALA = f.ID_SALA and f.ID_MULTIPLEX = " + multiplex +" inner join peliculas as p on p.ID_PELICULA = f.ID_PELICULA and f.ID_MULTIPLEX = " + multiplex);

            while (resultSet.next()) {
                Funcion act_funcion = new Funcion();

                act_funcion.setDia(resultSet.getString("DIA"));
                act_funcion.setHora(resultSet.getString("HORA"));
                act_funcion.setImagen(resultSet.getString("IMAGEN"));
                act_funcion.setNom_pelicula(resultSet.getString("NOM_PELICULA"));
                act_funcion.setCod_sala(resultSet.getString("CODIGO"));

                contenido.add(act_funcion);
            }

        } catch (Exception e) {
            System.out.println("Error desconocido: "+e);
        }
    }

    public ArrayList<Funcion> obtener() {
        return contenido;
    }
}
