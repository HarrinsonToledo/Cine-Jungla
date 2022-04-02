package app.java.cinejungla.ContenidoMultiplex;

import app.java.cinejungla.ContenidoMultiplex.PuntoAgil.Multiplex;

public abstract class MultiplexBuilder {

    protected Multiplex multiplex;

    public Multiplex getMultiplex() {
        return multiplex;
    }

    public void crearMultiplex() {
        multiplex = new Multiplex();
    }

    public abstract void buildMultiplex();
}
