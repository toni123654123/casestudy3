package model;

public class Items{
	private SanPham sanpham;
	private int SoLuong;
	public Items() {}
	public Items(SanPham sanpham, int soLuong) {
		this.sanpham = sanpham;
		SoLuong = soLuong;
	}
	public SanPham getSanpham() {
		return sanpham;
	}
	public void setSanpham(SanPham sanpham) {
		this.sanpham = sanpham;
	}
	public int getSoLuong() {
		return SoLuong;
	}
	public void setSoLuong(int soLuong) {
		SoLuong = soLuong;
	}
	
}