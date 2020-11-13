package controller;


import dao.ChiTietSPDAO;
import dao.SanPhamDAO;
import model.ChiTietSanPham;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




@WebServlet("/qlChiTietSanPham")
public class qlChiTietSanPham extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	dao.SanPhamDAO SanPhamDAO = new SanPhamDAO();

    public qlChiTietSanPham() {
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
					ChiTietSPDAO.delete_ChiTietSanPham(MaSP);
					url = "/ChiTietSanPhamQL";
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
		String XuatSu = request.getParameter("XuatSu");
		String NoiSX = request.getParameter("NoiSX");
		String Tile = request.getParameter("Tile");
		String url = "";
		if(request.getParameter("MaSP")=="" ||request.getParameter("NgaySX")==""||request.getParameter("HanSD")==""||request.getParameter("XuatSu")==""||request.getParameter("NoiSX")==""||request.getParameter("HuongDanSD")=="") {
			HttpSession session =request.getSession();
			session.setAttribute("error"," thông tin không được phép để trống");
			url="/admin/addChiTietSanPham.jsp";
		}
		else {
		try  {
				switch (command) {
				case "insert":
				ChiTietSPDAO.insert_ChiTietSanPham(new ChiTietSanPham(MaSP,XuatSu,NoiSX,Tile));
				url = "/ChiTietSanPhamQL";
				break;
				case "update":
					ChiTietSPDAO.update_ChiTietSanPham(new ChiTietSanPham(MaSP,XuatSu,NoiSX,Tile));
					url = "/ChiTietSanPhamQL";
					break;
				}
			}
		 catch (Exception e) {
			 HttpSession session =request.getSession();
				session.setAttribute("error","Mã Sản Phẩm đã tồn tại, vui lòng kiểm tra lại!");
			 url="/admin/addChiTietSanPham.jsp";
		}
		}
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
		
	}

}
