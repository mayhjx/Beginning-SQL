USE [filmclub]
GO

/****** Object: Table [dbo].[MemberDetails] Script Date: 2021/5/14 17:31:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[MemberDetails] (
    [MemberId]      INT           NULL,
    [FirstName]     NVARCHAR (50) NULL,
    [LastName]      NVARCHAR (50) NULL,
    [DateOfBirth]   DATE          NULL,
    [Street]        VARCHAR (100) NULL,
    [City]          VARCHAR (75)  NULL,
    [State]         VARCHAR (75)  NULL,
    [ZipCode]       VARCHAR (12)  NULL,
    [Email]         VARCHAR (200) NULL,
    [DateOfJoining] DATE          NULL
);


