package controller;

import dao.TaiKhoanDAO;
import model.TaiKhoan;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/Update_Info")
public class Update_Info extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public Update_Info() {
        super();
   
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	response.setContentType("text/html;charset=UTF-8");
request.setCharacterEncoding("UTF-8");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
	    request.setCharacterEncoding("UTF-8");
		TaiKhoan tk=new TaiKhoan();
		int id= Integer.parseInt(request.getParameter("id"));
			tk.setHoTen(request.getParameter("HoTen"));
			tk.setGioiTinh(request.getParameter("GioiTinh"));
			tk.setSDT(request.getParameter("SDT"));
			tk.setID(id);
			 TaiKhoanDAO.UpdateInfo(tk);
			RequestDispatcher rd= getServletContext().getRequestDispatcher("/HomeForward");
			rd.forward(request, response);
	}

}
