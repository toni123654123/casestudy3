package controller;


import dao.ChuyenMucDAO;
import dao.SanPhamDAO;
import model.ChuyenMuc;
import model.SanPham;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = "/updateChuyenMuc")
public class updateChuyenMuc extends HttpServlet {
    private static final long serialVersionUID = 1L;


    public updateChuyenMuc() {
        super();
        // TODO Auto-generated constructor stub
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String MaCM = request.getParameter("ma_CM");
        ChuyenMuc existingUser = ChuyenMucDAO.selectChuyenMuc(MaCM);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/updateChuyenMuc.jsp");
        request.setAttribute("cm",existingUser);
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
