import java.util.ArrayList;
import java.util.List;

public class Cuenta {
	
	private Usuario usuario;
	private List<Posteo> listaDePosteos = new ArrayList<>();
	
	protected Cuenta(Usuario usuario) {
		super();
		this.usuario = usuario;
	}




public void hacerPosteo() {
	Posteo unPosteo = new Posteo(usuario);
	listaDePosteos.add(unPosteo);
}

public void eliminarPosteo(Posteo unPosteo) {
	listaDePosteos.remove(unPosteo);
}



}
