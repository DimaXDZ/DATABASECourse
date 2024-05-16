USE Mebel_shop
go
DECLARE @Cou int SET @Cou=0
DECLARE @id int SET @id=1
DECLARE @seller int SET @seller=1
DECLARE @price int SET @price=100
DECLARE @product_name varchar(20) SET @product_name='Big Bed'
DECLARE @type varchar(10) SET @type='RoomMebel'
DECLARE @color varchar(10) SET @color='Red'
DECLARE @amount int SET @amount=150
WHILE (@Cou<=100000)
BEGIN
SET @id=@id+1
SET @seller=@seller+1
SET @price=@price+100
SET @product_name=@product_name+CAST(@id as varchar)
SET @type=@type+CAST(@id as varchar)
SET @color=@color+CAST(@id as varchar)
SET @amount=@amount+5
INSERT Products values (@id,@seller,@price,@product_name,@type,@color,@amount);
SET @Cou=@Cou+1
if @seller=3 SET @seller=1
END

