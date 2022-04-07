package app.java.cinejungla.GuardarFactura;

import app.java.cinejungla.Comands;
import app.java.cinejungla.ContenidoMultiplex.Confiteria.CompraSnacks;
import app.java.cinejungla.ContenidoMultiplex.Confiteria.Snack;
import app.java.cinejungla.ContenidoMultiplex.Sala.SalaFuncion;
import app.java.cinejungla.ContenidoMultiplex.Sala.Silla;
import app.java.cinejungla.ContenidoMultiplex.infoUnitaria.Pelicula.SelectPelicula;
import app.java.cinejungla.dataSQL.Connect;
import app.java.cinejungla.infoPersona.Clientes.SelectCliente;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class FacturaPagada {
    private static FacturaPagada instance;
    private Connect conexion;
    private Connection connection;
    Comands comands = Comands.getInstance();
    SelectPelicula selectPelicula;
    SelectCliente selectCliente;
    SalaFuncion salaFuncion;
    CompraSnacks compraSnacks;

    public FacturaPagada() {
        conexion = Connect.getInstance();
        selectPelicula = SelectPelicula.getInstance();
        selectCliente = SelectCliente.getInstance();
        salaFuncion = SalaFuncion.getInstance();
        compraSnacks = CompraSnacks.getInstance();
    }

    public void guardar() {
        guardarBoleta();
        if (comands.getCompraConfiteria() == 1) {
            guardarSnacks();
        }
    }

    public void cambiarEstadoSilla(int id) {
        try {
            connection = conexion.conectar();
            Statement statement = connection.createStatement();

            statement.executeUpdate("UPDATE sillas SET ESTADO = 'ocupado' WHERE ID_SILLA = " + id);

        } catch (Exception e) {
            System.out.println("Error en registrar cliente: " + e);
        }
    }

    public void guardarBoleta() {

        try {
            connection = conexion.conectar();

            PreparedStatement insertar = connection.prepareStatement("insert into factura_boleta(ID_SILLA,ID_FUNCION,CC_CLIENTE) values (?,?,?)");

            for (Silla silla : salaFuncion.getListado()) {
                if (silla.getEstado().equals("seleccionado")) {
                    cambiarEstadoSilla(silla.getId_silla());
                    insertar.setInt(1,silla.getId_silla());
                    insertar.setInt(2,selectPelicula.getId_pelicula());
                    insertar.setInt(3,selectCliente.getCedula());
                    insertar.executeUpdate();
                }
            }
        } catch (Exception e) {
            System.out.println("Error en registrar cliente: " + e);
        }
    }

    public void guardarSnacks() {
        try {
            connection = conexion.conectar();

            PreparedStatement insertar = connection.prepareStatement("insert into factura_snacks(CC_CLIENTE,ID_SNACK,CANT_SNACKS) values (?,?,?)");

            for (Snack snack : compraSnacks.getListado()) {
                insertar.setInt(1,selectCliente.getCedula());
                insertar.setInt(2,snack.getId_snack());
                insertar.setInt(3,snack.getCantidad());
                insertar.executeUpdate();
            }
        } catch (Exception e) {
            System.out.println("Error en registrar cliente: " + e);
        }
    }

    public static FacturaPagada getInstance(){
        if (instance == null) {
            instance= new FacturaPagada();
        }
        return instance;
    }
}
