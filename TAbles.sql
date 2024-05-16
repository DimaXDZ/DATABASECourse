CREATE TABLE Products(

ID_Product int CONSTRAINT [PK_products] Primary key,
Seller int,
Price int,
Product_name varchar(20),
Type varchar(15),
Color varchar(15),
Amount int
)
CREATE TABLE Status(

Status_id int CONSTRAINT [PK_status] Primary key,
Status_name varchar(10)
)
CREATE TABLE Seller(

ID_Seller int CONSTRAINT [PK_seller] Primary key,

Seller_name varchar(50),
Seller_exp int,
Seller_quot int
)CREATE TABLE Users(

ID int CONSTRAINT [PK_users] Primary key,

Name varchar(20),
mail varchar,
Password varchar(20)
)
CREATE TABLE Store_Cart(

op_id int CONSTRAINT [PK_cart] Primary key,
ID_user int,
ID_Seller int,
ID_product int,
ID_Adress int,
Time_buy datetime,
Amount int,
Stat int,
FOREIGN KEY(ID_user) REFERENCES Users(ID),
FOREIGN KEY(ID_Seller) REFERENCES Seller(ID_Seller),
FOREIGN KEY(ID_product) REFERENCES Products(ID_Product),
FOREIGN KEY(ID_Adress) REFERENCES Adress(ID_Adress),
FOREIGN KEY(Stat) REFERENCES Status(Status_id),
)