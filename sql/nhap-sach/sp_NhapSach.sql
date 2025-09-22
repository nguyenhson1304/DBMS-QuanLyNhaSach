CREATE PROCEDURE sp_NhapSach
    @MaPN NVARCHAR(20),
    @MaSach NVARCHAR(20),
    @SoLuong INT,
    @DonGia DECIMAL(18,2)
AS
BEGIN
    INSERT INTO ChiTietNhap (MaPN, MaSach, SoLuongNhap, DonGiaNhap)
    VALUES (@MaPN, @MaSach, @SoLuong, @DonGia);
END
