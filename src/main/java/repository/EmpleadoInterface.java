package repository;

import entity.Empleado;

public interface EmpleadoInterface {
	
	//public List<Empleado> listaEmpleados();
	//public int crearEmpleado(Empleado empleado);
	//public List<Area> listaAreas();
	//public List<Distrito> listaDistritos();
	public Empleado validar(String user, String dni);
	//public int actualizarEmpleado(Empleado empleado);
	//public Area obtenerArea(String codigo);
	//public Distrito obtenerDistrito(String codigo);
}
