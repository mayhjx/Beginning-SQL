USE [filmclub]
GO
/****** Object:  Table [dbo].[MemberDetails]    Script Date: 2021/5/18 18:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberDetails](
	[MemberId] [int] NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[DateOfBirth] [date] NULL,
	[Street] [varchar](100) NULL,
	[City] [varchar](75) NULL,
	[State] [varchar](75) NULL,
	[ZipCode] [varchar](12) NULL,
	[Email] [varchar](200) NULL,
	[DateOfJoining] [date] NULL,
 CONSTRAINT [memberdetails_pk] PRIMARY KEY CLUSTERED 
(
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [member_name_indx]    Script Date: 2021/5/18 18:08:11 ******/
CREATE UNIQUE NONCLUSTERED INDEX [member_name_indx] ON [dbo].[MemberDetails]
(
	[LastName] DESC,
	[FirstName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
