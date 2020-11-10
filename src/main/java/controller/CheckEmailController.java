package controller;

import dao.TaiKhoanDAO;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = "/CheckEmailController")
public class CheckEmailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   TaiKhoanDAO tkd= new TaiKhoanDAO();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
	    request.setCharacterEncoding("UTF-8");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
	    request.setCharacterEncoding("UTF-8");
		 if (tkd.checkEmail(request.getParameter("username"))) {
	          response.getWriter().write("<img src=\"img/not-available.png\" /> Tài khoản đã tồn tại");
	     } else {
	          response.getWriter().write("<img src=\"img/available.png\" />");
	          }
	}
}
