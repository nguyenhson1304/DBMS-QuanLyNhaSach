CREATE PROCEDURE sp_BanSach
    @MaHD NVARCHAR(20),
    @MaSach NVARCHAR(20),
    @SoLuong INT,
    @DonGia DECIMAL(18,2)
AS
BEGIN
    INSERT INTO ChiTietBan (MaHD, MaSach, SoLuongBan, DonGiaBan)
    VALUES (@MaHD, @MaSach, @SoLuong, @DonGia);
END
