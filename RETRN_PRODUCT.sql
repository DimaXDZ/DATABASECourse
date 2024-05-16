CREATE PROCEDURE RETURN_PRODUCT(@user int,@Name varchar(20),@amount int)
AS
BEGIN
BEGIN TRY
declare @id_prod int SET @id_prod=(SELECT ID_Product FROM Products WHERE Product_name=@Name);
UPDATE Store_Cart SET Stat=2 WHERE ID_user=@user and ID_product=@id_prod
UPDATE Products SET Amount=Amount+@amount WHERE  ID_product=@id_prod and Product_name=@Name
print('Product was returned')
END TRY
BEGIN CATCH
print('Incorrect operation')
END CATCH
END