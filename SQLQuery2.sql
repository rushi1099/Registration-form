CREATE PROC UserAddOrEdit
@Userid int,
@FirstName varchar(50),
@LastName varchar(50),
@Contact varchar(50),
@Gender varchar(20),
@Address varchar(250),
@Username varchar(50),
@Password varchar(50)
AS 
	IF @UserId= 0
	BEGIN 
		INSERT into UserRegistration(FirstName,LastName,Contact,Gender,Address,Username,Password)
		VALUES (@FirstName ,@LastName,@Contact,@Gender ,@Address ,@Username ,@Password) 
	
	END 
	ELSE 
	BEGIN
	UPDATE UserRegistration 
	SET
		FirstName =@FirstName, 
		LastName=@LastName,
		Contact=@Contact,
		Gender=@Gender,
		Address=@Address,
		Username=@Username,
		Password=@Password
	WHERE	UserId=@UserId
	END