
USE Mebel_shop
GO

CREATE FULLTEXT CATALOG product_catalog;
go
CREATE FULLTEXT INDEX ON Products( 
 Product_name)
KEY INDEX PK_Products ON product_catalog;


CREATE PROCEDURE SEARCH_PRODUCT(@product_name varchar(50))
AS
BEGIN
SELECT Seller,Product_name,Price,Color,Type,Amount FROM Products WHERE CONTAINS(Product_name,@product_name)
END;