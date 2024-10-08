USE [master]
GO

/****** Object:  Database [MoM]    Script Date: 20-07-2024 17:29:09 ******/
CREATE DATABASE [MoM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MoM', FILENAME = N'C:\Users\dell\MoM.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MoM_log', FILENAME = N'C:\Users\dell\MoM_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MoM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [MoM] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [MoM] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [MoM] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [MoM] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [MoM] SET ARITHABORT OFF 
GO

ALTER DATABASE [MoM] SET AUTO_CLOSE ON 
GO

ALTER DATABASE [MoM] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [MoM] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [MoM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [MoM] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [MoM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [MoM] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [MoM] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [MoM] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [MoM] SET  ENABLE_BROKER 
GO

ALTER DATABASE [MoM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [MoM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [MoM] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [MoM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [MoM] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [MoM] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [MoM] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [MoM] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [MoM] SET  MULTI_USER 
GO

ALTER DATABASE [MoM] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [MoM] SET DB_CHAINING OFF 
GO

ALTER DATABASE [MoM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [MoM] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [MoM] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [MoM] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [MoM] SET QUERY_STORE = OFF
GO

ALTER DATABASE [MoM] SET  READ_WRITE 
GO


