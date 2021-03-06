USE [filmclub]
GO
/****** Object:  Table [dbo].[FavCategory]    Script Date: 2021/5/18 18:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FavCategory](
	[CategoryId] [int] NOT NULL,
	[MemberId] [int] NOT NULL,
 CONSTRAINT [favcatgory_pk] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC,
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FavCategory]  WITH CHECK ADD  CONSTRAINT [favcategory_category_fk] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
GO
ALTER TABLE [dbo].[FavCategory] CHECK CONSTRAINT [favcategory_category_fk]
GO
ALTER TABLE [dbo].[FavCategory]  WITH CHECK ADD  CONSTRAINT [favcategory_memberdetails_fk] FOREIGN KEY([MemberId])
REFERENCES [dbo].[MemberDetails] ([MemberId])
GO
ALTER TABLE [dbo].[FavCategory] CHECK CONSTRAINT [favcategory_memberdetails_fk]
GO
