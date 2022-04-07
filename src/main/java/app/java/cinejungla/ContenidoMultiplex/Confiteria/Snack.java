package app.java.cinejungla.ContenidoMultiplex.Confiteria;

public class Snack {
    private int id_snack;
    private String nom_snack;
    private Double precio;
    private String tipo;
    private int cantidad;

    public Snack(){

    }

    public int getId_snack() {
        return id_snack;
    }

    public void setId_snack(int id_snack) {
        this.id_snack = id_snack;
    }

    public String getNom_snack() {
        return nom_snack;
    }

    public void setNom_snack(String nom_snack) {
        this.nom_snack = nom_snack;
    }

    public Double getPrecio() {
        return precio;
    }

    public void setPrecio(Double precio) {
        this.precio = precio;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }
}
