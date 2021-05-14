USE [filmclub]
GO

/****** Object: Table [dbo].[Location] Script Date: 2021/5/14 17:31:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Location] (
    [LocationId] INT           NULL,
    [Street]     VARCHAR (100) NULL,
    [City]       VARCHAR (75)  NULL,
    [State]      VARCHAR (75)  NULL
);


