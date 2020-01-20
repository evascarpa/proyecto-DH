
public class Posteo_texto extends Posteo{
	
	private String mensaje;

	protected Posteo_texto(Usuario unUsuario, String unMensaje) {
		super(unUsuario);
		this.mensaje = unMensaje;
		
	}

	public String getMensaje() {
		return mensaje;
	}
	
}
