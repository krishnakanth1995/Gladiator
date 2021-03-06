USE [master]
GO
/****** Object:  Database [ProjectBanking]    Script Date: 25-11-2020 01:00:46 ******/
CREATE DATABASE [ProjectBanking]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProjectBanking', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ProjectBanking.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProjectBanking_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ProjectBanking_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ProjectBanking] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProjectBanking].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProjectBanking] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProjectBanking] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProjectBanking] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProjectBanking] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProjectBanking] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProjectBanking] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ProjectBanking] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProjectBanking] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProjectBanking] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProjectBanking] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProjectBanking] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProjectBanking] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProjectBanking] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProjectBanking] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProjectBanking] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ProjectBanking] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProjectBanking] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProjectBanking] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProjectBanking] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProjectBanking] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProjectBanking] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProjectBanking] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProjectBanking] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProjectBanking] SET  MULTI_USER 
GO
ALTER DATABASE [ProjectBanking] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProjectBanking] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProjectBanking] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProjectBanking] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProjectBanking] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProjectBanking] SET QUERY_STORE = OFF
GO
USE [ProjectBanking]
GO
/****** Object:  Table [dbo].[AccountDetails]    Script Date: 25-11-2020 01:00:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountDetails](
	[CID] [int] NULL,
	[AccountNumber] [bigint] IDENTITY(34428671812,1) NOT NULL,
	[Accounttype] [nvarchar](20) NULL,
	[AccountBalance] [float] NULL,
	[Password] [nvarchar](40) NULL,
	[TransactionPassword] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 25-11-2020 01:00:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[AdminId] [int] IDENTITY(6565,1) NOT NULL,
	[AdminPassword] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[AdminId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BeneficiaryDetails]    Script Date: 25-11-2020 01:00:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BeneficiaryDetails](
	[Bid] [int] IDENTITY(10000,1) NOT NULL,
	[AccountNumber] [bigint] NULL,
	[BeneficiaryName] [nvarchar](40) NULL,
	[BenificiaryAccountNumber] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Bid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 25-11-2020 01:00:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CID] [int] IDENTITY(2600,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[MiddleName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[FatherName] [nvarchar](50) NULL,
	[MobileNumber] [nvarchar](50) NULL,
	[EmailID] [nvarchar](50) NULL,
	[Aadharnumber] [bigint] NULL,
	[DOB] [date] NULL,
	[NetBankingOpted] [bit] NULL,
	[DebitCardOpted] [bit] NULL,
	[IsApproved] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[CID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Aadharnumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OccupationDetails]    Script Date: 25-11-2020 01:00:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OccupationDetails](
	[OID] [int] IDENTITY(100,1) NOT NULL,
	[CID] [int] NULL,
	[Occupationtype] [nvarchar](50) NULL,
	[SourceofIncome] [nvarchar](50) NULL,
	[GrossannualIncome] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[OID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PermanentAddress]    Script Date: 25-11-2020 01:00:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermanentAddress](
	[PID] [int] IDENTITY(1,1) NOT NULL,
	[CID] [int] NULL,
	[PAddressLine1] [nvarchar](max) NULL,
	[PAddressLine2] [nvarchar](max) NULL,
	[PLandmark] [nvarchar](max) NULL,
	[PState] [nvarchar](40) NULL,
	[PCity] [nvarchar](40) NULL,
	[PPincode] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[PID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResidentialAddress]    Script Date: 25-11-2020 01:00:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResidentialAddress](
	[RID] [int] IDENTITY(200,1) NOT NULL,
	[CID] [int] NULL,
	[RAddressLine1] [nvarchar](max) NULL,
	[RAddressLine2] [nvarchar](max) NULL,
	[RLandmark] [nvarchar](max) NULL,
	[RState] [nvarchar](40) NULL,
	[RCity] [nvarchar](40) NULL,
	[RPincode] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StatusTracking]    Script Date: 25-11-2020 01:00:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusTracking](
	[AdminId] [int] NULL,
	[CID] [int] NULL,
	[ReferenceNumber] [bigint] IDENTITY(9666063390,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ReferenceNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactionDetails]    Script Date: 25-11-2020 01:00:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionDetails](
	[TransactionID] [int] IDENTITY(987654,1) NOT NULL,
	[SenderAccount] [bigint] NULL,
	[RecieverAccount] [bigint] NULL,
	[TransactionType] [nvarchar](10) NULL,
	[TransactionAmount] [float] NULL,
	[TransactionDate] [datetime] NULL,
	[TransactionMode] [nvarchar](20) NULL,
	[Maturityinstruction] [nvarchar](30) NULL,
	[Remarks] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[TransactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AccountDetails] ADD  CONSTRAINT [df_acctype]  DEFAULT ('savings') FOR [Accounttype]
GO
ALTER TABLE [dbo].[Customer] ADD  DEFAULT ((0)) FOR [IsApproved]
GO
ALTER TABLE [dbo].[TransactionDetails] ADD  DEFAULT (getdate()) FOR [TransactionDate]
GO
ALTER TABLE [dbo].[AccountDetails]  WITH CHECK ADD FOREIGN KEY([CID])
REFERENCES [dbo].[Customer] ([CID])
GO
ALTER TABLE [dbo].[BeneficiaryDetails]  WITH CHECK ADD FOREIGN KEY([AccountNumber])
REFERENCES [dbo].[AccountDetails] ([AccountNumber])
GO
ALTER TABLE [dbo].[OccupationDetails]  WITH CHECK ADD FOREIGN KEY([CID])
REFERENCES [dbo].[Customer] ([CID])
GO
ALTER TABLE [dbo].[PermanentAddress]  WITH CHECK ADD FOREIGN KEY([CID])
REFERENCES [dbo].[Customer] ([CID])
GO
ALTER TABLE [dbo].[ResidentialAddress]  WITH CHECK ADD FOREIGN KEY([CID])
REFERENCES [dbo].[Customer] ([CID])
GO
ALTER TABLE [dbo].[StatusTracking]  WITH CHECK ADD FOREIGN KEY([AdminId])
REFERENCES [dbo].[Admin] ([AdminId])
GO
ALTER TABLE [dbo].[StatusTracking]  WITH CHECK ADD FOREIGN KEY([CID])
REFERENCES [dbo].[Customer] ([CID])
GO
ALTER TABLE [dbo].[TransactionDetails]  WITH CHECK ADD FOREIGN KEY([RecieverAccount])
REFERENCES [dbo].[AccountDetails] ([AccountNumber])
GO
ALTER TABLE [dbo].[TransactionDetails]  WITH CHECK ADD FOREIGN KEY([SenderAccount])
REFERENCES [dbo].[AccountDetails] ([AccountNumber])
GO
/****** Object:  StoredProcedure [dbo].[sp_accountstatement_between_twodates]    Script Date: 25-11-2020 01:00:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

  CREATE	 procedure [dbo].[sp_accountstatement_between_twodates]
@begindate datetime,
 @enddate datetime,
 @cid int
 as
 begin
 select TD.TransactionID,TD.TransactionDate,TD.TransactionAmount,TD.SenderAccount,TD.RecieverAccount,TD.TransactionMode , TD.Remarks from  TransactionDetails as TD join AccountDetails as AD 
 on TD.SenderAccount = AD.AccountNumber 
 where   ((TransactionDate between @begindate and @enddate) and (CID=@cid))

 end
GO
/****** Object:  StoredProcedure [dbo].[sp_adminapproval]    Script Date: 25-11-2020 01:00:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[sp_adminapproval]
@cid int
as 

begin

update Customer set IsApproved=1 where CID=@cid
end
GO
/****** Object:  StoredProcedure [dbo].[sp_admindispproval]    Script Date: 25-11-2020 01:00:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create procedure [dbo].[sp_admindispproval]
@CID int
as
begin

delete from Customer where CID=@CID 
delete from Residentialaddress where CID=@CID
delete from permanentaddress where CID=@CID
delete from OccupationDetails where CID=@CID
end
GO
/****** Object:  StoredProcedure [dbo].[sp_deleterecords]    Script Date: 25-11-2020 01:00:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_deleterecords]
@id int 
as 
begin 


delete from customer where @id = 

any (select CID from customer where Isapproved is null )


delete from PermanentAddress where @id = 

any (select CID from customer where Isapproved is null )


delete from ResidentialAddress where @id = 

any (select CID from customer where Isapproved is null )


delete from OccupationDetails where @id = 

any (select CID from customer where Isapproved is null )


end
GO
/****** Object:  StoredProcedure [dbo].[sp_pendingapprovals]    Script Date: 25-11-2020 01:00:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_pendingapprovals]
as
begin
select cus.CID,cus.FirstName,cus.MiddleName,cus.LastName,cus.FatherName,cus.MobileNumber,cus.EmailID,cus.Aadharnumber,cus.DOB,
cus.Isapproved,pa.PAddressLine1,pa.PAddressLine2,pa.PLandmark,pa.PState,pa.PCity,pa.PPincode,
ra.RAddressLine1,ra.RAddressLine2,ra.RLandmark,ra.RState,ra.RCity,ra.RPincode,

od.Occupationtype,od.SourceofIncome,od.GrossannualIncome
from  Customer cus join Occupationdetails od
on cus.CID=od.CID
join residentialaddress ra
on od.CID=ra.cid
join Permanentaddress pa on
ra.cid=pa.CID
where cus.Isapproved is null

end
GO
/****** Object:  StoredProcedure [dbo].[sp_Transfer_successsful]    Script Date: 25-11-2020 01:00:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Transfer_successsful]
 
 @referenceid int
 as
 begin

 select * from TransactionDetails where TransactionID=@referenceid
 end
GO
/****** Object:  StoredProcedure [dbo].[sp_viewapprovals]    Script Date: 25-11-2020 01:00:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_viewapprovals]
as
begin
select cus.CID,cus.FirstName,cus.MiddleName,cus.LastName,cus.FatherName,cus.MobileNumber,cus.EmailID,cus.Aadharnumber,cus.DOB,
pa.PAddressLine1,pa.PAddressLine2,pa.PLandmark,pa.PState,pa.PCity,pa.PPincode,
ra.RAddressLine1,ra.RAddressLine2,ra.RLandmark,ra.RState,ra.RCity,ra.RPincode,

od.Occupationtype,od.SourceofIncome,od.GrossannualIncome
from  Customer cus join Occupationdetails od
on cus.CID=od.CID
join residentialaddress ra
on od.CID=ra.cid
join Permanentaddress pa on
ra.cid=pa.CID
where cus.IsApproved is not null 

end
GO
/****** Object:  StoredProcedure [dbo].[sp_viewpendingapprovals]    Script Date: 25-11-2020 01:00:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_viewpendingapprovals]
as
begin
select cus.CID,cus.FirstName,cus.MiddleName,cus.LastName,cus.FatherName,cus.MobileNumber,cus.EmailID,cus.Aadharnumber,cus.DOB,
pa.PAddressLine1,pa.PAddressLine2,pa.PLandmark,pa.PState,pa.PCity,pa.PPincode,
ra.RAddressLine1,ra.RAddressLine2,ra.RLandmark,ra.RState,ra.RCity,ra.RPincode,

od.Occupationtype,od.SourceofIncome,od.GrossannualIncome
from  Customer cus join Occupationdetails od
on cus.CID=od.CID
join residentialaddress ra
on od.CID=ra.cid
join Permanentaddress pa on
ra.cid=pa.CID
where cus.IsApproved is null 

end
GO
USE [master]
GO
ALTER DATABASE [ProjectBanking] SET  READ_WRITE 
GO
