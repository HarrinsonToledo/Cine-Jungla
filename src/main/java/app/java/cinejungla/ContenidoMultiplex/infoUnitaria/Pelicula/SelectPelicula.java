package app.java.cinejungla.ContenidoMultiplex.infoUnitaria.Pelicula;

import app.java.cinejungla.ContenidoMultiplex.infoUnitaria.Funcion;

import java.util.ArrayList;

public class SelectPelicula extends Pelicula{
    private static SelectPelicula instance;
    private Funcion selectFuncion;
    private ArrayList<Funcion> funcionesPeli = new ArrayList<>();

    public SelectPelicula() {

    }

    public ArrayList<Funcion> getFuncionesPeli() { return funcionesPeli; }

    public void setFuncionesPeli(ArrayList<Funcion> funcionesMultiplex) {
        if (funcionesPeli != null) {
            funcionesPeli.clear();
        }
        for (Funcion funPeli: funcionesMultiplex) {
            if (funPeli.getNom_pelicula().equals(nom_pelicula)) {
                funcionesPeli.add(funPeli);
            }
        }
    }

    public Funcion getSelectFuncion() {
        return selectFuncion;
    }

    public void setSelectFuncion(Funcion selectFuncion) {
        this.selectFuncion = selectFuncion;
    }

    public static SelectPelicula getInstance() {
        if (instance == null) {
            instance = new SelectPelicula();
        }
        return instance;
    }
}
