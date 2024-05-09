package entity;

public class Empleado {

	private String idEmpelado;
	private String dni;
	private String nombres;
	private String telefono;
	private boolean estado;
	private String usuario;
	
	public Empleado() {
	}

	public String getIdEmpelado() {
		return idEmpelado;
	}

	public void setIdEmpelado(String idEmpelado) {
		this.idEmpelado = idEmpelado;
	}

	public String getDni() {
		return dni;
	}

	public void setDni(String dni) {
		this.dni = dni;
	}

	public String getNombres() {
		return nombres;
	}

	public void setNombres(String nombres) {
		this.nombres = nombres;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public boolean isEstado() {
		return estado;
	}

	public void setEstado(boolean estado) {
		this.estado = estado;
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}
	
	
}
