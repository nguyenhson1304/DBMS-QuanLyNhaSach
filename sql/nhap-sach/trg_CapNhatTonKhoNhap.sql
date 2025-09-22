CREATE TRIGGER trg_CapNhatTonKhoNhap
ON ChiTietNhap
AFTER INSERT
AS
BEGIN
    UPDATE s
    SET s.SoLuongTon = s.SoLuongTon + i.SoLuongNhap
    FROM Sach s
    JOIN inserted i ON s.MaSach = i.MaSach;
END
