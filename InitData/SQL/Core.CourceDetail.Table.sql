USE [DEPractice]
GO
/****** Object:  Table [Core].[CourceDetail]    Script Date: 2020/11/25 下午 05:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Core].[CourceDetail](
	[CourceDetailId] [bigint] IDENTITY(1,1) NOT NULL,
	[CourceId] [bigint] NOT NULL,
	[TeacherId] [bigint] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[IsOpen] [bit] NOT NULL,
	[IsFinished] [bit] NOT NULL,
 CONSTRAINT [PK_CourceDetail] PRIMARY KEY CLUSTERED 
(
	[CourceDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Core].[CourceDetail] ON 

INSERT [Core].[CourceDetail] ([CourceDetailId], [CourceId], [TeacherId], [StartDate], [EndDate], [IsOpen], [IsFinished]) VALUES (2, 2, 2, CAST(N'2020-06-29' AS Date), CAST(N'2020-08-15' AS Date), 1, 1)
INSERT [Core].[CourceDetail] ([CourceDetailId], [CourceId], [TeacherId], [StartDate], [EndDate], [IsOpen], [IsFinished]) VALUES (3, 10, 3, CAST(N'2020-06-08' AS Date), CAST(N'2020-08-12' AS Date), 1, 1)
INSERT [Core].[CourceDetail] ([CourceDetailId], [CourceId], [TeacherId], [StartDate], [EndDate], [IsOpen], [IsFinished]) VALUES (4, 4, 6, CAST(N'2020-05-26' AS Date), CAST(N'2020-11-19' AS Date), 1, 1)
INSERT [Core].[CourceDetail] ([CourceDetailId], [CourceId], [TeacherId], [StartDate], [EndDate], [IsOpen], [IsFinished]) VALUES (5, 9, 4, CAST(N'2020-01-03' AS Date), CAST(N'2020-04-28' AS Date), 1, 1)
INSERT [Core].[CourceDetail] ([CourceDetailId], [CourceId], [TeacherId], [StartDate], [EndDate], [IsOpen], [IsFinished]) VALUES (6, 7, 1, CAST(N'2020-01-17' AS Date), CAST(N'2020-06-16' AS Date), 1, 1)
INSERT [Core].[CourceDetail] ([CourceDetailId], [CourceId], [TeacherId], [StartDate], [EndDate], [IsOpen], [IsFinished]) VALUES (7, 13, 2, CAST(N'2020-01-02' AS Date), CAST(N'2020-09-01' AS Date), 1, 1)
INSERT [Core].[CourceDetail] ([CourceDetailId], [CourceId], [TeacherId], [StartDate], [EndDate], [IsOpen], [IsFinished]) VALUES (8, 3, 5, CAST(N'2020-06-25' AS Date), CAST(N'2020-07-12' AS Date), 1, 1)
INSERT [Core].[CourceDetail] ([CourceDetailId], [CourceId], [TeacherId], [StartDate], [EndDate], [IsOpen], [IsFinished]) VALUES (9, 14, 8, CAST(N'2020-04-13' AS Date), CAST(N'2020-05-10' AS Date), 1, 1)
INSERT [Core].[CourceDetail] ([CourceDetailId], [CourceId], [TeacherId], [StartDate], [EndDate], [IsOpen], [IsFinished]) VALUES (10, 11, 3, CAST(N'2020-04-22' AS Date), CAST(N'2020-09-19' AS Date), 1, 1)
INSERT [Core].[CourceDetail] ([CourceDetailId], [CourceId], [TeacherId], [StartDate], [EndDate], [IsOpen], [IsFinished]) VALUES (11, 5, 1, CAST(N'2020-01-28' AS Date), CAST(N'2020-08-18' AS Date), 1, 1)
INSERT [Core].[CourceDetail] ([CourceDetailId], [CourceId], [TeacherId], [StartDate], [EndDate], [IsOpen], [IsFinished]) VALUES (12, 9, 10, CAST(N'2020-06-13' AS Date), CAST(N'2020-07-10' AS Date), 1, 1)
INSERT [Core].[CourceDetail] ([CourceDetailId], [CourceId], [TeacherId], [StartDate], [EndDate], [IsOpen], [IsFinished]) VALUES (13, 5, 2, CAST(N'2020-05-24' AS Date), CAST(N'2020-10-13' AS Date), 1, 1)
INSERT [Core].[CourceDetail] ([CourceDetailId], [CourceId], [TeacherId], [StartDate], [EndDate], [IsOpen], [IsFinished]) VALUES (14, 11, 7, CAST(N'2020-06-21' AS Date), CAST(N'2020-06-10' AS Date), 1, 1)
INSERT [Core].[CourceDetail] ([CourceDetailId], [CourceId], [TeacherId], [StartDate], [EndDate], [IsOpen], [IsFinished]) VALUES (15, 8, 10, CAST(N'2020-05-20' AS Date), CAST(N'2020-11-03' AS Date), 1, 1)
INSERT [Core].[CourceDetail] ([CourceDetailId], [CourceId], [TeacherId], [StartDate], [EndDate], [IsOpen], [IsFinished]) VALUES (16, 15, 1, CAST(N'2020-03-13' AS Date), CAST(N'2020-10-21' AS Date), 1, 1)
INSERT [Core].[CourceDetail] ([CourceDetailId], [CourceId], [TeacherId], [StartDate], [EndDate], [IsOpen], [IsFinished]) VALUES (17, 16, 2, CAST(N'2020-06-11' AS Date), CAST(N'2020-06-13' AS Date), 1, 1)
INSERT [Core].[CourceDetail] ([CourceDetailId], [CourceId], [TeacherId], [StartDate], [EndDate], [IsOpen], [IsFinished]) VALUES (18, 8, 5, CAST(N'2020-02-05' AS Date), CAST(N'2020-05-03' AS Date), 1, 1)
INSERT [Core].[CourceDetail] ([CourceDetailId], [CourceId], [TeacherId], [StartDate], [EndDate], [IsOpen], [IsFinished]) VALUES (19, 8, 9, CAST(N'2020-04-07' AS Date), CAST(N'2020-04-01' AS Date), 1, 1)
INSERT [Core].[CourceDetail] ([CourceDetailId], [CourceId], [TeacherId], [StartDate], [EndDate], [IsOpen], [IsFinished]) VALUES (20, 11, 6, CAST(N'2020-05-21' AS Date), CAST(N'2020-08-17' AS Date), 1, 1)
INSERT [Core].[CourceDetail] ([CourceDetailId], [CourceId], [TeacherId], [StartDate], [EndDate], [IsOpen], [IsFinished]) VALUES (21, 14, 9, CAST(N'2020-01-24' AS Date), CAST(N'2020-08-14' AS Date), 1, 1)
INSERT [Core].[CourceDetail] ([CourceDetailId], [CourceId], [TeacherId], [StartDate], [EndDate], [IsOpen], [IsFinished]) VALUES (22, 4, 8, CAST(N'2020-08-01' AS Date), CAST(N'2020-11-30' AS Date), 1, 0)
SET IDENTITY_INSERT [Core].[CourceDetail] OFF
ALTER TABLE [Core].[CourceDetail] ADD  CONSTRAINT [DF_CourceDetail_IsOpen]  DEFAULT ((0)) FOR [IsOpen]
GO
ALTER TABLE [Core].[CourceDetail] ADD  CONSTRAINT [DF_CourceDetail_IsFinished]  DEFAULT ((0)) FOR [IsFinished]
GO
ALTER TABLE [Core].[CourceDetail]  WITH CHECK ADD  CONSTRAINT [FK_CourceDetail_Cource] FOREIGN KEY([CourceId])
REFERENCES [Core].[Cource] ([CourceId])
GO
ALTER TABLE [Core].[CourceDetail] CHECK CONSTRAINT [FK_CourceDetail_Cource]
GO
ALTER TABLE [Core].[CourceDetail]  WITH CHECK ADD  CONSTRAINT [FK_CourceDetail_Teacher] FOREIGN KEY([TeacherId])
REFERENCES [Core].[Teacher] ([TeacherId])
GO
ALTER TABLE [Core].[CourceDetail] CHECK CONSTRAINT [FK_CourceDetail_Teacher]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'CourceDetail', @level2type=N'COLUMN',@level2name=N'CourceDetailId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'課程ID' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'CourceDetail', @level2type=N'COLUMN',@level2name=N'CourceId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授課教師ID' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'CourceDetail', @level2type=N'COLUMN',@level2name=N'TeacherId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'開課日期' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'CourceDetail', @level2type=N'COLUMN',@level2name=N'StartDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'結業日期' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'CourceDetail', @level2type=N'COLUMN',@level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否開課' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'CourceDetail', @level2type=N'COLUMN',@level2name=N'IsOpen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否結束' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'CourceDetail', @level2type=N'COLUMN',@level2name=N'IsFinished'
GO
