USE [master]
GO
/****** Object:  Database [Servicios_Diaz_Gutierrez]    Script Date: 21/12/2019 17:06:24 ******/
CREATE DATABASE [Servicios_Diaz_Gutierrez]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Diaz_Orlando_Coop', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Diaz_Orlando_Coop.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Diaz_Orlando_Coop_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Diaz_Orlando_Coop_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Servicios_Diaz_Gutierrez] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Servicios_Diaz_Gutierrez].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Servicios_Diaz_Gutierrez] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Servicios_Diaz_Gutierrez] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Servicios_Diaz_Gutierrez] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Servicios_Diaz_Gutierrez] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Servicios_Diaz_Gutierrez] SET ARITHABORT OFF 
GO
ALTER DATABASE [Servicios_Diaz_Gutierrez] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Servicios_Diaz_Gutierrez] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Servicios_Diaz_Gutierrez] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Servicios_Diaz_Gutierrez] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Servicios_Diaz_Gutierrez] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Servicios_Diaz_Gutierrez] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Servicios_Diaz_Gutierrez] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Servicios_Diaz_Gutierrez] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Servicios_Diaz_Gutierrez] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Servicios_Diaz_Gutierrez] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Servicios_Diaz_Gutierrez] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Servicios_Diaz_Gutierrez] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Servicios_Diaz_Gutierrez] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Servicios_Diaz_Gutierrez] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Servicios_Diaz_Gutierrez] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Servicios_Diaz_Gutierrez] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Servicios_Diaz_Gutierrez] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Servicios_Diaz_Gutierrez] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Servicios_Diaz_Gutierrez] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Servicios_Diaz_Gutierrez] SET  MULTI_USER 
GO
ALTER DATABASE [Servicios_Diaz_Gutierrez] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Servicios_Diaz_Gutierrez] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Servicios_Diaz_Gutierrez] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Servicios_Diaz_Gutierrez] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Servicios_Diaz_Gutierrez]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 21/12/2019 17:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clientes](
	[cli_cedula] [varchar](50) NOT NULL,
	[cli_nombre] [varchar](50) NOT NULL,
	[cli_apellido] [varchar](50) NOT NULL,
	[cli_direccion] [varchar](50) NOT NULL,
	[cli_celular] [varchar](50) NOT NULL,
	[cli_telefono] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[cli_cedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EEASA]    Script Date: 21/12/2019 17:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EEASA](
	[eea_num_medidor] [numeric](18, 0) NOT NULL,
	[eea_tipo_medidor] [varchar](50) NOT NULL,
	[eea_valor_kwh] [varchar](50) NOT NULL,
	[eea_cli_cedula] [varchar](50) NOT NULL,
 CONSTRAINT [PK_EEASA] PRIMARY KEY CLUSTERED 
(
	[eea_num_medidor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMAPA]    Script Date: 21/12/2019 17:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMAPA](
	[emp_num_medidos] [numeric](18, 0) NOT NULL,
	[emp_tipo_medidor] [varchar](50) NOT NULL,
	[emp_valor_m3] [numeric](18, 0) NOT NULL,
	[emp_cli_cedula] [varchar](50) NOT NULL,
 CONSTRAINT [PK_EMAPA] PRIMARY KEY CLUSTERED 
(
	[emp_num_medidos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pagos_Eeasa]    Script Date: 21/12/2019 17:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pagos_Eeasa](
	[pag_eea_num_pago] [numeric](18, 0) NOT NULL,
	[pag_eea_fecha] [date] NOT NULL,
	[pag_eea_consumo] [varchar](50) NOT NULL,
	[pag_eea_estado] [varchar](50) NOT NULL,
	[pag_eea_num_medidor] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_Pagos_Eeasa] PRIMARY KEY CLUSTERED 
(
	[pag_eea_num_pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pagos_Emapa]    Script Date: 21/12/2019 17:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pagos_Emapa](
	[pag_ema_num_pago] [numeric](18, 0) NOT NULL,
	[pag_ema_fecha] [date] NOT NULL,
	[pag_ema_consumo] [varchar](50) NOT NULL,
	[pag_ema_estado] [varchar](50) NOT NULL,
	[pag_ema_num_medidor] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_Pagos_Emapa] PRIMARY KEY CLUSTERED 
(
	[pag_ema_num_pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[EEASA]  WITH CHECK ADD  CONSTRAINT [FK_EEASA_Clientes] FOREIGN KEY([eea_cli_cedula])
REFERENCES [dbo].[Clientes] ([cli_cedula])
GO
ALTER TABLE [dbo].[EEASA] CHECK CONSTRAINT [FK_EEASA_Clientes]
GO
ALTER TABLE [dbo].[EMAPA]  WITH CHECK ADD  CONSTRAINT [FK_EMAPA_Clientes] FOREIGN KEY([emp_cli_cedula])
REFERENCES [dbo].[Clientes] ([cli_cedula])
GO
ALTER TABLE [dbo].[EMAPA] CHECK CONSTRAINT [FK_EMAPA_Clientes]
GO
ALTER TABLE [dbo].[Pagos_Eeasa]  WITH CHECK ADD  CONSTRAINT [FK_Pagos_Eeasa_EEASA] FOREIGN KEY([pag_eea_num_medidor])
REFERENCES [dbo].[EEASA] ([eea_num_medidor])
GO
ALTER TABLE [dbo].[Pagos_Eeasa] CHECK CONSTRAINT [FK_Pagos_Eeasa_EEASA]
GO
ALTER TABLE [dbo].[Pagos_Emapa]  WITH CHECK ADD  CONSTRAINT [FK_Pagos_Emapa_EMAPA] FOREIGN KEY([pag_ema_num_medidor])
REFERENCES [dbo].[EMAPA] ([emp_num_medidos])
GO
ALTER TABLE [dbo].[Pagos_Emapa] CHECK CONSTRAINT [FK_Pagos_Emapa_EMAPA]
GO
USE [master]
GO
ALTER DATABASE [Servicios_Diaz_Gutierrez] SET  READ_WRITE 
GO
