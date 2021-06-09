package cl.inacap.Odiseo.Controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cl.inacap.Odiseo.Controllers.Funciones;

/**
 * Servlet implementation class LoginControllers
 */
@WebServlet("/LoginControllers.do")
public class LoginControllers extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginControllers() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("Site/Login.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Funciones fn=new Funciones();
		String Usuario=request.getParameter("Usuario").toString();
		String Password=fn.EncriptarMD5(request.getParameter("Contrasena").toString());
		
		PrintWriter out=response.getWriter();
		
		if(Usuario.equals("root") && Password.equals("63a9f0ea7bb98050796b649e85481845")) {
			out.println("Administracion.do");
		}else {
			out.println("-1");
		}
		
	}

}
