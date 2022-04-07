package app.java.cinejungla.ContenidoMultiplex.Sala;

public class Silla {
    private int id_silla;
    private int valor;
    private String estado;
    private String cod_silla;

    public Silla() {

    }

    public int getId_silla() {
        return id_silla;
    }

    public void setId_silla(int id_silla) {
        this.id_silla = id_silla;
    }

    public int getValor() {
        return valor;
    }

    public void setValor(int valor) {
        this.valor = valor;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getCod_silla() {
        return cod_silla;
    }

    public void setCod_silla(String cod_silla) {
        this.cod_silla = cod_silla;
    }
}
