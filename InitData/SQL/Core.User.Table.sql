USE [DEPractice]
GO
/****** Object:  Table [Core].[User]    Script Date: 2020/11/25 下午 05:49:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Core].[User](
	[UserId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](10) NOT NULL,
	[UserNo] [varchar](10) NOT NULL,
	[Sex] [varchar](1) NOT NULL,
	[Birthday] [date] NOT NULL,
	[Phone] [varchar](30) NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[UserType] [varchar](1) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Core].[User] ON 

INSERT [Core].[User] ([UserId], [Name], [UserNo], [Sex], [Birthday], [Phone], [Address], [UserType]) VALUES (1, N'學生A', N'A121365052', N'M', CAST(N'1991-01-01' AS Date), N'0911000001', N'新北市板橋區中山路一段1號', N'0')
INSERT [Core].[User] ([UserId], [Name], [UserNo], [Sex], [Birthday], [Phone], [Address], [UserType]) VALUES (2, N'學生B', N'A177980414', N'M', CAST(N'1991-02-01' AS Date), N'0911000002', N'新北市板橋區中山路一段2號', N'0')
INSERT [Core].[User] ([UserId], [Name], [UserNo], [Sex], [Birthday], [Phone], [Address], [UserType]) VALUES (3, N'學生C', N'A112819047', N'M', CAST(N'1991-03-01' AS Date), N'0911000003', N'新北市板橋區中山路一段3號', N'0')
INSERT [Core].[User] ([UserId], [Name], [UserNo], [Sex], [Birthday], [Phone], [Address], [UserType]) VALUES (4, N'學生D', N'A199866459', N'M', CAST(N'1991-04-01' AS Date), N'0911000004', N'新北市板橋區中山路一段4號', N'0')
INSERT [Core].[User] ([UserId], [Name], [UserNo], [Sex], [Birthday], [Phone], [Address], [UserType]) VALUES (5, N'學生E', N'A205076918', N'F', CAST(N'1991-05-01' AS Date), N'0911000005', N'新北市板橋區中山路一段5號', N'0')
INSERT [Core].[User] ([UserId], [Name], [UserNo], [Sex], [Birthday], [Phone], [Address], [UserType]) VALUES (6, N'學生F', N'A227328171', N'F', CAST(N'1991-06-01' AS Date), N'0911000006', N'新北市板橋區中山路一段6號', N'0')
INSERT [Core].[User] ([UserId], [Name], [UserNo], [Sex], [Birthday], [Phone], [Address], [UserType]) VALUES (7, N'學生G', N'A241137681', N'F', CAST(N'1991-07-01' AS Date), N'0911000007', N'新北市板橋區中山路一段7號', N'0')
INSERT [Core].[User] ([UserId], [Name], [UserNo], [Sex], [Birthday], [Phone], [Address], [UserType]) VALUES (8, N'學生F', N'A254120056', N'F', CAST(N'1991-08-01' AS Date), N'0911000008', N'新北市板橋區中山路一段8號', N'0')
INSERT [Core].[User] ([UserId], [Name], [UserNo], [Sex], [Birthday], [Phone], [Address], [UserType]) VALUES (9, N'學生G', N'A261500500', N'F', CAST(N'1991-09-01' AS Date), N'0911000009', N'新北市板橋區中山路一段9號', N'0')
INSERT [Core].[User] ([UserId], [Name], [UserNo], [Sex], [Birthday], [Phone], [Address], [UserType]) VALUES (10, N'學生H', N'A263347994', N'F', CAST(N'1991-10-01' AS Date), N'0911000010', N'新北市板橋區中山路一段10號', N'0')
INSERT [Core].[User] ([UserId], [Name], [UserNo], [Sex], [Birthday], [Phone], [Address], [UserType]) VALUES (11, N'教師A', N'H178100257', N'M', CAST(N'1971-01-01' AS Date), N'0911000011', N'新北市板橋區中山路二段1號', N'1')
INSERT [Core].[User] ([UserId], [Name], [UserNo], [Sex], [Birthday], [Phone], [Address], [UserType]) VALUES (12, N'教師B', N'H136747321', N'M', CAST(N'1971-02-01' AS Date), N'0911000012', N'新北市板橋區中山路二段2號', N'1')
INSERT [Core].[User] ([UserId], [Name], [UserNo], [Sex], [Birthday], [Phone], [Address], [UserType]) VALUES (13, N'教師C', N'H111628941', N'M', CAST(N'1971-03-01' AS Date), N'0911000013', N'新北市板橋區中山路二段3號', N'1')
INSERT [Core].[User] ([UserId], [Name], [UserNo], [Sex], [Birthday], [Phone], [Address], [UserType]) VALUES (14, N'教師D', N'H108838246', N'M', CAST(N'1971-04-01' AS Date), N'0911000014', N'新北市板橋區中山路二段4號', N'1')
INSERT [Core].[User] ([UserId], [Name], [UserNo], [Sex], [Birthday], [Phone], [Address], [UserType]) VALUES (15, N'教師E', N'H239049940', N'F', CAST(N'1971-05-01' AS Date), N'0911000015', N'新北市板橋區中山路二段5號', N'1')
INSERT [Core].[User] ([UserId], [Name], [UserNo], [Sex], [Birthday], [Phone], [Address], [UserType]) VALUES (16, N'教師F', N'H244612973', N'F', CAST(N'1971-06-01' AS Date), N'0911000016', N'新北市板橋區中山路二段6號', N'1')
INSERT [Core].[User] ([UserId], [Name], [UserNo], [Sex], [Birthday], [Phone], [Address], [UserType]) VALUES (17, N'教師G', N'H283614046', N'F', CAST(N'1971-07-01' AS Date), N'0911000017', N'新北市板橋區中山路二段7號', N'1')
INSERT [Core].[User] ([UserId], [Name], [UserNo], [Sex], [Birthday], [Phone], [Address], [UserType]) VALUES (18, N'教師F', N'H203838668', N'F', CAST(N'1971-08-01' AS Date), N'0911000018', N'新北市板橋區中山路二段8號', N'1')
INSERT [Core].[User] ([UserId], [Name], [UserNo], [Sex], [Birthday], [Phone], [Address], [UserType]) VALUES (19, N'教師G', N'H247557022', N'F', CAST(N'1971-09-01' AS Date), N'0911000019', N'新北市板橋區中山路二段9號', N'1')
INSERT [Core].[User] ([UserId], [Name], [UserNo], [Sex], [Birthday], [Phone], [Address], [UserType]) VALUES (20, N'教師H', N'H263077770', N'F', CAST(N'1971-10-01' AS Date), N'0911000020', N'新北市板橋區中山路二段10號', N'1')
SET IDENTITY_INSERT [Core].[User] OFF
ALTER TABLE [Core].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_User] FOREIGN KEY([UserId])
REFERENCES [Core].[User] ([UserId])
GO
ALTER TABLE [Core].[User] CHECK CONSTRAINT [FK_User_User]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份證字號' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'UserNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性別' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Sex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生日' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Birthday'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'聯絡電話' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身分類別 0:學生 1:教職員' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'UserType'
GO
