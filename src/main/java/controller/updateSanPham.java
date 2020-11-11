package controller;


import dao.SanPhamDAO;
import model.SanPham;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet(urlPatterns = "/updateSanPham")
public class updateSanPham extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public updateSanPham() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		RequestDispatcher rd =request.getRequestDispatcher("/admin/updateSanPham.jsp");
//		rd.forward(request, response);
		String MaSP = request.getParameter("MaSP");
		SanPham existingUser = SanPhamDAO.selectUser(MaSP);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/updateSanPham.jsp");
		request.setAttribute("sp",existingUser);
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
