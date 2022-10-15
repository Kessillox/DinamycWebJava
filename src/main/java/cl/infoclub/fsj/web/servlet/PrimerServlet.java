package cl.infoclub.fsj.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/inicio")
public class PrimerServlet extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
	private String saludo;
	
	public void init() throws ServletException{
		saludo = ("Hola!! este servlet se está iniciando");
	}
	
	Logger milog = Logger.getLogger(Saludo.class.getName());
	
	@Override
	protected void doGet (HttpServletRequest req, HttpServletResponse resp) {
		try {
			PrintWriter pw = resp.getWriter();
			pw.println("<h2> Hola Gente </h2>");
		} catch (IOException e) {
			milog.severe(e.getMessage());
		}
	}
	

}
