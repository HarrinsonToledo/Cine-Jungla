package app.java.cinejungla.ContenidoMultiplex.infoUnitaria;

public class Funcion {

    private int id_funcion;
    private String Nom_pelicula;
    private String Cod_sala;
    private String imagen;
    private String dia;
    private String Hora;

    public Funcion() {

    }

    public int getId_funcion() {
        return id_funcion;
    }

    public void setId_funcion(int id_funcion) {
        this.id_funcion = id_funcion;
    }

    public String getNom_pelicula() {
        return Nom_pelicula;
    }

    public void setNom_pelicula(String nom_pelicula) {
        Nom_pelicula = nom_pelicula;
    }

    public String getCod_sala() {
        return Cod_sala;
    }

    public void setCod_sala(String cod_sala) {
        Cod_sala = cod_sala;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public String getDia() {
        return dia;
    }

    public void setDia(String dia) {
        this.dia = dia;
    }

    public String getHora() {
        return Hora;
    }

    public void setHora(String hora) {
        Hora = hora;
    }
}
