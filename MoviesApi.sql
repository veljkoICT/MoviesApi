USE [MoviesApi]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 6/17/2021 2:04:39 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Actors]    Script Date: 6/17/2021 2:04:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](20) NOT NULL,
	[LastName] [nvarchar](20) NOT NULL,
	[DateOfBirth] [datetime2](7) NOT NULL,
	[Biography] [nvarchar](150) NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedAt] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Actors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 6/17/2021 2:04:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedAt] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilmDirectors]    Script Date: 6/17/2021 2:04:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilmDirectors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](20) NOT NULL,
	[LastName] [nvarchar](20) NOT NULL,
	[DateOfBirth] [datetime2](7) NOT NULL,
	[Biography] [nvarchar](150) NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedAt] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_FilmDirectors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovieActors]    Script Date: 6/17/2021 2:04:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieActors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MovieId] [int] NOT NULL,
	[ActorId] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedAt] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_MovieActors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 6/17/2021 2:04:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](25) NOT NULL,
	[Duration] [int] NOT NULL,
	[ReleaseDate] [datetime2](7) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[FilmDirectorId] [int] NOT NULL,
	[Description] [nvarchar](150) NULL,
	[Available] [bit] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedAt] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Movies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 6/17/2021 2:04:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](15) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedAt] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UseCaseLogs]    Script Date: 6/17/2021 2:04:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UseCaseLogs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[UseCaseName] [nvarchar](max) NULL,
	[Data] [nvarchar](max) NULL,
	[Actor] [nvarchar](max) NULL,
 CONSTRAINT [PK_UseCaseLogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserMovies]    Script Date: 6/17/2021 2:04:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserMovies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[MovieId] [int] NOT NULL,
	[EndDate] [datetime2](7) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedAt] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_UserMovies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 6/17/2021 2:04:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](30) NOT NULL,
	[LastName] [nvarchar](30) NOT NULL,
	[Username] [nvarchar](30) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[RoleId] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedAt] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserUseCases]    Script Date: 6/17/2021 2:04:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserUseCases](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[UseCaseId] [int] NOT NULL,
 CONSTRAINT [PK_UserUseCases] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210524173747_add user and role configuration', N'5.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210524185419_add movies, actors, filmdirectors and categories configuration', N'5.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210525154533_add movieActors configuration', N'5.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210525155412_add userMovies configuration', N'5.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210612143134_change base entity', N'5.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210614124151_add logging use case configuration', N'5.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210615013035_change movie actors configuration', N'5.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210615013253_change movie actors configuration 2', N'5.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210615120130_add order configuration', N'5.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210615121037_fix configuration', N'5.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210615123652_add user movie conf', N'5.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210615193139_add user use cases', N'5.0.6')
SET IDENTITY_INSERT [dbo].[Actors] ON 

INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (4, N'Kavon', N'Zieme', CAST(N'2020-12-31T05:37:07.1599212' AS DateTime2), N'Fantastic', CAST(N'2021-06-13T19:29:07.8389522' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (5, N'Shannon', N'Murazik', CAST(N'2020-08-21T10:06:40.9470965' AS DateTime2), N'Ergonomic', CAST(N'2021-06-13T19:29:07.8393682' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (6, N'Wiley', N'Nikolaus', CAST(N'2021-02-05T17:05:56.1568359' AS DateTime2), N'Practical', CAST(N'2021-06-13T19:29:07.8393702' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (7, N'Catherine', N'Kshlerin', CAST(N'2020-08-24T20:27:26.4064995' AS DateTime2), N'Awesome', CAST(N'2021-06-13T19:29:07.8393713' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (8, N'Golda', N'Fahey', CAST(N'2020-07-16T17:02:18.0477102' AS DateTime2), N'Refined', CAST(N'2021-06-13T19:29:07.8393735' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (9, N'Lucienne', N'Berge', CAST(N'2020-09-10T01:32:13.3366151' AS DateTime2), N'Rustic', CAST(N'2021-06-13T19:29:07.8393754' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (10, N'Craig', N'Collins', CAST(N'2021-02-01T20:08:17.3798701' AS DateTime2), N'Awesome', CAST(N'2021-06-13T19:29:07.8393766' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (11, N'Rowan', N'Wehner', CAST(N'2020-11-24T03:40:14.7998884' AS DateTime2), N'Sleek', CAST(N'2021-06-13T19:29:07.8393935' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (12, N'Elias', N'Prosacco', CAST(N'2021-04-23T22:40:05.0147395' AS DateTime2), N'Incredible', CAST(N'2021-06-13T19:29:07.8393666' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (13, N'Nikolas', N'Ledner', CAST(N'2021-01-17T00:31:19.1784905' AS DateTime2), N'Refined', CAST(N'2021-06-13T19:29:07.8393953' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (14, N'Rosina', N'McDermott', CAST(N'2020-10-15T17:14:23.6156300' AS DateTime2), N'Handmade', CAST(N'2021-06-13T19:29:07.8393995' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (15, N'Summer', N'Grant', CAST(N'2021-04-04T11:53:41.5334344' AS DateTime2), N'Sleek', CAST(N'2021-06-13T19:29:07.8394004' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (16, N'Darrick', N'Frami', CAST(N'2020-12-13T01:17:13.0513189' AS DateTime2), N'Ergonomic', CAST(N'2021-06-13T19:29:07.8394024' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (17, N'Anika', N'Becker', CAST(N'2020-12-05T11:35:29.8572063' AS DateTime2), N'Gorgeous', CAST(N'2021-06-13T19:29:07.8394037' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (18, N'Tyrell', N'Wiza', CAST(N'2021-04-29T14:45:09.6458233' AS DateTime2), N'Handmade', CAST(N'2021-06-13T19:29:07.8394052' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (19, N'Dina', N'Gislason', CAST(N'2021-03-14T13:57:55.2418474' AS DateTime2), N'Small', CAST(N'2021-06-13T19:29:07.8394069' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (20, N'Asa', N'Stracke', CAST(N'2020-10-16T01:09:24.5936453' AS DateTime2), N'Generic', CAST(N'2021-06-13T19:29:07.8394082' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (21, N'Dixie', N'Vandervort', CAST(N'2021-02-09T04:24:33.8921312' AS DateTime2), N'Generic', CAST(N'2021-06-13T19:29:07.8393973' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (22, N'Eloise', N'Wiza', CAST(N'2020-07-11T01:19:37.8370481' AS DateTime2), N'Rustic', CAST(N'2021-06-13T19:29:07.8393653' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (23, N'Abel', N'Bashirian', CAST(N'2020-08-21T01:23:25.1992398' AS DateTime2), N'Unbranded', CAST(N'2021-06-13T19:29:07.8393635' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (24, N'Fredy', N'Gaylord', CAST(N'2020-09-30T02:51:07.8136234' AS DateTime2), N'Fantastic', CAST(N'2021-06-13T19:29:07.8393621' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (25, N'Lexi', N'Marvin', CAST(N'2021-04-23T05:22:03.6203976' AS DateTime2), N'Rustic', CAST(N'2021-06-13T19:29:07.8393293' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (26, N'Maye', N'Jacobson', CAST(N'2020-06-26T03:28:55.9666998' AS DateTime2), N'Sleek', CAST(N'2021-06-13T19:29:07.8393353' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (27, N'Leanna', N'Ernser', CAST(N'2021-05-23T14:48:36.6293732' AS DateTime2), N'Practical', CAST(N'2021-06-13T19:29:07.8393368' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (28, N'Iva', N'Streich', CAST(N'2021-05-20T06:12:17.3731753' AS DateTime2), N'Licensed', CAST(N'2021-06-13T19:29:07.8393390' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (29, N'Cristian', N'Dibbert', CAST(N'2021-01-14T02:54:57.6036373' AS DateTime2), N'Licensed', CAST(N'2021-06-13T19:29:07.8393407' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (30, N'Kaitlin', N'Roob', CAST(N'2021-05-03T15:29:20.9460411' AS DateTime2), N'Practical', CAST(N'2021-06-13T19:29:07.8393420' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (31, N'Jeanne', N'Zulauf', CAST(N'2020-08-15T06:18:03.6891917' AS DateTime2), N'Awesome', CAST(N'2021-06-13T19:29:07.8393440' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (32, N'Denis', N'Hoeger', CAST(N'2020-06-16T14:37:20.9801563' AS DateTime2), N'Fantastic', CAST(N'2021-06-13T19:29:07.8393449' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (33, N'Norene', N'Schulist', CAST(N'2020-12-13T17:33:55.5943951' AS DateTime2), N'Licensed', CAST(N'2021-06-13T19:29:07.8393470' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (34, N'Barrett', N'Stehr', CAST(N'2021-04-07T12:13:59.2136995' AS DateTime2), N'Fantastic', CAST(N'2021-06-13T19:29:07.8393488' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (35, N'Weldon', N'Nitzsche', CAST(N'2020-12-31T22:55:34.2587537' AS DateTime2), N'Rustic', CAST(N'2021-06-13T19:29:07.8393499' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (36, N'Juvenal', N'Hane', CAST(N'2020-10-01T05:11:29.5707049' AS DateTime2), N'Rustic', CAST(N'2021-06-13T19:29:07.8393521' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (37, N'Helena', N'Von', CAST(N'2020-12-14T07:39:19.3788479' AS DateTime2), N'Fantastic', CAST(N'2021-06-13T19:29:07.8393539' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (38, N'Kurt', N'Ondricka', CAST(N'2020-08-13T06:38:20.1537162' AS DateTime2), N'Refined', CAST(N'2021-06-13T19:29:07.8393555' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (39, N'Jaime', N'Paucek', CAST(N'2020-10-06T12:12:26.3586964' AS DateTime2), N'Handcrafted', CAST(N'2021-06-13T19:29:07.8393575' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (40, N'Kiel', N'Jakubowski', CAST(N'2021-03-15T23:58:51.1304313' AS DateTime2), N'Intelligent', CAST(N'2021-06-13T19:29:07.8393591' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (41, N'tes123123t', N'test', CAST(N'2021-06-13T00:00:00.0000000' AS DateTime2), N'test', CAST(N'2021-06-13T19:29:07.8393604' AS DateTime2), CAST(N'2021-06-13T21:05:57.2841603' AS DateTime2), 1, CAST(N'2021-06-13T20:54:06.5835051' AS DateTime2), 0)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (42, N'Ardella', N'Waters', CAST(N'2021-02-23T12:14:05.3693048' AS DateTime2), N'Sleek', CAST(N'2021-06-13T19:29:07.8394101' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (43, N'Shaylee', N'Hackett', CAST(N'2021-06-05T20:35:52.5325528' AS DateTime2), N'Small', CAST(N'2021-06-13T19:29:07.8394114' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Actors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (44, N'tes123123t', N'test', CAST(N'2021-06-13T00:00:00.0000000' AS DateTime2), N'test', CAST(N'2021-06-13T20:46:04.3747054' AS DateTime2), CAST(N'2021-06-13T21:05:44.2700087' AS DateTime2), 0, NULL, 1)
SET IDENTITY_INSERT [dbo].[Actors] OFF
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (1, N'new cat', CAST(N'2021-06-13T17:58:26.6861856' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Categories] ([Id], [Name], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (2, N'new cat 2', CAST(N'2021-06-13T17:59:16.8614710' AS DateTime2), CAST(N'2021-06-13T18:11:44.4430916' AS DateTime2), 1, CAST(N'2021-06-13T18:11:44.4146400' AS DateTime2), 0)
INSERT [dbo].[Categories] ([Id], [Name], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (3, N'new cat izmenjeno', CAST(N'2021-06-13T18:12:11.5235701' AS DateTime2), CAST(N'2021-06-13T18:28:50.8707724' AS DateTime2), 0, NULL, 1)
INSERT [dbo].[Categories] ([Id], [Name], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (67, N'Markets', CAST(N'2021-06-17T01:27:43.9548205' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Categories] ([Id], [Name], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (68, N'Creative', CAST(N'2021-06-17T01:27:43.9557180' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Categories] ([Id], [Name], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (69, N'Group', CAST(N'2021-06-17T01:27:43.9557259' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Categories] ([Id], [Name], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (70, N'Marketing', CAST(N'2021-06-17T01:27:43.9557282' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Categories] ([Id], [Name], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (71, N'Directives', CAST(N'2021-06-17T01:27:43.9557290' AS DateTime2), NULL, 0, NULL, 1)
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[FilmDirectors] ON 

INSERT [dbo].[FilmDirectors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (1, N'Melisa', N'Keebler', CAST(N'2020-10-29T07:24:18.0137154' AS DateTime2), N'Unbranded', CAST(N'2021-06-14T12:04:08.3015675' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[FilmDirectors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (2, N'Aurelio', N'Schinner', CAST(N'2020-09-10T05:23:31.0073488' AS DateTime2), N'Unbranded', CAST(N'2021-06-14T12:04:08.3019356' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[FilmDirectors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (3, N'Jarret', N'Streich', CAST(N'2020-11-14T18:53:01.8443085' AS DateTime2), N'Sleek', CAST(N'2021-06-14T12:04:08.3019374' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[FilmDirectors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (4, N'Elenora', N'Schmeler', CAST(N'2021-01-14T00:14:25.8040989' AS DateTime2), N'Handmade', CAST(N'2021-06-14T12:04:08.3019387' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[FilmDirectors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (5, N'Layne', N'Leffler', CAST(N'2020-08-03T21:13:48.4408778' AS DateTime2), N'Handcrafted', CAST(N'2021-06-14T12:04:08.3019407' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[FilmDirectors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (6, N'Ludwig', N'Goyette', CAST(N'2020-10-04T09:15:21.0490959' AS DateTime2), N'Refined', CAST(N'2021-06-14T12:04:08.3019419' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[FilmDirectors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (7, N'Lesley', N'Schaefer', CAST(N'2021-03-03T19:29:39.1356625' AS DateTime2), N'Practical', CAST(N'2021-06-14T12:04:08.3019442' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[FilmDirectors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (8, N'Alexane', N'Bosco', CAST(N'2021-05-23T22:36:43.3625815' AS DateTime2), N'Generic', CAST(N'2021-06-14T12:04:08.3019461' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[FilmDirectors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (9, N'Lee', N'Cronin', CAST(N'2021-03-06T21:00:58.6946746' AS DateTime2), N'Small', CAST(N'2021-06-14T12:04:08.3019344' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[FilmDirectors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (10, N'Felix', N'Spinka', CAST(N'2020-09-03T09:27:43.8222746' AS DateTime2), N'Licensed', CAST(N'2021-06-14T12:04:08.3019473' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[FilmDirectors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (11, N'Haven', N'Pfannerstill', CAST(N'2020-12-24T00:18:25.7389734' AS DateTime2), N'Handmade', CAST(N'2021-06-14T12:04:08.3019506' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[FilmDirectors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (12, N'Paula', N'Brakus', CAST(N'2020-09-05T01:26:46.8382416' AS DateTime2), N'Refined', CAST(N'2021-06-14T12:04:08.3019526' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[FilmDirectors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (13, N'Gerald', N'Larson', CAST(N'2020-08-07T16:45:07.4033351' AS DateTime2), N'Licensed', CAST(N'2021-06-14T12:04:08.3019537' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[FilmDirectors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (14, N'Sheldon', N'Welch', CAST(N'2021-03-14T22:18:04.2832055' AS DateTime2), N'Incredible', CAST(N'2021-06-14T12:04:08.3019557' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[FilmDirectors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (15, N'Jamarcus', N'Jacobs', CAST(N'2021-01-03T10:12:30.4513259' AS DateTime2), N'Incredible', CAST(N'2021-06-14T12:04:08.3019571' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[FilmDirectors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (16, N'Jordi', N'Gutkowski', CAST(N'2020-07-29T17:18:30.2089439' AS DateTime2), N'Fantastic', CAST(N'2021-06-14T12:04:08.3019591' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[FilmDirectors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (17, N'Rafael', N'Windler', CAST(N'2021-05-01T15:34:15.3258745' AS DateTime2), N'Practical', CAST(N'2021-06-14T12:04:08.3019605' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[FilmDirectors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (18, N'Alanna', N'Goodwin', CAST(N'2021-03-22T21:25:17.1087928' AS DateTime2), N'Handmade', CAST(N'2021-06-14T12:04:08.3019493' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[FilmDirectors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (19, N'Eloisa', N'Rogahn', CAST(N'2020-10-28T03:30:08.7780460' AS DateTime2), N'Unbranded', CAST(N'2021-06-14T12:04:08.3019325' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[FilmDirectors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (20, N'Lincoln', N'Schmeler', CAST(N'2021-03-07T08:45:23.7032145' AS DateTime2), N'Practical', CAST(N'2021-06-14T12:04:08.3019311' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[FilmDirectors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (21, N'Lavina', N'Hilpert', CAST(N'2020-11-16T10:47:34.8600682' AS DateTime2), N'Ergonomic', CAST(N'2021-06-14T12:04:08.3019287' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[FilmDirectors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (22, N'Joyce', N'Kunde', CAST(N'2020-12-25T04:37:43.7027569' AS DateTime2), N'Refined', CAST(N'2021-06-14T12:04:08.3018891' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[FilmDirectors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (23, N'Creola', N'Jast', CAST(N'2020-08-21T19:52:07.6408715' AS DateTime2), N'Awesome', CAST(N'2021-06-14T12:04:08.3018929' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[FilmDirectors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (24, N'Dorthy', N'Ernser', CAST(N'2021-04-05T06:30:50.3611356' AS DateTime2), N'Licensed', CAST(N'2021-06-14T12:04:08.3018947' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[FilmDirectors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (25, N'Vladimir', N'Sipes', CAST(N'2021-02-19T03:56:58.7652644' AS DateTime2), N'Small', CAST(N'2021-06-14T12:04:08.3018965' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[FilmDirectors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (26, N'Beatrice', N'Schmitt', CAST(N'2021-04-12T17:29:03.3541982' AS DateTime2), N'Incredible', CAST(N'2021-06-14T12:04:08.3018980' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[FilmDirectors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (27, N'Geraldine', N'Crist', CAST(N'2021-04-28T10:29:30.0706175' AS DateTime2), N'Sleek', CAST(N'2021-06-14T12:04:08.3019000' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[FilmDirectors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (28, N'Brendan', N'Sipes', CAST(N'2021-01-01T02:48:58.0890857' AS DateTime2), N'Sleek', CAST(N'2021-06-14T12:04:08.3019014' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[FilmDirectors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (29, N'Dejuan', N'Wilderman', CAST(N'2020-10-01T14:38:03.5297972' AS DateTime2), N'Small', CAST(N'2021-06-14T12:04:08.3019032' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[FilmDirectors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (30, N'Crawford', N'Aufderhar', CAST(N'2021-03-21T10:24:13.1657356' AS DateTime2), N'Tasty', CAST(N'2021-06-14T12:04:08.3019054' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[FilmDirectors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (31, N'Izabella', N'Bartoletti', CAST(N'2021-04-09T19:15:21.8326497' AS DateTime2), N'Fantastic', CAST(N'2021-06-14T12:04:08.3019082' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[FilmDirectors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (32, N'Amara', N'Waters', CAST(N'2020-08-08T17:03:21.1953887' AS DateTime2), N'Fantastic', CAST(N'2021-06-14T12:04:08.3019099' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[FilmDirectors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (33, N'Sabina', N'Ferry', CAST(N'2021-03-23T03:31:55.0422685' AS DateTime2), N'Gorgeous', CAST(N'2021-06-14T12:04:08.3019121' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[FilmDirectors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (34, N'Deja', N'Dickens', CAST(N'2020-08-05T14:50:52.6020595' AS DateTime2), N'Unbranded', CAST(N'2021-06-14T12:04:08.3019140' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[FilmDirectors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (35, N'Deshawn', N'Gutmann', CAST(N'2020-11-27T14:52:03.1803305' AS DateTime2), N'Fantastic', CAST(N'2021-06-14T12:04:08.3019179' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[FilmDirectors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (36, N'Fred', N'Wuckert', CAST(N'2020-09-18T17:05:13.6027011' AS DateTime2), N'Fantastic', CAST(N'2021-06-14T12:04:08.3019217' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[FilmDirectors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (37, N'Vernon', N'Grimes', CAST(N'2021-02-13T18:39:14.3753316' AS DateTime2), N'Incredible', CAST(N'2021-06-14T12:04:08.3019237' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[FilmDirectors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (38, N'Joshuah', N'Dare', CAST(N'2020-11-09T14:32:43.6179779' AS DateTime2), N'Tasty', CAST(N'2021-06-14T12:04:08.3019266' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[FilmDirectors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (39, N'Aisha', N'Morissette', CAST(N'2020-09-20T12:13:51.6488264' AS DateTime2), N'Incredible', CAST(N'2021-06-14T12:04:08.3019623' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[FilmDirectors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (40, N'Elena', N'Connelly', CAST(N'2021-03-08T15:28:46.4740384' AS DateTime2), N'Tasty', CAST(N'2021-06-14T12:04:08.3019637' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[FilmDirectors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (41, N'tes123123t', N'test', CAST(N'2021-06-13T00:00:00.0000000' AS DateTime2), N'test', CAST(N'2021-06-14T12:32:06.4343291' AS DateTime2), CAST(N'2021-06-14T12:46:31.9600569' AS DateTime2), 1, CAST(N'2021-06-14T12:46:31.9300633' AS DateTime2), 0)
INSERT [dbo].[FilmDirectors] ([Id], [FirstName], [LastName], [DateOfBirth], [Biography], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (42, N'Changed', N'test', CAST(N'2021-06-13T00:00:00.0000000' AS DateTime2), N'test', CAST(N'2021-06-14T12:32:21.9229925' AS DateTime2), CAST(N'2021-06-14T12:41:04.1597014' AS DateTime2), 0, NULL, 1)
SET IDENTITY_INSERT [dbo].[FilmDirectors] OFF
SET IDENTITY_INSERT [dbo].[MovieActors] ON 

INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (1, 3, 10, CAST(N'2021-06-14T20:19:01.2801580' AS DateTime2), CAST(N'2021-06-15T02:55:14.0036392' AS DateTime2), 1, CAST(N'2021-06-15T02:55:13.9890119' AS DateTime2), 0)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (2, 3, 11, CAST(N'2021-06-14T20:19:01.2801663' AS DateTime2), CAST(N'2021-06-15T02:55:14.0036412' AS DateTime2), 1, CAST(N'2021-06-15T02:55:13.9890206' AS DateTime2), 0)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (3, 4, 8, CAST(N'2021-06-15T03:35:43.3859821' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (4, 4, 9, CAST(N'2021-06-15T03:35:43.3860054' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (5, 4, 10, CAST(N'2021-06-15T03:35:43.3860060' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (6, 50, 43, CAST(N'2021-06-16T18:45:44.4417694' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (7, 43, 17, CAST(N'2021-06-16T18:45:44.4424108' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (8, 52, 16, CAST(N'2021-06-16T18:45:44.4424113' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (9, 40, 18, CAST(N'2021-06-16T18:45:44.4424117' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (10, 41, 19, CAST(N'2021-06-16T18:45:44.4424122' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (11, 19, 9, CAST(N'2021-06-16T18:45:44.4424128' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (12, 32, 16, CAST(N'2021-06-16T18:45:44.4424134' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (13, 20, 4, CAST(N'2021-06-16T18:45:44.4424139' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (14, 39, 7, CAST(N'2021-06-16T18:45:44.4424144' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (15, 18, 43, CAST(N'2021-06-16T18:45:44.4424148' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (16, 39, 33, CAST(N'2021-06-16T18:45:44.4424154' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (17, 42, 12, CAST(N'2021-06-16T18:45:44.4424159' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (18, 37, 27, CAST(N'2021-06-16T18:45:44.4424164' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (19, 50, 4, CAST(N'2021-06-16T18:45:44.4424168' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (20, 42, 31, CAST(N'2021-06-16T18:45:44.4424173' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (21, 10, 8, CAST(N'2021-06-16T18:45:44.4424178' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (22, 44, 38, CAST(N'2021-06-16T18:45:44.4424187' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (23, 12, 8, CAST(N'2021-06-16T18:45:44.4424192' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (24, 4, 17, CAST(N'2021-06-16T18:45:44.4424197' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (25, 46, 29, CAST(N'2021-06-16T18:45:44.4424202' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (26, 29, 39, CAST(N'2021-06-16T18:45:44.4424206' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (27, 30, 40, CAST(N'2021-06-16T18:45:44.4424211' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (28, 24, 29, CAST(N'2021-06-16T18:45:44.4424101' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (29, 23, 32, CAST(N'2021-06-16T18:45:44.4424096' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (30, 43, 39, CAST(N'2021-06-16T18:45:44.4424092' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (31, 18, 23, CAST(N'2021-06-16T18:45:44.4424086' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (32, 51, 36, CAST(N'2021-06-16T18:45:44.4423916' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (33, 24, 39, CAST(N'2021-06-16T18:45:44.4423972' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (34, 19, 18, CAST(N'2021-06-16T18:45:44.4423980' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (35, 20, 9, CAST(N'2021-06-16T18:45:44.4423986' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (36, 51, 7, CAST(N'2021-06-16T18:45:44.4423991' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (37, 47, 18, CAST(N'2021-06-16T18:45:44.4423996' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (38, 48, 14, CAST(N'2021-06-16T18:45:44.4424001' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (39, 12, 43, CAST(N'2021-06-16T18:45:44.4424006' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (40, 2, 6, CAST(N'2021-06-16T18:45:44.4424011' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (41, 23, 27, CAST(N'2021-06-16T18:45:44.4424016' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (42, 47, 35, CAST(N'2021-06-16T18:45:44.4424216' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (43, 54, 28, CAST(N'2021-06-16T18:45:44.4424021' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (44, 10, 43, CAST(N'2021-06-16T18:45:44.4424033' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (45, 2, 12, CAST(N'2021-06-16T18:45:44.4424039' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (46, 32, 28, CAST(N'2021-06-16T18:45:44.4424044' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (47, 41, 37, CAST(N'2021-06-16T18:45:44.4424049' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (48, 37, 35, CAST(N'2021-06-16T18:45:44.4424054' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (49, 52, 13, CAST(N'2021-06-16T18:45:44.4424060' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (50, 14, 15, CAST(N'2021-06-16T18:45:44.4424065' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (51, 17, 11, CAST(N'2021-06-16T18:45:44.4424070' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (52, 50, 20, CAST(N'2021-06-16T18:45:44.4424075' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (53, 39, 7, CAST(N'2021-06-16T18:45:44.4424081' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (54, 7, 6, CAST(N'2021-06-16T18:45:44.4424028' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (55, 46, 19, CAST(N'2021-06-16T18:45:44.4424221' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (56, 49, 17, CAST(N'2021-06-16T18:46:19.2342219' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (57, 51, 12, CAST(N'2021-06-16T18:46:19.2347334' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (58, 8, 29, CAST(N'2021-06-16T18:46:19.2347340' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (59, 22, 5, CAST(N'2021-06-16T18:46:19.2347346' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (60, 20, 23, CAST(N'2021-06-16T18:46:19.2347351' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (61, 7, 17, CAST(N'2021-06-16T18:46:19.2347356' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (62, 49, 14, CAST(N'2021-06-16T18:46:19.2347362' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (63, 31, 18, CAST(N'2021-06-16T18:46:19.2347368' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (64, 36, 26, CAST(N'2021-06-16T18:46:19.2347373' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (65, 7, 22, CAST(N'2021-06-16T18:46:19.2347379' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (66, 25, 12, CAST(N'2021-06-16T18:46:19.2347384' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (67, 27, 13, CAST(N'2021-06-16T18:46:19.2347390' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (68, 21, 4, CAST(N'2021-06-16T18:46:19.2347397' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (69, 6, 17, CAST(N'2021-06-16T18:46:19.2347402' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (70, 43, 16, CAST(N'2021-06-16T18:46:19.2347408' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (71, 16, 4, CAST(N'2021-06-16T18:46:19.2347413' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (72, 27, 26, CAST(N'2021-06-16T18:46:19.2347418' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (73, 14, 26, CAST(N'2021-06-16T18:46:19.2347424' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (74, 43, 14, CAST(N'2021-06-16T18:46:19.2347430' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (75, 26, 12, CAST(N'2021-06-16T18:46:19.2347435' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (76, 40, 14, CAST(N'2021-06-16T18:46:19.2347442' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (77, 53, 6, CAST(N'2021-06-16T18:46:19.2347447' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (78, 24, 30, CAST(N'2021-06-16T18:46:19.2347329' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (79, 15, 5, CAST(N'2021-06-16T18:46:19.2347320' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (80, 7, 4, CAST(N'2021-06-16T18:46:19.2347315' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (81, 20, 35, CAST(N'2021-06-16T18:46:19.2347307' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (82, 11, 40, CAST(N'2021-06-16T18:46:19.2347142' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (83, 10, 21, CAST(N'2021-06-16T18:46:19.2347187' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (84, 48, 9, CAST(N'2021-06-16T18:46:19.2347194' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (85, 6, 23, CAST(N'2021-06-16T18:46:19.2347200' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (86, 51, 35, CAST(N'2021-06-16T18:46:19.2347206' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (87, 7, 9, CAST(N'2021-06-16T18:46:19.2347211' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (88, 9, 43, CAST(N'2021-06-16T18:46:19.2347216' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (89, 33, 33, CAST(N'2021-06-16T18:46:19.2347221' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (90, 31, 5, CAST(N'2021-06-16T18:46:19.2347226' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (91, 38, 31, CAST(N'2021-06-16T18:46:19.2347232' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (92, 20, 44, CAST(N'2021-06-16T18:46:19.2347452' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (93, 13, 25, CAST(N'2021-06-16T18:46:19.2347238' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (94, 6, 19, CAST(N'2021-06-16T18:46:19.2347249' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (95, 4, 33, CAST(N'2021-06-16T18:46:19.2347254' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (96, 33, 30, CAST(N'2021-06-16T18:46:19.2347259' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (97, 13, 33, CAST(N'2021-06-16T18:46:19.2347266' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (98, 27, 27, CAST(N'2021-06-16T18:46:19.2347271' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (99, 47, 8, CAST(N'2021-06-16T18:46:19.2347276' AS DateTime2), NULL, 0, NULL, 1)
GO
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (100, 17, 17, CAST(N'2021-06-16T18:46:19.2347284' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (101, 31, 22, CAST(N'2021-06-16T18:46:19.2347289' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (102, 19, 11, CAST(N'2021-06-16T18:46:19.2347295' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (103, 25, 11, CAST(N'2021-06-16T18:46:19.2347301' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (104, 29, 9, CAST(N'2021-06-16T18:46:19.2347243' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (105, 17, 11, CAST(N'2021-06-16T18:46:19.2347458' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (106, 34, 43, CAST(N'2021-06-16T18:46:25.9535138' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (107, 10, 29, CAST(N'2021-06-16T18:46:25.9535493' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (108, 22, 34, CAST(N'2021-06-16T18:46:25.9535497' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (109, 24, 5, CAST(N'2021-06-16T18:46:25.9535502' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (110, 4, 19, CAST(N'2021-06-16T18:46:25.9535506' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (111, 52, 33, CAST(N'2021-06-16T18:46:25.9535510' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (112, 45, 22, CAST(N'2021-06-16T18:46:25.9535514' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (113, 22, 29, CAST(N'2021-06-16T18:46:25.9535518' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (114, 18, 20, CAST(N'2021-06-16T18:46:25.9535538' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (115, 47, 22, CAST(N'2021-06-16T18:46:25.9535542' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (116, 54, 10, CAST(N'2021-06-16T18:46:25.9535546' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (117, 21, 4, CAST(N'2021-06-16T18:46:25.9535551' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (118, 32, 23, CAST(N'2021-06-16T18:46:25.9535555' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (119, 51, 34, CAST(N'2021-06-16T18:46:25.9535559' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (120, 12, 6, CAST(N'2021-06-16T18:46:25.9535563' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (121, 11, 16, CAST(N'2021-06-16T18:46:25.9535568' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (122, 31, 28, CAST(N'2021-06-16T18:46:25.9535572' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (123, 16, 34, CAST(N'2021-06-16T18:46:25.9535576' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (124, 41, 7, CAST(N'2021-06-16T18:46:25.9535580' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (125, 25, 21, CAST(N'2021-06-16T18:46:25.9535584' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (126, 18, 6, CAST(N'2021-06-16T18:46:25.9535588' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (127, 36, 27, CAST(N'2021-06-16T18:46:25.9535592' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (128, 8, 43, CAST(N'2021-06-16T18:46:25.9535489' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (129, 48, 14, CAST(N'2021-06-16T18:46:25.9535485' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (130, 1, 42, CAST(N'2021-06-16T18:46:25.9535481' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (131, 38, 31, CAST(N'2021-06-16T18:46:25.9535477' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (132, 8, 25, CAST(N'2021-06-16T18:46:25.9535378' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (133, 50, 35, CAST(N'2021-06-16T18:46:25.9535386' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (134, 32, 12, CAST(N'2021-06-16T18:46:25.9535391' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (135, 10, 32, CAST(N'2021-06-16T18:46:25.9535395' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (136, 46, 8, CAST(N'2021-06-16T18:46:25.9535400' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (137, 30, 5, CAST(N'2021-06-16T18:46:25.9535404' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (138, 14, 5, CAST(N'2021-06-16T18:46:25.9535409' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (139, 12, 7, CAST(N'2021-06-16T18:46:25.9535413' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (140, 47, 17, CAST(N'2021-06-16T18:46:25.9535417' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (141, 2, 44, CAST(N'2021-06-16T18:46:25.9535421' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (142, 5, 30, CAST(N'2021-06-16T18:46:25.9535596' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (143, 32, 19, CAST(N'2021-06-16T18:46:25.9535426' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (144, 41, 11, CAST(N'2021-06-16T18:46:25.9535434' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (145, 15, 20, CAST(N'2021-06-16T18:46:25.9535439' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (146, 48, 19, CAST(N'2021-06-16T18:46:25.9535443' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (147, 40, 40, CAST(N'2021-06-16T18:46:25.9535447' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (148, 40, 36, CAST(N'2021-06-16T18:46:25.9535452' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (149, 11, 33, CAST(N'2021-06-16T18:46:25.9535456' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (150, 7, 31, CAST(N'2021-06-16T18:46:25.9535460' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (151, 53, 4, CAST(N'2021-06-16T18:46:25.9535464' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (152, 23, 7, CAST(N'2021-06-16T18:46:25.9535468' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (153, 25, 17, CAST(N'2021-06-16T18:46:25.9535472' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (154, 7, 39, CAST(N'2021-06-16T18:46:25.9535430' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[MovieActors] ([Id], [MovieId], [ActorId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (155, 15, 43, CAST(N'2021-06-16T18:46:25.9535601' AS DateTime2), NULL, 0, NULL, 1)
SET IDENTITY_INSERT [dbo].[MovieActors] OFF
SET IDENTITY_INSERT [dbo].[Movies] ON 

INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (1, N'stte23ring', 120, CAST(N'2021-06-14T18:06:22.9170000' AS DateTime2), 1, 3, N'123123 teste', 0, CAST(N'2021-06-14T20:07:00.0878345' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (2, N'str12312ing', 10, CAST(N'2021-06-14T18:15:49.8270000' AS DateTime2), 1, 10, N'string', 1, CAST(N'2021-06-14T20:16:12.1453544' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (3, N'Izmenjen', 233, CAST(N'2021-06-15T00:42:54.8450000' AS DateTime2), 1, 11, N'string', 1, CAST(N'2021-06-14T20:19:01.1753108' AS DateTime2), CAST(N'2021-06-15T02:55:14.0035557' AS DateTime2), 1, CAST(N'2021-06-15T02:55:13.8051823' AS DateTime2), 0)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (4, N'Umri muski', 120, CAST(N'2021-06-15T01:35:02.1540000' AS DateTime2), 1, 10, N'teskoe', 1, CAST(N'2021-06-15T03:35:42.9211310' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (5, N'Laury Koelpin', 0, CAST(N'2021-05-17T16:57:31.7214827' AS DateTime2), 1, 33, N'Iusto enim omnis dolor est.', 0, CAST(N'2021-06-16T18:35:32.5183014' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (6, N'Rubye Champlin', 1, CAST(N'2020-06-23T00:22:05.6226295' AS DateTime2), 1, 15, N'Soluta nisi itaque dicta amet qui architecto itaque ut.', 0, CAST(N'2021-06-16T18:35:32.5185420' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (7, N'Heber Powlowski', 0, CAST(N'2020-10-04T17:13:44.0572238' AS DateTime2), 3, 11, N'Officiis ea soluta quis omnis perferendis ratione.', 0, CAST(N'2021-06-16T18:35:32.5185424' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (8, N'Vida O''Reilly', 1, CAST(N'2020-11-10T16:23:36.2397478' AS DateTime2), 3, 31, N'Repellendus quibusdam similique.', 0, CAST(N'2021-06-16T18:35:32.5185429' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (9, N'Carolanne Gerhold', 0, CAST(N'2020-06-29T23:41:42.2166016' AS DateTime2), 1, 10, N'Aut molestiae similique et consectetur dolores enim id est fuga.', 0, CAST(N'2021-06-16T18:35:32.5185434' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (10, N'Alyson Mueller', 0, CAST(N'2021-05-24T23:34:57.8225903' AS DateTime2), 1, 28, N'Aut nihil mollitia magni.', 0, CAST(N'2021-06-16T18:35:32.5185439' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (11, N'Edmond Dietrich', 0, CAST(N'2020-10-27T16:46:27.3984187' AS DateTime2), 3, 30, N'Rem possimus sed id dolores eligendi quia.', 0, CAST(N'2021-06-16T18:35:32.5185443' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (12, N'Bradford Kilback', 0, CAST(N'2020-09-08T04:52:42.3769383' AS DateTime2), 3, 12, N'Dolor fugit voluptatem neque voluptatum molestias molestiae deserunt exercitationem doloribus.', 0, CAST(N'2021-06-16T18:35:32.5185448' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (13, N'Ronaldo Murazik', 1, CAST(N'2020-08-19T08:50:13.7150619' AS DateTime2), 1, 5, N'Nostrum esse est magni.', 0, CAST(N'2021-06-16T18:35:32.5185453' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (14, N'Roslyn Borer', 0, CAST(N'2020-12-20T12:20:03.3719519' AS DateTime2), 3, 37, N'Eius pariatur sed.', 0, CAST(N'2021-06-16T18:35:32.5185458' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (15, N'Skye Hammes', 0, CAST(N'2021-05-08T20:22:06.8854598' AS DateTime2), 1, 19, N'Quam non laborum aut laudantium unde.', 0, CAST(N'2021-06-16T18:35:32.5185464' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (16, N'Norval Lakin', 1, CAST(N'2021-02-09T07:11:10.0354696' AS DateTime2), 3, 15, N'Deleniti fugit molestias eos.', 0, CAST(N'2021-06-16T18:35:32.5185468' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (17, N'Ervin Bailey', 1, CAST(N'2020-10-14T03:24:57.2085049' AS DateTime2), 3, 26, N'Autem dignissimos repellendus hic nemo est quisquam sequi est.', 0, CAST(N'2021-06-16T18:35:32.5185473' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (18, N'Martine Swaniawski', 0, CAST(N'2021-04-19T10:30:35.2589402' AS DateTime2), 1, 16, N'Cum voluptatibus quibusdam ut eius accusamus nam.', 0, CAST(N'2021-06-16T18:35:32.5185481' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (19, N'Mohammad Sanford', 1, CAST(N'2021-03-08T15:39:50.2035346' AS DateTime2), 3, 3, N'Et in deserunt quibusdam molestias voluptatem voluptas illum velit.', 0, CAST(N'2021-06-16T18:35:32.5185486' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (20, N'Berneice Murray', 1, CAST(N'2020-10-05T02:01:19.1879886' AS DateTime2), 1, 25, N'Ut laborum rerum atque et eligendi ab vitae mollitia quas.', 0, CAST(N'2021-06-16T18:35:32.5185492' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (21, N'Orlo Beer', 0, CAST(N'2020-12-18T07:32:40.3791831' AS DateTime2), 1, 39, N'Repellendus rerum exercitationem.', 0, CAST(N'2021-06-16T18:35:32.5185497' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (22, N'Leonardo Hickle', 1, CAST(N'2021-02-03T18:19:12.6341339' AS DateTime2), 3, 36, N'Est voluptates atque quia ipsum sed et totam nam.', 0, CAST(N'2021-06-16T18:35:32.5185502' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (23, N'Rick Marks', 1, CAST(N'2021-05-07T12:53:34.5240146' AS DateTime2), 3, 21, N'Alias et nihil facilis.', 0, CAST(N'2021-06-16T18:35:32.5185506' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (24, N'Mckenna Olson', 1, CAST(N'2020-10-27T21:26:40.9210785' AS DateTime2), 3, 25, N'Corporis voluptatibus et culpa impedit.', 0, CAST(N'2021-06-16T18:35:32.5185511' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (25, N'Alvah Upton', 0, CAST(N'2021-04-14T09:16:30.7447767' AS DateTime2), 1, 14, N'Earum nemo accusantium repellendus aut non dolorem.', 0, CAST(N'2021-06-16T18:35:32.5185517' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (26, N'Orin Runte', 0, CAST(N'2021-04-17T20:06:46.7419505' AS DateTime2), 3, 6, N'Numquam beatae accusantium.', 0, CAST(N'2021-06-16T18:35:32.5185522' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (27, N'Ulices Wehner', 1, CAST(N'2020-07-22T22:38:10.7246333' AS DateTime2), 1, 17, N'Amet commodi aut eius rerum nihil aut suscipit.', 0, CAST(N'2021-06-16T18:35:32.5185415' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (28, N'Omer Hyatt', 0, CAST(N'2020-07-16T16:37:23.6039253' AS DateTime2), 1, 15, N'Sunt animi recusandae rerum accusamus doloribus voluptas quibusdam sint.', 0, CAST(N'2021-06-16T18:35:32.5185409' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (29, N'Paris Okuneva', 1, CAST(N'2020-08-27T06:02:25.7798079' AS DateTime2), 3, 8, N'Non facilis libero beatae ea tempora.', 0, CAST(N'2021-06-16T18:35:32.5185404' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (30, N'Madie Abernathy', 1, CAST(N'2020-12-05T16:42:32.9830843' AS DateTime2), 1, 32, N'Qui nihil aut impedit dolor dolor.', 0, CAST(N'2021-06-16T18:35:32.5185399' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (31, N'Myles Bergnaum', 0, CAST(N'2020-12-28T07:26:44.5529707' AS DateTime2), 3, 26, N'Voluptatibus est distinctio nobis.', 0, CAST(N'2021-06-16T18:35:32.5185264' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (32, N'Gerson Heidenreich', 0, CAST(N'2020-11-10T20:21:06.9488022' AS DateTime2), 1, 14, N'Molestiae magnam consectetur id atque voluptatibus doloribus nisi.', 0, CAST(N'2021-06-16T18:35:32.5185286' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (33, N'Darrell Farrell', 1, CAST(N'2020-11-24T13:53:07.6999725' AS DateTime2), 1, 13, N'Architecto a voluptas.', 0, CAST(N'2021-06-16T18:35:32.5185291' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (34, N'Dameon Renner', 0, CAST(N'2021-03-24T06:51:07.0591937' AS DateTime2), 3, 24, N'Itaque est aperiam minus rerum.', 0, CAST(N'2021-06-16T18:35:32.5185296' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (35, N'Clint Bashirian', 0, CAST(N'2020-11-06T05:24:12.5007181' AS DateTime2), 3, 22, N'Magni culpa quas voluptatum dolorem autem.', 0, CAST(N'2021-06-16T18:35:32.5185302' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (36, N'Stevie Huel', 0, CAST(N'2020-12-09T22:02:03.2668975' AS DateTime2), 1, 12, N'Ducimus fugiat ab deserunt consequatur.', 0, CAST(N'2021-06-16T18:35:32.5185306' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (37, N'Matteo Gutmann', 1, CAST(N'2021-03-02T23:11:37.9189463' AS DateTime2), 3, 9, N'Laborum ut doloremque omnis qui provident cum error in dolorem.', 0, CAST(N'2021-06-16T18:35:32.5185311' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (38, N'Christina Raynor', 0, CAST(N'2021-04-15T23:25:33.2216870' AS DateTime2), 3, 2, N'Tempora quam reprehenderit maxime.', 0, CAST(N'2021-06-16T18:35:32.5185317' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (39, N'Jaden Kiehn', 0, CAST(N'2020-06-21T13:48:06.3356143' AS DateTime2), 3, 10, N'Tempora accusamus voluptas doloremque exercitationem cupiditate omnis doloremque officiis voluptas.', 0, CAST(N'2021-06-16T18:35:32.5185325' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (40, N'Louisa Wyman', 1, CAST(N'2020-09-25T12:45:37.6019006' AS DateTime2), 3, 26, N'Sit laboriosam velit voluptas aliquam blanditiis veritatis magni.', 0, CAST(N'2021-06-16T18:35:32.5185330' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (41, N'Dale Stanton', 0, CAST(N'2020-11-22T21:02:42.2683952' AS DateTime2), 3, 24, N'Quibusdam magnam eos sint sed dolorem.', 0, CAST(N'2021-06-16T18:35:32.5185527' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (42, N'Reagan Durgan', 0, CAST(N'2020-07-20T14:08:56.7950364' AS DateTime2), 3, 24, N'Nostrum maxime laboriosam impedit maiores sequi quam minus et dolorem.', 0, CAST(N'2021-06-16T18:35:32.5185337' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (43, N'Sterling Kris', 0, CAST(N'2021-01-21T02:16:19.5920268' AS DateTime2), 1, 9, N'Cumque eligendi sapiente eum maiores.', 0, CAST(N'2021-06-16T18:35:32.5185347' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (44, N'Lori Kunze', 1, CAST(N'2020-11-06T13:18:51.0105952' AS DateTime2), 3, 1, N'Quia rem eligendi.', 0, CAST(N'2021-06-16T18:35:32.5185353' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (45, N'Brennan Dibbert', 0, CAST(N'2021-05-16T05:42:21.7875126' AS DateTime2), 3, 38, N'Magnam et consequatur exercitationem quia magnam earum esse numquam.', 0, CAST(N'2021-06-16T18:35:32.5185358' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (46, N'Mayra Wisoky', 0, CAST(N'2020-07-27T03:58:53.0242211' AS DateTime2), 3, 30, N'Omnis amet eius quod error blanditiis beatae necessitatibus.', 0, CAST(N'2021-06-16T18:35:32.5185363' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (47, N'Efren Haag', 0, CAST(N'2021-02-10T04:41:06.7384693' AS DateTime2), 1, 1, N'Aliquam consequatur itaque.', 0, CAST(N'2021-06-16T18:35:32.5185368' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (48, N'Imogene Hahn', 0, CAST(N'2020-10-07T22:26:58.3709872' AS DateTime2), 1, 11, N'Consectetur quis enim sed et qui tenetur velit omnis et.', 0, CAST(N'2021-06-16T18:35:32.5185374' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (49, N'Stephan Reynolds', 0, CAST(N'2021-04-06T01:22:34.4504439' AS DateTime2), 3, 24, N'Consequatur eveniet ipsa mollitia nostrum sed.', 0, CAST(N'2021-06-16T18:35:32.5185379' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (50, N'Marc Rath', 1, CAST(N'2020-07-04T16:40:53.6167931' AS DateTime2), 1, 17, N'Dicta possimus aut est autem dicta assumenda.', 0, CAST(N'2021-06-16T18:35:32.5185383' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (51, N'Olen Fadel', 1, CAST(N'2021-03-15T13:51:03.0917873' AS DateTime2), 3, 24, N'Dolores cupiditate adipisci quod et quod.', 0, CAST(N'2021-06-16T18:35:32.5185388' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (52, N'Kallie Paucek', 1, CAST(N'2021-04-04T07:18:50.4803381' AS DateTime2), 1, 37, N'Facilis voluptate autem harum.', 0, CAST(N'2021-06-16T18:35:32.5185393' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (53, N'Chadd Hartmann', 1, CAST(N'2021-01-09T04:15:50.8389430' AS DateTime2), 3, 1, N'Qui quo et quia ipsa explicabo ut velit dolor.', 0, CAST(N'2021-06-16T18:35:32.5185342' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Duration], [ReleaseDate], [CategoryId], [FilmDirectorId], [Description], [Available], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (54, N'Ettie Bogisich', 1, CAST(N'2020-10-28T07:52:20.2516093' AS DateTime2), 3, 14, N'Officiis in odit dicta eum perspiciatis sed illum.', 0, CAST(N'2021-06-16T18:35:32.5185532' AS DateTime2), NULL, 0, NULL, 1)
SET IDENTITY_INSERT [dbo].[Movies] OFF
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([Id], [RoleName], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (7, N'Admin', CAST(N'2021-06-14T12:54:06.2207674' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Roles] ([Id], [RoleName], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (8, N'User', CAST(N'2021-06-14T12:54:16.2981329' AS DateTime2), NULL, 0, NULL, 1)
SET IDENTITY_INSERT [dbo].[Roles] OFF
SET IDENTITY_INSERT [dbo].[UseCaseLogs] ON 

INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (1, CAST(N'2021-06-14T12:43:52.1316976' AS DateTime2), N'Users search', N'{"FirstName":null,"LastName":null,"Email":null,"PerPage":10,"Page":5}', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (2, CAST(N'2021-06-14T15:10:37.7659295' AS DateTime2), N'Users search', N'{"FirstName":"X","LastName":null,"Email":null,"PerPage":10,"Page":1}', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (3, CAST(N'2021-06-14T16:23:36.0237867' AS DateTime2), N'Add Movie', N'{"Name":"test","Duration":123,"ReleaseDate":"2021-06-14T16:23:08.733Z","CategoryId":5,"FilmDirectorId":5,"Description":"string","Available":true,"ActorIds":[4,5,6]}', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (4, CAST(N'2021-06-14T16:39:49.4896568' AS DateTime2), N'Add Movie', N'{"Name":"string","Duration":0,"ReleaseDate":"2021-06-14T16:39:40.564Z","CategoryId":0,"FilmDirectorId":0,"Description":"string","Available":true,"ActorIds":[4,5,6]}', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (5, CAST(N'2021-06-14T16:49:36.3552149' AS DateTime2), N'Add Movie', N'{"Name":"string","Duration":0,"ReleaseDate":"2021-06-14T16:49:26.393Z","CategoryId":0,"FilmDirectorId":0,"Description":"string","Available":true,"ActorIds":[123123,5,6]}', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (6, CAST(N'2021-06-14T17:01:40.2235907' AS DateTime2), N'Add Movie', N'{"Name":"string","Duration":0,"ReleaseDate":"2021-06-14T17:01:32.547Z","CategoryId":0,"FilmDirectorId":0,"Description":"string","Available":true,"ActorIds":[1,2,3]}', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (7, CAST(N'2021-06-14T17:02:15.4534721' AS DateTime2), N'Add Movie', N'{"Name":"string","Duration":0,"ReleaseDate":"2021-06-14T17:01:32.547Z","CategoryId":0,"FilmDirectorId":0,"Description":"string","Available":true,"ActorIds":[4,5,12]}', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (8, CAST(N'2021-06-14T17:02:38.1126162' AS DateTime2), N'Add Movie', N'{"Name":"string","Duration":0,"ReleaseDate":"2021-06-14T17:01:32.547Z","CategoryId":0,"FilmDirectorId":0,"Description":"string","Available":true,"ActorIds":[1,20]}', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (9, CAST(N'2021-06-14T17:17:25.2331750' AS DateTime2), N'Add Movie', N'{"Name":"string","Duration":0,"ReleaseDate":"2021-06-14T17:17:13.272Z","CategoryId":2,"FilmDirectorId":0,"Description":"string","Available":true,"ActorIds":[0]}', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (10, CAST(N'2021-06-14T17:17:52.8192804' AS DateTime2), N'Add Movie', N'{"Name":"string","Duration":0,"ReleaseDate":"2021-06-14T17:17:13.272Z","CategoryId":1,"FilmDirectorId":0,"Description":"string","Available":true,"ActorIds":[0]}', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (11, CAST(N'2021-06-14T17:40:52.2710400' AS DateTime2), N'Add Movie', N'{"Name":"string","Duration":0,"ReleaseDate":"2021-06-14T17:40:43.942Z","CategoryId":0,"FilmDirectorId":0,"Description":"string","Available":true,"ActorIds":[0]}', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (12, CAST(N'2021-06-14T17:42:15.2801024' AS DateTime2), N'Add Movie', N'{"Name":"string","Duration":0,"ReleaseDate":"2021-06-14T17:42:12.555Z","CategoryId":0,"FilmDirectorId":0,"Description":"string","Available":true,"ActorIds":[0]}', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (13, CAST(N'2021-06-14T17:42:37.8937902' AS DateTime2), N'Add Movie', N'{"Name":"string","Duration":0,"ReleaseDate":"2021-06-14T17:42:12.555Z","CategoryId":123,"FilmDirectorId":0,"Description":"string","Available":true,"ActorIds":[0]}', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (14, CAST(N'2021-06-14T17:42:56.7151943' AS DateTime2), N'Add Movie', N'{"Name":"string","Duration":0,"ReleaseDate":"2021-06-14T17:42:12.555Z","CategoryId":1,"FilmDirectorId":0,"Description":"string","Available":true,"ActorIds":[0]}', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (15, CAST(N'2021-06-14T17:43:12.7079223' AS DateTime2), N'Add Movie', N'{"Name":"string","Duration":0,"ReleaseDate":"2021-06-14T17:42:12.555Z","CategoryId":1,"FilmDirectorId":1,"Description":"string","Available":true,"ActorIds":[0]}', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (16, CAST(N'2021-06-14T17:43:22.5894178' AS DateTime2), N'Add Movie', N'{"Name":"string","Duration":123123,"ReleaseDate":"2021-06-14T17:42:12.555Z","CategoryId":1,"FilmDirectorId":1,"Description":"string","Available":true,"ActorIds":[0]}', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (17, CAST(N'2021-06-14T17:45:35.1762949' AS DateTime2), N'Add Movie', N'{"Name":"string","Duration":0,"ReleaseDate":"2021-06-14T17:45:05.229Z","CategoryId":0,"FilmDirectorId":2,"Description":"string","Available":true,"ActorIds":[0]}', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (18, CAST(N'2021-06-14T17:53:23.5015821' AS DateTime2), N'Add Movie', N'{"Name":"Test","Duration":123,"ReleaseDate":"2021-06-14T17:52:55.081Z","CategoryId":1,"FilmDirectorId":3,"Description":"string","Available":true,"ActorIds":[11,12]}', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (19, CAST(N'2021-06-14T18:06:48.3000235' AS DateTime2), N'Add Movie', N'{"Name":"stte23ring","Duration":120,"ReleaseDate":"2021-06-14T18:06:22.917Z","CategoryId":1,"FilmDirectorId":3,"Description":"123123 teste","Available":true,"ActorIds":[11,12]}', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (20, CAST(N'2021-06-14T18:16:09.0680439' AS DateTime2), N'Add Movie', N'{"Name":"str12312ing","Duration":10,"ReleaseDate":"2021-06-14T18:15:49.827Z","CategoryId":1,"FilmDirectorId":10,"Description":"string","Available":true,"ActorIds":[10,11]}', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (21, CAST(N'2021-06-14T18:18:57.9799378' AS DateTime2), N'Add Movie', N'{"Name":"Daj Boze","Duration":120,"ReleaseDate":"2021-06-14T18:18:21.977Z","CategoryId":1,"FilmDirectorId":10,"Description":"Dace Bog bice jos","Available":true,"ActorIds":[10,11]}', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (22, CAST(N'2021-06-15T00:43:45.9096344' AS DateTime2), N'Update movie', N'{"Id":3,"Name":"Izmenjen","Duration":233,"ReleaseDate":"2021-06-15T00:42:54.845Z","CategoryId":1,"FilmDirectorId":11,"Description":"string","Available":true}', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (23, CAST(N'2021-06-15T00:44:05.4545815' AS DateTime2), N'Update movie', N'{"Id":3,"Name":"Izmenjen","Duration":233,"ReleaseDate":"2021-06-15T00:42:54.845Z","CategoryId":1,"FilmDirectorId":171,"Description":"string","Available":true}', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (24, CAST(N'2021-06-15T00:55:11.8740310' AS DateTime2), N'Delete movie', N'3', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (25, CAST(N'2021-06-15T01:18:45.1327789' AS DateTime2), N'Get movie by id', N'1', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (26, CAST(N'2021-06-15T01:26:31.6474719' AS DateTime2), N'Get movie by id', N'2', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (27, CAST(N'2021-06-15T01:28:55.6177195' AS DateTime2), N'Get movie by id', N'2', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (28, CAST(N'2021-06-15T01:34:13.7228800' AS DateTime2), N'Get movie by id', N'2', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (29, CAST(N'2021-06-15T01:35:40.5125770' AS DateTime2), N'Add Movie', N'{"Name":"Umri muski","Duration":120,"ReleaseDate":"2021-06-15T01:35:02.154Z","CategoryId":1,"FilmDirectorId":10,"Description":"teskoe","Available":true,"ActorIds":[8,9,10]}', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (30, CAST(N'2021-06-15T01:36:19.4872806' AS DateTime2), N'Get movie by id', N'4', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (31, CAST(N'2021-06-15T01:40:58.7454118' AS DateTime2), N'Get movie by id', N'4', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (32, CAST(N'2021-06-15T01:43:19.8606925' AS DateTime2), N'Get movie by id', N'4', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (33, CAST(N'2021-06-15T01:59:37.9409515' AS DateTime2), N'Movies serach', N'{"Name":null,"PerPage":10,"Page":1}', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (34, CAST(N'2021-06-15T01:59:57.7987424' AS DateTime2), N'Movies serach', N'{"Name":"13","PerPage":10,"Page":1}', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (35, CAST(N'2021-06-15T02:00:04.8540302' AS DateTime2), N'Movies serach', N'{"Name":"1","PerPage":10,"Page":1}', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (36, CAST(N'2021-06-15T12:36:13.1692871' AS DateTime2), N'Get order by id', N'3', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (37, CAST(N'2021-06-15T12:37:56.8700130' AS DateTime2), N'Get order by id', N'3', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (38, CAST(N'2021-06-15T12:38:38.6311879' AS DateTime2), N'Get order by id', N'3', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (39, CAST(N'2021-06-15T12:39:41.5332997' AS DateTime2), N'Get movie by id', N'4', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (40, CAST(N'2021-06-15T12:41:21.0601149' AS DateTime2), N'Get order by id', N'3', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (41, CAST(N'2021-06-15T12:51:06.4838286' AS DateTime2), N'Insert Order', N'{"UserId":2,"MovieId":4,"EndDate":"2021-06-15T12:50:43.444Z"}', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (42, CAST(N'2021-06-15T12:51:26.3344286' AS DateTime2), N'Get order by id', N'4', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (43, CAST(N'2021-06-15T13:02:27.8595514' AS DateTime2), N'Insert Order', N'{"UserId":5,"MovieId":120,"EndDate":"2021-06-15T13:02:16.651Z"}', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (44, CAST(N'2021-06-15T13:02:50.3595321' AS DateTime2), N'Insert Order', N'{"UserId":2,"MovieId":120,"EndDate":"2021-06-15T13:02:16.651Z"}', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (45, CAST(N'2021-06-15T13:03:00.5911405' AS DateTime2), N'Insert Order', N'{"UserId":2,"MovieId":12,"EndDate":"2021-06-15T13:02:16.651Z"}', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (46, CAST(N'2021-06-15T13:03:12.2007450' AS DateTime2), N'Insert Order', N'{"UserId":2,"MovieId":4,"EndDate":"2021-06-15T13:02:16.651Z"}', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (47, CAST(N'2021-06-15T13:03:26.9920144' AS DateTime2), N'Insert Order', N'{"UserId":2,"MovieId":4,"EndDate":"2021-06-18T13:02:16.651Z"}', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (48, CAST(N'2021-06-15T13:14:29.8034162' AS DateTime2), N'Update order', N'{"Id":5,"UserId":10,"MovieId":4,"EndDate":"2021-06-19T13:14:08.699Z"}', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (49, CAST(N'2021-06-15T13:14:47.6068068' AS DateTime2), N'Update order', N'{"Id":5,"UserId":10,"MovieId":4,"EndDate":"2021-06-10T13:14:08.699Z"}', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (50, CAST(N'2021-06-15T13:22:18.0169790' AS DateTime2), N'Delete order', N'3', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (51, CAST(N'2021-06-15T13:39:27.0425390' AS DateTime2), N'Search Order by username', N'{"Username":null,"PerPage":10,"Page":1}', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (52, CAST(N'2021-06-15T13:39:43.2046042' AS DateTime2), N'Search Order by username', N'{"Username":"cr","PerPage":10,"Page":1}', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (53, CAST(N'2021-06-15T14:03:03.7390112' AS DateTime2), N'Search Loggers', N'{"Actor":null,"PerPage":10,"Page":1}', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (54, CAST(N'2021-06-15T14:03:21.2813517' AS DateTime2), N'Search Loggers', N'{"Actor":"admin","PerPage":10,"Page":1}', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (55, CAST(N'2021-06-15T20:01:37.1599119' AS DateTime2), N'Roles search', N'{"Name":null,"PerPage":10,"Page":1}', N'Fake Admin')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (56, CAST(N'2021-06-15T20:04:22.1482785' AS DateTime2), N'Roles search', N'{"Name":null,"PerPage":10,"Page":1}', N'Eudora34@hotmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (57, CAST(N'2021-06-15T20:08:15.0005703' AS DateTime2), N'Roles search', N'{"Name":null,"PerPage":10,"Page":1}', N'Eudora34@hotmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (58, CAST(N'2021-06-15T20:09:42.0617493' AS DateTime2), N'Roles search', N'{"Name":null,"PerPage":10,"Page":1}', N'Eudora34@hotmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (59, CAST(N'2021-06-15T20:09:44.5549488' AS DateTime2), N'Roles search', N'{"Name":null,"PerPage":10,"Page":1}', N'Eudora34@hotmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (60, CAST(N'2021-06-15T20:09:45.8914292' AS DateTime2), N'Roles search', N'{"Name":null,"PerPage":10,"Page":1}', N'Eudora34@hotmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (61, CAST(N'2021-06-15T20:09:47.6041201' AS DateTime2), N'Roles search', N'{"Name":null,"PerPage":10,"Page":1}', N'Eudora34@hotmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (62, CAST(N'2021-06-15T20:11:00.0575730' AS DateTime2), N'Search Loggers', N'{"Actor":null,"PerPage":10,"Page":1}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (63, CAST(N'2021-06-15T20:11:58.2715598' AS DateTime2), N'Search Loggers', N'{"Actor":null,"PerPage":10,"Page":1}', N'Eudora34@hotmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (64, CAST(N'2021-06-15T20:13:15.0620590' AS DateTime2), N'Search Loggers', N'{"Actor":null,"PerPage":10,"Page":1}', N'Eudora34@hotmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (65, CAST(N'2021-06-15T20:22:31.1009091' AS DateTime2), N'Search Loggers', N'{"Actor":null,"PerPage":10,"Page":1}', N'Eudora34@hotmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (66, CAST(N'2021-06-15T20:22:49.6618426' AS DateTime2), N'Movies serach', N'{"Name":null,"PerPage":10,"Page":1}', N'Eudora34@hotmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (67, CAST(N'2021-06-15T20:23:23.0630838' AS DateTime2), N'Search Order by username', N'{"Username":null,"PerPage":10,"Page":1}', N'Eudora34@hotmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (68, CAST(N'2021-06-16T15:46:36.5834734' AS DateTime2), N'Search Order by username', N'{"Username":null,"PerPage":10,"Page":1}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (69, CAST(N'2021-06-16T15:46:59.0813626' AS DateTime2), N'Search Order by username', N'{"Username":null,"PerPage":10,"Page":1}', N'Eudora34@hotmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (70, CAST(N'2021-06-16T15:47:04.4614016' AS DateTime2), N'Users search', N'{"FirstName":null,"LastName":null,"Email":null,"PerPage":10,"Page":1}', N'Eudora34@hotmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (71, CAST(N'2021-06-16T15:47:10.9194820' AS DateTime2), N'Get user by id', N'5', N'Eudora34@hotmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (72, CAST(N'2021-06-16T15:47:19.8948497' AS DateTime2), N'Get user by id', N'10', N'Eudora34@hotmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (73, CAST(N'2021-06-16T15:47:24.3378371' AS DateTime2), N'Get user by id', N'3', N'Eudora34@hotmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (74, CAST(N'2021-06-16T15:54:34.7393687' AS DateTime2), N'Get user by id', N'3', N'Eudora34@hotmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (75, CAST(N'2021-06-16T15:55:58.7466340' AS DateTime2), N'Get user by id', N'2', N'Eudora34@hotmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (76, CAST(N'2021-06-16T16:06:34.9367526' AS DateTime2), N'Get user by id', N'2', N'Eudora34@hotmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (77, CAST(N'2021-06-16T16:08:18.5819294' AS DateTime2), N'Users search', N'{"FirstName":null,"LastName":null,"Email":null,"PerPage":10,"Page":1}', N'Eudora34@hotmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (78, CAST(N'2021-06-16T16:34:51.4831221' AS DateTime2), N'Users search', N'{"FirstName":null,"LastName":null,"Email":null,"PerPage":10,"Page":1}', N'Eudora34@hotmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (79, CAST(N'2021-06-16T16:35:32.8914098' AS DateTime2), N'Movies serach', N'{"Name":null,"PerPage":10,"Page":1}', N'Eudora34@hotmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (80, CAST(N'2021-06-16T16:39:11.3321437' AS DateTime2), N'Search Order by username', N'{"Username":null,"PerPage":10,"Page":1}', N'Eudora34@hotmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (81, CAST(N'2021-06-16T16:39:49.4441588' AS DateTime2), N'Search Order by username', N'{"Username":null,"PerPage":10,"Page":1}', N'Eudora34@hotmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (82, CAST(N'2021-06-16T16:41:01.2851616' AS DateTime2), N'Search Order by username', N'{"Username":null,"PerPage":10,"Page":1}', N'Eudora34@hotmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (83, CAST(N'2021-06-16T16:42:28.7651508' AS DateTime2), N'Search Order by username', N'{"Username":null,"PerPage":10,"Page":1}', N'Eudora34@hotmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (84, CAST(N'2021-06-16T16:45:45.0968042' AS DateTime2), N'Movies serach', N'{"Name":null,"PerPage":10,"Page":1}', N'Eudora34@hotmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (85, CAST(N'2021-06-16T16:46:19.5831076' AS DateTime2), N'Movies serach', N'{"Name":null,"PerPage":10,"Page":1}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (86, CAST(N'2021-06-16T16:46:25.9745791' AS DateTime2), N'Movies serach', N'{"Name":null,"PerPage":10,"Page":1}', N'Eudora34@hotmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (87, CAST(N'2021-06-16T17:16:25.1686557' AS DateTime2), N'Users search', N'{"FirstName":null,"LastName":null,"Email":null,"PerPage":10,"Page":1}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (88, CAST(N'2021-06-16T17:16:41.6135470' AS DateTime2), N'Insert user', N'{"Id":0,"FirstName":"Veljko","LastName":"Rajkovic","Username":"veljkorajkovic","Email":"rajkovicv55@gmail.com","RoleId":8}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (89, CAST(N'2021-06-16T17:17:06.5058594' AS DateTime2), N'Insert user', N'{"Id":0,"FirstName":"Veljko","LastName":"Rajkovic","Username":"veljkorajkovic","Email":"rajkovicv55@gmail.com","RoleId":8}', N'Eudora34@hotmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (90, CAST(N'2021-06-16T17:18:46.4158935' AS DateTime2), N'Insert user', N'{"Id":0,"FirstName":"Veljko","LastName":"Rajkovic","Username":"veljkorajkovic","Email":"rajkovicv55@gmail.com","RoleId":8}', N'Eudora34@hotmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (91, CAST(N'2021-06-16T17:19:50.5710317' AS DateTime2), N'Insert user', N'{"Id":0,"FirstName":"Veljko2","LastName":"Rajkovic2","Username":"veljkorajkovic2","Email":"rajkovicv55@gmail.com","RoleId":8}', N'Eudora34@hotmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (92, CAST(N'2021-06-16T17:21:59.0811112' AS DateTime2), N'Insert user', N'{"Id":0,"FirstName":"Veljko2","LastName":"Rajkovic2","Username":"veljkorajkovic2","Email":"rajkovicv55@gmail.com","RoleId":8}', N'Eudora34@hotmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (93, CAST(N'2021-06-16T17:30:46.2360762' AS DateTime2), N'Insert user', N'{"Id":0,"FirstName":"Veljko2","LastName":"Rajkovic2","Username":"veljkorajkovic2","Email":"rajkovicv55@gmail.com","RoleId":8}', N'Eudora34@hotmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (94, CAST(N'2021-06-16T17:31:28.3032581' AS DateTime2), N'Insert user', N'{"Id":0,"FirstName":"Veljko2","LastName":"Rajkovic2","Username":"veljkorajkovic2","Email":"rajkovicv55@gmail.com","RoleId":8}', N'Eudora34@hotmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (95, CAST(N'2021-06-16T17:54:20.2414715' AS DateTime2), N'Actors search', N'{"FirstName":null,"LastName":null,"PerPage":10,"Page":1}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (96, CAST(N'2021-06-16T18:06:22.9363840' AS DateTime2), N'Actors search', N'{"FirstName":null,"LastName":null,"PerPage":10,"Page":1}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (97, CAST(N'2021-06-16T18:10:39.8067052' AS DateTime2), N'Actors search', N'{"FirstName":null,"LastName":null,"PerPage":10,"Page":1}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (98, CAST(N'2021-06-16T18:11:35.7668911' AS DateTime2), N'Actors search', N'{"FirstName":null,"LastName":null,"PerPage":10,"Page":1}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (99, CAST(N'2021-06-16T18:11:59.9737850' AS DateTime2), N'Insert actor', N'{"Id":0,"FirstName":"Veljko2","LastName":"Rajkovic2","DateOfBirth":"0001-01-01T00:00:00","Biography":null}', N'Eudora34@hotmail.com')
GO
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (100, CAST(N'2021-06-16T18:12:19.8228752' AS DateTime2), N'Actors search', N'{"FirstName":null,"LastName":null,"PerPage":10,"Page":1}', N'Eudora34@hotmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (101, CAST(N'2021-06-16T18:13:20.9952312' AS DateTime2), N'Actors search', N'{"FirstName":null,"LastName":null,"PerPage":10,"Page":1}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (102, CAST(N'2021-06-16T18:13:34.2964219' AS DateTime2), N'Actors search', N'{"FirstName":null,"LastName":null,"PerPage":10,"Page":1}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (103, CAST(N'2021-06-16T18:20:27.7012233' AS DateTime2), N'Actors search', N'{"FirstName":null,"LastName":null,"PerPage":10,"Page":1}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (104, CAST(N'2021-06-16T18:21:38.0648288' AS DateTime2), N'Actors search', N'{"FirstName":null,"LastName":null,"PerPage":10,"Page":1}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (105, CAST(N'2021-06-16T18:22:05.4268471' AS DateTime2), N'Insert actor', N'{"Id":0,"FirstName":null,"LastName":null,"DateOfBirth":"0001-01-01T00:00:00","Biography":null}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (106, CAST(N'2021-06-16T18:22:39.9010078' AS DateTime2), N'Actors search', N'{"FirstName":null,"LastName":null,"PerPage":10,"Page":1}', N'Eudora34@hotmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (107, CAST(N'2021-06-16T18:22:56.8446492' AS DateTime2), N'Actors search', N'{"FirstName":null,"LastName":null,"PerPage":10,"Page":1}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (108, CAST(N'2021-06-16T18:23:42.1643661' AS DateTime2), N'Actors search', N'{"FirstName":null,"LastName":null,"PerPage":10,"Page":1}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (109, CAST(N'2021-06-16T18:26:35.6555483' AS DateTime2), N'Actors search', N'{"FirstName":null,"LastName":null,"PerPage":10,"Page":1}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (110, CAST(N'2021-06-16T18:30:32.4131072' AS DateTime2), N'Actors search', N'{"FirstName":null,"LastName":null,"PerPage":10,"Page":1}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (111, CAST(N'2021-06-16T18:37:19.1863490' AS DateTime2), N'Actors search', N'{"FirstName":null,"LastName":null,"PerPage":10,"Page":1}', N'Eudora34@hotmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (112, CAST(N'2021-06-16T18:37:43.3556080' AS DateTime2), N'Actors search', N'{"FirstName":null,"LastName":null,"PerPage":10,"Page":1}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (113, CAST(N'2021-06-16T18:42:48.4806945' AS DateTime2), N'Actors search', N'{"FirstName":null,"LastName":null,"PerPage":10,"Page":1}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (114, CAST(N'2021-06-16T18:45:18.6055563' AS DateTime2), N'Actors search', N'{"FirstName":null,"LastName":null,"PerPage":10,"Page":1}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (115, CAST(N'2021-06-16T18:45:29.8660115' AS DateTime2), N'Actors search', N'{"FirstName":null,"LastName":null,"PerPage":10,"Page":1}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (116, CAST(N'2021-06-16T18:46:46.6236064' AS DateTime2), N'Actors search', N'{"FirstName":null,"LastName":null,"PerPage":10,"Page":1}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (117, CAST(N'2021-06-16T18:47:18.9589347' AS DateTime2), N'Actors search', N'{"FirstName":null,"LastName":null,"PerPage":10,"Page":1}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (118, CAST(N'2021-06-16T18:48:51.2434415' AS DateTime2), N'Actors search', N'{"FirstName":null,"LastName":null,"PerPage":10,"Page":1}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (119, CAST(N'2021-06-16T18:50:22.5242718' AS DateTime2), N'Actors search', N'{"FirstName":null,"LastName":null,"PerPage":10,"Page":1}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (120, CAST(N'2021-06-16T18:52:42.3472038' AS DateTime2), N'Actors search', N'{"FirstName":null,"LastName":null,"PerPage":10,"Page":1}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (121, CAST(N'2021-06-16T18:53:29.2018119' AS DateTime2), N'Actors search', N'{"FirstName":null,"LastName":null,"PerPage":10,"Page":1}', N'Eudora34@hotmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (122, CAST(N'2021-06-16T19:13:38.2815694' AS DateTime2), N'Actors search', N'{"FirstName":null,"LastName":null,"PerPage":10,"Page":1}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (123, CAST(N'2021-06-16T19:22:16.9703295' AS DateTime2), N'Actors search', N'{"FirstName":null,"LastName":null,"PerPage":10,"Page":1}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (124, CAST(N'2021-06-16T19:22:41.0565578' AS DateTime2), N'Actors search', N'{"FirstName":null,"LastName":null,"PerPage":10,"Page":1}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (125, CAST(N'2021-06-16T19:23:37.3743392' AS DateTime2), N'Actors search', N'{"FirstName":null,"LastName":null,"PerPage":10,"Page":1}', N'Eudora34@hotmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (126, CAST(N'2021-06-16T19:36:25.2310806' AS DateTime2), N'Get actor by Id', N'31', N'Eudora34@hotmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (127, CAST(N'2021-06-16T19:36:34.2979809' AS DateTime2), N'Categories search', N'{"Name":null,"PerPage":10,"Page":1}', N'Eudora34@hotmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (128, CAST(N'2021-06-16T19:37:10.0225673' AS DateTime2), N'Search film directors', N'{"FirstName":null,"LastName":null,"PerPage":10,"Page":1}', N'Eudora34@hotmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (129, CAST(N'2021-06-16T23:27:44.8945414' AS DateTime2), N'Categories search', N'{"Name":null,"PerPage":10,"Page":1}', N'Eudora34@hotmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (130, CAST(N'2021-06-16T23:44:09.4997958' AS DateTime2), N'Get order by id', N'5', N'Eudora34@hotmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (131, CAST(N'2021-06-16T23:45:58.4361436' AS DateTime2), N'Get film director by Id', N'5', N'Eudora34@hotmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (132, CAST(N'2021-06-16T23:46:46.3074685' AS DateTime2), N'Get user by id', N'5', N'Eudora34@hotmail.com')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (133, CAST(N'2021-06-16T23:47:01.3315579' AS DateTime2), N'Get user by id', N'12', N'Eudora34@hotmail.com')
SET IDENTITY_INSERT [dbo].[UseCaseLogs] OFF
SET IDENTITY_INSERT [dbo].[UserMovies] ON 

INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (3, 5, 1, CAST(N'2021-06-14T13:01:02.5788859' AS DateTime2), CAST(N'2021-06-14T13:01:02.5788859' AS DateTime2), CAST(N'2021-06-15T15:22:20.0569275' AS DateTime2), 1, CAST(N'2021-06-15T15:22:20.0477037' AS DateTime2), 0)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (4, 2, 4, CAST(N'2021-06-15T12:50:43.4440000' AS DateTime2), CAST(N'2021-06-15T14:51:08.1931821' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (5, 10, 4, CAST(N'2021-06-19T13:14:08.6990000' AS DateTime2), CAST(N'2021-06-15T15:03:27.0748221' AS DateTime2), CAST(N'2021-06-15T15:14:31.7690438' AS DateTime2), 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (6, 11, 24, CAST(N'2022-05-07T17:28:13.3075250' AS DateTime2), CAST(N'2021-06-16T18:39:10.8729286' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (7, 23, 22, CAST(N'2022-02-26T18:29:29.3718176' AS DateTime2), CAST(N'2021-06-16T18:39:10.8732946' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (8, 10, 30, CAST(N'2022-05-04T10:12:49.5654677' AS DateTime2), CAST(N'2021-06-16T18:39:10.8732956' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (9, 37, 4, CAST(N'2021-12-22T11:55:17.2873479' AS DateTime2), CAST(N'2021-06-16T18:39:10.8732979' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (10, 13, 28, CAST(N'2021-06-19T15:07:32.5089161' AS DateTime2), CAST(N'2021-06-16T18:39:10.8732987' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (11, 13, 49, CAST(N'2022-02-26T14:38:59.3317688' AS DateTime2), CAST(N'2021-06-16T18:39:10.8733001' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (12, 39, 22, CAST(N'2021-07-06T13:45:10.2507127' AS DateTime2), CAST(N'2021-06-16T18:39:10.8733012' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (13, 25, 8, CAST(N'2021-08-14T01:28:24.7420201' AS DateTime2), CAST(N'2021-06-16T18:39:10.8733027' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (14, 28, 40, CAST(N'2021-08-05T01:55:16.0870558' AS DateTime2), CAST(N'2021-06-16T18:39:10.8733035' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (15, 29, 49, CAST(N'2021-06-18T10:23:37.6062416' AS DateTime2), CAST(N'2021-06-16T18:39:10.8733045' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (16, 26, 40, CAST(N'2022-03-08T05:51:02.9751299' AS DateTime2), CAST(N'2021-06-16T18:39:10.8733057' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (17, 25, 9, CAST(N'2022-06-14T06:57:04.7429836' AS DateTime2), CAST(N'2021-06-16T18:39:10.8733067' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (18, 15, 21, CAST(N'2021-08-31T13:59:59.9310103' AS DateTime2), CAST(N'2021-06-16T18:39:10.8733075' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (19, 37, 42, CAST(N'2022-02-07T10:17:20.6132047' AS DateTime2), CAST(N'2021-06-16T18:39:10.8733085' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (20, 15, 7, CAST(N'2021-10-27T21:08:03.6919787' AS DateTime2), CAST(N'2021-06-16T18:39:10.8733094' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (21, 42, 4, CAST(N'2021-06-29T03:02:44.8427852' AS DateTime2), CAST(N'2021-06-16T18:39:10.8733104' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (22, 33, 15, CAST(N'2021-10-13T05:30:36.1500547' AS DateTime2), CAST(N'2021-06-16T18:39:10.8733113' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (23, 31, 51, CAST(N'2022-04-07T02:43:50.9891933' AS DateTime2), CAST(N'2021-06-16T18:39:10.8733122' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (24, 18, 2, CAST(N'2021-08-08T18:55:14.0220769' AS DateTime2), CAST(N'2021-06-16T18:39:10.8733130' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (25, 29, 31, CAST(N'2022-01-02T00:34:35.3635891' AS DateTime2), CAST(N'2021-06-16T18:39:10.8733138' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (26, 27, 48, CAST(N'2022-05-03T16:12:42.9224431' AS DateTime2), CAST(N'2021-06-16T18:39:10.8733146' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (27, 14, 44, CAST(N'2021-12-26T06:40:32.1332242' AS DateTime2), CAST(N'2021-06-16T18:39:10.8733155' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (28, 7, 29, CAST(N'2021-08-22T04:56:18.2651243' AS DateTime2), CAST(N'2021-06-16T18:39:10.8732935' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (29, 3, 8, CAST(N'2022-06-15T17:13:47.5558500' AS DateTime2), CAST(N'2021-06-16T18:39:10.8732906' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (30, 4, 36, CAST(N'2022-05-27T07:44:58.0011814' AS DateTime2), CAST(N'2021-06-16T18:39:10.8732882' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (31, 27, 28, CAST(N'2021-07-08T04:26:00.4097576' AS DateTime2), CAST(N'2021-06-16T18:39:10.8732869' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (32, 34, 23, CAST(N'2021-10-27T18:31:48.7128930' AS DateTime2), CAST(N'2021-06-16T18:39:10.8732466' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (33, 8, 47, CAST(N'2022-05-04T16:54:15.3082306' AS DateTime2), CAST(N'2021-06-16T18:39:10.8732531' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (34, 40, 8, CAST(N'2022-03-25T20:24:36.0842820' AS DateTime2), CAST(N'2021-06-16T18:39:10.8732542' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (35, 7, 27, CAST(N'2021-08-10T04:09:05.1446009' AS DateTime2), CAST(N'2021-06-16T18:39:10.8732551' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (36, 41, 1, CAST(N'2021-10-09T04:37:02.4545569' AS DateTime2), CAST(N'2021-06-16T18:39:10.8732558' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (37, 11, 5, CAST(N'2022-01-30T16:05:56.3834290' AS DateTime2), CAST(N'2021-06-16T18:39:10.8732566' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (38, 39, 21, CAST(N'2021-08-16T08:57:01.1882268' AS DateTime2), CAST(N'2021-06-16T18:39:10.8732574' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (39, 31, 6, CAST(N'2021-09-20T12:33:31.1022876' AS DateTime2), CAST(N'2021-06-16T18:39:10.8732582' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (40, 22, 37, CAST(N'2021-08-18T00:25:33.7512078' AS DateTime2), CAST(N'2021-06-16T18:39:10.8732590' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (41, 15, 30, CAST(N'2021-11-02T10:37:19.0282174' AS DateTime2), CAST(N'2021-06-16T18:39:10.8732598' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (42, 16, 1, CAST(N'2021-09-17T12:55:53.7242151' AS DateTime2), CAST(N'2021-06-16T18:39:10.8733164' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (43, 3, 32, CAST(N'2022-03-25T02:50:47.9273265' AS DateTime2), CAST(N'2021-06-16T18:39:10.8732606' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (44, 11, 54, CAST(N'2022-06-04T14:44:46.7013534' AS DateTime2), CAST(N'2021-06-16T18:39:10.8732622' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (45, 31, 18, CAST(N'2021-07-03T14:09:29.1196806' AS DateTime2), CAST(N'2021-06-16T18:39:10.8732634' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (46, 2, 52, CAST(N'2022-03-15T17:00:06.5618460' AS DateTime2), CAST(N'2021-06-16T18:39:10.8732642' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (47, 27, 9, CAST(N'2022-03-27T16:42:07.6172276' AS DateTime2), CAST(N'2021-06-16T18:39:10.8732650' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (48, 34, 19, CAST(N'2022-04-21T10:35:29.6538585' AS DateTime2), CAST(N'2021-06-16T18:39:10.8732659' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (49, 3, 40, CAST(N'2022-03-09T10:37:42.9529170' AS DateTime2), CAST(N'2021-06-16T18:39:10.8732668' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (50, 15, 7, CAST(N'2021-10-13T12:16:12.4645824' AS DateTime2), CAST(N'2021-06-16T18:39:10.8732677' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (51, 9, 39, CAST(N'2021-07-13T04:25:41.1986290' AS DateTime2), CAST(N'2021-06-16T18:39:10.8732685' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (52, 25, 22, CAST(N'2022-02-10T10:01:03.7529833' AS DateTime2), CAST(N'2021-06-16T18:39:10.8732693' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (53, 38, 22, CAST(N'2022-01-28T19:09:57.8956683' AS DateTime2), CAST(N'2021-06-16T18:39:10.8732857' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (54, 2, 22, CAST(N'2022-04-12T08:02:59.9820004' AS DateTime2), CAST(N'2021-06-16T18:39:10.8732614' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (55, 23, 27, CAST(N'2022-02-28T13:14:25.8566691' AS DateTime2), CAST(N'2021-06-16T18:39:10.8733172' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (56, 27, 23, CAST(N'2022-05-31T04:09:57.1745219' AS DateTime2), CAST(N'2021-06-16T18:39:49.3911802' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (57, 18, 28, CAST(N'2021-11-22T16:53:13.3581879' AS DateTime2), CAST(N'2021-06-16T18:39:49.3911941' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (58, 6, 23, CAST(N'2022-04-30T03:39:12.4782513' AS DateTime2), CAST(N'2021-06-16T18:39:49.3911945' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (59, 24, 30, CAST(N'2022-05-20T23:53:13.8236861' AS DateTime2), CAST(N'2021-06-16T18:39:49.3911949' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (60, 12, 22, CAST(N'2022-05-08T09:17:25.1092531' AS DateTime2), CAST(N'2021-06-16T18:39:49.3911953' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (61, 4, 36, CAST(N'2021-09-23T03:54:32.3701881' AS DateTime2), CAST(N'2021-06-16T18:39:49.3911958' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (62, 10, 21, CAST(N'2021-08-07T03:35:51.3032058' AS DateTime2), CAST(N'2021-06-16T18:39:49.3911962' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (63, 40, 6, CAST(N'2021-08-06T00:59:08.7286546' AS DateTime2), CAST(N'2021-06-16T18:39:49.3911966' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (64, 26, 16, CAST(N'2022-04-07T17:04:12.2286123' AS DateTime2), CAST(N'2021-06-16T18:39:49.3911970' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (65, 30, 19, CAST(N'2021-11-11T01:36:19.5474170' AS DateTime2), CAST(N'2021-06-16T18:39:49.3911974' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (66, 29, 21, CAST(N'2021-12-05T11:15:18.9416655' AS DateTime2), CAST(N'2021-06-16T18:39:49.3911978' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (67, 25, 2, CAST(N'2021-07-23T06:29:53.5010538' AS DateTime2), CAST(N'2021-06-16T18:39:49.3911982' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (68, 31, 16, CAST(N'2022-03-11T03:08:03.2721473' AS DateTime2), CAST(N'2021-06-16T18:39:49.3911986' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (69, 26, 42, CAST(N'2022-05-18T08:30:48.0626761' AS DateTime2), CAST(N'2021-06-16T18:39:49.3911990' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (70, 7, 53, CAST(N'2022-05-28T20:54:08.2154738' AS DateTime2), CAST(N'2021-06-16T18:39:49.3911994' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (71, 17, 21, CAST(N'2021-12-24T20:50:07.6643757' AS DateTime2), CAST(N'2021-06-16T18:39:49.3911998' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (72, 9, 35, CAST(N'2021-12-20T21:54:21.9636499' AS DateTime2), CAST(N'2021-06-16T18:39:49.3912002' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (73, 12, 12, CAST(N'2021-09-24T19:22:38.0888264' AS DateTime2), CAST(N'2021-06-16T18:39:49.3912006' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (74, 9, 31, CAST(N'2021-10-14T08:23:08.0914093' AS DateTime2), CAST(N'2021-06-16T18:39:49.3912010' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (75, 11, 35, CAST(N'2021-09-29T03:20:44.0202328' AS DateTime2), CAST(N'2021-06-16T18:39:49.3912014' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (76, 4, 26, CAST(N'2022-04-02T07:07:59.0040184' AS DateTime2), CAST(N'2021-06-16T18:39:49.3912018' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (77, 8, 26, CAST(N'2021-11-19T04:42:33.1460221' AS DateTime2), CAST(N'2021-06-16T18:39:49.3912022' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (78, 11, 15, CAST(N'2022-02-26T23:42:41.1136156' AS DateTime2), CAST(N'2021-06-16T18:39:49.3911937' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (79, 24, 35, CAST(N'2021-10-21T18:20:05.8899229' AS DateTime2), CAST(N'2021-06-16T18:39:49.3911933' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (80, 16, 45, CAST(N'2022-05-08T23:24:17.5916561' AS DateTime2), CAST(N'2021-06-16T18:39:49.3911929' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (81, 33, 42, CAST(N'2021-09-17T08:34:19.8127046' AS DateTime2), CAST(N'2021-06-16T18:39:49.3911925' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (82, 1, 44, CAST(N'2021-07-08T20:06:08.8724790' AS DateTime2), CAST(N'2021-06-16T18:39:49.3911833' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (83, 29, 7, CAST(N'2021-09-13T05:47:54.7615421' AS DateTime2), CAST(N'2021-06-16T18:39:49.3911838' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (84, 28, 38, CAST(N'2022-02-10T19:41:51.7510769' AS DateTime2), CAST(N'2021-06-16T18:39:49.3911842' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (85, 34, 50, CAST(N'2022-05-16T21:38:14.8672985' AS DateTime2), CAST(N'2021-06-16T18:39:49.3911846' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (86, 6, 46, CAST(N'2022-05-02T17:44:22.7423582' AS DateTime2), CAST(N'2021-06-16T18:39:49.3911851' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (87, 35, 37, CAST(N'2021-08-26T07:21:26.5842997' AS DateTime2), CAST(N'2021-06-16T18:39:49.3911855' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (88, 38, 42, CAST(N'2022-02-07T07:57:45.8848934' AS DateTime2), CAST(N'2021-06-16T18:39:49.3911859' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (89, 14, 46, CAST(N'2021-09-07T07:13:59.3483854' AS DateTime2), CAST(N'2021-06-16T18:39:49.3911863' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (90, 2, 43, CAST(N'2021-06-25T04:55:52.0538848' AS DateTime2), CAST(N'2021-06-16T18:39:49.3911867' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (91, 32, 34, CAST(N'2022-02-07T07:00:11.0255420' AS DateTime2), CAST(N'2021-06-16T18:39:49.3911871' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (92, 16, 43, CAST(N'2022-05-01T17:38:16.1854460' AS DateTime2), CAST(N'2021-06-16T18:39:49.3912026' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (93, 23, 47, CAST(N'2021-09-13T09:18:59.8918172' AS DateTime2), CAST(N'2021-06-16T18:39:49.3911875' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (94, 20, 18, CAST(N'2021-10-29T01:47:37.2047883' AS DateTime2), CAST(N'2021-06-16T18:39:49.3911884' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (95, 10, 13, CAST(N'2021-06-18T15:09:29.0082646' AS DateTime2), CAST(N'2021-06-16T18:39:49.3911888' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (96, 37, 34, CAST(N'2022-06-08T06:06:34.1268014' AS DateTime2), CAST(N'2021-06-16T18:39:49.3911892' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (97, 8, 22, CAST(N'2021-12-25T03:33:40.8737985' AS DateTime2), CAST(N'2021-06-16T18:39:49.3911896' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (98, 35, 29, CAST(N'2021-09-09T03:14:42.0300066' AS DateTime2), CAST(N'2021-06-16T18:39:49.3911900' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (99, 28, 18, CAST(N'2022-03-03T01:40:44.5222610' AS DateTime2), CAST(N'2021-06-16T18:39:49.3911905' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (100, 41, 46, CAST(N'2022-03-07T23:00:58.3392909' AS DateTime2), CAST(N'2021-06-16T18:39:49.3911909' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (101, 15, 13, CAST(N'2022-03-04T08:04:51.1501549' AS DateTime2), CAST(N'2021-06-16T18:39:49.3911913' AS DateTime2), NULL, 0, NULL, 1)
GO
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (102, 3, 1, CAST(N'2022-02-02T12:29:28.5601209' AS DateTime2), CAST(N'2021-06-16T18:39:49.3911917' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (103, 3, 37, CAST(N'2022-05-11T11:57:23.1030132' AS DateTime2), CAST(N'2021-06-16T18:39:49.3911921' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (104, 11, 6, CAST(N'2021-07-26T04:58:44.9110480' AS DateTime2), CAST(N'2021-06-16T18:39:49.3911880' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[UserMovies] ([Id], [UserId], [MovieId], [EndDate], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (105, 17, 30, CAST(N'2022-02-14T16:52:39.3967097' AS DateTime2), CAST(N'2021-06-16T18:39:49.3912030' AS DateTime2), NULL, 0, NULL, 1)
SET IDENTITY_INSERT [dbo].[UserMovies] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [Email], [RoleId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (1, N'Caterina 2123', N'3', N'tesra872112', N'test4@hotmail.com', 7, CAST(N'2021-06-14T13:01:02.5788859' AS DateTime2), CAST(N'2021-06-14T14:02:43.3839185' AS DateTime2), 0, NULL, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [Email], [RoleId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (2, N'Crystal', N'O''Kon', N'Crystal.OKon', N'Crystal23@hotmail.com', 8, CAST(N'2021-06-14T13:02:25.6289022' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [Email], [RoleId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (3, N'Eudora', N'Legros', N'Eudora87', N'Eudora34@hotmail.com', 7, CAST(N'2021-06-14T13:02:25.6342379' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [Email], [RoleId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (4, N'Waylon', N'Aufderhar', N'Waylon_Aufderhar', N'Waylon74@yahoo.com', 8, CAST(N'2021-06-14T13:02:25.6342387' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [Email], [RoleId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (5, N'Roslyn', N'Green', N'Roslyn.Green', N'Roslyn.Green57@gmail.com', 7, CAST(N'2021-06-14T13:02:25.6342396' AS DateTime2), CAST(N'2021-06-14T13:46:26.0663835' AS DateTime2), 1, CAST(N'2021-06-14T13:46:26.0328532' AS DateTime2), 0)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [Email], [RoleId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (6, N'Gregg', N'Harvey', N'Gregg_Harvey', N'Gregg_Harvey@hotmail.com', 7, CAST(N'2021-06-14T13:02:25.6342403' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [Email], [RoleId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (7, N'Bethel', N'Walter', N'Bethel.Walter', N'Bethel.Walter@yahoo.com', 7, CAST(N'2021-06-14T13:02:25.6342411' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [Email], [RoleId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (8, N'Muriel', N'Klein', N'Muriel.Klein26', N'Muriel_Klein8@yahoo.com', 7, CAST(N'2021-06-14T13:02:25.6342420' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [Email], [RoleId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (9, N'Kailee', N'Russel', N'Kailee.Russel', N'Kailee_Russel0@yahoo.com', 8, CAST(N'2021-06-14T13:02:25.6342428' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [Email], [RoleId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (10, N'Mossie', N'Sipes', N'Mossie.Sipes38', N'Mossie.Sipes32@yahoo.com', 7, CAST(N'2021-06-14T13:02:25.6342370' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [Email], [RoleId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (11, N'Rey', N'Zemlak', N'Rey.Zemlak', N'Rey.Zemlak@gmail.com', 8, CAST(N'2021-06-14T13:02:25.6342437' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [Email], [RoleId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (12, N'Cathrine', N'Gusikowski', N'Cathrine.Gusikowski', N'Cathrine59@yahoo.com', 7, CAST(N'2021-06-14T13:02:25.6342457' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [Email], [RoleId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (13, N'Alexandrine', N'Breitenberg', N'Alexandrine.Breitenberg', N'Alexandrine16@yahoo.com', 8, CAST(N'2021-06-14T13:02:25.6342474' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [Email], [RoleId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (14, N'Marcelina', N'Gerlach', N'Marcelina.Gerlach48', N'Marcelina.Gerlach@yahoo.com', 7, CAST(N'2021-06-14T13:02:25.6342492' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [Email], [RoleId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (15, N'Alva', N'Hagenes', N'Alva.Hagenes', N'Alva_Hagenes@hotmail.com', 7, CAST(N'2021-06-14T13:02:25.6342511' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [Email], [RoleId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (16, N'Luis', N'Skiles', N'Luis37', N'Luis_Skiles@gmail.com', 8, CAST(N'2021-06-14T13:02:25.6342530' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [Email], [RoleId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (17, N'Colby', N'Johnston', N'Colby.Johnston', N'Colby.Johnston@yahoo.com', 7, CAST(N'2021-06-14T13:02:25.6342546' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [Email], [RoleId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (18, N'Urban', N'Adams', N'Urban88', N'Urban_Adams1@hotmail.com', 7, CAST(N'2021-06-14T13:02:25.6342566' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [Email], [RoleId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (19, N'Maximus', N'Wilkinson', N'Maximus_Wilkinson', N'Maximus_Wilkinson22@gmail.com', 7, CAST(N'2021-06-14T13:02:25.6342445' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [Email], [RoleId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (20, N'Eugene', N'Williamson', N'Eugene.Williamson', N'Eugene.Williamson@gmail.com', 7, CAST(N'2021-06-14T13:02:25.6342362' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [Email], [RoleId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (21, N'Louisa', N'Wilkinson', N'Louisa16', N'Louisa.Wilkinson32@yahoo.com', 7, CAST(N'2021-06-14T13:02:25.6342353' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [Email], [RoleId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (22, N'Kayley', N'Deckow', N'Kayley.Deckow70', N'Kayley_Deckow41@yahoo.com', 8, CAST(N'2021-06-14T13:02:25.6342343' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [Email], [RoleId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (23, N'Clifford', N'Simonis', N'Clifford.Simonis0', N'Clifford.Simonis18@yahoo.com', 7, CAST(N'2021-06-14T13:02:25.6342083' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [Email], [RoleId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (24, N'Ella', N'Lind', N'Ella51', N'Ella.Lind88@hotmail.com', 7, CAST(N'2021-06-14T13:02:25.6342200' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [Email], [RoleId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (25, N'Mandy', N'Schultz', N'Mandy.Schultz46', N'Mandy_Schultz63@hotmail.com', 7, CAST(N'2021-06-14T13:02:25.6342212' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [Email], [RoleId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (26, N'Norris', N'Lowe', N'Norris.Lowe33', N'Norris.Lowe19@yahoo.com', 8, CAST(N'2021-06-14T13:02:25.6342221' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [Email], [RoleId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (27, N'Anya', N'Graham', N'Anya29', N'Anya61@yahoo.com', 7, CAST(N'2021-06-14T13:02:25.6342230' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [Email], [RoleId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (28, N'Filomena', N'Jakubowski', N'Filomena_Jakubowski', N'Filomena71@hotmail.com', 8, CAST(N'2021-06-14T13:02:25.6342240' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [Email], [RoleId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (29, N'Emilio', N'Turner', N'Emilio_Turner86', N'Emilio28@yahoo.com', 7, CAST(N'2021-06-14T13:02:25.6342250' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [Email], [RoleId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (30, N'Unique', N'Wilderman', N'Unique_Wilderman74', N'Unique_Wilderman44@yahoo.com', 8, CAST(N'2021-06-14T13:02:25.6342260' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [Email], [RoleId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (31, N'Geo', N'Feest', N'Geo_Feest', N'Geo70@hotmail.com', 7, CAST(N'2021-06-14T13:02:25.6342268' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [Email], [RoleId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (32, N'Angela', N'Hartmann', N'Angela_Hartmann', N'Angela_Hartmann32@hotmail.com', 8, CAST(N'2021-06-14T13:02:25.6342276' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [Email], [RoleId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (33, N'Jaycee', N'Barrows', N'Jaycee_Barrows67', N'Jaycee_Barrows@yahoo.com', 7, CAST(N'2021-06-14T13:02:25.6342284' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [Email], [RoleId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (34, N'Maye', N'Heller', N'Maye.Heller23', N'Maye.Heller13@hotmail.com', 7, CAST(N'2021-06-14T13:02:25.6342292' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [Email], [RoleId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (35, N'Jamar', N'Mertz', N'Jamar_Mertz', N'Jamar_Mertz59@hotmail.com', 8, CAST(N'2021-06-14T13:02:25.6342301' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [Email], [RoleId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (36, N'Bethany', N'Windler', N'Bethany.Windler', N'Bethany_Windler@gmail.com', 8, CAST(N'2021-06-14T13:02:25.6342309' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [Email], [RoleId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (37, N'Devan', N'Murphy', N'Devan_Murphy', N'Devan.Murphy@yahoo.com', 8, CAST(N'2021-06-14T13:02:25.6342318' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [Email], [RoleId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (38, N'Estevan', N'Keebler', N'Estevan_Keebler8', N'Estevan57@gmail.com', 8, CAST(N'2021-06-14T13:02:25.6342326' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [Email], [RoleId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (39, N'Hardy', N'Hackett', N'Hardy.Hackett18', N'Hardy89@yahoo.com', 7, CAST(N'2021-06-14T13:02:25.6342335' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [Email], [RoleId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (40, N'Rosie', N'Lowe', N'Rosie56', N'Rosie48@gmail.com', 7, CAST(N'2021-06-14T13:02:25.6342594' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [Email], [RoleId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (41, N'Maximillian', N'Larson', N'Maximillian10', N'Maximillian.Larson3@hotmail.com', 8, CAST(N'2021-06-14T13:02:25.6342612' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [Email], [RoleId], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive]) VALUES (42, N'Test', N'Test', N'test', N'teeeee@hotmail.com', 8, CAST(N'2021-06-14T14:19:47.2015085' AS DateTime2), NULL, 0, NULL, 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
SET IDENTITY_INSERT [dbo].[UserUseCases] ON 

INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (1, 3, 4)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (2, 3, 11)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (3, 3, 10)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (4, 3, 16)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (5, 3, 51)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (6, 3, 30)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (7, 3, 12)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (8, 3, 9)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (9, 3, 17)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (10, 3, 29)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (11, 3, 41)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (12, 3, 5)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (13, 3, 22)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (14, 3, 50)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (17, 3, 21)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (18, 3, 13)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (19, 3, 6)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (20, 3, 18)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (21, 3, 26)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (22, 3, 42)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (23, 3, 1)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (24, 3, 25)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (25, 3, 14)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (26, 3, 7)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (27, 3, 20)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (28, 3, 28)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (29, 3, 44)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (30, 3, 2)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (31, 3, 23)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (32, 3, 15)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (33, 3, 8)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (34, 3, 19)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (35, 3, 27)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (36, 3, 43)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (37, 3, 3)
INSERT [dbo].[UserUseCases] ([Id], [UserId], [UseCaseId]) VALUES (38, 3, 24)
SET IDENTITY_INSERT [dbo].[UserUseCases] OFF
ALTER TABLE [dbo].[MovieActors]  WITH CHECK ADD  CONSTRAINT [FK_MovieActors_Actors_ActorId] FOREIGN KEY([ActorId])
REFERENCES [dbo].[Actors] ([Id])
GO
ALTER TABLE [dbo].[MovieActors] CHECK CONSTRAINT [FK_MovieActors_Actors_ActorId]
GO
ALTER TABLE [dbo].[MovieActors]  WITH CHECK ADD  CONSTRAINT [FK_MovieActors_Movies_MovieId] FOREIGN KEY([MovieId])
REFERENCES [dbo].[Movies] ([Id])
GO
ALTER TABLE [dbo].[MovieActors] CHECK CONSTRAINT [FK_MovieActors_Movies_MovieId]
GO
ALTER TABLE [dbo].[Movies]  WITH CHECK ADD  CONSTRAINT [FK_Movies_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Movies] CHECK CONSTRAINT [FK_Movies_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Movies]  WITH CHECK ADD  CONSTRAINT [FK_Movies_FilmDirectors_FilmDirectorId] FOREIGN KEY([FilmDirectorId])
REFERENCES [dbo].[FilmDirectors] ([Id])
GO
ALTER TABLE [dbo].[Movies] CHECK CONSTRAINT [FK_Movies_FilmDirectors_FilmDirectorId]
GO
ALTER TABLE [dbo].[UserMovies]  WITH CHECK ADD  CONSTRAINT [FK_UserMovies_Movies_MovieId] FOREIGN KEY([MovieId])
REFERENCES [dbo].[Movies] ([Id])
GO
ALTER TABLE [dbo].[UserMovies] CHECK CONSTRAINT [FK_UserMovies_Movies_MovieId]
GO
ALTER TABLE [dbo].[UserMovies]  WITH CHECK ADD  CONSTRAINT [FK_UserMovies_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserMovies] CHECK CONSTRAINT [FK_UserMovies_Users_UserId]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles_RoleId]
GO
ALTER TABLE [dbo].[UserUseCases]  WITH CHECK ADD  CONSTRAINT [FK_UserUseCases_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserUseCases] CHECK CONSTRAINT [FK_UserUseCases_Users_UserId]
GO
