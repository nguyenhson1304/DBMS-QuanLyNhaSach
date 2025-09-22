CREATE TRIGGER trg_CapNhatTonKho
ON ChiTietBan
AFTER INSERT
AS
BEGIN
    UPDATE s
    SET s.SoLuongTon = s.SoLuongTon - i.SoLuongBan
    FROM Sach s
    JOIN inserted i ON s.MaSach = i.MaSach;
END
