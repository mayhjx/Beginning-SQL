USE [filmclub]
GO
/****** Object:  Table [dbo].[Films]    Script Date: 2021/5/18 18:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Films](
	[FilmId] [int] NOT NULL,
	[YearReleased] [int] NULL,
	[PlotSummary] [varchar](2000) NULL,
	[AvailableOnDVD] [char](1) NULL,
	[Rating] [int] NULL,
	[CategoryId] [int] NULL,
	[FilmName] [varchar](100) NOT NULL,
	[DVDPrice] [decimal](12, 2) NULL,
 CONSTRAINT [films_pk] PRIMARY KEY CLUSTERED 
(
	[FilmId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Films]  WITH CHECK ADD  CONSTRAINT [films_cat_fk] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
GO
ALTER TABLE [dbo].[Films] CHECK CONSTRAINT [films_cat_fk]
GO
