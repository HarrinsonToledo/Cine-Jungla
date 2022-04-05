package app.java.cinejungla.ContenidoMultiplex;

import app.java.cinejungla.ContenidoMultiplex.PuntoAgil.Multiplex;

public class PuntosCineJungla {
    private static PuntosCineJungla instance;

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

    public static PuntosCineJungla getInstance() {
        if (instance == null) {
            instance = new PuntosCineJungla();
        }
        return instance;
    }
}
