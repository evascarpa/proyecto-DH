import java.sql.Date;

public class Usuario {
	private String nick;
	private String nombre;
	private String apellido;
	private Date fechaDeNacimiento;
	private String email;
	private Integer sucursal;
	private String contraseña;
	private String fotoDePerfil;
	private String descripcion;
	
	
	public Usuario(String nick, String nombre, String apellido, Date fechaDeNacimiento, String email,
			Integer sucursal, String contraseña, String fotoDePerfil, String descripcion) {
		this.nick = nick;
		this.nombre = nombre;
		this.apellido = apellido;
		this.fechaDeNacimiento = fechaDeNacimiento;
		this.email = email;
		this.sucursal = sucursal;
		this.contraseña = contraseña;
		this.fotoDePerfil = fotoDePerfil;
		this.descripcion = descripcion;
	}
	
	
	
	protected String getNick() {
		return nick;
	}

	protected void setNick(String nick) {
		this.nick = nick;
	}

	protected String getNombre() {
		return nombre;
	}

	protected void setNombre(String nombre) {
		this.nombre = nombre;
	}

	protected String getApellido() {
		return apellido;
	}

	protected void setApellido(String apellido) {
		this.apellido = apellido;
	}

	protected Date getFechaDeNacimiento() {
		return fechaDeNacimiento;
	}

	protected void setFechaDeNacimiento(Date fechaDeNacimiento) {
		this.fechaDeNacimiento = fechaDeNacimiento;
	}

	protected String getEmail() {
		return email;
	}

	protected void setEmail(String email) {
		this.email = email;
	}

	protected Integer getSucursal() {
		return sucursal;
	}

	protected void setSucursal(Integer sucursal) {
		this.sucursal = sucursal;
	}

	protected String getContraseña() {
		return contraseña;
	}

	protected void setContraseña(String contraseña) {
		this.contraseña = contraseña;
	}

	protected String getFotoDePerfil() {
		return fotoDePerfil;
	}

	protected void setFotoDePerfil(String fotoDePerfil) {
		this.fotoDePerfil = fotoDePerfil;
	}

	protected String getDescripcion() {
		return descripcion;
	}

	protected void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}


}
