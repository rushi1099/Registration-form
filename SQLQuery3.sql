create PROCEDURE DBUser  
(  
   @UserName as varchar(50),  
   @Password as varchar(50)  
)  
AS  
SELECT * FROM [dbo].[UserRegistration] WHERE Username=@UserName AND Password=@Password 