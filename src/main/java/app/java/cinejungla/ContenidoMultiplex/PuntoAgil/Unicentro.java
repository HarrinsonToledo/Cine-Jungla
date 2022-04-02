package app.java.cinejungla.ContenidoMultiplex.PuntoAgil;

import app.java.cinejungla.ContenidoMultiplex.MultiplexBuilder;

public class Unicentro extends MultiplexBuilder {

    @Override
    public void buildMultiplex() {
        multiplex.registrar(2);
    }
}
