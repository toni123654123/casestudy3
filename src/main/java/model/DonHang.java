package model;

public class DonHang{

	private String MaDH;
	private int ID;
	private long TongTien;
	private String DiaChiNhan;

	public DonHang(String maDH, int iD, long tongTien, String diachinhan) {
		MaDH = maDH;
		ID = iD;
		TongTien = tongTien;
		DiaChiNhan=diachinhan;
	}

	public DonHang() {

	}

	public String getMaDH() {
		return MaDH;
	}
	public void setMaDH(String maDH) {
		MaDH = maDH;
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public long getTongTien() {
		return TongTien;
	}
	public void setTongTien(long tongTien) {
		TongTien = tongTien;
	}
	public String getDiaChiNhan() {
		return DiaChiNhan;
	}
	public void setDiaChiNhan(String diaChiNhan) {
		DiaChiNhan = diaChiNhan;
	}
	
	
	
}