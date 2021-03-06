USE [master]
GO
/****** Object:  Database [Yacht]    Script Date: 04.12.2021 19:44:27 ******/
CREATE DATABASE [Yacht]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Yacht', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\Yacht.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Yacht_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\Yacht_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Yacht] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Yacht].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Yacht] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Yacht] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Yacht] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Yacht] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Yacht] SET ARITHABORT OFF 
GO
ALTER DATABASE [Yacht] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Yacht] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Yacht] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Yacht] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Yacht] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Yacht] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Yacht] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Yacht] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Yacht] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Yacht] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Yacht] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Yacht] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Yacht] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Yacht] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Yacht] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Yacht] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Yacht] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Yacht] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Yacht] SET  MULTI_USER 
GO
ALTER DATABASE [Yacht] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Yacht] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Yacht] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Yacht] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Yacht] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Yacht] SET QUERY_STORE = OFF
GO
USE [Yacht]
GO
/****** Object:  Table [dbo].[Accessory$]    Script Date: 04.12.2021 19:44:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessory$](
	[Accessory_ID] [float] NULL,
	[AccName] [nvarchar](255) NULL,
	[DescriptionOfAccessory] [nvarchar](255) NULL,
	[Price] [float] NULL,
	[VAT] [float] NULL,
	[Inventory] [float] NULL,
	[OrderLevel] [float] NULL,
	[OrderBatch] [float] NULL,
	[Partner_ID] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccToBoats$]    Script Date: 04.12.2021 19:44:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccToBoats$](
	[Fit_ID] [float] NULL,
	[Accessory_ID] [float] NULL,
	[Boat_ID] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Boat$]    Script Date: 04.12.2021 19:44:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Boat$](
	[boat_ID] [nvarchar](255) NULL,
	[Model] [nvarchar](255) NULL,
	[BoatType] [nvarchar](255) NULL,
	[NumberOfRowers] [nvarchar](255) NULL,
	[Mast] [nvarchar](255) NULL,
	[Colour] [nvarchar](255) NULL,
	[Wood] [nvarchar](255) NULL,
	[BasePrice] [nvarchar](255) NULL,
	[VAT] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact$]    Script Date: 04.12.2021 19:44:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact$](
	[Contract_ID] [nvarchar](255) NULL,
	[Date] [nvarchar](255) NULL,
	[DepositPayed] [nvarchar](255) NULL,
	[Order_ID] [nvarchar](255) NULL,
	[ContractTotalPrice] [nvarchar](255) NULL,
	[ContracTotalPrice_inclVAT] [nvarchar](255) NULL,
	[ProductionProcess] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer$]    Script Date: 04.12.2021 19:44:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer$](
	[Customer_ID] [nvarchar](255) NULL,
	[FistName] [nvarchar](255) NULL,
	[FamilyName] [nvarchar](255) NULL,
	[DateOfBirth] [nvarchar](255) NULL,
	[OrganisationName] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[Phone] [nvarchar](255) NULL,
	[IDNumber] [nvarchar](255) NULL,
	[IDDocumentName] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoice$]    Script Date: 04.12.2021 19:44:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice$](
	[Invoice_ID] [nvarchar](255) NULL,
	[Contract_ID] [nvarchar](255) NULL,
	[Settled] [nvarchar](255) NULL,
	[Sum] [float] NULL,
	[Sum_inclVAT] [float] NULL,
	[Date] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order1$]    Script Date: 04.12.2021 19:44:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order1$](
	[Order_ID] [nvarchar](255) NULL,
	[Date] [nvarchar](255) NULL,
	[Salesperson_ID] [nvarchar](255) NULL,
	[Customer_ID] [nvarchar](255) NULL,
	[Boat_ID] [nvarchar](255) NULL,
	[DeliveryAddress] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails$]    Script Date: 04.12.2021 19:44:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails$](
	[Detail_ID] [nvarchar](255) NULL,
	[Accessory_ID] [nvarchar](255) NULL,
	[Order_ID] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partner$]    Script Date: 04.12.2021 19:44:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partner$](
	[Столбец1] [nvarchar](255) NULL,
	[Столбец2] [nvarchar](255) NULL,
	[Столбец3] [nvarchar](255) NULL,
	[Столбец4] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesPerson$]    Script Date: 04.12.2021 19:44:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesPerson$](
	[SalesPerson_ID] [nvarchar](255) NULL,
	[FirstName] [nvarchar](255) NULL,
	[FamilyName] [nvarchar](255) NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Yacht] SET  READ_WRITE 
GO
