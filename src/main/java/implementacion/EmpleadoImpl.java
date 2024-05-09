package implementacion;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import config.MySQLConexion;
import entity.Empleado;
import repository.EmpleadoInterface;

public class EmpleadoImpl implements EmpleadoInterface{

	//MySQLConexion cn = new MySQLConexion();
	Connection con ;
	PreparedStatement psm ;
	ResultSet rs ;
	
	@Override
	public Empleado validar(String user, String dni) {
		Empleado empleado = new Empleado();
		String sql = "select * from empleado where Usuario = ? and Dni = ?";
		try {
			con = MySQLConexion.getConexion();
			psm = con.prepareStatement(sql);
			psm.setString(1, user);
			psm.setString(2, dni);
			rs = psm.executeQuery();
			while (rs.next()) {
				empleado.setNombres(rs.getString("Nombres"));
				empleado.setUsuario(rs.getString("Usuario"));
				empleado.setDni(rs.getString("Dni"));
			}
		} catch (Exception e) {
		}
		return empleado;
	}
	
}
