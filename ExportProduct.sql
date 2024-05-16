USE [Mebel_shop]
GO

SELECT [ID_Seller]
      ,[Seller_name]
      ,[Seller_exp]
      ,[Seller_quot]
  FROM [dbo].[Seller]
  FOR JSON PATH,ROOT('Sellers');
GO


