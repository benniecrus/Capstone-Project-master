USE [master]
GO
/****** Object:  Database [WeTeach]    Script Date: 8/30/2017 10:23:07 AM ******/
CREATE DATABASE [WeTeach]
GO
ALTER DATABASE [WeTeach] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WeTeach].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WeTeach] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WeTeach] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WeTeach] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WeTeach] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WeTeach] SET ARITHABORT OFF 
GO
ALTER DATABASE [WeTeach] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WeTeach] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [WeTeach] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WeTeach] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WeTeach] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WeTeach] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WeTeach] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WeTeach] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WeTeach] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WeTeach] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WeTeach] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WeTeach] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WeTeach] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WeTeach] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WeTeach] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WeTeach] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WeTeach] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WeTeach] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WeTeach] SET RECOVERY FULL 
GO
ALTER DATABASE [WeTeach] SET  MULTI_USER 
GO
ALTER DATABASE [WeTeach] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WeTeach] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WeTeach] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WeTeach] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'WeTeach', N'ON'
GO
USE [WeTeach]
GO
/****** Object:  UserDefinedFunction [dbo].[ConvertString]    Script Date: 8/30/2017 10:23:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[ConvertString](@inputVar NVARCHAR(MAX) )
RETURNS NVARCHAR(MAX)
AS
BEGIN    
    IF (@inputVar IS NULL OR @inputVar = '')  RETURN ''
   
    DECLARE @RT NVARCHAR(MAX)
    DECLARE @SIGN_CHARS NCHAR(256)
    DECLARE @UNSIGN_CHARS NCHAR (256)
 
    SET @SIGN_CHARS = N'ăâđêôơưàảãạáằẳẵặắầẩẫậấèẻẽẹéềểễệếìỉĩịíòỏõọóồổỗộốờởỡợớùủũụúừửữựứỳỷỹỵýĂÂĐÊÔƠƯÀẢÃẠÁẰẲẴẶẮẦẨẪẬẤÈẺẼẸÉỀỂỄỆẾÌỈĨỊÍÒỎÕỌÓỒỔỖỘỐỜỞỠỢỚÙỦŨỤÚỪỬỮỰỨỲỶỸỴÝ' + NCHAR(272) + NCHAR(208)
    SET @UNSIGN_CHARS = N'aadeoouaaaaaaaaaaaaaaaeeeeeeeeeeiiiiiooooooooooooooouuuuuuuuuuyyyyyAADEOOUAAAAAAAAAAAAAAAEEEEEEEEEEIIIIIOOOOOOOOOOOOOOOUUUUUUUUUUYYYYYDD'
 
    DECLARE @COUNTER int
    DECLARE @COUNTER1 int
   
    SET @COUNTER = 1
    WHILE (@COUNTER <= LEN(@inputVar))
    BEGIN  
        SET @COUNTER1 = 1
        WHILE (@COUNTER1 <= LEN(@SIGN_CHARS) + 1)
        BEGIN
            IF UNICODE(SUBSTRING(@SIGN_CHARS, @COUNTER1,1)) = UNICODE(SUBSTRING(@inputVar,@COUNTER ,1))
            BEGIN          
                IF @COUNTER = 1
                    SET @inputVar = SUBSTRING(@UNSIGN_CHARS, @COUNTER1,1) + SUBSTRING(@inputVar, @COUNTER+1,LEN(@inputVar)-1)      
                ELSE
                    SET @inputVar = SUBSTRING(@inputVar, 1, @COUNTER-1) +SUBSTRING(@UNSIGN_CHARS, @COUNTER1,1) + SUBSTRING(@inputVar, @COUNTER+1,LEN(@inputVar)- @COUNTER)
                BREAK
            END
            SET @COUNTER1 = @COUNTER1 +1
        END
        SET @COUNTER = @COUNTER +1
    END
    -- SET @inputVar = replace(@inputVar,' ','-')
    RETURN @inputVar
END


GO
/****** Object:  UserDefinedFunction [dbo].[fChuyenCoDauThanhKhongDau]    Script Date: 8/30/2017 10:23:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fChuyenCoDauThanhKhongDau](@inputVar NVARCHAR(MAX) )
RETURNS NVARCHAR(MAX)
AS
BEGIN    
    IF (@inputVar IS NULL OR @inputVar = '')  RETURN ''
   
    DECLARE @RT NVARCHAR(MAX)
    DECLARE @SIGN_CHARS NCHAR(256)
    DECLARE @UNSIGN_CHARS NCHAR (256)
 
    SET @SIGN_CHARS = N'ăâđêôơưàảãạáằẳẵặắầẩẫậấèẻẽẹéềểễệếìỉĩịíòỏõọóồổỗộốờởỡợớùủũụúừửữựứỳỷỹỵýĂÂĐÊÔƠƯÀẢÃẠÁẰẲẴẶẮẦẨẪẬẤÈẺẼẸÉỀỂỄỆẾÌỈĨỊÍÒỎÕỌÓỒỔỖỘỐỜỞỠỢỚÙỦŨỤÚỪỬỮỰỨỲỶỸỴÝ' + NCHAR(272) + NCHAR(208)
    SET @UNSIGN_CHARS = N'aadeoouaaaaaaaaaaaaaaaeeeeeeeeeeiiiiiooooooooooooooouuuuuuuuuuyyyyyAADEOOUAAAAAAAAAAAAAAAEEEEEEEEEEIIIIIOOOOOOOOOOOOOOOUUUUUUUUUUYYYYYDD'
 
    DECLARE @COUNTER int
    DECLARE @COUNTER1 int
   
    SET @COUNTER = 1
    WHILE (@COUNTER <= LEN(@inputVar))
    BEGIN  
        SET @COUNTER1 = 1
        WHILE (@COUNTER1 <= LEN(@SIGN_CHARS) + 1)
        BEGIN
            IF UNICODE(SUBSTRING(@SIGN_CHARS, @COUNTER1,1)) = UNICODE(SUBSTRING(@inputVar,@COUNTER ,1))
            BEGIN          
                IF @COUNTER = 1
                    SET @inputVar = SUBSTRING(@UNSIGN_CHARS, @COUNTER1,1) + SUBSTRING(@inputVar, @COUNTER+1,LEN(@inputVar)-1)      
                ELSE
                    SET @inputVar = SUBSTRING(@inputVar, 1, @COUNTER-1) +SUBSTRING(@UNSIGN_CHARS, @COUNTER1,1) + SUBSTRING(@inputVar, @COUNTER+1,LEN(@inputVar)- @COUNTER)
                BREAK
            END
            SET @COUNTER1 = @COUNTER1 +1
        END
        SET @COUNTER = @COUNTER +1
    END
    -- SET @inputVar = replace(@inputVar,' ','-')
    RETURN @inputVar
END


GO
/****** Object:  Table [dbo].[Admin]    Script Date: 8/30/2017 10:23:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin](
	[AdminID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](255) NOT NULL,
	[Password] [nvarchar](255) NOT NULL,
	[FirstName] [nvarchar](255) NOT NULL,
	[LastName] [nvarchar](255) NOT NULL,
	[Gender] [smallint] NULL,
	[DoB] [date] NULL,
	[PhoneNumber] [nvarchar](255) NULL,
	[Avatar] [varbinary](max) NULL,
	[Email] [nvarchar](255) NOT NULL,
	[Address] [nvarchar](255) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Category]    Script Date: 8/30/2017 10:23:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](255) NOT NULL,
	[avgView] [float] NOT NULL,
	[Rate] [float] NOT NULL,
	[avgCourseSaved] [float] NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comment]    Script Date: 8/30/2017 10:23:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[CommentID] [int] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[Time] [datetime] NOT NULL,
	[isDeleted] [bit] NOT NULL,
	[UserID] [int] NOT NULL,
	[CourseID] [int] NOT NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Course]    Script Date: 8/30/2017 10:23:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Course](
	[CourseID] [int] IDENTITY(1,1) NOT NULL,
	[Curriculum] [varbinary](max) NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Subtitle] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Fee] [float] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[Image] [varbinary](max) NULL,
	[Video] [nvarchar](max) NULL,
	[Rate] [float] NULL,
	[LanguageID] [int] NOT NULL,
	[LevelID] [int] NOT NULL,
	[TrainerID] [int] NOT NULL,
	[isDeleted] [bit] NOT NULL,
	[Status] [smallint] NOT NULL,
	[TotalComment] [int] NULL,
	[TotalView] [int] NOT NULL,
	[TotalCourseSaved] [int] NULL,
	[Answer1] [nvarchar](max) NULL,
	[Answer2] [nvarchar](max) NULL,
	[Answer3] [nvarchar](max) NULL,
	[CreatedTime] [datetime] NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CourseRate]    Script Date: 8/30/2017 10:23:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseRate](
	[CourseID] [int] NOT NULL,
	[LearnerID] [int] NOT NULL,
	[Rate] [float] NULL,
 CONSTRAINT [PK_CourseRate] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC,
	[LearnerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CourseView]    Script Date: 8/30/2017 10:23:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseView](
	[CourseViewID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NULL,
	[LearnerID] [int] NULL,
	[CourseID] [int] NULL,
 CONSTRAINT [PK_CourseView] PRIMARY KEY CLUSTERED 
(
	[CourseViewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Document]    Script Date: 8/30/2017 10:23:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Document](
	[DocumentID] [int] IDENTITY(1,1) NOT NULL,
	[Image] [varbinary](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[TrainerID] [int] NOT NULL,
	[Status] [smallint] NOT NULL,
 CONSTRAINT [PK_Document] PRIMARY KEY CLUSTERED 
(
	[DocumentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Field]    Script Date: 8/30/2017 10:23:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Field](
	[FieldID] [int] IDENTITY(1,1) NOT NULL,
	[FieldName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Field] PRIMARY KEY CLUSTERED 
(
	[FieldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[History]    Script Date: 8/30/2017 10:23:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[History](
	[CourseID] [int] NOT NULL,
	[LearnerID] [int] NOT NULL,
	[Time] [datetime] NOT NULL,
	[isSaved] [bit] NOT NULL,
 CONSTRAINT [PK_History] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC,
	[LearnerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Job]    Script Date: 8/30/2017 10:23:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Job](
	[JobID] [int] IDENTITY(1,1) NOT NULL,
	[JobName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Job] PRIMARY KEY CLUSTERED 
(
	[JobID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Language]    Script Date: 8/30/2017 10:23:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Language](
	[LanguageID] [int] IDENTITY(1,1) NOT NULL,
	[LanguageName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Language] PRIMARY KEY CLUSTERED 
(
	[LanguageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Learner]    Script Date: 8/30/2017 10:23:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Learner](
	[LearnerID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[Gender] [smallint] NULL,
	[DoB] [date] NULL,
	[JobID] [int] NOT NULL,
 CONSTRAINT [PK_Leaner] PRIMARY KEY CLUSTERED 
(
	[LearnerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Level]    Script Date: 8/30/2017 10:23:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Level](
	[LevelID] [int] IDENTITY(1,1) NOT NULL,
	[LevelName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Level] PRIMARY KEY CLUSTERED 
(
	[LevelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Message]    Script Date: 8/30/2017 10:23:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[MessageID] [int] IDENTITY(1,1) NOT NULL,
	[Subject] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NOT NULL,
	[Time] [datetime] NOT NULL,
	[SenderID] [int] NOT NULL,
	[ReceiverID] [int] NOT NULL,
	[Seen] [bit] NULL,
	[ReceiverMessageDeleted] [bit] NULL,
	[SenderMessageDeleted] [bit] NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[MessageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Trainer]    Script Date: 8/30/2017 10:23:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Trainer](
	[TrainerID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[FieldID] [int] NOT NULL,
	[Rate] [float] NULL,
	[TotalCourse] [int] NULL,
	[CV] [varbinary](max) NULL,
 CONSTRAINT [PK_Trainer] PRIMARY KEY CLUSTERED 
(
	[TrainerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TrainerRate]    Script Date: 8/30/2017 10:23:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrainerRate](
	[TrainerID] [int] NOT NULL,
	[LearnerID] [int] NOT NULL,
	[Rate] [float] NULL,
 CONSTRAINT [PK_TrainerRate] PRIMARY KEY CLUSTERED 
(
	[TrainerID] ASC,
	[LearnerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 8/30/2017 10:23:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](255) NOT NULL,
	[Password] [nvarchar](255) NOT NULL,
	[FullName] [nvarchar](255) NOT NULL,
	[PhoneNumber] [nvarchar](255) NULL,
	[Avatar] [varbinary](max) NULL,
	[Address] [nvarchar](255) NULL,
	[Biography] [nvarchar](max) NULL,
	[Status] [smallint] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CourseID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Course]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_User]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Category]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Language] FOREIGN KEY([LanguageID])
REFERENCES [dbo].[Language] ([LanguageID])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Language]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Level] FOREIGN KEY([LevelID])
REFERENCES [dbo].[Level] ([LevelID])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Level]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Trainer] FOREIGN KEY([TrainerID])
REFERENCES [dbo].[Trainer] ([TrainerID])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Trainer]
GO
ALTER TABLE [dbo].[CourseRate]  WITH CHECK ADD  CONSTRAINT [FK_CourseRate_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CourseID])
GO
ALTER TABLE [dbo].[CourseRate] CHECK CONSTRAINT [FK_CourseRate_Course]
GO
ALTER TABLE [dbo].[CourseRate]  WITH CHECK ADD  CONSTRAINT [FK_CourseRate_Learner] FOREIGN KEY([LearnerID])
REFERENCES [dbo].[Learner] ([LearnerID])
GO
ALTER TABLE [dbo].[CourseRate] CHECK CONSTRAINT [FK_CourseRate_Learner]
GO
ALTER TABLE [dbo].[CourseView]  WITH CHECK ADD  CONSTRAINT [FK_CourseView_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CourseID])
GO
ALTER TABLE [dbo].[CourseView] CHECK CONSTRAINT [FK_CourseView_Course]
GO
ALTER TABLE [dbo].[CourseView]  WITH CHECK ADD  CONSTRAINT [FK_CourseView_Learner] FOREIGN KEY([LearnerID])
REFERENCES [dbo].[Learner] ([LearnerID])
GO
ALTER TABLE [dbo].[CourseView] CHECK CONSTRAINT [FK_CourseView_Learner]
GO
ALTER TABLE [dbo].[Document]  WITH CHECK ADD  CONSTRAINT [FK_Document_Trainer] FOREIGN KEY([TrainerID])
REFERENCES [dbo].[Trainer] ([TrainerID])
GO
ALTER TABLE [dbo].[Document] CHECK CONSTRAINT [FK_Document_Trainer]
GO
ALTER TABLE [dbo].[History]  WITH CHECK ADD  CONSTRAINT [FK_History_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CourseID])
GO
ALTER TABLE [dbo].[History] CHECK CONSTRAINT [FK_History_Course]
GO
ALTER TABLE [dbo].[History]  WITH CHECK ADD  CONSTRAINT [FK_History_Leaner] FOREIGN KEY([LearnerID])
REFERENCES [dbo].[Learner] ([LearnerID])
GO
ALTER TABLE [dbo].[History] CHECK CONSTRAINT [FK_History_Leaner]
GO
ALTER TABLE [dbo].[Learner]  WITH CHECK ADD  CONSTRAINT [FK_Leaner_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Learner] CHECK CONSTRAINT [FK_Leaner_User]
GO
ALTER TABLE [dbo].[Learner]  WITH CHECK ADD  CONSTRAINT [FK_Learner_Job] FOREIGN KEY([JobID])
REFERENCES [dbo].[Job] ([JobID])
GO
ALTER TABLE [dbo].[Learner] CHECK CONSTRAINT [FK_Learner_Job]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_User] FOREIGN KEY([SenderID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_User]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_User1] FOREIGN KEY([ReceiverID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_User1]
GO
ALTER TABLE [dbo].[Trainer]  WITH CHECK ADD  CONSTRAINT [FK_Trainer_Field] FOREIGN KEY([FieldID])
REFERENCES [dbo].[Field] ([FieldID])
GO
ALTER TABLE [dbo].[Trainer] CHECK CONSTRAINT [FK_Trainer_Field]
GO
ALTER TABLE [dbo].[Trainer]  WITH CHECK ADD  CONSTRAINT [FK_Trainer_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Trainer] CHECK CONSTRAINT [FK_Trainer_User]
GO
ALTER TABLE [dbo].[TrainerRate]  WITH CHECK ADD  CONSTRAINT [FK_TrainerRate_Learner] FOREIGN KEY([LearnerID])
REFERENCES [dbo].[Learner] ([LearnerID])
GO
ALTER TABLE [dbo].[TrainerRate] CHECK CONSTRAINT [FK_TrainerRate_Learner]
GO
ALTER TABLE [dbo].[TrainerRate]  WITH CHECK ADD  CONSTRAINT [FK_TrainerRate_Trainer] FOREIGN KEY([TrainerID])
REFERENCES [dbo].[Trainer] ([TrainerID])
GO
ALTER TABLE [dbo].[TrainerRate] CHECK CONSTRAINT [FK_TrainerRate_Trainer]
GO
create trigger trg_Rate on CourseRate
for Insert
as

declare @courseid int;

select @courseid = i.CourseID from inserted i

update Course 
set Rate = (select case when avg(cast(Rate as float)) is null then 0 else avg(cast(Rate as float)) end from CourseRate where CourseID = @courseid ) 
where CourseID = @courseid

GO
create trigger trigger_totalCourseSaved on History
for update, insert
as
declare @courseId int;
select @courseId = i.CourseID from inserted i

update Course
set totalCourseSaved = (select count(CourseID) from History where CourseID = @courseId and isSaved = 'true')
where CourseID = @courseId
GO
create trigger trg_comment on Comment
for insert
as
declare @courseid int;

select @courseid = i.CourseID from inserted i


update Course 
set TotalComment = (select count(CommentID) from Comment where CourseID = @courseid) 
where CourseID = @courseid

GO
create trigger trg_numberCourse on Course
for insert
as
declare @trainerid int;

select @trainerid = i.TrainerID from inserted i


update Trainer 
set TotalCourse = (select count(CourseID) from Course where TrainerID = @trainerid) 
where TrainerID = @trainerid

GO
create trigger trg_totalView on History
for insert
as
declare @courseid int;

select @courseid = i.CourseID from inserted i


update Course 
set TotalView = (select count(LearnerID) from History where CourseID = @courseid) 
where CourseID = @courseid

go

create trigger trg_trainerRate on TrainerRate
for Insert
as

declare @trainerid int;

select @trainerid = i.TrainerID from inserted i

update Trainer 
set Rate = (select case when avg(cast(Rate as float)) is null then 0 else avg(cast(Rate as float)) end from TrainerRate where TrainerID = @trainerid ) 
where TrainerID = @trainerid
GO
create trigger trigger_avgRateCategory
on Course
for Update, insert
as
declare @categoryId int;

select @categoryId = i.CategoryID from inserted i

update Category 
set Rate = (select avg(Rate) 
from Course
where CategoryID = @categoryId)
where CategoryID = @categoryId
GO
create trigger trigger_avgCourseSaved on Course
for update, insert
as
declare @categoryId int;
select @categoryId = i.CategoryID from inserted i

update Category
set avgCourseSaved = (select case when avg(cast(totalCourseSaved as float))  is null then 0 else avg(cast(totalCourseSaved as float)) end from Course where CategoryID = @categoryId)
where CategoryID = @categoryId
GO
create trigger trigger_avgView
on Course
for Update, insert
as
declare @categoryId int;

select @categoryId = i.CategoryID from inserted i

update Category 
set avgView = (select avg(cast(TotalView as float)) 
from Course
where CategoryID = @categoryId)
where CategoryID = @categoryId

GO
USE [master]
GO
ALTER DATABASE [WeTeach] SET  READ_WRITE 
GO