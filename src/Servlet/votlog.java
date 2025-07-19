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


import Bean.voterbean;

/**
 * Servlet implementation class votlog
 */
@WebServlet("/votlog")
public class votlog extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public votlog() {
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

		
        String email=request.getParameter("email");
        HttpSession session=request.getSession();
        session.setAttribute("uname", email);
		
        String assem=request.getParameter("assem"); 
        HttpSession session1=request.getSession();
		session1.setAttribute("ass", assem);
		
		String dis=request.getParameter("pass"); 
		HttpSession session2=request.getSession();
		session2.setAttribute("dis", dis);
		
		voterbean n=new voterbean();
		n.setEmail(email);
		n.setAssem(assem);
		n.setDistrict(dis);
		
		inter b=new imple();
		boolean v=b.vlog(n);
		if(v==true){
			response.sendRedirect("votermain.jsp");
			
		}
		else{
			response.sendRedirect("Error.jsp");
		}
		
		
	}
	}


