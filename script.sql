USE [master]
GO
/****** Object:  Database [Application-d-change]    Script Date: 10/01/2021 15:23:12 ******/
CREATE DATABASE [Application-d-change]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Application-d-change', FILENAME = N'C:\Users\Youcode\Application-d-change.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Application-d-change_log', FILENAME = N'C:\Users\Youcode\Application-d-change_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Application-d-change] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Application-d-change].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Application-d-change] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Application-d-change] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Application-d-change] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Application-d-change] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Application-d-change] SET ARITHABORT OFF 
GO
ALTER DATABASE [Application-d-change] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Application-d-change] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Application-d-change] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Application-d-change] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Application-d-change] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Application-d-change] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Application-d-change] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Application-d-change] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Application-d-change] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Application-d-change] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Application-d-change] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Application-d-change] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Application-d-change] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Application-d-change] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Application-d-change] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Application-d-change] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Application-d-change] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Application-d-change] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Application-d-change] SET  MULTI_USER 
GO
ALTER DATABASE [Application-d-change] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Application-d-change] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Application-d-change] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Application-d-change] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Application-d-change] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Application-d-change] SET QUERY_STORE = OFF
GO
USE [Application-d-change]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Application-d-change]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 10/01/2021 15:23:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[id] [int] NOT NULL,
	[Nom] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[choix]    Script Date: 10/01/2021 15:23:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[choix](
	[id] [int] NOT NULL,
 CONSTRAINT [PK_choix] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[évaluer]    Script Date: 10/01/2021 15:23:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[évaluer](
	[id] [int] NOT NULL,
 CONSTRAINT [PK_évaluer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Note]    Script Date: 10/01/2021 15:23:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Note](
	[id] [int] NOT NULL,
	[vote] [nchar](10) NULL,
 CONSTRAINT [PK_Note] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[question]    Script Date: 10/01/2021 15:23:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[question](
	[id] [int] NOT NULL,
	[Introduction] [varchar](max) NOT NULL,
	[Description] [varchar](max) NOT NULL,
	[Formulation] [varchar](max) NOT NULL,
	[les tags] [varchar](max) NOT NULL,
 CONSTRAINT [PK_question] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Questionneur]    Script Date: 10/01/2021 15:23:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questionneur](
	[id] [int] NOT NULL,
	[Nom] [varchar](max) NULL,
 CONSTRAINT [PK_Questionneur] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[remboursements]    Script Date: 10/01/2021 15:23:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[remboursements](
	[id] [int] NOT NULL,
	[Cas 100%] [nchar](10) NOT NULL,
	[Cas 75%] [nchar](10) NOT NULL,
	[Cas 50%] [nchar](10) NOT NULL,
	[Cas 0%] [nchar](10) NOT NULL,
 CONSTRAINT [PK_remboursements] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Répondant]    Script Date: 10/01/2021 15:23:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Répondant](
	[id] [int] NOT NULL,
	[Nom] [varchar](max) NOT NULL,
	[Tag] [varchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[réponse]    Script Date: 10/01/2021 15:23:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[réponse](
	[id] [int] NOT NULL,
 CONSTRAINT [PK_réponse] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 10/01/2021 15:23:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[id] [int] NOT NULL,
	[Nom] [varchar](max) NOT NULL,
	[email] [varchar](max) NOT NULL,
	[password] [varchar](max) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Application-d-change] SET  READ_WRITE 
GO
