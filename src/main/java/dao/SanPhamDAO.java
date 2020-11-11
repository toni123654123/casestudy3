package dao;


import db.DBConnect;
import model.SanPham;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class SanPhamDAO{
public static ArrayList<SanPham> getListSanPham(String MaCM) {
    Connection cons = DBConnect.CreateConnection();
    String sql = "SELECT * FROM product where categories_id='"+MaCM+"'";
    ArrayList<SanPham> list = new ArrayList<>();
    try {
        PreparedStatement ps = cons.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            SanPham sp= new SanPham();
            sp.setMaSP(rs.getString("product_id"));
            sp.setTenSP(rs.getString("product_name"));
            sp.setMaCM(rs.getString("categories_id"));
            sp.setGia(rs.getLong("pince"));
            sp.setHinhAnh(rs.getString("image"));
            list.add(sp);
        }
        cons.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return list;
}
//Chi tiết sản phẩm
public static SanPham getSanPham(String MaSP) throws SQLException{

	Connection conn=DBConnect.CreateConnection();
	String sql="SELECT * FROM product WHERE product_id='"+MaSP+"'";
	PreparedStatement ps=conn.prepareCall(sql);
	ResultSet rs=ps.executeQuery();
	SanPham sp=new SanPham();
	while(rs.next())
	{
		sp.setTenSP(rs.getString("product_name"));
		sp.setGia(rs.getLong("pince"));
		sp.setHinhAnh(rs.getString("image"));
	}
	return sp;
	}
//Danh sách sản phẩm
public static ArrayList<SanPham> ListSanPham() {
    Connection cons = DBConnect.CreateConnection();
    String sql = "SELECT * FROM product";
    ArrayList<SanPham> list = new ArrayList<>();
    try {
        PreparedStatement ps = cons.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            SanPham sp= new SanPham();
            sp.setMaSP(rs.getString("product_id"));
            sp.setTenSP(rs.getString("product_name"));
            sp.setMaCM(rs.getString("categories_id"));
            sp.setGia(rs.getLong("pince"));
            sp.setHinhAnh(rs.getString("image"));
            list.add(sp);
        }
        cons.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return list;
}
//Thêm mới dữ liệu
public static boolean insert_SanPham(SanPham sp) throws SQLException {
try {
    Connection connection = DBConnect.CreateConnection();
    String sql = "INSERT INTO product VALUE(?,?,?,?,?)";
    PreparedStatement ps = connection.prepareCall(sql);
    ps.setString(1, sp.getMaSP());
    ps.setString(2, sp.getTenSP());
    ps.setString(3, sp.getMaCM());
    ps.setLong(4, sp.getGia());
    ps.setString(5, sp.getHinhAnh());
    int temp = ps.executeUpdate();
    return temp == 1;
} catch (Exception e) {
    return false;
}
}

//cập nhật
public static boolean update_SanPham(SanPham sp) throws SQLException {
try {
    Connection connection = DBConnect.CreateConnection();
    String sql = "UPDATE product SET product_name = ? ,categories_id=?, pince=?,image=? WHERE product_id = ?";
    PreparedStatement ps = connection.prepareCall(sql);
    ps.setString(1, sp.getTenSP());
    ps.setString(2, sp.getMaCM());
    ps.setLong(3, sp.getGia());
    ps.setString(4, sp.getHinhAnh());
    ps.setString(5, sp.getMaSP());
    int temp = ps.executeUpdate();
    return temp == 1;
} catch (Exception e) {
    return false;
}
}
//public boolean update_SanPham(SanPham sp) throws SQLException {
//    boolean temp;
//        Connection connection = DBConnect.CreateConnection();
//        String sql = "UPDATE product SET product_name = ? ,categories_id=?, pince=?,image=? WHERE product_id = ?";
//        PreparedStatement ps = connection.prepareCall(sql);
//        ps.setString(1, sp.getTenSP());
//        ps.setString(2, sp.getMaCM());
//        ps.setLong(3, sp.getGia());
//        ps.setString(4, sp.getHinhAnh());
//        ps.setString(5, sp.getMaSP());
//        temp = ps.executeUpdate()>0;
//         return temp;

//}

//    private void showEditForm(HttpServletRequest request, HttpServletResponse response) {
//        int id = Integer.parseInt(request.getParameter("id"));
//        SanPham existingUser = SanPhamDAO.selectUser(id);
//        RequestDispatcher dispatcher = request.getRequestDispatcher("updateSanPham");
//        request.setAttribute("user",existingUser);
//        try {
//            dispatcher.forward(request,response);
//        } catch (ServletException e) {
//            e.printStackTrace();
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//    }
//    public static SanPham selectUser(int id) {
//        SanPham sp = null;
//
//        Connection connection = DBConnect.CreateConnection();
//        String sql = "UPDATE product SET product_name = ? ,categories_id=?, pince=?,image=? WHERE product_id = ?";
//        try {
//            PreparedStatement ps = connection.prepareStatement(sql);
//            ps.setInt(1, id);
//            System.out.println(ps);
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()) {
//                String MaSP = rs.getString("MaSP");
//                String TenSP = rs.getString("TenSP");
//                String MaCM = rs.getString("MaCM");
//                long Gia = rs.getLong("Gia");
//                String HinhAnh = rs.getString("HinhAnh");
//                sp = new SanPham(MaSP, TenSP, MaCM,Gia, HinhAnh);
//            }
//        } catch (SQLException throwables) {
//            throwables.printStackTrace();
//        }
//        return sp;
//    }

//xóa
public static boolean delete_SanPham(String MaSP) throws SQLException {
try {
   Connection connection = DBConnect.CreateConnection();
   String sql = "DELETE FROM product WHERE product_id = ?";
   PreparedStatement ps = connection.prepareCall(sql);
   ps.setString(1, MaSP);
   int temp = ps.executeUpdate();
       return temp == 1;
} catch (Exception e) {
   return false;
}
}
}