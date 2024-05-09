package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import entity.Empleado;
import implementacion.EmpleadoImpl;

public class ValidarServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
    public ValidarServlet() {
        super();
    }

    EmpleadoImpl empleadoImpl = new EmpleadoImpl();
    Empleado empleado = new Empleado();
    
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String accion = request.getParameter("accion");
		if (accion.equalsIgnoreCase("Ingresar")) {
			String user = request.getParameter("txtUser");
			String pass = request.getParameter("txtPass");
			empleado = empleadoImpl.validar(user, pass);
			if (empleado.getUsuario() != null) {
				request.setAttribute("usuario", empleado);
				request.getRequestDispatcher("ControladorServlet?accion=Principal").forward(request, response);
			}else {
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}
		}else {
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
	}

}
