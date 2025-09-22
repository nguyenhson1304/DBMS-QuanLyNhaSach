CREATE TRIGGER trg_CheckTuoiNhanVien
ON NhanVien
FOR INSERT
AS
BEGIN
    IF EXISTS (SELECT 1 FROM inserted WHERE DATEDIFF(YEAR, NgaySinh, GETDATE()) < 18)
    BEGIN
        RAISERROR (N'Nhân viên phải đủ 18 tuổi', 16, 1);
        ROLLBACK TRANSACTION;
    END
END
