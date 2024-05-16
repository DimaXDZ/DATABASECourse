use Mebel_shop
go
Create TRIGGER PRODUCT_DELETE
ON Products
AFTER DELETE
AS 
print 'Product was deleted'