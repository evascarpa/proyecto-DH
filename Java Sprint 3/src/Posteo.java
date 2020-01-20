
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Posteo {

	private Usuario usuario;
	private List<Corazon> listaDeCorazones = new ArrayList<>();
	private List<Comentario> listaDeComentarios = new ArrayList<>();

	protected Posteo(Usuario unUsuario) {
		this.usuario = unUsuario;
		Date fechaDelDia = new Date();
	}

public void ponerCorazon(Corazon unCorazon) {
	listaDeCorazones.add(unCorazon);
}

public void quitarCorazon(Corazon unCorazon) {
	listaDeCorazones.remove(unCorazon);
}

public void ponerComentario (Comentario unComentario) {
	listaDeComentarios.add(unComentario);
}

public void quitarComentario (Comentario unComentario) {
	listaDeComentarios.remove(unComentario);
}



}
