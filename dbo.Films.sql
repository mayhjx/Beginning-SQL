USE [filmclub]
GO

/****** Object: Table [dbo].[Films] Script Date: 2021/5/14 17:31:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Films] (
    [FilmId]         INT            NULL,
    [YearReleased]   INT            NULL,
    [PlotSummary]    VARCHAR (2000) NULL,
    [AvailableOnDVD] CHAR (1)       NULL,
    [Rating]         INT            NULL,
    [CategoryId]     INT            NULL,
    [FilmName]       VARCHAR (100)  NULL
);


