package model;

import javax.persistence.Id;

public class TaiKhoan
{
	private int ID;
	private String UserEmail;
	private String Pass;
	private String HoTen;
	private String GioiTinh;
	private String SDT;
	private int PhanLoai;
	public TaiKhoan() {}

	public TaiKhoan(int ID, String userEmail, String pass, String hoTen, String gioiTinh, String SDT, int phanLoai) {
		this.ID = ID;
		UserEmail = userEmail;
		Pass = pass;
		HoTen = hoTen;
		GioiTinh = gioiTinh;
		this.SDT = SDT;
		PhanLoai = phanLoai;
	}

	public TaiKhoan(String userEmail, String pass, String hoTen, String gioiTinh, String sDT, int phanLoai) {

		UserEmail = userEmail;
		Pass = pass;
		HoTen = hoTen;
		GioiTinh = gioiTinh;
		SDT = sDT;
		PhanLoai = phanLoai;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getUserEmail() {
		return UserEmail;
	}

	public void setUserEmail(String userEmail) {
		UserEmail = userEmail;
	}

	public String getPass() {
		return Pass;
	}

	public void setPass(String pass) {
		Pass = pass;
	}

	public int getPhanLoai() {
		return PhanLoai;
	}

	public void setPhanLoai(int phanLoai) {
		PhanLoai = phanLoai;
	}

	public String getHoTen() {
		return HoTen;
	}

	public void setHoTen(String hoTen) {
		HoTen = hoTen;
	}

	public String getGioiTinh() {
		return GioiTinh;
	}

	public void setGioiTinh(String gioiTinh) {
		GioiTinh = gioiTinh;
	}

	public String getSDT() {
		return SDT;
	}

	public void setSDT(String sDT) {
		SDT = sDT;
	}

	
	
}