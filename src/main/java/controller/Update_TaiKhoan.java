package controller;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet(urlPatterns = "/Update_TaiKhoan")
public class Update_TaiKhoan extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	

    public Update_TaiKhoan() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd =request.getRequestDispatcher("/admin/Update_TaiKhoan.jsp");
		rd.forward(request, response);
		response.setContentType("text/html;charset=UTF-8");
	    request.setCharacterEncoding("UTF-8");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	
		response.setContentType("text/html;charset=UTF-8");
	    request.setCharacterEncoding("UTF-8");
	}

}
