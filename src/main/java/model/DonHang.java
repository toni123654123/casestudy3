package model;

public class DonHang{

	private String MaDH;
	private int ID;
	private String Ten;
	private int SDT;
	private long TongTien;
	private String DiaChiNhan;

	public DonHang(String maDH, int ID, String ten, int SDT, long tongTien, String diaChiNhan) {
		MaDH = maDH;
		this.ID = ID;
		Ten = ten;
		this.SDT = SDT;
		TongTien = tongTien;
		DiaChiNhan = diaChiNhan;
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

	public String getTen() {
		return Ten;
	}

	public void setTen(String ten) {
		Ten = ten;
	}

	public int getSDT() {
		return SDT;
	}

	public void setSDT(int SDT) {
		this.SDT = SDT;
	}
}