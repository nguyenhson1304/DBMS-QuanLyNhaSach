CREATE VIEW vw_SachNhapGanDay AS
SELECT pn.NgayNhap, s.TenSach, ct.SoLuongNhap
FROM PhieuNhap pn
JOIN ChiTietNhap ct ON pn.MaPN = ct.MaPN
JOIN Sach s ON s.MaSach = ct.MaSach;
