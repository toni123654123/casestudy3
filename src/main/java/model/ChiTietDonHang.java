package model;

import java.sql.Timestamp;

public class ChiTietDonHang{
	private String MaDH;
	private String MaSP;
	private long Gia;
	private int SoLuong;
	private Timestamp NgayDH;
	private String HinhThucThanhToan;
	
	public ChiTietDonHang() {}

	public ChiTietDonHang(String maDH, String maSP, long gia, int soLuong, Timestamp ngayDH, String hinhThucThanhToan) {
		MaDH = maDH;
		MaSP = maSP;
		Gia = gia;
		SoLuong = soLuong;
		NgayDH = ngayDH;
		HinhThucThanhToan = hinhThucThanhToan;
	}

	public String getMaDH() {
		return MaDH;
	}

	public void setMaDH(String maDH) {
		MaDH = maDH;
	}

	public String getMaSP() {
		return MaSP;
	}

	public void setMaSP(String maSP) {
		MaSP = maSP;
	}

	public long getGia() {
		return Gia;
	}

	public void setGia(long gia) {
		Gia = gia;
	}

	public int getSoLuong() {
		return SoLuong;
	}

	public void setSoLuong(int soLuong) {
		SoLuong = soLuong;
	}

	public Timestamp getNgayDH() {
		return NgayDH;
	}

	public void setNgayDH(Timestamp ngayDH) {
		NgayDH = ngayDH;
	}

	public String getHinhThucThanhToan() {
		return HinhThucThanhToan;
	}

	public void setHinhThucThanhToan(String hinhThucThanhToan) {
		HinhThucThanhToan = hinhThucThanhToan;
	}

	
}