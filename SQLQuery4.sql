CREATE PROC UserViewById
@UserId int 
AS
	SELECT *
	FROM UserRegistration
	WHERE UserId=@UserId
