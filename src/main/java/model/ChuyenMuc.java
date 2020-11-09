package model;

public class ChuyenMuc{
	private String MaCM;
	private String TenCM;
	public ChuyenMuc() {}
	public ChuyenMuc(String maCM, String tenCM) {
		MaCM = maCM;
		TenCM = tenCM;
	}
	
	public String getMaCM() {
		return MaCM;
	}
	public void setMaCM(String maCM) {
		MaCM = maCM;
	}
	public String getTenCM() {
		return TenCM;
	}
	public void setTenCM(String tenCM) {
		TenCM = tenCM;
	}
	
}
