USE [EstateProject]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 31/03/2023 06:49:49 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdvertiseAvailableVisitDays]    Script Date: 31/03/2023 06:49:49 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdvertiseAvailableVisitDays](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AdvertiseId] [int] NOT NULL,
	[AvailableVisitDay] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_AdvertiseAvailableVisitDays] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdvertiseImages]    Script Date: 31/03/2023 06:49:49 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdvertiseImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AdvertiseId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[FilePath] [nvarchar](max) NOT NULL,
	[FileName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_AdvertiseImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdvertiseVisitRequests]    Script Date: 31/03/2023 06:49:49 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdvertiseVisitRequests](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AdvertiseId] [int] NOT NULL,
	[UserIdOfUser] [int] NOT NULL,
	[FullNameOfUser] [nvarchar](max) NOT NULL,
	[IsConfirm] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[AvailableVisitDay] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_AdvertiseVisitRequests] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 31/03/2023 06:49:49 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAdvertises]    Script Date: 31/03/2023 06:49:49 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAdvertises](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[AdvertiseText] [nvarchar](100) NOT NULL,
	[AdvertiserName] [nvarchar](50) NOT NULL,
	[AdvertiserNumber] [nvarchar](11) NOT NULL,
	[Address] [nvarchar](200) NOT NULL,
	[RoomCount] [int] NOT NULL,
	[ForSale] [bit] NOT NULL,
	[Meterage] [bigint] NOT NULL,
	[PricePerMeter] [bigint] NULL,
	[TotalPrice] [bigint] NULL,
	[DespositPrice] [bigint] NULL,
	[RentPrice] [bigint] NULL,
	[BuildingType] [int] NOT NULL,
	[Description] [nvarchar](500) NULL,
	[HasGarage] [bit] NOT NULL,
	[HasElevator] [bit] NOT NULL,
	[HasBalcony] [bit] NOT NULL,
	[HasWarehouse] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[CreatedDate] [datetimeoffset](7) NOT NULL,
	[IsConfirm] [bit] NOT NULL,
 CONSTRAINT [PK_UserAdvertises] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserForgetPasswords]    Script Date: 31/03/2023 06:49:49 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserForgetPasswords](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[RecoveryKey] [nvarchar](max) NOT NULL,
	[CreatedDate] [datetimeoffset](7) NOT NULL,
	[ExpireDate] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_UserForgetPasswords] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 31/03/2023 06:49:49 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 31/03/2023 06:49:49 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[PasswordHash] [nvarchar](500) NOT NULL,
	[FullName] [nvarchar](100) NOT NULL,
	[Age] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[PhoneNumber] [nvarchar](11) NOT NULL,
	[IsEstateConsultant] [bit] NOT NULL,
	[EstateAddress] [nvarchar](200) NULL,
	[EstatePhoneNumber] [nvarchar](11) NULL,
	[EstateCode] [nvarchar](10) NULL,
	[LastLoginDate] [datetimeoffset](7) NULL,
	[SecurityStamp] [uniqueidentifier] NOT NULL,
	[ActivationGuid] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230322093236_init', N'7.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230322180522_update', N'7.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230324182622_addIsDelete', N'7.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230325214526_update2', N'7.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230325215152_update3', N'7.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230325235617_[Required]', N'7.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230325235630_AdvertiseAvailableVisitDays', N'7.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230326194214_AdvertiseVisitRequests', N'7.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230326202003_init', N'7.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230328000937_isdeleteforRoles', N'7.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230328164434_email-unique', N'7.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230328175745_UserForgetPassword', N'7.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230328184701_hadsomechange', N'7.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230328202400_userUpdate', N'7.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230328210507_userUpdate1', N'7.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230329205846_advImages', N'7.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230329221650_someChange', N'7.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230331094355_updateVisitDay', N'7.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230331100516_updateVisitDay1', N'7.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230331101203_updateVisitDay2', N'7.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230331102017_updateVisitDay3', N'7.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230331103234_updateUserAdv', N'7.0.4')
GO
SET IDENTITY_INSERT [dbo].[AdvertiseAvailableVisitDays] ON 

INSERT [dbo].[AdvertiseAvailableVisitDays] ([Id], [AdvertiseId], [AvailableVisitDay]) VALUES (41, 10, CAST(N'2023-03-31T10:22:24.7030000+00:00' AS DateTimeOffset))
INSERT [dbo].[AdvertiseAvailableVisitDays] ([Id], [AdvertiseId], [AvailableVisitDay]) VALUES (42, 10, CAST(N'2023-04-03T10:22:24.7030000+00:00' AS DateTimeOffset))
SET IDENTITY_INSERT [dbo].[AdvertiseAvailableVisitDays] OFF
GO
SET IDENTITY_INSERT [dbo].[AdvertiseImages] ON 

