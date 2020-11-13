package controller;

import dao.ChiTietDonHangDAO;
import dao.DonHangDAO;
import model.*;

import java.io.IOException;
import java.sql.Date;
import java.util.Map;
import java.sql.Timestamp;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(urlPatterns = "/CheckoutController")
public class CheckoutController extends HttpServlet {
    private static final long serialVersionUID = 1L;


    public CheckoutController() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String payment = request.getParameter("payment");
        String name = request.getParameter("name");
        int phone = Integer.parseInt(request.getParameter("phone"));
        String address = request.getParameter("address");
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        TaiKhoan tk = (TaiKhoan) session.getAttribute("user");
        try {
            long millis = System.currentTimeMillis();
            int ID = tk.getID();
            String idhd = String.valueOf(ID);
            DonHang dh = new DonHang();
            dh.setMaDH("DH" + idhd);
            dh.setID(ID);
            dh.setTongTien(cart.sumTotalCart());
            dh.setTen(name);
            dh.setSDT(phone);
            dh.setDiaChiNhan(address);
            DonHangDAO.insertDonHang(dh);

            for (Map.Entry<String, Items> list : cart.getCartItems().entrySet()) {
                ChiTietDonHangDAO.insertChiTietDonHang
                        (new ChiTietDonHang("DH" + idhd, list.getKey(), list.getValue().getSanpham().getGia(), list.getValue().getSoLuong(), new Timestamp(new Date(millis).getTime()), payment));
            }
            cart = new Cart();
            session.setAttribute("cart", cart);
        } catch (Exception e) {

        }
        response.sendRedirect("/HomeForward");
    }
}
