package controller;

import dao.SanPhamDAO;
import model.Cart;
import model.Items;
import model.SanPham;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




@WebServlet(urlPatterns = "/CartController")
public class CartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CartController() {

    }
    private final SanPhamDAO spdao=new SanPhamDAO();

    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doPost(request,response);
    }
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session =request.getSession();
		String command=request.getParameter("command");
		String MaSP=request.getParameter("MaSP");
		Cart cart=(Cart) session.getAttribute("cart");
		String url="";
		try {
			String masp=MaSP;
			SanPham sp=spdao.getSanPham(masp);
			switch(command)
			{
			case "plus":
				url="/HomeForward";
				if(cart.getCartItems().containsKey(masp))
				{
					cart.plusToCart(masp,
							new Items(sp,cart.getCartItems().get(masp).getSoLuong()));
				}
				else {
					cart.plusToCart(masp, new Items(sp,1));
				}
				break;
			case "remove":
				cart.removeToCart(masp);
				url="/checkout.jsp";
				break;
			case "sub":
				cart.subToCart(masp, new Items(sp,cart.getCartItems().get(masp).getSoLuong()));
				url="/checkout.jsp";
				break;
			case "sum":
				url="/checkout.jsp";
				if(cart.getCartItems().containsKey(masp))
				{
					cart.plusToCart(masp,
							new Items(sp,cart.getCartItems().get(masp).getSoLuong()));
				}
				else {
					cart.plusToCart(masp, new Items(sp,1));
				}
				break;
			}
		}catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("/HomeForward");
		}
		session.setAttribute("cart", cart);
		response.sendRedirect(url);
		
	}

}
