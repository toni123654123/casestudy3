package dao;


import db.DBConnect;
import model.ChuyenMuc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class ChuyenMucDAO{
public static ArrayList<ChuyenMuc> getListChuyenMuc() {
    Connection cons = DBConnect.CreateConnection();
    String sql = "SELECT * FROM categories";
    ArrayList<ChuyenMuc> list = new ArrayList<>();
    try {
        PreparedStatement ps =  cons.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            ChuyenMuc CM= new ChuyenMuc();
            CM.setMaCM(rs.getString("categories_id"));
            CM.setTenCM(rs.getString("categories_name"));
            list.add(CM);
        }
        cons.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return list;
}
//Thêm mới dữ liệu
public static boolean insert_ChuyenMuc(ChuyenMuc chuyenMuc) throws SQLException {
 try {
      Connection connection = DBConnect.CreateConnection();
      String sql = "INSERT INTO categories VALUE(?,?)";
      PreparedStatement ps = connection.prepareCall(sql);
      ps.setString(1, chuyenMuc.getMaCM());
      ps.setString(2, chuyenMuc.getTenCM());
      int temp = ps.executeUpdate();
      return temp == 1;
 } catch (Exception e) {
      return false;
 }
}

//cập nhật
public static boolean update_ChuyenMuc(ChuyenMuc chuyenMuc) throws SQLException {
 try {
      Connection connection = DBConnect.CreateConnection();
      String sql = "UPDATE categories SET categories_name = ? WHERE categories_id = ?";
      PreparedStatement ps = connection.prepareCall(sql);
      ps.setString(1, chuyenMuc.getTenCM());
      ps.setString(2, chuyenMuc.getMaCM());
      int temp = ps.executeUpdate();
      return temp == 1;
 } catch (Exception e) {
      return false;
 }
}

//xóa
public static boolean delete_ChuyenMuc(String MaCM) throws SQLException {
 try {
     Connection connection = DBConnect.CreateConnection();
     String sql = "DELETE FROM categories WHERE categories_id = ?";
     PreparedStatement ps = connection.prepareCall(sql);
     ps.setString(1, MaCM);
     int temp = ps.executeUpdate();
         return temp == 1;
 } catch (Exception e) {
     return false;
 }
}
}