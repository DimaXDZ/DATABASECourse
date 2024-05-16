use Mebel_shop
go
CREATE TRIGGER PRODUCT_INSERT
ON dbo.Products
FOR INSERT
AS 
declare @Pric int
SELECT @Pric=Price
FROM inserted
IF @Pric<=0
Begin
print 'Incorrect data. Price should be higter that 0'
Rollback transaction
end;
declare @AMN int
SELECT @AMN=Amount
FROM inserted
IF @AMN<=0
Begin
print 'Incorrect data. Amount should be higter that 0'
Rollback transaction
end;
declare @id int
SELECT @id=ID_product
FROM inserted
IF @id<=0
Begin
print 'Incorrect data. ID should be higter that 0'
Rollback transaction
end;
declare @sel int
SELECT @sel=Seller
FROM inserted
IF @sel<=0
Begin
print 'Incorrect data. Seller should be higter that 0'
Rollback transaction
end;