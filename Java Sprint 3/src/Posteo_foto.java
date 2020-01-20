
public class Posteo_foto extends Posteo {
	
	private String foto;

	protected Posteo_foto(Usuario unUsuario, String unaFoto) {
		super(unUsuario);
		this.foto = unaFoto;
	}

	public String getFoto() {
		return foto;
	}

	

}
