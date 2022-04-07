package app.java.cinejungla.ContenidoMultiplex.infoUnitaria.Pelicula;

import app.java.cinejungla.ContenidoMultiplex.infoUnitaria.Funcion;

import java.util.ArrayList;

public class Pelicula {

    public int id_pelicula;
    public String nom_pelicula;
    public String duracion;
    public String descripcion;
    public String imagen;

    public int getId_pelicula() {
        return id_pelicula;
    }

    public void setId_pelicula(int id_pelicula) {
        this.id_pelicula = id_pelicula;
    }

    public String getNom_pelicula() {
        return nom_pelicula;
    }

    public void setNom_pelicula(String nom_pelicula) {
        this.nom_pelicula = nom_pelicula;
    }

    public String getDuracion() {
        return duracion;
    }

    public void setDuracion(String duracion) {
        this.duracion = duracion;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }
}
