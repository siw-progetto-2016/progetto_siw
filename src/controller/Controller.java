package controller;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Paziente;

/**
 * Servlet implementation class Controller
 */
@WebServlet("/controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("progetto-unit");
	EntityManager em = emf.createEntityManager();
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Controller() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Helper helper = new Helper();
		String nextPage = "/index.jsp";
		String idError;
		String id;
		Paziente p=null;


		if(helper.validate(request, response)){
			id=request.getParameter("id");
			Query query = em.createQuery("SELECT id FROM Paziente WHERE username=:codice"); 
			query.setParameter("codice",id);
			try {
				p=(Paziente) query.getSingleResult();	
			}
			catch(Exception e){
			}
			if(p.getUserName().equals(id)) {
				nextPage = "/profilopaziente.jsp";
			}
			else {
				idError = "id utente non trovato nel db";
				request.setAttribute("idError", idError);
			}
		}
		nextPage = response.encodeURL(nextPage);
		ServletContext servletContext = getServletContext();
		RequestDispatcher rd = servletContext.getRequestDispatcher(nextPage);
		rd.forward(request, response);
	}

}
