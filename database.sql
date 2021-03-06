USE [master]
GO
/****** Object:  Database [Laundry4]    Script Date: 24/03/2022 21:06:10 ******/
CREATE DATABASE [Laundry4]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Laundry4', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Laundry4.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Laundry4_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Laundry4_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Laundry4] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Laundry4].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Laundry4] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Laundry4] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Laundry4] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Laundry4] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Laundry4] SET ARITHABORT OFF 
GO
ALTER DATABASE [Laundry4] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Laundry4] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Laundry4] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Laundry4] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Laundry4] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Laundry4] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Laundry4] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Laundry4] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Laundry4] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Laundry4] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Laundry4] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Laundry4] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Laundry4] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Laundry4] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Laundry4] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Laundry4] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Laundry4] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Laundry4] SET RECOVERY FULL 
GO
ALTER DATABASE [Laundry4] SET  MULTI_USER 
GO
ALTER DATABASE [Laundry4] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Laundry4] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Laundry4] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Laundry4] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Laundry4] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Laundry4] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Laundry4] SET QUERY_STORE = OFF
GO
USE [Laundry4]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 24/03/2022 21:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category$]    Script Date: 24/03/2022 21:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category$](
	[ID] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 24/03/2022 21:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Phonenumber] [varchar](12) NOT NULL,
	[Address] [varchar](200) NOT NULL,
	[Email] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer$]    Script Date: 24/03/2022 21:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer$](
	[Id] [float] NULL,
	[Name] [nvarchar](255) NULL,
	[Phonenumber] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[Password] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detaildeposit]    Script Date: 24/03/2022 21:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detaildeposit](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Idheader] [int] NOT NULL,
	[IdService] [int] NOT NULL,
	[Idprepaid] [int] NULL,
	[Price] [int] NOT NULL,
	[Totalunit] [float] NOT NULL,
	[Completedatetime] [datetime] NULL,
 CONSTRAINT [PK_Detaildeposit] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detaildeposit$]    Script Date: 24/03/2022 21:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detaildeposit$](
	[Id] [float] NULL,
	[Idheader] [float] NULL,
	[IdService] [float] NULL,
	[Idprepaid] [nvarchar](255) NULL,
	[Price] [float] NULL,
	[Totalunit] [float] NULL,
	[Completedatetime] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 24/03/2022 21:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Idjob] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Email] [varchar](50) NULL,
	[Password] [varchar](50) NOT NULL,
	[Address] [varchar](200) NOT NULL,
	[Phonenumber] [varchar](12) NOT NULL,
	[Dateofbirth] [datetime] NOT NULL,
	[Salary] [money] NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee$]    Script Date: 24/03/2022 21:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee$](
	[ID] [float] NULL,
	[Idjob] [float] NULL,
	[Name] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[Password] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[Phonenumber] [nvarchar](255) NULL,
	[Dateofbirth] [datetime] NULL,
	[Salary] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Headerdeposit]    Script Date: 24/03/2022 21:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Headerdeposit](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Idcustomer] [int] NOT NULL,
	[Idemployee] [int] NOT NULL,
	[Transactiondatetime] [datetime] NOT NULL,
	[Completeestimation] [datetime] NULL,
	[Coba] [nvarchar](max) NULL,
 CONSTRAINT [PK_Headerdeposit] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Headerdeposit$]    Script Date: 24/03/2022 21:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Headerdeposit$](
	[Id] [float] NULL,
	[Idcustomer] [float] NULL,
	[Idemployee] [float] NULL,
	[Transactiondatetime] [datetime] NULL,
	[Completeestimation] [datetime] NULL,
	[Coba] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Job]    Script Date: 24/03/2022 21:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Job](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Job] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Job$]    Script Date: 24/03/2022 21:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Job$](
	[Id] [float] NULL,
	[Name] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Package]    Script Date: 24/03/2022 21:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Package](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Idservice] [int] NOT NULL,
	[Totalunit] [int] NOT NULL,
	[Price] [int] NOT NULL,
 CONSTRAINT [PK_Package] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Package$]    Script Date: 24/03/2022 21:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Package$](
	[Id] [float] NULL,
	[Name] [nvarchar](255) NULL,
	[Idservice] [float] NULL,
	[Totalunit] [float] NULL,
	[Price] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prepaidpackage]    Script Date: 24/03/2022 21:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prepaidpackage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Idcustomer] [int] NOT NULL,
	[Idpackage] [int] NOT NULL,
	[Startdatetime] [datetime] NOT NULL,
	[Completedatetime] [datetime] NULL,
 CONSTRAINT [PK_Prepaidpackage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prepaidpackage$]    Script Date: 24/03/2022 21:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prepaidpackage$](
	[Id] [float] NULL,
	[Idcustomer] [float] NULL,
	[Idpackage] [float] NULL,
	[Startdatetime] [datetime] NULL,
	[Completedatetime] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 24/03/2022 21:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Idunit] [int] NOT NULL,
	[Idcategory] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Price] [int] NOT NULL,
	[Estimationduration] [int] NOT NULL,
	[Stock] [int] NOT NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service$]    Script Date: 24/03/2022 21:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service$](
	[Id] [float] NULL,
	[Idunit] [float] NULL,
	[Idcategory] [float] NULL,
	[Name] [nvarchar](255) NULL,
	[Price] [float] NULL,
	[Estimationduration] [float] NULL,
	[Stock] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unit]    Script Date: 24/03/2022 21:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Unit] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unit$]    Script Date: 24/03/2022 21:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit$](
	[Id] [float] NULL,
	[Name] [nvarchar](255) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Headerdeposit] ADD  CONSTRAINT [DF_Headerdeposit_Completeestimation]  DEFAULT ((0)) FOR [Completeestimation]
