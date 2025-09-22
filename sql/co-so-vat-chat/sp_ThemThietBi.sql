CREATE PROCEDURE sp_ThemThietBi
    @MaCSVC NVARCHAR(20),
    @TenThietBi NVARCHAR(100),
    @LoaiThietBi NVARCHAR(50),
    @SoLuong INT,
    @TinhTrang NVARCHAR(50),
    @ViTri NVARCHAR(100)
AS
BEGIN
    INSERT INTO CoSoVatChat VALUES (@MaCSVC, @TenThietBi, @LoaiThietBi, @SoLuong, @TinhTrang, @ViTri);
END
