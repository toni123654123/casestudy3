package controller;


import dao.ChuyenMucDAO;
import dao.TaiKhoanDAO;
import model.ChuyenMuc;
import model.TaiKhoan;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet(urlPatterns = "/updateTaiKhoan")
public class updateTaiKhoan extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	

    public updateTaiKhoan() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		RequestDispatcher rd =request.getRequestDispatcher("/admin/updateTaiKhoan.jsp");
//		rd.forward(request, response);
		int ID = Integer.parseInt(request.getParameter("ID"));
		TaiKhoan existingUser = TaiKhoanDAO.selectTaiKhoan(ID);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/updateTaiKhoan.jsp");
		request.setAttribute("tk",existingUser);
		dispatcher.forward(request,response);

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
