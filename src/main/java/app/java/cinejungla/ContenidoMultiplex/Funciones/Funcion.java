package app.java.cinejungla.ContenidoMultiplex.Funciones;

public class Funcion {

    String Nom_pelicula;
    String Cod_sala;
    String imagen;
    String dia;
    String Hora;

    public Funcion() {

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
