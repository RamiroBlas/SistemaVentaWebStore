package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ControladorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ControladorServlet() {
        super();
    }

    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String accion = request.getParameter("accion");
		
		if (accion == null) {
			accion = "listar";
		}else {
			switch(accion) {
			case "Principal":
				request.getRequestDispatcher("principal.jsp").forward(request, response);
				break;
			case "Producto":
				request.getRequestDispatcher("producto.jsp").forward(request, response);
				break;
			default:
				throw new AssertionError();
			}
		}
	}

}
