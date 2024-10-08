USE [MoM]
GO

/****** Object:  StoredProcedure [dbo].[UserRegistration]    Script Date: 20-07-2024 17:27:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UserRegistration]
    @UserName NVARCHAR(100),
    @Password NVARCHAR(100),
    @Email NVARCHAR(100),
    @PhoneNumber NVARCHAR(100),
    @IsActive BIT
AS
BEGIN
    IF EXISTS (SELECT 1 FROM dbo.Tblusermaster (nolock) WHERE UserName = @UserName OR Email = @Email)
	BEGIN
        SELECT 'Username or Email already exists' AS Result;
        RETURN;
    END
   
    INSERT INTO dbo.Tblusermaster (UserName, Password, Email,[Phone-Number], IsActive)
    VALUES (@UserName, @Password, @Email, @PhoneNumber, @IsActive);

    SELECT 'Data Inserted' AS Result;
END
GO


