package dao;


import db.DBConnect;
import model.ChuyenMuc;
import model.TaiKhoan;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;


public class TaiKhoanDAO {
    public TaiKhoanDAO() {
    }

    ;

    public boolean checkEmail(String email) {
        Connection conn = DBConnect.CreateConnection();
        String sql = "SELECT * FROM account WHERE user='" + email + "'";
        PreparedStatement ps;
        try {
            ps = conn.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                conn.close();
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(TaiKhoanDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public static boolean insertTaiKhoan(TaiKhoan tk) {
        Connection conn = DBConnect.CreateConnection();
        String sql = "INSERT INTO account (user, pass, classify)" +
                "VALUES (?, ?, ?)";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, tk.getUserEmail());
            ps.setString(2, tk.getPass());
            ps.setInt(3, tk.getPhanLoai());
            ps.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(TaiKhoanDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;

    }


    public static TaiKhoan login(String user, String pass) {
        Connection con = DBConnect.CreateConnection();
        String sql = "select * from account where user='" + user + "' and pass='" + pass + "'";
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                TaiKhoan tk = new TaiKhoan();
                tk.setID(rs.getInt("id"));
                tk.setUserEmail(rs.getString("user"));
                tk.setPass(rs.getString("pass"));
                tk.setHoTen(rs.getString("name"));
                tk.setGioiTinh(rs.getString("gendenr"));
                tk.setSDT(rs.getString("phone"));
                tk.setPhanLoai(rs.getInt("classify"));
                con.close();
                return tk;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static ArrayList<TaiKhoan> getListTaiKhoan() {
        Connection cons = DBConnect.CreateConnection();
        String sql = "SELECT * FROM account";
        ArrayList<TaiKhoan> list = new ArrayList<>();
        try {
            PreparedStatement ps = cons.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                TaiKhoan tk = new TaiKhoan();
                tk.setID(rs.getInt("id"));
                tk.setUserEmail(rs.getString("user"));
                tk.setPass(rs.getString("pass"));
                tk.setHoTen(rs.getString("name"));
                tk.setGioiTinh(rs.getString("gendenr"));
                tk.setSDT(rs.getString("phone"));
                tk.setPhanLoai(rs.getInt("classify"));
                list.add(tk);
            }
            cons.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public static boolean UpdateInfo(TaiKhoan tk) {
        Connection conn = DBConnect.CreateConnection();
        String sql = "Update account set name=?, gendenr=?, phone=? where id=?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, tk.getHoTen());
            ps.setString(2, tk.getGioiTinh());
            ps.setString(3, tk.getSDT());
            ps.setInt(4, tk.getID());
            ps.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(TaiKhoanDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;

    }

    public static boolean insert_TaiKhoan(TaiKhoan tk) throws SQLException {
        try {
            Connection connection = DBConnect.CreateConnection();
            String sql = "INSERT INTO account VALUE(?,?,?,?,?,?,?)";
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setInt(1, tk.getID());
            ps.setString(2, tk.getUserEmail());
            ps.setString(3, tk.getPass());
            ps.setString(4, tk.getHoTen());
            ps.setString(5, tk.getGioiTinh());
            ps.setString(6, tk.getSDT());
            ps.setInt(7, tk.getPhanLoai());
            int temp = ps.executeUpdate();
            return temp == 1;
        } catch (Exception e) {
            return false;
        }
    }


    public static boolean update_TaiKhoan(TaiKhoan tk) throws SQLException {
        try {
            Connection connection = DBConnect.CreateConnection();
            String sql = "UPDATE account SET user = ? ,pass=?, name=?,gendenr=?,phone=?,classify=? WHERE id = ?";
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setString(1, tk.getUserEmail());
            ps.setString(2, tk.getPass());
            ps.setString(3, tk.getHoTen());
            ps.setString(4, tk.getGioiTinh());
            ps.setString(5, tk.getSDT());
            ps.setInt(6, tk.getPhanLoai());
            ps.setInt(7, tk.getID());
            int temp = ps.executeUpdate();
            return temp == 1;
        } catch (Exception e) {
            return false;
        }
    }
    public static TaiKhoan selectTaiKhoan(int ID) {
         TaiKhoan tk = null;
        Connection connection = DBConnect.CreateConnection();
        String sql = "select user, pass, name,gendenr,phone,classify  from account WHERE id= ? ";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, ID);
            System.out.println(ps);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String UserEmail = rs.getString("user");
                String Pass = rs.getString("pass");
                String HoTen = rs.getString("name");
                String GioiTinh = rs.getString("gendenr");
                String SDT = rs.getString("phone");
                int PhanLoai = rs.getInt("classify");
                tk = new TaiKhoan(ID,UserEmail,Pass,HoTen,GioiTinh,SDT,PhanLoai);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return tk;
    }


    public static boolean delete_TaiKhoan(int ID) throws SQLException {
        try {
            Connection connection = DBConnect.CreateConnection();
            String sql = "DELETE FROM account WHERE id = ?";
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setInt(1, ID);
            int temp = ps.executeUpdate();
            return temp == 1;
        } catch (Exception e) {
            return false;
        }
    }
}