GO
ALTER TABLE [dbo].[Detaildeposit]  WITH CHECK ADD  CONSTRAINT [FK_Detaildeposit_Headerdeposit] FOREIGN KEY([Idheader])
REFERENCES [dbo].[Headerdeposit] ([ID])
GO
ALTER TABLE [dbo].[Detaildeposit] CHECK CONSTRAINT [FK_Detaildeposit_Headerdeposit]
GO
ALTER TABLE [dbo].[Detaildeposit]  WITH CHECK ADD  CONSTRAINT [FK_Detaildeposit_Service] FOREIGN KEY([IdService])
REFERENCES [dbo].[Service] ([ID])
GO
ALTER TABLE [dbo].[Detaildeposit] CHECK CONSTRAINT [FK_Detaildeposit_Service]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Job] FOREIGN KEY([Idjob])
REFERENCES [dbo].[Job] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Job]
GO
ALTER TABLE [dbo].[Headerdeposit]  WITH CHECK ADD  CONSTRAINT [FK_Headerdeposit_Customer] FOREIGN KEY([Idcustomer])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Headerdeposit] CHECK CONSTRAINT [FK_Headerdeposit_Customer]
GO
ALTER TABLE [dbo].[Headerdeposit]  WITH CHECK ADD  CONSTRAINT [FK_Headerdeposit_Employee] FOREIGN KEY([Idemployee])
REFERENCES [dbo].[Employee] ([ID])
GO
ALTER TABLE [dbo].[Headerdeposit] CHECK CONSTRAINT [FK_Headerdeposit_Employee]
GO
ALTER TABLE [dbo].[Package]  WITH CHECK ADD  CONSTRAINT [FK_Package_Service] FOREIGN KEY([Idservice])
REFERENCES [dbo].[Service] ([ID])
GO
ALTER TABLE [dbo].[Package] CHECK CONSTRAINT [FK_Package_Service]
GO
ALTER TABLE [dbo].[Prepaidpackage]  WITH CHECK ADD  CONSTRAINT [FK_Prepaidpackage_Customer] FOREIGN KEY([Idcustomer])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Prepaidpackage] CHECK CONSTRAINT [FK_Prepaidpackage_Customer]
GO
ALTER TABLE [dbo].[Prepaidpackage]  WITH CHECK ADD  CONSTRAINT [FK_Prepaidpackage_Package] FOREIGN KEY([Idpackage])
REFERENCES [dbo].[Package] ([ID])
GO
ALTER TABLE [dbo].[Prepaidpackage] CHECK CONSTRAINT [FK_Prepaidpackage_Package]
GO
ALTER TABLE [dbo].[Service]  WITH CHECK ADD  CONSTRAINT [FK_Service_Category] FOREIGN KEY([Idcategory])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Service] CHECK CONSTRAINT [FK_Service_Category]
GO
ALTER TABLE [dbo].[Service]  WITH CHECK ADD  CONSTRAINT [FK_Service_Unit] FOREIGN KEY([Idunit])
REFERENCES [dbo].[Unit] ([ID])
GO
ALTER TABLE [dbo].[Service] CHECK CONSTRAINT [FK_Service_Unit]
GO
USE [master]
GO
ALTER DATABASE [Laundry4] SET  READ_WRITE 
GO
