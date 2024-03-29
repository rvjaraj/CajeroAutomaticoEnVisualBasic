USE [master]
GO
/****** Object:  Database [Diaz_Gutierrez_Coop]    Script Date: 21/12/2019 17:07:22 ******/
CREATE DATABASE [Diaz_Gutierrez_Coop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Diaz_Gutierrez_Coop', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Diaz_Gutierrez_Coop.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Diaz_Gutierrez_Coop_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Diaz_Gutierrez_Coop_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Diaz_Gutierrez_Coop] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Diaz_Gutierrez_Coop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Diaz_Gutierrez_Coop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Diaz_Gutierrez_Coop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Diaz_Gutierrez_Coop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Diaz_Gutierrez_Coop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Diaz_Gutierrez_Coop] SET ARITHABORT OFF 
GO
ALTER DATABASE [Diaz_Gutierrez_Coop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Diaz_Gutierrez_Coop] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Diaz_Gutierrez_Coop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Diaz_Gutierrez_Coop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Diaz_Gutierrez_Coop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Diaz_Gutierrez_Coop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Diaz_Gutierrez_Coop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Diaz_Gutierrez_Coop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Diaz_Gutierrez_Coop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Diaz_Gutierrez_Coop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Diaz_Gutierrez_Coop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Diaz_Gutierrez_Coop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Diaz_Gutierrez_Coop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Diaz_Gutierrez_Coop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Diaz_Gutierrez_Coop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Diaz_Gutierrez_Coop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Diaz_Gutierrez_Coop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Diaz_Gutierrez_Coop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Diaz_Gutierrez_Coop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Diaz_Gutierrez_Coop] SET  MULTI_USER 
GO
ALTER DATABASE [Diaz_Gutierrez_Coop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Diaz_Gutierrez_Coop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Diaz_Gutierrez_Coop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Diaz_Gutierrez_Coop] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Diaz_Gutierrez_Coop]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 21/12/2019 17:07:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clientes](
	[cli_num_cuenta] [numeric](18, 0) NOT NULL,
	[cli_cedula] [varchar](50) NOT NULL,
	[cli_nombre] [varchar](50) NOT NULL,
	[cli_apellido] [varchar](50) NOT NULL,
	[cli_direccion] [varchar](50) NOT NULL,
	[cli_celular] [varchar](50) NOT NULL,
	[cli_contrasenia] [varchar](50) NOT NULL,
	[cli_saldo] [numeric](18, 0) NOT NULL,
	[cli_tic_codigo_tipo] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[cli_num_cuenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Movimientos]    Script Date: 21/12/2019 17:07:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Movimientos](
	[mov_num_registro] [numeric](18, 0) NOT NULL,
	[mov_fecha] [date] NOT NULL,
	[mov_tipo_movimiento] [varchar](50) NOT NULL,
	[mov_cantidad] [numeric](18, 2) NOT NULL,
	[mov_num_documento] [varchar](50) NOT NULL,
	[mov_cli_num_cuenta] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_Movimientos] PRIMARY KEY CLUSTERED 
(
	[mov_num_registro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pagos_Prestamo]    Script Date: 21/12/2019 17:07:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pagos_Prestamo](
	[pagpre_num_pago] [numeric](18, 0) NOT NULL,
	[pagpre_fecha] [date] NOT NULL,
	[pagpre_pre_num_prestamos] [numeric](18, 0) NOT NULL,
	[pagpre_cantidad] [numeric](18, 2) NOT NULL,
 CONSTRAINT [PK_Pagos_Prestamo] PRIMARY KEY CLUSTERED 
(
	[pagpre_num_pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Prestamos]    Script Date: 21/12/2019 17:07:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Prestamos](
	[pre_num_prestamos] [numeric](18, 0) NOT NULL,
	[pre_monto] [numeric](18, 0) NOT NULL,
	[pre_fecha_inicio] [date] NOT NULL,
	[pre_fecha_fin] [date] NOT NULL,
	[pre_estado] [varchar](50) NOT NULL,
	[pre_numero_pagos] [int] NOT NULL,
	[pre_interes] [numeric](18, 2) NOT NULL,
	[pre_cli_num_cuenta] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_Prestamos] PRIMARY KEY CLUSTERED 
(
	[pre_num_prestamos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Servicios]    Script Date: 21/12/2019 17:07:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Servicios](
	[ser_codigo_servicio] [numeric](18, 0) NOT NULL,
	[ser_tipo_servicio] [varchar](50) NOT NULL,
	[ser_clave_servicio] [varchar](50) NOT NULL,
	[ser_cli_num_cuenta] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_Servicios] PRIMARY KEY CLUSTERED 
(
	[ser_codigo_servicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tipos_Cuentas]    Script Date: 21/12/2019 17:07:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tipos_Cuentas](
	[tic_codigo_tipo] [numeric](18, 0) NOT NULL,
	[tic_tipo_cuenta] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tipos_Cuentas] PRIMARY KEY CLUSTERED 
(
	[tic_codigo_tipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_Tipos_Cuentas] FOREIGN KEY([cli_tic_codigo_tipo])
REFERENCES [dbo].[Tipos_Cuentas] ([tic_codigo_tipo])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_Tipos_Cuentas]
GO
ALTER TABLE [dbo].[Movimientos]  WITH CHECK ADD  CONSTRAINT [FK_Movimientos_Clientes] FOREIGN KEY([mov_cli_num_cuenta])
REFERENCES [dbo].[Clientes] ([cli_num_cuenta])
GO
ALTER TABLE [dbo].[Movimientos] CHECK CONSTRAINT [FK_Movimientos_Clientes]
GO
ALTER TABLE [dbo].[Pagos_Prestamo]  WITH CHECK ADD  CONSTRAINT [FK_Pagos_Prestamo_Prestamos] FOREIGN KEY([pagpre_pre_num_prestamos])
REFERENCES [dbo].[Prestamos] ([pre_num_prestamos])
GO
ALTER TABLE [dbo].[Pagos_Prestamo] CHECK CONSTRAINT [FK_Pagos_Prestamo_Prestamos]
GO
ALTER TABLE [dbo].[Prestamos]  WITH CHECK ADD  CONSTRAINT [FK_Prestamos_Clientes] FOREIGN KEY([pre_cli_num_cuenta])
REFERENCES [dbo].[Clientes] ([cli_num_cuenta])
GO
ALTER TABLE [dbo].[Prestamos] CHECK CONSTRAINT [FK_Prestamos_Clientes]
GO
ALTER TABLE [dbo].[Servicios]  WITH CHECK ADD  CONSTRAINT [FK_Servicios_Clientes] FOREIGN KEY([ser_cli_num_cuenta])
REFERENCES [dbo].[Clientes] ([cli_num_cuenta])
GO
ALTER TABLE [dbo].[Servicios] CHECK CONSTRAINT [FK_Servicios_Clientes]
GO
USE [master]
GO
ALTER DATABASE [Diaz_Gutierrez_Coop] SET  READ_WRITE 
GO
