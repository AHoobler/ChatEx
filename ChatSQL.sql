USE [master]
GO
/****** Object:  Database [ChatEx]    Script Date: 3/29/2018 2:35:55 PM ******/
CREATE DATABASE [ChatEx]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ChatEx', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ChatEx.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ChatEx_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ChatEx_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ChatEx] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ChatEx].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ChatEx] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ChatEx] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ChatEx] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ChatEx] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ChatEx] SET ARITHABORT OFF 
GO
ALTER DATABASE [ChatEx] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ChatEx] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ChatEx] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ChatEx] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ChatEx] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ChatEx] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ChatEx] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ChatEx] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ChatEx] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ChatEx] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ChatEx] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ChatEx] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ChatEx] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ChatEx] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ChatEx] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ChatEx] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ChatEx] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ChatEx] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ChatEx] SET  MULTI_USER 
GO
ALTER DATABASE [ChatEx] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ChatEx] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ChatEx] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ChatEx] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ChatEx] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ChatEx]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 3/29/2018 2:35:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3/29/2018 2:35:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3/29/2018 2:35:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3/29/2018 2:35:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3/29/2018 2:35:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3/29/2018 2:35:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Chats]    Script Date: 3/29/2018 2:35:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chats](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[TimeStamp] [datetime] NOT NULL,
	[Message] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Chats] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201803281503445_InitialCreate', N'ChatterEx.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C6D6FE33612FE7EC0FD07419F7A87D4CA4B77B117D82D5227B90BBA79C13A5BF4DB82966847588952252A7570E82FBB0FFD49FD0B37942859E28B44D98AED140B2C2C72F8CC70382487C361FEFCDF1FE31F5661603DE324F52332B14F46C7B685891B793E594EEC8C2EBEFD60FFF0FDDFFF36BEF2C295F5734977C6E8A0254927F613A5F1B9E3A4EE130E513A0A7D3789D26841476E143AC88B9CD3E3E37F3927270E06081BB02C6BFC2923D40F71FE019FD388B838A6190A6E230F07292F879A598E6ADDA110A73172F1C49E3E214A7172B51A15B4B67511F808E498E160615B889088220A529E7F4EF18C261159CE622840C1E34B8C816E81821473E9CFD7E4A61D393E651D71D60D4B28374B6914F6043C39E39A71C4E61BE9D7AE3407BABB021DD317D6EB5C7F13FBC6C379D1A7280005880CCFA741C28827F66DC5E2228DEF301D950D4705E4750270BF45C9D7511DF1C8326E775459D2E9E898FD3BB2A65940B3044F08CE68828223EB219B07BEFB137E798CBE6232393B992FCE3EBC7B8FBCB3F7DFE1B377F59E425F81AE5100450F4914E30464C38BAAFFB6E534DB3962C3AA59AD4DA115B0259814B6758B561F3159D227982EA71F6CEBDA5F61AF2CE1C6F599F83087A0114D32F8BCCB8200CD035CD53BAD3CD9FF2D5C4FDFBD1F84EB1D7AF697F9D00BFC61E22430AF3EE120AF4D9FFCB8985E8DF1FEC2C9AE932864DF4DFB2A6ABFCCA22C715967222DC9234A969836A51B3B6BE33532690635BC5997A8876FDA4C52D9BC95A4AC439BCC8492C5AE674329EFEBF235B6B88B3886C1CB4D8B69A4CDE0C4AD6A24B405D32829D66673626A3604BAF3575E05AF42E407032C83065CC0FF58F84988AB5EFE1881D121D25BE60794A6B00A78FF41E9538BE8F07300D167D8CD1230CE194561FCEADC1E9E2282EFB270CE6C7E77BC061B9AC7DFA26BE4D228B922ACD5D6781F23F76B94D12BE25D228A3F53B704649F8F7E680E30883817AE8BD3F41A8C197BD308DCEB12F086D0B3D3DE706C79DAB71B320D901FAAFD106121FD5292AE7D113585E48F68C8543E499BA81FA3A54FCC442D49F5A216149DA272B2BEA23230334939A55ED09CA053CE826A302F2F1FA1E1DDBC1CF6F0FDBCED366FDD5A5053E30C5648FC6F4C7002CB98F790BB27643D0226EBC63E9C857CF818D357DF9B724E3FA3201B9AD546B3215F04869F0D39ECE1CF865C4C287EF63DE695181C7E4A628037A2579FABBAE79C20D9AEA743A39BBB66BE9B3540375D2ED23472FD7C1628C25E3C68D1941F7C38AB3B8251F4468C8240C7C0D07DB6E54109F4CD168DEA9E5CE200536C5DB84558708A521779B21AA1435E0FC1CA1D5521D83A1AD214EE9F124FB0749CB046881D825298A93EA1F2B4F089EBC728E8D492D0D2700B637DAF7888359738C68431ECD484097375F0830950F11106A54B4363A76671ED86A8F15A7563DEE5C2AEC75D8A49ECC4263B7C678D5D72FFED550CB35D633B30CE76959808A00DE4EDC340F959C5D400C483CBA119A87062D2182877A97662A04D8DEDC1409B2A7973065A1C514DC75F38AF1E9A79360FCABBDFD65BD5B507DB6CE8E3C04CB3F03DA10D85163891CDF372CE2AF18A2A0E6720273F9FA5DCD5154D8481CF306D866CD6FEAED20F75DA4144236A035C1B5A0728BF029480A409D543B83296D72A1DF7227AC09671B75658BEF60BB0351B90B1EB57A13542FD85A9689C46A78FAA67953548466E7458A8E1280C425CBC9A1D37508A2E2E2B2BC6C417EEE30DD73AC607A345411D9EAB4649656706D752699ADD5A5239647D5CB2ADB424B84F1A2D959D195C4BDC46BB95A4700A7AB8055BA9A8B9850F34D9CA4847B5DB547563A7C88FE2056347934835BE4571EC93652DB18A9758339E55F5EDAC7FC2515860386EAAC83BAAA4AD38D128414B2CD4026B90F4DA4F527A89289A2316E7997AA144A6DC5B35CB7FC9B2BE7DCA8358EE032535FBCD63BCE2C57D63A7955D118E700DFD0B993F9307D115A3AF6E6EB1343714A04411B79F46411612BD7BA56F5DDCDED5DB172532C2D811E497DC2749579293DB54BCD1B0C853629021AA7C97CD87490FA15376E979D6D5ADF346F5286570AA8EA20B58ED6DD8744E4C8FA112BDC3FE23D589F03A738AA7A4D40178514F8C5A56830456AB33476D269ED4319B35E6884276491D52A8EA21653D87A42164BD62233C8D46D514E61CE4AC913ABA5C6B8EACC81FA9432BAA37C056C82CD699A32A524CEAC08A6A73EC75BE89B8841EF0AEA53DB36CB86D1587DAEDF62D0DC6EBAC87C36C7BB5BBFB3A50ADB82716BF9D97C078F941DA92F664B7A12D15918CED6C4983A15F751A77DECD45A7F5A25E8FD9B8C86E2CEC6D17F97ABC7E16FBAA76211DEB44928A7B75BC138E71637EA4327834239EB10A12DB2AD5089BFA4B4A71386204A3D9AFC134F0315BC24B825B44FC054E6991BC619F1E9F9C0A2F6F0EE7158C93A65EA03892EA9EC234C76C077958E41925EE134AE4AC882D5E8AAC41A580F30DF1F06A62FF376F759EC72ED8AFBCF8C8BA493F13FFD70C2A1E930C5BBFCB599EC364CE1BBCD5A804FDFD4D3C823057F9CD2F5F8AA647D67D02D3E9DC3A1614BDC9F0379F46F492A668BA85341B3F9878BBB3ADF12241892ACC96CD1F20CC7D3AC8E38352CA6F42B4FA475FD1940F0CB642543C22180A6F1015EA1E096C82A57D20E0C127CD1F08F4EBACFAC1C026A2691F0BF8A43F98F854C07C192A5BEE711F521C9776B124E57AEE4CB5DE2AEF72DF7B939491BDD54497B3AE7BC00D9A59BD9D8BF2C6329607DB3A1509C98361EFD3EE5F3D0BF950128FD74EFB7EF38D779962DC7295F497CA2C3E805C38456ECFFEF387776D6BBAF8EF812761F6CB123E3063E3DBFCFE7381776D6CBA00F1811B5BAF8CDF03B3B57DED9F7BB634E32D74EFF9BB722A92E61E471545EECACF2D42EE70FC9F4760048547593CAB542784B525B376305C93E899EA33D144C6D2C491F84A14ED6CFBF5956FF8AD9DE534ED6C35F99B6DBCF9FADFCA9BD3B4F3D66445EE23B3589997A8CAF6EE58C7DA12A7DE522671A3271D89EB5D3E6BEBA5FC5B4A1C1E44298DD9A3B95D7E3B79C283A864C8A9D3232F58BE2886BDB3F6371861FF4EFDE51A82FD454682DDC6AE59D1DC9045546EDE8244258910A1B9C51479B0A55E24D45F209742350B40E7EFC2F3A01EBB069963EF86DC6734CE28741987F3A011F0624E401BFF3CF9B929F3F83E665FE9105D00317D16B8BF273F667EE055725F2B62421A08E65DF0702F1B4BCAC2BECB970AE92E2286405C7D9553F488C33800B0F49ECCD033DE443630BF8F7889DC9775045007D23D104DB58F2F7DB44C5098728C757BF8041BF6C2D5F7FF07ABBF59948A540000, N'6.2.0-61023')
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [UserId]) VALUES (N'Google', N'112319971043548942179', N'895bf0ec-37ed-4da0-bf41-2d1b49956c68')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'678d9eff-8d69-47b5-962a-69ab69d3f35e', N'janedoe@gmail.com', 0, N'AOY8u3gseSgM7RrRP6dVhk96MzW0yU6qVde8K06DjGjcwE4YZ+PbogwNjUfXjGw8mQ==', N'7a2fd25a-6767-4595-8322-75c25940188c', NULL, 0, 0, NULL, 1, 0, N'janedoe@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'895bf0ec-37ed-4da0-bf41-2d1b49956c68', N'ashleyhoobler@gmail.com', 0, NULL, N'442f5393-c3a7-44a3-9016-7378b92f2f9f', NULL, 0, 0, NULL, 1, 0, N'ashleyhoobler@gmail.com')
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 3/29/2018 2:35:55 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 3/29/2018 2:35:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 3/29/2018 2:35:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 3/29/2018 2:35:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 3/29/2018 2:35:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 3/29/2018 2:35:55 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Chats] ADD  CONSTRAINT [DF_Chats_TimeStamp]  DEFAULT (getdate()) FOR [TimeStamp]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Chats]  WITH CHECK ADD  CONSTRAINT [FK_Chats_AspNetUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Chats] CHECK CONSTRAINT [FK_Chats_AspNetUsers]
GO
USE [master]
GO
ALTER DATABASE [ChatEx] SET  READ_WRITE 
GO
