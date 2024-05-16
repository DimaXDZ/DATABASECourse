CREATE PROCEDURE ADD_PRODUCT(@id int,@seller int,@price int,@product_name varchar(50),@color varchar(20),@type varchar(20),@amount int)
AS
BEGIN
INSERT Products values (@id,@seller,@price,@product_name,@color,@type,@amount);
END;


