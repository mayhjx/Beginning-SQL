USE [filmclub]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 2021/5/18 18:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[LocationId] [int] NOT NULL,
	[Street] [varchar](100) NULL,
	[City] [varchar](75) NULL,
	[State] [varchar](75) NULL,
 CONSTRAINT [locationid_pk] PRIMARY KEY CLUSTERED 
(
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
