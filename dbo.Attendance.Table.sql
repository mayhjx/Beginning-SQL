USE [filmclub]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 2021/5/18 18:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[MeetingDate] [date] NULL,
	[MemberId] [int] NOT NULL,
	[LocationId] [int] NOT NULL,
 CONSTRAINT [attendance_pk] PRIMARY KEY CLUSTERED 
(
	[MemberId] ASC,
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [attend_membet_fk] FOREIGN KEY([MemberId])
REFERENCES [dbo].[MemberDetails] ([MemberId])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [attend_membet_fk]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [locationid_fk] FOREIGN KEY([LocationId])
REFERENCES [dbo].[Location] ([LocationId])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [locationid_fk]
GO
