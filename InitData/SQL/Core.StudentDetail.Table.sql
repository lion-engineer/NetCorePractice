USE [DEPractice]
GO
/****** Object:  Table [Core].[StudentDetail]    Script Date: 2020/11/25 下午 05:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Core].[StudentDetail](
	[StuedentDetailId] [bigint] IDENTITY(1,1) NOT NULL,
	[StudentId] [bigint] NOT NULL,
	[CourceDetailId] [bigint] NOT NULL,
	[Score] [int] NOT NULL,
	[IsPass] [bit] NOT NULL,
 CONSTRAINT [PK_StudentDetail] PRIMARY KEY CLUSTERED 
(
	[StuedentDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Core].[StudentDetail] ON 

INSERT [Core].[StudentDetail] ([StuedentDetailId], [StudentId], [CourceDetailId], [Score], [IsPass]) VALUES (2, 5, 20, 91, 1)
INSERT [Core].[StudentDetail] ([StuedentDetailId], [StudentId], [CourceDetailId], [Score], [IsPass]) VALUES (3, 10, 9, 37, 0)
INSERT [Core].[StudentDetail] ([StuedentDetailId], [StudentId], [CourceDetailId], [Score], [IsPass]) VALUES (4, 4, 16, 12, 0)
INSERT [Core].[StudentDetail] ([StuedentDetailId], [StudentId], [CourceDetailId], [Score], [IsPass]) VALUES (5, 10, 10, 77, 1)
INSERT [Core].[StudentDetail] ([StuedentDetailId], [StudentId], [CourceDetailId], [Score], [IsPass]) VALUES (6, 7, 13, 32, 0)
INSERT [Core].[StudentDetail] ([StuedentDetailId], [StudentId], [CourceDetailId], [Score], [IsPass]) VALUES (7, 7, 8, 77, 1)
INSERT [Core].[StudentDetail] ([StuedentDetailId], [StudentId], [CourceDetailId], [Score], [IsPass]) VALUES (8, 2, 6, 60, 1)
INSERT [Core].[StudentDetail] ([StuedentDetailId], [StudentId], [CourceDetailId], [Score], [IsPass]) VALUES (9, 4, 9, 55, 0)
INSERT [Core].[StudentDetail] ([StuedentDetailId], [StudentId], [CourceDetailId], [Score], [IsPass]) VALUES (10, 2, 12, 95, 1)
INSERT [Core].[StudentDetail] ([StuedentDetailId], [StudentId], [CourceDetailId], [Score], [IsPass]) VALUES (11, 4, 8, 14, 0)
INSERT [Core].[StudentDetail] ([StuedentDetailId], [StudentId], [CourceDetailId], [Score], [IsPass]) VALUES (12, 9, 17, 66, 1)
INSERT [Core].[StudentDetail] ([StuedentDetailId], [StudentId], [CourceDetailId], [Score], [IsPass]) VALUES (13, 9, 16, 20, 0)
INSERT [Core].[StudentDetail] ([StuedentDetailId], [StudentId], [CourceDetailId], [Score], [IsPass]) VALUES (14, 9, 15, 2, 0)
INSERT [Core].[StudentDetail] ([StuedentDetailId], [StudentId], [CourceDetailId], [Score], [IsPass]) VALUES (15, 10, 12, 60, 1)
INSERT [Core].[StudentDetail] ([StuedentDetailId], [StudentId], [CourceDetailId], [Score], [IsPass]) VALUES (16, 10, 4, 93, 1)
INSERT [Core].[StudentDetail] ([StuedentDetailId], [StudentId], [CourceDetailId], [Score], [IsPass]) VALUES (17, 9, 13, 28, 0)
INSERT [Core].[StudentDetail] ([StuedentDetailId], [StudentId], [CourceDetailId], [Score], [IsPass]) VALUES (18, 10, 13, 35, 0)
INSERT [Core].[StudentDetail] ([StuedentDetailId], [StudentId], [CourceDetailId], [Score], [IsPass]) VALUES (19, 2, 19, 46, 0)
INSERT [Core].[StudentDetail] ([StuedentDetailId], [StudentId], [CourceDetailId], [Score], [IsPass]) VALUES (20, 4, 3, 22, 0)
INSERT [Core].[StudentDetail] ([StuedentDetailId], [StudentId], [CourceDetailId], [Score], [IsPass]) VALUES (21, 5, 18, 56, 0)
SET IDENTITY_INSERT [Core].[StudentDetail] OFF
ALTER TABLE [Core].[StudentDetail] ADD  CONSTRAINT [DF_StudentDetail_IsPass]  DEFAULT ((0)) FOR [IsPass]
GO
ALTER TABLE [Core].[StudentDetail]  WITH CHECK ADD  CONSTRAINT [FK_StudentDetail_CourceDetail] FOREIGN KEY([CourceDetailId])
REFERENCES [Core].[CourceDetail] ([CourceDetailId])
GO
ALTER TABLE [Core].[StudentDetail] CHECK CONSTRAINT [FK_StudentDetail_CourceDetail]
GO
ALTER TABLE [Core].[StudentDetail]  WITH CHECK ADD  CONSTRAINT [FK_StudentDetail_Student] FOREIGN KEY([StudentId])
REFERENCES [Core].[Student] ([StudentId])
GO
ALTER TABLE [Core].[StudentDetail] CHECK CONSTRAINT [FK_StudentDetail_Student]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'StudentDetail', @level2type=N'COLUMN',@level2name=N'StuedentDetailId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'學生ID' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'StudentDetail', @level2type=N'COLUMN',@level2name=N'StudentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'選修課程ID' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'StudentDetail', @level2type=N'COLUMN',@level2name=N'CourceDetailId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分數' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'StudentDetail', @level2type=N'COLUMN',@level2name=N'Score'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否合格' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'StudentDetail', @level2type=N'COLUMN',@level2name=N'IsPass'
GO
