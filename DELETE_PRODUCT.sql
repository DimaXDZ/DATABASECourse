CREATE PROCEDURE DELETE_PRODUCT(@name varchar(20))
as
begin
DELETE FROM Products WHERE Product_name=@name;
end;