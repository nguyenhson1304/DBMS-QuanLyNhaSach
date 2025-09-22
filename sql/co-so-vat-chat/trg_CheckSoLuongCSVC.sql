CREATE TRIGGER trg_CheckSoLuongCSVC
ON CoSoVatChat
FOR INSERT, UPDATE
AS
BEGIN
    IF EXISTS (SELECT 1 FROM inserted WHERE SoLuong < 0)
    BEGIN
        RAISERROR (N'Số lượng CSVC không thể âm', 16, 1);
        ROLLBACK TRANSACTION;
    END
END
