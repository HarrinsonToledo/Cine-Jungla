package app.java.cinejungla.ContenidoMultiplex.Sala;

import app.java.cinejungla.dataSQL.Connect;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class SalaFuncion {
    private static SalaFuncion instance;
    private Connect conexion;
    private Connection connection;
    private ArrayList<Silla> listado = new ArrayList<>();

    public SalaFuncion() {conexion = Connect.getInstance();}

    public ArrayList<Silla> getListado() {
        return listado;
    }

    public void setListado(String sala) {
        if (listado != null) {
            listado.clear();
        }
        try {
            connection = conexion.conectar();
            Statement statement = connection.createStatement();

            ResultSet resultSet = statement.executeQuery("select si.ID_SILLA, si.VALOR, si.ESTADO, si.COD_SILLA from sillas as si inner join salas as sa on sa.ID_SALA = si.ID_SALA where sa.CODIGO = \"" + sala + "\"");

            while (resultSet.next()) {
                Silla silla = new Silla();

                silla.setId_silla(resultSet.getInt("ID_SILLA"));
                silla.setValor(resultSet.getInt("VALOR"));
                silla.setEstado(resultSet.getString("ESTADO"));
                silla.setCod_silla(resultSet.getString("COD_SILLA"));

                listado.add(silla);
            }

        } catch (Exception e) {
            System.out.println("Error recuperando peliculas: " + e);
        }
    }

    public static SalaFuncion getInstance() {
        if (instance == null) {
            instance = new SalaFuncion();
        }
        return instance;
    }
}
