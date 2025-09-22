CREATE PROCEDURE sp_ThemNhanVien
    @MaNV NVARCHAR(20),
    @HoTen NVARCHAR(100),
    @NgaySinh DATE,
    @GioiTinh NVARCHAR(10),
    @SDT NVARCHAR(20),
    @VaiTro NVARCHAR(50)
AS
BEGIN
    INSERT INTO NhanVien VALUES (@MaNV, @HoTen, @NgaySinh, @GioiTinh, @SDT, @VaiTro);
END
