IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Product]') AND type in (N'U'))
ALTER TABLE [dbo].[Product] DROP CONSTRAINT IF EXISTS [FK_Product_ProductGroup_ProductGroupId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserTokens]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserTokens] DROP CONSTRAINT IF EXISTS [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT IF EXISTS [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT IF EXISTS [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT IF EXISTS [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT IF EXISTS [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoleClaims]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetRoleClaims] DROP CONSTRAINT IF EXISTS [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Agreement]') AND type in (N'U'))
ALTER TABLE [dbo].[Agreement] DROP CONSTRAINT IF EXISTS [FK_Agreement_ProductGroup_ProductGroupId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Agreement]') AND type in (N'U'))
ALTER TABLE [dbo].[Agreement] DROP CONSTRAINT IF EXISTS [FK_Agreement_Product_ProductId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Agreement]') AND type in (N'U'))
ALTER TABLE [dbo].[Agreement] DROP CONSTRAINT IF EXISTS [FK_Agreement_AspNetUsers_UserId]
GO
/****** Object:  Index [IX_Product_ProductGroupId]    Script Date: 6/8/2021 10:27:01 PM ******/
DROP INDEX IF EXISTS [IX_Product_ProductGroupId] ON [dbo].[Product]
GO
/****** Object:  Index [UserNameIndex]    Script Date: 6/8/2021 10:27:01 PM ******/
DROP INDEX IF EXISTS [UserNameIndex] ON [dbo].[AspNetUsers]
GO
/****** Object:  Index [EmailIndex]    Script Date: 6/8/2021 10:27:01 PM ******/
DROP INDEX IF EXISTS [EmailIndex] ON [dbo].[AspNetUsers]
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 6/8/2021 10:27:01 PM ******/
DROP INDEX IF EXISTS [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 6/8/2021 10:27:01 PM ******/
DROP INDEX IF EXISTS [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 6/8/2021 10:27:01 PM ******/
DROP INDEX IF EXISTS [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 6/8/2021 10:27:01 PM ******/
DROP INDEX IF EXISTS [RoleNameIndex] ON [dbo].[AspNetRoles]
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 6/8/2021 10:27:01 PM ******/
DROP INDEX IF EXISTS [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
GO
/****** Object:  Index [IX_Agreement_UserId]    Script Date: 6/8/2021 10:27:01 PM ******/
DROP INDEX IF EXISTS [IX_Agreement_UserId] ON [dbo].[Agreement]
GO
/****** Object:  Index [IX_Agreement_ProductId]    Script Date: 6/8/2021 10:27:01 PM ******/
DROP INDEX IF EXISTS [IX_Agreement_ProductId] ON [dbo].[Agreement]
GO
/****** Object:  Index [IX_Agreement_ProductGroupId]    Script Date: 6/8/2021 10:27:01 PM ******/
DROP INDEX IF EXISTS [IX_Agreement_ProductGroupId] ON [dbo].[Agreement]
GO
/****** Object:  Table [dbo].[ProductGroup]    Script Date: 6/8/2021 10:27:02 PM ******/
DROP TABLE IF EXISTS [dbo].[ProductGroup]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 6/8/2021 10:27:02 PM ******/
DROP TABLE IF EXISTS [dbo].[Product]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 6/8/2021 10:27:02 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserTokens]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/8/2021 10:27:02 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUsers]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/8/2021 10:27:02 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserRoles]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/8/2021 10:27:02 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserLogins]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/8/2021 10:27:02 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserClaims]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/8/2021 10:27:02 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 6/8/2021 10:27:02 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetRoleClaims]
GO
/****** Object:  Table [dbo].[Agreement]    Script Date: 6/8/2021 10:27:02 PM ******/
DROP TABLE IF EXISTS [dbo].[Agreement]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 6/8/2021 10:27:02 PM ******/
DROP TABLE IF EXISTS [dbo].[__EFMigrationsHistory]
GO
/****** Object:  Database [MVPSoftdb]    Script Date: 6/8/2021 10:27:02 PM ******/
DROP DATABASE IF EXISTS [MVPSoftdb]
GO
/****** Object:  Database [MVPSoftdb]    Script Date: 6/8/2021 10:27:02 PM ******/
CREATE DATABASE [MVPSoftdb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MVPSoftdb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\MVPSoftdb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MVPSoftdb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\MVPSoftdb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MVPSoftdb] SET COMPATIBILITY_LEVEL = 150
GO
USE [MVPSoftdb] 
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MVPSoftdb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MVPSoftdb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MVPSoftdb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MVPSoftdb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MVPSoftdb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MVPSoftdb] SET ARITHABORT OFF 
GO
ALTER DATABASE [MVPSoftdb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [MVPSoftdb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MVPSoftdb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MVPSoftdb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MVPSoftdb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MVPSoftdb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MVPSoftdb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MVPSoftdb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MVPSoftdb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MVPSoftdb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MVPSoftdb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MVPSoftdb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MVPSoftdb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MVPSoftdb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MVPSoftdb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MVPSoftdb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [MVPSoftdb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MVPSoftdb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MVPSoftdb] SET  MULTI_USER 
GO
ALTER DATABASE [MVPSoftdb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MVPSoftdb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MVPSoftdb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MVPSoftdb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MVPSoftdb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MVPSoftdb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [MVPSoftdb] SET QUERY_STORE = OFF
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 6/8/2021 10:27:02 PM ******/
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
/****** Object:  Table [dbo].[Agreement]    Script Date: 6/8/2021 10:27:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agreement](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EffectiveDate] [datetime2](7) NOT NULL,
	[ExpirationDate] [datetime2](7) NOT NULL,
	[ProductPrice] [decimal](18, 2) NOT NULL,
	[NewPrice] [decimal](18, 2) NOT NULL,
	[ProductId] [int] NOT NULL,
	[ProductGroupId] [int] NOT NULL,
	[UserId] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Agreement] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 6/8/2021 10:27:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](150) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/8/2021 10:27:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](150) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/8/2021 10:27:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](150) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/8/2021 10:27:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/8/2021 10:27:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](150) NOT NULL,
	[RoleId] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/8/2021 10:27:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](150) NOT NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 6/8/2021 10:27:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](150) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 6/8/2021 10:27:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductDescription] [nvarchar](1000) NOT NULL,
	[ProductNumber] [nvarchar](10) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Active] [bit] NOT NULL,
	[ProductGroupId] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductGroup]    Script Date: 6/8/2021 10:27:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductGroup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GroupDescription] [nvarchar](1000) NOT NULL,
	[GroupCode] [nvarchar](20) NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_ProductGroup] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210606182545_m1', N'5.0.4')
GO
SET IDENTITY_INSERT [dbo].[Agreement] ON 
GO
INSERT [dbo].[Agreement] ([Id], [EffectiveDate], [ExpirationDate], [ProductPrice], [NewPrice], [ProductId], [ProductGroupId], [UserId]) VALUES (2, CAST(N'2021-06-24T00:00:00.0000000' AS DateTime2), CAST(N'2021-06-23T00:00:00.0000000' AS DateTime2), CAST(123.00 AS Decimal(18, 2)), CAST(12334.00 AS Decimal(18, 2)), 1, 1, N'cb80202a-fe16-4f2a-be20-e4dd32f77c0c')
GO
INSERT [dbo].[Agreement] ([Id], [EffectiveDate], [ExpirationDate], [ProductPrice], [NewPrice], [ProductId], [ProductGroupId], [UserId]) VALUES (8, CAST(N'2021-06-24T00:00:00.0000000' AS DateTime2), CAST(N'2021-06-23T00:00:00.0000000' AS DateTime2), CAST(123.00 AS Decimal(18, 2)), CAST(8.00 AS Decimal(18, 2)), 1, 2, N'cb80202a-fe16-4f2a-be20-e4dd32f77c0c')
GO
INSERT [dbo].[Agreement] ([Id], [EffectiveDate], [ExpirationDate], [ProductPrice], [NewPrice], [ProductId], [ProductGroupId], [UserId]) VALUES (9, CAST(N'2021-06-24T00:00:00.0000000' AS DateTime2), CAST(N'2021-06-23T00:00:00.0000000' AS DateTime2), CAST(123.00 AS Decimal(18, 2)), CAST(12334.00 AS Decimal(18, 2)), 1, 2, N'cb80202a-fe16-4f2a-be20-e4dd32f77c0c')
GO
INSERT [dbo].[Agreement] ([Id], [EffectiveDate], [ExpirationDate], [ProductPrice], [NewPrice], [ProductId], [ProductGroupId], [UserId]) VALUES (10, CAST(N'2021-06-24T00:00:00.0000000' AS DateTime2), CAST(N'2021-06-23T00:00:00.0000000' AS DateTime2), CAST(123.00 AS Decimal(18, 2)), CAST(12334.00 AS Decimal(18, 2)), 1, 2, N'cb80202a-fe16-4f2a-be20-e4dd32f77c0c')
GO
SET IDENTITY_INSERT [dbo].[Agreement] OFF
GO
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'cb80202a-fe16-4f2a-be20-e4dd32f77c0c', N'User', N'maricic92marko@gmail.com', N'MARICIC92MARKO@GMAIL.COM', N'maricic92marko@gmail.com', N'MARICIC92MARKO@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEPrRqxWgfvU4MFfR/wqW4eOA25SR3DhG0rFhrVRyPPMi+GXUxtKI5mHahEn8DIfroA==', N'ORMDW7ECJQHBBEW5FG4BTMQJXWETSFPN', N'39d566e5-9443-4375-99e4-a6888cdad7da', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Product] ON 
GO
INSERT [dbo].[Product] ([Id], [ProductDescription], [ProductNumber], [Price], [Active], [ProductGroupId]) VALUES (1, N'testp', N'testpn', CAST(123.00 AS Decimal(18, 2)), 1, 1)
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductGroup] ON 
GO
INSERT [dbo].[ProductGroup] ([Id], [GroupDescription], [GroupCode], [Active]) VALUES (1, N'testg', N'testgc', 1)
GO
INSERT [dbo].[ProductGroup] ([Id], [GroupDescription], [GroupCode], [Active]) VALUES (2, N'g1', N'g1', 1)
GO
SET IDENTITY_INSERT [dbo].[ProductGroup] OFF
GO
/****** Object:  Index [IX_Agreement_ProductGroupId]    Script Date: 6/8/2021 10:27:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_Agreement_ProductGroupId] ON [dbo].[Agreement]
(
	[ProductGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Agreement_ProductId]    Script Date: 6/8/2021 10:27:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_Agreement_ProductId] ON [dbo].[Agreement]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Agreement_UserId]    Script Date: 6/8/2021 10:27:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_Agreement_UserId] ON [dbo].[Agreement]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 6/8/2021 10:27:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 6/8/2021 10:27:02 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 6/8/2021 10:27:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 6/8/2021 10:27:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 6/8/2021 10:27:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 6/8/2021 10:27:02 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 6/8/2021 10:27:02 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Product_ProductGroupId]    Script Date: 6/8/2021 10:27:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_Product_ProductGroupId] ON [dbo].[Product]
(
	[ProductGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Agreement]  WITH CHECK ADD  CONSTRAINT [FK_Agreement_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Agreement] CHECK CONSTRAINT [FK_Agreement_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Agreement]  WITH CHECK ADD  CONSTRAINT [FK_Agreement_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Agreement] CHECK CONSTRAINT [FK_Agreement_Product_ProductId]
GO
ALTER TABLE [dbo].[Agreement]  WITH CHECK ADD  CONSTRAINT [FK_Agreement_ProductGroup_ProductGroupId] FOREIGN KEY([ProductGroupId])
REFERENCES [dbo].[ProductGroup] ([Id])
GO
ALTER TABLE [dbo].[Agreement] CHECK CONSTRAINT [FK_Agreement_ProductGroup_ProductGroupId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductGroup_ProductGroupId] FOREIGN KEY([ProductGroupId])
REFERENCES [dbo].[ProductGroup] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductGroup_ProductGroupId]
GO
ALTER DATABASE [MVPSoftdb] SET  READ_WRITE 
GO
