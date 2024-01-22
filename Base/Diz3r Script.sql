USE [master]
GO
/****** Object:  Database [DIz3r]    Script Date: 12/8/2022 10:19:14 ******/
CREATE DATABASE [DIz3r]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DIz3r', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\DIz3r.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DIz3r_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\DIz3r_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DIz3r] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DIz3r].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DIz3r] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DIz3r] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DIz3r] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DIz3r] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DIz3r] SET ARITHABORT OFF 
GO
ALTER DATABASE [DIz3r] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DIz3r] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DIz3r] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DIz3r] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DIz3r] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DIz3r] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DIz3r] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DIz3r] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DIz3r] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DIz3r] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DIz3r] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DIz3r] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DIz3r] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DIz3r] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DIz3r] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DIz3r] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DIz3r] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DIz3r] SET RECOVERY FULL 
GO
ALTER DATABASE [DIz3r] SET  MULTI_USER 
GO
ALTER DATABASE [DIz3r] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DIz3r] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DIz3r] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DIz3r] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DIz3r] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DIz3r', N'ON'
GO
ALTER DATABASE [DIz3r] SET QUERY_STORE = OFF
GO
USE [DIz3r]
GO
/****** Object:  User [alumno]    Script Date: 12/8/2022 10:19:14 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Album]    Script Date: 12/8/2022 10:19:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Album](
	[idAlbum] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [varchar](50) NOT NULL,
	[iddiscografica] [int] NOT NULL,
	[idArtista] [int] NOT NULL,
	[imagenportada] [varchar](50) NULL,
 CONSTRAINT [PK_Album] PRIMARY KEY CLUSTERED 
(
	[idAlbum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Artista]    Script Date: 12/8/2022 10:19:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artista](
	[idArtista] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[imagen] [varchar](50) NULL,
 CONSTRAINT [PK_Artista] PRIMARY KEY CLUSTERED 
(
	[idArtista] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cancion]    Script Date: 12/8/2022 10:19:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cancion](
	[idCancion] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [varchar](50) NOT NULL,
	[duracion] [float] NOT NULL,
	[cantreproduccion] [int] NULL,
	[cantlikes] [int] NULL,
	[IdAlbum] [int] NOT NULL,
 CONSTRAINT [PK_Cancion] PRIMARY KEY CLUSTERED 
(
	[idCancion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discografica]    Script Date: 12/8/2022 10:19:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discografica](
	[idDiscografia] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[idPais] [int] NOT NULL,
 CONSTRAINT [PK_Discografia] PRIMARY KEY CLUSTERED 
(
	[idDiscografia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadoPlaylist]    Script Date: 12/8/2022 10:19:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoPlaylist](
	[idEstadoPlaylist] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_EstadoPlaylist] PRIMARY KEY CLUSTERED 
(
	[idEstadoPlaylist] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genero]    Script Date: 12/8/2022 10:19:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genero](
	[idGenero] [int] IDENTITY(1,1) NOT NULL,
	[Genero] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Genero] PRIMARY KEY CLUSTERED 
(
	[idGenero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GeneroxCancion]    Script Date: 12/8/2022 10:19:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GeneroxCancion](
	[idGeneroxCancion] [int] IDENTITY(1,1) NOT NULL,
	[IdCancion] [int] NOT NULL,
	[IdGenero] [int] NOT NULL,
 CONSTRAINT [PK_GeneroxCancion] PRIMARY KEY CLUSTERED 
(
	[idGeneroxCancion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 12/8/2022 10:19:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais](
	[idPais] [int] IDENTITY(1,1) NOT NULL,
	[Pais] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED 
(
	[idPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Playlist]    Script Date: 12/8/2022 10:19:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Playlist](
	[idPlaylist] [int] IDENTITY(1,1) NOT NULL,
	[idUsuario] [int] NOT NULL,
	[titulo] [varchar](50) NOT NULL,
	[cantcanciones] [int] NULL,
	[idestado] [int] NOT NULL,
	[Fechacreacion] [datetime] NOT NULL,
	[Fechaeliminada] [datetime] NULL,
 CONSTRAINT [PK_Playlist] PRIMARY KEY CLUSTERED 
(
	[idPlaylist] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlaylistxCancion]    Script Date: 12/8/2022 10:19:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlaylistxCancion](
	[idPlaylistCancion] [int] IDENTITY(1,1) NOT NULL,
	[IdCancion] [int] NOT NULL,
	[IdPlaylist] [int] NOT NULL,
 CONSTRAINT [PK_PlaylistxCancion] PRIMARY KEY CLUSTERED 
(
	[idPlaylistCancion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoUsuario]    Script Date: 12/8/2022 10:19:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoUsuario](
	[idTipoUsuario] [int] IDENTITY(1,1) NOT NULL,
	[TipoUsuario] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TipoUsuario] PRIMARY KEY CLUSTERED 
(
	[idTipoUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 12/8/2022 10:19:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[nombreUsuario] [varchar](50) NOT NULL,
	[nyap] [varchar](50) NOT NULL,
	[fechanac] [date] NOT NULL,
	[sexo] [varchar](50) NOT NULL,
	[CP] [varchar](8) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[Pais_idPais] [int] NOT NULL,
	[IdTipoUsuario] [int] NOT NULL,
	[FechaPassword] [date] NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Artista] ON 

INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (1, N'Pink Floyd', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (2, N'AC/DC', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (3, N'The Rolling Stones', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (4, N'The Beatles', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (5, N'Guns n Roses', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (6, N'Linkin Park', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (7, N'Madonna', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (8, N'Fito Paez', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (9, N'Diego Torres', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (10, N'Shakira', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (11, N'Maluma', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (12, N'Carlos Vives', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (13, N'Karol G', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (14, N'Yo-Yo Ma', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (15, N'Michael Finnissy', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (16, N'John Adams', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (17, N'John Corigliano', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (18, N'Terry Riley', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (19, N'Brian John Peter Ferneyhough', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (20, N'Charlie Parker', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (21, N'MIles Davis', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (22, N'Dizzy Gillespie', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (23, N'Coleman Hawkins', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (24, N'Billie Holiday', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (25, N'Ray Charles', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (26, N'Chet Baker', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (27, N'Celia Cruz', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (28, N'Ruben Blades', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (29, N'Willie Colon', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (30, N'Hector Lavoe', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (31, N'Tito Rodriguez', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (32, N'Luis Enrique', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (33, N'Astor Piazzolla', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (34, N'Carlos Gardel', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (35, N'Adriana Varela', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (36, N'Alberto Podestá', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (37, N'Bajofondo Tango Club', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (38, N'Susana Rinaldi', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (39, N'Dr. Dre', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (40, N'Eminem', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (41, N'Snoop Dogg', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (42, N'Jay-Z', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (43, N'Beastie Boys', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (44, N'Kanye West', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (45, N'Carl Cox', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (46, N'Marco Carola', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (47, N'Oscar Mulero', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (48, N'Nina Kraviz', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (49, N'Adam Beyer', NULL)
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (50, N'Solomun', NULL)
SET IDENTITY_INSERT [dbo].[Artista] OFF
GO
SET IDENTITY_INSERT [dbo].[EstadoPlaylist] ON 

INSERT [dbo].[EstadoPlaylist] ([idEstadoPlaylist], [descripcion]) VALUES (1, N'activa')
INSERT [dbo].[EstadoPlaylist] ([idEstadoPlaylist], [descripcion]) VALUES (2, N'eliminada')
SET IDENTITY_INSERT [dbo].[EstadoPlaylist] OFF
GO
SET IDENTITY_INSERT [dbo].[Genero] ON 

INSERT [dbo].[Genero] ([idGenero], [Genero]) VALUES (1, N'Música Clasica')
INSERT [dbo].[Genero] ([idGenero], [Genero]) VALUES (2, N'Jazz')
INSERT [dbo].[Genero] ([idGenero], [Genero]) VALUES (3, N'Soul')
INSERT [dbo].[Genero] ([idGenero], [Genero]) VALUES (4, N'Blues')
INSERT [dbo].[Genero] ([idGenero], [Genero]) VALUES (5, N'Flamenco')
INSERT [dbo].[Genero] ([idGenero], [Genero]) VALUES (6, N'Salsa')
INSERT [dbo].[Genero] ([idGenero], [Genero]) VALUES (7, N'Reggaeton')
INSERT [dbo].[Genero] ([idGenero], [Genero]) VALUES (8, N'Tango')
INSERT [dbo].[Genero] ([idGenero], [Genero]) VALUES (9, N'Pop')
INSERT [dbo].[Genero] ([idGenero], [Genero]) VALUES (10, N'Blues')
INSERT [dbo].[Genero] ([idGenero], [Genero]) VALUES (11, N'Rock')
INSERT [dbo].[Genero] ([idGenero], [Genero]) VALUES (12, N'Trap')
INSERT [dbo].[Genero] ([idGenero], [Genero]) VALUES (13, N'Country')
INSERT [dbo].[Genero] ([idGenero], [Genero]) VALUES (14, N'Disco')
INSERT [dbo].[Genero] ([idGenero], [Genero]) VALUES (15, N'Hip Hop')
INSERT [dbo].[Genero] ([idGenero], [Genero]) VALUES (16, N'Reggae')
INSERT [dbo].[Genero] ([idGenero], [Genero]) VALUES (17, N'Punk')
INSERT [dbo].[Genero] ([idGenero], [Genero]) VALUES (18, N'Techno')
SET IDENTITY_INSERT [dbo].[Genero] OFF
GO
SET IDENTITY_INSERT [dbo].[Pais] ON 

INSERT [dbo].[Pais] ([idPais], [Pais]) VALUES (1, N'Argentina')
INSERT [dbo].[Pais] ([idPais], [Pais]) VALUES (2, N'Colombia')
INSERT [dbo].[Pais] ([idPais], [Pais]) VALUES (3, N'Uruguay')
INSERT [dbo].[Pais] ([idPais], [Pais]) VALUES (4, N'Estados Unidos')
INSERT [dbo].[Pais] ([idPais], [Pais]) VALUES (5, N'Canadá')
INSERT [dbo].[Pais] ([idPais], [Pais]) VALUES (6, N'España')
INSERT [dbo].[Pais] ([idPais], [Pais]) VALUES (7, N'Inglaterra')
INSERT [dbo].[Pais] ([idPais], [Pais]) VALUES (8, N'Chile')
INSERT [dbo].[Pais] ([idPais], [Pais]) VALUES (9, N'Brasil')
INSERT [dbo].[Pais] ([idPais], [Pais]) VALUES (10, N'Alemania')
INSERT [dbo].[Pais] ([idPais], [Pais]) VALUES (11, N'España')
INSERT [dbo].[Pais] ([idPais], [Pais]) VALUES (12, N'Mexico')
INSERT [dbo].[Pais] ([idPais], [Pais]) VALUES (13, N'Francia')
INSERT [dbo].[Pais] ([idPais], [Pais]) VALUES (14, N'Suecia')
INSERT [dbo].[Pais] ([idPais], [Pais]) VALUES (15, N'Holanda')
SET IDENTITY_INSERT [dbo].[Pais] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoUsuario] ON 

INSERT [dbo].[TipoUsuario] ([idTipoUsuario], [TipoUsuario]) VALUES (1, N'Premium')
INSERT [dbo].[TipoUsuario] ([idTipoUsuario], [TipoUsuario]) VALUES (2, N'standard')
INSERT [dbo].[TipoUsuario] ([idTipoUsuario], [TipoUsuario]) VALUES (3, N'free')
SET IDENTITY_INSERT [dbo].[TipoUsuario] OFF
GO
ALTER TABLE [dbo].[Album]  WITH CHECK ADD  CONSTRAINT [FK_Album_Artista1] FOREIGN KEY([idArtista])
REFERENCES [dbo].[Artista] ([idArtista])
GO
ALTER TABLE [dbo].[Album] CHECK CONSTRAINT [FK_Album_Artista1]
GO
ALTER TABLE [dbo].[Album]  WITH CHECK ADD  CONSTRAINT [FK_Album_Discografica1] FOREIGN KEY([iddiscografica])
REFERENCES [dbo].[Discografica] ([idDiscografia])
GO
ALTER TABLE [dbo].[Album] CHECK CONSTRAINT [FK_Album_Discografica1]
GO
ALTER TABLE [dbo].[Cancion]  WITH CHECK ADD  CONSTRAINT [FK_Cancion_Album] FOREIGN KEY([IdAlbum])
REFERENCES [dbo].[Album] ([idAlbum])
GO
ALTER TABLE [dbo].[Cancion] CHECK CONSTRAINT [FK_Cancion_Album]
GO
ALTER TABLE [dbo].[Discografica]  WITH CHECK ADD  CONSTRAINT [FK_Discografica_Pais] FOREIGN KEY([idPais])
REFERENCES [dbo].[Pais] ([idPais])
GO
ALTER TABLE [dbo].[Discografica] CHECK CONSTRAINT [FK_Discografica_Pais]
GO
ALTER TABLE [dbo].[GeneroxCancion]  WITH CHECK ADD  CONSTRAINT [FK_GeneroxCancion_Cancion] FOREIGN KEY([IdCancion])
REFERENCES [dbo].[Cancion] ([idCancion])
GO
ALTER TABLE [dbo].[GeneroxCancion] CHECK CONSTRAINT [FK_GeneroxCancion_Cancion]
GO
ALTER TABLE [dbo].[GeneroxCancion]  WITH CHECK ADD  CONSTRAINT [FK_GeneroxCancion_Genero] FOREIGN KEY([IdGenero])
REFERENCES [dbo].[Genero] ([idGenero])
GO
ALTER TABLE [dbo].[GeneroxCancion] CHECK CONSTRAINT [FK_GeneroxCancion_Genero]
GO
ALTER TABLE [dbo].[Playlist]  WITH CHECK ADD  CONSTRAINT [FK_Playlist_EstadoPlaylist] FOREIGN KEY([idestado])
REFERENCES [dbo].[EstadoPlaylist] ([idEstadoPlaylist])
GO
ALTER TABLE [dbo].[Playlist] CHECK CONSTRAINT [FK_Playlist_EstadoPlaylist]
GO
ALTER TABLE [dbo].[Playlist]  WITH CHECK ADD  CONSTRAINT [FK_Playlist_Usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[Playlist] CHECK CONSTRAINT [FK_Playlist_Usuario]
GO
ALTER TABLE [dbo].[PlaylistxCancion]  WITH CHECK ADD  CONSTRAINT [FK_PlaylistxCancion_Cancion] FOREIGN KEY([IdCancion])
REFERENCES [dbo].[Cancion] ([idCancion])
GO
ALTER TABLE [dbo].[PlaylistxCancion] CHECK CONSTRAINT [FK_PlaylistxCancion_Cancion]
GO
ALTER TABLE [dbo].[PlaylistxCancion]  WITH CHECK ADD  CONSTRAINT [FK_PlaylistxCancion_Playlist] FOREIGN KEY([IdPlaylist])
REFERENCES [dbo].[Playlist] ([idPlaylist])
GO
ALTER TABLE [dbo].[PlaylistxCancion] CHECK CONSTRAINT [FK_PlaylistxCancion_Playlist]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Pais] FOREIGN KEY([Pais_idPais])
REFERENCES [dbo].[Pais] ([idPais])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Pais]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_TipoUsuario] FOREIGN KEY([IdTipoUsuario])
REFERENCES [dbo].[TipoUsuario] ([idTipoUsuario])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_TipoUsuario]
GO
USE [master]
GO
ALTER DATABASE [DIz3r] SET  READ_WRITE 
GO
