package dao;

import db.DBConnect;
import model.DonHang;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;



public class DonHangDAO
{
	public DonHangDAO() {};
	//Danh sách đơn hàng
	public static ArrayList<DonHang> getListDonHang() {
	    Connection cons = DBConnect.CreateConnection();
	    String sql = "SELECT order_id,name ,phone ,address ,tatol FROM order1";
	    ArrayList<DonHang> list = new ArrayList<>();
	    try {
	        PreparedStatement ps = cons.prepareStatement(sql);
	        ResultSet rs = ps.executeQuery();
	        while (rs.next()) {
	            DonHang dh= new DonHang();
				dh.setMaDH(rs.getString("order_id"));
				dh.setTen(rs.getString("name"));
				dh.setSDT(rs.getInt("phone"));
	            dh.setDiaChiNhan(rs.getString("address"));
	            dh.setTongTien(rs.getLong("tatol"));
	            list.add(dh);
	        }
	        cons.close();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return list;
	}
//Thêm vào đơn hàng
	public static boolean insertDonHang(DonHang dh) 
	{
		Connection conn=DBConnect.CreateConnection();
		String sql="INSERT INTO order1(order_id,id,name,phone,tatol,address) VALUES (?, ?, ?, ?, ?, ?)";
		try {
			PreparedStatement ps= conn.prepareStatement(sql);			
			ps.setString(1,dh.getMaDH());
			ps.setInt(2,dh.getID());
			ps.setString(3, dh.getTen());
			ps.setInt(4,dh.getSDT());
			ps.setLong(5, dh.getTongTien());
			ps.setString(6, dh.getDiaChiNhan());
			ps.executeUpdate();
			return true;
		}
		catch (SQLException ex){
			Logger.getLogger(TaiKhoanDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return false;
		
	}
	}