INSERT [dbo].[AdvertiseImages] ([Id], [AdvertiseId], [UserId], [FilePath], [FileName]) VALUES (1009, 1018, 14, N'D:\Source\Repos\RealEstateApi\EstateAgentApi\wwwroot/AdvertiseImages\44f6579a-c43e-4e6c-9689-c1457a0cb0b4.jpg', N'44f6579a-c43e-4e6c-9689-c1457a0cb0b4.jpg')
SET IDENTITY_INSERT [dbo].[AdvertiseImages] OFF
GO
SET IDENTITY_INSERT [dbo].[AdvertiseVisitRequests] ON 

INSERT [dbo].[AdvertiseVisitRequests] ([Id], [AdvertiseId], [UserIdOfUser], [FullNameOfUser], [IsConfirm], [IsDelete], [AvailableVisitDay]) VALUES (18, 10, 12, N'علی', 1, 0, CAST(N'2023-03-31T10:22:24.7030000+00:00' AS DateTimeOffset))
SET IDENTITY_INSERT [dbo].[AdvertiseVisitRequests] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([Id], [Name], [Description], [IsDelete]) VALUES (1, N'املاک', N'املاک', 0)
INSERT [dbo].[Roles] ([Id], [Name], [Description], [IsDelete]) VALUES (2, N'کاربر', N'کاربر', 0)
INSERT [dbo].[Roles] ([Id], [Name], [Description], [IsDelete]) VALUES (3, N'Admin', N'admin of website', 0)
INSERT [dbo].[Roles] ([Id], [Name], [Description], [IsDelete]) VALUES (4, N'asd', N'sad', 1)
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[UserAdvertises] ON 

INSERT [dbo].[UserAdvertises] ([Id], [UserId], [AdvertiseText], [AdvertiserName], [AdvertiserNumber], [Address], [RoomCount], [ForSale], [Meterage], [PricePerMeter], [TotalPrice], [DespositPrice], [RentPrice], [BuildingType], [Description], [HasGarage], [HasElevator], [HasBalcony], [HasWarehouse], [IsDelete], [CreatedDate], [IsConfirm]) VALUES (9, 15, N'مغازه 30 متری', N'املاک محسن', N'04133334174', N'میرداماد', 1, 0, 100, NULL, NULL, 10000, 10000, 1, N'--', 0, 0, 0, 1, 0, CAST(N'2023-03-24T23:14:57.4060175+04:30' AS DateTimeOffset), 0)
INSERT [dbo].[UserAdvertises] ([Id], [UserId], [AdvertiseText], [AdvertiserName], [AdvertiserNumber], [Address], [RoomCount], [ForSale], [Meterage], [PricePerMeter], [TotalPrice], [DespositPrice], [RentPrice], [BuildingType], [Description], [HasGarage], [HasElevator], [HasBalcony], [HasWarehouse], [IsDelete], [CreatedDate], [IsConfirm]) VALUES (10, 14, N'ویلای 200 متری', N'ادمین', N'04133319284', N'مرند', 1, 1, 200, 220, 44000, NULL, NULL, 1, N'--', 1, 0, 1, 0, 0, CAST(N'2023-03-24T23:19:24.8350686+04:30' AS DateTimeOffset), 1)
INSERT [dbo].[UserAdvertises] ([Id], [UserId], [AdvertiseText], [AdvertiserName], [AdvertiserNumber], [Address], [RoomCount], [ForSale], [Meterage], [PricePerMeter], [TotalPrice], [DespositPrice], [RentPrice], [BuildingType], [Description], [HasGarage], [HasElevator], [HasBalcony], [HasWarehouse], [IsDelete], [CreatedDate], [IsConfirm]) VALUES (11, 12, N'خانه 100 متری', N'املاک غلامحسن', N'04133319284', N'الهی پرست', 2, 1, 100, 200000, 20000000, NULL, NULL, 1, N'--', 0, 1, 1, 1, 0, CAST(N'2023-03-24T23:16:32.5606497+04:30' AS DateTimeOffset), 1)
INSERT [dbo].[UserAdvertises] ([Id], [UserId], [AdvertiseText], [AdvertiserName], [AdvertiserNumber], [Address], [RoomCount], [ForSale], [Meterage], [PricePerMeter], [TotalPrice], [DespositPrice], [RentPrice], [BuildingType], [Description], [HasGarage], [HasElevator], [HasBalcony], [HasWarehouse], [IsDelete], [CreatedDate], [IsConfirm]) VALUES (12, 14, N'فروش ویژه واحد تجاری', N'ادمین', N'04133334174', N'یاغچیان', 6, 1, 300, 2000, 600000, NULL, NULL, 2, N'string', 1, 1, 1, 1, 0, CAST(N'2023-03-27T13:19:42.2447290-07:00' AS DateTimeOffset), 1)
INSERT [dbo].[UserAdvertises] ([Id], [UserId], [AdvertiseText], [AdvertiserName], [AdvertiserNumber], [Address], [RoomCount], [ForSale], [Meterage], [PricePerMeter], [TotalPrice], [DespositPrice], [RentPrice], [BuildingType], [Description], [HasGarage], [HasElevator], [HasBalcony], [HasWarehouse], [IsDelete], [CreatedDate], [IsConfirm]) VALUES (1018, 14, N'انباری بزرگ', N'ادمین', N'04133319284', N'شهرک نور', 1, 1, 40, 220, 8800, NULL, NULL, 10, N'', 0, 0, 0, 0, 0, CAST(N'2023-03-30T22:59:36.4402062+04:30' AS DateTimeOffset), 1)
SET IDENTITY_INSERT [dbo].[UserAdvertises] OFF
GO
SET IDENTITY_INSERT [dbo].[UserRoles] ON 

