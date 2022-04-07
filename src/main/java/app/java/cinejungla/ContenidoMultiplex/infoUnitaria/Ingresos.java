package app.java.cinejungla.ContenidoMultiplex.infoUnitaria;

import app.java.cinejungla.ContenidoMultiplex.Confiteria.Snack;
import app.java.cinejungla.dataSQL.Connect;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class Ingresos {
    private static Ingresos instance;
    private Connect conexion;
    private Connection connection;

    private int ingresosBoleta;
    private int ingresosSnacks;

    public Ingresos() {
        conexion = Connect.getInstance();
    }

    public int getIngresosBoleta() {
        try {
            connection = conexion.conectar();
            Statement statement = connection.createStatement();

            ResultSet resultSet = statement.executeQuery("SELECT s.VALOR FROM sillas as s inner join factura_boleta as f on s.ID_SILLA = f.ID_SILLA");

            while (resultSet.next()) {
                ingresosBoleta = ingresosBoleta + resultSet.getInt("VALOR");
            }

        } catch (Exception e) {
            System.out.println("Error recuperando peliculas: " + e);
        }

        return ingresosBoleta;
    }

    public int getIngresosSnacks() {
        try {
            connection = conexion.conectar();
            Statement statement = connection.createStatement();

            ResultSet resultSet = statement.executeQuery("SELECT f.CANT_SNACKS, s.PRECIO FROM snacks as s inner join factura_snacks as f on s.ID_SNACK = f.ID_SNACK");

            while (resultSet.next()) {
                ingresosSnacks = ingresosSnacks + (resultSet.getInt("PRECIO") * resultSet.getInt("CANT_SNACKS"));
            }

        } catch (Exception e) {
            System.out.println("Error recuperando peliculas: " + e);
        }
        return ingresosSnacks;
    }

    public static Ingresos getInstance() {
        if (instance == null) {
            instance = new Ingresos();
        }
        return instance;
    }
}
