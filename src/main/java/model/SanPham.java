package model;



public class SanPham{
	private String MaSP;
	private String TenSP;
	private String MaCM;
	private long Gia;
	private String HinhAnh;
	
	public SanPham() {}

	public SanPham(String maSP, String tenSP, String maCM, long gia, String hinhAnh) {
		MaSP = maSP;
		TenSP = tenSP;
		MaCM = maCM;
		Gia = gia;
		HinhAnh = hinhAnh;
	}

    public SanPham(String maSP, String tenSP, String maCM, String gia, String hinhAnh) {
		MaSP = maSP;
		TenSP = tenSP;
		MaCM = maCM;
		Gia = Long.parseLong(gia);
		HinhAnh = hinhAnh;
    }

    public String getMaSP() {
		return MaSP;
	}

	public void setMaSP(String maSP) {
		MaSP = maSP;
	}

	public String getTenSP() {
		return TenSP;
	}

	public void setTenSP(String tenSP) {
		TenSP = tenSP;
	}

	public String getMaCM() {
		return MaCM;
	}

	public void setMaCM(String maCM) {
		MaCM = maCM;
	}

	public long getGia() {
		return Gia;
	}

	public void setGia(long gia) {
		Gia = gia;
	}

	public String getHinhAnh() {
		return HinhAnh;
	}

	public void setHinhAnh(String hinhAnh) {
		HinhAnh = hinhAnh;
	}

	
}
