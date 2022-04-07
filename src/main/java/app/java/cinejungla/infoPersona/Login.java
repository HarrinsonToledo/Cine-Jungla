package app.java.cinejungla.infoPersona;

import app.java.cinejungla.infoPersona.Clientes.Cliente;
import app.java.cinejungla.infoPersona.Clientes.ListadoClientes;
import app.java.cinejungla.infoPersona.Clientes.SelectCliente;
import app.java.cinejungla.infoPersona.Usuarios.PersonalCJ;
import app.java.cinejungla.infoPersona.Usuarios.SelectUsuario;
import app.java.cinejungla.infoPersona.Usuarios.Usuario;

public class Login {
    private static Login instance;
    private PersonalCJ listadoUsuarios;
    private ListadoClientes listadoClientes;

    private SelectUsuario selectUsuario;
    private SelectCliente selectCliente;

    public Login() {
        listadoUsuarios = PersonalCJ.getInstance();
        listadoClientes = ListadoClientes.getInstance();
        selectCliente = SelectCliente.getInstance();
        selectUsuario = SelectUsuario.getInstance();
    }

    public Boolean loginUsuario(int codigo, String password) {
        selectUsuario = SelectUsuario.getInstance();
        for (Usuario u : listadoUsuarios.getListado()) {
            if (u.getCedula() == codigo && u.getContraseña().equals(password)) {
                selectUsuario.setCedula(u.getCedula());
                selectUsuario.setContraseña(u.getContraseña());
                selectUsuario.setNombre(u.getNombre());
                selectUsuario.setCargo(u.getCargo());
                selectUsuario.setMultiplex(u.getMultiplex());
                selectUsuario.setSalario(u.getSalario());
                selectUsuario.setTelefono(u.getTelefono());
                selectUsuario.setFec_ini_contrato(u.getFec_ini_contrato());
                return true;
            }
        }
        return false;
    }

    public String multiplexUsuario() {
        return selectUsuario.getMultiplex();
    }

    public Boolean loginCliente(int cedula, String password) {
        selectCliente = SelectCliente.getInstance();
        for (Cliente c : listadoClientes.getListado()) {
            if (c.getCedula() == cedula && c.getContraseña().equals(password)) {
                selectCliente.setCedula(c.getCedula());
                selectCliente.setContraseña(c.getContraseña());
                selectCliente.setNombre(c.getNombre());
                selectCliente.setPuntos(c.getPuntos());
                return true;
            }
        }
        return false;
    }

    public void cerrarSesion(int tipo) {
        if (tipo == 1) {
            selectUsuario = null;
        } else if (tipo == 2) {
            selectCliente = null;
        }
    }

    public static Login getInstance(){
        if (instance == null) {
            instance = new Login();
        }
        return instance;
    }
}
