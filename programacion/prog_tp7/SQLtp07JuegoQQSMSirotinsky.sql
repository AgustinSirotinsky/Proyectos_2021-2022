USE [master]
GO
/****** Object:  Database [JuegoQQSM]    Script Date: 18/9/2022 15:25:16 ******/
CREATE DATABASE [JuegoQQSM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'JuegoQQSM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\JuegoQQSM.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'JuegoQQSM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\JuegoQQSM_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [JuegoQQSM] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [JuegoQQSM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [JuegoQQSM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [JuegoQQSM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [JuegoQQSM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [JuegoQQSM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [JuegoQQSM] SET ARITHABORT OFF 
GO
ALTER DATABASE [JuegoQQSM] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [JuegoQQSM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [JuegoQQSM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [JuegoQQSM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [JuegoQQSM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [JuegoQQSM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [JuegoQQSM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [JuegoQQSM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [JuegoQQSM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [JuegoQQSM] SET  DISABLE_BROKER 
GO
ALTER DATABASE [JuegoQQSM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [JuegoQQSM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [JuegoQQSM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [JuegoQQSM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [JuegoQQSM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [JuegoQQSM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [JuegoQQSM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [JuegoQQSM] SET RECOVERY FULL 
GO
ALTER DATABASE [JuegoQQSM] SET  MULTI_USER 
GO
ALTER DATABASE [JuegoQQSM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [JuegoQQSM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [JuegoQQSM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [JuegoQQSM] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [JuegoQQSM] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [JuegoQQSM] SET QUERY_STORE = OFF
GO
USE [JuegoQQSM]
GO
/****** Object:  Table [dbo].[Jugadores]    Script Date: 18/9/2022 15:25:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jugadores](
	[IdJugador] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[FechaHora] [datetime] NOT NULL,
	[Pozoganado] [int] NOT NULL,
	[ComodinDobleChance] [bit] NOT NULL,
	[Comodin50] [bit] NOT NULL,
	[ComodinSaltear] [bit] NOT NULL,
 CONSTRAINT [PK_Jugadores] PRIMARY KEY CLUSTERED 
(
	[IdJugador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Preguntas]    Script Date: 18/9/2022 15:25:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Preguntas](
	[idPregunta] [int] NOT NULL,
	[TextoPregunta] [varchar](200) NOT NULL,
	[NivelDificultad] [int] NOT NULL,
 CONSTRAINT [PK_Preguntas] PRIMARY KEY CLUSTERED 
(
	[idPregunta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Respuestas]    Script Date: 18/9/2022 15:25:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Respuestas](
	[idRespuesta] [int] IDENTITY(1,1) NOT NULL,
	[idPregunta] [int] NOT NULL,
	[OpcionRespuesta] [char](1) NOT NULL,
	[TextoRespuesta] [varchar](200) NOT NULL,
	[correcta] [bit] NOT NULL,
 CONSTRAINT [PK_Respuestas_1] PRIMARY KEY CLUSTERED 
(
	[idRespuesta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Respuestas1]    Script Date: 18/9/2022 15:25:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Respuestas1](
	[idRespuesta] [int] IDENTITY(1,1) NOT NULL,
	[idPregunta] [int] NOT NULL,
	[OpcionRespuesta] [char](10) NOT NULL,
	[TextoRespuesta] [varchar](200) NOT NULL,
	[correcta] [bit] NOT NULL,
 CONSTRAINT [PK_Respuestas] PRIMARY KEY CLUSTERED 
(
	[idRespuesta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RespuestasAnterior]    Script Date: 18/9/2022 15:25:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RespuestasAnterior](
	[idRespuesta] [int] NOT NULL,
	[idPregunta] [int] NOT NULL,
	[OpcionRespuesta] [char](10) NOT NULL,
	[TextoRespuesta] [varchar](200) NOT NULL,
	[correcta] [bit] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Jugadores] ON 

INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (1, N'agus', CAST(N'2022-09-17T11:44:43.570' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (2, N'asd', CAST(N'2022-09-18T11:37:21.367' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (3, N'asd', CAST(N'2022-09-18T11:39:20.303' AS DateTime), 0, 0, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (4, N'sergio', CAST(N'2022-09-18T11:42:51.620' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (5, N'sergio', CAST(N'2022-09-18T11:42:57.287' AS DateTime), 0, 0, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (6, N'fsda', CAST(N'2022-09-18T11:43:16.233' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (7, N'fsda', CAST(N'2022-09-18T11:43:18.690' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (8, N'Jose', CAST(N'2022-09-18T12:06:17.770' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (9, N'Jose', CAST(N'2022-09-18T12:06:59.137' AS DateTime), 0, 0, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (11, N'Jose', CAST(N'2022-09-18T12:16:00.177' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (12, N'Jose', CAST(N'2022-09-18T12:16:02.707' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (13, N'g', CAST(N'2022-09-18T12:16:05.710' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (14, N'asd', CAST(N'2022-09-18T12:16:07.967' AS DateTime), 0, 0, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (17, N'carlos', CAST(N'2022-09-18T12:36:07.253' AS DateTime), 0, 0, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (18, N'Jose', CAST(N'2022-09-18T12:41:53.307' AS DateTime), 0, 0, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (20, N'Jose', CAST(N'2022-09-18T12:42:29.477' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (21, N'Jose', CAST(N'2022-09-18T12:44:31.253' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (22, N'sergio', CAST(N'2022-09-18T12:44:57.643' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (23, N'sergio', CAST(N'2022-09-18T12:46:02.940' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (24, N'Jose', CAST(N'2022-09-18T12:46:21.160' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (25, N'Jose', CAST(N'2022-09-18T12:47:35.367' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (26, N'Jose', CAST(N'2022-09-18T12:48:46.263' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (27, N'asd', CAST(N'2022-09-18T12:49:06.333' AS DateTime), 0, 0, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (28, N'asd', CAST(N'2022-09-18T12:52:17.823' AS DateTime), 0, 0, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (30, N'carlos', CAST(N'2022-09-18T12:58:33.747' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (31, N'carlos', CAST(N'2022-09-18T12:59:02.147' AS DateTime), 0, 0, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (32, N'Jose', CAST(N'2022-09-18T13:00:23.223' AS DateTime), 0, 0, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (33, N'carlos', CAST(N'2022-09-18T13:00:54.490' AS DateTime), 0, 0, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (34, N'asd', CAST(N'2022-09-18T13:20:54.470' AS DateTime), 0, 0, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (35, N'asd', CAST(N'2022-09-18T13:22:42.443' AS DateTime), 0, 0, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (36, N'Jose', CAST(N'2022-09-18T13:24:11.303' AS DateTime), 0, 0, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (37, N'asd', CAST(N'2022-09-18T13:29:13.617' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (38, N'asd', CAST(N'2022-09-18T13:30:27.303' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (39, N'asd', CAST(N'2022-09-18T13:30:37.857' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (40, N'asd', CAST(N'2022-09-18T13:31:25.813' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (41, N'asd', CAST(N'2022-09-18T13:31:41.753' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (42, N'asd', CAST(N'2022-09-18T13:32:31.713' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (43, N'asd', CAST(N'2022-09-18T13:33:43.230' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (44, N'asd', CAST(N'2022-09-18T13:50:43.890' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (45, N'asd', CAST(N'2022-09-18T13:51:05.597' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (46, N'asd', CAST(N'2022-09-18T13:51:31.927' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (47, N'asd', CAST(N'2022-09-18T13:52:14.747' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (48, N'asd', CAST(N'2022-09-18T13:52:43.497' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (49, N'asd', CAST(N'2022-09-18T13:54:52.767' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (50, N'asd', CAST(N'2022-09-18T13:56:39.807' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (51, N'asd', CAST(N'2022-09-18T13:57:49.910' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (52, N'asd', CAST(N'2022-09-18T14:00:59.527' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (53, N'asd', CAST(N'2022-09-18T14:01:18.457' AS DateTime), 0, 0, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (54, N'asd', CAST(N'2022-09-18T14:01:54.300' AS DateTime), 0, 0, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (55, N'asd', CAST(N'2022-09-18T14:02:51.263' AS DateTime), 0, 0, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (56, N'Jose', CAST(N'2022-09-18T14:04:06.787' AS DateTime), 0, 0, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (57, N'Jose', CAST(N'2022-09-18T14:04:57.433' AS DateTime), 0, 0, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (58, N'Jose', CAST(N'2022-09-18T14:05:28.100' AS DateTime), 0, 0, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (59, N'agus', CAST(N'2022-09-18T14:06:22.407' AS DateTime), 0, 0, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (60, N'Jose', CAST(N'2022-09-18T14:07:18.257' AS DateTime), 0, 0, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (61, N'Jose', CAST(N'2022-09-18T14:10:21.927' AS DateTime), 0, 0, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (62, N'Jose', CAST(N'2022-09-18T14:10:50.193' AS DateTime), 0, 0, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (63, N'Jose', CAST(N'2022-09-18T14:13:58.403' AS DateTime), 0, 1, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (65, N'Jose', CAST(N'2022-09-18T14:14:19.100' AS DateTime), 0, 0, 1, 1)
INSERT [dbo].[Jugadores] ([IdJugador], [Nombre], [FechaHora], [Pozoganado], [ComodinDobleChance], [Comodin50], [ComodinSaltear]) VALUES (66, N'sergio', CAST(N'2022-09-18T14:25:08.807' AS DateTime), 0, 0, 1, 1)
SET IDENTITY_INSERT [dbo].[Jugadores] OFF
GO
INSERT [dbo].[Preguntas] ([idPregunta], [TextoPregunta], [NivelDificultad]) VALUES (1, N'En la mitología griega, ¿cuánto tiempo duró la gran titanomaquia?
', 2)
INSERT [dbo].[Preguntas] ([idPregunta], [TextoPregunta], [NivelDificultad]) VALUES (2, N'En la mitología nórdica ¿quiénes son los padres de Loki?
', 1)
INSERT [dbo].[Preguntas] ([idPregunta], [TextoPregunta], [NivelDificultad]) VALUES (3, N'En la mitología griega ¿Quién empuja una gigante roca hasta la cima de una montaña como castigo?
', 4)
INSERT [dbo].[Preguntas] ([idPregunta], [TextoPregunta], [NivelDificultad]) VALUES (4, N'En la mitología egipcia ¿Quién nació de repente en las aguas primigenias?
', 4)
INSERT [dbo].[Preguntas] ([idPregunta], [TextoPregunta], [NivelDificultad]) VALUES (5, N'En la mitología griega ¿quién es el encargado de cumplir los doce trabajos?
', 1)
INSERT [dbo].[Preguntas] ([idPregunta], [TextoPregunta], [NivelDificultad]) VALUES (6, N'En la mitología nórdica ¿que significaba el ragnarok?
', 3)
INSERT [dbo].[Preguntas] ([idPregunta], [TextoPregunta], [NivelDificultad]) VALUES (7, N'En la mitología egipcia, ¿Que dios anhela saber el nombre real de Ra?
', 3)
INSERT [dbo].[Preguntas] ([idPregunta], [TextoPregunta], [NivelDificultad]) VALUES (8, N'En la mitología griega ¿A quien ansía Zeus tomar como su séptima esposa?
', 2)
INSERT [dbo].[Preguntas] ([idPregunta], [TextoPregunta], [NivelDificultad]) VALUES (9, N'En la mitología nórdica ¿Que gigante roba el martillo de Thor (mjolnir)?
', 3)
INSERT [dbo].[Preguntas] ([idPregunta], [TextoPregunta], [NivelDificultad]) VALUES (10, N'En la mitología Inca ¿Quién es la diosa madre tierra?', 2)
INSERT [dbo].[Preguntas] ([idPregunta], [TextoPregunta], [NivelDificultad]) VALUES (11, N'En la mitología griega ¿A quien se considera diosa del matrimonio?', 1)
INSERT [dbo].[Preguntas] ([idPregunta], [TextoPregunta], [NivelDificultad]) VALUES (12, N'En la mitología egipcia ¿Cuál era la función de la serpiente Apofis?
', 3)
INSERT [dbo].[Preguntas] ([idPregunta], [TextoPregunta], [NivelDificultad]) VALUES (13, N'En la mitología nórdica ¿Cuál era el destino de Odin? 
', 4)
INSERT [dbo].[Preguntas] ([idPregunta], [TextoPregunta], [NivelDificultad]) VALUES (14, N'En la mitología griega ¿Quién era hijo de Zeus y Dánae?
', 2)
INSERT [dbo].[Preguntas] ([idPregunta], [TextoPregunta], [NivelDificultad]) VALUES (15, N'En la mitología egipcia ¿Quien asesina a Osiris?
', 2)
INSERT [dbo].[Preguntas] ([idPregunta], [TextoPregunta], [NivelDificultad]) VALUES (16, N'En la mitología griega ¿Quién fué el último gran enemigo de Zeus?
', 1)
GO
SET IDENTITY_INSERT [dbo].[Respuestas] ON 

INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (1, 1, N'A', N'3 meses', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (2, 1, N'B', N'5 años', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (3, 1, N'C', N'10 años', 1)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (4, 1, N'D', N'5 meses', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (5, 2, N'A', N'Laufey y Farbauti', 1)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (8, 2, N'B', N'Laufey y Odin', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (9, 2, N'C', N'Odín y Jörð', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (10, 2, N'D', N'Odín y Freya', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (11, 3, N'A', N'Aquiles', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (12, 3, N'B', N'Narciso', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (13, 3, N'C', N'Emile Zola', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (14, 3, N'D', N'Sisifo', 1)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (15, 4, N'A', N'Atum', 1)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (17, 4, N'B', N'Isis', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (18, 4, N'C', N'Osiris', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (19, 4, N'D', N'Thot', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (20, 5, N'A', N'Teseo', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (22, 5, N'B', N'Apolo', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (23, 5, N'C', N'Hércules ', 1)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (24, 5, N'D', N'Perseo', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (25, 6, N'A', N'La sabiduría infinita', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (26, 6, N'B', N'El eterno placer divino', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (27, 6, N'C', N'La batalla del fin del mundo', 1)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (28, 6, N'D', N'El nacimiento del dios supremo', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (29, 7, N'A', N'Osiris', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (30, 7, N'B', N'Anubis', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (31, 7, N'C', N'Menes', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (32, 7, N'D', N'Isis ', 1)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (33, 8, N'A', N'Metis', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (34, 8, N'B', N'Tetis', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (35, 8, N'C', N'Hera ', 1)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (36, 8, N'D', N'Demeter', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (37, 9, N'A', N'Thrym ', 1)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (38, 9, N'B', N'Ymir', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (39, 9, N'C', N'Bergelmir', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (40, 9, N'D', N'Buri', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (41, 10, N'A', N'Inti', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (42, 10, N'B', N'Quilca', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (43, 10, N'C', N'Pachamama ', 1)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (44, 10, N'D', N'Kon', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (45, 11, N'A', N'Demeter', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (46, 11, N'B', N'Hestia', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (47, 11, N'C', N'Hera ', 1)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (48, 11, N'D', N'Temis', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (49, 12, N'A', N'Interrumpir el recorrido de la barca solar de Ra', 1)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (50, 12, N'B', N'obtener el conocimiento del dios Thot', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (51, 12, N'C', N'Robarse los papiros sagrados de Seth', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (52, 12, N'D', N'Recuperar el veneno robado de Isis', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (53, 13, N'A', N'Morirá luchando contra Jormungandr', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (54, 13, N'B', N'Morirá intentando asesinar a heimdall', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (55, 13, N'C', N'Asesinara por accidente a Frey', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (56, 13, N'D', N'Será devorado por el lobo Fenrir', 1)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (57, 14, N'A', N'Teseo', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (58, 14, N'B', N'Hércules', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (59, 14, N'C', N'Perseo ', 1)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (60, 14, N'D', N'Orfeo', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (61, 15, N'A', N'Isis', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (62, 15, N'B', N'Seth ', 1)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (63, 15, N'C', N'Thot', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (64, 15, N'D', N'Horus', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (65, 16, N'A', N'Cronos', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (66, 16, N'B', N'Ares', 0)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (67, 16, N'C', N'Tifón ', 1)
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (69, 16, N'D', N'Jose', 0)
SET IDENTITY_INSERT [dbo].[Respuestas] OFF
GO
SET IDENTITY_INSERT [dbo].[Respuestas1] ON 

INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (1, 1, N'A         ', N'3 meses', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (2, 1, N'B         ', N'5 años', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (3, 1, N'C         ', N'10 años', 1)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (4, 1, N'D         ', N'5 meses', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (5, 2, N'A         ', N'Laufey y Farbauti', 1)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (8, 2, N'B         ', N'Laufey y Odin', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (9, 2, N'C         ', N'Odín y Jörð', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (10, 2, N'D         ', N'Odín y Freya', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (11, 3, N'A         ', N'Aquiles', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (12, 3, N'B         ', N'Narciso', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (13, 3, N'C         ', N'Emile Zola', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (14, 3, N'D         ', N'Sisifo', 1)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (15, 5, N'A         ', N'Atum', 1)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (17, 5, N'B         ', N'Isis', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (18, 5, N'C         ', N'Osiris', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (19, 5, N'D         ', N'Thot', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (20, 6, N'A         ', N'Teseo', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (22, 6, N'B         ', N'Apolo', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (23, 6, N'C         ', N'Hércules ', 1)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (24, 6, N'D         ', N'Perseo', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (25, 7, N'A         ', N'La sabiduría infinita', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (26, 7, N'B         ', N'El eterno placer divino', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (27, 7, N'C         ', N'La batalla del fin del mundo', 1)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (28, 7, N'D         ', N'El nacimiento del dios supremo', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (29, 8, N'A         ', N'Osiris', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (30, 8, N'B         ', N'Anubis', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (31, 8, N'C         ', N'Menes', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (32, 8, N'D         ', N'Isis ', 1)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (33, 9, N'A         ', N'Metis', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (34, 9, N'B         ', N'Tetis', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (35, 9, N'C         ', N'Hera ', 1)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (36, 9, N'D         ', N'Demeter', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (37, 10, N'A         ', N'Thrym ', 1)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (38, 10, N'B         ', N'Ymir', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (39, 10, N'C         ', N'Bergelmir', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (40, 10, N'D         ', N'Buri', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (41, 11, N'A         ', N'Inti', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (42, 11, N'B         ', N'Quilca', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (43, 11, N'C         ', N'Pachamama ', 1)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (44, 11, N'D         ', N'Kon', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (45, 12, N'A         ', N'Demeter', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (46, 12, N'B         ', N'Hestia', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (47, 12, N'C         ', N'Hera ', 1)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (48, 12, N'D         ', N'Temis', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (49, 13, N'A         ', N'Interrumpir el recorrido de la barca solar de Ra', 1)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (50, 13, N'B         ', N'obtener el conocimiento del dios Thot', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (51, 13, N'C         ', N'Robarse los papiros sagrados de Seth', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (52, 13, N'D         ', N'Recuperar el veneno robado de Isis', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (53, 14, N'A         ', N'Morirá luchando contra Jormungandr', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (54, 14, N'B         ', N'Morirá intentando asesinar a heimdall', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (55, 14, N'C         ', N'Asesinara por accidente a Frey', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (56, 14, N'D         ', N'Será devorado por el lobo Fenrir', 1)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (57, 15, N'A         ', N'Teseo', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (58, 15, N'B         ', N'Hércules', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (59, 15, N'C         ', N'Perseo ', 1)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (60, 15, N'D         ', N'Orfeo', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (61, 16, N'A         ', N'Isis', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (62, 16, N'B         ', N'Seth ', 1)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (63, 16, N'C         ', N'Thot', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (64, 16, N'D         ', N'Horus', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (65, 17, N'A         ', N'Cronos', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (66, 17, N'B         ', N'Ares', 0)
INSERT [dbo].[Respuestas1] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (67, 17, N'C         ', N'Tifón ', 1)
SET IDENTITY_INSERT [dbo].[Respuestas1] OFF
GO
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (1, 1, N'A         ', N'3 meses', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (2, 1, N'B         ', N'5 años
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (3, 1, N'C         ', N'10 años', 1)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (4, 1, N'D         ', N'5 meses
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (5, 2, N'A         ', N'Laufey y Farbauti', 1)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (8, 2, N'B         ', N'Laufey y Odin
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (9, 2, N'C         ', N'Odín y Jörð
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (10, 2, N'D         ', N'Odín y Freya
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (11, 3, N'A         ', N'Aquiles', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (12, 3, N'B         ', N'Narciso
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (13, 3, N'C         ', N'Emile Zola
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (14, 3, N'D         ', N'Sisifo', 1)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (15, 5, N'A         ', N'Atum', 1)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (17, 5, N'B         ', N'Isis', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (18, 5, N'C         ', N'Osiris', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (19, 5, N'D         ', N'Thot', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (20, 6, N'A         ', N'Teseo', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (22, 6, N'B         ', N'Apolo', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (23, 6, N'C         ', N'Hércules ', 1)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (24, 6, N'D         ', N'Perseo
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (25, 7, N'A         ', N'La sabiduría infinita
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (26, 7, N'B         ', N'El eterno placer divino
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (27, 7, N'C         ', N'La batalla del fin del mundo', 1)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (28, 7, N'D         ', N'El nacimiento del dios supremo
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (29, 8, N'A         ', N'Osiris', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (30, 8, N'B         ', N'Anubis', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (31, 8, N'C         ', N'Menes', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (32, 8, N'D         ', N'Isis ', 1)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (33, 9, N'A         ', N'Metis', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (34, 9, N'B         ', N'Tetis', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (35, 9, N'C         ', N'Hera ', 1)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (36, 9, N'D         ', N'Demeter
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (37, 10, N'A         ', N'Thrym ', 1)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (38, 10, N'B         ', N'Ymir', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (39, 10, N'C         ', N'Bergelmir', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (40, 10, N'D         ', N'Buri', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (41, 11, N'A         ', N'Inti', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (42, 11, N'B         ', N'Quilca', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (43, 11, N'C         ', N'Pachamama ', 1)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (44, 11, N'D         ', N'Kon', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (45, 12, N'A         ', N'Demeter', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (46, 12, N'B         ', N'Hestia', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (47, 12, N'C         ', N'Hera ', 1)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (48, 12, N'D         ', N'Temis', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (49, 13, N'A         ', N'Interrumpir el recorrido de la barca solar de Ra', 1)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (50, 13, N'B         ', N'obtener el conocimiento del dios Thot
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (51, 13, N'C         ', N'Robarse los papiros sagrados de Seth
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (52, 13, N'D         ', N'Recuperar el veneno robado de Isis
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (53, 14, N'A         ', N'Morirá luchando contra Jormungandr
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (54, 14, N'B         ', N'Morirá intentando asesinar a heimdall
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (55, 14, N'C         ', N'Asesinara por accidente a Frey
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (56, 14, N'D         ', N'Será devorado por el lobo Fenrir', 1)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (57, 15, N'A         ', N'Teseo', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (58, 15, N'B         ', N'Hércules', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (59, 15, N'C         ', N'Perseo ', 1)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (60, 15, N'D         ', N'Orfeo', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (61, 16, N'A         ', N'Isis', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (62, 16, N'B         ', N'Seth ', 1)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (63, 16, N'C         ', N'Thot', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (64, 16, N'D         ', N'Horus', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (65, 17, N'A         ', N'Cronos', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (66, 17, N'B         ', N'Ares
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (67, 17, N'C         ', N'Tifón ', 1)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (68, 16, N'D         ', N'Atlas
', 0)
GO
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (41, 11, N'A         ', N'Inti', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (42, 11, N'B         ', N'Quilca', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (43, 11, N'C         ', N'Pachamama ', 1)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (44, 11, N'D         ', N'Kon', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (45, 12, N'A         ', N'Demeter', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (46, 12, N'B         ', N'Hestia', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (47, 12, N'C         ', N'Hera ', 1)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (48, 12, N'D         ', N'Temis', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (49, 13, N'A         ', N'Interrumpir el recorrido de la barca solar de Ra', 1)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (50, 13, N'B         ', N'obtener el conocimiento del dios Thot
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (51, 13, N'C         ', N'Robarse los papiros sagrados de Seth
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (52, 13, N'D         ', N'Recuperar el veneno robado de Isis
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (53, 14, N'A         ', N'Morirá luchando contra Jormungandr
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (54, 14, N'B         ', N'Morirá intentando asesinar a heimdall
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (55, 14, N'C         ', N'Asesinara por accidente a Frey
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (56, 14, N'D         ', N'Será devorado por el lobo Fenrir', 1)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (57, 15, N'A         ', N'Teseo', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (58, 15, N'B         ', N'Hércules', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (59, 15, N'C         ', N'Perseo ', 1)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (60, 15, N'D         ', N'Orfeo', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (61, 16, N'A         ', N'Isis', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (62, 16, N'B         ', N'Seth ', 1)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (63, 16, N'C         ', N'Thot', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (64, 16, N'D         ', N'Horus', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (65, 17, N'A         ', N'Cronos', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (66, 17, N'B         ', N'Ares
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (67, 17, N'C         ', N'Tifón ', 1)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (68, 16, N'D         ', N'Atlas
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (1, 1, N'A         ', N'3 meses', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (2, 1, N'B         ', N'5 años
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (3, 1, N'C         ', N'10 años', 1)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (4, 1, N'D         ', N'5 meses
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (5, 2, N'A         ', N'Laufey y Farbauti', 1)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (8, 2, N'B         ', N'Laufey y Odin
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (9, 2, N'C         ', N'Odín y Jörð
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (10, 2, N'D         ', N'Odín y Freya
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (11, 3, N'A         ', N'Aquiles', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (12, 3, N'B         ', N'Narciso
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (13, 3, N'C         ', N'Emile Zola
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (14, 3, N'D         ', N'Sisifo', 1)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (15, 5, N'A         ', N'Atum', 1)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (17, 5, N'B         ', N'Isis', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (18, 5, N'C         ', N'Osiris', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (19, 5, N'D         ', N'Thot', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (20, 6, N'A         ', N'Teseo', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (22, 6, N'B         ', N'Apolo', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (23, 6, N'C         ', N'Hércules ', 1)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (24, 6, N'D         ', N'Perseo
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (25, 7, N'A         ', N'La sabiduría infinita
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (26, 7, N'B         ', N'El eterno placer divino
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (27, 7, N'C         ', N'La batalla del fin del mundo', 1)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (28, 7, N'D         ', N'El nacimiento del dios supremo
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (29, 8, N'A         ', N'Osiris', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (30, 8, N'B         ', N'Anubis', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (31, 8, N'C         ', N'Menes', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (32, 8, N'D         ', N'Isis ', 1)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (33, 9, N'A         ', N'Metis', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (34, 9, N'B         ', N'Tetis', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (35, 9, N'C         ', N'Hera ', 1)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (36, 9, N'D         ', N'Demeter
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (37, 10, N'A         ', N'Thrym ', 1)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (38, 10, N'B         ', N'Ymir', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (39, 10, N'C         ', N'Bergelmir', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (40, 10, N'D         ', N'Buri', 0)
GO
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (11, 3, N'A         ', N'Aquiles', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (12, 3, N'B         ', N'Narciso
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (13, 3, N'C         ', N'Emile Zola
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (14, 3, N'D         ', N'Sisifo', 1)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (15, 5, N'A         ', N'Atum', 1)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (17, 5, N'B         ', N'Isis', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (18, 5, N'C         ', N'Osiris', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (19, 5, N'D         ', N'Thot', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (20, 6, N'A         ', N'Teseo', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (22, 6, N'B         ', N'Apolo', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (23, 6, N'C         ', N'Hércules ', 1)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (24, 6, N'D         ', N'Perseo
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (25, 7, N'A         ', N'La sabiduría infinita
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (26, 7, N'B         ', N'El eterno placer divino
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (27, 7, N'C         ', N'La batalla del fin del mundo', 1)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (28, 7, N'D         ', N'El nacimiento del dios supremo
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (29, 8, N'A         ', N'Osiris', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (30, 8, N'B         ', N'Anubis', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (31, 8, N'C         ', N'Menes', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (32, 8, N'D         ', N'Isis ', 1)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (33, 9, N'A         ', N'Metis', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (34, 9, N'B         ', N'Tetis', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (35, 9, N'C         ', N'Hera ', 1)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (36, 9, N'D         ', N'Demeter
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (37, 10, N'A         ', N'Thrym ', 1)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (38, 10, N'B         ', N'Ymir', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (39, 10, N'C         ', N'Bergelmir', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (40, 10, N'D         ', N'Buri', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (41, 11, N'A         ', N'Inti', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (42, 11, N'B         ', N'Quilca', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (43, 11, N'C         ', N'Pachamama ', 1)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (44, 11, N'D         ', N'Kon', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (45, 12, N'A         ', N'Demeter', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (46, 12, N'B         ', N'Hestia', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (47, 12, N'C         ', N'Hera ', 1)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (48, 12, N'D         ', N'Temis', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (49, 13, N'A         ', N'Interrumpir el recorrido de la barca solar de Ra', 1)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (50, 13, N'B         ', N'obtener el conocimiento del dios Thot
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (51, 13, N'C         ', N'Robarse los papiros sagrados de Seth
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (52, 13, N'D         ', N'Recuperar el veneno robado de Isis
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (53, 14, N'A         ', N'Morirá luchando contra Jormungandr
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (54, 14, N'B         ', N'Morirá intentando asesinar a heimdall
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (55, 14, N'C         ', N'Asesinara por accidente a Frey
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (56, 14, N'D         ', N'Será devorado por el lobo Fenrir', 1)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (57, 15, N'A         ', N'Teseo', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (58, 15, N'B         ', N'Hércules', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (59, 15, N'C         ', N'Perseo ', 1)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (60, 15, N'D         ', N'Orfeo', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (61, 16, N'A         ', N'Isis', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (62, 16, N'B         ', N'Seth ', 1)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (63, 16, N'C         ', N'Thot', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (64, 16, N'D         ', N'Horus', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (65, 17, N'A         ', N'Cronos', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (66, 17, N'B         ', N'Ares
', 0)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (67, 17, N'C         ', N'Tifón ', 1)
INSERT [dbo].[RespuestasAnterior] ([idRespuesta], [idPregunta], [OpcionRespuesta], [TextoRespuesta], [correcta]) VALUES (68, 16, N'D         ', N'Atlas
', 0)
GO
USE [master]
GO
ALTER DATABASE [JuegoQQSM] SET  READ_WRITE 
GO
