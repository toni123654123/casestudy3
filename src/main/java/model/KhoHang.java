package model;



public class KhoHang{
	private String MaSP;
	private int SoLuong;
	private String GhiChu;
	
	public KhoHang() {}

	public KhoHang(String maSP, int soLuong, String ghiChu) {
		MaSP = maSP;
		SoLuong = soLuong;
		GhiChu = ghiChu;
	}

	public String getMaSP() {
		return MaSP;
	}

	public void setMaSP(String maSP) {
		MaSP = maSP;
	}

	public int getSoLuong() {
		return SoLuong;
	}

	public void setSoLuong(int soLuong) {
		SoLuong = soLuong;
	}

	public String getGhiChu() {
		return GhiChu;
	}

	public void setGhiChu(String ghiChu) {
		GhiChu = ghiChu;
	}
	
	
}
