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
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = "/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public LoginController() {
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
	    request.setCharacterEncoding("UTF-8");
	    HttpSession session =request.getSession();
	    String url="";
	    String action=request.getParameter("action");
			if(action.equals("Logout"))
			{
				session.invalidate();
				url="/HomeForward";
			}
			RequestDispatcher rd= getServletContext().getRequestDispatcher(url);
			rd.forward(request, response);

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
	    request.setCharacterEncoding("UTF-8");
	    HttpSession session =request.getSession();
	    String url="";
	    
			TaiKhoan tk=new TaiKhoan();
			tk= TaiKhoanDAO.login(request.getParameter("email"),(request.getParameter("pass")));
		if(request.getParameter("email")==""||request.getParameter("pass")=="")
		{
			url="/login.jsp";
			session.setAttribute("e",".");
		}
		else {
			if(tk!=null && tk.getPhanLoai()==1)
			{
				 session.setAttribute("user", tk);
					url="/HomeForward";
			}
			else {
				if(tk!=null && tk.getPhanLoai()==0)
				{
					session.setAttribute("user", tk);
					url="/HomeAdmin";
				}
				else
				{
					url="/login.jsp";
					session.setAttribute("e","Tài khoản hoặc mật khẩu không chính xác");
				}		
		
			}			
		}
			RequestDispatcher rd= getServletContext().getRequestDispatcher(url);
	rd.forward(request, response);
}
}
