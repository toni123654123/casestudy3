package controller;


import dao.ChuyenMucDAO;
import model.ChuyenMuc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




@WebServlet(urlPatterns = "/qlChuyenMuc")
public class qlChuyenMuc extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	ChuyenMucDAO chuyenmucDAO = new ChuyenMucDAO();

    public qlChuyenMuc() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html;charset=UTF-8");
	    request.setCharacterEncoding("UTF-8");
	    
		String command = request.getParameter("command");
		String ma_CM = request.getParameter("ma_CM");
		
		
		String url ="";
		try {
			
				switch (command) {
				case "delete":
					ChuyenMucDAO.delete_ChuyenMuc(ma_CM);
					url = "/ChuyenMucQL";
					break;
				}
			
		} catch (Exception e) {
			
		}
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html;charset=UTF-8");
	    request.setCharacterEncoding("UTF-8");
		String command = request.getParameter("command");
		String tenDanhMuc = request.getParameter("tenDanhMuc");
		String maDanhMuc = request.getParameter("maDanhMuc");
		String url = "";
		if(request.getParameter("tenDanhMuc").equals("")||request.getParameter("maDanhMuc").equals("")) {
			HttpSession session =request.getSession();
			session.setAttribute("er","Các thông tin không được phép để trống");
			url="/admin/addChuyenMuc.jsp";
		}
		else {
		try  {
				switch (command) {
				case "insert":
				ChuyenMucDAO.insert_ChuyenMuc(new ChuyenMuc(maDanhMuc, tenDanhMuc));
				url = "/ChuyenMucQL";
				break;
				case "update":
					ChuyenMucDAO.update_ChuyenMuc(new ChuyenMuc(maDanhMuc,tenDanhMuc));
					url = "/ChuyenMucQL";
					break;
				}
			}
		 catch (Exception e) {
			 HttpSession session =request.getSession();
				session.setAttribute("error","");
			 url="/admin/addChuyenMuc.jsp";
		}
		}
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
		
	}

}
