package dao;


import db.DBConnect;
import model.ChiTietSanPham;
import model.ChuyenMuc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class ChiTietSPDAO{
public static ArrayList<ChiTietSanPham> getListChiTietSanPham() {
    Connection cons = DBConnect.CreateConnection();
    String sql = "SELECT * FROM product_details";
    ArrayList<ChiTietSanPham> list = new ArrayList<>();
    try {
        PreparedStatement ps = cons.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            ChiTietSanPham ctsp= new ChiTietSanPham();
            ctsp.setMaSP(rs.getString("product_id"));
            ctsp.setXuatSu(rs.getString("origin"));
            ctsp.setNoiSX(rs.getString("manaual"));
            ctsp.setTile(rs.getString("ratio"));

            list.add(ctsp);
        }
        cons.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return list;
}

//Chi tiết sản phẩm
public ChiTietSanPham getChiTietSP(String MaSP) throws SQLException{

	Connection conn=DBConnect.CreateConnection();
	String sql="SELECT * FROM product_details WHERE product_id='"+MaSP+"'";
	PreparedStatement ps=conn.prepareCall(sql);
	ResultSet rs=ps.executeQuery();
	ChiTietSanPham ctsp=new ChiTietSanPham();
	while(rs.next())
	{

		ctsp.setXuatSu(rs.getString("origin"));
		ctsp.setNoiSX(rs.getString("manaual"));
		ctsp.setTile(rs.getString("ratio"));
	}
	return ctsp;

	} public static ChiTietSanPham selectChitiet(String MaSP) {
        ChiTietSanPham chiTietSanPham = null;
        Connection connection = DBConnect.CreateConnection();
        String sql = "select  product_id, origin, manaual, ratio from product_details WHERE product_id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, MaSP);
            System.out.println(ps);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String XuatSu = rs.getString("origin");
                String NoiSX = rs.getString("manaual");
                String Tile = rs.getString("ratio");
                chiTietSanPham = new ChiTietSanPham(MaSP,XuatSu,NoiSX,Tile);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return chiTietSanPham;
    }



//Thêm mới dữ liệu
public static boolean insert_ChiTietSanPham(ChiTietSanPham ctsp) throws SQLException {
try {
  Connection connection = DBConnect.CreateConnection();
  String sql = "INSERT INTO product_details VALUE(?,?,?,?)";
  PreparedStatement ps = connection.prepareCall(sql);
  ps.setString(1, ctsp.getMaSP());
  ps.setString(2, ctsp.getXuatSu());
  ps.setString(3, ctsp.getNoiSX());
  ps.setString(4, ctsp.getTile());
  int temp = ps.executeUpdate();
  return temp == 1;
} catch (Exception e) {
  return false;
}
}

//cập nhật
public static boolean update_ChiTietSanPham(ChiTietSanPham ctsp) throws SQLException {
try {
  Connection connection = DBConnect.CreateConnection();
  String sql = "UPDATE product_details SET  origin=?,manaual=? ,ratio=? WHERE product_id = ?";
  PreparedStatement ps = connection.prepareCall(sql);
  ps.setString(1, ctsp.getXuatSu());
  ps.setString(2, ctsp.getNoiSX());
  ps.setString(3, ctsp.getTile());
  ps.setString(4, ctsp.getMaSP());
  int temp = ps.executeUpdate();
  return temp == 1;
} catch (Exception e) {
  return false;
}
}

//xóa
public static boolean delete_ChiTietSanPham(String MaSP) throws SQLException {
try {
 Connection connection = DBConnect.CreateConnection();
 String sql = "DELETE FROM product_details WHERE product_id = ?";
 PreparedStatement ps = connection.prepareCall(sql);
 ps.setString(1, MaSP);
 int temp = ps.executeUpdate();
     return temp == 1;
} catch (Exception e) {
 return false;
}
}
}