import java.sql.Date;

public class Comentario {
	
	private Cuenta nick;
	Date fechaDelDia = new Date(0);
	private String mensaje;

	public Comentario(Cuenta nick, Date fechaDelDia, String mensaje) {
		this.nick = nick;
		this.fechaDelDia = fechaDelDia;
		this.mensaje = mensaje;
	}

public Cuenta getNick() {
	return nick;
}

public String getMensaje() {
	return mensaje;
}

public Date getFechaDelDia() {
	return fechaDelDia;
}



}
