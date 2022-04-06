package app.java.cinejungla.infoPersona.Usuarios;

public class Usuario {

    private String Nombre;
    private int Cedula;
    private String Contraseña;
    private String Multiplex;
    private String Cargo;
    private String Telefono;
    private Double Salario;
    private String Fec_ini_contrato;

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String nombre) {
        Nombre = nombre;
    }

    public int getCedula() {
        return Cedula;
    }

    public void setCedula(int cedula) {
        Cedula = cedula;
    }

    public String getContraseña() {
        return Contraseña;
    }

    public void setContraseña(String contraseña) {
        Contraseña = contraseña;
    }

    public String getMultiplex() {
        return Multiplex;
    }

    public void setMultiplex(String multiplex) {
        Multiplex = multiplex;
    }

    public String getCargo() {
        return Cargo;
    }

    public void setCargo(String cargo) {
        Cargo = cargo;
    }

    public String getTelefono() {
        return Telefono;
    }

    public void setTelefono(String telefono) {
        Telefono = telefono;
    }

    public Double getSalario() {
        return Salario;
    }

    public void setSalario(Double salario) {
        Salario = salario;
    }

    public String getFec_ini_contrato() {
        return Fec_ini_contrato;
    }

    public void setFec_ini_contrato(String fec_ini_contrato) {
        Fec_ini_contrato = fec_ini_contrato;
    }
}
