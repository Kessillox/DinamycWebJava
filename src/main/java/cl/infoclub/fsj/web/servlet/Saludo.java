package cl.infoclub.fsj.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/saludo")
public class Saludo extends HttpServlet{
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		PrintWriter printWriter = response.getWriter(); 
		SimpleDateFormat formato = new SimpleDateFormat("dd-MM-yyyy");
		
		String fechaActual = formato.format(new Date());
		
		     printWriter.println("<html><body>");
		     printWriter.println("Tu primer servlet");
		     printWriter.println("La fecha actual es: " + fechaActual);
		     printWriter.println("</body></html>");
		    
		     request.getServletContext().getRequestDispatcher("/inicio").forward(request,
		response); }
		}

