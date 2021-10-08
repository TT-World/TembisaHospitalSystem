CREATE TABLE [dbo].[patients] (
    [Patient_ID] INT            NOT NULL,
    [Name]       NVARCHAR (50)  NULL,
    [Surname]    NVARCHAR (50)  NULL,
    [gender]     NCHAR (10)     NULL,
    [email]      NVARCHAR (50)  NULL,
    [BMI]    INT NULL,
	[password] NVARCHAR (50)  NULL,
    [Condition]  TEXT NULL,
    PRIMARY KEY CLUSTERED ([Patient_ID] ASC)
);

