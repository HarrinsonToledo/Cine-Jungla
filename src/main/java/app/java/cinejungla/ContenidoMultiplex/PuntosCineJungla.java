package app.java.cinejungla.ContenidoMultiplex;

import app.java.cinejungla.ContenidoMultiplex.PuntoAgil.Multiplex;

public class PuntosCineJungla {
    private MultiplexBuilder multiplexBuilder;

    public void setMultiplexBuilder(MultiplexBuilder mp) {
        multiplexBuilder = mp;
    }

    public Multiplex getMultplex() {
        return multiplexBuilder.getMultiplex();
    }

    public void contruirPizza() {
        multiplexBuilder.crearMultiplex();
        multiplexBuilder.buildMultiplex();
    }
}