INSERT [dbo].[UserRoles] ([Id], [UserId], [RoleId]) VALUES (12, 12, 1)
INSERT [dbo].[UserRoles] ([Id], [UserId], [RoleId]) VALUES (30, 14, 2)
INSERT [dbo].[UserRoles] ([Id], [UserId], [RoleId]) VALUES (31, 14, 3)
INSERT [dbo].[UserRoles] ([Id], [UserId], [RoleId]) VALUES (35, 15, 1)
SET IDENTITY_INSERT [dbo].[UserRoles] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [UserName], [Email], [PasswordHash], [FullName], [Age], [IsActive], [PhoneNumber], [IsEstateConsultant], [EstateAddress], [EstatePhoneNumber], [EstateCode], [LastLoginDate], [SecurityStamp], [ActivationGuid]) VALUES (12, N'Alii', N'alitaamicr7@gmail.com
', N'8jr0nptvznD5VS2WniCx5y6jYyQOSw1ZpfsulA8c/3A=', N'علی', 320, 1, N'09301327624', 0, NULL, NULL, NULL, CAST(N'2023-03-31T15:06:58.8007068+04:30' AS DateTimeOffset), N'17245544-24c9-4cb5-addf-f5c9a19eb782', N'17245544-24c9-4cb5-addf-f5c9a19eb782')
INSERT [dbo].[Users] ([Id], [UserName], [Email], [PasswordHash], [FullName], [Age], [IsActive], [PhoneNumber], [IsEstateConsultant], [EstateAddress], [EstatePhoneNumber], [EstateCode], [LastLoginDate], [SecurityStamp], [ActivationGuid]) VALUES (14, N'AliTaami', N'alitaami2002@gmail.com
', N'Q3ztxqIjJ8KLqRS2uX6BwQWylKvBZLD7EagITk88lYk=', N'alitaami', 21, 1, N'09141706696', 1, N'elahiparast', N'04133319284', N'dadsasd', CAST(N'2023-03-31T15:12:06.7155323+04:30' AS DateTimeOffset), N'2a8f7479-1ab3-4a78-b28e-a5cf62a02985', N'2a8f7479-1ab3-4a78-b28e-a5cf62a02985')
INSERT [dbo].[Users] ([Id], [UserName], [Email], [PasswordHash], [FullName], [Age], [IsActive], [PhoneNumber], [IsEstateConsultant], [EstateAddress], [EstatePhoneNumber], [EstateCode], [LastLoginDate], [SecurityStamp], [ActivationGuid]) VALUES (15, N'Mohsen', N'alitaami81@gmail.com
', N'Q3ztxqIjJ8KLqRS2uX6BwQWylKvBZLD7EagITk88lYk=', N'محسن عباسی', 22, 1, N'09141706695', 1, N'میرداماد', N'04133334174', N'ADasdad33', CAST(N'2023-03-24T23:42:32.1011272+04:30' AS DateTimeOffset), N'a2e186aa-2163-4c9d-8177-4b73cc7e905e', N'a23a2781-9d55-4eab-96ad-534b7bb07477')
INSERT [dbo].[Users] ([Id], [UserName], [Email], [PasswordHash], [FullName], [Age], [IsActive], [PhoneNumber], [IsEstateConsultant], [EstateAddress], [EstatePhoneNumber], [EstateCode], [LastLoginDate], [SecurityStamp], [ActivationGuid]) VALUES (16, N'Mahdi', N'mahdi@example.com', N'8jr0nptvznD5VS2WniCx5y6jYyQOSw1ZpfsulA8c/3A=', N'مهدی رنجکش', 30, 1, N'09036922881', 0, NULL, NULL, NULL, CAST(N'2023-03-27T17:07:40.2806607-07:00' AS DateTimeOffset), N'1ab8fbd9-a6fb-4092-80c3-4d6e9f2f6f98', N'1ab8fbd9-a6fb-4092-80c3-4d6e9f2f6f98')
INSERT [dbo].[Users] ([Id], [UserName], [Email], [PasswordHash], [FullName], [Age], [IsActive], [PhoneNumber], [IsEstateConsultant], [EstateAddress], [EstatePhoneNumber], [EstateCode], [LastLoginDate], [SecurityStamp], [ActivationGuid]) VALUES (22, N'alitaamovic', N'alitaamicr77@gmail.com', N'8jr0nptvznD5VS2WniCx5y6jYyQOSw1ZpfsulA8c/3A=', N'Ali', 22, 1, N'09157751028', 0, NULL, NULL, NULL, CAST(N'2023-03-28T14:11:10.3507086-07:00' AS DateTimeOffset), N'fac04349-1ce6-467a-a322-9b7b31532cc3', N'8d4a734e-d531-4905-ba94-c53e17b7641f')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Roles] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDelete]
GO
ALTER TABLE [dbo].[UserAdvertises] ADD  DEFAULT (CONVERT([bit],(0))) FOR [ForSale]
GO
ALTER TABLE [dbo].[UserAdvertises] ADD  DEFAULT ((0)) FOR [BuildingType]
GO
ALTER TABLE [dbo].[UserAdvertises] ADD  DEFAULT (CONVERT([bit],(0))) FOR [HasGarage]
GO
ALTER TABLE [dbo].[UserAdvertises] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDelete]
GO
ALTER TABLE [dbo].[UserAdvertises] ADD  DEFAULT ('0001-01-01T00:00:00.0000000+00:00') FOR [CreatedDate]
GO
ALTER TABLE [dbo].[UserAdvertises] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsConfirm]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [ActivationGuid]
GO
ALTER TABLE [dbo].[AdvertiseAvailableVisitDays]  WITH CHECK ADD  CONSTRAINT [FK_AdvertiseAvailableVisitDays_UserAdvertises_AdvertiseId] FOREIGN KEY([AdvertiseId])
REFERENCES [dbo].[UserAdvertises] ([Id])
GO
ALTER TABLE [dbo].[AdvertiseAvailableVisitDays] CHECK CONSTRAINT [FK_AdvertiseAvailableVisitDays_UserAdvertises_AdvertiseId]
GO
ALTER TABLE [dbo].[AdvertiseImages]  WITH CHECK ADD  CONSTRAINT [FK_AdvertiseImages_UserAdvertises_AdvertiseId] FOREIGN KEY([AdvertiseId])
REFERENCES [dbo].[UserAdvertises] ([Id])
GO
ALTER TABLE [dbo].[AdvertiseImages] CHECK CONSTRAINT [FK_AdvertiseImages_UserAdvertises_AdvertiseId]
GO
ALTER TABLE [dbo].[AdvertiseVisitRequests]  WITH CHECK ADD  CONSTRAINT [FK_AdvertiseVisitRequests_UserAdvertises_AdvertiseId] FOREIGN KEY([AdvertiseId])
REFERENCES [dbo].[UserAdvertises] ([Id])
GO
ALTER TABLE [dbo].[AdvertiseVisitRequests] CHECK CONSTRAINT [FK_AdvertiseVisitRequests_UserAdvertises_AdvertiseId]
GO
ALTER TABLE [dbo].[UserAdvertises]  WITH CHECK ADD  CONSTRAINT [FK_UserAdvertises_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserAdvertises] CHECK CONSTRAINT [FK_UserAdvertises_Users_UserId]
GO
ALTER TABLE [dbo].[UserForgetPasswords]  WITH CHECK ADD  CONSTRAINT [FK_UserForgetPasswords_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserForgetPasswords] CHECK CONSTRAINT [FK_UserForgetPasswords_Users_UserId]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Roles_RoleId]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Users_UserId]
GO
