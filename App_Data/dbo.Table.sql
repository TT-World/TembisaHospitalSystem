CREATE TABLE [dbo].[patientTbl]
(
	[Patient_ID] INT            NOT NULL,
    [Name]       NVARCHAR (50)  NULL,
    [Surname]    NVARCHAR (50)  NULL,
    [gender]     NCHAR (10)     NULL,
    [email]      TEXT  NULL,
    [BMI]    INT NULL,
    [Condition]  TEXT NULL,
    PRIMARY KEY ([Patient_ID])
)
