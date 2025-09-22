CREATE FUNCTION fn_DemThietBiHong()
RETURNS INT
AS
BEGIN
    DECLARE @SoLuong INT;
    SELECT @SoLuong = COUNT(*) FROM CoSoVatChat WHERE TinhTrang <> N'Tốt';
    RETURN @SoLuong;
END
