-- Sách
INSERT INTO Sach VALUES
('S001', N'Lập trình C#', N'Nguyễn Văn A', N'CNTT', N'NXB Trẻ', 2021, 120000, 50),
('S002', N'Cơ sở dữ liệu', N'Trần Thị B', N'CNTT', N'NXB Giáo dục', 2020, 95000, 30),
('S003', N'Toán cao cấp', N'Lê Văn C', N'Giáo trình', N'NXB ĐHQG', 2019, 80000, 20),
('S004', N'Giải tích 1', N'Nguyễn Văn D', N'Giáo trình', N'NXB ĐHQG', 2018, 70000, 15),
('S005', N'Tiếng Anh A1', N'Trần Thị E', N'Ngoại ngữ', N'NXB Giáo dục', 2022, 60000, 40),
('S006', N'Kỹ năng mềm', N'Lê Thị F', N'Technical', N'NXB Lao động', 2021, 55000, 25),
('S007', N'Tiếng Nhật N5', N'Ngô Văn G', N'Ngoại ngữ', N'NXB Văn hóa', 2020, 88000, 10),
('S008', N'AI cơ bản', N'Phạm Văn H', N'CNTT', N'NXB Khoa học', 2023, 150000, 18),
('S009', N'Lập trình Java', N'Vũ Thị I', N'CNTT', N'NXB Trẻ', 2021, 130000, 35),
('S010', N'Photoshop cơ bản', N'Nguyễn Văn K', N'Thiết kế', N'NXB Lao động', 2019, 99000, 22);

-- Nhân viên
INSERT INTO NhanVien VALUES
('NV01', N'Nguyễn Văn D', '1990-05-12', N'Nam', '0912345678', N'Bán hàng'),
('NV02', N'Trần Thị E', '1995-08-22', N'Nữ', '0987654321', N'Nhập kho'),
('NV03', N'Phạm Văn F', '1988-01-10', N'Nam', '0933221100', N'Quản lý'),
('NV04', N'Lê Thị G', '1993-03-15', N'Nữ', '0977888999', N'Bán hàng'),
('NV05', N'Đặng Văn H', '1992-07-20', N'Nam', '0909123456', N'Nhập kho');

-- Hóa đơn bán
INSERT INTO HoaDonBan VALUES
('HD2025-001', '2025-09-01', 'NV01'),
('HD2025-002', '2025-09-05', 'NV04'),
('HD2025-003', '2025-09-06', 'NV01'),
('HD2025-004', '2025-09-07', 'NV04');

-- Chi tiết bán
INSERT INTO ChiTietBan VALUES
('HD2025-001', 'S001', 2, 120000),
('HD2025-001', 'S002', 1, 95000),
('HD2025-002', 'S003', 3, 80000),
('HD2025-002', 'S005', 2, 60000),
('HD2025-003', 'S009', 1, 130000),
('HD2025-003', 'S004', 2, 70000),
('HD2025-004', 'S006', 1, 55000),
('HD2025-004', 'S010', 2, 99000);

-- Phiếu nhập
INSERT INTO PhieuNhap VALUES
('PN2025-001', '2025-09-02', 'NV02'),
('PN2025-002', '2025-09-06', 'NV05'),
('PN2025-003', '2025-09-07', 'NV02');

-- Chi tiết nhập
INSERT INTO ChiTietNhap VALUES
('PN2025-001', 'S001', 10, 110000),
('PN2025-001', 'S003', 5, 75000),
('PN2025-002', 'S002', 7, 90000),
('PN2025-002', 'S005', 10, 55000),
('PN2025-003', 'S008', 8, 140000),
('PN2025-003', 'S010', 5, 95000);

-- Cơ sở vật chất
INSERT INTO CoSoVatChat VALUES
('TB01', N'Kệ sách gỗ', N'Kệ', 10, N'Tốt', N'Khu A'),
('TB02', N'Máy tính tiền', N'Thiết bị điện tử', 2, N'Tốt', N'Quầy thu ngân'),
('TB03', N'Ghế ngồi', N'Nội thất', 20, N'Cần sửa', N'Phòng đọc'),
('TB04', N'Điều hòa', N'Thiết bị điện tử', 3, N'Tốt', N'Khu B'),
('TB05', N'Bàn thu ngân', N'Nội thất', 1, N'Tốt', N'Quầy chính');