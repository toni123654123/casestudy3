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
import javax.servlet.http.HttpSession;




@WebServlet(urlPatterns = "/qlSanPham")
public class qlSanPham extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	dao.SanPhamDAO SanPhamDAO = new SanPhamDAO();

    public qlSanPham() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html;charset=UTF-8");
	    request.setCharacterEncoding("UTF-8");
	    
		String command = request.getParameter("command");
		String MaSP = request.getParameter("MaSP");
		
		
		String url ="";
		try {
			
				switch (command) {
				case "delete":
					SanPhamDAO.delete_SanPham(MaSP);
					url = "/admin/SanPhamQL";
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
		String MaSP = request.getParameter("MaSP");
		String TenSP = request.getParameter("TenSP");
		String MaCM = request.getParameter("MaCM");
		String Gia = request.getParameter("Gia");
		String HinhAnh = request.getParameter("MaCM");
		String url = "";
		if(request.getParameter("MaSP")==""||request.getParameter("Gia")=="") {
			HttpSession session =request.getSession();
			session.setAttribute("error","Các thông tin không được phép để trống");
			url="/admin/themSanPham.jsp";
		}
		else {
		try  {
				switch (command) {
				case "insert":
				SanPhamDAO.insert_SanPham(new SanPham(MaSP,TenSP,MaCM,Long.parseLong(Gia),HinhAnh));
				url = "/admin/SanPhamQL";
				break;
				case "update":
					SanPhamDAO.update_SanPham(new SanPham(MaSP,TenSP,MaCM,Long.parseLong(Gia),HinhAnh));
					url = "/admin/SanPhamQL";
					break;
				}
			}
		 catch (Exception e) {
			 HttpSession session =request.getSession();
				session.setAttribute("error","Mã sản phẩm đã tồn tại, vui lòng kiểm tra lại!");
			 url="/admin/themSanPham.jsp";
		}
		}
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
		
	}

}
