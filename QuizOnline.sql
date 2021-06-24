USE [master]
GO
/****** Object:  Database [onlineQuiz]    Script Date: 6/9/2021 9:54:27 AM ******/
CREATE DATABASE [onlineQuiz]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'onlineQuiz', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\onlineQuiz.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'onlineQuiz_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\onlineQuiz_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [onlineQuiz] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [onlineQuiz].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [onlineQuiz] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [onlineQuiz] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [onlineQuiz] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [onlineQuiz] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [onlineQuiz] SET ARITHABORT OFF 
GO
ALTER DATABASE [onlineQuiz] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [onlineQuiz] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [onlineQuiz] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [onlineQuiz] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [onlineQuiz] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [onlineQuiz] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [onlineQuiz] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [onlineQuiz] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [onlineQuiz] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [onlineQuiz] SET  ENABLE_BROKER 
GO
ALTER DATABASE [onlineQuiz] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [onlineQuiz] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [onlineQuiz] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [onlineQuiz] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [onlineQuiz] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [onlineQuiz] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [onlineQuiz] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [onlineQuiz] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [onlineQuiz] SET  MULTI_USER 
GO
ALTER DATABASE [onlineQuiz] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [onlineQuiz] SET DB_CHAINING OFF 
GO
ALTER DATABASE [onlineQuiz] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [onlineQuiz] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [onlineQuiz] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [onlineQuiz] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [onlineQuiz] SET QUERY_STORE = OFF
GO
USE [onlineQuiz]
GO
/****** Object:  Table [dbo].[history]    Script Date: 6/9/2021 9:54:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[history](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userID] [int] NOT NULL,
	[point] [float] NOT NULL,
	[date] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 6/9/2021 9:54:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[answer] [nvarchar](50) NULL,
	[date] [date] NULL,
	[opt1] [nvarchar](max) NULL,
	[opt2] [nvarchar](max) NULL,
	[opt3] [nvarchar](max) NULL,
	[opt4] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 6/9/2021 9:54:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[userName] [nvarchar](50) NOT NULL,
	[passWord] [nvarchar](50) NOT NULL,
	[type] [bit] NOT NULL,
	[email] [nvarchar](50) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[history] ON 
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (1, 2, 4, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (2, 2, 4.3, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (3, 3, 4.5659999847412109, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (4, 2, 5, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (5, 2, 3.3333334922790527, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (6, 2, 5, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (7, 2, 2.5, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (8, 7, 0, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (9, 7, 0, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (12, 7, 0, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (13, 7, 0, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (14, 7, 0, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (21, 7, 0, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (22, 7, 0, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (23, 5, 0, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (24, 5, 10, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (25, 5, 0, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (26, 5, 0, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (27, 5, 0, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (28, 5, 7.5, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (29, 5, 10, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (30, 5, 0, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (31, 5, 0, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (36, 7, 0, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (40, 7, 0, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (45, 7, 0, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (46, 0, 0, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (47, 0, 0, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (48, 7, 0, CAST(N'2020-04-16' AS Date))
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (10, 7, 0, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (32, 7, 0, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (11, 7, 0, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (15, 7, 5, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (16, 7, 5, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (17, 7, 0, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (18, 7, 0, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (19, 7, 6.6666669845581055, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (20, 7, 0, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (41, 7, 0, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (42, 7, 0, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (43, 7, 0, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (44, 7, 10, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (33, 7, 0, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (34, 7, 0, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (35, 7, 0, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (37, 7, 0, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (38, 7, 0, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (39, 7, 0, NULL)
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (49, 11, 8, CAST(N'2021-06-06' AS Date))
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (50, 0, 0, CAST(N'2021-06-07' AS Date))
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (51, 12, 5, CAST(N'2021-06-07' AS Date))
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (52, 12, 6.6666669845581055, CAST(N'2021-06-07' AS Date))
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (53, 12, 0, CAST(N'2021-06-07' AS Date))
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (54, 12, 0, CAST(N'2021-06-07' AS Date))
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (55, 12, 0, CAST(N'2021-06-07' AS Date))
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (56, 12, 10, CAST(N'2021-06-07' AS Date))
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (57, 12, 10, CAST(N'2021-06-07' AS Date))
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (58, 12, 10, CAST(N'2021-06-07' AS Date))
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (59, 12, 10, CAST(N'2021-06-07' AS Date))
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (60, 12, 0, CAST(N'2021-06-07' AS Date))
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (61, 12, 10, CAST(N'2021-06-07' AS Date))
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (62, 12, 10, CAST(N'2021-06-07' AS Date))
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (63, 12, 10, CAST(N'2021-06-07' AS Date))
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (64, 12, 10, CAST(N'2021-06-07' AS Date))
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (65, 12, 10, CAST(N'2021-06-07' AS Date))
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (66, 12, 8, CAST(N'2021-06-07' AS Date))
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (67, 11, 10, CAST(N'2021-06-07' AS Date))
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (68, 12, 10, CAST(N'2021-06-08' AS Date))
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (69, 12, 0, CAST(N'2021-06-08' AS Date))
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (70, 12, 0, CAST(N'2021-06-08' AS Date))
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (71, 12, 0, CAST(N'2021-06-08' AS Date))
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (72, 12, 8, CAST(N'2021-06-08' AS Date))
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (73, 12, 0, CAST(N'2021-06-08' AS Date))
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (74, 12, 10, CAST(N'2021-06-08' AS Date))
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (75, 12, 10, CAST(N'2021-06-08' AS Date))
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (76, 12, 10, CAST(N'2021-06-08' AS Date))
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (78, 12, 10, CAST(N'2021-06-08' AS Date))
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (77, 12, 10, CAST(N'2021-06-08' AS Date))
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (79, 12, 0, CAST(N'2021-06-08' AS Date))
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (80, 12, 10, CAST(N'2021-06-08' AS Date))
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (81, 12, 8, CAST(N'2021-06-09' AS Date))
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (82, 12, 10, CAST(N'2021-06-09' AS Date))
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (83, 12, 10, CAST(N'2021-06-09' AS Date))
GO
INSERT [dbo].[history] ([id], [userID], [point], [date]) VALUES (84, 12, 10, CAST(N'2021-06-09' AS Date))
GO
SET IDENTITY_INSERT [dbo].[history] OFF
GO
SET IDENTITY_INSERT [dbo].[Question] ON 
GO
INSERT [dbo].[Question] ([ID], [Content], [answer], [date], [opt1], [opt2], [opt3], [opt4]) VALUES (18, N'Điện thoại nào sử dụng hệ điều hành IOS?', N'2', CAST(N'2021-06-07' AS Date), N'Samsung', N'Iphone', N'Xiaomi', N'VSmart')
GO
INSERT [dbo].[Question] ([ID], [Content], [answer], [date], [opt1], [opt2], [opt3], [opt4]) VALUES (19, N'Ai là huấn luyện viên của ĐTQG Việt Nam ở thời điểm hiện tại?', N'3', CAST(N'2021-06-07' AS Date), N'Henrique Calisto', N'Hoàng Văn Phúc', N'Park Hang-Seo', N'Alfred Riedl')
GO
INSERT [dbo].[Question] ([ID], [Content], [answer], [date], [opt1], [opt2], [opt3], [opt4]) VALUES (20, N'Những quần đảo của Việt Nam?', N'13', CAST(N'2021-06-07' AS Date), N'Hoàng Sa', N'Vân Nam', N'Trường Sa', N'Thanh Đảo')
GO
INSERT [dbo].[Question] ([ID], [Content], [answer], [date], [opt1], [opt2], [opt3], [opt4]) VALUES (21, N'Trường ĐH FPT đào tạo chuyên ngành trong bao lâu?', N'4', CAST(N'2021-06-07' AS Date), N'6 Kỳ', N'7 Kỳ', N'8 Kỳ', N'9 Kỳ')
GO
INSERT [dbo].[Question] ([ID], [Content], [answer], [date], [opt1], [opt2], [opt3], [opt4]) VALUES (23, N'Trường FPT đào tạo những ngành nào sau đây?', N'4', CAST(N'2021-06-09' AS Date), N'Artificial Intelligence', N'Software Engineering', N'Internet of Things', N'All of the above')
GO
INSERT [dbo].[Question] ([ID], [Content], [answer], [date], [opt1], [opt2], [opt3], [opt4]) VALUES (28, N'1+1=?', N'2', CAST(N'2021-06-09' AS Date), N'1', N'2', N'3', N'4')
GO
INSERT [dbo].[Question] ([ID], [Content], [answer], [date], [opt1], [opt2], [opt3], [opt4]) VALUES (17, N'Thủ đô của Việt Nam?', N'1', CAST(N'2021-06-07' AS Date), N'Hà Nội', N'Vinh', N'TP Hồ Chí Minh', N'Đà Nẵng')
GO
SET IDENTITY_INSERT [dbo].[Question] OFF
GO
SET IDENTITY_INSERT [dbo].[user] ON 
GO
INSERT [dbo].[user] ([ID], [userName], [passWord], [type], [email]) VALUES (11, N'student', N'1', 0, N'dasd@dsaa.com')
GO
INSERT [dbo].[user] ([ID], [userName], [passWord], [type], [email]) VALUES (12, N'teacher', N'1', 1, N'dasd@dsaa.com')
GO
INSERT [dbo].[user] ([ID], [userName], [passWord], [type], [email]) VALUES (15, N'canhnam', N'123', 0, N'namnche141707@fpt.edu.vn')
GO
SET IDENTITY_INSERT [dbo].[user] OFF
GO
USE [master]
GO
ALTER DATABASE [onlineQuiz] SET  READ_WRITE 
GO
