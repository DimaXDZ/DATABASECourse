CREATE PROCEDURE UPDATE_PRODUCT(@id int,@seller int,@price int,@product_name varchar(50),@color varchar(20),@type varchar(20),@amount int)
AS
BEGIN
if (Select ID_product FROM Products)!=null
UPDATE Products SET Seller=@seller,Price=@price,Product_name=@product_name,Color=@color,Type=@type,Amount=@amount
WHERE ID_product=@id;
else Print('No goods to update')
END