package model;

public class ChiTietSanPham{
	private String MaSP;
	private String XuatSu;
	private String NoiSX;
	private String Tile;

	public ChiTietSanPham() {
	}

	public ChiTietSanPham(String maSP, String xuatSu, String noiSX, String tile) {
		MaSP = maSP;
		XuatSu = xuatSu;
		NoiSX = noiSX;
		Tile = tile;
	}

	public String getMaSP() {
		return MaSP;
	}

	public void setMaSP(String maSP) {
		MaSP = maSP;
	}

	public String getXuatSu() {
		return XuatSu;
	}

	public void setXuatSu(String xuatSu) {
		XuatSu = xuatSu;
	}

	public String getNoiSX() {
		return NoiSX;
	}

	public void setNoiSX(String noiSX) {
		NoiSX = noiSX;
	}

	public String getTile() {
		return Tile;
	}

	public void setTile(String tile) {
		Tile = tile;
	}
}