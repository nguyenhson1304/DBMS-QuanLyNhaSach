CREATE VIEW vw_DoanhThuTheoNgay AS
SELECT NgayBan, SUM(SoLuongBan * DonGiaBan) AS DoanhThu
FROM HoaDonBan hd
JOIN ChiTietBan ct ON hd.MaHD = ct.MaHD
GROUP BY NgayBan;
