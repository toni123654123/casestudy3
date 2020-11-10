package dao;


import db.DBConnect;
import model.ChiTietDonHang;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;



public class ChiTietDonHangDAO{
public static ArrayList<ChiTietDonHang> getListChiTietDonHang() {
    Connection cons = DBConnect.CreateConnection();
    String sql = "SELECT * FROM order_details";
    ArrayList<ChiTietDonHang> list = new ArrayList<>();
    try {
        PreparedStatement ps = cons.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            ChiTietDonHang ctdh= new ChiTietDonHang();
            ctdh.setMaDH(rs.getString("order_id"));
            ctdh.setMaSP(rs.getString("product_id"));
            ctdh.setGia(rs.getLong("price"));
            ctdh.setSoLuong(rs.getInt("amount"));
            ctdh.setNgayDH(rs.getTimestamp("datedh"));
            ctdh.setHinhThucThanhToan(rs.getString("card"));
            list.add(ctdh);
        }
        cons.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return list;
}
//Thêm vào chi tiết đơn hàng
	public static boolean insertChiTietDonHang(ChiTietDonHang ctdh) 
	{
		Connection conn=DBConnect.CreateConnection();
		String sql="INSERT INTO order_details VALUES (?, ?, ?, ?, ?, ?)";
		try {
			PreparedStatement ps= conn.prepareStatement(sql);			
			ps.setString(1,ctdh.getMaDH());
			ps.setString(2,ctdh.getMaSP());
			ps.setLong(3, ctdh.getGia());
			ps.setInt(4,ctdh.getSoLuong());
			ps.setTimestamp(5, ctdh.getNgayDH());
			ps.setString(6, ctdh.getHinhThucThanhToan());
			ps.executeUpdate();
			return true;
		}
		catch (SQLException ex){
			Logger.getLogger(TaiKhoanDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return false;
		
	}

}