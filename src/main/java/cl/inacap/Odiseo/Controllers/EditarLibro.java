package cl.inacap.Odiseo.Controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cl.inacap.Odiseo.DAO.LibroDAO;
import cl.inacap.Odiseo.DTO.Libros;

/**
 * Servlet implementation class EditarLibroControllers
 */
@WebServlet("/EditarLibro.do")
public class EditarLibro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditarLibro() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("index"));
		LibroDAO libro = new LibroDAO();
		request.setAttribute("selectLibro", libro.selectLibro(id));
		request.setAttribute("IndexLibro", id);
		request.getRequestDispatcher("Site/AgregarLibro.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nombreLibro = request.getParameter("Nombre").toString();
		String autorLibro = request.getParameter("Autor").toString();
		int cantPaginas = Integer.parseInt(request.getParameter("CantidadDePaginas").toString());
		String booleanDestacadoString = request.getParameter("Destacado").toString();
		boolean booleanDestacado = true;
		if (booleanDestacadoString.equals("Si")) {
			booleanDestacado = true;
		} else if (booleanDestacadoString.equals("No")) {
			booleanDestacado = false;
		}
		String portadaLibro = request.getParameter("Portada").toString();
		int estrellas = Integer.parseInt(request.getParameter("Estrellas").toString());
		String categoriaLibro = request.getParameter("Categoria").toString();
		
		int index = Integer.parseInt(request.getParameter("index"));
		
		Libros libro = new Libros();
		libro.setNombreLibro(nombreLibro);
		libro.setAutorLibro(autorLibro);
		libro.setCantPaginas(cantPaginas);
		libro.setBooleanDestacado(booleanDestacado);
		libro.setPortadaLibro(portadaLibro);
		libro.setEstrellas(estrellas);
		
		new LibroDAO().updateLibro(libro, index, categoriaLibro);
		
		response.sendRedirect("HomeControllers.do");
		
	}

}
