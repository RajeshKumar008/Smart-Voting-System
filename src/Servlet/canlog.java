package Servlet;

import imple.imple;
import inter.inter;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.candidatebean;

/**
 * Servlet implementation class canlog
 */
@WebServlet("/canlog")
public class canlog extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public canlog() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email=request.getParameter("name");
		HttpSession session=request.getSession();
        session.setAttribute("cemail", email);        
		String ass=request.getParameter("pass"); 
		HttpSession session1=request.getSession();
        session1.setAttribute("cass", ass); 
		String dis=request.getParameter("District"); 
		HttpSession session2=request.getSession();
        session2.setAttribute("cdis", dis); 

		candidatebean n=new candidatebean();
		n.setEmail(email);
		n.setPass(ass);
		n.setCapss(dis);
		
		inter b=new imple();
		boolean v=b.clog(n);
		if(v==true){
			response.sendRedirect("candidatemain.jsp");
			
		}
		else{
			response.sendRedirect("Error.jsp");
		}
		
		
	}

}
