package controller;


import dao.ChiTietSPDAO;
import dao.ChuyenMucDAO;
import model.ChiTietSanPham;
import model.ChuyenMuc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;






@WebServlet("/updateChiTietSanPham")
public class updateChiTietSanPham extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	

    public updateChiTietSanPham() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String MaSP = request.getParameter("MaSP");
		ChiTietSanPham existingUser = ChiTietSPDAO.selectChitiet(MaSP);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/UpdateChiTietSanPham.jsp");
		request.setAttribute("msp",existingUser);
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
