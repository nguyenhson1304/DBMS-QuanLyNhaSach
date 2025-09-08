-- 1. Tạo cơ sở dữ liệu
CREATE DATABASE QuanLyNhaSach;
GO

-- Sử dụng CSDL vừa tạo
USE QuanLyNhaSach;
GO

-- 2. Tạo bảng Sách
CREATE TABLE Sach (
    MaSach      VARCHAR(10) PRIMARY KEY,
    TenSach     NVARCHAR(200) NOT NULL,
    TacGia      NVARCHAR(100) NOT NULL,
    TheLoai     NVARCHAR(100) NOT NULL,
    NhaXuatBan  NVARCHAR(150) NOT NULL,
    NamXuatBan  INT CHECK (NamXuatBan > 1900),
    GiaBan      DECIMAL(10,2) CHECK (GiaBan >= 0),
    SoLuongTon  INT DEFAULT 0 CHECK (SoLuongTon >= 0)
);

-- 3. Tạo bảng Nhân viên
CREATE TABLE NhanVien (
    MaNV     VARCHAR(10) PRIMARY KEY,
    HoTen    NVARCHAR(100) NOT NULL,
    NgaySinh DATE CHECK (NgaySinh <= GETDATE()),
    GioiTinh NVARCHAR(10) CHECK (GioiTinh IN (N'Nam', N'Nữ')),
    SDT      VARCHAR(15) UNIQUE,
    VaiTro   NVARCHAR(50) NOT NULL CHECK (VaiTro IN (N'Bán hàng', N'Nhập kho', N'Quản lý'))
);

-- 4. Tạo bảng Hóa đơn bán
CREATE TABLE HoaDonBan (
    MaHD    VARCHAR(15) PRIMARY KEY,
    NgayBan DATE DEFAULT GETDATE(),
    MaNV    VARCHAR(10) NOT NULL,
    FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV)
);

-- 5. Tạo bảng Chi tiết bán
CREATE TABLE ChiTietBan (
    MaHD       VARCHAR(15),
    MaSach     VARCHAR(10),
    SoLuongBan INT CHECK (SoLuongBan > 0),
    DonGiaBan  DECIMAL(10,2) CHECK (DonGiaBan >= 0),
    PRIMARY KEY (MaHD, MaSach),
    FOREIGN KEY (MaHD) REFERENCES HoaDonBan(MaHD) ON DELETE CASCADE,
    FOREIGN KEY (MaSach) REFERENCES Sach(MaSach)
);

-- 6. Tạo bảng Phiếu nhập
CREATE TABLE PhieuNhap (
    MaPN     VARCHAR(15) PRIMARY KEY,
    NgayNhap DATE DEFAULT GETDATE(),
    MaNV     VARCHAR(10) NOT NULL,
    FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV)
);

-- 7. Tạo bảng Chi tiết nhập
CREATE TABLE ChiTietNhap (
    MaPN        VARCHAR(15),
    MaSach      VARCHAR(10),
    SoLuongNhap INT CHECK (SoLuongNhap > 0),
    DonGiaNhap  DECIMAL(10,2) CHECK (DonGiaNhap >= 0),
    PRIMARY KEY (MaPN, MaSach),
    FOREIGN KEY (MaPN) REFERENCES PhieuNhap(MaPN) ON DELETE CASCADE,
    FOREIGN KEY (MaSach) REFERENCES Sach(MaSach)
);

-- 8. Tạo bảng Cơ sở vật chất
CREATE TABLE CoSoVatChat (
    MaCSVC      VARCHAR(10) PRIMARY KEY,
    TenThietBi  NVARCHAR(150) NOT NULL,
    LoaiThietBi NVARCHAR(100),
    SoLuong     INT CHECK (SoLuong >= 0),
    TinhTrang   NVARCHAR(50) CHECK (TinhTrang IN (N'Tốt', N'Cần sửa', N'Hỏng')),
    ViTri       NVARCHAR(100)
);