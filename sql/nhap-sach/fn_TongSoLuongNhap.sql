CREATE FUNCTION fn_TongSoLuongNhap(@MaPN NVARCHAR(20))
RETURNS INT
AS
BEGIN
    DECLARE @Tong INT;
    SELECT @Tong = SUM(SoLuongNhap)
    FROM ChiTietNhap
    WHERE MaPN = @MaPN;
    RETURN @Tong;
END
