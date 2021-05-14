USE [filmclub]
GO

/****** Object: Table [dbo].[Attendance] Script Date: 2021/5/14 17:30:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Attendance] (
    [MeetingDate]    DATE     NULL,
    [MemberAttended] CHAR (1) NULL,
    [MemberId]       INT      NULL,
    [LocationId]     INT      NULL
);


