ALTER PROCEDURE BUY_PRODUCT(@Client_Name varchar(50),@Name varchar(20),@Color varchar(10),@Amount int)
AS
BEGIN
BEGIN TRY
declare @id_op int; SELECT @id_op=count(*) FROM Store_Cart 
declare @id_seller int; SELECT @id_seller=Seller FROM Products Where Product_name=@Name  and Color=@Color 
declare @id_prod int; SELECT @id_prod= ID_Product FROM Products Where Product_name=@Name  and Color=@Color 
declare @id_ckin int; SELECT @id_ckin=  ID FROM Users Where Name=@Client_Name
declare @adress int; SELECT @adress= ID_Adress  FROM Adress Where Client=@id_ckin
declare @date datetime; SET @date=GETDATE();
INSERT INTO Store_Cart values(@id_op,@id_ckin,@id_seller,@id_prod,@adress,@Amount, @date,1);
UPDATE Products SET Amount=Amount-@Amount WHERE  Product_name=@Name  and Color=@Color 
print ('Product purchased')
END TRY
BEGIN CATCH
print ERROR_NUMBER();
print ERROR_SEVERITY();
print ERROR_STATE();
print ERROR_PROCEDURE();
print ERROR_LINE();
print ERROR_MESSAGE();
END CATCH
end