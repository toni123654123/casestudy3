package dao;


import db.DBConnect;
import model.KhoHang;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class KhoHangDAO{


public static ArrayList<KhoHang> ListKhoHang() {
    Connection cons = DBConnect.CreateConnection();
    String sql = "SELECT * FROM warehouse";
    ArrayList<KhoHang> list = new ArrayList<>();
    try {
        PreparedStatement ps = cons.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            KhoHang kh= new KhoHang();
            kh.setMaSP(rs.getString("product_id"));
            kh.setSoLuong(rs.getInt("amount"));
            kh.setGhiChu(rs.getString("note"));
          
            list.add(kh);
        }
        cons.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return list;
}

}