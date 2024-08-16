USE [MoM]
GO

/****** Object:  Table [dbo].[Tblusermaster]    Script Date: 16-08-2024 22:55:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Tblusermaster](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](100) NULL,
	[Password] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[Phone-Number] [bigint] NULL,
	[IsActive] [int] NULL,
	[GlobalUserId] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Tblusermaster] ADD  DEFAULT (newid()) FOR [GlobalUserId]
GO


