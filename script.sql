USE [AMBSGH]
GO
/****** Object:  Table [dbo].[A_Account]    Script Date: 11/15/2022 6:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[A_Account](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ParentId] [bigint] NULL,
	[BranchId] [bigint] NULL,
	[Code] [varchar](50) NOT NULL,
	[Name] [varchar](150) NOT NULL,
	[Level] [int] NOT NULL,
	[TransactionAllowed] [bit] NOT NULL,
	[AccountType] [int] NOT NULL,
	[BalanceType] [bit] NOT NULL,
	[Location] [int] NOT NULL,
	[IsVatable] [bit] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_A_Account_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_A_Account_Code] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[A_AccountConvert]    Script Date: 11/15/2022 6:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[A_AccountConvert](
	[Id] [bigint] NOT NULL,
	[ParentId] [bigint] NULL,
	[BranchId] [bigint] NULL,
	[Code] [varchar](50) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Level] [int] NOT NULL,
	[TransactionAllowed] [bit] NOT NULL,
	[AccountType] [int] NOT NULL,
	[BalanceType] [bit] NOT NULL,
	[Location] [int] NOT NULL,
	[MappedCode] [varchar](50) NULL,
	[IsVatable] [bit] NULL,
 CONSTRAINT [PK_A_AccountConvert_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_A_AccountConvert_Code] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[A_AccountOld]    Script Date: 11/15/2022 6:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[A_AccountOld](
	[Id] [bigint] NOT NULL,
	[ParentId] [bigint] NULL,
	[BranchId] [bigint] NULL,
	[Code] [varchar](50) NOT NULL,
	[Name] [varchar](150) NOT NULL,
	[Level] [int] NOT NULL,
	[TransactionAllowed] [bit] NOT NULL,
	[AccountType] [int] NOT NULL,
	[BalanceType] [bit] NOT NULL,
	[Location] [int] NOT NULL,
	[IsVatable] [bit] NULL,
 CONSTRAINT [PK_A_AccountOld_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_A_AccountOld_Code] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[A_AgingDetailsForFinancialReportData]    Script Date: 11/15/2022 6:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[A_AgingDetailsForFinancialReportData](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [bigint] NULL,
	[S#] [int] NULL,
	[Description] [nvarchar](100) NULL,
	[Classification] [nvarchar](100) NULL,
	[FY] [decimal](18, 2) NULL,
	[JAN] [decimal](18, 2) NULL,
	[FEB] [decimal](18, 2) NULL,
	[MAR] [decimal](18, 2) NULL,
	[APR] [decimal](18, 2) NULL,
	[MAY] [decimal](18, 2) NULL,
	[JUN] [decimal](18, 2) NULL,
	[JUL] [decimal](18, 2) NULL,
	[AUG] [decimal](18, 2) NULL,
	[SEP] [decimal](18, 2) NULL,
	[OCT] [decimal](18, 2) NULL,
	[NOV] [decimal](18, 2) NULL,
	[DEC] [decimal](18, 2) NULL,
	[Year] [int] NULL,
	[TimeStamp] [datetime] NULL,
 CONSTRAINT [PK_A_AgingDetailsForFinancialReportData] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[A_Currency]    Script Date: 11/15/2022 6:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[A_Currency](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](3) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_A_Currency_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_A_Currency] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[A_CurrencyRate]    Script Date: 11/15/2022 6:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[A_CurrencyRate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[FromCode] [varchar](3) NOT NULL,
	[ToCode] [varchar](3) NOT NULL,
	[Rate] [float] NOT NULL,
 CONSTRAINT [PK_A_CurrencyRate_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[A_GlTransactionBranchTemp]    Script Date: 11/15/2022 6:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[A_GlTransactionBranchTemp](
	[Id] [int] IDENTITY(-2147483648,1) NOT NULL,
	[OldId] [int] NOT NULL,
	[DateTime] [datetime] NOT NULL,
	[EntryMethod] [int] NOT NULL,
	[Description] [varchar](255) NOT NULL,
	[ReferencedModule] [int] NOT NULL,
 CONSTRAINT [PK_A_GlTransactionBranchTemp_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[A_LoanInterestReceivable]    Script Date: 11/15/2022 6:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[A_LoanInterestReceivable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[A_AccountId] [bigint] NOT NULL,
	[Debit] [float] NOT NULL,
	[Credit] [float] NOT NULL,
	[Description] [varchar](1024) NULL,
	[P_MemberId] [bigint] NULL,
	[P_LoanAccountId] [bigint] NULL,
	[P_SavingsAccountId] [bigint] NULL,
	[P_SecurityAccountId] [bigint] NULL,
	[B_CustomerId] [bigint] NULL,
	[B_AccountId] [bigint] NULL,
	[P_BaddebtAccountId] [bigint] NULL,
 CONSTRAINT [PK_A_LoanInterestReceivable_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[A_ManualReceiptConfig]    Script Date: 11/15/2022 6:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[A_ManualReceiptConfig](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[FromDate] [datetime] NOT NULL,
	[ToDate] [datetime] NOT NULL,
	[IsManualArEnabled] [bit] NOT NULL,
	[IsManualOrEnabled] [bit] NOT NULL,
 CONSTRAINT [PK_A_ManualReceiptConfig_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[A_ReceiptConfig]    Script Date: 11/15/2022 6:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[A_ReceiptConfig](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[ReceiptType] [int] NOT NULL,
	[StartNumber] [int] NOT NULL,
	[EndNumber] [int] NOT NULL,
	[CurrentNumber] [int] NOT NULL,
	[IssueDate] [datetime] NOT NULL,
	[ExpiryDate] [datetime] NOT NULL,
	[PermitNumber] [varchar](50) NOT NULL,
 CONSTRAINT [PK_A_ReceiptConfig_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[A_ReportConfig]    Script Date: 11/15/2022 6:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[A_ReportConfig](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Query] [text] NOT NULL,
	[DateBetween] [bit] NOT NULL,
	[ShowFilter] [bit] NULL,
	[ShowEntity] [bit] NOT NULL,
 CONSTRAINT [PK_A_ReportConfig_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[A_Supplier]    Script Date: 11/15/2022 6:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[A_Supplier](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[Name] [varchar](500) NOT NULL,
	[Tin] [varchar](50) NOT NULL,
	[Address] [varchar](500) NULL,
	[CardType] [int] NOT NULL,
	[ContactNo] [varchar](250) NULL,
 CONSTRAINT [PK_A_Spplier_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[A_Transaction]    Script Date: 11/15/2022 6:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[A_Transaction](
	[Id] [bigint] IDENTITY(-2147483647,1) NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[DateTime] [datetime] NOT NULL,
	[ReferencedModule] [int] NOT NULL,
	[EntryMethod] [int] NOT NULL,
	[VoucherNumber] [varchar](50) NULL,
	[Description] [varchar](1024) NULL,
	[CurrencyCode] [varchar](3) NOT NULL,
	[PartyName] [varchar](100) NULL,
	[PartyAddress] [varchar](200) NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[AuthorizedBy] [nvarchar](10) NULL,
	[AuthorizedDate] [datetime] NULL,
	[OldId] [int] NULL,
	[VoucherType] [int] NULL,
	[HRM_DepartmentId] [bigint] NULL,
	[IsAuthorized] [bit] NULL,
 CONSTRAINT [PK_A_Transaction_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[A_Transaction_BIR]    Script Date: 11/15/2022 6:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[A_Transaction_BIR](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[DateTime] [datetime] NOT NULL,
	[ReferencedModule] [int] NOT NULL,
	[EntryMethod] [int] NOT NULL,
	[VoucherNumber] [varchar](50) NULL,
	[Description] [varchar](1024) NULL,
	[CurrencyCode] [varchar](3) NOT NULL,
	[PartyName] [varchar](100) NULL,
	[PartyAddress] [varchar](200) NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[AuthorizedBy] [nvarchar](10) NULL,
	[AuthorizedDate] [datetime] NULL,
 CONSTRAINT [PK_A_Transaction_BIR_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[A_Transaction1]    Script Date: 11/15/2022 6:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[A_Transaction1](
	[Id] [bigint] NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[DateTime] [datetime] NOT NULL,
	[ReferencedModule] [int] NOT NULL,
	[EntryMethod] [int] NOT NULL,
	[VoucherNumber] [varchar](50) NULL,
	[Description] [varchar](1024) NULL,
	[CurrencyCode] [varchar](3) NOT NULL,
	[PartyName] [varchar](100) NULL,
	[PartyAddress] [varchar](200) NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[AuthorizedBy] [nvarchar](10) NULL,
	[AuthorizedDate] [datetime] NULL,
	[OldId] [int] NULL,
	[VoucherType] [int] NULL,
	[HRM_DepartmentId] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[A_Transaction2021]    Script Date: 11/15/2022 6:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[A_Transaction2021](
	[Id] [bigint] NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[DateTime] [datetime] NOT NULL,
	[ReferencedModule] [int] NOT NULL,
	[EntryMethod] [int] NOT NULL,
	[VoucherNumber] [varchar](50) NULL,
	[Description] [varchar](1024) NULL,
	[CurrencyCode] [varchar](3) NOT NULL,
	[PartyName] [varchar](100) NULL,
	[PartyAddress] [varchar](200) NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[AuthorizedBy] [nvarchar](10) NULL,
	[AuthorizedDate] [datetime] NULL,
	[OldId] [int] NULL,
	[VoucherType] [int] NULL,
	[HRM_DepartmentId] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[A_Transaction3]    Script Date: 11/15/2022 6:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[A_Transaction3](
	[Id] [bigint] NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[DateTime] [datetime] NOT NULL,
	[ReferencedModule] [int] NOT NULL,
	[EntryMethod] [int] NOT NULL,
	[VoucherNumber] [varchar](50) NULL,
	[Description] [varchar](1024) NULL,
	[CurrencyCode] [varchar](3) NOT NULL,
	[PartyName] [varchar](100) NULL,
	[PartyAddress] [varchar](200) NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[AuthorizedBy] [nvarchar](10) NULL,
	[AuthorizedDate] [datetime] NULL,
	[OldId] [int] NULL,
	[VoucherType] [int] NULL,
	[HRM_DepartmentId] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[A_TransactionDenomination]    Script Date: 11/15/2022 6:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[A_TransactionDenomination](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[A_TransactionId] [bigint] NOT NULL,
	[Type] [int] NOT NULL,
	[Denomination] [int] NOT NULL,
	[Count] [int] NOT NULL,
 CONSTRAINT [PK_A_TransactionDenomination_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[A_TransactionDetails]    Script Date: 11/15/2022 6:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[A_TransactionDetails](
	[Id] [bigint] IDENTITY(-2147483647,1) NOT NULL,
	[A_AccountId] [bigint] NOT NULL,
	[A_TransactionId] [bigint] NOT NULL,
	[Debit] [float] NOT NULL,
	[Credit] [float] NOT NULL,
	[ChequeNumber] [varchar](20) NULL,
	[ChildBranchId] [bigint] NULL,
	[Description] [varchar](1024) NULL,
	[OrNumber] [varchar](10) NULL,
	[ArNumber] [varchar](10) NULL,
	[A_SupplierId] [bigint] NULL,
	[VatDeducted] [float] NULL,
	[EmployeeCode] [bigint] NULL,
	[HRM_DepartmentId] [bigint] NULL,
 CONSTRAINT [PK_A_TransactionDetails_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[A_TransactionDetails_BIR]    Script Date: 11/15/2022 6:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[A_TransactionDetails_BIR](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[A_AccountId] [bigint] NOT NULL,
	[A_TransactionId] [bigint] NOT NULL,
	[Debit] [float] NOT NULL,
	[Credit] [float] NOT NULL,
	[ChequeNumber] [varchar](20) NULL,
	[ChildBranchId] [bigint] NULL,
	[Description] [varchar](1024) NULL,
	[A_BankAccountId] [bigint] NULL,
	[P_AccountId] [bigint] NULL,
	[P_MemberId] [bigint] NULL,
	[OrNumber] [varchar](25) NULL,
	[ArNumber] [varchar](25) NULL,
 CONSTRAINT [PK_A_TransactionDetails_BIR_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[A_TransactionDetails1]    Script Date: 11/15/2022 6:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[A_TransactionDetails1](
	[Id] [bigint] NOT NULL,
	[A_AccountId] [bigint] NOT NULL,
	[A_TransactionId] [bigint] NOT NULL,
	[Debit] [float] NOT NULL,
	[Credit] [float] NOT NULL,
	[ChequeNumber] [varchar](20) NULL,
	[ChildBranchId] [bigint] NULL,
	[Description] [varchar](1024) NULL,
	[OrNumber] [varchar](10) NULL,
	[ArNumber] [varchar](10) NULL,
	[A_SupplierId] [bigint] NULL,
	[VatDeducted] [float] NULL,
	[EmployeeCode] [bigint] NULL,
	[HRM_DepartmentId] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[A_TransactionDetails2021]    Script Date: 11/15/2022 6:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[A_TransactionDetails2021](
	[Id] [bigint] NOT NULL,
	[A_AccountId] [bigint] NOT NULL,
	[A_TransactionId] [bigint] NOT NULL,
	[Debit] [float] NOT NULL,
	[Credit] [float] NOT NULL,
	[ChequeNumber] [varchar](20) NULL,
	[ChildBranchId] [bigint] NULL,
	[Description] [varchar](1024) NULL,
	[OrNumber] [varchar](10) NULL,
	[ArNumber] [varchar](10) NULL,
	[A_SupplierId] [bigint] NULL,
	[VatDeducted] [float] NULL,
	[EmployeeCode] [bigint] NULL,
	[HRM_DepartmentId] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[A_TransactionDetails3]    Script Date: 11/15/2022 6:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[A_TransactionDetails3](
	[Id] [bigint] IDENTITY(-2147483647,1) NOT NULL,
	[A_AccountId] [bigint] NOT NULL,
	[A_TransactionId] [bigint] NOT NULL,
	[Debit] [float] NOT NULL,
	[Credit] [float] NOT NULL,
	[ChequeNumber] [varchar](20) NULL,
	[ChildBranchId] [bigint] NULL,
	[Description] [varchar](1024) NULL,
	[OrNumber] [varchar](10) NULL,
	[ArNumber] [varchar](10) NULL,
	[A_SupplierId] [bigint] NULL,
	[VatDeducted] [float] NULL,
	[EmployeeCode] [bigint] NULL,
	[HRM_DepartmentId] [bigint] NULL,
	[Status] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[A_TransactionDetailsGranular]    Script Date: 11/15/2022 6:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[A_TransactionDetailsGranular](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[A_AccountId] [bigint] NOT NULL,
	[A_TransactionId] [bigint] NOT NULL,
	[Debit] [float] NOT NULL,
	[Credit] [float] NOT NULL,
	[ChequeNumber] [varchar](20) NULL,
	[Description] [varchar](1024) NULL,
	[P_MemberId] [bigint] NULL,
	[P_LoanAccountId] [bigint] NULL,
	[P_SavingsAccountId] [bigint] NULL,
	[P_SecurityAccountId] [bigint] NULL,
	[B_CustomerId] [bigint] NULL,
	[B_AccountId] [bigint] NULL,
	[P_BaddebtAccountId] [bigint] NULL,
	[ChildBranchId] [bigint] NULL,
	[OrNumber] [varchar](10) NULL,
	[ArNumber] [varchar](10) NULL,
	[A_SupplierId] [bigint] NULL,
	[VatDeducted] [float] NULL,
	[EmployeeCode] [bigint] NULL,
	[HRM_DepartmentId] [bigint] NULL,
 CONSTRAINT [PK_A_TransactionDetailsGranular_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[A_TransactionDetailsOld]    Script Date: 11/15/2022 6:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[A_TransactionDetailsOld](
	[Id] [bigint] NOT NULL,
	[A_AccountId] [bigint] NOT NULL,
	[A_TransactionId] [bigint] NOT NULL,
	[Debit] [float] NOT NULL,
	[Credit] [float] NOT NULL,
	[ChequeNumber] [varchar](20) NULL,
	[ChildBranchId] [bigint] NULL,
	[Description] [varchar](1024) NULL,
	[OrNumber] [varchar](10) NULL,
	[ArNumber] [varchar](10) NULL,
	[A_SupplierId] [bigint] NULL,
	[VatDeducted] [float] NULL,
	[EmployeeCode] [bigint] NULL,
 CONSTRAINT [PK_A_TransactionDetailsOld_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[A_TransactionOld]    Script Date: 11/15/2022 6:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[A_TransactionOld](
	[Id] [bigint] NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[DateTime] [datetime] NOT NULL,
	[ReferencedModule] [int] NOT NULL,
	[EntryMethod] [int] NOT NULL,
	[VoucherNumber] [varchar](50) NULL,
	[Description] [varchar](1024) NULL,
	[CurrencyCode] [varchar](3) NOT NULL,
	[PartyName] [varchar](100) NULL,
	[PartyAddress] [varchar](200) NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[AuthorizedBy] [nvarchar](10) NULL,
	[AuthorizedDate] [datetime] NULL,
	[OldId] [int] NULL,
	[VoucherType] [int] NULL,
 CONSTRAINT [PK_A_TransactionOld_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[A_VoucherNumber]    Script Date: 11/15/2022 6:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[A_VoucherNumber](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[VoucherType] [int] NOT NULL,
	[CurrentNumber] [int] NOT NULL,
 CONSTRAINT [PK_A_VoucherNumber_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbisServerInfo]    Script Date: 11/15/2022 6:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbisServerInfo](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[URL] [varchar](300) NOT NULL,
	[BranchIds] [varchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccessLog]    Script Date: 11/15/2022 6:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessLog](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SessionID] [varchar](50) NOT NULL,
	[DateTime] [datetime] NOT NULL,
	[Host] [varchar](500) NOT NULL,
	[Client] [varchar](500) NOT NULL,
	[URL] [varchar](500) NOT NULL,
	[Agent] [varchar](500) NOT NULL,
	[Login] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_AccessLog_Id] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [AccessLogPartitionScheme]([DateTime])
GO
/****** Object:  Table [dbo].[ApplicationErrorLog]    Script Date: 11/15/2022 6:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationErrorLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Message] [nvarchar](max) NULL,
	[MessageTemplate] [nvarchar](max) NULL,
	[Level] [nvarchar](max) NULL,
	[TimeStamp] [datetime] NULL,
	[Exception] [nvarchar](max) NULL,
	[Properties] [nvarchar](max) NULL,
 CONSTRAINT [PK_ApplicationErrorLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AuditRoleCommand]    Script Date: 11/15/2022 6:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuditRoleCommand](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[PropertyName] [nvarchar](100) NOT NULL,
	[CommandName] [nvarchar](100) NOT NULL,
	[PropertyPageName] [nvarchar](100) NULL,
 CONSTRAINT [PK_AuditRoleCommand_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AuditTrailLog]    Script Date: 11/15/2022 6:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuditTrailLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MessageTemplate] [nvarchar](max) NULL,
	[Level] [nvarchar](max) NULL,
	[TimeStamp] [datetime] NULL,
	[Exception] [nvarchar](max) NULL,
	[PropertyName] [nvarchar](1000) NULL,
	[AuditBy] [nvarchar](1000) NULL,
	[AuditDate] [datetime] NULL,
	[DeviceType] [nvarchar](1000) NULL,
	[ClientIP] [nvarchar](1000) NULL,
	[AuditType] [nvarchar](1000) NULL,
	[AuditTable] [nvarchar](1000) NULL,
	[SessionID] [nvarchar](1000) NULL,
	[RequestedPath] [nvarchar](1000) NULL,
	[ChangeDetail] [nvarchar](max) NULL,
	[TransactionID] [nvarchar](1000) NULL,
	[BranchId] [nvarchar](1000) NULL,
	[MemberName] [nvarchar](1000) NULL,
 CONSTRAINT [PK_AuditTrailLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AuthorizationLog]    Script Date: 11/15/2022 6:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuthorizationLog](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[LogID] [nvarchar](50) NOT NULL,
	[BranchId] [bigint] NULL,
	[PropertyName] [nvarchar](50) NOT NULL,
	[TableName] [nvarchar](100) NOT NULL,
	[TableColumn] [nvarchar](100) NULL,
	[TableID] [bigint] NOT NULL,
	[OldValue] [nvarchar](500) NULL,
	[NewValue] [nvarchar](500) NULL,
	[DataType] [nvarchar](10) NULL,
	[Description] [nvarchar](200) NULL,
	[RejectReason] [nvarchar](500) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[AuthorizedDate] [datetime] NULL,
	[AuthorizedBy] [nvarchar](10) NULL,
	[PrimaryTableFlag] [int] NULL,
	[Status] [nvarchar](1) NOT NULL,
	[LastAction] [nvarchar](5) NOT NULL,
 CONSTRAINT [PK_AuthorizationLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[B_Account]    Script Date: 11/15/2022 6:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[B_Account](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[B_CustomerId] [bigint] NOT NULL,
	[B_ProductId] [bigint] NOT NULL,
	[Duration] [int] NOT NULL,
	[InstallmentType] [int] NOT NULL,
	[AccountNumber] [varchar](13) NOT NULL,
	[OpeningDate] [datetime] NOT NULL,
	[DepositAmount] [float] NOT NULL,
	[SignatoryType] [int] NOT NULL,
	[LastInterestPostedDate] [datetime] NULL,
	[Status] [int] NOT NULL,
	[ClosingDate] [datetime] NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[AuthorizedBy] [nvarchar](10) NULL,
	[AuthorizedDate] [datetime] NULL,
	[ClosingBy] [nvarchar](10) NULL,
	[DormantBy] [nvarchar](10) NULL,
	[DormantDate] [datetime] NULL,
	[ReopenedBy] [nvarchar](10) NULL,
	[ReopenedDate] [datetime] NULL,
	[InstructionOnMaturity] [int] NULL,
	[MaturityDate] [datetime] NULL,
	[RolloverDate] [datetime] NULL,
	[RolloverBy] [nvarchar](10) NULL,
	[MaturityAmount] [float] NULL,
	[InterestRate] [float] NULL,
	[InactiveDate] [datetime] NULL,
	[InactiveBy] [nvarchar](10) NULL,
	[BlockType] [int] NOT NULL,
	[BlockedDate] [datetime] NULL,
	[BlockedBy] [nvarchar](10) NULL,
	[Client] [int] NOT NULL,
	[P_LoanOfficerId] [bigint] NULL,
	[MngrAssignDate] [datetime] NULL,
 CONSTRAINT [PK_B_Account_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_B_Account_AccountNumber] UNIQUE NONCLUSTERED 
(
	[AccountNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[B_BankingReportPermission]    Script Date: 11/15/2022 6:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[B_BankingReportPermission](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
	[ReportName] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_B_BankingReportPermission_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[B_BlackListedPerson]    Script Date: 11/15/2022 6:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[B_BlackListedPerson](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Surname] [varchar](100) NOT NULL,
	[OtherName] [varchar](100) NOT NULL,
	[TypeOfId] [int] NOT NULL,
	[DateOfBirth] [datetime] NOT NULL,
	[IdentityNumber1] [varchar](50) NULL,
	[IdentityNumber2] [varchar](50) NULL,
	[HRM_CountryId] [bigint] NOT NULL,
	[PhoneNumber] [varchar](50) NULL,
	[ResidentialAddress] [varchar](300) NULL,
	[PostalAddress] [varchar](300) NULL,
 CONSTRAINT [PK_B_BlackListedPerson] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[B_ChequeBook]    Script Date: 11/15/2022 6:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[B_ChequeBook](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[B_AccountId] [bigint] NOT NULL,
	[TotalLeaf] [int] NOT NULL,
	[StartingNumber] [bigint] NOT NULL,
	[EndingNumber] [bigint] NOT NULL,
	[IssueDate] [datetime] NOT NULL,
	[IssuedBy] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_B_ChequeBook_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[B_ChequeLeaf]    Script Date: 11/15/2022 6:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[B_ChequeLeaf](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[B_ChequeBookId] [bigint] NOT NULL,
	[B_TransactionId] [bigint] NULL,
	[Number] [bigint] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_B_ChequeLeaf_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[B_Customer]    Script Date: 11/15/2022 6:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[B_Customer](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[P_MemberId] [bigint] NULL,
	[Type] [int] NOT NULL,
	[CustomerNumber] [varchar](10) NOT NULL,
	[FullName] [varchar](100) NOT NULL,
	[IdentityNumber] [varchar](50) NULL,
	[Nationality] [varchar](30) NULL,
	[DateOfBirth] [datetime] NULL,
	[Occupation] [varchar](50) NULL,
	[Position] [varchar](50) NULL,
	[EmployerName] [varchar](50) NULL,
	[InstitutionType] [int] NULL,
	[BusinessNature] [varchar](50) NULL,
	[StatusVerified] [bit] NOT NULL,
	[Incorporated] [bit] NOT NULL,
	[ResidentialAddress] [varchar](300) NOT NULL,
	[PostalAddress] [varchar](300) NOT NULL,
	[ContactNumber] [varchar](50) NOT NULL,
	[IdentityProof] [int] NULL,
	[AddressProof] [int] NOT NULL,
	[AccountPurpose] [int] NOT NULL,
	[FundSources] [int] NOT NULL,
	[DepositNumberPerMonth] [int] NOT NULL,
	[DepositAmountPerMonth] [float] NOT NULL,
	[WithdrawalNumberPerMonth] [int] NOT NULL,
	[WithdrawalAmountPerMonth] [float] NOT NULL,
	[CustomerLevel] [int] NOT NULL,
	[Category] [int] NOT NULL,
	[CategorySpecification] [varchar](100) NULL,
	[WealthSource] [int] NULL,
	[EstimatedNetWorth] [float] NULL,
	[IsPotentialCustomer] [bit] NOT NULL,
	[Photo] [image] NULL,
	[Signature] [image] NULL,
	[Status] [int] NOT NULL,
	[ClosingDate] [datetime] NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[AuthorizedBy] [nvarchar](10) NULL,
	[AuthorizedDate] [datetime] NULL,
	[Sex] [int] NULL,
	[NomineeName] [varchar](100) NOT NULL,
	[NomineeRelation] [varchar](50) NOT NULL,
	[NomineeDateOfBirth] [datetime] NOT NULL,
	[NomineeAddress] [varchar](300) NOT NULL,
	[NomineeContactNumber] [varchar](100) NOT NULL,
	[ClosingBy] [nvarchar](10) NULL,
	[AdmissionDate] [datetime] NOT NULL,
	[P_LoanOfficerId] [bigint] NULL,
	[Client] [int] NOT NULL,
	[FirstName] [varchar](100) NULL,
	[LastName] [varchar](100) NULL,
	[IdentityNumberIssueDate] [datetime] NULL,
	[NomineePhoto] [image] NULL,
	[NomineeSignature] [image] NULL,
	[SecondaryIdentityNumber] [varchar](50) NULL,
	[SecondaryIdentityProof] [int] NULL,
	[SecondaryIdentityNumberIssueDate] [datetime] NULL,
 CONSTRAINT [PK_B_Customer_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_B_Customer_CustomerNumber] UNIQUE NONCLUSTERED 
(
	[CustomerNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[B_CustomerMovement]    Script Date: 11/15/2022 6:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[B_CustomerMovement](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_LoanOfficerId] [bigint] NOT NULL,
	[B_CustomerId] [bigint] NOT NULL,
	[StartingDate] [datetime] NOT NULL,
	[EndingDate] [datetime] NOT NULL,
 CONSTRAINT [PK_B_CustomerMovement_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_B_CustomerMovement_B_CustomerId_EndingDate] UNIQUE NONCLUSTERED 
(
	[B_CustomerId] ASC,
	[EndingDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_B_CustomerMovement_B_CustomerId_StartingDate] UNIQUE NONCLUSTERED 
(
	[B_CustomerId] ASC,
	[StartingDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[B_DurationInstallmentType]    Script Date: 11/15/2022 6:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[B_DurationInstallmentType](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[B_ProductId] [bigint] NOT NULL,
	[Duration] [int] NOT NULL,
	[InstallmentType] [int] NOT NULL,
	[StartingDate] [datetime] NOT NULL,
	[EndingDate] [datetime] NOT NULL,
	[SortOrder] [int] NOT NULL,
 CONSTRAINT [PK_B_DurationInstallmentType_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_B_DurationInstallmentType_B_ProductId_Duration_InstallmentType] UNIQUE NONCLUSTERED 
(
	[B_ProductId] ASC,
	[Duration] ASC,
	[InstallmentType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[B_InterestRate]    Script Date: 11/15/2022 6:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[B_InterestRate](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[B_ProductId] [bigint] NOT NULL,
	[Duration] [int] NOT NULL,
	[InstallmentType] [int] NOT NULL,
	[InterestRate] [varchar](max) NOT NULL,
	[StartingDate] [datetime] NOT NULL,
	[EndingDate] [datetime] NOT NULL,
	[RateType] [int] NOT NULL,
 CONSTRAINT [PK_B_InterestRate_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[B_JournalStatus]    Script Date: 11/15/2022 6:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[B_JournalStatus](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Processed] [bit] NOT NULL,
 CONSTRAINT [PK_B_JournalStatus_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_B_JournalStatus_BranchId_Date] UNIQUE NONCLUSTERED 
(
	[BranchId] ASC,
	[Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[B_OldTransaction]    Script Date: 11/15/2022 6:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[B_OldTransaction](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[B_AccountId] [bigint] NOT NULL,
	[ReferenceId] [bigint] NULL,
	[BranchId] [bigint] NOT NULL,
	[RemoteBranchId] [bigint] NULL,
	[Type] [int] NOT NULL,
	[Process] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Debit] [float] NOT NULL,
	[Credit] [float] NOT NULL,
	[A_AccountId] [bigint] NULL,
	[ChequeNumber] [varchar](20) NULL,
	[Description] [varchar](200) NOT NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[AuthorizedBy] [nvarchar](10) NULL,
	[AuthorizedDate] [datetime] NULL,
	[Status] [int] NOT NULL,
	[AccountNumber] [varchar](13) NOT NULL,
 CONSTRAINT [PK_B_OldTransaction_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[B_Product]    Script Date: 11/15/2022 6:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[B_Product](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[B_ProductTypeId] [bigint] NOT NULL,
	[ShortName] [varchar](100) NOT NULL,
	[DisplayName] [varchar](100) NULL,
	[Nature] [int] NOT NULL,
	[AllowMultiple] [int] NOT NULL,
	[StartingDate] [datetime] NOT NULL,
	[EndingDate] [datetime] NOT NULL,
	[SortOrder] [int] NOT NULL,
 CONSTRAINT [PK_B_Product_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[B_ProductType]    Script Date: 11/15/2022 6:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[B_ProductType](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[DisplayName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_B_ProductType_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_B_ProductType_DisplayName] UNIQUE NONCLUSTERED 
(
	[DisplayName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_B_ProductType_Name] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[B_StandingInstruction]    Script Date: 11/15/2022 6:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[B_StandingInstruction](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[Type] [int] NOT NULL,
	[Frequency] [int] NOT NULL,
	[StartingDate] [datetime] NOT NULL,
	[NextExecutionDate] [datetime] NOT NULL,
	[LastExecutionDate] [datetime] NULL,
	[ExecutionTime] [int] NOT NULL,
	[ExpiryDate] [datetime] NOT NULL,
	[B_DebitAccountId] [bigint] NOT NULL,
	[B_CreditAccountId] [bigint] NULL,
	[P_LoanAccountId] [bigint] NULL,
	[AmountType] [int] NOT NULL,
	[Amount] [float] NULL,
	[Status] [int] NOT NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[AuthorizedBy] [nvarchar](10) NULL,
	[AuthorizedDate] [datetime] NULL,
 CONSTRAINT [PK_B_StandingInstruction_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[B_StandingInstructionExecution]    Script Date: 11/15/2022 6:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[B_StandingInstructionExecution](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[B_StandingInstructionId] [bigint] NOT NULL,
	[B_DebitTransactionId] [bigint] NOT NULL,
	[B_CreditTransactionId] [bigint] NULL,
	[P_LoanTransactionId] [bigint] NULL,
	[Date] [datetime] NOT NULL,
	[Amount] [float] NOT NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_B_StandingInstructionExecution_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[B_StandingInstructionExecution_Backup]    Script Date: 11/15/2022 6:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[B_StandingInstructionExecution_Backup](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[B_StandingInstructionId] [bigint] NOT NULL,
	[B_DebitTransactionId] [bigint] NOT NULL,
	[B_CreditTransactionId] [bigint] NULL,
	[P_LoanTransactionId] [bigint] NULL,
	[Date] [datetime] NOT NULL,
	[Amount] [float] NOT NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[B_Transaction]    Script Date: 11/15/2022 6:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[B_Transaction](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[B_AccountId] [bigint] NOT NULL,
	[ReferenceId] [bigint] NULL,
	[BranchId] [bigint] NOT NULL,
	[RemoteBranchId] [bigint] NULL,
	[Type] [int] NOT NULL,
	[Process] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Debit] [float] NOT NULL,
	[Credit] [float] NOT NULL,
	[A_AccountId] [bigint] NULL,
	[ChequeNumber] [varchar](20) NULL,
	[Description] [varchar](200) NOT NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[AuthorizedBy] [nvarchar](10) NULL,
	[AuthorizedDate] [datetime] NULL,
	[Status] [int] NOT NULL,
	[Client] [int] NOT NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[AuthorizeStatus] [nvarchar](1) NULL,
 CONSTRAINT [PK_B_Transaction_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[B_Transaction_backup_04Jan2022]    Script Date: 11/15/2022 6:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[B_Transaction_backup_04Jan2022](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[B_AccountId] [bigint] NOT NULL,
	[ReferenceId] [bigint] NULL,
	[BranchId] [bigint] NOT NULL,
	[RemoteBranchId] [bigint] NULL,
	[Type] [int] NOT NULL,
	[Process] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Debit] [float] NOT NULL,
	[Credit] [float] NOT NULL,
	[A_AccountId] [bigint] NULL,
	[ChequeNumber] [varchar](20) NULL,
	[Description] [varchar](200) NOT NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[AuthorizedBy] [nvarchar](10) NULL,
	[AuthorizedDate] [datetime] NULL,
	[Status] [int] NOT NULL,
	[Client] [int] NOT NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[AuthorizeStatus] [nvarchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[B_TransactionDenomination]    Script Date: 11/15/2022 6:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[B_TransactionDenomination](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[B_TransactionId] [bigint] NOT NULL,
	[Type] [int] NOT NULL,
	[Denomination] [int] NOT NULL,
	[Count] [int] NOT NULL,
 CONSTRAINT [PK_B_TransactionDenomination_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[B_VaultTransaction]    Script Date: 11/15/2022 6:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[B_VaultTransaction](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Type] [int] NOT NULL,
	[Debit] [float] NOT NULL,
	[Credit] [float] NOT NULL,
	[Description] [varchar](200) NOT NULL,
	[CashierUserLogin] [nvarchar](10) NULL,
	[A_TransactionId] [bigint] NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[A_AccountId] [bigint] NULL,
	[RemoteBranchId] [bigint] NULL,
	[vaultTransactionId] [bigint] NULL,
	[Status] [nvarchar](10) NULL,
	[ApprovedBy] [nvarchar](10) NULL,
	[ApprovedDate] [datetime] NULL,
 CONSTRAINT [PK_B_VaultTransaction_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[B_VaultTransactionDenomination]    Script Date: 11/15/2022 6:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[B_VaultTransactionDenomination](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[B_VaultTransactionId] [bigint] NOT NULL,
	[Type] [int] NOT NULL,
	[Denomination] [int] NOT NULL,
	[Count] [int] NOT NULL,
 CONSTRAINT [PK_B_VaultTransactionDenomination_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Barangay]    Script Date: 11/15/2022 6:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Barangay](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[MunicipalityId] [bigint] NOT NULL,
	[Name] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Barangay_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BoGService]    Script Date: 11/15/2022 6:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoGService](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[IsProcessed] [bit] NULL,
	[Reference] [varchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[UserMail] [varchar](100) NULL,
	[BeginDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Status] [int] NULL,
	[Progression] [varchar](50) NULL,
	[RequestedOn] [datetime] NULL,
	[RequestedBy] [varchar](50) NULL,
	[ProcessingStartOn] [datetime] NULL,
	[ProcessingEndOn] [datetime] NULL,
	[Path] [nvarchar](200) NULL,
	[ReportName] [varchar](200) NULL,
	[ReturnsTypeId] [varchar](200) NULL,
	[RevisionsId] [varchar](200) NULL,
	[FromDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
 CONSTRAINT [PK_BoGService] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Branch]    Script Date: 11/15/2022 6:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branch](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[RegionId] [bigint] NOT NULL,
	[ParentId] [bigint] NULL,
	[GrandParentId] [bigint] NULL,
	[Code] [int] NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[OpeningDate] [datetime] NOT NULL,
	[LocalName] [nvarchar](100) NULL,
	[MobileNumber] [varchar](50) NULL,
	[IsActive] [bit] NOT NULL,
	[LocationType] [int] NOT NULL,
	[AgreementDate] [datetime] NULL,
	[FirstDisbursementDate] [datetime] NULL,
	[ContactPerson] [varchar](200) NULL,
	[LandlordName] [varchar](200) NULL,
	[Address] [varchar](500) NULL,
	[PostCode] [varchar](100) NULL,
	[Email] [varchar](200) NULL,
	[ModemNumber] [varchar](200) NULL,
	[NearestLocation] [varchar](200) NULL,
	[ClosingDate] [datetime] NULL,
	[SortOrder] [int] NOT NULL,
	[AdminDistrictName] [varchar](200) NULL,
	[GovtRegionId] [int] NULL,
	[AgreementEndDate] [datetime] NULL,
	[PermanentPinCode] [varchar](10) NULL,
	[BankName] [varchar](100) NULL,
	[BankBranchName] [varchar](100) NULL,
	[BankAccountNumber] [varchar](50) NULL,
	[IFSCCode] [varchar](50) NULL,
	[TinNumber] [nvarchar](50) NULL,
	[MPesaInitiatorName] [nvarchar](100) NULL,
	[MPesaSecurityCredential] [nvarchar](500) NULL,
	[MPesaBulkShortCode] [nvarchar](100) NULL,
	[MPesaResultUrl] [nvarchar](200) NULL,
	[MPesaQueueTimeOutUrl] [nvarchar](200) NULL,
	[ConsumerKey] [nvarchar](100) NULL,
	[ConsumerSecret] [nvarchar](100) NULL,
	[IsMPesaEnabled] [bit] NULL,
 CONSTRAINT [PK_Branch_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_Branch_Code] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Branch2]    Script Date: 11/15/2022 6:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branch2](
	[Id] [int] NOT NULL,
	[Code] [int] NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[OpeningDate] [datetime] NOT NULL,
	[LocalName] [nvarchar](100) NULL,
	[MobileNumber] [varchar](50) NULL,
	[RegionId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsLocal] [bit] NOT NULL,
	[LocationType] [int] NOT NULL,
	[AgreementDate] [datetime] NULL,
	[FirstDisbursementDate] [datetime] NULL,
	[ContactPerson] [varchar](200) NULL,
	[LandlordName] [varchar](200) NULL,
	[Address] [varchar](500) NULL,
	[PostCode] [varchar](100) NULL,
	[Email] [varchar](200) NULL,
	[ModemNumber] [varchar](200) NULL,
	[NearestLocation] [varchar](200) NULL,
	[ParentCode] [int] NULL,
	[ClosingDate] [datetime] NULL,
	[SortOrder] [int] NOT NULL,
	[GrandParentCode] [int] NULL,
	[AreaType] [varchar](200) NULL,
	[AdminDistrictName] [varchar](200) NULL,
	[GovtRegionId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Calendar]    Script Date: 11/15/2022 6:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calendar](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[Date] [datetime] NOT NULL,
	[IsWeeklyHoliday] [bit] NOT NULL,
	[IsSpecialHoliday] [bit] NOT NULL,
	[Despcription] [nvarchar](100) NULL,
	[IsLockDown] [bit] NULL,
	[InterestWaived] [bit] NULL,
 CONSTRAINT [PK_Calendar_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_Calendar_BranchId_Date] UNIQUE NONCLUSTERED 
(
	[BranchId] ASC,
	[Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CalendarGuide]    Script Date: 11/15/2022 6:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CalendarGuide](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[Date] [datetime] NOT NULL,
	[IsWeeklyHoliday] [bit] NOT NULL,
	[IsSpecialHoliday] [bit] NOT NULL,
	[Despcription] [nvarchar](100) NULL,
 CONSTRAINT [PK_CalendarGuide_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_CalendarGuide_BranchId_Date] UNIQUE NONCLUSTERED 
(
	[BranchId] ASC,
	[Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Command]    Script Date: 11/15/2022 6:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Command](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[DisplayName] [nvarchar](100) NOT NULL,
	[PermissionType] [nvarchar](100) NOT NULL,
	[PermissionCommand] [nvarchar](100) NULL,
	[ToolTipText] [nvarchar](100) NULL,
	[ImageUrl] [nvarchar](100) NULL,
	[SeperatorUrl] [nvarchar](100) NULL,
	[NavigateUrl] [nvarchar](256) NULL,
	[SortOrder] [int] NOT NULL,
 CONSTRAINT [PK_Command_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_Command_Name] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Config]    Script Date: 11/15/2022 6:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Config](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Key] [varchar](100) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[DataType] [varchar](100) NOT NULL,
	[ReadableDataType] [varchar](100) NOT NULL,
	[Value] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Config_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_Config_Key] UNIQUE NONCLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConfigMakerChecker]    Script Date: 11/15/2022 6:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConfigMakerChecker](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OperationName] [nvarchar](50) NULL,
	[IsEnabled] [bit] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_ConfigMakerChecker] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatabaseBackupLog]    Script Date: 11/15/2022 6:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatabaseBackupLog](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Type] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[File] [varchar](512) NOT NULL,
	[Message] [varchar](512) NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[StartingDate] [datetime] NOT NULL,
	[EndingDate] [datetime] NULL,
 CONSTRAINT [PK_DatabaseBackupLog_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatabaseConfiguration]    Script Date: 11/15/2022 6:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatabaseConfiguration](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[InstallationId] [bigint] NOT NULL,
	[Sequence] [bigint] NOT NULL,
	[Subsequence] [bigint] NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Version] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](256) NULL,
	[Script] [text] NULL,
 CONSTRAINT [PK_DatabaseConfiguration_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_DatabaseConfiguration_Sequence_Subsequence] UNIQUE NONCLUSTERED 
(
	[Sequence] ASC,
	[Subsequence] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DbTransaction]    Script Date: 11/15/2022 6:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DbTransaction](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[Client] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DbTransaction_Id] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DbTransaction_Archive_27032022]    Script Date: 11/15/2022 6:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DbTransaction_Archive_27032022](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[Client] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DbTransaction_Archive_27032022_Id] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [DbTransactionPartitionScheme]([CreatedDate])
GO
/****** Object:  Table [dbo].[DbTransactionDetails]    Script Date: 11/15/2022 6:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DbTransactionDetails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[DbTransactionId] [bigint] NOT NULL,
	[Type] [nvarchar](10) NOT NULL,
	[TableName] [nvarchar](100) NOT NULL,
	[IdentityColumn] [nvarchar](100) NOT NULL,
	[IdentityValue] [nvarchar](100) NOT NULL,
	[Value] [xml] NULL,
	[DateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_DbTransactionDetails_Id] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DbTransactionDetails_Archive_27032022]    Script Date: 11/15/2022 6:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DbTransactionDetails_Archive_27032022](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[DbTransactionId] [bigint] NOT NULL,
	[Type] [nvarchar](10) NOT NULL,
	[TableName] [nvarchar](100) NOT NULL,
	[IdentityColumn] [nvarchar](100) NOT NULL,
	[IdentityValue] [nvarchar](100) NOT NULL,
	[Value] [xml] NULL,
	[DateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_DbTransactionDetails_Archive_27032022_Id] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [DbTransactionDetailsPartitionScheme]([DateTime])
GO
/****** Object:  Table [dbo].[DBUpgradeLog]    Script Date: 11/15/2022 6:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DBUpgradeLog](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CurrentXML] [text] NULL,
	[ChangeLog] [text] NULL,
	[UpgradedBy] [nvarchar](50) NULL,
	[UpgradedOn] [datetime] NULL,
	[Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_DBUpgradeLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Denomination]    Script Date: 11/15/2022 6:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Denomination](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Type] [bigint] NOT NULL,
	[Value] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[District]    Script Date: 11/15/2022 6:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[District](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ZoneId] [bigint] NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_District] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentList]    Script Date: 11/15/2022 6:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentList](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[DocumentName] [varchar](50) NULL,
	[Status] [int] NULL,
	[CreateDate] [datetime] NULL,
	[FileName] [nvarchar](50) NULL,
 CONSTRAINT [PK_DocumentList] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentManagement]    Script Date: 11/15/2022 6:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentManagement](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](30) NULL,
	[DocumentListId] [bigint] NOT NULL,
	[ReferenceId] [bigint] NOT NULL,
	[TypeOfReference] [varchar](50) NULL,
	[SyncStatus] [int] NULL,
	[ImageStatus] [int] NULL,
	[ImagePathLocal] [nvarchar](max) NULL,
	[ImagePathDrive] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[DriveSyncDate] [datetime] NULL,
	[FileSize] [nvarchar](10) NULL,
 CONSTRAINT [PK_DocumentManagement] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentManagementHistory]    Script Date: 11/15/2022 6:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentManagementHistory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](30) NULL,
	[UpdaterUserId] [nvarchar](30) NULL,
	[DocumentListId] [bigint] NOT NULL,
	[ReferenceId] [bigint] NOT NULL,
	[TypeOfReference] [varchar](50) NULL,
	[SyncStatus] [int] NULL,
	[ImageStatus] [int] NULL,
	[ImagePathLocal] [nvarchar](max) NULL,
	[ImagePathDrive] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[DriveSyncDate] [datetime] NULL,
	[TimeStamp] [datetime] NULL,
 CONSTRAINT [PK_DocumentManagementHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailNotificationConfig]    Script Date: 11/15/2022 6:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailNotificationConfig](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[NotificationFor] [int] NOT NULL,
	[NotificationType] [int] NOT NULL,
	[To] [nvarchar](250) NULL,
	[Cc] [nvarchar](250) NULL,
	[Bcc] [nvarchar](250) NULL,
	[MobileNumber] [nvarchar](max) NULL,
	[Subject] [nvarchar](250) NULL,
	[Content] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailOTP]    Script Date: 11/15/2022 6:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailOTP](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[OTP] [bigint] NOT NULL,
	[OTPSendTime] [datetime] NOT NULL,
	[OTPExpireTime] [datetime] NOT NULL,
	[IsUsed] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExpenseConfiguration]    Script Date: 11/15/2022 6:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExpenseConfiguration](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[A_AccountId] [bigint] NOT NULL,
	[MaximumTransactionAllowedPerMonth] [int] NOT NULL,
	[IsMaximumTransactionAllowedPerMonth] [bit] NOT NULL,
	[MaximumAcceptableValuePerTransaction] [int] NOT NULL,
	[IsMaximumAcceptableValuePerTransaction] [bit] NOT NULL,
	[MaximumAcceptableValuePerMonth] [int] NOT NULL,
	[IsMaximumAcceptableValuePerMonth] [bit] NOT NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[AuthorizedBy] [nvarchar](10) NULL,
	[AuthorizedDate] [datetime] NULL,
 CONSTRAINT [PK_ExpenseConfiguration] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FingerprintConfiguration]    Script Date: 11/15/2022 6:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FingerprintConfiguration](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[AuthorizedBy] [nvarchar](10) NULL,
	[AuthorizedDate] [datetime] NULL,
 CONSTRAINT [PK_FingerprintConfiguration] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GovtRegion]    Script Date: 11/15/2022 6:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GovtRegion](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_GovtRegion_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_AcademicQualification]    Script Date: 11/15/2022 6:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_AcademicQualification](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HRM_EmployeeId] [bigint] NOT NULL,
	[Level] [varchar](100) NOT NULL,
	[Title] [varchar](200) NOT NULL,
	[Major] [varchar](100) NOT NULL,
	[InstituteName] [varchar](100) NOT NULL,
	[Result] [varchar](100) NOT NULL,
	[PassingYear] [varchar](100) NOT NULL,
	[Duration] [varchar](100) NULL,
	[Achievement] [varchar](200) NULL,
	[SortOrder] [int] NOT NULL,
 CONSTRAINT [PK_HRM_AcademicQualification_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_Address]    Script Date: 11/15/2022 6:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_Address](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](200) NOT NULL,
	[District] [nvarchar](100) NULL,
	[PostCode] [int] NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
 CONSTRAINT [PK_HRM_Address_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_CarryForwardBreakDownHolding]    Script Date: 11/15/2022 6:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_CarryForwardBreakDownHolding](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HRM_EmployeeId] [bigint] NOT NULL,
	[HRM_LeaveBalanceId] [bigint] NOT NULL,
	[HRM_CarryForwardBreakDownYear] [int] NOT NULL,
	[AmountPerYear] [numeric](6, 2) NOT NULL,
	[Leave_ProcessingYear] [int] NOT NULL,
	[EntryDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_City]    Script Date: 11/15/2022 6:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_City](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HRM_CountryId] [bigint] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[SortOrder] [int] NOT NULL,
 CONSTRAINT [PK_HRM_City_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_CompensatoryLeave]    Script Date: 11/15/2022 6:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_CompensatoryLeave](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HRM_EmployeeId] [bigint] NOT NULL,
	[Date] [datetime] NOT NULL,
	[DayType] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[AuthorizedDate] [datetime] NULL,
	[AuthorizedBy] [nvarchar](100) NULL,
	[Purpose] [nvarchar](200) NULL,
	[Remarks] [nvarchar](200) NULL,
	[EntryUser] [nvarchar](10) NULL,
 CONSTRAINT [PK_HRM_CompensatoryLeave] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_ConsumeLeaveBreakDownHolding]    Script Date: 11/15/2022 6:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_ConsumeLeaveBreakDownHolding](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HRM_EmployeeId] [bigint] NOT NULL,
	[HRM_LeaveBalanceId] [bigint] NOT NULL,
	[HRM_ConsumeLeaveBreakDownYear] [int] NOT NULL,
	[AmountPerYear] [numeric](6, 2) NOT NULL,
	[Leave_ProcessingYear] [int] NOT NULL,
	[EntryDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_Country]    Script Date: 11/15/2022 6:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_Country](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[SortOrder] [int] NOT NULL,
 CONSTRAINT [PK_HRM_Country_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_Department]    Script Date: 11/15/2022 6:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_Department](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[SortOrder] [int] NOT NULL,
 CONSTRAINT [PK_H_Department_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_Designation]    Script Date: 11/15/2022 6:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_Designation](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[SortOrder] [int] NOT NULL,
 CONSTRAINT [PK_HRM_Designation_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_DropReason]    Script Date: 11/15/2022 6:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_DropReason](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Reason] [varchar](260) NOT NULL,
 CONSTRAINT [PK_HRM_DropReason_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_Employee]    Script Date: 11/15/2022 6:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_Employee](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Code] [int] NOT NULL,
	[NationalID] [nvarchar](20) NULL,
	[NIDExpiryDate] [datetime] NULL,
	[FatherName] [nvarchar](100) NOT NULL,
	[MotherName] [nvarchar](100) NOT NULL,
	[DateOfBirth] [datetime] NOT NULL,
	[BloodGroup] [int] NOT NULL,
	[Sex] [int] NOT NULL,
	[MaritalStatus] [int] NOT NULL,
	[Religion] [int] NOT NULL,
	[Photo] [image] NULL,
	[PermanentAddressId] [bigint] NOT NULL,
	[PresentAddressId] [bigint] NOT NULL,
	[AppointmentLetterDate] [datetime] NOT NULL,
	[AppointmentLetterNo] [nvarchar](100) NOT NULL,
	[JoiningDate] [datetime] NOT NULL,
	[EmploymentType] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[AttendenceId] [int] NULL,
	[CreateDate] [datetime] NULL,
	[Remarks] [varchar](150) NULL,
	[ProvidentFundNo] [varchar](12) NULL,
	[HealthInsuranceNo] [varchar](10) NULL,
	[AadhaarCardNo] [varchar](12) NULL,
	[FirstName] [varchar](100) NULL,
	[MiddleName] [varchar](100) NULL,
	[LastName] [varchar](100) NULL,
	[IsHoldingEmployee] [bit] NOT NULL,
 CONSTRAINT [PK_HRM_Employee_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_HRM_Employee_Code] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_EmployeeActingDesignation]    Script Date: 11/15/2022 6:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_EmployeeActingDesignation](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HRM_EmployeeId] [bigint] NOT NULL,
	[InchargedGradeId] [bigint] NOT NULL,
	[InchargedDesignationId] [bigint] NOT NULL,
	[FromDate] [datetime] NOT NULL,
	[ToDate] [datetime] NOT NULL,
 CONSTRAINT [PK_HRM_EmployeeActingDesignation_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_EmployeeAttendance]    Script Date: 11/15/2022 6:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_EmployeeAttendance](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HRM_EmployeeId] [bigint] NOT NULL,
	[EntryDateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_HRM_EmployeeAttendance] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_EmployeeBranch]    Script Date: 11/15/2022 6:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_EmployeeBranch](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HRM_EmployeeId] [bigint] NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
 CONSTRAINT [PK_HRM_EmployeeBranch_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_EmployeeContract]    Script Date: 11/15/2022 6:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_EmployeeContract](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HRM_EmployeeId] [bigint] NOT NULL,
	[LetterNo] [varchar](50) NOT NULL,
	[LetterDate] [datetime] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[Remarks] [nvarchar](150) NULL,
 CONSTRAINT [PK_HRM_EmployeeContract] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_EmployeeDepartment]    Script Date: 11/15/2022 6:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_EmployeeDepartment](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HRM_EmployeeId] [bigint] NOT NULL,
	[HRM_DepartmentId] [bigint] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
 CONSTRAINT [PK_H_EmployeeDepartment_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_EmployeeDesignation]    Script Date: 11/15/2022 6:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_EmployeeDesignation](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HRM_EmployeeId] [bigint] NOT NULL,
	[HRM_DesignationId] [bigint] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
 CONSTRAINT [PK_HRM_EmployeeDesignation_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_EmployeeDocument]    Script Date: 11/15/2022 6:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_EmployeeDocument](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HRM_EmployeeId] [bigint] NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[FileName] [nvarchar](100) NOT NULL,
	[UploadDate] [datetime] NOT NULL,
 CONSTRAINT [PK_HRM_EmployeeDocument_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_EmployeeDrop]    Script Date: 11/15/2022 6:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_EmployeeDrop](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HRM_EmployeeId] [bigint] NOT NULL,
	[Type] [int] NOT NULL,
	[LetterNo] [varchar](200) NOT NULL,
	[LetterDate] [datetime] NOT NULL,
	[DropDate] [datetime] NOT NULL,
	[Cause] [varchar](300) NULL,
	[HRM_DropReasonId] [bigint] NULL,
	[EntryDate] [datetime] NULL,
 CONSTRAINT [PK_HRM_EmployeeDrop_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_EmployeeDropHistory]    Script Date: 11/15/2022 6:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_EmployeeDropHistory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HRM_EmployeeId] [bigint] NOT NULL,
	[Type] [int] NOT NULL,
	[LetterNo] [varchar](200) NOT NULL,
	[LetterDate] [datetime] NOT NULL,
	[DropDate] [datetime] NOT NULL,
	[Cause] [varchar](300) NULL,
	[HRM_DropReasonId] [bigint] NULL,
	[Status] [bit] NOT NULL,
	[EntryDate] [datetime] NULL,
 CONSTRAINT [PK_HRM_EmployeeDropHistory_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_EmployeeGrade]    Script Date: 11/15/2022 6:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_EmployeeGrade](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HRM_EmployeeId] [bigint] NOT NULL,
	[HRM_GradeId] [bigint] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
 CONSTRAINT [PK_HRM_EmployeeGrade_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_EmployeeIncrementHeldup]    Script Date: 11/15/2022 6:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_EmployeeIncrementHeldup](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HRM_EmployeeId] [bigint] NOT NULL,
	[LetterNo] [varchar](200) NOT NULL,
	[LetterDate] [datetime] NOT NULL,
	[IncrementStop] [int] NOT NULL,
	[FromDate] [datetime] NOT NULL,
	[ToDate] [datetime] NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[Cause] [varchar](300) NULL,
 CONSTRAINT [PK_HRM_EmployeeIncrementHeldup_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_EmployeeLeave]    Script Date: 11/15/2022 6:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_EmployeeLeave](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HRM_EmployeeId] [bigint] NOT NULL,
	[Type] [int] NOT NULL,
	[JoinType] [int] NOT NULL,
	[LetterNo] [varchar](200) NOT NULL,
	[LetterDate] [datetime] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[Cause] [varchar](300) NULL,
 CONSTRAINT [PK_HRM_EmployeeLeave_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_EmployeeManager]    Script Date: 11/15/2022 6:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_EmployeeManager](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HRM_EmployeeId] [bigint] NOT NULL,
	[ManagerId] [bigint] NOT NULL,
 CONSTRAINT [PK_HRM_EmployeeManager_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_EmployeeNominee]    Script Date: 11/15/2022 6:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_EmployeeNominee](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HRM_EmployeeId] [bigint] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Address] [nvarchar](150) NOT NULL,
	[Relation] [int] NOT NULL,
	[Percentage] [numeric](6, 2) NOT NULL,
 CONSTRAINT [PK_HRM_EmployeeNominee_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_EmployeePenalty]    Script Date: 11/15/2022 6:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_EmployeePenalty](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HRM_EmployeeId] [bigint] NOT NULL,
	[LetterNo] [varchar](200) NULL,
	[LetterDate] [datetime] NOT NULL,
	[FineType] [varchar](250) NOT NULL,
	[FineTime] [int] NOT NULL,
	[FineAmount] [float] NOT NULL,
 CONSTRAINT [PK_HRM_EmployeePenalty_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_EmployeePermanent]    Script Date: 11/15/2022 6:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_EmployeePermanent](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HRM_EmployeeId] [bigint] NOT NULL,
	[LetterNo] [varchar](50) NOT NULL,
	[LetterDate] [datetime] NOT NULL,
	[PermanentDate] [datetime] NOT NULL,
	[Remarks] [varchar](250) NULL,
 CONSTRAINT [PK_HRM_EmployeePermanent] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_EmployeePromotion]    Script Date: 11/15/2022 6:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_EmployeePromotion](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HRM_EmployeeId] [bigint] NOT NULL,
	[Type] [int] NOT NULL,
	[LetterNo] [varchar](200) NOT NULL,
	[LetterDate] [datetime] NOT NULL,
	[OldHRM_GradeId] [bigint] NOT NULL,
	[NewHRM_GradeId] [bigint] NOT NULL,
	[OldHRM_DesignationId] [bigint] NOT NULL,
	[NewHRM_DesignationId] [bigint] NOT NULL,
	[PromotionDate] [datetime] NOT NULL,
	[Remarks] [varchar](300) NULL,
 CONSTRAINT [PK_HRM_EmployeePromotion_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_EmployeeReemployment]    Script Date: 11/15/2022 6:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_EmployeeReemployment](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HRM_EmployeeId] [bigint] NOT NULL,
	[DropoutType] [int] NOT NULL,
	[LetterNo] [varchar](200) NOT NULL,
	[LetterDate] [datetime] NOT NULL,
	[FromDate] [datetime] NOT NULL,
	[ReemploymentDate] [datetime] NOT NULL,
	[SourceBranchId] [bigint] NOT NULL,
	[DestinationBranchId] [bigint] NOT NULL,
	[ReemploymentType] [int] NOT NULL,
	[Cause] [varchar](300) NULL,
 CONSTRAINT [PK_HRM_EmployeeReemployment_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_EmployeeRejoin]    Script Date: 11/15/2022 6:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_EmployeeRejoin](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HRM_EmployeeId] [bigint] NOT NULL,
	[LeaveType] [int] NOT NULL,
	[LetterNo] [varchar](200) NOT NULL,
	[LetterDate] [datetime] NOT NULL,
	[FromDate] [datetime] NOT NULL,
	[RejoinDate] [datetime] NOT NULL,
	[SourceBranchId] [bigint] NOT NULL,
	[DestinationBranchId] [bigint] NOT NULL,
	[RejoinType] [int] NOT NULL,
 CONSTRAINT [PK_HRM_EmployeeRejoin_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_EmployeeSalary]    Script Date: 11/15/2022 6:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_EmployeeSalary](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HRM_EmployeeId] [bigint] NOT NULL,
	[HRM_SalaryTypeId] [bigint] NOT NULL,
	[Amount] [float] NOT NULL,
 CONSTRAINT [PK_HRM_EmployeeSalary_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_EmployeeSpecialHonor]    Script Date: 11/15/2022 6:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_EmployeeSpecialHonor](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HRM_EmployeeId] [bigint] NOT NULL,
	[SubjectOfHonor] [varchar](300) NOT NULL,
	[LetterNo] [varchar](200) NOT NULL,
	[LetterDate] [datetime] NOT NULL,
 CONSTRAINT [PK_HRM_EmployeeSpecialHonor_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_EmployeeTransfer]    Script Date: 11/15/2022 6:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_EmployeeTransfer](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HRM_EmployeeId] [bigint] NOT NULL,
	[Type] [int] NOT NULL,
	[LetterNo] [varchar](200) NOT NULL,
	[LetterDate] [datetime] NOT NULL,
	[SourceBranchId] [bigint] NOT NULL,
	[DestinationBranchId] [bigint] NOT NULL,
	[JoiningDate] [datetime] NOT NULL,
	[Remarks] [varchar](300) NULL,
 CONSTRAINT [PK_HRM_EmployeeTransfer_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_EmployeeUnauthorizedAbsent]    Script Date: 11/15/2022 6:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_EmployeeUnauthorizedAbsent](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HRM_EmployeeId] [bigint] NOT NULL,
	[UnauthorizedAbsent] [numeric](6, 2) NULL,
	[Year] [int] NOT NULL,
 CONSTRAINT [PK_HRM_EmployeeUnauthorizedAbsent] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_EmployeeWaitingForPosting]    Script Date: 11/15/2022 6:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_EmployeeWaitingForPosting](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HRM_EmployeeId] [bigint] NOT NULL,
	[Type] [int] NOT NULL,
	[LetterNo] [varchar](200) NOT NULL,
	[LetterDate] [datetime] NOT NULL,
	[StartDate] [datetime] NOT NULL,
 CONSTRAINT [PK_HRM_EmployeeWaitingForPosting_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_EmployeeWarning]    Script Date: 11/15/2022 6:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_EmployeeWarning](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HRM_EmployeeId] [bigint] NOT NULL,
	[LetterNo] [varchar](200) NOT NULL,
	[LetterDate] [datetime] NOT NULL,
	[Duration] [varchar](100) NOT NULL,
	[TotalWarningTime] [int] NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[Cause] [varchar](300) NULL,
 CONSTRAINT [PK_HRM_EmployeeWarning_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_Experience]    Script Date: 11/15/2022 6:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_Experience](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HRM_EmployeeId] [bigint] NOT NULL,
	[CompanyName] [varchar](200) NOT NULL,
	[CompanyBusiness] [varchar](100) NOT NULL,
	[CompanyLocation] [varchar](100) NOT NULL,
	[PositionHeld] [varchar](100) NOT NULL,
	[Department] [varchar](100) NOT NULL,
	[Responsibilities] [varchar](1000) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[SortOrder] [int] NOT NULL,
 CONSTRAINT [PK_HRM_Experience_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_ExtraInfo]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_ExtraInfo](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HRM_EmployeeId] [bigint] NULL,
	[HRM_ExtraInfoConfigId] [bigint] NOT NULL,
	[FieldValue] [varchar](500) NULL,
 CONSTRAINT [PK_HRM_ExtraInfo_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_ExtraInfoAttachment]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_ExtraInfoAttachment](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HRM_EmployeeId] [bigint] NOT NULL,
	[FileName] [varchar](500) NOT NULL,
	[FileExtension] [varchar](50) NULL,
	[FileData] [varbinary](max) NOT NULL,
 CONSTRAINT [HRM_ExtraInfoAttachment_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_ExtraInfoConfig]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_ExtraInfoConfig](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[DataType] [varchar](30) NOT NULL,
	[DefaultValue] [varchar](150) NULL,
	[Required] [bit] NOT NULL,
	[Range] [varchar](50) NULL,
	[LookupValues] [varchar](max) NULL,
 CONSTRAINT [PK_HRM_ExtraInfoConfig_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_FestivalAndLateLeaveTrackForAnnualAndCasual]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_FestivalAndLateLeaveTrackForAnnualAndCasual](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HRM_LeaveTypeId] [bigint] NOT NULL,
	[HRM_EmployeeId] [bigint] NOT NULL,
	[HRM_LeaveApplicationId] [bigint] NOT NULL,
	[AnnualLeaveDeductAmountForFestivalLeave] [numeric](6, 2) NOT NULL,
	[CasualLeaveDeductAmountForFestivalLeave] [numeric](6, 2) NOT NULL,
	[AnnualLeaveDeductAmountForLateLeave] [numeric](6, 2) NOT NULL,
	[CasualLeaveDeductAmountForLateLeave] [numeric](6, 2) NOT NULL,
	[Year] [int] NOT NULL,
	[EntryDateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_HRM_FestivalLeaveTrackForAnnualAndCasual] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_Grade]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_Grade](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[SortOrder] [int] NOT NULL,
 CONSTRAINT [PK_HRM_Grade_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_GradeDesignation]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_GradeDesignation](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HRM_GradeId] [bigint] NOT NULL,
	[HRM_DesignationId] [bigint] NOT NULL,
 CONSTRAINT [PK_HRM_GradeDesignation_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_HoldingEmployeeLeaveBalance]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_HoldingEmployeeLeaveBalance](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HRM_EmployeeId] [bigint] NOT NULL,
	[CurrentYear] [numeric](2, 2) NOT NULL,
	[PreviousYear] [numeric](2, 2) NOT NULL,
	[SecondPreviousYear] [numeric](2, 2) NOT NULL,
	[TotalLeave] [numeric](2, 2) NOT NULL,
	[LeaveProcessingDate] [date] NOT NULL,
	[Year] [int] NOT NULL,
	[ProcessedBy] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_LeaveApplication]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_LeaveApplication](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HRM_EmployeeId] [bigint] NOT NULL,
	[HRM_LeaveTypeId] [bigint] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[TotalDays] [float] NOT NULL,
	[Purpose] [nvarchar](150) NOT NULL,
	[EntryUser] [nvarchar](50) NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[ApprovedBy] [bigint] NULL,
	[ApprovedDate] [datetime] NULL,
	[Remarks] [nvarchar](150) NULL,
	[Status] [int] NOT NULL,
	[AdjustedId] [bigint] NULL,
	[MedicalCertificate] [varbinary](max) NULL,
 CONSTRAINT [PK_HRM_LeaveApplication_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_LeaveApplicationDetails]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_LeaveApplicationDetails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HRM_LeaveApplicationId] [bigint] NOT NULL,
	[LeaveDate] [datetime] NOT NULL,
	[LengthType] [int] NOT NULL,
	[LeaveLength] [float] NOT NULL,
 CONSTRAINT [PK_HRM_LeaveApplicationDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_LeaveBalance]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_LeaveBalance](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HRM_EmployeeId] [bigint] NOT NULL,
	[HRM_LeaveTypeId] [bigint] NOT NULL,
	[Date] [datetime] NOT NULL,
	[CarryForward] [float] NULL,
	[CurrentYear] [float] NOT NULL,
	[Balance] [float] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[TotalLeave] [float] NOT NULL,
	[ConsumeLeave] [float] NOT NULL,
	[CarryForwardReference] [nvarchar](50) NULL,
 CONSTRAINT [PK_HRM_Leavebalance] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_LeaveCarryForwardHistoryHolding]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_LeaveCarryForwardHistoryHolding](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HRM_EmployeeId] [bigint] NOT NULL,
	[HRM_LeaveBalanceId] [bigint] NOT NULL,
	[HRM_LeaveCarryForwardYear] [int] NOT NULL,
	[AmountPerYear] [numeric](6, 2) NOT NULL,
	[EntryDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_LeaveProcess]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_LeaveProcess](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ProcessYear] [int] NOT NULL,
	[ExecutionDate] [datetime] NOT NULL,
	[ProcessUser] [varchar](50) NOT NULL,
	[ProcessEnd] [bit] NOT NULL,
 CONSTRAINT [PK_HRM_LeaveProcess] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_LeaveType]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_LeaveType](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[MaximumLeave] [int] NOT NULL,
	[IsCarryForward] [bit] NOT NULL,
	[IsCheckBalance] [bit] NOT NULL,
	[MaxCarryForward] [int] NULL,
	[AffectPayroll] [bit] NOT NULL,
	[Status] [bit] NOT NULL,
	[SortOrder] [int] NOT NULL,
 CONSTRAINT [PK_HRM_LeaveType_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_ManualAttendance]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_ManualAttendance](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HRM_EmployeeId] [bigint] NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[InTime] [time](0) NOT NULL,
	[OutTime] [time](0) NOT NULL,
	[Reason] [nvarchar](150) NOT NULL,
	[Status] [int] NOT NULL,
	[ApprovedBy] [bigint] NULL,
 CONSTRAINT [PK_HRM_ManualAttendance_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_OfficeTime]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_OfficeTime](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[StartTime] [time](0) NOT NULL,
	[EndTime] [time](0) NOT NULL,
	[LateAllow] [int] NOT NULL,
 CONSTRAINT [PK_HRM_OfficeTime_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_ProfessionalQualification]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_ProfessionalQualification](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HRM_EmployeeId] [bigint] NOT NULL,
	[Certification] [varchar](200) NOT NULL,
	[InstituteName] [varchar](100) NOT NULL,
	[Location] [varchar](100) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[SortOrder] [int] NOT NULL,
 CONSTRAINT [PK_HRM_ProfessionalQualification_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_ReportConfig]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_ReportConfig](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Query] [text] NOT NULL,
	[DateBetween] [bit] NOT NULL,
	[ShowFilter] [bit] NOT NULL,
 CONSTRAINT [PK_HRM_ReportConfig_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_ResetPasswordRequest]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_ResetPasswordRequest](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserLogin] [nvarchar](10) NOT NULL,
	[GUID] [nvarchar](50) NOT NULL,
	[URL] [nvarchar](100) NOT NULL,
	[IsExpired] [bit] NOT NULL,
	[IsPasswordReset] [bit] NOT NULL,
	[ExpiredDate] [datetime] NOT NULL,
	[PasswordResetDate] [datetime] NULL,
 CONSTRAINT [PK_HRM_ResetPasswordRequest_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_SalaryType]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_SalaryType](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[IsBasic] [bit] NOT NULL,
	[IsFixed] [bit] NOT NULL,
	[Status] [bit] NOT NULL,
	[SortOrder] [int] NOT NULL,
 CONSTRAINT [PK_HRM_SalaryType_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_TotalLeaveBreakDownHolding]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_TotalLeaveBreakDownHolding](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HRM_EmployeeId] [bigint] NOT NULL,
	[HRM_LeaveBalanceId] [bigint] NOT NULL,
	[HRM_TotalLeaveBreakDownYear] [int] NOT NULL,
	[AmountPerYear] [numeric](6, 2) NOT NULL,
	[Leave_ProcessingYear] [int] NOT NULL,
	[EntryDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_Training]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_Training](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HRM_EmployeeId] [bigint] NOT NULL,
	[Title] [varchar](200) NOT NULL,
	[Topics] [varchar](200) NOT NULL,
	[InstituteName] [varchar](100) NOT NULL,
	[Country] [varchar](100) NOT NULL,
	[Location] [varchar](100) NOT NULL,
	[TrainingYear] [varchar](100) NOT NULL,
	[Duration] [varchar](100) NULL,
	[SortOrder] [int] NOT NULL,
 CONSTRAINT [PK_HRM_Training_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_Travel]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_Travel](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HRM_EmployeeId] [bigint] NOT NULL,
	[FromDate] [datetime] NOT NULL,
	[ToDate] [datetime] NOT NULL,
	[Description] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_HRM_Travel_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRM_TravelDetails]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRM_TravelDetails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HRM_TravelId] [bigint] NOT NULL,
	[DepartureHRM_CityId] [bigint] NOT NULL,
	[DepartureDate] [datetime] NOT NULL,
	[ArrivalHRM_CityId] [bigint] NOT NULL,
	[ArrivalDate] [datetime] NOT NULL,
	[FlightNumbers] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_HRM_TravelDetails_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Installation]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Installation](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Location] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Version] [nvarchar](50) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[Status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Installation_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_Installation_Type_Version] UNIQUE NONCLUSTERED 
(
	[Type] ASC,
	[Version] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobScheduleMonitor]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobScheduleMonitor](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[JobName] [nvarchar](50) NULL,
	[isSuccess] [bit] NULL,
	[TimeStamp] [datetime] NULL,
 CONSTRAINT [PK_JobScheduleMonitor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_BorrowerTarget]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_BorrowerTarget](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[ProgramId] [bigint] NOT NULL,
	[BorrowerTarget] [decimal](10, 2) NULL,
	[Year] [int] NULL,
	[StartingDate] [datetime] NOT NULL,
	[EndingDate] [datetime] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_CellingOfBankWithdrawalCash]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_CellingOfBankWithdrawalCash](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[CeilingOfCashOnHand] [decimal](10, 2) NULL,
	[CeilingOfBankWithdrawal] [decimal](10, 2) NULL,
	[Year] [int] NULL,
	[StartingDate] [datetime] NOT NULL,
	[EndingDate] [datetime] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_RentalInformation]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_RentalInformation](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[RentDate] [datetime] NOT NULL,
	[RentAmount] [decimal](10, 2) NOT NULL,
	[AdvanceAmount] [decimal](10, 2) NOT NULL,
	[SecurityDeposit] [decimal](10, 2) NOT NULL,
	[NextRenewalDate] [datetime] NOT NULL,
	[StartingDate] [datetime] NOT NULL,
	[EndingDate] [datetime] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_ReportConfig]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_ReportConfig](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Query] [text] NOT NULL,
	[DateBetween] [bit] NOT NULL,
	[ShowFilter] [bit] NOT NULL,
 CONSTRAINT [PK_M_ReportConfig_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberRoleInfo]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberRoleInfo](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_MemberId] [bigint] NOT NULL,
	[P_MemberRoleId] [bigint] NOT NULL,
	[P_GroupId] [bigint] NOT NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_MemberRoleInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MessageNotificationOptionList]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MessageNotificationOptionList](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[NotificationFor] [nvarchar](max) NOT NULL,
	[NotificationType] [int] NOT NULL,
	[Value] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MobileUser]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MobileUser](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[MobileNumber] [varchar](20) NOT NULL,
	[PIN] [nvarchar](100) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Email] [varchar](200) NULL,
	[IsActive] [bit] NOT NULL,
	[LastLoginDate] [datetime] NULL,
	[PINResetDate] [datetime] NULL,
	[LastPINChangeDate] [datetime] NULL,
	[UnsuccessfulLoginAttempts] [int] NOT NULL,
	[SuccessfulLogin] [int] NOT NULL,
	[LoginStatus] [int] NOT NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedBy] [nvarchar](10) NOT NULL,
	[LastModificationDate] [datetime] NOT NULL,
	[P_MemberId] [bigint] NULL,
	[B_CustomerId] [bigint] NULL,
 CONSTRAINT [PK_MobileUser_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_MobileUser_MobileNumber] UNIQUE NONCLUSTERED 
(
	[MobileNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Module]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Module](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[DisplayName] [nvarchar](100) NOT NULL,
	[ImageUrl] [nvarchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[SortOrder] [int] NOT NULL,
 CONSTRAINT [PK_Module_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_Module_Name] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonitoringChecklist]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonitoringChecklist](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[MonitoringItemType] [int] NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[PreviousMonitoringDate] [datetime] NULL,
	[MonitoringDate] [datetime] NOT NULL,
	[MonitoringEndingDate] [datetime] NULL,
	[MonitorName] [nvarchar](100) NOT NULL,
	[MonitorCode] [nvarchar](10) NOT NULL,
	[Comments] [ntext] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[IsNew] [bit] NOT NULL,
 CONSTRAINT [PK_MonitoringChecklist_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_MonitoringChecklist_BranchId_MonitoringDate_MonitoringItemType] UNIQUE NONCLUSTERED 
(
	[BranchId] ASC,
	[MonitoringDate] ASC,
	[MonitoringItemType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonitoringChecklistComments]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonitoringChecklistComments](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[MonitoringChecklistId] [bigint] NOT NULL,
	[Date] [datetime] NOT NULL,
	[CommentedBy] [nvarchar](10) NOT NULL,
	[CommentedByName] [nvarchar](100) NULL,
	[Comments] [ntext] NULL,
	[CommentedByRole] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_MonitoringChecklistComments_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonitoringChecklistDetails]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonitoringChecklistDetails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[MonitoringChecklistId] [bigint] NOT NULL,
	[MonitoringSubItemId] [bigint] NOT NULL,
	[YesNo] [int] NOT NULL,
	[NumberName] [nvarchar](100) NULL,
	[Amount] [nvarchar](100) NULL,
	[Irregularity] [nvarchar](1000) NULL,
	[Action] [nvarchar](1000) NULL,
	[Implementation] [nvarchar](800) NULL,
	[Comments] [nvarchar](800) NULL,
	[YesNoSecondGrp] [int] NOT NULL,
	[NameGroupUserInputNew] [nvarchar](1000) NULL,
	[BLIPAsNameGroup] [nvarchar](1000) NULL,
	[NameGroupUserInputSecondNew] [nvarchar](1000) NULL,
	[CLIPAsNameGroupSecond] [nvarchar](1000) NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_MonitoringChecklistDetails_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonitoringChecklistLoanSummary]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonitoringChecklistLoanSummary](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[MonitoringChecklistId] [bigint] NOT NULL,
	[P_ProgramId] [bigint] NOT NULL,
	[OutstandingBorrower] [int] NOT NULL,
	[OutstandingAmount] [float] NOT NULL,
	[OverdueBorrower] [int] NOT NULL,
	[OverdueAmount] [float] NOT NULL,
 CONSTRAINT [PK_MonitoringChecklistLoanSummary_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonitoringChecklistSummary]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonitoringChecklistSummary](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[MonitoringChecklistId] [bigint] NOT NULL,
	[BranchOpeningDate] [datetime] NOT NULL,
	[LOCount] [int] NOT NULL,
	[ABMCount] [int] NOT NULL,
	[OutstandingBorrowerTotal] [int] NOT NULL,
	[OutstandingAmountTotal] [float] NOT NULL,
	[BorrowerIncDec] [int] NOT NULL,
	[OutstandingIncDec] [float] NOT NULL,
	[BorrowerTarget] [int] NOT NULL,
	[BorrowerShortage] [int] NOT NULL,
	[OverdueBorrowerTotal] [int] NOT NULL,
	[OverdueAmountTotal] [float] NOT NULL,
	[OverdueBorrowerIncDec] [int] NOT NULL,
	[OverdueAmountIncDec] [float] NOT NULL,
	[OverdueRealizedBorrower] [int] NOT NULL,
	[OverdueRealizedAmount] [float] NOT NULL,
	[OverdueCollectionRatio] [float] NOT NULL,
	[BankCeiling] [float] NOT NULL,
	[BadDebtBorrower] [int] NOT NULL,
	[BadDebtOutstandingAmount] [float] NOT NULL,
	[BadDebtRealizedBorrower] [int] NOT NULL,
	[BadDebtRealizedAmount] [float] NOT NULL,
	[BadDebtCollectionRatio] [float] NOT NULL,
	[SavingsMemberIncDec] [int] NOT NULL,
	[SavingsBalanceIncDec] [float] NOT NULL,
	[SecurityMemberIncDec] [int] NOT NULL,
	[SecurityBalanceIncDec] [float] NOT NULL,
	[SavingsSecurityRatio] [float] NOT NULL,
	[RunawayBorrower] [int] NULL,
	[MemberAdmission] [int] NOT NULL,
	[MemberDropout] [int] NOT NULL,
	[TransferMember] [int] NOT NULL,
	[TransferAmount] [float] NOT NULL,
	[ReceiveMember] [int] NOT NULL,
	[ReceiveAmount] [float] NOT NULL,
	[Group1] [int] NOT NULL,
	[Group2] [int] NOT NULL,
	[Group3] [int] NOT NULL,
	[Group4] [int] NOT NULL,
	[Group5] [int] NOT NULL,
	[GroupTotal] [int] NOT NULL,
	[BorrowerTargetDeadline] [datetime] NULL,
	[GraduateBorrower] [int] NULL,
	[GraduateAmount] [float] NULL,
 CONSTRAINT [PK_MonitoringChecklistSummary_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonitoringItem]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonitoringItem](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Type] [int] NOT NULL,
	[Code] [int] NOT NULL,
	[Subject] [nvarchar](200) NULL,
	[IsActive] [bit] NOT NULL,
	[SortOrder] [int] NOT NULL,
	[IsNew] [bit] NOT NULL,
 CONSTRAINT [PK_MonitoringItem_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonitoringSubItem]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonitoringSubItem](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[MonitoringItemId] [bigint] NOT NULL,
	[SubCode] [int] NOT NULL,
	[Particulars] [nvarchar](1024) NULL,
	[Instructions] [nvarchar](200) NULL,
	[YesNoEnabled] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[SortOrder] [int] NOT NULL,
	[AmountQuery] [nvarchar](max) NULL,
	[FollowUp] [nvarchar](150) NULL,
	[IsAmountApplicable] [bit] NOT NULL,
	[IsAmountAutoCalculative] [bit] NOT NULL,
	[NoQuery] [nvarchar](max) NULL,
	[IsNoApplicable] [bit] NOT NULL,
	[IsNoAutoCalculative] [bit] NOT NULL,
	[IsGroupActivitiesApplicable] [bit] NOT NULL,
	[NameGroupTakeInputFromUser] [bit] NOT NULL,
	[NameGroupSendSMSForYesOption] [bit] NOT NULL,
	[NameGroupSendSMSForNoOption] [bit] NOT NULL,
	[IsGroupActivitiesApplicableForSecondGroup] [bit] NOT NULL,
	[SecondNameGroupTakeInputFromUser] [bit] NOT NULL,
	[SecondNameGroupSendSMSForYesOption] [bit] NOT NULL,
	[SecondNameGroupSendSMSForNoOption] [bit] NOT NULL,
	[IsNew] [bit] NOT NULL,
	[HideGroupActivity] [bit] NOT NULL,
	[NameGroupUserInput] [nvarchar](500) NULL,
	[SecondNameGroupUserInput] [nvarchar](500) NULL,
	[FirstGroupQuery] [nvarchar](max) NULL,
	[SecondGroupQuery] [nvarchar](max) NULL,
 CONSTRAINT [PK_MonitoringSubItem_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Municipality]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Municipality](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ProvinceId] [bigint] NOT NULL,
	[Name] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Municipality_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[New_MonitoringChecklistSummary]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[New_MonitoringChecklistSummary](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[MonitoringChecklistId] [bigint] NOT NULL,
	[BranchAge] [int] NOT NULL,
	[LOCount] [int] NOT NULL,
	[ABMCount] [int] NOT NULL,
	[NumberOfGroupLastMonthSgl] [int] NOT NULL,
	[NumberOfGroupLastMonthSbl] [int] NOT NULL,
	[NumberOfGroupLastMonthSel] [int] NOT NULL,
	[NumberOfGroupLastMonthAmount] [float] NOT NULL,
	[BorrowerTargetSGL] [int] NOT NULL,
	[BorrowerTargetSBL] [int] NOT NULL,
	[BorrowerTargetSEL] [int] NOT NULL,
	[BorrowerTargetAmount] [float] NOT NULL,
	[BorrowerShortageSGL] [int] NOT NULL,
	[BorrowerShortageSBL] [int] NOT NULL,
	[BorrowerShortageSEL] [int] NOT NULL,
	[BorrowerShortageTotal] [float] NOT NULL,
	[OutstandingLoanPortfolioSGL] [float] NOT NULL,
	[OutstandingLoanPortfolioSBL] [float] NOT NULL,
	[OutstandingLoanPortfolioSEL] [float] NOT NULL,
	[OutstandingLoanPortfolioMPL] [float] NOT NULL,
	[OutstandingLoanPortfolioTotal] [float] NOT NULL,
	[OverDueLoanAllProductsNumber] [int] NOT NULL,
	[OverDueLoanAllProductsAmount] [float] NOT NULL,
	[BadDebtLoanNumber] [int] NOT NULL,
	[BadDebtLoanAmount] [float] NOT NULL,
	[ODCollectionAmount] [float] NOT NULL,
	[BDCollectionAmount] [float] NOT NULL,
	[CellingBankwithdrawalAmount] [float] NOT NULL,
	[CellingOfCashOnHandAmount] [float] NOT NULL,
	[StaffNameChequeCustodian] [varchar](100) NOT NULL,
	[StaffIdChequeCustodian] [bigint] NOT NULL,
	[StaffDesiChequeCustodian] [varchar](50) NOT NULL,
	[StartDateChequeCustodian] [datetime] NOT NULL,
	[StuffNameDO] [varchar](50) NOT NULL,
	[StuffIdDO] [bigint] NOT NULL,
	[DesDO] [varchar](50) NOT NULL,
	[StartDateDO] [datetime] NOT NULL,
	[GroupsbynumberofClientsOneToFive] [int] NOT NULL,
	[GroupsbynumberofClientsSixToTen] [int] NOT NULL,
	[GroupsbynumberofClientsTenToFifteen] [int] NOT NULL,
	[GroupsbynumberofClientsSixteenToTweenty] [int] NOT NULL,
	[GroupsbynumberofClientsTweentyPlus] [int] NULL,
	[OfficeRentalUpdateDate] [datetime] NOT NULL,
	[OfficeRentalUpdateRent] [float] NOT NULL,
	[OfficeRentalUpdateAdv] [float] NOT NULL,
	[OfficeRentalUpdateSecurityDeposit] [float] NOT NULL,
	[OfficeRentalUpdateNextRenewalDate] [datetime] NOT NULL,
	[ODCLientNumber] [int] NOT NULL,
	[AbscondedClientInfoNumber] [int] NOT NULL,
	[AbscondedClientInfoAmount] [float] NOT NULL,
	[GroupedVisitRM] [int] NOT NULL,
	[GroupedVisitDM] [int] NOT NULL,
	[GroupedVisitZM] [int] NOT NULL,
	[GroupedVisitOps] [int] NOT NULL,
	[ODORBDClientVisitRM] [int] NOT NULL,
	[ODORBDClientVisitDM] [int] NOT NULL,
	[ODORBDClientVisitZM] [int] NOT NULL,
	[ODORBDClientVisitOps] [int] NOT NULL,
 CONSTRAINT [PK_New_MonitoringChecklistSummary_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OTPConfiguration]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OTPConfiguration](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[AuthorizedBy] [nvarchar](10) NULL,
	[AuthorizedDate] [datetime] NULL,
 CONSTRAINT [PK_OTPConfiguration] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_AccruedInterest]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_AccruedInterest](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[Date] [datetime] NOT NULL,
	[P_LoanAccountId] [int] NOT NULL,
	[Amount] [float] NOT NULL,
	[ForReceivable] [bit] NULL,
	[ForPartialPayment] [bit] NULL,
 CONSTRAINT [PK_P_AccruedInterest] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_AccruedInterest_]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_AccruedInterest_](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[Date] [datetime] NOT NULL,
	[P_LoanAccountId] [int] NOT NULL,
	[Amount] [float] NOT NULL,
	[ForReceivable] [bit] NULL,
 CONSTRAINT [PK_P_AccruedInterest_] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_AccruedInterest_Ac_30062020]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_AccruedInterest_Ac_30062020](
	[Id] [int] IDENTITY(-2147483647,1) NOT NULL,
	[BranchId] [int] NULL,
	[Date] [datetime] NULL,
	[P_LoanAccountId] [int] NULL,
	[Amount] [float] NULL,
	[FinalAmount] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_AccruedInterest_Ac_31102020]    Script Date: 11/15/2022 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_AccruedInterest_Ac_31102020](
	[Id] [int] IDENTITY(-2147483647,1) NOT NULL,
	[BranchId] [int] NULL,
	[Date] [datetime] NULL,
	[P_LoanAccountId] [int] NULL,
	[Amount] [float] NULL,
	[FinalAmount] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_AccruedInterest_Ac_31122020]    Script Date: 11/15/2022 6:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_AccruedInterest_Ac_31122020](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[Date] [datetime] NOT NULL,
	[P_LoanAccountId] [int] NOT NULL,
	[Amount] [float] NOT NULL,
	[FinalAmount] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_AccruedInterest_Ac_31122020_]    Script Date: 11/15/2022 6:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_AccruedInterest_Ac_31122020_](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[Date] [datetime] NOT NULL,
	[P_LoanAccountId] [int] NOT NULL,
	[Amount] [float] NOT NULL,
	[FinalAmount] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_AccruedInterest_Ac_31122021]    Script Date: 11/15/2022 6:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_AccruedInterest_Ac_31122021](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[Date] [datetime] NOT NULL,
	[P_LoanAccountId] [int] NOT NULL,
	[Amount] [float] NOT NULL,
	[FinalAmount] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_AccruedInterest_Active_30062020]    Script Date: 11/15/2022 6:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_AccruedInterest_Active_30062020](
	[Id] [int] NOT NULL,
	[BranchId] [int] NULL,
	[Date] [datetime] NULL,
	[P_LoanAccountId] [int] NULL,
	[Amount] [float] NULL,
	[FinalAmount] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_AccruedInterest_Active_31102020]    Script Date: 11/15/2022 6:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_AccruedInterest_Active_31102020](
	[Id] [int] NOT NULL,
	[BranchId] [int] NULL,
	[Date] [datetime] NULL,
	[P_LoanAccountId] [int] NULL,
	[Amount] [float] NULL,
	[FinalAmount] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_AccruedInterest_Active_31122020]    Script Date: 11/15/2022 6:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_AccruedInterest_Active_31122020](
	[Id] [bigint] NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[Date] [datetime] NOT NULL,
	[P_LoanAccountId] [int] NOT NULL,
	[Amount] [float] NOT NULL,
	[FinalAmount] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_AccruedInterest_Active_31122020_]    Script Date: 11/15/2022 6:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_AccruedInterest_Active_31122020_](
	[Id] [bigint] NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[Date] [datetime] NOT NULL,
	[P_LoanAccountId] [int] NOT NULL,
	[Amount] [float] NOT NULL,
	[FinalAmount] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_AccruedInterest_Active_31122021]    Script Date: 11/15/2022 6:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_AccruedInterest_Active_31122021](
	[Id] [bigint] NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[Date] [datetime] NOT NULL,
	[P_LoanAccountId] [int] NOT NULL,
	[Amount] [float] NOT NULL,
	[FinalAmount] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_AccruedInterest2]    Script Date: 11/15/2022 6:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_AccruedInterest2](
	[Id] [int] IDENTITY(-2147483647,1) NOT NULL,
	[BranchCode] [int] NULL,
	[Date] [datetime] NULL,
	[P_AccountId] [int] NULL,
	[Amount] [float] NULL,
 CONSTRAINT [PK_P_AccruedInterest2] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_AccruedInterest30062020]    Script Date: 11/15/2022 6:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_AccruedInterest30062020](
	[Id] [int] IDENTITY(-2147483647,1) NOT NULL,
	[BranchId] [int] NULL,
	[Date] [datetime] NULL,
	[P_LoanAccountId] [int] NULL,
	[Amount] [float] NULL,
	[FinalAmount] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_AccruedInterest31122019]    Script Date: 11/15/2022 6:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_AccruedInterest31122019](
	[Id] [int] IDENTITY(-2147483647,1) NOT NULL,
	[BranchCode] [int] NULL,
	[Date] [datetime] NULL,
	[P_AccountId] [int] NULL,
	[Amount] [float] NULL,
	[FinalAmount] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_AccruedInterestIncome]    Script Date: 11/15/2022 6:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_AccruedInterestIncome](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[Date] [datetime] NOT NULL,
	[P_LoanAccountId] [bigint] NOT NULL,
	[Amount] [float] NOT NULL,
	[ForReceivable] [bit] NULL,
	[ForPartialPayment] [bit] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[IsAdjusted] [bit] NULL,
 CONSTRAINT [PK_P_AccruedInterestIncome_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_AccruedInterestNew]    Script Date: 11/15/2022 6:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_AccruedInterestNew](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[Date] [datetime] NOT NULL,
	[P_LoanAccountId] [int] NOT NULL,
	[Amount] [float] NOT NULL,
	[ForReceivable] [bit] NULL,
	[ForPartialPayment] [bit] NULL,
 CONSTRAINT [PK_P_AccruedInterestNew] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_AccruedInterestReceivable30062020]    Script Date: 11/15/2022 6:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_AccruedInterestReceivable30062020](
	[BranchId] [int] NULL,
	[P_LoanAccountId] [int] NULL,
	[Amount] [float] NULL,
	[FinalAmount] [float] NULL,
	[Count] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_AccruedInterestReceivable31102020]    Script Date: 11/15/2022 6:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_AccruedInterestReceivable31102020](
	[BranchId] [int] NULL,
	[P_LoanAccountId] [int] NULL,
	[Amount] [float] NULL,
	[FinalAmount] [float] NULL,
	[Count] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_AccruedInterestReceivable31122019]    Script Date: 11/15/2022 6:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_AccruedInterestReceivable31122019](
	[BranchId] [int] NULL,
	[P_LoanAccountId] [int] NULL,
	[Amount] [float] NULL,
	[FinalAmount] [float] NULL,
	[Count] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_AccruedInterestReceivable31122020]    Script Date: 11/15/2022 6:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_AccruedInterestReceivable31122020](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_LoanAccountId] [bigint] NOT NULL,
	[Amount] [float] NOT NULL,
	[FinalAmount] [float] NOT NULL,
 CONSTRAINT [PK_P_AccruedInterestReceivable31122020Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_AccruedInterestReceivable31122021]    Script Date: 11/15/2022 6:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_AccruedInterestReceivable31122021](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_LoanAccountId] [bigint] NOT NULL,
	[Amount] [float] NOT NULL,
	[FinalAmount] [float] NOT NULL,
 CONSTRAINT [PK_P_AccruedInterestReceivable31122021Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_ActiveBorrowerReportTable]    Script Date: 11/15/2022 6:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_ActiveBorrowerReportTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_LoanAccountId] [bigint] NULL,
	[Account Unique ID] [uniqueidentifier] NULL,
	[Member Unique ID] [uniqueidentifier] NULL,
	[Loan Application ID] [varchar](20) NULL,
	[Loan Account Number] [varchar](50) NULL,
	[BranchName] [varchar](100) NULL,
	[AdminDistrictName] [varchar](200) NULL,
	[LoanOfficerName] [nvarchar](100) NULL,
	[GroupName] [varchar](100) NULL,
	[MemberName] [varchar](100) NULL,
	[SpouseName] [varchar](100) NULL,
	[FatherName] [varchar](100) NULL,
	[CoBeneficiaryName] [varchar](100) NULL,
	[Religion] [nvarchar](20) NULL,
	[Caste] [nvarchar](20) NULL,
	[ProgramName] [varchar](100) NULL,
	[FundName] [nvarchar](200) NULL,
	[Scheme] [nvarchar](256) NULL,
	[LocationType] [nvarchar](20) NULL,
	[DisbursedDate] [nvarchar](20) NULL,
	[FirstInstallmentDate] [nvarchar](20) NULL,
	[Current Product Loan Cycle] [int] NULL,
	[Total Loan Cycle] [int] NULL,
	[PrincipalAmount] [float] NULL,
	[Interest Rate(%)] [nvarchar](10) NULL,
	[InterestAmount] [float] NULL,
	[TotalDisbursedAmount] [float] NULL,
	[TotalInstallment] [int] NULL,
	[InstallmentAmount] [float] NULL,
	[PrincipalRealized] [float] NULL,
	[InterestRealized] [float] NULL,
	[RealizedAmount] [float] NULL,
	[Current Month Principal Realizable] [float] NULL,
	[Current Month Interest Realizable] [float] NULL,
	[Current Month Principal Realized] [float] NULL,
	[Current Month Interest Realized] [float] NULL,
	[Last Scheduled Payment Date] [datetime] NULL,
	[Principal Overdue] [float] NULL,
	[Interest Overdue] [float] NULL,
	[Total Overdue] [float] NULL,
	[PaidInstallment] [int] NULL,
	[PrincipalOutstanding] [float] NULL,
	[InterestOutstanding] [float] NULL,
	[OutstandingAmount] [float] NULL,
	[OverdueAge] [int] NULL,
	[Overdue Ageing Starting Date] [datetime] NULL,
	[FullPaidDate] [nvarchar](20) NULL,
	[IdProof-1Type] [nvarchar](50) NULL,
	[IdProof-1Number] [varchar](50) NULL,
	[Length Of KYC] [varchar](50) NULL,
	[IdProof-2Type] [nvarchar](50) NULL,
	[IdProof-2Number] [varchar](50) NULL,
	[Address Proof Type] [nvarchar](50) NULL,
	[Member Block/Road/Street] [varchar](100) NULL,
	[Member House No./Area/Locality] [varchar](100) NULL,
	[Member Village/City/Town] [varchar](100) NULL,
	[Member Land Mark] [varchar](100) NULL,
	[Member District] [varchar](100) NULL,
	[Member State] [varchar](100) NULL,
	[Member Pin Code] [varchar](10) NULL,
	[Member DOB] [nvarchar](20) NULL,
	[Member Admission Date] [nvarchar](20) NULL,
	[Annual Household Income] [int] NULL,
	[LAN] [varchar](100) NULL,
	[UCIC] [varchar](100) NULL,
	[Last Payment Date] [varchar](100) NULL,
	[BranchId] [bigint] NULL,
	[TimeStamp] [datetime] NULL,
	[NationalIdNumber] [varchar](50) NULL,
	[Member_ID] [varchar](100) NULL,
	[Classification] [varchar](10) NULL,
	[Employee Code] [int] NULL,
	[Number of Special Holidays] [int] NULL,
 CONSTRAINT [PK_P_ActiveBorrowerReportTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_AdditionalLoanConfig]    Script Date: 11/15/2022 6:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_AdditionalLoanConfig](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [bigint] NULL,
	[P_ProgramId] [bigint] NOT NULL,
	[P_DurationId] [int] NULL,
	[P_InstallmentType] [int] NULL,
	[MinimumSavings] [varchar](200) NULL,
	[MinimumSecurity] [varchar](200) NULL,
	[DurationBetweenLoanCycles] [varchar](200) NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[MinimumSecurityFirstCycle] [varchar](25) NULL,
	[MinimumSecuritySecondCycleOnward] [varchar](25) NULL,
 CONSTRAINT [P_AdditionalLoanConfig_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_AdvanceCollectionConfig]    Script Date: 11/15/2022 6:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_AdvanceCollectionConfig](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_ProgramId] [bigint] NOT NULL,
	[P_Duration] [int] NOT NULL,
	[P_InstallmentType] [int] NOT NULL,
	[IsAdvanceInstallmentAllowed] [bit] NOT NULL,
	[MaximumInstallmentAllowed] [int] NULL,
	[IsAllowAdvanceWithNoOutstandingOnly] [bit] NULL,
	[MaximumAdvanceCollectionAllowedPerDay] [bigint] NULL,
	[MaximumAdvanceCollectionAllowedPerLoan] [bigint] NULL,
	[PayFullOutstandingWhenRemainingInstallments] [bigint] NULL,
 CONSTRAINT [PK_P_AdvanceCollectionConfig_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_P_AdvanceCollectionConfig_Id_P_InstallmentTypeId_P_Duration] UNIQUE NONCLUSTERED 
(
	[Id] ASC,
	[P_InstallmentType] ASC,
	[P_Duration] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_AdvanceInstallmentAdjustConfig]    Script Date: 11/15/2022 6:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_AdvanceInstallmentAdjustConfig](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_ProgramId] [bigint] NOT NULL,
	[P_Duration] [int] NOT NULL,
	[P_InstallmentType] [int] NOT NULL,
	[MaximumInstallmentAllowed] [int] NULL,
 CONSTRAINT [pk_AdvanceInstallmentAdjustConfig] PRIMARY KEY CLUSTERED 
(
	[P_ProgramId] ASC,
	[P_Duration] ASC,
	[P_InstallmentType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_AMLScreening]    Script Date: 11/15/2022 6:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_AMLScreening](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_MemberId] [bigint] NOT NULL,
	[P_LoanApplicationId] [bigint] NULL,
	[P_LoanAccountId] [bigint] NULL,
	[Requestcount] [int] NULL,
	[ScreeningStatus] [nvarchar](25) NULL,
	[ScreeningDate] [datetime] NULL,
	[ReportPath] [nvarchar](150) NULL,
	[ReportIdentifier] [nvarchar](100) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](20) NULL,
	[Message] [varchar](max) NULL,
	[RequestId] [varchar](30) NULL,
 CONSTRAINT [PK_P_AMLScreening_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_BackdateHolidayConfig]    Script Date: 11/15/2022 6:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_BackdateHolidayConfig](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[BlockUnit] [int] NOT NULL,
	[BlockDuration] [int] NOT NULL,
	[ExecutionDate] [datetime] NOT NULL,
	[ExecutionDateEnd] [datetime] NULL,
 CONSTRAINT [PK_P_BackdateHolidayConfig_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_BackdateHolidayConfigBranch]    Script Date: 11/15/2022 6:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_BackdateHolidayConfigBranch](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_BackdateHolidayConfigId] [bigint] NOT NULL,
	[BranchId] [bigint] NOT NULL,
 CONSTRAINT [PK_P_BackdateHolidayConfigBranch_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_BadDebtAccount]    Script Date: 11/15/2022 6:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_BadDebtAccount](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_LoanAccountId] [bigint] NULL,
	[P_MemberId] [bigint] NOT NULL,
	[P_ProgramId] [bigint] NOT NULL,
	[TransferDate] [datetime] NOT NULL,
	[TransferAmount] [float] NOT NULL,
	[Status] [int] NOT NULL,
	[ClosingDate] [datetime] NULL,
	[ClosingReason] [int] NULL,
	[AccountNumber] [varchar](50) NOT NULL,
	[Client] [int] NOT NULL,
	[OldId] [int] NULL,
 CONSTRAINT [PK_P_BadDebtAccount_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_P_BadDebtAccount_AccountNumber] UNIQUE NONCLUSTERED 
(
	[AccountNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_BadDebtTransaction]    Script Date: 11/15/2022 6:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_BadDebtTransaction](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_BadDebtAccountId] [bigint] NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[A_AccountId] [bigint] NULL,
	[Type] [int] NOT NULL,
	[Process] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Debit] [float] NOT NULL,
	[Credit] [float] NOT NULL,
	[ChequeNumber] [varchar](20) NULL,
	[Description] [varchar](200) NOT NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[AuthorizedBy] [nvarchar](10) NULL,
	[AuthorizedDate] [datetime] NULL,
	[Status] [int] NOT NULL,
	[Client] [int] NOT NULL,
	[OrNumber] [varchar](25) NULL,
	[ArNumber] [varchar](25) NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[IciciQrMerchantTransactionId] [nvarchar](50) NULL,
	[IciciQrTransactionCompletionDate] [datetime] NULL,
	[IciciBankRRN] [nvarchar](100) NULL,
 CONSTRAINT [PK_P_BadDebtTransaction_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_BoGReports]    Script Date: 11/15/2022 6:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_BoGReports](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ReportName] [varchar](200) NULL,
	[Reference] [varchar](200) NULL,
	[Status] [varchar](200) NULL,
	[ReturnsTypeId] [varchar](200) NULL,
	[RevisionsId] [varchar](200) NULL,
	[ReportGeneratedOn] [datetime] NULL,
	[LastSavedOn] [datetime] NULL,
	[ReportPath] [varchar](200) NULL,
	[IsReportGenerated] [bit] NULL,
	[IsReportSendToBoG] [bit] NULL,
 CONSTRAINT [P_BoGReports_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_BureauOne]    Script Date: 11/15/2022 6:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_BureauOne](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_MemberId] [bigint] NOT NULL,
	[ReferenceNumber] [bigint] NOT NULL,
	[PDFData] [text] NULL,
	[XMLData] [text] NULL,
	[Response] [text] NULL,
	[RequestCount] [bigint] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[NoOfActiveAccounts] [bigint] NULL,
	[OutstandingBalance] [float] NULL,
	[TotalOverdue] [float] NULL,
	[ReportNumber] [varchar](100) NULL,
	[P_LoanAccountId] [bigint] NULL,
	[P_LoanApplicationId] [bigint] NULL,
	[RelationWithMemberId] [int] NULL,
	[MonthlyDebtPayment] [bigint] NULL,
 CONSTRAINT [PK_BureauOne] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_BusinessAndHouseholdIncomeStatement]    Script Date: 11/15/2022 6:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_BusinessAndHouseholdIncomeStatement](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_MemberId] [bigint] NOT NULL,
	[P_BusinessAndHouseholdIncomeStatementConfigId] [bigint] NOT NULL,
	[LoanCycle] [int] NOT NULL,
	[AmountPerWeek] [float] NULL,
	[Comment] [varchar](500) NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[P_ProgramId] [bigint] NULL,
	[P_DurationId] [bigint] NULL,
	[TentativeDisbursementDate] [datetime] NULL,
 CONSTRAINT [PK_P_BusinessAndHouseholdIncomeStatement_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_BusinessAndHouseholdIncomeStatementConfig]    Script Date: 11/15/2022 6:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_BusinessAndHouseholdIncomeStatementConfig](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Sl] [float] NULL,
	[Key] [varchar](250) NOT NULL,
	[Name] [varchar](250) NOT NULL,
	[DataType] [varchar](50) NOT NULL,
	[SortOrder] [int] NOT NULL,
	[IsUserInput] [bit] NOT NULL,
 CONSTRAINT [PK_P_BusinessAndHouseholdIncomeStatementConfig_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_P_BusinessAndHouseholdIncomeStatementConfig_Key] UNIQUE NONCLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_CauseOfDeathReason]    Script Date: 11/15/2022 6:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_CauseOfDeathReason](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Value] [nvarchar](500) NOT NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_P_CauseOfDeathEnum] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_CheckPassbookReport]    Script Date: 11/15/2022 6:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_CheckPassbookReport](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_MemberId] [bigint] NOT NULL,
	[OutstandingAmount] [float] NULL,
	[QueryAmount] [float] NOT NULL,
	[Status] [int] NOT NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_P_CheckPassbookReport_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_CrifHighmark]    Script Date: 11/15/2022 6:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_CrifHighmark](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_MemberId] [bigint] NOT NULL,
	[XMLData] [text] NULL,
	[RequestCount] [bigint] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[NoOfActiveAccounts] [bigint] NULL,
	[OutstandingBalance] [float] NULL,
	[TotalOverdue] [float] NULL,
	[ReportNumber] [varchar](100) NULL,
	[P_LoanAccountId] [bigint] NULL,
	[P_LoanApplicationId] [bigint] NULL,
 CONSTRAINT [PK_CrifHighmark] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_DaysInYearConfiguration]    Script Date: 11/15/2022 6:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_DaysInYearConfiguration](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DaysInYear] [int] NULL,
	[StartingDate] [datetime] NULL,
	[EndingDate] [datetime] NULL,
 CONSTRAINT [PK_DaysInYear] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_DeathCase]    Script Date: 11/15/2022 6:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_DeathCase](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ActualDeath] [datetime] NOT NULL,
	[ActualPrincipleOutstanding] [float] NOT NULL,
	[ActualInterestOutstanding] [float] NOT NULL,
	[AsOnPrincipleOutstanding] [float] NOT NULL,
	[AsOnInterestOutstanding] [float] NOT NULL,
	[AsOnHolidayInterest] [float] NOT NULL,
	[ActualClaimtoAlience] [float] NOT NULL,
	[ClaimAmount] [float] NOT NULL,
	[PrincipleInterestExemption] [float] NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[DeathReason] [nvarchar](50) NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[P_LoanOfficerId] [bigint] NOT NULL,
	[P_GroupId] [bigint] NOT NULL,
	[P_MemberId] [bigint] NOT NULL,
	[P_LoanAccountId] [bigint] NOT NULL,
	[P_InsuranceClaimCategoryId] [bigint] NOT NULL,
	[TransactionDate] [datetime] NOT NULL,
	[AuthorizedBy] [nvarchar](10) NULL,
	[AuthorizedDate] [datetime] NULL,
	[CreateDate] [datetime] NOT NULL,
	[HolidayInterestExemption] [float] NOT NULL,
 CONSTRAINT [PK_P_DeathCase_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_DeathsCaseDetails]    Script Date: 11/15/2022 6:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_DeathsCaseDetails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_LoanAccountId] [bigint] NOT NULL,
	[NameOfExpirer] [int] NOT NULL,
	[CauseOfDeath] [varchar](200) NOT NULL,
	[DateOfDeath] [datetime] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[IsApproved] [bit] NULL,
	[DocumentSendDate] [datetime] NULL,
	[DocumentCourierNumber] [nvarchar](100) NULL,
	[DispatchRcvDate] [datetime] NULL,
	[ClaimDeptRcvDate] [datetime] NULL,
	[ClaimDeptStatus] [nvarchar](50) NULL,
	[ReasonOfReject] [nvarchar](100) NULL,
	[ClaimDeptApproveOrRejectDate] [datetime] NULL,
	[ClaimSentToLic] [datetime] NULL,
	[ClaimRcvFromLic] [datetime] NULL,
	[RmApprovedDate] [datetime] NULL,
 CONSTRAINT [P_DeathsCaseDetails_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_DormantPenaltyConfiguration]    Script Date: 11/15/2022 6:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_DormantPenaltyConfiguration](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Event] [int] NOT NULL,
	[DormantDuration] [int] NOT NULL,
	[LapsedDuration] [int] NOT NULL,
	[MinimumLapsedAmount] [decimal](10, 2) NOT NULL,
	[PenaltyType] [int] NOT NULL,
	[PenaltyAmount] [decimal](10, 2) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_DormantPolicyConfiguration]    Script Date: 11/15/2022 6:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_DormantPolicyConfiguration](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MinSecurityBalance] [int] NOT NULL,
	[MaxSecurityBalance] [int] NOT NULL,
	[TransactionDays] [int] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_DropoutReason]    Script Date: 11/15/2022 6:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_DropoutReason](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Type] [int] NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[SortOrder] [int] NOT NULL,
 CONSTRAINT [PK_P_DropoutReason_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_P_DropoutReason_Name] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_Duration]    Script Date: 11/15/2022 6:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_Duration](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Duration] [int] NOT NULL,
 CONSTRAINT [PK_P_Duration_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_P_Duration_Duration] UNIQUE NONCLUSTERED 
(
	[Duration] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_ErrorMessage]    Script Date: 11/15/2022 6:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_ErrorMessage](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[ErrorType] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[ErrorMessage] [nvarchar](500) NOT NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_P_ErrorMessage_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_FamilyMember]    Script Date: 11/15/2022 6:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_FamilyMember](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_MemberId] [bigint] NOT NULL,
	[FamilyMemberName] [varchar](100) NOT NULL,
	[RelationshipWithMember] [int] NOT NULL,
	[IsEarningMember] [bit] NOT NULL,
	[DateOfBirth] [datetime] NOT NULL,
	[VoterCard] [nvarchar](50) NOT NULL,
	[PanCard] [nvarchar](50) NOT NULL,
	[MobileNumber] [varchar](100) NOT NULL,
 CONSTRAINT [PK_P_FamilyMember_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_Fund]    Script Date: 11/15/2022 6:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_Fund](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](1024) NULL,
	[Amount] [float] NOT NULL,
	[P_ProgramId] [bigint] NULL,
	[P_Duration] [int] NULL,
	[P_InstallmentType] [int] NULL,
	[StartingDate] [datetime] NULL,
	[EndingDate] [datetime] NULL,
 CONSTRAINT [PK_P_Fund_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_P_Fund_Name] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_GetAgingDataTable]    Script Date: 11/15/2022 6:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_GetAgingDataTable](
	[Id] [varchar](36) NOT NULL,
	[P_MemberId] [bigint] NULL,
	[BranchId] [bigint] NULL,
	[P_LoanAccountId] [bigint] NULL,
	[Age] [int] NULL,
	[SPname] [nvarchar](50) NULL,
	[Date] [datetime] NULL,
	[TimeStamp] [datetime] NULL,
 CONSTRAINT [PK_P_GetAgingDataTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_GetAgingDataTableCurrent]    Script Date: 11/15/2022 6:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_GetAgingDataTableCurrent](
	[Id] [varchar](36) NOT NULL,
	[P_MemberId] [bigint] NULL,
	[BranchId] [bigint] NULL,
	[P_LoanAccountId] [bigint] NULL,
	[Age] [int] NULL,
	[SPname] [nvarchar](50) NULL,
	[Date] [datetime] NULL,
	[TimeStamp] [datetime] NULL,
 CONSTRAINT [PK_P_GetAgingDataTableCurrent] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_GracePeriod]    Script Date: 11/15/2022 6:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_GracePeriod](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_ProgramId] [bigint] NOT NULL,
	[P_Duration] [int] NOT NULL,
	[P_InstallmentType] [int] NOT NULL,
	[GracePeriod] [int] NOT NULL,
	[StartingDate] [datetime] NOT NULL,
	[EndingDate] [datetime] NOT NULL,
 CONSTRAINT [PK_P_GracePeriod_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_Group]    Script Date: 11/15/2022 6:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_Group](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_LoanOfficerId] [bigint] NOT NULL,
	[P_GroupTypeId] [bigint] NOT NULL,
	[DefaultP_ProgramId] [bigint] NOT NULL,
	[DefaultProgramTypeId] [bigint] NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[FormationDate] [datetime] NOT NULL,
	[Village] [varchar](100) NOT NULL,
	[MeetingDay] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[ClosingDate] [datetime] NULL,
	[LandMark] [varchar](100) NULL,
	[ContactNumber] [varchar](100) NULL,
	[ContactPerson] [varchar](100) NULL,
	[OldId] [int] NULL,
	[ContactPersonPosition] [int] NULL,
	[MinimumSavingsDeposit] [float] NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](10) NULL,
	[AuthorizeStatus] [nvarchar](1) NULL,
	[AuthorizedDate] [datetime] NULL,
	[AuthorizedBy] [nvarchar](10) NULL,
 CONSTRAINT [PK_P_Group_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_GroupCollection]    Script Date: 11/15/2022 6:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_GroupCollection](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[DateTime] [datetime] NOT NULL,
	[P_GroupId] [bigint] NOT NULL,
	[ORNumber] [varchar](25) NULL,
	[ARNumber] [varchar](25) NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[Client] [int] NOT NULL,
	[IsOfflineMode] [bit] NULL,
 CONSTRAINT [PK_P_GroupCollection_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_GroupMovement]    Script Date: 11/15/2022 6:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_GroupMovement](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_LoanOfficerId] [bigint] NOT NULL,
	[P_GroupId] [bigint] NOT NULL,
	[StartingDate] [datetime] NOT NULL,
	[EndingDate] [datetime] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](10) NULL,
	[AuthorizeStatus] [nvarchar](1) NULL,
	[AuthorizedDate] [datetime] NULL,
	[AuthorizedBy] [nvarchar](10) NULL,
 CONSTRAINT [PK_P_GroupMovement_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_P_GroupMovement_P_GroupId_EndingDate] UNIQUE NONCLUSTERED 
(
	[P_GroupId] ASC,
	[EndingDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_P_GroupMovement_P_GroupId_StartingDate] UNIQUE NONCLUSTERED 
(
	[P_GroupId] ASC,
	[StartingDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_GroupType]    Script Date: 11/15/2022 6:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_GroupType](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[DisplayName] [varchar](100) NOT NULL,
	[DefaultView] [int] NOT NULL,
	[AllowNew] [bit] NOT NULL,
	[SortOrder] [int] NOT NULL,
 CONSTRAINT [PK_P_GroupType_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_HouseholdIncomeAndExpense]    Script Date: 11/15/2022 6:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_HouseholdIncomeAndExpense](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_MemberId] [bigint] NOT NULL,
	[P_LoanApplicationId] [bigint] NOT NULL,
	[Type] [int] NULL,
	[Name] [nvarchar](250) NULL,
	[Agriculture] [float] NULL,
	[AgricultureAssociates] [float] NULL,
	[Trade] [float] NULL,
	[Production] [float] NULL,
	[SmallBusiness] [float] NULL,
	[AnimalHusbandry] [float] NULL,
	[CottageIndustry] [float] NULL,
	[TransportationIncome] [float] NULL,
	[Service] [float] NULL,
	[Garments] [float] NULL,
	[Handicrafts] [float] NULL,
	[Salaried] [float] NULL,
	[SelfEmployed] [float] NULL,
	[SeasonalIncome] [float] NULL,
	[IncomefromHouseShopRentLease] [float] NULL,
	[Pension] [float] NULL,
	[IncomeFromDifferentGovtSchemes] [float] NULL,
	[Scholarship] [float] NULL,
	[OtherIncome] [float] NULL,
	[SelfReportedMonthlyHouseholdIncome] [float] NULL,
	[SelfReportedAnnualHouseholdIncome] [float] NULL,
	[FoodExpenses] [float] NULL,
	[Utility] [float] NULL,
	[TransportationExpense] [float] NULL,
	[HouseOrShopRent] [float] NULL,
	[MedicalTreatment] [float] NULL,
	[Education] [float] NULL,
	[Clothing] [float] NULL,
	[RawMaterialforBusiness] [float] NULL,
	[LicensesAndTaxes] [float] NULL,
	[MiscellaneousExpenses] [float] NULL,
	[TotalEMIOfExistingLoans] [float] NULL,
	[TotalExistingMonthlyObligation] [float] NULL,
	[MonthlyEMIOfNewProposedLoan] [float] NULL,
	[TotalMonthlyObligationIncludingNewLoan] [float] NULL,
	[ObligationToIncomeRatio] [float] NULL,
	[MonthlySurplusOrDeficit] [float] NULL,
	[AnnualSurplusOrDeficit] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_HouseholdIncomeAndObligation]    Script Date: 11/15/2022 6:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_HouseholdIncomeAndObligation](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_MemberId] [bigint] NOT NULL,
	[P_LoanApplicationId] [bigint] NOT NULL,
	[Type] [int] NULL,
	[Name] [nvarchar](250) NULL,
	[SourceOfMonthlyIncome] [nvarchar](50) NULL,
	[MonthlyHouseholdIncome] [float] NULL,
	[AnnualHouseholdIncome] [float] NULL,
	[MonthlyEMIObligation] [float] NULL,
	[MFILoan] [float] NULL,
	[TwoWheelerLoan] [float] NULL,
	[KishanCreditCard] [float] NULL,
	[PersonalLoan] [float] NULL,
	[TractorLoan] [float] NULL,
	[CDLoan] [float] NULL,
	[OtherLoan] [float] NULL,
	[TotalMonthlyHouseholdIncome] [float] NULL,
	[TotalAnnualHouseholdIncome] [float] NULL,
	[TotalExistingMonthlyEMIObligation] [float] NULL,
	[MonthlyEMIOfNewProposedJLGLoanWithIDFC] [float] NULL,
	[TotalMonthlyObligationIncludingNewIDFCLoan] [float] NULL,
	[ObligationToIncomeRatio] [float] NULL,
 CONSTRAINT [PK_P_HouseholdIncomeAndObligation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_HouseHoldSurplusConfiguration]    Script Date: 11/15/2022 6:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_HouseHoldSurplusConfiguration](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_ProgramId] [bigint] NOT NULL,
	[P_DurationId] [bigint] NOT NULL,
	[FirstCycleSurplusPercentage] [int] NOT NULL,
	[SecondCycleSurplusPercentage] [int] NOT NULL,
	[ThirdCycleSurplusPercentage] [int] NOT NULL,
	[AboveThirdCycleSurplusIncrementPercentage] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[OverwriteExistingLoanRangePolicy] [bit] NOT NULL,
	[OnlyForSurvey] [bit] NOT NULL,
	[EndDate] [datetime] NULL,
 CONSTRAINT [PK_P_HouseHoldSurplusConfiguration_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_InerestForHoliday]    Script Date: 11/15/2022 6:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_InerestForHoliday](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_LoanAccountId] [bigint] NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[HolidayDate] [datetime] NOT NULL,
	[NextScheduledDate] [datetime] NOT NULL,
	[Interest] [float] NOT NULL,
	[PrincipalOutstanding] [float] NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_P_InerestForHoliday_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_InerestForHolidayDetails]    Script Date: 11/15/2022 6:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_InerestForHolidayDetails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_LoanAccountId] [bigint] NOT NULL,
	[HolidayDate] [datetime] NOT NULL,
	[ScheduledDate] [datetime] NOT NULL,
	[Interest] [float] NOT NULL,
	[IsWaived] [bit] NULL,
 CONSTRAINT [PK_P_InerestForHolidayDetails_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_InstallmentAmount]    Script Date: 11/15/2022 6:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_InstallmentAmount](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_ProgramId] [bigint] NOT NULL,
	[P_Duration] [int] NOT NULL,
	[P_InstallmentType] [int] NOT NULL,
	[GracePeriod] [int] NOT NULL,
	[CalculationMode] [int] NOT NULL,
	[BaseAmount] [float] NOT NULL,
	[AmountPerBase] [float] NOT NULL,
	[StartingDate] [datetime] NOT NULL,
	[EndingDate] [datetime] NOT NULL,
	[CellingOrRound] [int] NOT NULL,
	[CellingOrRoundValue] [float] NOT NULL,
 CONSTRAINT [PK_P_InstallmentAmount_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_InstallmentCount]    Script Date: 11/15/2022 6:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_InstallmentCount](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_ProgramId] [bigint] NOT NULL,
	[P_Duration] [int] NOT NULL,
	[P_InstallmentType] [int] NOT NULL,
	[GracePeriod] [int] NOT NULL,
	[InstallmentCount] [int] NOT NULL,
	[StartingDate] [datetime] NOT NULL,
	[EndingDate] [datetime] NOT NULL,
 CONSTRAINT [PK_P_InstallmentCount_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_InstallmentType]    Script Date: 11/15/2022 6:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_InstallmentType](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[InstallmentType] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_P_InstallmentType_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_P_InstallmentType_InstallmentType] UNIQUE NONCLUSTERED 
(
	[InstallmentType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_InsuranceClaimCategory]    Script Date: 11/15/2022 6:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_InsuranceClaimCategory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Amount] [float] NOT NULL,
	[ClaimType] [varchar](255) NOT NULL,
	[CreatedBy] [varchar](255) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_P_InsuranceClaimCategory_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_InterestRate]    Script Date: 11/15/2022 6:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_InterestRate](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_ProgramId] [bigint] NOT NULL,
	[P_Duration] [int] NOT NULL,
	[P_InstallmentType] [int] NOT NULL,
	[InterestRate] [float] NOT NULL,
	[DecliningInterestRate] [float] NOT NULL,
	[StartingDate] [datetime] NOT NULL,
	[EndingDate] [datetime] NOT NULL,
	[InterestRateDisplay] [float] NOT NULL,
	[DecliningInterestRateDisplay] [float] NOT NULL,
	[AnnualPercentageRate] [float] NULL,
 CONSTRAINT [PK_P_InterestRate_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_JournalStatus]    Script Date: 11/15/2022 6:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_JournalStatus](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Processed] [bit] NOT NULL,
 CONSTRAINT [PK_P_JournalStatus_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_P_JournalStatus_BranchId_Date] UNIQUE NONCLUSTERED 
(
	[BranchId] ASC,
	[Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_JournalStatus2]    Script Date: 11/15/2022 6:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_JournalStatus2](
	[Id] [bigint] NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Processed] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_JournalStatus3]    Script Date: 11/15/2022 6:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_JournalStatus3](
	[Id] [bigint] NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Processed] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_LoanAccount]    Script Date: 11/15/2022 6:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_LoanAccount](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_MemberId] [bigint] NOT NULL,
	[P_ProgramId] [bigint] NOT NULL,
	[P_Duration] [int] NOT NULL,
	[P_InstallmentType] [int] NOT NULL,
	[P_GracePeriod] [int] NOT NULL,
	[P_SchemeId] [bigint] NULL,
	[P_FundId] [bigint] NULL,
	[Cycle] [int] NOT NULL,
	[DisbursedDate] [datetime] NOT NULL,
	[PrincipalAmount] [float] NOT NULL,
	[InterestAmount] [float] NOT NULL,
	[FirstInstallmentDate] [datetime] NOT NULL,
	[Status] [int] NOT NULL,
	[ClosingDate] [datetime] NULL,
	[ClosingReason] [int] NULL,
	[MonthlyIncomeAmount] [float] NOT NULL,
	[AccountNumber] [varchar](50) NOT NULL,
	[Photo] [image] NULL,
	[UniqueId] [uniqueidentifier] NOT NULL,
	[Client] [int] NOT NULL,
	[OldId] [int] NULL,
	[P_MemberFingerTemplateId] [bigint] NULL,
	[OTPCode] [varchar](15) NULL,
	[OTPAuthenticationStatus] [int] NULL,
	[NubanNumber] [varchar](50) NULL,
	[LafNumber] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](10) NULL,
	[AuthorizeStatus] [nvarchar](1) NULL,
	[AuthorizedDate] [datetime] NULL,
	[AuthorizedBy] [nvarchar](10) NULL,
	[RefreshScheduleDate] [datetime] NULL,
	[MemberClassificationCategory] [int] NULL,
	[MemberClassificationEffectiveDate] [datetime] NULL,
	[IsNPA] [bit] NOT NULL,
	[IsMpesaCompleted] [bit] NULL,
	[MPesaResponse] [nvarchar](256) NULL,
	[AllowReforming] [bit] NULL,
	[ReformingCycle] [int] NULL,
	[LastLoanAccountNumber] [varchar](25) NULL,
	[LastLoanPrincipalOutstanding] [float] NULL,
	[LastLoanNetPayment] [float] NULL,
 CONSTRAINT [PK_P_LoanAccount_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_P_LoanAccount_AccountNumber] UNIQUE NONCLUSTERED 
(
	[AccountNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_LoanApplication]    Script Date: 11/15/2022 6:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_LoanApplication](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_MemberId] [bigint] NOT NULL,
	[P_ProgramId] [bigint] NOT NULL,
	[P_LoanAccountId] [bigint] NULL,
	[ApplicationDate] [datetime] NOT NULL,
	[ProposedDuration] [int] NOT NULL,
	[ApprovedDuration] [int] NULL,
	[ProposedInstallmentType] [int] NOT NULL,
	[ApprovedInstallmentType] [int] NULL,
	[P_GracePeriod] [int] NOT NULL,
	[P_SchemeId] [bigint] NULL,
	[P_FundId] [bigint] NULL,
	[Cycle] [int] NOT NULL,
	[ProposedDisburseDate] [datetime] NOT NULL,
	[ApprovedDisburseDate] [datetime] NULL,
	[ProposedPrincipalAmount] [float] NOT NULL,
	[ApprovedPrincipalAmount] [float] NULL,
	[ProposedInterestAmount] [float] NOT NULL,
	[ApprovedInterestAmount] [float] NULL,
	[ProposedFirstInstallmentDate] [datetime] NOT NULL,
	[ApprovedFirstInstallmentDate] [datetime] NULL,
	[MonthlyIncomeAmount] [float] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[AssessmentDone] [bit] NOT NULL,
	[AssessmentDate] [datetime] NULL,
	[AssessedBy] [nvarchar](10) NULL,
	[VerificationDone] [bit] NOT NULL,
	[VerificationDate] [datetime] NULL,
	[VerifiedBy] [nvarchar](10) NULL,
	[ApprovalDone] [bit] NOT NULL,
	[ApprovalDate] [datetime] NULL,
	[ApprovedBy] [nvarchar](10) NULL,
	[RejectionDate] [datetime] NULL,
	[RejectedBy] [nvarchar](10) NULL,
	[RejectionRemarks] [varchar](512) NULL,
	[Status] [int] NOT NULL,
	[NomineeName] [varchar](100) NULL,
	[NomineeRelation] [varchar](50) NULL,
	[NomineeDateOfBirth] [datetime] NULL,
	[CoBeneficiaryName] [varchar](100) NULL,
	[CoBeneficiaryRelation] [varchar](50) NULL,
	[CoBeneficiaryBirthDate] [datetime] NULL,
	[CoBeneficiaryIDNumber] [varchar](50) NULL,
	[BeneficiaryBankName] [varchar](100) NULL,
	[BeneficiaryBankBranchName] [varchar](100) NULL,
	[BeneficiarysBankIFSCCode] [varchar](50) NULL,
	[BeneficiaryBankAccountNumber] [varchar](50) NULL,
	[MemberNameInBank] [varchar](100) NULL,
	[MemberBankAccountNumber] [varchar](50) NULL,
	[MemberBankBranchName] [varchar](100) NULL,
	[MemberBankName] [varchar](100) NULL,
	[MemberBankIFSCCode] [varchar](50) NULL,
	[ActivitySince] [varchar](100) NULL,
	[BusinessCategory] [varchar](100) NULL,
	[DealingWithUsSince] [varchar](100) NULL,
	[FamilyDependends] [int] NULL,
	[FamilyIncomeSource] [varchar](100) NULL,
	[LandHolding] [varchar](100) NULL,
	[Indebtedness] [int] NULL,
	[PurposeOfLoan] [varchar](100) NULL,
	[InstallmentAmount] [float] NULL,
	[AccountExemptionEndDate] [datetime] NULL,
	[AccountExemptionStartDate] [datetime] NULL,
	[AnnualHouseholdIncome] [int] NULL,
	[CustomerExemptionEndDate] [datetime] NULL,
	[CustomerExemptionStartDate] [datetime] NULL,
	[GSTNumber] [varchar](50) NULL,
	[GSTState] [varchar](50) NULL,
	[IsAccountGSTExempted] [bit] NULL,
	[IsCustomerGSTExempted] [bit] NULL,
	[IsGSTRegistered] [bit] NULL,
	[IsRelatedParty] [bit] NULL,
	[MonthlyExpense] [int] NULL,
	[RelationEndDate] [datetime] NULL,
	[RelationStartDate] [datetime] NULL,
	[SanctionCancellingDate] [datetime] NULL,
	[UCIC] [varchar](100) NULL,
	[UtilizationPurchaseEuipments] [int] NULL,
	[UtilizationWorkingCapital] [int] NULL,
	[UtilizationRent] [int] NULL,
	[UtilizationBusinessExtension] [int] NULL,
	[UtilizationDebtPayment] [int] NULL,
	[UtilizationOther] [int] NULL,
	[CoreBusinessMonthlyIncome] [int] NULL,
	[CoreBusinessMonthlyExpenditure] [int] NULL,
	[CoreBusinessMonthlyProfit] [int] NULL,
	[CoreBusinessComments] [varchar](300) NULL,
	[OtherSourceMonthlyIncome] [int] NULL,
	[OtherSourceMonthlyExpenditure] [int] NULL,
	[OtherSourceMonthlyProfit] [int] NULL,
	[OtherSourceComments] [varchar](300) NULL,
	[CurrentDebt] [int] NULL,
	[MonthlyDebtPayment] [int] NULL,
	[BMCommentsOnLoanUtilization] [varchar](300) NULL,
	[CoBeneficiaryIDType] [int] NULL,
	[MemberBankAccountType] [varchar](50) NULL,
	[MemberBankAccountOpeningDate] [datetime] NULL,
	[MemberBankLastTransactionDate] [datetime] NULL,
	[AdultDependends] [int] NULL,
	[ChildDependends] [int] NULL,
	[GuarantorName] [varchar](100) NULL,
	[GuarantorRelation] [varchar](50) NULL,
	[GuarantorDateOfBirth] [datetime] NULL,
	[GuarantorAddress] [varchar](300) NULL,
	[GuarantorContactNumber] [varchar](100) NULL,
	[GuarantorIDNumber] [varchar](50) NULL,
	[CreditBureauCheckingDate] [datetime] NULL,
	[CreditBureauName] [varchar](50) NULL,
	[CreditBureauReportNumber] [varchar](50) NULL,
	[CreditBureauTotalActiveAccount] [int] NULL,
	[CreditBureauTotalOutstanding] [float] NULL,
	[CreditBureauTotalOverdue] [float] NULL,
	[CreditBureauComments] [varchar](300) NULL,
	[ApplicantComments] [varchar](300) NULL,
	[VerifierComments] [varchar](300) NULL,
	[LAN] [varchar](100) NULL,
	[ApprovedDisburseDateChanged] [bit] NULL,
	[BankRejectionDate] [datetime] NULL,
	[BankRejectedBy] [nvarchar](10) NULL,
	[BankRejectionRemarks] [varchar](512) NULL,
	[BankRejectionPhoto] [image] NULL,
	[BankRejectionCheckingDate] [datetime] NULL,
	[IDBICustomerID] [varchar](30) NULL,
	[IDBISBAcID] [varchar](20) NULL,
	[IDBILoanAcID] [varchar](20) NULL,
	[BankRejectionSubmissionDate] [datetime] NULL,
	[FirstApprovedDisburseDate] [datetime] NULL,
	[ApprovedChangedDate] [datetime] NULL,
	[ApprovedChangedBy] [nvarchar](10) NULL,
	[Cashflowed] [bit] NULL,
 CONSTRAINT [PK_P_LoanApplication_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_LoanApprovalLimitConfig]    Script Date: 11/15/2022 6:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_LoanApprovalLimitConfig](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_ProgramId] [bigint] NOT NULL,
	[P_Duration] [int] NOT NULL,
	[P_InstallmentType] [int] NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
	[ApprovalLimit] [float] NOT NULL,
 CONSTRAINT [PK_P_LoanApprovalLimitConfig_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_LoanConfig]    Script Date: 11/15/2022 6:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_LoanConfig](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [bigint] NULL,
	[P_ProgramId] [bigint] NOT NULL,
	[P_DurationId] [int] NULL,
	[P_InstallmentType] [int] NULL,
	[MaximumLoanAmount] [varchar](200) NULL,
	[MaximumLoanAmountForFirstCycle] [varchar](200) NULL,
	[MinimumLoanAmount] [varchar](200) NULL,
	[IncrementAmountMax] [varchar](200) NULL,
	[IncrementAmountMin] [varchar](200) NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
 CONSTRAINT [P_LoanConfig_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_LoanConfigLK]    Script Date: 11/15/2022 6:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_LoanConfigLK](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [bigint] NULL,
	[P_ProgramId] [bigint] NOT NULL,
	[P_DurationId] [int] NULL,
	[P_InstallmentType] [int] NULL,
	[StartingDate] [datetime] NOT NULL,
	[EndingDate] [datetime] NOT NULL,
	[MaximumLoanAmountForFirstCycle] [decimal](10, 2) NULL,
	[MaximumLoanAmount] [decimal](10, 2) NULL,
	[MinimumLoanAmount] [decimal](10, 2) NULL,
	[IncrementAmount] [decimal](10, 2) NULL,
	[MaximumSecurityAmount] [decimal](10, 2) NULL,
	[MinimumSecurityAmount] [decimal](10, 2) NULL,
	[MaximumSavingsAmount] [decimal](10, 2) NULL,
	[MinimumSavingsAmount] [decimal](10, 2) NULL,
	[DaysBetweenTwoLoanCycle] [decimal](10, 2) NULL,
	[WeeksToDisburseFromAdmissionDate] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_LoanDisbursementConfig]    Script Date: 11/15/2022 6:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_LoanDisbursementConfig](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_ProgramId] [bigint] NOT NULL,
	[P_Duration] [int] NOT NULL,
	[P_InstallmentType] [int] NOT NULL,
	[Type] [int] NOT NULL,
	[Value] [int] NOT NULL,
	[StartingDate] [datetime] NOT NULL,
	[EndingDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_P_LoanDisbursementConfig] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_LoanInterestReceivable]    Script Date: 11/15/2022 6:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_LoanInterestReceivable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[P_LoanAccountId] [bigint] NOT NULL,
	[Amount] [float] NOT NULL,
	[FinalAmount] [float] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_P_LoanInterestReceivable_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_LoanLimitConfiguration]    Script Date: 11/15/2022 6:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_LoanLimitConfiguration](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_ProgramId] [bigint] NOT NULL,
	[P_DurationId] [int] NOT NULL,
	[P_InstallmentType] [int] NOT NULL,
	[MinimumLoanLimit] [float] NOT NULL,
	[MaximumLoanCelling] [float] NOT NULL,
	[MaxLimitOfFirstCycle] [float] NOT NULL,
	[IsIncrement] [bit] NOT NULL,
	[IsFixed] [bit] NULL,
	[Amount] [float] NULL,
	[TotalAmount] [float] NULL,
	[IncrementFrom] [int] NULL,
	[MinimumSecurityAmount] [float] NOT NULL,
	[MinimumSecurityAmountSecondCycleOnward] [float] NOT NULL,
	[MinimumSavingsAmount] [float] NOT NULL,
	[MinimumSavingsAmountSecondCycleOnward] [float] NOT NULL,
	[DaysBetweenTwoLoanCycle] [float] NOT NULL,
	[WeeksToDisburseFromAdmissionDate] [float] NOT NULL,
	[IsFixedMinimumSecurity] [bit] NOT NULL,
	[IsFixedMaximumSecurity] [bit] NOT NULL,
	[IsFixedMinimumSavings] [bit] NOT NULL,
	[IsFixedMaximumSavings] [bit] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[UpdatedBy] [varchar](50) NULL,
	[UpdatedTime] [datetime] NULL,
 CONSTRAINT [PK_P_LoanLimitConfiguration_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_LoanOfficer]    Script Date: 11/15/2022 6:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_LoanOfficer](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[Code] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Designation] [nvarchar](100) NOT NULL,
	[StartingDate] [datetime] NOT NULL,
	[EndingDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
	[NeedInterchange] [bit] NOT NULL,
	[LinkedUserLogin] [nvarchar](10) NULL,
	[OldId] [int] NULL,
 CONSTRAINT [PK_P_LoanOfficer_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_P_LoanOfficer_Code] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_LoanOfficerMovement]    Script Date: 11/15/2022 6:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_LoanOfficerMovement](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[P_LoanOfficerId] [bigint] NOT NULL,
	[StartingDate] [datetime] NOT NULL,
	[EndingDate] [datetime] NOT NULL,
 CONSTRAINT [PK_P_LoanOfficerMovement_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_P_LoanOfficerMovement_P_LoanOfficerId_EndingDate] UNIQUE NONCLUSTERED 
(
	[P_LoanOfficerId] ASC,
	[EndingDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_P_LoanOfficerMovement_P_LoanOfficerId_StartingDate] UNIQUE NONCLUSTERED 
(
	[P_LoanOfficerId] ASC,
	[StartingDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_LoanSummary]    Script Date: 11/15/2022 6:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_LoanSummary](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [int] NULL,
	[P_ProgramId] [int] NULL,
	[P_Duration] [int] NULL,
	[P_InstallmentType] [int] NULL,
	[DisbursedDate] [int] NULL,
	[DisbursedGroup] [float] NULL,
	[Cycle] [int] NULL,
	[Religion] [int] NULL,
	[P_FundId] [int] NULL,
	[P_SchemeId] [int] NULL,
	[LocationType] [int] NULL,
	[DisbursedMember] [int] NULL,
	[DisbursedAmount] [float] NULL,
	[PrincipalDisbursedAmount] [float] NULL,
	[InterestDisbursedAmount] [float] NULL,
	[PrincipalRealizableAmount] [float] NULL,
	[InterestRealizableAmount] [float] NULL,
	[RealizableAmount] [float] NULL,
	[RealizedAmount] [float] NULL,
	[PrincipalRealizedAmount] [float] NULL,
	[InterestRealizedAmount] [float] NULL,
	[OverdueMember] [int] NULL,
	[OverdueAmount] [float] NULL,
	[PrincipalOverdueAmount] [float] NULL,
	[InterestOverdueAmount] [float] NULL,
	[OverdueLoanBalance] [float] NULL,
	[FullPaidMember] [int] NULL,
	[FullPaidAmount] [float] NULL,
	[PrincipalFullPaidAmount] [float] NULL,
	[InterestFullPaidAmount] [float] NULL,
	[ReceiveMember] [int] NULL,
	[PrincipalReceiveAmount] [float] NULL,
	[InterestReceiveAmount] [float] NULL,
	[ReceiveAmount] [float] NULL,
	[ReceiveAmountActual] [float] NULL,
	[ReceiveRealizableAmount] [float] NULL,
	[ReceiveRealizedAmount] [float] NULL,
	[ReceiveOverdueMember] [int] NULL,
	[ReceiveOverdueAmount] [float] NULL,
	[TransferMember] [int] NULL,
	[PrincipalTransferAmount] [float] NULL,
	[InterestTransferAmount] [float] NULL,
	[TransferAmount] [float] NULL,
	[TransferAmountActual] [float] NULL,
	[TransferRealizableAmount] [float] NULL,
	[TransferRealizedAmount] [float] NULL,
	[AdvanceMember] [int] NULL,
	[AdvanceAmount] [float] NULL,
	[PrincipalOutstandingAmount] [float] NULL,
	[InterestOutstandingAmount] [float] NULL,
	[OutstandingMember] [int] NULL,
	[OutstandingAmount] [float] NULL,
	[GainLossAmount] [float] NULL,
	[BranchCode] [int] NOT NULL,
	[TotalDisbursedMember] [int] NULL,
	[TotalPrincipalDisbursedAmount] [float] NULL,
	[TotalInterestDisbursedAmount] [float] NULL,
	[TotalDisbursedAmount] [float] NULL,
	[Sex] [int] NULL,
	[PrincipalOverdueRealizedAmount] [float] NULL,
	[OverdueRealizedAmount] [float] NULL,
	[Designation] [int] NULL,
	[IsSupplementary] [bit] NULL,
 CONSTRAINT [PK_P_Loansummary_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_LoanTransaction]    Script Date: 11/15/2022 6:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_LoanTransaction](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_LoanAccountId] [bigint] NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[A_AccountId] [bigint] NULL,
	[Type] [int] NOT NULL,
	[Process] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Debit] [float] NOT NULL,
	[Credit] [float] NOT NULL,
	[ChequeNumber] [varchar](20) NULL,
	[Description] [varchar](200) NOT NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[AuthorizedBy] [nvarchar](10) NULL,
	[AuthorizedDate] [datetime] NULL,
	[Status] [int] NOT NULL,
	[B_TransactionId] [bigint] NULL,
	[Client] [int] NOT NULL,
	[OrNumber] [varchar](25) NULL,
	[ArNumber] [varchar](25) NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[PayabbhiOrderId] [varchar](100) NULL,
	[PayabbhiTransactionId] [varchar](100) NULL,
	[MihpayId] [varchar](100) NULL,
	[PayUTransactionId] [varchar](100) NULL,
	[IciciQrMerchantTransactionId] [nvarchar](50) NULL,
	[IciciQrTransactionCompletionDate] [datetime] NULL,
	[IciciBankRRN] [nvarchar](100) NULL,
	[AuthorizeStatus] [nvarchar](1) NULL,
 CONSTRAINT [PK_P_LoanTransaction_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_LoanTransaction_Backup]    Script Date: 11/15/2022 6:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_LoanTransaction_Backup](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_LoanAccountId] [bigint] NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[A_AccountId] [bigint] NULL,
	[Type] [int] NOT NULL,
	[Process] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Debit] [float] NOT NULL,
	[Credit] [float] NOT NULL,
	[ChequeNumber] [varchar](20) NULL,
	[Description] [varchar](200) NOT NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[AuthorizedBy] [nvarchar](10) NULL,
	[AuthorizedDate] [datetime] NULL,
	[Status] [int] NOT NULL,
	[B_TransactionId] [bigint] NULL,
	[Client] [int] NOT NULL,
	[OrNumber] [varchar](25) NULL,
	[ArNumber] [varchar](25) NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[PayabbhiOrderId] [varchar](100) NULL,
	[PayabbhiTransactionId] [varchar](100) NULL,
	[MihpayId] [varchar](100) NULL,
	[PayUTransactionId] [varchar](100) NULL,
	[IciciQrMerchantTransactionId] [nvarchar](50) NULL,
	[IciciQrTransactionCompletionDate] [datetime] NULL,
	[IciciBankRRN] [nvarchar](100) NULL,
	[AuthorizeStatus] [nvarchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_LoanTransfer]    Script Date: 11/15/2022 6:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_LoanTransfer](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SourceBranchId] [bigint] NOT NULL,
	[DestinationBranchId] [bigint] NOT NULL,
	[P_LoanAccountId] [bigint] NOT NULL,
	[PrincipalAmount] [float] NOT NULL,
	[InterestAmount] [float] NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_P_LoanTransfer_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_LockdownSchedule]    Script Date: 11/15/2022 6:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_LockdownSchedule](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_ScheduleId] [bigint] NOT NULL,
	[P_LoanAccountId] [bigint] NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[LockdownDate] [datetime] NOT NULL,
	[InterestAmount] [float] NOT NULL,
	[P_LockeddownScheduleId] [bigint] NULL,
	[IsOverdueInterest] [int] NULL,
 CONSTRAINT [PK_P_LockdownSchedule_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_LockdownScheduleFixAC]    Script Date: 11/15/2022 6:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_LockdownScheduleFixAC](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_LoanAccountId] [bigint] NOT NULL,
 CONSTRAINT [PK_P_LockdownScheduleFixAC_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_MeetingMovement]    Script Date: 11/15/2022 6:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_MeetingMovement](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_GroupId] [bigint] NOT NULL,
	[StartingDate] [datetime] NOT NULL,
	[EndingDate] [datetime] NOT NULL,
	[MeetingDay] [int] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](10) NULL,
	[AuthorizeStatus] [nvarchar](1) NULL,
	[AuthorizedDate] [datetime] NULL,
	[AuthorizedBy] [nvarchar](10) NULL,
 CONSTRAINT [PK_P_MeetingMovement_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_P_MeetingMovement_P_GroupId_EndingDate] UNIQUE NONCLUSTERED 
(
	[P_GroupId] ASC,
	[EndingDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_P_MeetingMovement_P_GroupId_StartingDate] UNIQUE NONCLUSTERED 
(
	[P_GroupId] ASC,
	[StartingDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_Member]    Script Date: 11/15/2022 6:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_Member](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_GroupId] [bigint] NOT NULL,
	[DefaultP_ProgramId] [bigint] NOT NULL,
	[PassbookNumber] [int] NOT NULL,
	[MembershipType] [int] NOT NULL,
	[FullName] [varchar](100) NOT NULL,
	[DateOfBirth] [datetime] NOT NULL,
	[AdmissionDate] [datetime] NOT NULL,
	[NationalIdType] [int] NOT NULL,
	[NationalIdNumber] [varchar](50) NOT NULL,
	[FatherName] [varchar](100) NULL,
	[MotherName] [varchar](100) NULL,
	[SpouseName] [varchar](100) NULL,
	[GuarantorName] [varchar](100) NULL,
	[GuarantorRelation] [varchar](50) NULL,
	[GuarantorDateOfBirth] [datetime] NULL,
	[GuarantorAddress] [varchar](300) NULL,
	[GuarantorContactNumber] [varchar](100) NULL,
	[Sex] [int] NOT NULL,
	[Religion] [int] NOT NULL,
	[MaritalStatus] [int] NOT NULL,
	[Education] [varchar](100) NOT NULL,
	[Profession] [varchar](100) NOT NULL,
	[ResidenceType] [varchar](100) NOT NULL,
	[ProofOfAge] [int] NOT NULL,
	[ProofOfAddress] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[ClosingDate] [datetime] NULL,
	[DropoutReason] [int] NULL,
	[ResidentialAddress] [varchar](530) NOT NULL,
	[PostalAddress] [varchar](550) NOT NULL,
	[ContactNumber] [varchar](100) NOT NULL,
	[UniqueId] [uniqueidentifier] NOT NULL,
	[Client] [int] NOT NULL,
	[AdditionalNationalIdType] [int] NULL,
	[AdditionalNationalIdNumber] [varchar](50) NULL,
	[FatherDateOfBirth] [datetime] NULL,
	[MotherDateOfBirth] [datetime] NULL,
	[SpouseDateOfBirth] [datetime] NULL,
	[TINNumber] [varchar](20) NULL,
	[HouseOwnerName] [varchar](100) NULL,
	[Caste] [varchar](50) NULL,
	[LocationType] [varchar](50) NULL,
	[PovertyLevel] [varchar](50) NULL,
	[PermanentRegion] [varchar](100) NULL,
	[PermanentArea] [varchar](100) NULL,
	[PermanentDistrict] [varchar](100) NULL,
	[PermanentVillage] [varchar](100) NULL,
	[PermanentBlock] [varchar](100) NULL,
	[PermanentHouse] [varchar](100) NULL,
	[PermanentMobile] [varchar](20) NULL,
	[PermanentLandMark] [varchar](100) NULL,
	[PermanentPinCode] [varchar](10) NULL,
	[PermanentLandPhone] [varchar](20) NULL,
	[AllowMobileAlerts] [bit] NULL,
	[MaidenName] [varchar](100) NULL,
	[NumberOfRooms] [int] NULL,
	[HouseType] [varchar](50) NULL,
	[PermanentLivingAtCurrentHome] [int] NULL,
	[PermanentState] [varchar](100) NULL,
	[PermanentCountry] [varchar](100) NULL,
	[OldId] [int] NULL,
	[GuarantorNationalIdNumber] [varchar](50) NULL,
	[AdditionalGuarantorName] [varchar](100) NULL,
	[AdditionalGuarantorRelation] [varchar](50) NULL,
	[AdditionalGuarantorDateOfBirth] [datetime] NULL,
	[AdditionalGuarantorAddress] [varchar](300) NULL,
	[AdditionalGuarantorContactNumber] [varchar](100) NULL,
	[AdditionalGuarantorNationalIdNumber] [varchar](50) NULL,
	[SpecialIdentification] [int] NULL,
	[FirstName] [varchar](100) NULL,
	[MiddleName] [varchar](100) NULL,
	[LastName] [varchar](100) NULL,
	[ParentMemberId] [bigint] NULL,
	[MaxCycleWhenTransferred] [int] NULL,
	[RegionId] [bigint] NULL,
	[BarangayId] [bigint] NULL,
	[PermanentAddressRegionId] [bigint] NULL,
	[PermanentAddressBarangayId] [bigint] NULL,
	[AdhaarCardUpdateCount] [int] NULL,
	[AdhaarCardUpdateBy] [nvarchar](10) NULL,
	[AdhaarCardUpdateDate] [datetime] NULL,
	[BusinessLocation] [varchar](200) NULL,
	[MemberNominee] [varchar](100) NULL,
	[MemberNomineeNationalId] [varchar](50) NULL,
	[BVN] [bigint] NULL,
	[LGA] [varchar](50) NULL,
	[IsBlacklisted] [bit] NULL,
	[IsDormant] [bit] NULL,
	[MotherMaidenFirstName] [nvarchar](20) NULL,
	[MotherMaidenMiddleName] [nvarchar](20) NULL,
	[MotherMaidenLastName] [nvarchar](20) NULL,
	[PresentContact] [nvarchar](20) NULL,
	[PresentMunicipalityId] [bigint] NULL,
	[PresentGovtRegionId] [bigint] NULL,
	[PresentProvinceId] [bigint] NULL,
	[PermanentMunicipalityId] [bigint] NULL,
	[PermanentGovtRegionId] [bigint] NULL,
	[PermanentProvinceId] [bigint] NULL,
	[PermanentBarangayId] [bigint] NULL,
	[PermanentPostCode] [int] NULL,
	[PresentHouse] [varchar](100) NULL,
	[PresentMobile] [varchar](20) NULL,
	[PresentPostCode] [int] NULL,
	[PresentLandPhone] [varchar](20) NULL,
	[PresentLandMark] [varchar](100) NULL,
	[PermanentProofOfAddress] [int] NULL,
	[NationalIdIssueDate] [datetime] NULL,
	[MPesaNo] [nvarchar](30) NULL,
	[ThirdGuarantorName] [varchar](100) NULL,
	[ThirdGuarantorRelation] [varchar](50) NULL,
	[ThirdGuarantorDateOfBirth] [datetime] NULL,
	[ThirdGuarantorAddress] [varchar](300) NULL,
	[ThirdGuarantorContactNumber] [varchar](100) NULL,
	[ThirdGuarantorNationalIdNumber] [varchar](50) NULL,
	[AmlVerified] [bit] NULL,
	[OTPCode] [varchar](50) NULL,
	[OTPAuthenticationStatus] [int] NULL,
	[OTPReferenceNumber] [varchar](50) NULL,
	[SubProfession] [varchar](250) NULL,
	[PermanentRoad] [nvarchar](100) NULL,
	[PermanentUpazilaThana] [nvarchar](100) NULL,
	[PermanentUnionWard] [nvarchar](100) NULL,
	[PermanentPostOffice] [nvarchar](100) NULL,
	[PresentRoad] [nvarchar](100) NULL,
	[PresentUpazilaThana] [nvarchar](100) NULL,
	[PresentUnionWard] [nvarchar](100) NULL,
	[PresentPostOffice] [nvarchar](100) NULL,
	[PresentVillage] [nvarchar](100) NULL,
	[DrivingLicenseNumber] [varchar](50) NULL,
	[OTPVerifyBy] [varchar](100) NULL,
	[OTPVerifyDate] [datetime] NULL,
	[ReActivateStatus] [int] NOT NULL,
	[ReActivatedDate] [datetime] NULL,
	[DormantDate] [datetime] NULL,
	[DormantFlagged] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](10) NULL,
	[AuthorizeStatus] [nvarchar](1) NULL,
	[AuthorizedDate] [datetime] NULL,
	[AuthorizedBy] [nvarchar](10) NULL,
	[MemberClassificationCategory] [int] NULL,
	[EmployeeId] [int] NULL,
	[GuarantorEmployeeId] [int] NULL,
	[AdditionalGuarantorEmployeeId] [int] NULL,
	[IsEnabledSmsNotification] [bit] NOT NULL,
	[IsReferenceMember] [bit] NOT NULL,
	[CoreMemberId] [int] NULL,
 CONSTRAINT [PK_P_Member_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_MemberAttendance]    Script Date: 11/15/2022 6:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_MemberAttendance](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[P_MemberId] [bigint] NOT NULL,
	[DateTime] [datetime] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_P_MemberAttendance_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_MemberB_Customer_Mapping]    Script Date: 11/15/2022 6:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_MemberB_Customer_Mapping](
	[MemberId] [bigint] NOT NULL,
	[NationalIdNumber] [varchar](50) NULL,
	[CustomerId] [bigint] NOT NULL,
	[CustomerNumber] [varchar](10) NULL,
	[IdentityNumber] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_MemberFaceTemplate]    Script Date: 11/15/2022 6:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_MemberFaceTemplate](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_MemberId] [bigint] NOT NULL,
	[Photo] [image] NOT NULL,
	[FaceEmbedding] [varbinary](max) NULL,
	[Status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_MemberFaceTemplateHistory]    Script Date: 11/15/2022 6:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_MemberFaceTemplateHistory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_MemberId] [bigint] NOT NULL,
	[Photo] [image] NOT NULL,
	[FaceEmbedding] [varbinary](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_MemberFingerPrintVerifyRequest]    Script Date: 11/15/2022 6:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_MemberFingerPrintVerifyRequest](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_MemberId] [bigint] NOT NULL,
	[Finger] [int] NOT NULL,
	[StartIndex] [bigint] NOT NULL,
	[EndIndex] [bigint] NOT NULL,
	[StartDateTime] [datetime] NULL,
	[EndDateTime] [datetime] NULL,
	[NodeNo] [tinyint] NOT NULL,
	[Status] [tinyint] NOT NULL,
	[MatchedMemberId] [bigint] NULL,
	[RequestId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_P_MemberFingerPrintVerifyRequest_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_MemberFingerTemplate]    Script Date: 11/15/2022 6:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_MemberFingerTemplate](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_MemberId] [bigint] NOT NULL,
	[Template] [image] NOT NULL,
	[Finger] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[FeatureSet] [image] NULL,
	[IsVerified] [bit] NULL,
 CONSTRAINT [PK_P_MemberFingerTemplate_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_MemberFingerTemplateHist]    Script Date: 11/15/2022 6:19:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_MemberFingerTemplateHist](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_MemberId] [bigint] NOT NULL,
	[Template] [image] NOT NULL,
	[Finger] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[FeatureSet] [image] NULL,
	[IsVerified] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](20) NULL,
 CONSTRAINT [PK_P_MemberFingerTemplateHist_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_MemberMovement]    Script Date: 11/15/2022 6:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_MemberMovement](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_GroupId] [bigint] NOT NULL,
	[P_MemberId] [bigint] NOT NULL,
	[StartingDate] [datetime] NOT NULL,
	[EndingDate] [datetime] NOT NULL,
	[BranchId] [bigint] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](10) NULL,
	[AuthorizeStatus] [nvarchar](1) NULL,
	[AuthorizedDate] [datetime] NULL,
	[AuthorizedBy] [nvarchar](10) NULL,
 CONSTRAINT [PK_P_MemberMovement_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_P_MemberMovement_P_MemberId_EndingDate] UNIQUE NONCLUSTERED 
(
	[P_MemberId] ASC,
	[EndingDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_P_MemberMovement_P_MemberId_StartingDate] UNIQUE NONCLUSTERED 
(
	[P_MemberId] ASC,
	[StartingDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_MemberRole]    Script Date: 11/15/2022 6:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_MemberRole](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_P_MemberRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_MemberStatus]    Script Date: 11/15/2022 6:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_MemberStatus](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_MemberId] [bigint] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[DropoutReason] [int] NULL,
	[StartingDate] [datetime] NOT NULL,
	[EndingDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[AuthorizeStatus] [nvarchar](1) NULL,
	[AuthorizedDate] [datetime] NULL,
	[AuthorizedBy] [nvarchar](10) NULL,
 CONSTRAINT [PK_P_MemberStatus_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_P_MemberStatus_P_MemberId_StartingDate] UNIQUE NONCLUSTERED 
(
	[P_MemberId] ASC,
	[StartingDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_Moratorium]    Script Date: 11/15/2022 6:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_Moratorium](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_LoanAccountId] [bigint] NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[Interest] [float] NOT NULL,
	[Description] [varchar](200) NOT NULL,
	[LastPayDate] [datetime] NULL,
	[ScheduledDate] [datetime] NOT NULL,
	[NewScheduledDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[Status] [int] NOT NULL,
	[PrincipalOutstanding] [float] NULL,
	[Date] [datetime] NULL,
	[IsInterestFix] [int] NULL,
	[AdditionalInterestPaid] [float] NULL,
	[ReProcessFlag] [int] NULL,
	[IsApplyInterest] [bit] NULL,
 CONSTRAINT [PK_P_Moratorium_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_MoratoriumOldSchedule]    Script Date: 11/15/2022 6:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_MoratoriumOldSchedule](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_MoratoriumId] [bigint] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[ScheduledDate] [datetime] NOT NULL,
	[NewScheduledDate] [datetime] NOT NULL,
	[InterestAmount] [float] NULL,
	[PrincipalOutstanding] [float] NULL,
	[LockdownInterest] [float] NULL,
	[InstallmentNumber] [int] NOT NULL,
	[InterestWaived] [bit] NULL,
	[P_LoanAccountId] [bigint] NULL,
	[OldInterestAmount] [float] NULL,
	[InterestPaid] [float] NULL,
	[PrincipalPaid] [float] NULL,
 CONSTRAINT [PK_P_MoratoriumOldSchedule_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_MoratoriumOldScheduleFix]    Script Date: 11/15/2022 6:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_MoratoriumOldScheduleFix](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_MoratoriumId] [bigint] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[ScheduledDate] [datetime] NOT NULL,
	[NewScheduledDate] [datetime] NOT NULL,
	[InterestAmount] [float] NULL,
	[PrincipalOutstanding] [float] NULL,
	[LockdownInterest] [float] NULL,
	[InstallmentNumber] [int] NOT NULL,
	[OldInterestAmount] [float] NULL,
	[InterestPaid] [float] NULL,
	[PrincipalPaid] [float] NULL,
	[ProcessDate] [datetime] NOT NULL,
 CONSTRAINT [PK_P_MoratoriumOldScheduleFix_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_MoratoriumParameter]    Script Date: 11/15/2022 6:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_MoratoriumParameter](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_ProgramId] [bigint] NOT NULL,
	[InterestRate] [float] NOT NULL,
	[DecliningInterestRate] [float] NOT NULL,
	[StartingDate] [datetime] NOT NULL,
	[EndingDate] [datetime] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_P_MoratoriumParameter_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_MoratoriumSchedule]    Script Date: 11/15/2022 6:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_MoratoriumSchedule](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_ScheduleId] [bigint] NOT NULL,
	[P_LoanAccountId] [bigint] NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[InterestAmount] [float] NOT NULL,
	[P_MoratoriumScheduleId] [bigint] NULL,
	[P_MoratoriumId] [bigint] NULL,
	[IsNewSchedule] [int] NULL,
 CONSTRAINT [PK_P_MoratoriumSchedule_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_MPesaChargeWithdrawReturn]    Script Date: 11/15/2022 6:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_MPesaChargeWithdrawReturn](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[TransactionAmountMin] [float] NULL,
	[TransactionAmountMax] [float] NULL,
	[Charges] [float] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](10) NULL,
	[TimeStamp] [datetime] NULL,
 CONSTRAINT [PK_P_MPesaChargeWithdrawReturn] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_MrfAccount]    Script Date: 11/15/2022 6:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_MrfAccount](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_LoanAccountId] [bigint] NULL,
	[P_MemberId] [bigint] NOT NULL,
	[P_ProgramId] [bigint] NOT NULL,
	[TransferDate] [datetime] NOT NULL,
	[TransferAmount] [float] NOT NULL,
	[Status] [int] NOT NULL,
	[ClosingDate] [datetime] NULL,
	[ClosingReason] [int] NULL,
	[AccountNumber] [varchar](50) NOT NULL,
	[Client] [int] NOT NULL,
 CONSTRAINT [PK_P_MrfAccount_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_P_MrfAccount_AccountNumber] UNIQUE NONCLUSTERED 
(
	[AccountNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_MrfTransaction]    Script Date: 11/15/2022 6:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_MrfTransaction](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_MrfAccountId] [bigint] NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[A_AccountId] [bigint] NULL,
	[Type] [int] NOT NULL,
	[Process] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Debit] [float] NOT NULL,
	[Credit] [float] NOT NULL,
	[ChequeNumber] [varchar](20) NULL,
	[Description] [varchar](200) NOT NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[AuthorizedBy] [nvarchar](10) NULL,
	[AuthorizedDate] [datetime] NULL,
	[Status] [int] NOT NULL,
	[Client] [int] NOT NULL,
	[OrNumber] [varchar](25) NULL,
	[ArNumber] [varchar](25) NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
 CONSTRAINT [PK_P_MrfTransaction_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_OtherFee]    Script Date: 11/15/2022 6:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_OtherFee](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_ProgramId] [bigint] NOT NULL,
	[P_Duration] [int] NOT NULL,
	[P_InstallmentType] [int] NOT NULL,
	[ShortName] [varchar](100) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Amount] [float] NOT NULL,
	[TransactionType] [int] NOT NULL,
	[WhileAdmission] [bit] NOT NULL,
	[WhileDisbursing] [bit] NOT NULL,
	[IsFixed] [bit] NOT NULL,
	[Condition] [int] NOT NULL,
	[ConditionAmount] [float] NOT NULL,
	[StartingDate] [datetime] NOT NULL,
	[EndingDate] [datetime] NOT NULL,
	[SortOrder] [int] NOT NULL,
	[IsVatable] [bit] NOT NULL,
	[VatPercentage] [numeric](5, 2) NULL,
	[IsApplicableForFirstCycle] [bit] NOT NULL,
	[IsApplicableForRejoindFirstCycle] [bit] NOT NULL,
	[AllowReforming] [bit] NULL,
 CONSTRAINT [PK_P_OtherFee_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_OthersTransaction]    Script Date: 11/15/2022 6:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_OthersTransaction](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_LoanAccountId] [bigint] NULL,
	[P_MemberId] [bigint] NOT NULL,
	[P_ProgramId] [bigint] NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[A_AccountId] [bigint] NULL,
	[Type] [int] NOT NULL,
	[Process] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Debit] [float] NOT NULL,
	[Credit] [float] NOT NULL,
	[ChequeNumber] [varchar](20) NULL,
	[Description] [varchar](200) NOT NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[AuthorizedBy] [nvarchar](10) NULL,
	[AuthorizedDate] [datetime] NULL,
	[Status] [int] NOT NULL,
	[B_TransactionId] [bigint] NULL,
	[Client] [int] NOT NULL,
	[OrNumber] [varchar](25) NULL,
	[ArNumber] [varchar](25) NULL,
	[PolicyNumber] [varchar](100) NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[P_MemberFingerTemplateId] [bigint] NULL,
	[P_SecurityAccountId] [bigint] NULL,
	[AuthorizeStatus] [nvarchar](1) NULL,
 CONSTRAINT [PK_P_OthersTransaction_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_OverdueInerestNonEIR]    Script Date: 11/15/2022 6:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_OverdueInerestNonEIR](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_ScheduleId] [bigint] NOT NULL,
	[P_LoanAccountId] [bigint] NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[OverdueDate] [datetime] NOT NULL,
	[NextDate] [datetime] NOT NULL,
	[PrincipalOutstanding] [float] NOT NULL,
	[InterestAmount] [float] NOT NULL,
	[LockdownInterest] [float] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[InterestPaid] [float] NULL,
 CONSTRAINT [PK_P_OverdueInerestNonEIR_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_OverdueInerestProcess]    Script Date: 11/15/2022 6:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_OverdueInerestProcess](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_LoanAccountId] [bigint] NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[LastScheduledDate] [datetime] NULL,
	[ScheduledDate] [datetime] NOT NULL,
	[Interest] [float] NOT NULL,
	[PrincipalOutstanding] [float] NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_P_OverdueInerestProcess_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_OverdueRecoveryTransaction]    Script Date: 11/15/2022 6:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_OverdueRecoveryTransaction](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_LoanAccountId] [bigint] NOT NULL,
	[P_MemberId] [bigint] NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[A_AccountId] [bigint] NULL,
	[Type] [int] NOT NULL,
	[Process] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Debit] [float] NOT NULL,
	[Credit] [float] NOT NULL,
	[ChequeNumber] [varchar](20) NULL,
	[Description] [varchar](200) NOT NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[AuthorizedBy] [nvarchar](10) NULL,
	[AuthorizedDate] [datetime] NULL,
	[Status] [int] NOT NULL,
	[B_TransactionId] [bigint] NULL,
	[Client] [int] NOT NULL,
	[OrNumber] [varchar](10) NULL,
	[ArNumber] [varchar](10) NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
 CONSTRAINT [PK_P_OverdueRecoveryTransaction_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_P_OverdueRecoveryTransaction_P_LoanAccountId_Type_Process_Date_CreatedBy_Debit_Credit] UNIQUE NONCLUSTERED 
(
	[P_LoanAccountId] ASC,
	[Type] ASC,
	[Process] ASC,
	[Date] ASC,
	[CreatedBy] ASC,
	[Debit] ASC,
	[Credit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_ProcessAccruedInterestIncome]    Script Date: 11/15/2022 6:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_ProcessAccruedInterestIncome](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[ProcessedDate] [datetime] NOT NULL,
	[Status] [bit] NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_P_ProcessAccruedInterestIncome_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_Program]    Script Date: 11/15/2022 6:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_Program](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_ProgramTypeId] [bigint] NOT NULL,
	[ShortName] [varchar](100) NOT NULL,
	[Name] [varchar](100) NULL,
	[Description] [varchar](300) NULL,
	[IsPrimary] [bit] NOT NULL,
	[IsLongTerm] [bit] NOT NULL,
	[IsCollectionSheet] [bit] NOT NULL,
	[StartingDate] [datetime] NOT NULL,
	[EndingDate] [datetime] NOT NULL,
	[SortOrder] [int] NOT NULL,
	[IgnoreHoliday] [bit] NOT NULL,
	[AllowReforming] [bit] NULL,
 CONSTRAINT [PK_P_Program_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_ProgramGroup]    Script Date: 11/15/2022 6:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_ProgramGroup](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_GroupTypeId] [bigint] NOT NULL,
	[P_ProgramGroupProgramId] [bigint] NOT NULL,
	[P_ProgramId] [bigint] NOT NULL,
	[P_DefaultInstallmentType] [int] NOT NULL,
	[P_DefaultDuration] [int] NOT NULL,
 CONSTRAINT [PK_P_ProgramGroup_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_P_ProgramGroup_P_GroupTypeId_P_ProgramGroupProgramId_P_ProgramId] UNIQUE NONCLUSTERED 
(
	[P_GroupTypeId] ASC,
	[P_ProgramGroupProgramId] ASC,
	[P_ProgramId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_ProgramGroupDuration]    Script Date: 11/15/2022 6:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_ProgramGroupDuration](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_GroupTypeId] [bigint] NOT NULL,
	[P_ProgramGroupProgramId] [bigint] NOT NULL,
	[P_ProgramId] [bigint] NOT NULL,
	[P_Duration] [int] NOT NULL,
	[StartingDate] [datetime] NOT NULL,
	[EndingDate] [datetime] NOT NULL,
	[SortOrder] [int] NOT NULL,
 CONSTRAINT [PK_P_ProgramGroupDuration_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_ProgramGroupInstallment]    Script Date: 11/15/2022 6:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_ProgramGroupInstallment](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_GroupTypeId] [bigint] NOT NULL,
	[P_ProgramGroupProgramId] [bigint] NOT NULL,
	[P_ProgramId] [bigint] NOT NULL,
	[P_Duration] [int] NOT NULL,
	[P_InstallmentType] [int] NOT NULL,
	[StartingDate] [datetime] NOT NULL,
	[EndingDate] [datetime] NOT NULL,
	[SortOrder] [int] NOT NULL,
 CONSTRAINT [PK_P_ProgramGroupInstallment_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_ProgramGroupType]    Script Date: 11/15/2022 6:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_ProgramGroupType](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_GroupTypeId] [bigint] NOT NULL,
	[P_ProgramId] [bigint] NOT NULL,
 CONSTRAINT [PK_P_ProgramGroupType_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_P_ProgramGroupType_P_GroupTypeId_P_ProgramId] UNIQUE NONCLUSTERED 
(
	[P_GroupTypeId] ASC,
	[P_ProgramId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_ProgramType]    Script Date: 11/15/2022 6:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_ProgramType](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[DisplayName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_P_ProgramType_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_P_ProgramType_DisplayName] UNIQUE NONCLUSTERED 
(
	[DisplayName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_P_ProgramType_Name] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_QrCodeProcessStatus]    Script Date: 11/15/2022 6:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_QrCodeProcessStatus](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[MerchantId] [bigint] NOT NULL,
	[SubMerchantId] [bigint] NULL,
	[TerminalId] [bigint] NULL,
	[BankRRN] [nvarchar](100) NOT NULL,
	[MerchantTranId] [nvarchar](50) NOT NULL,
	[PayerName] [nvarchar](100) NULL,
	[PayerMobile] [nvarchar](20) NOT NULL,
	[PayerVA] [nvarchar](300) NULL,
	[PayerAmount] [float] NOT NULL,
	[TxnStatus] [nvarchar](50) NOT NULL,
	[TxnInitDate] [datetime] NOT NULL,
	[TxnCompletionDate] [datetime] NOT NULL,
	[QrProcessStatus] [int] NOT NULL,
	[CallBackHitDateTime] [datetime] NULL,
	[CallBackProcessDateTime] [datetime] NULL,
	[Message] [nvarchar](1000) NULL,
 CONSTRAINT [PK_P_QrCodeProcessStatus_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_ReportConfig]    Script Date: 11/15/2022 6:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_ReportConfig](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Query] [text] NOT NULL,
	[DateBetween] [bit] NOT NULL,
	[ShowFilter] [bit] NOT NULL,
	[CallOtherFunction] [bit] NULL,
 CONSTRAINT [PK_P_ReportConfig_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_ReScheduleHistory]    Script Date: 11/15/2022 6:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_ReScheduleHistory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_LoanAccountId] [bigint] NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[Date] [date] NOT NULL,
	[InstallmentNumber] [int] NOT NULL,
	[NewScheduledDate] [datetime] NOT NULL,
	[OldScheduledDate] [datetime] NOT NULL,
	[ReasonId] [int] NOT NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[AuthorizedBy] [nvarchar](10) NULL,
	[AuthorizedDate] [datetime] NULL,
 CONSTRAINT [PK_P_ReScheduleHistory_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_ReScheduleHistoryBackup]    Script Date: 11/15/2022 6:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_ReScheduleHistoryBackup](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_LoanAccountId] [bigint] NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[Date] [date] NOT NULL,
	[InstallmentNumber] [int] NOT NULL,
	[NewScheduledDate] [datetime] NOT NULL,
	[OldScheduledDate] [datetime] NOT NULL,
	[ReasonId] [int] NOT NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[AuthorizedBy] [nvarchar](10) NULL,
	[AuthorizedDate] [datetime] NULL,
 CONSTRAINT [PK_P_ReScheduleHistoryBackup_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_SavingsAccount]    Script Date: 11/15/2022 6:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_SavingsAccount](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_MemberId] [bigint] NOT NULL,
	[P_ProgramId] [bigint] NOT NULL,
	[P_Duration] [int] NOT NULL,
	[P_InstallmentType] [int] NOT NULL,
	[OpeningDate] [datetime] NOT NULL,
	[MinimumDeposit] [float] NOT NULL,
	[Status] [int] NOT NULL,
	[ClosingDate] [datetime] NULL,
	[ClosingReason] [int] NULL,
	[MonthlyIncomeAmount] [float] NOT NULL,
	[AccountNumber] [varchar](50) NOT NULL,
	[Client] [int] NOT NULL,
	[DormantDate] [datetime] NULL,
	[DormantAmount] [float] NULL,
	[NubanNumber] [varchar](50) NULL,
	[InActiveDate] [datetime] NULL,
	[ReactiavtedDate] [datetime] NULL,
	[ReactiavtedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](10) NULL,
	[AuthorizeStatus] [nvarchar](1) NULL,
	[AuthorizedDate] [datetime] NULL,
	[AuthorizedBy] [nvarchar](10) NULL,
 CONSTRAINT [PK_P_SavingsAccount_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_P_SavingsAccount_AccountNumber] UNIQUE NONCLUSTERED 
(
	[AccountNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_SavingsAccountInterest]    Script Date: 11/15/2022 6:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_SavingsAccountInterest](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_SavingsAccountId] [bigint] NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[A_AccountId] [bigint] NULL,
	[AccountNumber] [nvarchar](50) NULL,
	[Type] [int] NOT NULL,
	[Process] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[principalAmount] [float] NOT NULL,
	[interest] [float] NOT NULL,
	[Description] [varchar](200) NOT NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[AuthorizedBy] [nvarchar](10) NULL,
	[AuthorizedDate] [datetime] NULL,
 CONSTRAINT [PK_P_SavingsAccountInterest] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_SavingsInterestConfig]    Script Date: 11/15/2022 6:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_SavingsInterestConfig](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [bigint] NULL,
	[P_ProgramId] [bigint] NOT NULL,
	[P_DurationId] [int] NULL,
	[P_InstallmentType] [int] NULL,
	[RateType] [int] NULL,
	[InterestRate] [nvarchar](200) NULL,
	[StartingDate] [datetime] NOT NULL,
	[EndingDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_SavingsTransaction]    Script Date: 11/15/2022 6:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_SavingsTransaction](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_SavingsAccountId] [bigint] NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[A_AccountId] [bigint] NULL,
	[Type] [int] NOT NULL,
	[Process] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Debit] [float] NOT NULL,
	[Credit] [float] NOT NULL,
	[ChequeNumber] [varchar](20) NULL,
	[Description] [varchar](200) NOT NULL,
	[P_LoanTransactionId] [bigint] NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[AuthorizedBy] [nvarchar](10) NULL,
	[AuthorizedDate] [datetime] NULL,
	[Status] [int] NOT NULL,
	[Client] [int] NOT NULL,
	[OrNumber] [varchar](25) NULL,
	[ArNumber] [varchar](25) NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[P_SavingsTransactionId] [bigint] NULL,
	[P_MemberFingerTemplateId] [bigint] NULL,
	[AuthorizeStatus] [nvarchar](1) NULL,
 CONSTRAINT [PK_P_SavingsTransaction_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_SavingsTransfer]    Script Date: 11/15/2022 6:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_SavingsTransfer](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SourceBranchId] [bigint] NOT NULL,
	[DestinationBranchId] [bigint] NOT NULL,
	[P_SavingsAccountId] [bigint] NOT NULL,
	[Amount] [float] NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_P_SavingsTransfer_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_Schedule]    Script Date: 11/15/2022 6:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_Schedule](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_LoanAccountId] [bigint] NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[InstallmentNumber] [int] NOT NULL,
	[Scheduled] [bit] NOT NULL,
	[ScheduledDate] [datetime] NOT NULL,
	[NextDate] [datetime] NOT NULL,
	[BaseInstallmentAmount] [float] NOT NULL,
	[BasePrincipalInstallment] [float] NOT NULL,
	[InstallmentAmount] [float] NOT NULL,
	[PrincipalInstallment] [float] NOT NULL,
	[PaidAmount] [float] NOT NULL,
	[PrincipalPaid] [float] NOT NULL,
	[AdvanceAmount] [float] NOT NULL,
	[RealizableAmount] [float] NOT NULL,
	[PrincipalRealizable] [float] NOT NULL,
	[RealizedAmount] [float] NOT NULL,
	[PrincipalRealized] [float] NOT NULL,
	[OverdueAmount] [float] NOT NULL,
	[PrincipalOverdue] [float] NOT NULL,
	[OutstandingAmount] [float] NOT NULL,
	[PrincipalOutstanding] [float] NOT NULL,
	[Comment] [int] NULL,
	[OverdueRecoveryAmount] [float] NULL,
	[OverdueRecoveryPaid] [float] NULL,
	[AdditionalInterest] [float] NULL,
	[AdditionalInterestApplied] [float] NULL,
	[AdditionalInterestPaid] [float] NULL,
	[MoratoriumReason] [int] NULL,
	[InterestOnOverdue] [float] NULL,
	[MoratoriumInterest] [float] NULL,
	[MoratoriumInterestApplied] [float] NULL,
	[MoratoriumInterestPaid] [float] NULL,
 CONSTRAINT [PK_P_Schedule_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_Scheme]    Script Date: 11/15/2022 6:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_Scheme](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[SortOrder] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_P_Scheme_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_P_Scheme_Name] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_SecurityAccount]    Script Date: 11/15/2022 6:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_SecurityAccount](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_MemberId] [bigint] NOT NULL,
	[P_ProgramId] [bigint] NOT NULL,
	[P_Duration] [int] NOT NULL,
	[P_InstallmentType] [int] NOT NULL,
	[OpeningDate] [datetime] NOT NULL,
	[MinimumDeposit] [float] NOT NULL,
	[Status] [int] NOT NULL,
	[ClosingDate] [datetime] NULL,
	[ClosingReason] [int] NULL,
	[MonthlyIncomeAmount] [float] NOT NULL,
	[AccountNumber] [varchar](50) NOT NULL,
	[Client] [int] NOT NULL,
	[OldId] [int] NULL,
	[DormantDate] [datetime] NULL,
	[DormantAmount] [int] NULL,
	[NubanNumber] [varchar](50) NULL,
	[InActiveDate] [datetime] NULL,
	[ReactiavtedDate] [datetime] NULL,
	[ReactiavtedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](10) NULL,
	[AuthorizeStatus] [nvarchar](1) NULL,
	[AuthorizedDate] [datetime] NULL,
	[AuthorizedBy] [nvarchar](10) NULL,
 CONSTRAINT [PK_P_SecurityAccount_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_P_SecurityAccount_AccountNumber] UNIQUE NONCLUSTERED 
(
	[AccountNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_SecurityTransaction]    Script Date: 11/15/2022 6:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_SecurityTransaction](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_SecurityAccountId] [bigint] NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[A_AccountId] [bigint] NULL,
	[Type] [int] NOT NULL,
	[Process] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Debit] [float] NOT NULL,
	[Credit] [float] NOT NULL,
	[ChequeNumber] [varchar](20) NULL,
	[Description] [varchar](200) NOT NULL,
	[P_LoanTransactionId] [bigint] NULL,
	[P_SecurityTransactionId] [bigint] NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[AuthorizedBy] [nvarchar](10) NULL,
	[AuthorizedDate] [datetime] NULL,
	[Status] [int] NOT NULL,
	[B_TransactionId] [bigint] NULL,
	[Client] [int] NOT NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[AuthorizeStatus] [nvarchar](1) NULL,
 CONSTRAINT [PK_P_SecurityTransaction_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_SecurityTransaction_lost]    Script Date: 11/15/2022 6:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_SecurityTransaction_lost](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_SecurityAccountId] [bigint] NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[A_AccountId] [bigint] NULL,
	[Type] [int] NOT NULL,
	[Process] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Debit] [float] NOT NULL,
	[Credit] [float] NOT NULL,
	[ChequeNumber] [varchar](20) NULL,
	[Description] [varchar](200) NOT NULL,
	[P_LoanTransactionId] [bigint] NULL,
	[P_SecurityTransactionId] [bigint] NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[AuthorizedBy] [nvarchar](10) NULL,
	[AuthorizedDate] [datetime] NULL,
	[Status] [int] NOT NULL,
	[B_TransactionId] [bigint] NULL,
	[Client] [int] NOT NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_SecurityTransfer]    Script Date: 11/15/2022 6:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_SecurityTransfer](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SourceBranchId] [bigint] NOT NULL,
	[DestinationBranchId] [bigint] NOT NULL,
	[P_SecurityAccountId] [bigint] NOT NULL,
	[Amount] [float] NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_P_SecurityTransfer_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_StaffLoanConfiguration]    Script Date: 11/15/2022 6:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_StaffLoanConfiguration](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_ProgramId] [bigint] NOT NULL,
	[MaximumLoanAmount] [float] NULL,
	[MinimumLoanAmount] [float] NULL,
	[DaysBetweenAdmissionDisbursedDate] [int] NULL,
	[DaysBetweenTwoLoanCycle] [int] NULL,
	[EligibleEmployee] [int] NULL,
	[IsExpatriate] [bit] NULL,
	[IsSavingRequired] [bit] NULL,
	[MinimumSavingAmount] [float] NULL,
	[IsSecurityRequired] [bit] NULL,
	[MinimumSecurityAmount] [float] NULL,
	[IsAdmissionFeeRequired] [bit] NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[EligibleGuarantor] [int] NULL,
 CONSTRAINT [PK_P_StaffLoanConfiguration_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_TraPostReceiptItems]    Script Date: 11/15/2022 6:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_TraPostReceiptItems](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ReceiptRequestId] [bigint] NOT NULL,
	[ItemId] [bigint] NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Qty] [int] NOT NULL,
	[TaxCode] [int] NOT NULL,
	[Amount] [float] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_TraPostReceiptPayments]    Script Date: 11/15/2022 6:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_TraPostReceiptPayments](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ReceiptRequestId] [bigint] NOT NULL,
	[PmtType] [nvarchar](10) NOT NULL,
	[PmtAmount] [float] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_TraPostReceiptRequest]    Script Date: 11/15/2022 6:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_TraPostReceiptRequest](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_VatInvoiceId] [bigint] NOT NULL,
	[Tin] [nvarchar](15) NOT NULL,
	[RegId] [nvarchar](20) NULL,
	[EFDSerial] [nvarchar](20) NULL,
	[CustIdType] [int] NOT NULL,
	[CustId] [nvarchar](20) NOT NULL,
	[MobileNum] [nvarchar](20) NOT NULL,
	[Rctnum] [bigint] NOT NULL,
	[GC] [bigint] NOT NULL,
	[DC] [bigint] NOT NULL,
	[ZNUM] [nvarchar](10) NOT NULL,
	[RctVnum] [nvarchar](20) NOT NULL,
	[TotalTaxExcl] [float] NOT NULL,
	[TotalTaxIncl] [float] NOT NULL,
	[TotalDiscount] [float] NOT NULL,
	[VatCreateDate] [datetime] NOT NULL,
	[CreatedOnSystem] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_TraPostReceiptResponse]    Script Date: 11/15/2022 6:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_TraPostReceiptResponse](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ReceiptRequestId] [bigint] NOT NULL,
	[DateTime] [datetime] NOT NULL,
	[AckMsg] [nvarchar](50) NOT NULL,
	[AckCode] [int] NOT NULL,
	[Time] [nvarchar](10) NULL,
	[CreatedOn] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_TraPostReceiptVatTotals]    Script Date: 11/15/2022 6:19:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_TraPostReceiptVatTotals](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ReceiptRequestId] [bigint] NOT NULL,
	[VatRate] [nvarchar](5) NOT NULL,
	[NetAmount] [float] NOT NULL,
	[TaxAmount] [float] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_TraRegistration]    Script Date: 11/15/2022 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_TraRegistration](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[RegId] [nvarchar](200) NULL,
	[Serial] [nvarchar](200) NULL,
	[ReceiptCode] [nvarchar](200) NULL,
	[UserName] [nvarchar](200) NULL,
	[Password] [nvarchar](200) NULL,
	[Tin] [nvarchar](200) NULL,
	[Mobile] [nvarchar](200) NULL,
	[City] [nvarchar](200) NULL,
	[Address] [nvarchar](200) NULL,
	[Country] [nvarchar](200) NULL,
	[Name] [nvarchar](200) NULL,
	[GC] [nvarchar](200) NULL,
	[Uin] [nvarchar](200) NULL,
	[AckMsg] [nvarchar](200) NULL,
	[AckCode] [int] NULL,
	[RoutingKey] [nvarchar](200) NULL,
	[Vrn] [nvarchar](200) NULL,
	[Street] [nvarchar](200) NULL,
	[Region] [nvarchar](200) NULL,
	[TaxOffice] [nvarchar](200) NULL,
	[TokenPath] [nvarchar](200) NULL,
	[CreatedOn] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_TraToken]    Script Date: 11/15/2022 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_TraToken](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AccessToken] [nvarchar](max) NULL,
	[TokenType] [nvarchar](20) NULL,
	[ExpiresIn] [int] NULL,
	[CreatedOn] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_VatInvoice]    Script Date: 11/15/2022 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_VatInvoice](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[P_MemberId] [bigint] NOT NULL,
	[InvoiceNumber] [varchar](50) NOT NULL,
	[InvoiceDate] [datetime] NOT NULL,
	[InvoiceTime] [varchar](50) NOT NULL,
	[InvoiceUser] [varchar](50) NOT NULL,
	[IsSend] [bit] NOT NULL,
	[Status] [varchar](50) NULL,
	[Message] [varchar](500) NULL,
	[RctvNum] [varchar](150) NULL,
	[RctvCode] [varchar](50) NULL,
	[ZNumber] [varchar](50) NULL,
	[VfdInvoiceNum] [varchar](50) NULL,
	[ResponseDate] [datetime] NULL,
	[ResponseTime] [time](7) NULL,
	[QrPath] [varchar](150) NULL,
 CONSTRAINT [PK_P_VatInvoice] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_VatTransaction]    Script Date: 11/15/2022 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_VatTransaction](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_LoanAccountId] [bigint] NULL,
	[P_MemberId] [bigint] NOT NULL,
	[P_ProgramId] [bigint] NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[A_AccountId] [bigint] NULL,
	[Type] [int] NOT NULL,
	[Process] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Debit] [float] NOT NULL,
	[Credit] [float] NOT NULL,
	[ChequeNumber] [varchar](20) NULL,
	[Description] [varchar](200) NOT NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[AuthorizedBy] [nvarchar](10) NULL,
	[AuthorizedDate] [datetime] NULL,
	[Status] [int] NOT NULL,
	[B_TransactionId] [bigint] NULL,
	[Client] [int] NOT NULL,
	[OrNumber] [varchar](25) NULL,
	[ArNumber] [varchar](25) NULL,
	[PolicyNumber] [varchar](100) NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[P_MemberFingerTemplateId] [bigint] NULL,
	[P_OthersTransactionId] [bigint] NOT NULL,
	[TotalAmount] [float] NULL,
	[ZoneId] [bigint] NULL,
	[IsProcessRequired] [bit] NOT NULL,
 CONSTRAINT [PK_P_VatTransaction_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_ZReport]    Script Date: 11/15/2022 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_ZReport](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[RawActivityId] [bigint] NOT NULL,
	[Date] [datetime] NULL,
	[VatAmount] [decimal](30, 2) NULL,
	[CumVatAmount] [decimal](30, 2) NULL,
	[Status] [nvarchar](10) NULL,
	[CreatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_ZReportRawActivity]    Script Date: 11/15/2022 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_ZReportRawActivity](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NULL,
	[Time] [nvarchar](10) NULL,
	[DailyVatAmount] [decimal](30, 2) NULL,
	[DailyTotalAmount] [decimal](30, 2) NULL,
	[FiscalTicket] [int] NULL,
	[GrossAmount] [decimal](30, 2) NULL,
	[ZNUMBER] [nvarchar](100) NULL,
	[ResponseDate] [datetime] NULL,
	[ResponseTime] [nvarchar](20) NULL,
	[AckCode] [nvarchar](10) NULL,
	[AckMsg] [nvarchar](200) NULL,
	[RawRequest] [nvarchar](max) NULL,
	[RawResponse] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PasswordConfig]    Script Date: 11/15/2022 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PasswordConfig](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Key] [varchar](100) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[DataType] [varchar](100) NOT NULL,
	[ReadableDataType] [varchar](100) NOT NULL,
	[Value] [varchar](max) NOT NULL,
 CONSTRAINT [PK_PasswordConfig_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_PasswordConfig_Key] UNIQUE NONCLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Property]    Script Date: 11/15/2022 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Property](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Type] [int] NOT NULL,
	[ModuleName] [nvarchar](100) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[DisplayName] [nvarchar](100) NOT NULL,
	[PermissionType] [nvarchar](100) NOT NULL,
	[PermissionProperty] [nvarchar](100) NULL,
	[ImageUrl] [nvarchar](100) NULL,
	[Path] [nvarchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[SortOrder] [int] NOT NULL,
 CONSTRAINT [PK_Property_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_Property_Name] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PropertyCommand]    Script Date: 11/15/2022 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PropertyCommand](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[PropertyName] [nvarchar](100) NOT NULL,
	[CommandName] [nvarchar](100) NOT NULL,
	[DisplayName] [nvarchar](100) NULL,
	[ToolTipText] [nvarchar](100) NULL,
	[ImageUrl] [nvarchar](100) NULL,
	[SeperatorUrl] [nvarchar](100) NULL,
	[NavigateUrl] [nvarchar](256) NULL,
	[SortOrder] [int] NOT NULL,
 CONSTRAINT [PK_PropertyCommand_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_PropertyCommand_PropertyName_CommandName] UNIQUE NONCLUSTERED 
(
	[PropertyName] ASC,
	[CommandName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Province]    Script Date: 11/15/2022 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Province](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[GovtRegionId] [bigint] NOT NULL,
	[Name] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Province_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Region]    Script Date: 11/15/2022 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[DistrictId] [bigint] NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_RegionId] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 11/15/2022 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[RoleOrder] [int] NOT NULL,
	[BlockDuration] [int] NOT NULL,
	[DurationUnit] [int] NOT NULL,
	[DisplayName] [nvarchar](100) NULL,
	[IsWorkingDayReopen] [bit] NOT NULL,
 CONSTRAINT [PK_Role_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_Role_Name] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleCommand]    Script Date: 11/15/2022 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleCommand](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
	[PropertyName] [nvarchar](100) NOT NULL,
	[CommandName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_RoleCommand_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_RoleCommand_RoleName_PropertyName_CommandName] UNIQUE NONCLUSTERED 
(
	[RoleName] ASC,
	[PropertyName] ASC,
	[CommandName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleProperty]    Script Date: 11/15/2022 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleProperty](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
	[PropertyName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_RoleProperty_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_RoleProperty_RoleName_PropertyName] UNIQUE NONCLUSTERED 
(
	[RoleName] ASC,
	[PropertyName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleWiseReportConfigurationDetails]    Script Date: 11/15/2022 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleWiseReportConfigurationDetails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[MasterId] [bigint] NOT NULL,
	[ReportId] [bigint] NOT NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_RoleWiseReportConfigurationDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleWiseReportConfigurationMaster]    Script Date: 11/15/2022 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleWiseReportConfigurationMaster](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
	[ReportModuleId] [int] NOT NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_RoleWiseReportConfigurationMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sheet1$]    Script Date: 11/15/2022 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sheet1$](
	[BranchName] [nvarchar](255) NULL,
	[LoanOfficerName] [nvarchar](255) NULL,
	[GroupName] [nvarchar](255) NULL,
	[MemberName] [nvarchar](255) NULL,
	[NationalIdNumber] [nvarchar](255) NULL,
	[Status] [nvarchar](255) NULL,
	[DelimitedNID] [nvarchar](255) NULL,
	[Noofduplicates] [float] NULL,
	[DuplicateNID1] [nvarchar](255) NULL,
	[NewNID] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SMECustomerProblemeticAccount]    Script Date: 11/15/2022 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SMECustomerProblemeticAccount](
	[BranchId] [bigint] NOT NULL,
	[CustomerId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SMELoanAccountBranch]    Script Date: 11/15/2022 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SMELoanAccountBranch](
	[BranchId] [bigint] NOT NULL,
	[Status] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SmsChargeConfiguration]    Script Date: 11/15/2022 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SmsChargeConfiguration](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_ProgramId] [bigint] NOT NULL,
	[P_Duration] [int] NOT NULL,
	[P_InstallmentType] [int] NOT NULL,
	[MinimumBalance] [numeric](6, 2) NOT NULL,
	[Amount] [numeric](5, 2) NOT NULL,
	[IsVatable] [bit] NOT NULL,
	[VatPercentage] [numeric](5, 2) NULL,
	[StartingDate] [datetime] NOT NULL,
	[EndingDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](15) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_SmsChargeConfiguration_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ1_SmsChargeConfiguration] UNIQUE NONCLUSTERED 
(
	[P_ProgramId] ASC,
	[P_Duration] ASC,
	[P_InstallmentType] ASC,
	[StartingDate] ASC,
	[EndingDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SMSDateRange]    Script Date: 11/15/2022 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SMSDateRange](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[Remarks] [varchar](100) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_SMSDateRange_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SMSEmailNotificationConfig]    Script Date: 11/15/2022 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SMSEmailNotificationConfig](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [bigint] NOT NULL,
	[ContactNumber] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_SMSEmailNotificationConfig_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SMSFormat]    Script Date: 11/15/2022 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SMSFormat](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Type] [int] NOT NULL,
	[Message] [varchar](500) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_SMSFormat_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SMSLog]    Script Date: 11/15/2022 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SMSLog](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[B_TransactionId] [bigint] NULL,
	[Message] [nvarchar](1024) NULL,
	[Recipient] [varchar](50) NOT NULL,
	[Response] [varchar](100) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[P_LoanTransactionId] [bigint] NULL,
	[P_SecurityTransactionId] [bigint] NULL,
	[P_BadDebtTransactionId] [bigint] NULL,
 CONSTRAINT [PK_SMSLog_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SMSLog04Jan2022]    Script Date: 11/15/2022 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SMSLog04Jan2022](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[B_TransactionId] [bigint] NULL,
	[Message] [nvarchar](1024) NULL,
	[Recipient] [varchar](50) NOT NULL,
	[Response] [varchar](100) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[P_LoanTransactionId] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SmsOTP]    Script Date: 11/15/2022 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SmsOTP](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[OTP] [bigint] NOT NULL,
	[OTPSendTime] [datetime] NOT NULL,
	[OTPExpireTime] [datetime] NOT NULL,
	[IsUsed] [bit] NOT NULL,
 CONSTRAINT [PK_SmsOTP_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SmtpConfig]    Script Date: 11/15/2022 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SmtpConfig](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Host] [varchar](50) NOT NULL,
	[PortNumber] [int] NOT NULL,
	[UserEmail] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[State]    Script Date: 11/15/2022 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabApplicationUrlConfiguration]    Script Date: 11/15/2022 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabApplicationUrlConfiguration](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CountryName] [varchar](20) NOT NULL,
	[CountryCode] [varchar](5) NOT NULL,
	[DevEnvUrl] [nvarchar](max) NULL,
	[TestEnvUrl] [nvarchar](max) NULL,
	[UatEnvUrl] [nvarchar](max) NULL,
	[ProductionEnvUrl] [nvarchar](max) NULL,
	[CreatedBy] [varchar](200) NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifiedBy] [varchar](200) NULL,
	[LastModifiedDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactionMapperConfig]    Script Date: 11/15/2022 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionMapperConfig](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[ContentType] [nvarchar](200) NOT NULL,
	[Data] [varbinary](max) NOT NULL,
	[ModifiedBy] [nvarchar](10) NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_TransactionMapperConfig_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactionNotificationLog]    Script Date: 11/15/2022 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionNotificationLog](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[NotificationType] [tinyint] NULL,
	[TransType] [tinyint] NULL,
	[TransactionId] [bigint] NULL,
	[Message] [nvarchar](max) NULL,
	[Recipient] [varchar](50) NOT NULL,
	[Response] [varchar](max) NULL,
	[IsSuccess] [tinyint] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_TransactionNotificationLog_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UPDATE_SCHEDULE_LOG]    Script Date: 11/15/2022 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UPDATE_SCHEDULE_LOG](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[P_LoanAccountId] [bigint] NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[MssgTxt] [nvarchar](max) NOT NULL,
	[IsSuccessful] [bit] NOT NULL,
	[CreatedDateTime] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_UPDATE_SCHEDULE_LOG] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 11/15/2022 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](10) NOT NULL,
	[Password] [nvarchar](100) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Level] [int] NOT NULL,
	[LastLoginDate] [datetime] NULL,
	[LastModificationDate] [datetime] NOT NULL,
	[PasswordResetDate] [datetime] NULL,
	[LastPasswordChangeDate] [datetime] NULL,
	[UnsuccessfulLoginAttempts] [int] NOT NULL,
	[SuccessfulLogin] [int] NOT NULL,
	[LoginStatus] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[LastModifiedBy] [nvarchar](10) NOT NULL,
	[Token] [varchar](100) NULL,
	[HRM_EmployeeId] [bigint] NULL,
	[PasswordHistory] [nvarchar](250) NULL,
	[Is2FAFingerEnabled] [bit] NOT NULL,
	[IsEmailOTPEnabled] [bit] NULL,
	[IsSmslOTPEnabled] [bit] NULL,
	[IsUnLocked] [bit] NOT NULL,
	[IsServiceUser] [bit] NOT NULL,
	[RefreshToken] [nvarchar](300) NULL,
	[RefreshTokenExpiryDate] [datetime] NULL,
	[IsAccountManager] [bit] NOT NULL,
	[Is2FAFaceEnabled] [bit] NOT NULL,
 CONSTRAINT [PK_User_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_User_Login] UNIQUE NONCLUSTERED 
(
	[Login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserBranch]    Script Date: 11/15/2022 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserBranch](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserLogin] [nvarchar](10) NOT NULL,
	[BranchId] [bigint] NOT NULL,
 CONSTRAINT [PK_UserBranch_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_UserBranch_UserLogin_BranchId] UNIQUE NONCLUSTERED 
(
	[UserLogin] ASC,
	[BranchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserFace]    Script Date: 11/15/2022 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserFace](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserLogin] [nvarchar](10) NOT NULL,
	[Photo] [varbinary](max) NOT NULL,
	[FaceEmbedding] [varbinary](max) NOT NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserFaceHistory]    Script Date: 11/15/2022 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserFaceHistory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserLogin] [nvarchar](10) NOT NULL,
	[Photo] [varbinary](max) NOT NULL,
	[FaceEmbedding] [varbinary](max) NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[ResetDate] [datetime] NULL,
	[ResetBy] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserFingerprintHistory]    Script Date: 11/15/2022 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserFingerprintHistory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](10) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateBy] [nvarchar](10) NOT NULL,
	[ResetDate] [datetime] NULL,
	[ResetBy] [nvarchar](10) NULL,
 CONSTRAINT [UserFingerprintHistory_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserFingerTemplate]    Script Date: 11/15/2022 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserFingerTemplate](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](10) NOT NULL,
	[Template] [image] NOT NULL,
	[Finger] [int] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_UserFingerTemplate_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLoginHistory]    Script Date: 11/15/2022 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLoginHistory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserLogin] [nvarchar](10) NOT NULL,
	[LoginDateTime] [datetime] NOT NULL,
	[IsSuccess] [bit] NOT NULL,
 CONSTRAINT [PK_UserLoginHistory_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 11/15/2022 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserLogin] [nvarchar](10) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_UserRole_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_UserRole_UserLogin_RoleName] UNIQUE NONCLUSTERED 
(
	[UserLogin] ASC,
	[RoleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoleBranch]    Script Date: 11/15/2022 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoleBranch](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserLogin] [nvarchar](10) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[StartingDate] [datetime] NOT NULL,
	[EndingDate] [datetime] NULL,
 CONSTRAINT [PK_UserRoleBranch_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRolePermission]    Script Date: 11/15/2022 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRolePermission](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserLogin] [nvarchar](10) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
	[StartingDate] [datetime] NULL,
	[EndingDate] [datetime] NULL,
	[CauseOfPermission] [nvarchar](max) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_UserRolePermission] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserStatus]    Script Date: 11/15/2022 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserStatus](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserLogin] [nvarchar](10) NULL,
	[Status] [bit] NULL,
	[StatusUpdate] [datetime] NULL,
	[UpdatedBy] [nvarchar](10) NULL,
 CONSTRAINT [PK_UserStatus_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ValidationScripts]    Script Date: 11/15/2022 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ValidationScripts](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Script] [text] NULL,
	[OperationState] [nvarchar](255) NULL,
	[IsActive] [bit] NULL,
	[ClassName] [nvarchar](255) NULL,
	[RuleName] [nvarchar](255) NULL,
	[AllowedProtocol] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ValidationScriptsVersionHistory]    Script Date: 11/15/2022 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ValidationScriptsVersionHistory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Script] [text] NULL,
	[OperationState] [nvarchar](255) NULL,
	[IsActive] [bit] NULL,
	[ClassName] [nvarchar](255) NULL,
	[RuleName] [nvarchar](255) NULL,
	[AllowedProtocol] [int] NOT NULL,
	[EntityOperationState] [nvarchar](100) NULL,
	[UserLogin] [nvarchar](100) NULL,
	[ValidationScriptsId] [bigint] NULL,
	[CreatedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkingDay]    Script Date: 11/15/2022 6:19:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkingDay](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Status] [int] NOT NULL,
	[OpeningBy] [nvarchar](10) NOT NULL,
	[OpeningDate] [datetime] NOT NULL,
	[ClosingBy] [nvarchar](10) NULL,
	[ClosingDate] [datetime] NULL,
 CONSTRAINT [PK_WorkingDay_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_WorkingDay_BranchId_Date] UNIQUE NONCLUSTERED 
(
	[BranchId] ASC,
	[Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zone]    Script Date: 11/15/2022 6:19:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zone](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[StateId] [bigint] NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Zone] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[A_Account] ADD  CONSTRAINT [DF__A_Account__IsVat__351DDF8C]  DEFAULT ((0)) FOR [IsVatable]
GO
ALTER TABLE [dbo].[A_Account] ADD  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [dbo].[A_AgingDetailsForFinancialReportData] ADD  DEFAULT (getdate()) FOR [TimeStamp]
GO
ALTER TABLE [dbo].[A_Currency] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[A_GlTransactionBranchTemp] ADD  DEFAULT ('') FOR [Description]
GO
ALTER TABLE [dbo].[A_ReportConfig] ADD  DEFAULT ((0)) FOR [ShowEntity]
GO
ALTER TABLE [dbo].[A_Supplier] ADD  DEFAULT ((1)) FOR [CardType]
GO
ALTER TABLE [dbo].[A_TransactionDetails3] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[B_Account] ADD  DEFAULT ((1)) FOR [BlockType]
GO
ALTER TABLE [dbo].[B_Account] ADD  DEFAULT ((1)) FOR [Client]
GO
ALTER TABLE [dbo].[B_Customer] ADD  DEFAULT ('') FOR [NomineeName]
GO
ALTER TABLE [dbo].[B_Customer] ADD  DEFAULT ('') FOR [NomineeRelation]
GO
ALTER TABLE [dbo].[B_Customer] ADD  DEFAULT (getdate()) FOR [NomineeDateOfBirth]
GO
ALTER TABLE [dbo].[B_Customer] ADD  DEFAULT ('') FOR [NomineeAddress]
GO
ALTER TABLE [dbo].[B_Customer] ADD  DEFAULT ('') FOR [NomineeContactNumber]
GO
ALTER TABLE [dbo].[B_Customer] ADD  DEFAULT (getdate()) FOR [AdmissionDate]
GO
ALTER TABLE [dbo].[B_Customer] ADD  DEFAULT ((1)) FOR [Client]
GO
ALTER TABLE [dbo].[B_InterestRate] ADD  DEFAULT ((1)) FOR [RateType]
GO
ALTER TABLE [dbo].[B_Transaction] ADD  DEFAULT ((1)) FOR [Client]
GO
ALTER TABLE [dbo].[Branch] ADD  DEFAULT ((0)) FOR [IsMPesaEnabled]
GO
ALTER TABLE [dbo].[Branch2] ADD  DEFAULT ((0)) FOR [SortOrder]
GO
ALTER TABLE [dbo].[DbTransaction] ADD  DEFAULT ('') FOR [Client]
GO
ALTER TABLE [dbo].[DbTransaction_Archive_27032022] ADD  DEFAULT ('') FOR [Client]
GO
ALTER TABLE [dbo].[EmailOTP] ADD  DEFAULT ((0)) FOR [IsUsed]
GO
ALTER TABLE [dbo].[HRM_Employee] ADD  DEFAULT ((0)) FOR [IsHoldingEmployee]
GO
ALTER TABLE [dbo].[HRM_LeaveBalance] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HRM_LeaveBalance] ADD  DEFAULT ((0)) FOR [TotalLeave]
GO
ALTER TABLE [dbo].[HRM_LeaveBalance] ADD  DEFAULT ((0)) FOR [ConsumeLeave]
GO
ALTER TABLE [dbo].[MonitoringChecklist] ADD  DEFAULT ((0)) FOR [IsNew]
GO
ALTER TABLE [dbo].[MonitoringChecklistDetails] ADD  DEFAULT ((2)) FOR [YesNoSecondGrp]
GO
ALTER TABLE [dbo].[MonitoringItem] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[MonitoringItem] ADD  DEFAULT ((0)) FOR [IsNew]
GO
ALTER TABLE [dbo].[MonitoringSubItem] ADD  DEFAULT ((1)) FOR [YesNoEnabled]
GO
ALTER TABLE [dbo].[MonitoringSubItem] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[MonitoringSubItem] ADD  DEFAULT ((0)) FOR [IsAmountApplicable]
GO
ALTER TABLE [dbo].[MonitoringSubItem] ADD  DEFAULT ((0)) FOR [IsAmountAutoCalculative]
GO
ALTER TABLE [dbo].[MonitoringSubItem] ADD  DEFAULT ((0)) FOR [IsNoApplicable]
GO
ALTER TABLE [dbo].[MonitoringSubItem] ADD  DEFAULT ((0)) FOR [IsNoAutoCalculative]
GO
ALTER TABLE [dbo].[MonitoringSubItem] ADD  DEFAULT ((0)) FOR [IsGroupActivitiesApplicable]
GO
ALTER TABLE [dbo].[MonitoringSubItem] ADD  DEFAULT ((0)) FOR [NameGroupTakeInputFromUser]
GO
ALTER TABLE [dbo].[MonitoringSubItem] ADD  DEFAULT ((0)) FOR [NameGroupSendSMSForYesOption]
GO
ALTER TABLE [dbo].[MonitoringSubItem] ADD  DEFAULT ((0)) FOR [NameGroupSendSMSForNoOption]
GO
ALTER TABLE [dbo].[MonitoringSubItem] ADD  DEFAULT ((0)) FOR [IsGroupActivitiesApplicableForSecondGroup]
GO
ALTER TABLE [dbo].[MonitoringSubItem] ADD  DEFAULT ((0)) FOR [SecondNameGroupTakeInputFromUser]
GO
ALTER TABLE [dbo].[MonitoringSubItem] ADD  DEFAULT ((0)) FOR [SecondNameGroupSendSMSForYesOption]
GO
ALTER TABLE [dbo].[MonitoringSubItem] ADD  DEFAULT ((0)) FOR [SecondNameGroupSendSMSForNoOption]
GO
ALTER TABLE [dbo].[MonitoringSubItem] ADD  DEFAULT ((0)) FOR [IsNew]
GO
ALTER TABLE [dbo].[MonitoringSubItem] ADD  DEFAULT ((0)) FOR [HideGroupActivity]
GO
ALTER TABLE [dbo].[P_ActiveBorrowerReportTable] ADD  DEFAULT (getdate()) FOR [TimeStamp]
GO
ALTER TABLE [dbo].[P_AdvanceInstallmentAdjustConfig] ADD  DEFAULT ((0)) FOR [MaximumInstallmentAllowed]
GO
ALTER TABLE [dbo].[P_BadDebtAccount] ADD  DEFAULT ((1)) FOR [Client]
GO
ALTER TABLE [dbo].[P_BadDebtTransaction] ADD  DEFAULT ((1)) FOR [Client]
GO
ALTER TABLE [dbo].[P_BoGReports] ADD  DEFAULT ((0)) FOR [IsReportGenerated]
GO
ALTER TABLE [dbo].[P_BoGReports] ADD  DEFAULT ((0)) FOR [IsReportSendToBoG]
GO
ALTER TABLE [dbo].[P_DeathCase] ADD  DEFAULT ((0)) FOR [HolidayInterestExemption]
GO
ALTER TABLE [dbo].[P_GetAgingDataTable] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[P_GetAgingDataTable] ADD  DEFAULT (getdate()) FOR [TimeStamp]
GO
ALTER TABLE [dbo].[P_GetAgingDataTableCurrent] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[P_GetAgingDataTableCurrent] ADD  DEFAULT (getdate()) FOR [TimeStamp]
GO
ALTER TABLE [dbo].[P_InstallmentAmount] ADD  DEFAULT ((0)) FOR [CellingOrRound]
GO
ALTER TABLE [dbo].[P_InstallmentAmount] ADD  DEFAULT ((0)) FOR [CellingOrRoundValue]
GO
ALTER TABLE [dbo].[P_InterestRate] ADD  DEFAULT ((0)) FOR [InterestRateDisplay]
GO
ALTER TABLE [dbo].[P_InterestRate] ADD  DEFAULT ((0)) FOR [DecliningInterestRateDisplay]
GO
ALTER TABLE [dbo].[P_LoanAccount] ADD  DEFAULT (newid()) FOR [UniqueId]
GO
ALTER TABLE [dbo].[P_LoanAccount] ADD  DEFAULT ((1)) FOR [Client]
GO
ALTER TABLE [dbo].[P_LoanAccount] ADD  DEFAULT ((0)) FOR [IsNPA]
GO
ALTER TABLE [dbo].[P_LoanOfficer] ADD  DEFAULT ((1)) FOR [NeedInterchange]
GO
ALTER TABLE [dbo].[P_LoanTransaction] ADD  DEFAULT ((1)) FOR [Client]
GO
ALTER TABLE [dbo].[P_Member] ADD  DEFAULT (newid()) FOR [UniqueId]
GO
ALTER TABLE [dbo].[P_Member] ADD  DEFAULT ((1)) FOR [Client]
GO
ALTER TABLE [dbo].[P_Member] ADD  DEFAULT ((0)) FOR [ReActivateStatus]
GO
ALTER TABLE [dbo].[P_Member] ADD  DEFAULT ((0)) FOR [IsEnabledSmsNotification]
GO
ALTER TABLE [dbo].[P_Member] ADD  DEFAULT ((0)) FOR [IsReferenceMember]
GO
ALTER TABLE [dbo].[P_MemberFingerPrintVerifyRequest] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[P_MPesaChargeWithdrawReturn] ADD  DEFAULT (getdate()) FOR [TimeStamp]
GO
ALTER TABLE [dbo].[P_OtherFee] ADD  DEFAULT ((0)) FOR [IsVatable]
GO
ALTER TABLE [dbo].[P_OtherFee] ADD  DEFAULT ((0)) FOR [IsApplicableForFirstCycle]
GO
ALTER TABLE [dbo].[P_OtherFee] ADD  DEFAULT ((0)) FOR [IsApplicableForRejoindFirstCycle]
GO
ALTER TABLE [dbo].[P_OtherFee] ADD  DEFAULT ((0)) FOR [AllowReforming]
GO
ALTER TABLE [dbo].[P_OthersTransaction] ADD  DEFAULT ((1)) FOR [Client]
GO
ALTER TABLE [dbo].[P_Program] ADD  DEFAULT ((0)) FOR [IgnoreHoliday]
GO
ALTER TABLE [dbo].[P_Program] ADD  DEFAULT ((0)) FOR [AllowReforming]
GO
ALTER TABLE [dbo].[P_SavingsAccount] ADD  DEFAULT ((1)) FOR [Client]
GO
ALTER TABLE [dbo].[P_SavingsTransaction] ADD  DEFAULT ((1)) FOR [Client]
GO
ALTER TABLE [dbo].[P_Schedule] ADD  DEFAULT ((0)) FOR [OverdueRecoveryAmount]
GO
ALTER TABLE [dbo].[P_Schedule] ADD  DEFAULT ((0)) FOR [OverdueRecoveryPaid]
GO
ALTER TABLE [dbo].[P_Scheme] ADD  CONSTRAINT [DF_P_Scheme_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[P_SecurityAccount] ADD  DEFAULT ((1)) FOR [Client]
GO
ALTER TABLE [dbo].[P_SecurityTransaction] ADD  DEFAULT ((1)) FOR [Client]
GO
ALTER TABLE [dbo].[P_TraPostReceiptItems] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[P_TraPostReceiptPayments] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[P_TraPostReceiptRequest] ADD  DEFAULT (getdate()) FOR [CreatedOnSystem]
GO
ALTER TABLE [dbo].[P_TraPostReceiptResponse] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[P_TraPostReceiptVatTotals] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[P_TraRegistration] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[P_TraToken] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[P_VatTransaction] ADD  DEFAULT ((1)) FOR [IsProcessRequired]
GO
ALTER TABLE [dbo].[P_ZReport] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[P_ZReportRawActivity] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Property] ADD  DEFAULT ((1)) FOR [Type]
GO
ALTER TABLE [dbo].[Role] ADD  DEFAULT ((0)) FOR [BlockDuration]
GO
ALTER TABLE [dbo].[Role] ADD  DEFAULT ((2)) FOR [DurationUnit]
GO
ALTER TABLE [dbo].[Role] ADD  DEFAULT ((0)) FOR [IsWorkingDayReopen]
GO
ALTER TABLE [dbo].[SmsOTP] ADD  DEFAULT ((0)) FOR [IsUsed]
GO
ALTER TABLE [dbo].[TabApplicationUrlConfiguration] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT ('system') FOR [CreatedBy]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT ('system') FOR [LastModifiedBy]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT ((0)) FOR [Is2FAFingerEnabled]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT ((0)) FOR [IsEmailOTPEnabled]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT ((0)) FOR [IsSmslOTPEnabled]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT ((1)) FOR [IsUnLocked]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT ((0)) FOR [IsServiceUser]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT ((0)) FOR [IsAccountManager]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT ((0)) FOR [Is2FAFaceEnabled]
GO
ALTER TABLE [dbo].[UserFace] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ValidationScripts] ADD  DEFAULT ((3)) FOR [AllowedProtocol]
GO
ALTER TABLE [dbo].[ValidationScriptsVersionHistory] ADD  DEFAULT ((3)) FOR [AllowedProtocol]
GO
ALTER TABLE [dbo].[ValidationScriptsVersionHistory] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[A_Account]  WITH CHECK ADD  CONSTRAINT [FK_A_Account_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[A_Account] CHECK CONSTRAINT [FK_A_Account_BranchId]
GO
ALTER TABLE [dbo].[A_Account]  WITH CHECK ADD  CONSTRAINT [FK_A_Account_ParentId] FOREIGN KEY([ParentId])
REFERENCES [dbo].[A_Account] ([Id])
GO
ALTER TABLE [dbo].[A_Account] CHECK CONSTRAINT [FK_A_Account_ParentId]
GO
ALTER TABLE [dbo].[A_AccountConvert]  WITH NOCHECK ADD  CONSTRAINT [FK_A_AccountConvert_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[A_AccountConvert] CHECK CONSTRAINT [FK_A_AccountConvert_BranchId]
GO
ALTER TABLE [dbo].[A_AccountConvert]  WITH NOCHECK ADD  CONSTRAINT [FK_A_AccountConvert_ParentId] FOREIGN KEY([ParentId])
REFERENCES [dbo].[A_AccountConvert] ([Id])
GO
ALTER TABLE [dbo].[A_AccountConvert] CHECK CONSTRAINT [FK_A_AccountConvert_ParentId]
GO
ALTER TABLE [dbo].[A_AccountOld]  WITH CHECK ADD  CONSTRAINT [FK_A_AccountOld_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[A_AccountOld] CHECK CONSTRAINT [FK_A_AccountOld_BranchId]
GO
ALTER TABLE [dbo].[A_AccountOld]  WITH CHECK ADD  CONSTRAINT [FK_A_AccountOld_ParentId] FOREIGN KEY([ParentId])
REFERENCES [dbo].[A_AccountOld] ([Id])
GO
ALTER TABLE [dbo].[A_AccountOld] CHECK CONSTRAINT [FK_A_AccountOld_ParentId]
GO
ALTER TABLE [dbo].[A_CurrencyRate]  WITH NOCHECK ADD  CONSTRAINT [FK_A_CurrencyRate_FromCode] FOREIGN KEY([FromCode])
REFERENCES [dbo].[A_Currency] ([Code])
GO
ALTER TABLE [dbo].[A_CurrencyRate] CHECK CONSTRAINT [FK_A_CurrencyRate_FromCode]
GO
ALTER TABLE [dbo].[A_CurrencyRate]  WITH NOCHECK ADD  CONSTRAINT [FK_A_CurrencyRate_ToCode] FOREIGN KEY([ToCode])
REFERENCES [dbo].[A_Currency] ([Code])
GO
ALTER TABLE [dbo].[A_CurrencyRate] CHECK CONSTRAINT [FK_A_CurrencyRate_ToCode]
GO
ALTER TABLE [dbo].[A_ManualReceiptConfig]  WITH CHECK ADD  CONSTRAINT [FK_A_ManualReceiptConfig_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[A_ManualReceiptConfig] CHECK CONSTRAINT [FK_A_ManualReceiptConfig_BranchId]
GO
ALTER TABLE [dbo].[A_ReceiptConfig]  WITH CHECK ADD  CONSTRAINT [FK_A_ReceiptConfig_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[A_ReceiptConfig] CHECK CONSTRAINT [FK_A_ReceiptConfig_BranchId]
GO
ALTER TABLE [dbo].[A_Transaction]  WITH NOCHECK ADD  CONSTRAINT [FK_A_Transaction_AuthorizedBy] FOREIGN KEY([AuthorizedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[A_Transaction] CHECK CONSTRAINT [FK_A_Transaction_AuthorizedBy]
GO
ALTER TABLE [dbo].[A_Transaction]  WITH NOCHECK ADD  CONSTRAINT [FK_A_Transaction_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[A_Transaction] CHECK CONSTRAINT [FK_A_Transaction_BranchId]
GO
ALTER TABLE [dbo].[A_Transaction]  WITH NOCHECK ADD  CONSTRAINT [FK_A_Transaction_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[A_Transaction] CHECK CONSTRAINT [FK_A_Transaction_CreatedBy]
GO
ALTER TABLE [dbo].[A_Transaction]  WITH NOCHECK ADD  CONSTRAINT [FK_A_Transaction_CurrencyCode] FOREIGN KEY([CurrencyCode])
REFERENCES [dbo].[A_Currency] ([Code])
GO
ALTER TABLE [dbo].[A_Transaction] CHECK CONSTRAINT [FK_A_Transaction_CurrencyCode]
GO
ALTER TABLE [dbo].[A_Transaction]  WITH CHECK ADD  CONSTRAINT [FK_A_Transaction_HRM_DepartmentId] FOREIGN KEY([HRM_DepartmentId])
REFERENCES [dbo].[HRM_Department] ([Id])
GO
ALTER TABLE [dbo].[A_Transaction] CHECK CONSTRAINT [FK_A_Transaction_HRM_DepartmentId]
GO
ALTER TABLE [dbo].[A_Transaction_BIR]  WITH NOCHECK ADD  CONSTRAINT [FK_A_Transaction_BIR_AuthorizedBy] FOREIGN KEY([AuthorizedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[A_Transaction_BIR] CHECK CONSTRAINT [FK_A_Transaction_BIR_AuthorizedBy]
GO
ALTER TABLE [dbo].[A_Transaction_BIR]  WITH NOCHECK ADD  CONSTRAINT [FK_A_Transaction_BIR_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[A_Transaction_BIR] CHECK CONSTRAINT [FK_A_Transaction_BIR_BranchId]
GO
ALTER TABLE [dbo].[A_Transaction_BIR]  WITH NOCHECK ADD  CONSTRAINT [FK_A_Transaction_BIR_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[A_Transaction_BIR] CHECK CONSTRAINT [FK_A_Transaction_BIR_CreatedBy]
GO
ALTER TABLE [dbo].[A_Transaction_BIR]  WITH NOCHECK ADD  CONSTRAINT [FK_A_Transaction_BIR_CurrencyCode] FOREIGN KEY([CurrencyCode])
REFERENCES [dbo].[A_Currency] ([Code])
GO
ALTER TABLE [dbo].[A_Transaction_BIR] CHECK CONSTRAINT [FK_A_Transaction_BIR_CurrencyCode]
GO
ALTER TABLE [dbo].[A_TransactionDenomination]  WITH NOCHECK ADD  CONSTRAINT [FK_A_TransactionDenomination_A_TransactionId] FOREIGN KEY([A_TransactionId])
REFERENCES [dbo].[A_Transaction] ([Id])
GO
ALTER TABLE [dbo].[A_TransactionDenomination] CHECK CONSTRAINT [FK_A_TransactionDenomination_A_TransactionId]
GO
ALTER TABLE [dbo].[A_TransactionDetails]  WITH CHECK ADD  CONSTRAINT [FK_A_TransactionDetails_A_AccountId] FOREIGN KEY([A_AccountId])
REFERENCES [dbo].[A_Account] ([Id])
GO
ALTER TABLE [dbo].[A_TransactionDetails] CHECK CONSTRAINT [FK_A_TransactionDetails_A_AccountId]
GO
ALTER TABLE [dbo].[A_TransactionDetails]  WITH NOCHECK ADD  CONSTRAINT [FK_A_TransactionDetails_A_TransactionId] FOREIGN KEY([A_TransactionId])
REFERENCES [dbo].[A_Transaction] ([Id])
GO
ALTER TABLE [dbo].[A_TransactionDetails] CHECK CONSTRAINT [FK_A_TransactionDetails_A_TransactionId]
GO
ALTER TABLE [dbo].[A_TransactionDetails]  WITH NOCHECK ADD  CONSTRAINT [FK_A_TransactionDetails_ChildBranchId] FOREIGN KEY([ChildBranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[A_TransactionDetails] CHECK CONSTRAINT [FK_A_TransactionDetails_ChildBranchId]
GO
ALTER TABLE [dbo].[A_TransactionDetails]  WITH CHECK ADD  CONSTRAINT [FK_A_TransactionDetails_HRM_DepartmentId] FOREIGN KEY([HRM_DepartmentId])
REFERENCES [dbo].[HRM_Department] ([Id])
GO
ALTER TABLE [dbo].[A_TransactionDetails] CHECK CONSTRAINT [FK_A_TransactionDetails_HRM_DepartmentId]
GO
ALTER TABLE [dbo].[A_TransactionDetails_BIR]  WITH CHECK ADD  CONSTRAINT [FK_A_TransactionDetails_BIR_A_AccountId] FOREIGN KEY([A_AccountId])
REFERENCES [dbo].[A_Account] ([Id])
GO
ALTER TABLE [dbo].[A_TransactionDetails_BIR] CHECK CONSTRAINT [FK_A_TransactionDetails_BIR_A_AccountId]
GO
ALTER TABLE [dbo].[A_TransactionDetails_BIR]  WITH NOCHECK ADD  CONSTRAINT [FK_A_TransactionDetails_BIR_A_TransactionId] FOREIGN KEY([A_TransactionId])
REFERENCES [dbo].[A_Transaction_BIR] ([Id])
GO
ALTER TABLE [dbo].[A_TransactionDetails_BIR] CHECK CONSTRAINT [FK_A_TransactionDetails_BIR_A_TransactionId]
GO
ALTER TABLE [dbo].[A_TransactionDetails_BIR]  WITH NOCHECK ADD  CONSTRAINT [FK_A_TransactionDetails_BIR_ChildBranchId] FOREIGN KEY([ChildBranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[A_TransactionDetails_BIR] CHECK CONSTRAINT [FK_A_TransactionDetails_BIR_ChildBranchId]
GO
ALTER TABLE [dbo].[A_TransactionDetailsGranular]  WITH CHECK ADD  CONSTRAINT [FK_A_TransactionDetailsGranular_A_AccountId] FOREIGN KEY([A_AccountId])
REFERENCES [dbo].[A_Account] ([Id])
GO
ALTER TABLE [dbo].[A_TransactionDetailsGranular] CHECK CONSTRAINT [FK_A_TransactionDetailsGranular_A_AccountId]
GO
ALTER TABLE [dbo].[A_TransactionDetailsGranular]  WITH CHECK ADD  CONSTRAINT [FK_A_TransactionDetailsGranular_A_TransactionId] FOREIGN KEY([A_TransactionId])
REFERENCES [dbo].[A_Transaction] ([Id])
GO
ALTER TABLE [dbo].[A_TransactionDetailsGranular] CHECK CONSTRAINT [FK_A_TransactionDetailsGranular_A_TransactionId]
GO
ALTER TABLE [dbo].[A_TransactionDetailsGranular]  WITH CHECK ADD  CONSTRAINT [FK_A_TransactionDetailsGranular_ChildBranchId] FOREIGN KEY([ChildBranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[A_TransactionDetailsGranular] CHECK CONSTRAINT [FK_A_TransactionDetailsGranular_ChildBranchId]
GO
ALTER TABLE [dbo].[A_TransactionDetailsGranular]  WITH CHECK ADD  CONSTRAINT [FK_A_TransactionDetailsGranular_HRM_DepartmentId] FOREIGN KEY([HRM_DepartmentId])
REFERENCES [dbo].[HRM_Department] ([Id])
GO
ALTER TABLE [dbo].[A_TransactionDetailsGranular] CHECK CONSTRAINT [FK_A_TransactionDetailsGranular_HRM_DepartmentId]
GO
ALTER TABLE [dbo].[A_TransactionDetailsOld]  WITH CHECK ADD  CONSTRAINT [FK_A_TransactionDetailsOld_A_AccountId] FOREIGN KEY([A_AccountId])
REFERENCES [dbo].[A_AccountOld] ([Id])
GO
ALTER TABLE [dbo].[A_TransactionDetailsOld] CHECK CONSTRAINT [FK_A_TransactionDetailsOld_A_AccountId]
GO
ALTER TABLE [dbo].[A_TransactionDetailsOld]  WITH CHECK ADD  CONSTRAINT [FK_A_TransactionDetailsOld_A_TransactionId] FOREIGN KEY([A_TransactionId])
REFERENCES [dbo].[A_TransactionOld] ([Id])
GO
ALTER TABLE [dbo].[A_TransactionDetailsOld] CHECK CONSTRAINT [FK_A_TransactionDetailsOld_A_TransactionId]
GO
ALTER TABLE [dbo].[A_TransactionDetailsOld]  WITH CHECK ADD  CONSTRAINT [FK_A_TransactionDetailsOld_ChildBranchId] FOREIGN KEY([ChildBranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[A_TransactionDetailsOld] CHECK CONSTRAINT [FK_A_TransactionDetailsOld_ChildBranchId]
GO
ALTER TABLE [dbo].[A_TransactionOld]  WITH CHECK ADD  CONSTRAINT [FK_A_TransactionOld_AuthorizedBy] FOREIGN KEY([AuthorizedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[A_TransactionOld] CHECK CONSTRAINT [FK_A_TransactionOld_AuthorizedBy]
GO
ALTER TABLE [dbo].[A_TransactionOld]  WITH CHECK ADD  CONSTRAINT [FK_A_TransactionOld_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[A_TransactionOld] CHECK CONSTRAINT [FK_A_TransactionOld_BranchId]
GO
ALTER TABLE [dbo].[A_TransactionOld]  WITH CHECK ADD  CONSTRAINT [FK_A_TransactionOld_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[A_TransactionOld] CHECK CONSTRAINT [FK_A_TransactionOld_CreatedBy]
GO
ALTER TABLE [dbo].[A_TransactionOld]  WITH CHECK ADD  CONSTRAINT [FK_A_TransactionOld_CurrencyCode] FOREIGN KEY([CurrencyCode])
REFERENCES [dbo].[A_Currency] ([Code])
GO
ALTER TABLE [dbo].[A_TransactionOld] CHECK CONSTRAINT [FK_A_TransactionOld_CurrencyCode]
GO
ALTER TABLE [dbo].[A_VoucherNumber]  WITH CHECK ADD  CONSTRAINT [FK_A_VoucherNumber_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[A_VoucherNumber] CHECK CONSTRAINT [FK_A_VoucherNumber_BranchId]
GO
ALTER TABLE [dbo].[AccessLog]  WITH NOCHECK ADD  CONSTRAINT [FK_AccessLog_Login] FOREIGN KEY([Login])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[AccessLog] CHECK CONSTRAINT [FK_AccessLog_Login]
GO
ALTER TABLE [dbo].[AuthorizationLog]  WITH CHECK ADD  CONSTRAINT [FK_AuthorizationLog_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[AuthorizationLog] CHECK CONSTRAINT [FK_AuthorizationLog_CreatedBy]
GO
ALTER TABLE [dbo].[B_Account]  WITH NOCHECK ADD  CONSTRAINT [FK_B_Account_AuthorizedBy] FOREIGN KEY([AuthorizedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[B_Account] CHECK CONSTRAINT [FK_B_Account_AuthorizedBy]
GO
ALTER TABLE [dbo].[B_Account]  WITH NOCHECK ADD  CONSTRAINT [FK_B_Account_B_CustomerId] FOREIGN KEY([B_CustomerId])
REFERENCES [dbo].[B_Customer] ([Id])
GO
ALTER TABLE [dbo].[B_Account] CHECK CONSTRAINT [FK_B_Account_B_CustomerId]
GO
ALTER TABLE [dbo].[B_Account]  WITH NOCHECK ADD  CONSTRAINT [FK_B_Account_B_ProductId_Duration_InstallmentType] FOREIGN KEY([B_ProductId], [Duration], [InstallmentType])
REFERENCES [dbo].[B_DurationInstallmentType] ([B_ProductId], [Duration], [InstallmentType])
GO
ALTER TABLE [dbo].[B_Account] CHECK CONSTRAINT [FK_B_Account_B_ProductId_Duration_InstallmentType]
GO
ALTER TABLE [dbo].[B_Account]  WITH NOCHECK ADD  CONSTRAINT [FK_B_Account_BlockedBy] FOREIGN KEY([BlockedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[B_Account] CHECK CONSTRAINT [FK_B_Account_BlockedBy]
GO
ALTER TABLE [dbo].[B_Account]  WITH NOCHECK ADD  CONSTRAINT [FK_B_Account_ClosingBy] FOREIGN KEY([ClosingBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[B_Account] CHECK CONSTRAINT [FK_B_Account_ClosingBy]
GO
ALTER TABLE [dbo].[B_Account]  WITH NOCHECK ADD  CONSTRAINT [FK_B_Account_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[B_Account] CHECK CONSTRAINT [FK_B_Account_CreatedBy]
GO
ALTER TABLE [dbo].[B_Account]  WITH NOCHECK ADD  CONSTRAINT [FK_B_Account_DormantBy] FOREIGN KEY([DormantBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[B_Account] CHECK CONSTRAINT [FK_B_Account_DormantBy]
GO
ALTER TABLE [dbo].[B_Account]  WITH NOCHECK ADD  CONSTRAINT [FK_B_Account_InactiveBy] FOREIGN KEY([InactiveBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[B_Account] CHECK CONSTRAINT [FK_B_Account_InactiveBy]
GO
ALTER TABLE [dbo].[B_Account]  WITH NOCHECK ADD  CONSTRAINT [FK_B_Account_P_LoanOfficerId] FOREIGN KEY([P_LoanOfficerId])
REFERENCES [dbo].[P_LoanOfficer] ([Id])
GO
ALTER TABLE [dbo].[B_Account] CHECK CONSTRAINT [FK_B_Account_P_LoanOfficerId]
GO
ALTER TABLE [dbo].[B_Account]  WITH NOCHECK ADD  CONSTRAINT [FK_B_Account_ReopenedBy] FOREIGN KEY([ReopenedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[B_Account] CHECK CONSTRAINT [FK_B_Account_ReopenedBy]
GO
ALTER TABLE [dbo].[B_Account]  WITH NOCHECK ADD  CONSTRAINT [FK_B_Account_RolloverBy] FOREIGN KEY([RolloverBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[B_Account] CHECK CONSTRAINT [FK_B_Account_RolloverBy]
GO
ALTER TABLE [dbo].[B_BankingReportPermission]  WITH NOCHECK ADD  CONSTRAINT [FK_B_BankingReportPermission_RoleName] FOREIGN KEY([RoleName])
REFERENCES [dbo].[Role] ([Name])
GO
ALTER TABLE [dbo].[B_BankingReportPermission] CHECK CONSTRAINT [FK_B_BankingReportPermission_RoleName]
GO
ALTER TABLE [dbo].[B_ChequeBook]  WITH NOCHECK ADD  CONSTRAINT [FK_B_ChequeBook_B_AccountId] FOREIGN KEY([B_AccountId])
REFERENCES [dbo].[B_Account] ([Id])
GO
ALTER TABLE [dbo].[B_ChequeBook] CHECK CONSTRAINT [FK_B_ChequeBook_B_AccountId]
GO
ALTER TABLE [dbo].[B_ChequeBook]  WITH NOCHECK ADD  CONSTRAINT [FK_B_ChequeBook_IssuedBy] FOREIGN KEY([IssuedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[B_ChequeBook] CHECK CONSTRAINT [FK_B_ChequeBook_IssuedBy]
GO
ALTER TABLE [dbo].[B_ChequeLeaf]  WITH NOCHECK ADD  CONSTRAINT [FK_B_ChequeLeaf_B_ChequeBookId] FOREIGN KEY([B_ChequeBookId])
REFERENCES [dbo].[B_ChequeBook] ([Id])
GO
ALTER TABLE [dbo].[B_ChequeLeaf] CHECK CONSTRAINT [FK_B_ChequeLeaf_B_ChequeBookId]
GO
ALTER TABLE [dbo].[B_ChequeLeaf]  WITH NOCHECK ADD  CONSTRAINT [FK_B_ChequeLeaf_B_TransactionId] FOREIGN KEY([B_TransactionId])
REFERENCES [dbo].[B_Transaction] ([Id])
GO
ALTER TABLE [dbo].[B_ChequeLeaf] CHECK CONSTRAINT [FK_B_ChequeLeaf_B_TransactionId]
GO
ALTER TABLE [dbo].[B_Customer]  WITH NOCHECK ADD  CONSTRAINT [FK_B_Customer_AuthorizedBy] FOREIGN KEY([AuthorizedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[B_Customer] CHECK CONSTRAINT [FK_B_Customer_AuthorizedBy]
GO
ALTER TABLE [dbo].[B_Customer]  WITH NOCHECK ADD  CONSTRAINT [FK_B_Customer_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[B_Customer] CHECK CONSTRAINT [FK_B_Customer_BranchId]
GO
ALTER TABLE [dbo].[B_Customer]  WITH NOCHECK ADD  CONSTRAINT [FK_B_Customer_ClosingBy] FOREIGN KEY([ClosingBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[B_Customer] CHECK CONSTRAINT [FK_B_Customer_ClosingBy]
GO
ALTER TABLE [dbo].[B_Customer]  WITH NOCHECK ADD  CONSTRAINT [FK_B_Customer_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[B_Customer] CHECK CONSTRAINT [FK_B_Customer_CreatedBy]
GO
ALTER TABLE [dbo].[B_Customer]  WITH NOCHECK ADD  CONSTRAINT [FK_B_Customer_P_LoanOfficerId] FOREIGN KEY([P_LoanOfficerId])
REFERENCES [dbo].[P_LoanOfficer] ([Id])
GO
ALTER TABLE [dbo].[B_Customer] CHECK CONSTRAINT [FK_B_Customer_P_LoanOfficerId]
GO
ALTER TABLE [dbo].[B_Customer]  WITH NOCHECK ADD  CONSTRAINT [FK_B_Customer_P_MemberId] FOREIGN KEY([P_MemberId])
REFERENCES [dbo].[P_Member] ([Id])
GO
ALTER TABLE [dbo].[B_Customer] CHECK CONSTRAINT [FK_B_Customer_P_MemberId]
GO
ALTER TABLE [dbo].[B_CustomerMovement]  WITH NOCHECK ADD  CONSTRAINT [FK_B_CustomerMovement_P_LoanOfficerId] FOREIGN KEY([P_LoanOfficerId])
REFERENCES [dbo].[P_LoanOfficer] ([Id])
GO
ALTER TABLE [dbo].[B_CustomerMovement] CHECK CONSTRAINT [FK_B_CustomerMovement_P_LoanOfficerId]
GO
ALTER TABLE [dbo].[B_DurationInstallmentType]  WITH NOCHECK ADD  CONSTRAINT [FK_B_DurationInstallmentType_B_ProductId] FOREIGN KEY([B_ProductId])
REFERENCES [dbo].[B_Product] ([Id])
GO
ALTER TABLE [dbo].[B_DurationInstallmentType] CHECK CONSTRAINT [FK_B_DurationInstallmentType_B_ProductId]
GO
ALTER TABLE [dbo].[B_InterestRate]  WITH NOCHECK ADD  CONSTRAINT [FK_B_InterestRate_B_ProductId_Duration_InstallmentType] FOREIGN KEY([B_ProductId], [Duration], [InstallmentType])
REFERENCES [dbo].[B_DurationInstallmentType] ([B_ProductId], [Duration], [InstallmentType])
GO
ALTER TABLE [dbo].[B_InterestRate] CHECK CONSTRAINT [FK_B_InterestRate_B_ProductId_Duration_InstallmentType]
GO
ALTER TABLE [dbo].[B_JournalStatus]  WITH NOCHECK ADD  CONSTRAINT [FK_B_JournalStatus_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[B_JournalStatus] CHECK CONSTRAINT [FK_B_JournalStatus_BranchId]
GO
ALTER TABLE [dbo].[B_Product]  WITH NOCHECK ADD  CONSTRAINT [FK_B_Product_B_ProductTypeId] FOREIGN KEY([B_ProductTypeId])
REFERENCES [dbo].[B_ProductType] ([Id])
GO
ALTER TABLE [dbo].[B_Product] CHECK CONSTRAINT [FK_B_Product_B_ProductTypeId]
GO
ALTER TABLE [dbo].[B_StandingInstruction]  WITH NOCHECK ADD  CONSTRAINT [FK_B_StandingInstruction_AuthorizedBy] FOREIGN KEY([AuthorizedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[B_StandingInstruction] CHECK CONSTRAINT [FK_B_StandingInstruction_AuthorizedBy]
GO
ALTER TABLE [dbo].[B_StandingInstruction]  WITH NOCHECK ADD  CONSTRAINT [FK_B_StandingInstruction_B_CreditAccountId] FOREIGN KEY([B_CreditAccountId])
REFERENCES [dbo].[B_Account] ([Id])
GO
ALTER TABLE [dbo].[B_StandingInstruction] CHECK CONSTRAINT [FK_B_StandingInstruction_B_CreditAccountId]
GO
ALTER TABLE [dbo].[B_StandingInstruction]  WITH NOCHECK ADD  CONSTRAINT [FK_B_StandingInstruction_B_DebitAccountId] FOREIGN KEY([B_DebitAccountId])
REFERENCES [dbo].[B_Account] ([Id])
GO
ALTER TABLE [dbo].[B_StandingInstruction] CHECK CONSTRAINT [FK_B_StandingInstruction_B_DebitAccountId]
GO
ALTER TABLE [dbo].[B_StandingInstruction]  WITH NOCHECK ADD  CONSTRAINT [FK_B_StandingInstruction_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[B_StandingInstruction] CHECK CONSTRAINT [FK_B_StandingInstruction_BranchId]
GO
ALTER TABLE [dbo].[B_StandingInstruction]  WITH NOCHECK ADD  CONSTRAINT [FK_B_StandingInstruction_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[B_StandingInstruction] CHECK CONSTRAINT [FK_B_StandingInstruction_CreatedBy]
GO
ALTER TABLE [dbo].[B_StandingInstruction]  WITH NOCHECK ADD  CONSTRAINT [FK_B_StandingInstruction_P_LoanAccountId] FOREIGN KEY([P_LoanAccountId])
REFERENCES [dbo].[P_LoanAccount] ([Id])
GO
ALTER TABLE [dbo].[B_StandingInstruction] CHECK CONSTRAINT [FK_B_StandingInstruction_P_LoanAccountId]
GO
ALTER TABLE [dbo].[B_StandingInstructionExecution]  WITH NOCHECK ADD  CONSTRAINT [FK_B_StandingInstructionExecution_B_CreditTransactionId] FOREIGN KEY([B_CreditTransactionId])
REFERENCES [dbo].[B_Transaction] ([Id])
GO
ALTER TABLE [dbo].[B_StandingInstructionExecution] CHECK CONSTRAINT [FK_B_StandingInstructionExecution_B_CreditTransactionId]
GO
ALTER TABLE [dbo].[B_StandingInstructionExecution]  WITH NOCHECK ADD  CONSTRAINT [FK_B_StandingInstructionExecution_B_DebitTransactionId] FOREIGN KEY([B_DebitTransactionId])
REFERENCES [dbo].[B_Transaction] ([Id])
GO
ALTER TABLE [dbo].[B_StandingInstructionExecution] CHECK CONSTRAINT [FK_B_StandingInstructionExecution_B_DebitTransactionId]
GO
ALTER TABLE [dbo].[B_StandingInstructionExecution]  WITH NOCHECK ADD  CONSTRAINT [FK_B_StandingInstructionExecution_B_StandingInstructionId] FOREIGN KEY([B_StandingInstructionId])
REFERENCES [dbo].[B_StandingInstruction] ([Id])
GO
ALTER TABLE [dbo].[B_StandingInstructionExecution] CHECK CONSTRAINT [FK_B_StandingInstructionExecution_B_StandingInstructionId]
GO
ALTER TABLE [dbo].[B_StandingInstructionExecution]  WITH NOCHECK ADD  CONSTRAINT [FK_B_StandingInstructionExecution_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[B_StandingInstructionExecution] CHECK CONSTRAINT [FK_B_StandingInstructionExecution_CreatedBy]
GO
ALTER TABLE [dbo].[B_StandingInstructionExecution]  WITH NOCHECK ADD  CONSTRAINT [FK_B_StandingInstructionExecution_P_LoanTransactionId] FOREIGN KEY([P_LoanTransactionId])
REFERENCES [dbo].[P_LoanTransaction] ([Id])
GO
ALTER TABLE [dbo].[B_StandingInstructionExecution] CHECK CONSTRAINT [FK_B_StandingInstructionExecution_P_LoanTransactionId]
GO
ALTER TABLE [dbo].[B_Transaction]  WITH CHECK ADD  CONSTRAINT [FK_B_Transaction_A_AccountId] FOREIGN KEY([A_AccountId])
REFERENCES [dbo].[A_Account] ([Id])
GO
ALTER TABLE [dbo].[B_Transaction] CHECK CONSTRAINT [FK_B_Transaction_A_AccountId]
GO
ALTER TABLE [dbo].[B_Transaction]  WITH NOCHECK ADD  CONSTRAINT [FK_B_Transaction_B_AccountId] FOREIGN KEY([B_AccountId])
REFERENCES [dbo].[B_Account] ([Id])
GO
ALTER TABLE [dbo].[B_Transaction] CHECK CONSTRAINT [FK_B_Transaction_B_AccountId]
GO
ALTER TABLE [dbo].[B_Transaction]  WITH NOCHECK ADD  CONSTRAINT [FK_B_Transaction_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[B_Transaction] CHECK CONSTRAINT [FK_B_Transaction_BranchId]
GO
ALTER TABLE [dbo].[B_Transaction]  WITH CHECK ADD  CONSTRAINT [FK_B_Transaction_ReferenceId] FOREIGN KEY([ReferenceId])
REFERENCES [dbo].[B_Transaction] ([Id])
GO
ALTER TABLE [dbo].[B_Transaction] CHECK CONSTRAINT [FK_B_Transaction_ReferenceId]
GO
ALTER TABLE [dbo].[B_Transaction]  WITH NOCHECK ADD  CONSTRAINT [FK_B_Transaction_RemoteBranchId] FOREIGN KEY([RemoteBranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[B_Transaction] CHECK CONSTRAINT [FK_B_Transaction_RemoteBranchId]
GO
ALTER TABLE [dbo].[B_Transaction]  WITH NOCHECK ADD  CONSTRAINT [PK_B_Transaction_AuthorizedBy] FOREIGN KEY([AuthorizedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[B_Transaction] CHECK CONSTRAINT [PK_B_Transaction_AuthorizedBy]
GO
ALTER TABLE [dbo].[B_Transaction]  WITH NOCHECK ADD  CONSTRAINT [PK_B_Transaction_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[B_Transaction] CHECK CONSTRAINT [PK_B_Transaction_CreatedBy]
GO
ALTER TABLE [dbo].[B_TransactionDenomination]  WITH NOCHECK ADD  CONSTRAINT [FK_B_TransactionDenomination_B_TransactionId] FOREIGN KEY([B_TransactionId])
REFERENCES [dbo].[B_Transaction] ([Id])
GO
ALTER TABLE [dbo].[B_TransactionDenomination] CHECK CONSTRAINT [FK_B_TransactionDenomination_B_TransactionId]
GO
ALTER TABLE [dbo].[B_VaultTransaction]  WITH CHECK ADD  CONSTRAINT [FK_B_VaultTransaction_A_AccountId] FOREIGN KEY([A_AccountId])
REFERENCES [dbo].[A_Account] ([Id])
GO
ALTER TABLE [dbo].[B_VaultTransaction] CHECK CONSTRAINT [FK_B_VaultTransaction_A_AccountId]
GO
ALTER TABLE [dbo].[B_VaultTransaction]  WITH NOCHECK ADD  CONSTRAINT [FK_B_VaultTransaction_A_TransactionId] FOREIGN KEY([A_TransactionId])
REFERENCES [dbo].[A_Transaction] ([Id])
GO
ALTER TABLE [dbo].[B_VaultTransaction] CHECK CONSTRAINT [FK_B_VaultTransaction_A_TransactionId]
GO
ALTER TABLE [dbo].[B_VaultTransaction]  WITH NOCHECK ADD  CONSTRAINT [FK_B_VaultTransaction_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[B_VaultTransaction] CHECK CONSTRAINT [FK_B_VaultTransaction_BranchId]
GO
ALTER TABLE [dbo].[B_VaultTransaction]  WITH NOCHECK ADD  CONSTRAINT [FK_B_VaultTransaction_CashierUserLogin] FOREIGN KEY([CashierUserLogin])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[B_VaultTransaction] CHECK CONSTRAINT [FK_B_VaultTransaction_CashierUserLogin]
GO
ALTER TABLE [dbo].[B_VaultTransaction]  WITH NOCHECK ADD  CONSTRAINT [FK_B_VaultTransaction_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[B_VaultTransaction] CHECK CONSTRAINT [FK_B_VaultTransaction_CreatedBy]
GO
ALTER TABLE [dbo].[B_VaultTransaction]  WITH NOCHECK ADD  CONSTRAINT [FK_B_VaultTransaction_RemoteBranchId] FOREIGN KEY([RemoteBranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[B_VaultTransaction] CHECK CONSTRAINT [FK_B_VaultTransaction_RemoteBranchId]
GO
ALTER TABLE [dbo].[B_VaultTransactionDenomination]  WITH NOCHECK ADD  CONSTRAINT [FK_B_VaultTransactionDenomination_B_TransactionId] FOREIGN KEY([B_VaultTransactionId])
REFERENCES [dbo].[B_VaultTransaction] ([Id])
GO
ALTER TABLE [dbo].[B_VaultTransactionDenomination] CHECK CONSTRAINT [FK_B_VaultTransactionDenomination_B_TransactionId]
GO
ALTER TABLE [dbo].[Branch]  WITH NOCHECK ADD  CONSTRAINT [FK_Branch_GrandParentId] FOREIGN KEY([GrandParentId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[Branch] CHECK CONSTRAINT [FK_Branch_GrandParentId]
GO
ALTER TABLE [dbo].[Branch]  WITH NOCHECK ADD  CONSTRAINT [FK_Branch_ParentId] FOREIGN KEY([ParentId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[Branch] CHECK CONSTRAINT [FK_Branch_ParentId]
GO
ALTER TABLE [dbo].[Branch]  WITH NOCHECK ADD  CONSTRAINT [FK_Branch_RegionId] FOREIGN KEY([RegionId])
REFERENCES [dbo].[Region] ([Id])
GO
ALTER TABLE [dbo].[Branch] CHECK CONSTRAINT [FK_Branch_RegionId]
GO
ALTER TABLE [dbo].[Calendar]  WITH NOCHECK ADD  CONSTRAINT [PK_Calendar_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[Calendar] CHECK CONSTRAINT [PK_Calendar_BranchId]
GO
ALTER TABLE [dbo].[CalendarGuide]  WITH CHECK ADD  CONSTRAINT [PK_CalendarGuide_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[CalendarGuide] CHECK CONSTRAINT [PK_CalendarGuide_BranchId]
GO
ALTER TABLE [dbo].[DatabaseBackupLog]  WITH NOCHECK ADD  CONSTRAINT [FK_DatabaseBackupLog_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[DatabaseBackupLog] CHECK CONSTRAINT [FK_DatabaseBackupLog_CreatedBy]
GO
ALTER TABLE [dbo].[DatabaseConfiguration]  WITH NOCHECK ADD  CONSTRAINT [FK_DatabaseConfiguration_InstallationId] FOREIGN KEY([InstallationId])
REFERENCES [dbo].[Installation] ([Id])
GO
ALTER TABLE [dbo].[DatabaseConfiguration] CHECK CONSTRAINT [FK_DatabaseConfiguration_InstallationId]
GO
ALTER TABLE [dbo].[DbTransactionDetails]  WITH NOCHECK ADD  CONSTRAINT [FK_DbTransactionDetails_DbTransactionId] FOREIGN KEY([DbTransactionId])
REFERENCES [dbo].[DbTransaction] ([Id])
GO
ALTER TABLE [dbo].[DbTransactionDetails] CHECK CONSTRAINT [FK_DbTransactionDetails_DbTransactionId]
GO
ALTER TABLE [dbo].[DbTransactionDetails_Archive_27032022]  WITH NOCHECK ADD  CONSTRAINT [FK_DbTransactionDetails_Archive_27032022_DbTransactionId] FOREIGN KEY([DbTransactionId])
REFERENCES [dbo].[DbTransaction_Archive_27032022] ([Id])
GO
ALTER TABLE [dbo].[DbTransactionDetails_Archive_27032022] CHECK CONSTRAINT [FK_DbTransactionDetails_Archive_27032022_DbTransactionId]
GO
ALTER TABLE [dbo].[District]  WITH NOCHECK ADD  CONSTRAINT [FK_District_ZoneId] FOREIGN KEY([ZoneId])
REFERENCES [dbo].[Zone] ([Id])
GO
ALTER TABLE [dbo].[District] CHECK CONSTRAINT [FK_District_ZoneId]
GO
ALTER TABLE [dbo].[FingerprintConfiguration]  WITH CHECK ADD  CONSTRAINT [FK_FingerprintConfiguration_AuthorizedBy] FOREIGN KEY([AuthorizedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[FingerprintConfiguration] CHECK CONSTRAINT [FK_FingerprintConfiguration_AuthorizedBy]
GO
ALTER TABLE [dbo].[FingerprintConfiguration]  WITH CHECK ADD  CONSTRAINT [FK_FingerprintConfiguration_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[FingerprintConfiguration] CHECK CONSTRAINT [FK_FingerprintConfiguration_BranchId]
GO
ALTER TABLE [dbo].[FingerprintConfiguration]  WITH CHECK ADD  CONSTRAINT [FK_FingerprintConfiguration_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[FingerprintConfiguration] CHECK CONSTRAINT [FK_FingerprintConfiguration_CreatedBy]
GO
ALTER TABLE [dbo].[HRM_AcademicQualification]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_AcademicQualification_HRM_EmployeeId] FOREIGN KEY([HRM_EmployeeId])
REFERENCES [dbo].[HRM_Employee] ([Id])
GO
ALTER TABLE [dbo].[HRM_AcademicQualification] CHECK CONSTRAINT [FK_HRM_AcademicQualification_HRM_EmployeeId]
GO
ALTER TABLE [dbo].[HRM_City]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_City_HRM_CountryId] FOREIGN KEY([HRM_CountryId])
REFERENCES [dbo].[HRM_Country] ([Id])
GO
ALTER TABLE [dbo].[HRM_City] CHECK CONSTRAINT [FK_HRM_City_HRM_CountryId]
GO
ALTER TABLE [dbo].[HRM_CompensatoryLeave]  WITH CHECK ADD  CONSTRAINT [FK_HRM_CompensatoryLeave_EntryUser] FOREIGN KEY([EntryUser])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[HRM_CompensatoryLeave] CHECK CONSTRAINT [FK_HRM_CompensatoryLeave_EntryUser]
GO
ALTER TABLE [dbo].[HRM_CompensatoryLeave]  WITH CHECK ADD  CONSTRAINT [FK_HRM_CompensatoryLeave_HRM_EmployeeId] FOREIGN KEY([HRM_EmployeeId])
REFERENCES [dbo].[HRM_Employee] ([Id])
GO
ALTER TABLE [dbo].[HRM_CompensatoryLeave] CHECK CONSTRAINT [FK_HRM_CompensatoryLeave_HRM_EmployeeId]
GO
ALTER TABLE [dbo].[HRM_Employee]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_Employee_PermanentAddressId] FOREIGN KEY([PermanentAddressId])
REFERENCES [dbo].[HRM_Address] ([Id])
GO
ALTER TABLE [dbo].[HRM_Employee] CHECK CONSTRAINT [FK_HRM_Employee_PermanentAddressId]
GO
ALTER TABLE [dbo].[HRM_Employee]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_Employee_PresentAddressId] FOREIGN KEY([PresentAddressId])
REFERENCES [dbo].[HRM_Address] ([Id])
GO
ALTER TABLE [dbo].[HRM_Employee] CHECK CONSTRAINT [FK_HRM_Employee_PresentAddressId]
GO
ALTER TABLE [dbo].[HRM_EmployeeActingDesignation]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_EmployeeActingDesignation_HRM_EmployeeId] FOREIGN KEY([HRM_EmployeeId])
REFERENCES [dbo].[HRM_Employee] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeeActingDesignation] CHECK CONSTRAINT [FK_HRM_EmployeeActingDesignation_HRM_EmployeeId]
GO
ALTER TABLE [dbo].[HRM_EmployeeActingDesignation]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_EmployeeActingDesignation_InchargedDesignationId] FOREIGN KEY([InchargedDesignationId])
REFERENCES [dbo].[HRM_Designation] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeeActingDesignation] CHECK CONSTRAINT [FK_HRM_EmployeeActingDesignation_InchargedDesignationId]
GO
ALTER TABLE [dbo].[HRM_EmployeeActingDesignation]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_EmployeeActingDesignation_InchargedGradeId] FOREIGN KEY([InchargedGradeId])
REFERENCES [dbo].[HRM_Grade] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeeActingDesignation] CHECK CONSTRAINT [FK_HRM_EmployeeActingDesignation_InchargedGradeId]
GO
ALTER TABLE [dbo].[HRM_EmployeeAttendance]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_EmployeeAttendance_HRM_EmployeeId] FOREIGN KEY([HRM_EmployeeId])
REFERENCES [dbo].[HRM_Employee] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeeAttendance] CHECK CONSTRAINT [FK_HRM_EmployeeAttendance_HRM_EmployeeId]
GO
ALTER TABLE [dbo].[HRM_EmployeeBranch]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_EmployeeBranch_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeeBranch] CHECK CONSTRAINT [FK_HRM_EmployeeBranch_BranchId]
GO
ALTER TABLE [dbo].[HRM_EmployeeBranch]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_EmployeeBranch_HRM_EmployeeId] FOREIGN KEY([HRM_EmployeeId])
REFERENCES [dbo].[HRM_Employee] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeeBranch] CHECK CONSTRAINT [FK_HRM_EmployeeBranch_HRM_EmployeeId]
GO
ALTER TABLE [dbo].[HRM_EmployeeContract]  WITH CHECK ADD  CONSTRAINT [FK_HRM_EmployeeContract_HRM_Employee] FOREIGN KEY([HRM_EmployeeId])
REFERENCES [dbo].[HRM_Employee] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeeContract] CHECK CONSTRAINT [FK_HRM_EmployeeContract_HRM_Employee]
GO
ALTER TABLE [dbo].[HRM_EmployeeDepartment]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_EmployeeDepartment_HRM_DepartmentId] FOREIGN KEY([HRM_DepartmentId])
REFERENCES [dbo].[HRM_Department] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeeDepartment] CHECK CONSTRAINT [FK_HRM_EmployeeDepartment_HRM_DepartmentId]
GO
ALTER TABLE [dbo].[HRM_EmployeeDepartment]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_EmployeeDepartment_HRM_EmployeeId] FOREIGN KEY([HRM_EmployeeId])
REFERENCES [dbo].[HRM_Employee] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeeDepartment] CHECK CONSTRAINT [FK_HRM_EmployeeDepartment_HRM_EmployeeId]
GO
ALTER TABLE [dbo].[HRM_EmployeeDesignation]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_EmployeeDesignation_HRM_DesignationId] FOREIGN KEY([HRM_DesignationId])
REFERENCES [dbo].[HRM_Designation] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeeDesignation] CHECK CONSTRAINT [FK_HRM_EmployeeDesignation_HRM_DesignationId]
GO
ALTER TABLE [dbo].[HRM_EmployeeDesignation]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_EmployeeDesignation_HRM_EmployeeId] FOREIGN KEY([HRM_EmployeeId])
REFERENCES [dbo].[HRM_Employee] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeeDesignation] CHECK CONSTRAINT [FK_HRM_EmployeeDesignation_HRM_EmployeeId]
GO
ALTER TABLE [dbo].[HRM_EmployeeDocument]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_EmployeeDocument_HRM_EmployeeId] FOREIGN KEY([HRM_EmployeeId])
REFERENCES [dbo].[HRM_Employee] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeeDocument] CHECK CONSTRAINT [FK_HRM_EmployeeDocument_HRM_EmployeeId]
GO
ALTER TABLE [dbo].[HRM_EmployeeDrop]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_EmployeeDrop_HRM_DropReasonId] FOREIGN KEY([HRM_DropReasonId])
REFERENCES [dbo].[HRM_DropReason] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeeDrop] CHECK CONSTRAINT [FK_HRM_EmployeeDrop_HRM_DropReasonId]
GO
ALTER TABLE [dbo].[HRM_EmployeeDrop]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_EmployeeDrop_HRM_EmployeeId] FOREIGN KEY([HRM_EmployeeId])
REFERENCES [dbo].[HRM_Employee] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeeDrop] CHECK CONSTRAINT [FK_HRM_EmployeeDrop_HRM_EmployeeId]
GO
ALTER TABLE [dbo].[HRM_EmployeeDropHistory]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_EmployeeDropHistory_HRM_DropReasonId] FOREIGN KEY([HRM_DropReasonId])
REFERENCES [dbo].[HRM_DropReason] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeeDropHistory] CHECK CONSTRAINT [FK_HRM_EmployeeDropHistory_HRM_DropReasonId]
GO
ALTER TABLE [dbo].[HRM_EmployeeDropHistory]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_EmployeeDropHistory_HRM_EmployeeId] FOREIGN KEY([HRM_EmployeeId])
REFERENCES [dbo].[HRM_Employee] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeeDropHistory] CHECK CONSTRAINT [FK_HRM_EmployeeDropHistory_HRM_EmployeeId]
GO
ALTER TABLE [dbo].[HRM_EmployeeGrade]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_EmployeeGrade_HRM_EmployeeId] FOREIGN KEY([HRM_EmployeeId])
REFERENCES [dbo].[HRM_Employee] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeeGrade] CHECK CONSTRAINT [FK_HRM_EmployeeGrade_HRM_EmployeeId]
GO
ALTER TABLE [dbo].[HRM_EmployeeGrade]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_EmployeeGrade_HRM_GradeId] FOREIGN KEY([HRM_GradeId])
REFERENCES [dbo].[HRM_Grade] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeeGrade] CHECK CONSTRAINT [FK_HRM_EmployeeGrade_HRM_GradeId]
GO
ALTER TABLE [dbo].[HRM_EmployeeIncrementHeldup]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_EmployeeIncrementHeldup_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeeIncrementHeldup] CHECK CONSTRAINT [FK_HRM_EmployeeIncrementHeldup_BranchId]
GO
ALTER TABLE [dbo].[HRM_EmployeeIncrementHeldup]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_EmployeeIncrementHeldup_HRM_EmployeeId] FOREIGN KEY([HRM_EmployeeId])
REFERENCES [dbo].[HRM_Employee] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeeIncrementHeldup] CHECK CONSTRAINT [FK_HRM_EmployeeIncrementHeldup_HRM_EmployeeId]
GO
ALTER TABLE [dbo].[HRM_EmployeeLeave]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_EmployeeLeave_HRM_EmployeeId] FOREIGN KEY([HRM_EmployeeId])
REFERENCES [dbo].[HRM_Employee] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeeLeave] CHECK CONSTRAINT [FK_HRM_EmployeeLeave_HRM_EmployeeId]
GO
ALTER TABLE [dbo].[HRM_EmployeeManager]  WITH NOCHECK ADD  CONSTRAINT [PK_HRM_EmployeeManager_HRM_EmployeeId] FOREIGN KEY([HRM_EmployeeId])
REFERENCES [dbo].[HRM_Employee] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeeManager] CHECK CONSTRAINT [PK_HRM_EmployeeManager_HRM_EmployeeId]
GO
ALTER TABLE [dbo].[HRM_EmployeeManager]  WITH NOCHECK ADD  CONSTRAINT [PK_HRM_EmployeeManager_HRM_ManagerId] FOREIGN KEY([ManagerId])
REFERENCES [dbo].[HRM_Employee] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeeManager] CHECK CONSTRAINT [PK_HRM_EmployeeManager_HRM_ManagerId]
GO
ALTER TABLE [dbo].[HRM_EmployeeNominee]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_EmployeeNominee_HRM_EmployeeId] FOREIGN KEY([HRM_EmployeeId])
REFERENCES [dbo].[HRM_Employee] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeeNominee] CHECK CONSTRAINT [FK_HRM_EmployeeNominee_HRM_EmployeeId]
GO
ALTER TABLE [dbo].[HRM_EmployeePenalty]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_EmployeePenalty_HRM_EmployeeId] FOREIGN KEY([HRM_EmployeeId])
REFERENCES [dbo].[HRM_Employee] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeePenalty] CHECK CONSTRAINT [FK_HRM_EmployeePenalty_HRM_EmployeeId]
GO
ALTER TABLE [dbo].[HRM_EmployeePermanent]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_EmployeePermanent_HRM_Employee] FOREIGN KEY([HRM_EmployeeId])
REFERENCES [dbo].[HRM_Employee] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeePermanent] CHECK CONSTRAINT [FK_HRM_EmployeePermanent_HRM_Employee]
GO
ALTER TABLE [dbo].[HRM_EmployeePromotion]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_EmployeePromotion_HRM_EmployeeId] FOREIGN KEY([HRM_EmployeeId])
REFERENCES [dbo].[HRM_Employee] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeePromotion] CHECK CONSTRAINT [FK_HRM_EmployeePromotion_HRM_EmployeeId]
GO
ALTER TABLE [dbo].[HRM_EmployeePromotion]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_EmployeePromotion_NewHRM_DesignationId] FOREIGN KEY([NewHRM_DesignationId])
REFERENCES [dbo].[HRM_Designation] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeePromotion] CHECK CONSTRAINT [FK_HRM_EmployeePromotion_NewHRM_DesignationId]
GO
ALTER TABLE [dbo].[HRM_EmployeePromotion]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_EmployeePromotion_NewHRM_GradeId] FOREIGN KEY([NewHRM_GradeId])
REFERENCES [dbo].[HRM_Grade] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeePromotion] CHECK CONSTRAINT [FK_HRM_EmployeePromotion_NewHRM_GradeId]
GO
ALTER TABLE [dbo].[HRM_EmployeePromotion]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_EmployeePromotion_OldHRM_DesignationId] FOREIGN KEY([OldHRM_DesignationId])
REFERENCES [dbo].[HRM_Designation] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeePromotion] CHECK CONSTRAINT [FK_HRM_EmployeePromotion_OldHRM_DesignationId]
GO
ALTER TABLE [dbo].[HRM_EmployeePromotion]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_EmployeePromotion_OldHRM_GradeId] FOREIGN KEY([OldHRM_GradeId])
REFERENCES [dbo].[HRM_Grade] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeePromotion] CHECK CONSTRAINT [FK_HRM_EmployeePromotion_OldHRM_GradeId]
GO
ALTER TABLE [dbo].[HRM_EmployeeReemployment]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_EmployeeReemployment_DestinationBranchId] FOREIGN KEY([DestinationBranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeeReemployment] CHECK CONSTRAINT [FK_HRM_EmployeeReemployment_DestinationBranchId]
GO
ALTER TABLE [dbo].[HRM_EmployeeReemployment]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_EmployeeReemployment_HRM_EmployeeId] FOREIGN KEY([HRM_EmployeeId])
REFERENCES [dbo].[HRM_Employee] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeeReemployment] CHECK CONSTRAINT [FK_HRM_EmployeeReemployment_HRM_EmployeeId]
GO
ALTER TABLE [dbo].[HRM_EmployeeReemployment]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_EmployeeReemployment_SourceBranchId] FOREIGN KEY([SourceBranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeeReemployment] CHECK CONSTRAINT [FK_HRM_EmployeeReemployment_SourceBranchId]
GO
ALTER TABLE [dbo].[HRM_EmployeeRejoin]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_EmployeeRejoin_DestinationBranchId] FOREIGN KEY([DestinationBranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeeRejoin] CHECK CONSTRAINT [FK_HRM_EmployeeRejoin_DestinationBranchId]
GO
ALTER TABLE [dbo].[HRM_EmployeeRejoin]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_EmployeeRejoin_HRM_EmployeeId] FOREIGN KEY([HRM_EmployeeId])
REFERENCES [dbo].[HRM_Employee] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeeRejoin] CHECK CONSTRAINT [FK_HRM_EmployeeRejoin_HRM_EmployeeId]
GO
ALTER TABLE [dbo].[HRM_EmployeeRejoin]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_EmployeeRejoin_SourceBranchId] FOREIGN KEY([SourceBranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeeRejoin] CHECK CONSTRAINT [FK_HRM_EmployeeRejoin_SourceBranchId]
GO
ALTER TABLE [dbo].[HRM_EmployeeSalary]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_EmployeeSalary_HRM_EmployeeId] FOREIGN KEY([HRM_EmployeeId])
REFERENCES [dbo].[HRM_Employee] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeeSalary] CHECK CONSTRAINT [FK_HRM_EmployeeSalary_HRM_EmployeeId]
GO
ALTER TABLE [dbo].[HRM_EmployeeSalary]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_EmployeeSalary_HRM_SalaryTypeId] FOREIGN KEY([HRM_SalaryTypeId])
REFERENCES [dbo].[HRM_SalaryType] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeeSalary] CHECK CONSTRAINT [FK_HRM_EmployeeSalary_HRM_SalaryTypeId]
GO
ALTER TABLE [dbo].[HRM_EmployeeSpecialHonor]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_EmployeeSpecialHonor_HRM_EmployeeId] FOREIGN KEY([HRM_EmployeeId])
REFERENCES [dbo].[HRM_Employee] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeeSpecialHonor] CHECK CONSTRAINT [FK_HRM_EmployeeSpecialHonor_HRM_EmployeeId]
GO
ALTER TABLE [dbo].[HRM_EmployeeTransfer]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_EmployeeTransfer_DestinationBranchId] FOREIGN KEY([DestinationBranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeeTransfer] CHECK CONSTRAINT [FK_HRM_EmployeeTransfer_DestinationBranchId]
GO
ALTER TABLE [dbo].[HRM_EmployeeTransfer]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_EmployeeTransfer_HRM_EmployeeId] FOREIGN KEY([HRM_EmployeeId])
REFERENCES [dbo].[HRM_Employee] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeeTransfer] CHECK CONSTRAINT [FK_HRM_EmployeeTransfer_HRM_EmployeeId]
GO
ALTER TABLE [dbo].[HRM_EmployeeTransfer]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_EmployeeTransfer_SourceBranchId] FOREIGN KEY([SourceBranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeeTransfer] CHECK CONSTRAINT [FK_HRM_EmployeeTransfer_SourceBranchId]
GO
ALTER TABLE [dbo].[HRM_EmployeeUnauthorizedAbsent]  WITH CHECK ADD  CONSTRAINT [FK_HRM_EmployeeUnauthorizedAbsent_HRM_Employee] FOREIGN KEY([HRM_EmployeeId])
REFERENCES [dbo].[HRM_Employee] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeeUnauthorizedAbsent] CHECK CONSTRAINT [FK_HRM_EmployeeUnauthorizedAbsent_HRM_Employee]
GO
ALTER TABLE [dbo].[HRM_EmployeeWaitingForPosting]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_EmployeeWaitingForPosting_HRM_EmployeeId] FOREIGN KEY([HRM_EmployeeId])
REFERENCES [dbo].[HRM_Employee] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeeWaitingForPosting] CHECK CONSTRAINT [FK_HRM_EmployeeWaitingForPosting_HRM_EmployeeId]
GO
ALTER TABLE [dbo].[HRM_EmployeeWarning]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_EmployeeWarning_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeeWarning] CHECK CONSTRAINT [FK_HRM_EmployeeWarning_BranchId]
GO
ALTER TABLE [dbo].[HRM_EmployeeWarning]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_EmployeeWarning_HRM_EmployeeId] FOREIGN KEY([HRM_EmployeeId])
REFERENCES [dbo].[HRM_Employee] ([Id])
GO
ALTER TABLE [dbo].[HRM_EmployeeWarning] CHECK CONSTRAINT [FK_HRM_EmployeeWarning_HRM_EmployeeId]
GO
ALTER TABLE [dbo].[HRM_Experience]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_Experience_HRM_EmployeeId] FOREIGN KEY([HRM_EmployeeId])
REFERENCES [dbo].[HRM_Employee] ([Id])
GO
ALTER TABLE [dbo].[HRM_Experience] CHECK CONSTRAINT [FK_HRM_Experience_HRM_EmployeeId]
GO
ALTER TABLE [dbo].[HRM_ExtraInfo]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_ExtraInfo_HRM_Employee] FOREIGN KEY([HRM_EmployeeId])
REFERENCES [dbo].[HRM_Employee] ([Id])
GO
ALTER TABLE [dbo].[HRM_ExtraInfo] CHECK CONSTRAINT [FK_HRM_ExtraInfo_HRM_Employee]
GO
ALTER TABLE [dbo].[HRM_ExtraInfo]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_ExtraInfo_HRM_ExtraInfoConfig] FOREIGN KEY([HRM_ExtraInfoConfigId])
REFERENCES [dbo].[HRM_ExtraInfoConfig] ([Id])
GO
ALTER TABLE [dbo].[HRM_ExtraInfo] CHECK CONSTRAINT [FK_HRM_ExtraInfo_HRM_ExtraInfoConfig]
GO
ALTER TABLE [dbo].[HRM_ExtraInfoAttachment]  WITH NOCHECK ADD  CONSTRAINT [HRM_ExtraInfoAttachment_HRM_EmployeeId] FOREIGN KEY([HRM_EmployeeId])
REFERENCES [dbo].[HRM_Employee] ([Id])
GO
ALTER TABLE [dbo].[HRM_ExtraInfoAttachment] CHECK CONSTRAINT [HRM_ExtraInfoAttachment_HRM_EmployeeId]
GO
ALTER TABLE [dbo].[HRM_FestivalAndLateLeaveTrackForAnnualAndCasual]  WITH CHECK ADD  CONSTRAINT [FK_HRM_FestivalAndLateLeaveTrackForAnnualAndCasual_HRM_LeaveApplication] FOREIGN KEY([HRM_LeaveApplicationId])
REFERENCES [dbo].[HRM_LeaveApplication] ([Id])
GO
ALTER TABLE [dbo].[HRM_FestivalAndLateLeaveTrackForAnnualAndCasual] CHECK CONSTRAINT [FK_HRM_FestivalAndLateLeaveTrackForAnnualAndCasual_HRM_LeaveApplication]
GO
ALTER TABLE [dbo].[HRM_FestivalAndLateLeaveTrackForAnnualAndCasual]  WITH CHECK ADD  CONSTRAINT [FK_HRM_FestivalLeaveTrackForAnnualAndCasual_HRM_Employee] FOREIGN KEY([HRM_EmployeeId])
REFERENCES [dbo].[HRM_Employee] ([Id])
GO
ALTER TABLE [dbo].[HRM_FestivalAndLateLeaveTrackForAnnualAndCasual] CHECK CONSTRAINT [FK_HRM_FestivalLeaveTrackForAnnualAndCasual_HRM_Employee]
GO
ALTER TABLE [dbo].[HRM_FestivalAndLateLeaveTrackForAnnualAndCasual]  WITH CHECK ADD  CONSTRAINT [FK_HRM_FestivalLeaveTrackForAnnualAndCasual_HRM_LeaveType] FOREIGN KEY([HRM_LeaveTypeId])
REFERENCES [dbo].[HRM_LeaveType] ([Id])
GO
ALTER TABLE [dbo].[HRM_FestivalAndLateLeaveTrackForAnnualAndCasual] CHECK CONSTRAINT [FK_HRM_FestivalLeaveTrackForAnnualAndCasual_HRM_LeaveType]
GO
ALTER TABLE [dbo].[HRM_GradeDesignation]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_GradeDesignation_HRM_DesignationId] FOREIGN KEY([HRM_DesignationId])
REFERENCES [dbo].[HRM_Designation] ([Id])
GO
ALTER TABLE [dbo].[HRM_GradeDesignation] CHECK CONSTRAINT [FK_HRM_GradeDesignation_HRM_DesignationId]
GO
ALTER TABLE [dbo].[HRM_GradeDesignation]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_GradeDesignation_HRM_GradeId] FOREIGN KEY([HRM_GradeId])
REFERENCES [dbo].[HRM_Grade] ([Id])
GO
ALTER TABLE [dbo].[HRM_GradeDesignation] CHECK CONSTRAINT [FK_HRM_GradeDesignation_HRM_GradeId]
GO
ALTER TABLE [dbo].[HRM_HoldingEmployeeLeaveBalance]  WITH CHECK ADD  CONSTRAINT [FK_HRMHoldingEmployee] FOREIGN KEY([HRM_EmployeeId])
REFERENCES [dbo].[HRM_Employee] ([Id])
GO
ALTER TABLE [dbo].[HRM_HoldingEmployeeLeaveBalance] CHECK CONSTRAINT [FK_HRMHoldingEmployee]
GO
ALTER TABLE [dbo].[HRM_LeaveApplication]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_LeaveApplication_ApprovedBy] FOREIGN KEY([ApprovedBy])
REFERENCES [dbo].[HRM_Employee] ([Id])
GO
ALTER TABLE [dbo].[HRM_LeaveApplication] CHECK CONSTRAINT [FK_HRM_LeaveApplication_ApprovedBy]
GO
ALTER TABLE [dbo].[HRM_LeaveApplication]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_LeaveApplication_HRM_EmployeeId] FOREIGN KEY([HRM_EmployeeId])
REFERENCES [dbo].[HRM_Employee] ([Id])
GO
ALTER TABLE [dbo].[HRM_LeaveApplication] CHECK CONSTRAINT [FK_HRM_LeaveApplication_HRM_EmployeeId]
GO
ALTER TABLE [dbo].[HRM_LeaveApplication]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_LeaveApplication_HRM_LeaveTypeId] FOREIGN KEY([HRM_LeaveTypeId])
REFERENCES [dbo].[HRM_LeaveType] ([Id])
GO
ALTER TABLE [dbo].[HRM_LeaveApplication] CHECK CONSTRAINT [FK_HRM_LeaveApplication_HRM_LeaveTypeId]
GO
ALTER TABLE [dbo].[HRM_LeaveApplicationDetails]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_LeaveApplicationDetails_HRM_LeaveApplicationId] FOREIGN KEY([HRM_LeaveApplicationId])
REFERENCES [dbo].[HRM_LeaveApplication] ([Id])
GO
ALTER TABLE [dbo].[HRM_LeaveApplicationDetails] CHECK CONSTRAINT [FK_HRM_LeaveApplicationDetails_HRM_LeaveApplicationId]
GO
ALTER TABLE [dbo].[HRM_LeaveBalance]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_LeaveBalance_HRM_EmployeeId] FOREIGN KEY([HRM_EmployeeId])
REFERENCES [dbo].[HRM_Employee] ([Id])
GO
ALTER TABLE [dbo].[HRM_LeaveBalance] CHECK CONSTRAINT [FK_HRM_LeaveBalance_HRM_EmployeeId]
GO
ALTER TABLE [dbo].[HRM_LeaveBalance]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_LeaveBalance_HRM_LeaveTypeId] FOREIGN KEY([HRM_LeaveTypeId])
REFERENCES [dbo].[HRM_LeaveType] ([Id])
GO
ALTER TABLE [dbo].[HRM_LeaveBalance] CHECK CONSTRAINT [FK_HRM_LeaveBalance_HRM_LeaveTypeId]
GO
ALTER TABLE [dbo].[HRM_ManualAttendance]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_ManualAttendance_HRM_EmployeeId] FOREIGN KEY([HRM_EmployeeId])
REFERENCES [dbo].[HRM_Employee] ([Id])
GO
ALTER TABLE [dbo].[HRM_ManualAttendance] CHECK CONSTRAINT [FK_HRM_ManualAttendance_HRM_EmployeeId]
GO
ALTER TABLE [dbo].[HRM_ProfessionalQualification]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_ProfessionalQualification_HRM_EmployeeId] FOREIGN KEY([HRM_EmployeeId])
REFERENCES [dbo].[HRM_Employee] ([Id])
GO
ALTER TABLE [dbo].[HRM_ProfessionalQualification] CHECK CONSTRAINT [FK_HRM_ProfessionalQualification_HRM_EmployeeId]
GO
ALTER TABLE [dbo].[HRM_ResetPasswordRequest]  WITH CHECK ADD  CONSTRAINT [FK_HRM_ResetPasswordRequest_UserLogin] FOREIGN KEY([UserLogin])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[HRM_ResetPasswordRequest] CHECK CONSTRAINT [FK_HRM_ResetPasswordRequest_UserLogin]
GO
ALTER TABLE [dbo].[HRM_Training]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_Training_HRM_EmployeeId] FOREIGN KEY([HRM_EmployeeId])
REFERENCES [dbo].[HRM_Employee] ([Id])
GO
ALTER TABLE [dbo].[HRM_Training] CHECK CONSTRAINT [FK_HRM_Training_HRM_EmployeeId]
GO
ALTER TABLE [dbo].[HRM_Travel]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_Travel_HRM_EmployeeId] FOREIGN KEY([HRM_EmployeeId])
REFERENCES [dbo].[HRM_Employee] ([Id])
GO
ALTER TABLE [dbo].[HRM_Travel] CHECK CONSTRAINT [FK_HRM_Travel_HRM_EmployeeId]
GO
ALTER TABLE [dbo].[HRM_TravelDetails]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_HRM_TravelDetails_DepartureCityId] FOREIGN KEY([DepartureHRM_CityId])
REFERENCES [dbo].[HRM_City] ([Id])
GO
ALTER TABLE [dbo].[HRM_TravelDetails] CHECK CONSTRAINT [FK_HRM_HRM_TravelDetails_DepartureCityId]
GO
ALTER TABLE [dbo].[HRM_TravelDetails]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_TravelDetails_ArrivalCityId] FOREIGN KEY([ArrivalHRM_CityId])
REFERENCES [dbo].[HRM_City] ([Id])
GO
ALTER TABLE [dbo].[HRM_TravelDetails] CHECK CONSTRAINT [FK_HRM_TravelDetails_ArrivalCityId]
GO
ALTER TABLE [dbo].[HRM_TravelDetails]  WITH NOCHECK ADD  CONSTRAINT [FK_HRM_TravelDetails_HRM_TravelId] FOREIGN KEY([HRM_TravelId])
REFERENCES [dbo].[HRM_Travel] ([Id])
GO
ALTER TABLE [dbo].[HRM_TravelDetails] CHECK CONSTRAINT [FK_HRM_TravelDetails_HRM_TravelId]
GO
ALTER TABLE [dbo].[M_BorrowerTarget]  WITH CHECK ADD  CONSTRAINT [FK_M_BorrowerTarget_Branch] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[M_BorrowerTarget] CHECK CONSTRAINT [FK_M_BorrowerTarget_Branch]
GO
ALTER TABLE [dbo].[M_BorrowerTarget]  WITH CHECK ADD  CONSTRAINT [FK_M_BorrowerTarget_P_Program] FOREIGN KEY([ProgramId])
REFERENCES [dbo].[P_Program] ([Id])
GO
ALTER TABLE [dbo].[M_BorrowerTarget] CHECK CONSTRAINT [FK_M_BorrowerTarget_P_Program]
GO
ALTER TABLE [dbo].[M_CellingOfBankWithdrawalCash]  WITH CHECK ADD  CONSTRAINT [M_CellingOfBankWithdrawalCash_Branch] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[M_CellingOfBankWithdrawalCash] CHECK CONSTRAINT [M_CellingOfBankWithdrawalCash_Branch]
GO
ALTER TABLE [dbo].[M_RentalInformation]  WITH CHECK ADD  CONSTRAINT [M_RentalInformation_Branch] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[M_RentalInformation] CHECK CONSTRAINT [M_RentalInformation_Branch]
GO
ALTER TABLE [dbo].[MobileUser]  WITH NOCHECK ADD  CONSTRAINT [FK_MobileUser_B_CustomerId] FOREIGN KEY([B_CustomerId])
REFERENCES [dbo].[B_Customer] ([Id])
GO
ALTER TABLE [dbo].[MobileUser] CHECK CONSTRAINT [FK_MobileUser_B_CustomerId]
GO
ALTER TABLE [dbo].[MobileUser]  WITH NOCHECK ADD  CONSTRAINT [FK_MobileUser_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[MobileUser] CHECK CONSTRAINT [FK_MobileUser_CreatedBy]
GO
ALTER TABLE [dbo].[MobileUser]  WITH NOCHECK ADD  CONSTRAINT [FK_MobileUser_LastModifiedBy] FOREIGN KEY([LastModifiedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[MobileUser] CHECK CONSTRAINT [FK_MobileUser_LastModifiedBy]
GO
ALTER TABLE [dbo].[MobileUser]  WITH NOCHECK ADD  CONSTRAINT [FK_MobileUser_P_MemberId] FOREIGN KEY([P_MemberId])
REFERENCES [dbo].[P_Member] ([Id])
GO
ALTER TABLE [dbo].[MobileUser] CHECK CONSTRAINT [FK_MobileUser_P_MemberId]
GO
ALTER TABLE [dbo].[MonitoringChecklist]  WITH NOCHECK ADD  CONSTRAINT [FK_MonitoringChecklist_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[MonitoringChecklist] CHECK CONSTRAINT [FK_MonitoringChecklist_BranchId]
GO
ALTER TABLE [dbo].[MonitoringChecklistComments]  WITH NOCHECK ADD  CONSTRAINT [FK_MonitoringChecklistComments_CommentedBy] FOREIGN KEY([CommentedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[MonitoringChecklistComments] CHECK CONSTRAINT [FK_MonitoringChecklistComments_CommentedBy]
GO
ALTER TABLE [dbo].[MonitoringChecklistComments]  WITH NOCHECK ADD  CONSTRAINT [FK_MonitoringChecklistComments_CommentedByRole] FOREIGN KEY([CommentedByRole])
REFERENCES [dbo].[Role] ([Name])
GO
ALTER TABLE [dbo].[MonitoringChecklistComments] CHECK CONSTRAINT [FK_MonitoringChecklistComments_CommentedByRole]
GO
ALTER TABLE [dbo].[MonitoringChecklistComments]  WITH NOCHECK ADD  CONSTRAINT [FK_MonitoringChecklistComments_MonitoringChecklistId] FOREIGN KEY([MonitoringChecklistId])
REFERENCES [dbo].[MonitoringChecklist] ([Id])
GO
ALTER TABLE [dbo].[MonitoringChecklistComments] CHECK CONSTRAINT [FK_MonitoringChecklistComments_MonitoringChecklistId]
GO
ALTER TABLE [dbo].[MonitoringChecklistDetails]  WITH NOCHECK ADD  CONSTRAINT [FK_MonitoringChecklistDetails_MonitoringChecklistId] FOREIGN KEY([MonitoringChecklistId])
REFERENCES [dbo].[MonitoringChecklist] ([Id])
GO
ALTER TABLE [dbo].[MonitoringChecklistDetails] CHECK CONSTRAINT [FK_MonitoringChecklistDetails_MonitoringChecklistId]
GO
ALTER TABLE [dbo].[MonitoringChecklistDetails]  WITH NOCHECK ADD  CONSTRAINT [FK_MonitoringChecklistDetails_MonitoringSubItemId] FOREIGN KEY([MonitoringSubItemId])
REFERENCES [dbo].[MonitoringSubItem] ([Id])
GO
ALTER TABLE [dbo].[MonitoringChecklistDetails] CHECK CONSTRAINT [FK_MonitoringChecklistDetails_MonitoringSubItemId]
GO
ALTER TABLE [dbo].[MonitoringChecklistLoanSummary]  WITH NOCHECK ADD  CONSTRAINT [FK_MonitoringChecklistLoanSummary_MonitoringChecklistId] FOREIGN KEY([MonitoringChecklistId])
REFERENCES [dbo].[MonitoringChecklist] ([Id])
GO
ALTER TABLE [dbo].[MonitoringChecklistLoanSummary] CHECK CONSTRAINT [FK_MonitoringChecklistLoanSummary_MonitoringChecklistId]
GO
ALTER TABLE [dbo].[MonitoringChecklistSummary]  WITH NOCHECK ADD  CONSTRAINT [FK_MonitoringChecklistSummary_MonitoringChecklistId] FOREIGN KEY([MonitoringChecklistId])
REFERENCES [dbo].[MonitoringChecklist] ([Id])
GO
ALTER TABLE [dbo].[MonitoringChecklistSummary] CHECK CONSTRAINT [FK_MonitoringChecklistSummary_MonitoringChecklistId]
GO
ALTER TABLE [dbo].[MonitoringSubItem]  WITH NOCHECK ADD  CONSTRAINT [FK_MonitoringSubItem_MonitoringItemId] FOREIGN KEY([MonitoringItemId])
REFERENCES [dbo].[MonitoringItem] ([Id])
GO
ALTER TABLE [dbo].[MonitoringSubItem] CHECK CONSTRAINT [FK_MonitoringSubItem_MonitoringItemId]
GO
ALTER TABLE [dbo].[New_MonitoringChecklistSummary]  WITH CHECK ADD  CONSTRAINT [FK_New_MonitoringChecklistSummary_MonitoringChecklistId] FOREIGN KEY([MonitoringChecklistId])
REFERENCES [dbo].[MonitoringChecklist] ([Id])
GO
ALTER TABLE [dbo].[New_MonitoringChecklistSummary] CHECK CONSTRAINT [FK_New_MonitoringChecklistSummary_MonitoringChecklistId]
GO
ALTER TABLE [dbo].[OTPConfiguration]  WITH CHECK ADD  CONSTRAINT [FK_OTPConfiguration_AuthorizedBy] FOREIGN KEY([AuthorizedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[OTPConfiguration] CHECK CONSTRAINT [FK_OTPConfiguration_AuthorizedBy]
GO
ALTER TABLE [dbo].[OTPConfiguration]  WITH CHECK ADD  CONSTRAINT [FK_OTPConfiguration_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[OTPConfiguration] CHECK CONSTRAINT [FK_OTPConfiguration_BranchId]
GO
ALTER TABLE [dbo].[OTPConfiguration]  WITH CHECK ADD  CONSTRAINT [FK_OTPConfiguration_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[OTPConfiguration] CHECK CONSTRAINT [FK_OTPConfiguration_CreatedBy]
GO
ALTER TABLE [dbo].[P_AccruedInterestIncome]  WITH CHECK ADD  CONSTRAINT [FK_P_AccruedInterestIncome_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[P_AccruedInterestIncome] CHECK CONSTRAINT [FK_P_AccruedInterestIncome_BranchId]
GO
ALTER TABLE [dbo].[P_AccruedInterestIncome]  WITH CHECK ADD  CONSTRAINT [FK_P_AccruedInterestIncome_P_LoanAccountId] FOREIGN KEY([P_LoanAccountId])
REFERENCES [dbo].[P_LoanAccount] ([Id])
GO
ALTER TABLE [dbo].[P_AccruedInterestIncome] CHECK CONSTRAINT [FK_P_AccruedInterestIncome_P_LoanAccountId]
GO
ALTER TABLE [dbo].[P_AdditionalLoanConfig]  WITH CHECK ADD  CONSTRAINT [FK_P_AdditionalLoanConfig_P_DurationId] FOREIGN KEY([P_DurationId])
REFERENCES [dbo].[P_Duration] ([Duration])
GO
ALTER TABLE [dbo].[P_AdditionalLoanConfig] CHECK CONSTRAINT [FK_P_AdditionalLoanConfig_P_DurationId]
GO
ALTER TABLE [dbo].[P_AdditionalLoanConfig]  WITH CHECK ADD  CONSTRAINT [FK_P_AdditionalLoanConfig_P_InstallmentType] FOREIGN KEY([P_InstallmentType])
REFERENCES [dbo].[P_InstallmentType] ([InstallmentType])
GO
ALTER TABLE [dbo].[P_AdditionalLoanConfig] CHECK CONSTRAINT [FK_P_AdditionalLoanConfig_P_InstallmentType]
GO
ALTER TABLE [dbo].[P_AdditionalLoanConfig]  WITH CHECK ADD  CONSTRAINT [FK_P_AdditionalLoanConfig_P_ProgramId] FOREIGN KEY([P_ProgramId])
REFERENCES [dbo].[P_Program] ([Id])
GO
ALTER TABLE [dbo].[P_AdditionalLoanConfig] CHECK CONSTRAINT [FK_P_AdditionalLoanConfig_P_ProgramId]
GO
ALTER TABLE [dbo].[P_AdvanceCollectionConfig]  WITH CHECK ADD  CONSTRAINT [FK_P_AdvanceCollectionConfig_P_Duration] FOREIGN KEY([P_Duration])
REFERENCES [dbo].[P_Duration] ([Duration])
GO
ALTER TABLE [dbo].[P_AdvanceCollectionConfig] CHECK CONSTRAINT [FK_P_AdvanceCollectionConfig_P_Duration]
GO
ALTER TABLE [dbo].[P_AdvanceCollectionConfig]  WITH CHECK ADD  CONSTRAINT [FK_P_AdvanceCollectionConfig_P_InstallmentTypeId] FOREIGN KEY([P_InstallmentType])
REFERENCES [dbo].[P_InstallmentType] ([InstallmentType])
GO
ALTER TABLE [dbo].[P_AdvanceCollectionConfig] CHECK CONSTRAINT [FK_P_AdvanceCollectionConfig_P_InstallmentTypeId]
GO
ALTER TABLE [dbo].[P_BackdateHolidayConfig]  WITH CHECK ADD  CONSTRAINT [FK_P_BackdateHolidayConfig_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[P_BackdateHolidayConfig] CHECK CONSTRAINT [FK_P_BackdateHolidayConfig_BranchId]
GO
ALTER TABLE [dbo].[P_BackdateHolidayConfig]  WITH CHECK ADD  CONSTRAINT [FK_P_BackdateHolidayConfig_RoleName] FOREIGN KEY([RoleName])
REFERENCES [dbo].[Role] ([Name])
GO
ALTER TABLE [dbo].[P_BackdateHolidayConfig] CHECK CONSTRAINT [FK_P_BackdateHolidayConfig_RoleName]
GO
ALTER TABLE [dbo].[P_BackdateHolidayConfigBranch]  WITH CHECK ADD  CONSTRAINT [FK_P_BackdateHolidayConfig_Id] FOREIGN KEY([P_BackdateHolidayConfigId])
REFERENCES [dbo].[P_BackdateHolidayConfig] ([Id])
GO
ALTER TABLE [dbo].[P_BackdateHolidayConfigBranch] CHECK CONSTRAINT [FK_P_BackdateHolidayConfig_Id]
GO
ALTER TABLE [dbo].[P_BackdateHolidayConfigBranch]  WITH CHECK ADD  CONSTRAINT [FK_P_BackdateHolidayConfigBranch_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[P_BackdateHolidayConfigBranch] CHECK CONSTRAINT [FK_P_BackdateHolidayConfigBranch_BranchId]
GO
ALTER TABLE [dbo].[P_BadDebtAccount]  WITH NOCHECK ADD  CONSTRAINT [FK_P_BadDebtAccount_P_LoanAccountId] FOREIGN KEY([P_LoanAccountId])
REFERENCES [dbo].[P_LoanAccount] ([Id])
GO
ALTER TABLE [dbo].[P_BadDebtAccount] CHECK CONSTRAINT [FK_P_BadDebtAccount_P_LoanAccountId]
GO
ALTER TABLE [dbo].[P_BadDebtAccount]  WITH NOCHECK ADD  CONSTRAINT [FK_P_BadDebtAccount_P_MemberId] FOREIGN KEY([P_MemberId])
REFERENCES [dbo].[P_Member] ([Id])
GO
ALTER TABLE [dbo].[P_BadDebtAccount] CHECK CONSTRAINT [FK_P_BadDebtAccount_P_MemberId]
GO
ALTER TABLE [dbo].[P_BadDebtAccount]  WITH NOCHECK ADD  CONSTRAINT [FK_P_BadDebtAccount_P_ProgramId] FOREIGN KEY([P_ProgramId])
REFERENCES [dbo].[P_Program] ([Id])
GO
ALTER TABLE [dbo].[P_BadDebtAccount] CHECK CONSTRAINT [FK_P_BadDebtAccount_P_ProgramId]
GO
ALTER TABLE [dbo].[P_BadDebtTransaction]  WITH CHECK ADD  CONSTRAINT [FK_P_BadDebtTransaction_A_AccountId] FOREIGN KEY([A_AccountId])
REFERENCES [dbo].[A_Account] ([Id])
GO
ALTER TABLE [dbo].[P_BadDebtTransaction] CHECK CONSTRAINT [FK_P_BadDebtTransaction_A_AccountId]
GO
ALTER TABLE [dbo].[P_BadDebtTransaction]  WITH NOCHECK ADD  CONSTRAINT [FK_P_BadDebtTransaction_AuthorizedBy] FOREIGN KEY([AuthorizedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[P_BadDebtTransaction] CHECK CONSTRAINT [FK_P_BadDebtTransaction_AuthorizedBy]
GO
ALTER TABLE [dbo].[P_BadDebtTransaction]  WITH NOCHECK ADD  CONSTRAINT [FK_P_BadDebtTransaction_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[P_BadDebtTransaction] CHECK CONSTRAINT [FK_P_BadDebtTransaction_BranchId]
GO
ALTER TABLE [dbo].[P_BadDebtTransaction]  WITH NOCHECK ADD  CONSTRAINT [FK_P_BadDebtTransaction_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[P_BadDebtTransaction] CHECK CONSTRAINT [FK_P_BadDebtTransaction_CreatedBy]
GO
ALTER TABLE [dbo].[P_BadDebtTransaction]  WITH NOCHECK ADD  CONSTRAINT [FK_P_BadDebtTransaction_P_BadDebtAccountId] FOREIGN KEY([P_BadDebtAccountId])
REFERENCES [dbo].[P_BadDebtAccount] ([Id])
GO
ALTER TABLE [dbo].[P_BadDebtTransaction] CHECK CONSTRAINT [FK_P_BadDebtTransaction_P_BadDebtAccountId]
GO
ALTER TABLE [dbo].[P_BusinessAndHouseholdIncomeStatement]  WITH CHECK ADD  CONSTRAINT [FK_P_BusinessAndHouseholdIncomeStatement_P_BusinessAndHouseholdIncomeStatementConfigId] FOREIGN KEY([P_BusinessAndHouseholdIncomeStatementConfigId])
REFERENCES [dbo].[P_BusinessAndHouseholdIncomeStatementConfig] ([Id])
GO
ALTER TABLE [dbo].[P_BusinessAndHouseholdIncomeStatement] CHECK CONSTRAINT [FK_P_BusinessAndHouseholdIncomeStatement_P_BusinessAndHouseholdIncomeStatementConfigId]
GO
ALTER TABLE [dbo].[P_CheckPassbookReport]  WITH CHECK ADD  CONSTRAINT [FK_P_CheckPassbookReport_P_MemberId] FOREIGN KEY([P_MemberId])
REFERENCES [dbo].[P_Member] ([Id])
GO
ALTER TABLE [dbo].[P_CheckPassbookReport] CHECK CONSTRAINT [FK_P_CheckPassbookReport_P_MemberId]
GO
ALTER TABLE [dbo].[P_DeathCase]  WITH CHECK ADD  CONSTRAINT [FK_P_DeathCase_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[P_DeathCase] CHECK CONSTRAINT [FK_P_DeathCase_BranchId]
GO
ALTER TABLE [dbo].[P_DeathCase]  WITH CHECK ADD  CONSTRAINT [FK_P_DeathCase_GroupId] FOREIGN KEY([P_GroupId])
REFERENCES [dbo].[P_Group] ([Id])
GO
ALTER TABLE [dbo].[P_DeathCase] CHECK CONSTRAINT [FK_P_DeathCase_GroupId]
GO
ALTER TABLE [dbo].[P_DeathCase]  WITH CHECK ADD  CONSTRAINT [FK_P_DeathCase_InsuranceClaimCategoryId] FOREIGN KEY([P_InsuranceClaimCategoryId])
REFERENCES [dbo].[P_InsuranceClaimCategory] ([Id])
GO
ALTER TABLE [dbo].[P_DeathCase] CHECK CONSTRAINT [FK_P_DeathCase_InsuranceClaimCategoryId]
GO
ALTER TABLE [dbo].[P_DeathCase]  WITH CHECK ADD  CONSTRAINT [FK_P_DeathCase_LoanAccountId] FOREIGN KEY([P_LoanAccountId])
REFERENCES [dbo].[P_LoanAccount] ([Id])
GO
ALTER TABLE [dbo].[P_DeathCase] CHECK CONSTRAINT [FK_P_DeathCase_LoanAccountId]
GO
ALTER TABLE [dbo].[P_DeathCase]  WITH CHECK ADD  CONSTRAINT [FK_P_DeathCase_LoanOfficerId] FOREIGN KEY([P_LoanOfficerId])
REFERENCES [dbo].[P_LoanOfficer] ([Id])
GO
ALTER TABLE [dbo].[P_DeathCase] CHECK CONSTRAINT [FK_P_DeathCase_LoanOfficerId]
GO
ALTER TABLE [dbo].[P_DeathCase]  WITH CHECK ADD  CONSTRAINT [FK_P_DeathCase_MemberId] FOREIGN KEY([P_MemberId])
REFERENCES [dbo].[P_Member] ([Id])
GO
ALTER TABLE [dbo].[P_DeathCase] CHECK CONSTRAINT [FK_P_DeathCase_MemberId]
GO
ALTER TABLE [dbo].[P_DeathsCaseDetails]  WITH NOCHECK ADD  CONSTRAINT [P_DeathsCaseDetails_P_LoanAccountId] FOREIGN KEY([P_LoanAccountId])
REFERENCES [dbo].[P_LoanAccount] ([Id])
GO
ALTER TABLE [dbo].[P_DeathsCaseDetails] CHECK CONSTRAINT [P_DeathsCaseDetails_P_LoanAccountId]
GO
ALTER TABLE [dbo].[P_ErrorMessage]  WITH CHECK ADD  CONSTRAINT [FK_P_ErrorMessage_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[P_ErrorMessage] CHECK CONSTRAINT [FK_P_ErrorMessage_BranchId]
GO
ALTER TABLE [dbo].[P_FamilyMember]  WITH CHECK ADD  CONSTRAINT [FK_P_FamilyMember_P_MemberId] FOREIGN KEY([P_MemberId])
REFERENCES [dbo].[P_Member] ([Id])
GO
ALTER TABLE [dbo].[P_FamilyMember] CHECK CONSTRAINT [FK_P_FamilyMember_P_MemberId]
GO
ALTER TABLE [dbo].[P_Fund]  WITH NOCHECK ADD  CONSTRAINT [FK_P_Fund_Duration] FOREIGN KEY([P_Duration])
REFERENCES [dbo].[P_Duration] ([Duration])
GO
ALTER TABLE [dbo].[P_Fund] CHECK CONSTRAINT [FK_P_Fund_Duration]
GO
ALTER TABLE [dbo].[P_Fund]  WITH NOCHECK ADD  CONSTRAINT [FK_P_Fund_InstallmentType] FOREIGN KEY([P_InstallmentType])
REFERENCES [dbo].[P_InstallmentType] ([InstallmentType])
GO
ALTER TABLE [dbo].[P_Fund] CHECK CONSTRAINT [FK_P_Fund_InstallmentType]
GO
ALTER TABLE [dbo].[P_Fund]  WITH NOCHECK ADD  CONSTRAINT [FK_P_Fund_ProgramId] FOREIGN KEY([P_ProgramId])
REFERENCES [dbo].[P_Program] ([Id])
GO
ALTER TABLE [dbo].[P_Fund] CHECK CONSTRAINT [FK_P_Fund_ProgramId]
GO
ALTER TABLE [dbo].[P_GracePeriod]  WITH NOCHECK ADD  CONSTRAINT [FK_P_GracePeriod_DurationId] FOREIGN KEY([P_Duration])
REFERENCES [dbo].[P_Duration] ([Duration])
GO
ALTER TABLE [dbo].[P_GracePeriod] CHECK CONSTRAINT [FK_P_GracePeriod_DurationId]
GO
ALTER TABLE [dbo].[P_GracePeriod]  WITH NOCHECK ADD  CONSTRAINT [FK_P_GracePeriod_InstallmentType] FOREIGN KEY([P_InstallmentType])
REFERENCES [dbo].[P_InstallmentType] ([InstallmentType])
GO
ALTER TABLE [dbo].[P_GracePeriod] CHECK CONSTRAINT [FK_P_GracePeriod_InstallmentType]
GO
ALTER TABLE [dbo].[P_GracePeriod]  WITH NOCHECK ADD  CONSTRAINT [FK_P_GracePeriod_ProgramId] FOREIGN KEY([P_ProgramId])
REFERENCES [dbo].[P_Program] ([Id])
GO
ALTER TABLE [dbo].[P_GracePeriod] CHECK CONSTRAINT [FK_P_GracePeriod_ProgramId]
GO
ALTER TABLE [dbo].[P_Group]  WITH NOCHECK ADD  CONSTRAINT [FK_P_Group_DefaultP_ProgramId] FOREIGN KEY([DefaultP_ProgramId])
REFERENCES [dbo].[P_Program] ([Id])
GO
ALTER TABLE [dbo].[P_Group] CHECK CONSTRAINT [FK_P_Group_DefaultP_ProgramId]
GO
ALTER TABLE [dbo].[P_Group]  WITH NOCHECK ADD  CONSTRAINT [FK_P_Group_DefaultProgramTypeId] FOREIGN KEY([DefaultProgramTypeId])
REFERENCES [dbo].[P_ProgramType] ([Id])
GO
ALTER TABLE [dbo].[P_Group] CHECK CONSTRAINT [FK_P_Group_DefaultProgramTypeId]
GO
ALTER TABLE [dbo].[P_Group]  WITH NOCHECK ADD  CONSTRAINT [FK_P_Group_P_GroupTypeId] FOREIGN KEY([P_GroupTypeId])
REFERENCES [dbo].[P_GroupType] ([Id])
GO
ALTER TABLE [dbo].[P_Group] CHECK CONSTRAINT [FK_P_Group_P_GroupTypeId]
GO
ALTER TABLE [dbo].[P_Group]  WITH NOCHECK ADD  CONSTRAINT [FK_P_Group_P_LoanOfficerId] FOREIGN KEY([P_LoanOfficerId])
REFERENCES [dbo].[P_LoanOfficer] ([Id])
GO
ALTER TABLE [dbo].[P_Group] CHECK CONSTRAINT [FK_P_Group_P_LoanOfficerId]
GO
ALTER TABLE [dbo].[P_GroupCollection]  WITH CHECK ADD  CONSTRAINT [FK_P_GroupCollection_P_GroupId] FOREIGN KEY([P_GroupId])
REFERENCES [dbo].[P_Group] ([Id])
GO
ALTER TABLE [dbo].[P_GroupCollection] CHECK CONSTRAINT [FK_P_GroupCollection_P_GroupId]
GO
ALTER TABLE [dbo].[P_GroupMovement]  WITH NOCHECK ADD  CONSTRAINT [FK_P_GroupMovement_P_GroupId] FOREIGN KEY([P_GroupId])
REFERENCES [dbo].[P_Group] ([Id])
GO
ALTER TABLE [dbo].[P_GroupMovement] CHECK CONSTRAINT [FK_P_GroupMovement_P_GroupId]
GO
ALTER TABLE [dbo].[P_GroupMovement]  WITH NOCHECK ADD  CONSTRAINT [FK_P_GroupMovement_P_LoanOfficerId] FOREIGN KEY([P_LoanOfficerId])
REFERENCES [dbo].[P_LoanOfficer] ([Id])
GO
ALTER TABLE [dbo].[P_GroupMovement] CHECK CONSTRAINT [FK_P_GroupMovement_P_LoanOfficerId]
GO
ALTER TABLE [dbo].[P_HouseHoldSurplusConfiguration]  WITH CHECK ADD  CONSTRAINT [FK_P_HouseHoldSurplusConfiguration_P_DurationId] FOREIGN KEY([P_DurationId])
REFERENCES [dbo].[P_Duration] ([Id])
GO
ALTER TABLE [dbo].[P_HouseHoldSurplusConfiguration] CHECK CONSTRAINT [FK_P_HouseHoldSurplusConfiguration_P_DurationId]
GO
ALTER TABLE [dbo].[P_HouseHoldSurplusConfiguration]  WITH CHECK ADD  CONSTRAINT [FK_P_HouseHoldSurplusConfiguration_P_ProgramId] FOREIGN KEY([P_ProgramId])
REFERENCES [dbo].[P_Program] ([Id])
GO
ALTER TABLE [dbo].[P_HouseHoldSurplusConfiguration] CHECK CONSTRAINT [FK_P_HouseHoldSurplusConfiguration_P_ProgramId]
GO
ALTER TABLE [dbo].[P_InerestForHoliday]  WITH CHECK ADD  CONSTRAINT [FK_P_InerestForHoliday_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[P_InerestForHoliday] CHECK CONSTRAINT [FK_P_InerestForHoliday_BranchId]
GO
ALTER TABLE [dbo].[P_InerestForHoliday]  WITH CHECK ADD  CONSTRAINT [FK_P_InerestForHoliday_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[P_InerestForHoliday] CHECK CONSTRAINT [FK_P_InerestForHoliday_CreatedBy]
GO
ALTER TABLE [dbo].[P_InerestForHoliday]  WITH CHECK ADD  CONSTRAINT [FK_P_InerestForHoliday_P_LoanAccountId] FOREIGN KEY([P_LoanAccountId])
REFERENCES [dbo].[P_LoanAccount] ([Id])
GO
ALTER TABLE [dbo].[P_InerestForHoliday] CHECK CONSTRAINT [FK_P_InerestForHoliday_P_LoanAccountId]
GO
ALTER TABLE [dbo].[P_InerestForHolidayDetails]  WITH CHECK ADD  CONSTRAINT [FK_P_InerestForHolidayDetails_P_LoanAccountId] FOREIGN KEY([P_LoanAccountId])
REFERENCES [dbo].[P_LoanAccount] ([Id])
GO
ALTER TABLE [dbo].[P_InerestForHolidayDetails] CHECK CONSTRAINT [FK_P_InerestForHolidayDetails_P_LoanAccountId]
GO
ALTER TABLE [dbo].[P_InstallmentAmount]  WITH NOCHECK ADD  CONSTRAINT [FK_P_InstallmentAmount_Duration] FOREIGN KEY([P_Duration])
REFERENCES [dbo].[P_Duration] ([Duration])
GO
ALTER TABLE [dbo].[P_InstallmentAmount] CHECK CONSTRAINT [FK_P_InstallmentAmount_Duration]
GO
ALTER TABLE [dbo].[P_InstallmentAmount]  WITH NOCHECK ADD  CONSTRAINT [FK_P_InstallmentAmount_InstallmentType] FOREIGN KEY([P_InstallmentType])
REFERENCES [dbo].[P_InstallmentType] ([InstallmentType])
GO
ALTER TABLE [dbo].[P_InstallmentAmount] CHECK CONSTRAINT [FK_P_InstallmentAmount_InstallmentType]
GO
ALTER TABLE [dbo].[P_InstallmentAmount]  WITH NOCHECK ADD  CONSTRAINT [FK_P_InstallmentAmount_ProgramId] FOREIGN KEY([P_ProgramId])
REFERENCES [dbo].[P_Program] ([Id])
GO
ALTER TABLE [dbo].[P_InstallmentAmount] CHECK CONSTRAINT [FK_P_InstallmentAmount_ProgramId]
GO
ALTER TABLE [dbo].[P_InstallmentCount]  WITH NOCHECK ADD  CONSTRAINT [FK_P_InstallmentCount_Duration] FOREIGN KEY([P_Duration])
REFERENCES [dbo].[P_Duration] ([Duration])
GO
ALTER TABLE [dbo].[P_InstallmentCount] CHECK CONSTRAINT [FK_P_InstallmentCount_Duration]
GO
ALTER TABLE [dbo].[P_InstallmentCount]  WITH NOCHECK ADD  CONSTRAINT [FK_P_InstallmentCount_InstallmentType] FOREIGN KEY([P_InstallmentType])
REFERENCES [dbo].[P_InstallmentType] ([InstallmentType])
GO
ALTER TABLE [dbo].[P_InstallmentCount] CHECK CONSTRAINT [FK_P_InstallmentCount_InstallmentType]
GO
ALTER TABLE [dbo].[P_InstallmentCount]  WITH NOCHECK ADD  CONSTRAINT [FK_P_InstallmentCount_ProgramId] FOREIGN KEY([P_ProgramId])
REFERENCES [dbo].[P_Program] ([Id])
GO
ALTER TABLE [dbo].[P_InstallmentCount] CHECK CONSTRAINT [FK_P_InstallmentCount_ProgramId]
GO
ALTER TABLE [dbo].[P_InterestRate]  WITH NOCHECK ADD  CONSTRAINT [FK_P_InterestRate_Duration] FOREIGN KEY([P_Duration])
REFERENCES [dbo].[P_Duration] ([Duration])
GO
ALTER TABLE [dbo].[P_InterestRate] CHECK CONSTRAINT [FK_P_InterestRate_Duration]
GO
ALTER TABLE [dbo].[P_InterestRate]  WITH NOCHECK ADD  CONSTRAINT [FK_P_InterestRate_InstallmentType] FOREIGN KEY([P_InstallmentType])
REFERENCES [dbo].[P_InstallmentType] ([InstallmentType])
GO
ALTER TABLE [dbo].[P_InterestRate] CHECK CONSTRAINT [FK_P_InterestRate_InstallmentType]
GO
ALTER TABLE [dbo].[P_InterestRate]  WITH NOCHECK ADD  CONSTRAINT [FK_P_InterestRate_ProgramId] FOREIGN KEY([P_ProgramId])
REFERENCES [dbo].[P_Program] ([Id])
GO
ALTER TABLE [dbo].[P_InterestRate] CHECK CONSTRAINT [FK_P_InterestRate_ProgramId]
GO
ALTER TABLE [dbo].[P_JournalStatus]  WITH NOCHECK ADD  CONSTRAINT [FK_P_JournalStatus_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[P_JournalStatus] CHECK CONSTRAINT [FK_P_JournalStatus_BranchId]
GO
ALTER TABLE [dbo].[P_LoanAccount]  WITH NOCHECK ADD  CONSTRAINT [FK_P_LoanAccount_P_Duration] FOREIGN KEY([P_Duration])
REFERENCES [dbo].[P_Duration] ([Duration])
GO
ALTER TABLE [dbo].[P_LoanAccount] CHECK CONSTRAINT [FK_P_LoanAccount_P_Duration]
GO
ALTER TABLE [dbo].[P_LoanAccount]  WITH NOCHECK ADD  CONSTRAINT [FK_P_LoanAccount_P_FundId] FOREIGN KEY([P_FundId])
REFERENCES [dbo].[P_Fund] ([Id])
GO
ALTER TABLE [dbo].[P_LoanAccount] CHECK CONSTRAINT [FK_P_LoanAccount_P_FundId]
GO
ALTER TABLE [dbo].[P_LoanAccount]  WITH NOCHECK ADD  CONSTRAINT [FK_P_LoanAccount_P_InstallmentType] FOREIGN KEY([P_InstallmentType])
REFERENCES [dbo].[P_InstallmentType] ([InstallmentType])
GO
ALTER TABLE [dbo].[P_LoanAccount] CHECK CONSTRAINT [FK_P_LoanAccount_P_InstallmentType]
GO
ALTER TABLE [dbo].[P_LoanAccount]  WITH NOCHECK ADD  CONSTRAINT [FK_P_LoanAccount_P_MemberFingerTemplateId] FOREIGN KEY([P_MemberFingerTemplateId])
REFERENCES [dbo].[P_MemberFingerTemplate] ([Id])
GO
ALTER TABLE [dbo].[P_LoanAccount] CHECK CONSTRAINT [FK_P_LoanAccount_P_MemberFingerTemplateId]
GO
ALTER TABLE [dbo].[P_LoanAccount]  WITH NOCHECK ADD  CONSTRAINT [FK_P_LoanAccount_P_MemberId] FOREIGN KEY([P_MemberId])
REFERENCES [dbo].[P_Member] ([Id])
GO
ALTER TABLE [dbo].[P_LoanAccount] CHECK CONSTRAINT [FK_P_LoanAccount_P_MemberId]
GO
ALTER TABLE [dbo].[P_LoanAccount]  WITH NOCHECK ADD  CONSTRAINT [FK_P_LoanAccount_P_ProgramId] FOREIGN KEY([P_ProgramId])
REFERENCES [dbo].[P_Program] ([Id])
GO
ALTER TABLE [dbo].[P_LoanAccount] CHECK CONSTRAINT [FK_P_LoanAccount_P_ProgramId]
GO
ALTER TABLE [dbo].[P_LoanAccount]  WITH NOCHECK ADD  CONSTRAINT [FK_P_LoanAccount_P_SchemeId] FOREIGN KEY([P_SchemeId])
REFERENCES [dbo].[P_Scheme] ([Id])
GO
ALTER TABLE [dbo].[P_LoanAccount] CHECK CONSTRAINT [FK_P_LoanAccount_P_SchemeId]
GO
ALTER TABLE [dbo].[P_LoanApplication]  WITH CHECK ADD  CONSTRAINT [FK_P_LoanApplication_ApprovedBy] FOREIGN KEY([ApprovedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[P_LoanApplication] CHECK CONSTRAINT [FK_P_LoanApplication_ApprovedBy]
GO
ALTER TABLE [dbo].[P_LoanApplication]  WITH CHECK ADD  CONSTRAINT [FK_P_LoanApplication_AssessedBy] FOREIGN KEY([AssessedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[P_LoanApplication] CHECK CONSTRAINT [FK_P_LoanApplication_AssessedBy]
GO
ALTER TABLE [dbo].[P_LoanApplication]  WITH CHECK ADD  CONSTRAINT [FK_P_LoanApplication_BankRejectedBy] FOREIGN KEY([BankRejectedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[P_LoanApplication] CHECK CONSTRAINT [FK_P_LoanApplication_BankRejectedBy]
GO
ALTER TABLE [dbo].[P_LoanApplication]  WITH CHECK ADD  CONSTRAINT [FK_P_LoanApplication_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[P_LoanApplication] CHECK CONSTRAINT [FK_P_LoanApplication_CreatedBy]
GO
ALTER TABLE [dbo].[P_LoanApplication]  WITH CHECK ADD  CONSTRAINT [FK_P_LoanApplication_P_FundId] FOREIGN KEY([P_FundId])
REFERENCES [dbo].[P_Fund] ([Id])
GO
ALTER TABLE [dbo].[P_LoanApplication] CHECK CONSTRAINT [FK_P_LoanApplication_P_FundId]
GO
ALTER TABLE [dbo].[P_LoanApplication]  WITH CHECK ADD  CONSTRAINT [FK_P_LoanApplication_P_LoanAccountId] FOREIGN KEY([P_LoanAccountId])
REFERENCES [dbo].[P_LoanAccount] ([Id])
GO
ALTER TABLE [dbo].[P_LoanApplication] CHECK CONSTRAINT [FK_P_LoanApplication_P_LoanAccountId]
GO
ALTER TABLE [dbo].[P_LoanApplication]  WITH CHECK ADD  CONSTRAINT [FK_P_LoanApplication_P_MemberId] FOREIGN KEY([P_MemberId])
REFERENCES [dbo].[P_Member] ([Id])
GO
ALTER TABLE [dbo].[P_LoanApplication] CHECK CONSTRAINT [FK_P_LoanApplication_P_MemberId]
GO
ALTER TABLE [dbo].[P_LoanApplication]  WITH CHECK ADD  CONSTRAINT [FK_P_LoanApplication_P_ProgramId] FOREIGN KEY([P_ProgramId])
REFERENCES [dbo].[P_Program] ([Id])
GO
ALTER TABLE [dbo].[P_LoanApplication] CHECK CONSTRAINT [FK_P_LoanApplication_P_ProgramId]
GO
ALTER TABLE [dbo].[P_LoanApplication]  WITH CHECK ADD  CONSTRAINT [FK_P_LoanApplication_P_SchemeId] FOREIGN KEY([P_SchemeId])
REFERENCES [dbo].[P_Scheme] ([Id])
GO
ALTER TABLE [dbo].[P_LoanApplication] CHECK CONSTRAINT [FK_P_LoanApplication_P_SchemeId]
GO
ALTER TABLE [dbo].[P_LoanApplication]  WITH CHECK ADD  CONSTRAINT [FK_P_LoanApplication_RejectedBy] FOREIGN KEY([RejectedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[P_LoanApplication] CHECK CONSTRAINT [FK_P_LoanApplication_RejectedBy]
GO
ALTER TABLE [dbo].[P_LoanApplication]  WITH CHECK ADD  CONSTRAINT [FK_P_LoanApplication_VerifiedBy] FOREIGN KEY([VerifiedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[P_LoanApplication] CHECK CONSTRAINT [FK_P_LoanApplication_VerifiedBy]
GO
ALTER TABLE [dbo].[P_LoanApprovalLimitConfig]  WITH CHECK ADD  CONSTRAINT [FK_P_LoanApprovalLimitConfig_Duration] FOREIGN KEY([P_Duration])
REFERENCES [dbo].[P_Duration] ([Duration])
GO
ALTER TABLE [dbo].[P_LoanApprovalLimitConfig] CHECK CONSTRAINT [FK_P_LoanApprovalLimitConfig_Duration]
GO
ALTER TABLE [dbo].[P_LoanApprovalLimitConfig]  WITH CHECK ADD  CONSTRAINT [FK_P_LoanApprovalLimitConfig_InstallmentType] FOREIGN KEY([P_InstallmentType])
REFERENCES [dbo].[P_InstallmentType] ([InstallmentType])
GO
ALTER TABLE [dbo].[P_LoanApprovalLimitConfig] CHECK CONSTRAINT [FK_P_LoanApprovalLimitConfig_InstallmentType]
GO
ALTER TABLE [dbo].[P_LoanApprovalLimitConfig]  WITH CHECK ADD  CONSTRAINT [FK_P_LoanApprovalLimitConfig_ProgramId] FOREIGN KEY([P_ProgramId])
REFERENCES [dbo].[P_Program] ([Id])
GO
ALTER TABLE [dbo].[P_LoanApprovalLimitConfig] CHECK CONSTRAINT [FK_P_LoanApprovalLimitConfig_ProgramId]
GO
ALTER TABLE [dbo].[P_LoanConfig]  WITH CHECK ADD  CONSTRAINT [FK_P_LoanConfig_P_DurationId] FOREIGN KEY([P_DurationId])
REFERENCES [dbo].[P_Duration] ([Duration])
GO
ALTER TABLE [dbo].[P_LoanConfig] CHECK CONSTRAINT [FK_P_LoanConfig_P_DurationId]
GO
ALTER TABLE [dbo].[P_LoanConfig]  WITH CHECK ADD  CONSTRAINT [FK_P_LoanConfig_P_InstallmentType] FOREIGN KEY([P_InstallmentType])
REFERENCES [dbo].[P_InstallmentType] ([InstallmentType])
GO
ALTER TABLE [dbo].[P_LoanConfig] CHECK CONSTRAINT [FK_P_LoanConfig_P_InstallmentType]
GO
ALTER TABLE [dbo].[P_LoanConfig]  WITH CHECK ADD  CONSTRAINT [FK_P_LoanConfig_P_ProgramId] FOREIGN KEY([P_ProgramId])
REFERENCES [dbo].[P_Program] ([Id])
GO
ALTER TABLE [dbo].[P_LoanConfig] CHECK CONSTRAINT [FK_P_LoanConfig_P_ProgramId]
GO
ALTER TABLE [dbo].[P_LoanConfigLK]  WITH CHECK ADD  CONSTRAINT [FK_P_LoanConfigLK_P_Program] FOREIGN KEY([P_ProgramId])
REFERENCES [dbo].[P_Program] ([Id])
GO
ALTER TABLE [dbo].[P_LoanConfigLK] CHECK CONSTRAINT [FK_P_LoanConfigLK_P_Program]
GO
ALTER TABLE [dbo].[P_LoanDisbursementConfig]  WITH CHECK ADD  CONSTRAINT [FK_P_LoanDisbursementConfig_P_InstallmentType] FOREIGN KEY([P_InstallmentType])
REFERENCES [dbo].[P_InstallmentType] ([InstallmentType])
GO
ALTER TABLE [dbo].[P_LoanDisbursementConfig] CHECK CONSTRAINT [FK_P_LoanDisbursementConfig_P_InstallmentType]
GO
ALTER TABLE [dbo].[P_LoanDisbursementConfig]  WITH CHECK ADD  CONSTRAINT [FK_P_LoanDisbursementConfig_P_LoanDisbursementConfig] FOREIGN KEY([Id])
REFERENCES [dbo].[P_LoanDisbursementConfig] ([Id])
GO
ALTER TABLE [dbo].[P_LoanDisbursementConfig] CHECK CONSTRAINT [FK_P_LoanDisbursementConfig_P_LoanDisbursementConfig]
GO
ALTER TABLE [dbo].[P_LoanDisbursementConfig]  WITH CHECK ADD  CONSTRAINT [FK_P_LoanDisbursementConfig_P_ProgramId] FOREIGN KEY([P_ProgramId])
REFERENCES [dbo].[P_Program] ([Id])
GO
ALTER TABLE [dbo].[P_LoanDisbursementConfig] CHECK CONSTRAINT [FK_P_LoanDisbursementConfig_P_ProgramId]
GO
ALTER TABLE [dbo].[P_LoanInterestReceivable]  WITH CHECK ADD  CONSTRAINT [FK_P_LoanInterestReceivable_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[P_LoanInterestReceivable] CHECK CONSTRAINT [FK_P_LoanInterestReceivable_BranchId]
GO
ALTER TABLE [dbo].[P_LoanInterestReceivable]  WITH CHECK ADD  CONSTRAINT [FK_P_LoanInterestReceivable_P_LoanAccountId] FOREIGN KEY([P_LoanAccountId])
REFERENCES [dbo].[P_LoanAccount] ([Id])
GO
ALTER TABLE [dbo].[P_LoanInterestReceivable] CHECK CONSTRAINT [FK_P_LoanInterestReceivable_P_LoanAccountId]
GO
ALTER TABLE [dbo].[P_LoanLimitConfiguration]  WITH CHECK ADD  CONSTRAINT [FK_P_LoanLimitConfiguration_P_DurationId] FOREIGN KEY([P_DurationId])
REFERENCES [dbo].[P_Duration] ([Duration])
GO
ALTER TABLE [dbo].[P_LoanLimitConfiguration] CHECK CONSTRAINT [FK_P_LoanLimitConfiguration_P_DurationId]
GO
ALTER TABLE [dbo].[P_LoanLimitConfiguration]  WITH CHECK ADD  CONSTRAINT [FK_P_LoanLimitConfiguration_P_InstallmentType] FOREIGN KEY([P_InstallmentType])
REFERENCES [dbo].[P_InstallmentType] ([InstallmentType])
GO
ALTER TABLE [dbo].[P_LoanLimitConfiguration] CHECK CONSTRAINT [FK_P_LoanLimitConfiguration_P_InstallmentType]
GO
ALTER TABLE [dbo].[P_LoanLimitConfiguration]  WITH CHECK ADD  CONSTRAINT [FK_P_LoanLimitConfiguration_P_ProgramId] FOREIGN KEY([P_ProgramId])
REFERENCES [dbo].[P_Program] ([Id])
GO
ALTER TABLE [dbo].[P_LoanLimitConfiguration] CHECK CONSTRAINT [FK_P_LoanLimitConfiguration_P_ProgramId]
GO
ALTER TABLE [dbo].[P_LoanOfficer]  WITH NOCHECK ADD  CONSTRAINT [FK_P_LoanOfficer_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[P_LoanOfficer] CHECK CONSTRAINT [FK_P_LoanOfficer_BranchId]
GO
ALTER TABLE [dbo].[P_LoanOfficer]  WITH NOCHECK ADD  CONSTRAINT [FK_P_LoanOfficer_LinkedUserLogin] FOREIGN KEY([LinkedUserLogin])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[P_LoanOfficer] CHECK CONSTRAINT [FK_P_LoanOfficer_LinkedUserLogin]
GO
ALTER TABLE [dbo].[P_LoanOfficerMovement]  WITH NOCHECK ADD  CONSTRAINT [FK_P_LoanOfficerMovement_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[P_LoanOfficerMovement] CHECK CONSTRAINT [FK_P_LoanOfficerMovement_BranchId]
GO
ALTER TABLE [dbo].[P_LoanOfficerMovement]  WITH NOCHECK ADD  CONSTRAINT [FK_P_LoanOfficerMovement_P_LoanOfficerId] FOREIGN KEY([P_LoanOfficerId])
REFERENCES [dbo].[P_LoanOfficer] ([Id])
GO
ALTER TABLE [dbo].[P_LoanOfficerMovement] CHECK CONSTRAINT [FK_P_LoanOfficerMovement_P_LoanOfficerId]
GO
ALTER TABLE [dbo].[P_LoanTransaction]  WITH CHECK ADD  CONSTRAINT [FK_P_LoanTransaction_A_AccountId] FOREIGN KEY([A_AccountId])
REFERENCES [dbo].[A_Account] ([Id])
GO
ALTER TABLE [dbo].[P_LoanTransaction] CHECK CONSTRAINT [FK_P_LoanTransaction_A_AccountId]
GO
ALTER TABLE [dbo].[P_LoanTransaction]  WITH NOCHECK ADD  CONSTRAINT [FK_P_LoanTransaction_AuthorizedBy] FOREIGN KEY([AuthorizedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[P_LoanTransaction] CHECK CONSTRAINT [FK_P_LoanTransaction_AuthorizedBy]
GO
ALTER TABLE [dbo].[P_LoanTransaction]  WITH CHECK ADD  CONSTRAINT [FK_P_LoanTransaction_B_TransactionId] FOREIGN KEY([B_TransactionId])
REFERENCES [dbo].[B_Transaction] ([Id])
GO
ALTER TABLE [dbo].[P_LoanTransaction] CHECK CONSTRAINT [FK_P_LoanTransaction_B_TransactionId]
GO
ALTER TABLE [dbo].[P_LoanTransaction]  WITH NOCHECK ADD  CONSTRAINT [FK_P_LoanTransaction_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[P_LoanTransaction] CHECK CONSTRAINT [FK_P_LoanTransaction_BranchId]
GO
ALTER TABLE [dbo].[P_LoanTransaction]  WITH NOCHECK ADD  CONSTRAINT [FK_P_LoanTransaction_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[P_LoanTransaction] CHECK CONSTRAINT [FK_P_LoanTransaction_CreatedBy]
GO
ALTER TABLE [dbo].[P_LoanTransaction]  WITH NOCHECK ADD  CONSTRAINT [FK_P_LoanTransaction_P_LoanAccountId] FOREIGN KEY([P_LoanAccountId])
REFERENCES [dbo].[P_LoanAccount] ([Id])
GO
ALTER TABLE [dbo].[P_LoanTransaction] CHECK CONSTRAINT [FK_P_LoanTransaction_P_LoanAccountId]
GO
ALTER TABLE [dbo].[P_LoanTransfer]  WITH NOCHECK ADD  CONSTRAINT [FK_P_LoanTransfer_DestinationBranchId] FOREIGN KEY([DestinationBranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[P_LoanTransfer] CHECK CONSTRAINT [FK_P_LoanTransfer_DestinationBranchId]
GO
ALTER TABLE [dbo].[P_LoanTransfer]  WITH NOCHECK ADD  CONSTRAINT [FK_P_LoanTransfer_P_LoanAccountId] FOREIGN KEY([P_LoanAccountId])
REFERENCES [dbo].[P_LoanAccount] ([Id])
GO
ALTER TABLE [dbo].[P_LoanTransfer] CHECK CONSTRAINT [FK_P_LoanTransfer_P_LoanAccountId]
GO
ALTER TABLE [dbo].[P_LoanTransfer]  WITH NOCHECK ADD  CONSTRAINT [FK_P_LoanTransfer_SourceBranchId] FOREIGN KEY([SourceBranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[P_LoanTransfer] CHECK CONSTRAINT [FK_P_LoanTransfer_SourceBranchId]
GO
ALTER TABLE [dbo].[P_LockdownSchedule]  WITH CHECK ADD  CONSTRAINT [FK_P_LockdownSchedule_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[P_LockdownSchedule] CHECK CONSTRAINT [FK_P_LockdownSchedule_BranchId]
GO
ALTER TABLE [dbo].[P_LockdownSchedule]  WITH CHECK ADD  CONSTRAINT [FK_P_LockdownSchedule_P_LoanAccountId] FOREIGN KEY([P_LoanAccountId])
REFERENCES [dbo].[P_LoanAccount] ([Id])
GO
ALTER TABLE [dbo].[P_LockdownSchedule] CHECK CONSTRAINT [FK_P_LockdownSchedule_P_LoanAccountId]
GO
ALTER TABLE [dbo].[P_LockdownScheduleFixAC]  WITH CHECK ADD  CONSTRAINT [FK_P_LockdownScheduleFixAC_P_LoanAccountId] FOREIGN KEY([P_LoanAccountId])
REFERENCES [dbo].[P_LoanAccount] ([Id])
GO
ALTER TABLE [dbo].[P_LockdownScheduleFixAC] CHECK CONSTRAINT [FK_P_LockdownScheduleFixAC_P_LoanAccountId]
GO
ALTER TABLE [dbo].[P_MeetingMovement]  WITH NOCHECK ADD  CONSTRAINT [FK_P_MeetingMovement_P_GroupId] FOREIGN KEY([P_GroupId])
REFERENCES [dbo].[P_Group] ([Id])
GO
ALTER TABLE [dbo].[P_MeetingMovement] CHECK CONSTRAINT [FK_P_MeetingMovement_P_GroupId]
GO
ALTER TABLE [dbo].[P_Member]  WITH NOCHECK ADD  CONSTRAINT [FK_P_Member_DefaultP_ProgramId] FOREIGN KEY([DefaultP_ProgramId])
REFERENCES [dbo].[P_Program] ([Id])
GO
ALTER TABLE [dbo].[P_Member] CHECK CONSTRAINT [FK_P_Member_DefaultP_ProgramId]
GO
ALTER TABLE [dbo].[P_Member]  WITH NOCHECK ADD  CONSTRAINT [FK_P_Member_P_GroupId] FOREIGN KEY([P_GroupId])
REFERENCES [dbo].[P_Group] ([Id])
GO
ALTER TABLE [dbo].[P_Member] CHECK CONSTRAINT [FK_P_Member_P_GroupId]
GO
ALTER TABLE [dbo].[P_MemberAttendance]  WITH NOCHECK ADD  CONSTRAINT [FK_P_MemberAttendance_P_MemberId] FOREIGN KEY([P_MemberId])
REFERENCES [dbo].[P_Member] ([Id])
GO
ALTER TABLE [dbo].[P_MemberAttendance] CHECK CONSTRAINT [FK_P_MemberAttendance_P_MemberId]
GO
ALTER TABLE [dbo].[P_MemberFaceTemplate]  WITH CHECK ADD  CONSTRAINT [FK_P_MemberFaceTemplate_Member_Id] FOREIGN KEY([P_MemberId])
REFERENCES [dbo].[P_Member] ([Id])
GO
ALTER TABLE [dbo].[P_MemberFaceTemplate] CHECK CONSTRAINT [FK_P_MemberFaceTemplate_Member_Id]
GO
ALTER TABLE [dbo].[P_MemberFaceTemplateHistory]  WITH CHECK ADD  CONSTRAINT [FK_P_MemberFaceTemplateHistory_Member_Id] FOREIGN KEY([P_MemberId])
REFERENCES [dbo].[P_Member] ([Id])
GO
ALTER TABLE [dbo].[P_MemberFaceTemplateHistory] CHECK CONSTRAINT [FK_P_MemberFaceTemplateHistory_Member_Id]
GO
ALTER TABLE [dbo].[P_MemberFingerPrintVerifyRequest]  WITH CHECK ADD  CONSTRAINT [FK_P_MemberFingerPrintVerifyRequest_P_MemberId] FOREIGN KEY([P_MemberId])
REFERENCES [dbo].[P_Member] ([Id])
GO
ALTER TABLE [dbo].[P_MemberFingerPrintVerifyRequest] CHECK CONSTRAINT [FK_P_MemberFingerPrintVerifyRequest_P_MemberId]
GO
ALTER TABLE [dbo].[P_MemberFingerTemplate]  WITH NOCHECK ADD  CONSTRAINT [FK_P_MemberFingerTemplate_P_MemberId] FOREIGN KEY([P_MemberId])
REFERENCES [dbo].[P_Member] ([Id])
GO
ALTER TABLE [dbo].[P_MemberFingerTemplate] CHECK CONSTRAINT [FK_P_MemberFingerTemplate_P_MemberId]
GO
ALTER TABLE [dbo].[P_MemberFingerTemplateHist]  WITH CHECK ADD  CONSTRAINT [FK_P_MemberFingerTemplateHist_P_MemberId] FOREIGN KEY([P_MemberId])
REFERENCES [dbo].[P_Member] ([Id])
GO
ALTER TABLE [dbo].[P_MemberFingerTemplateHist] CHECK CONSTRAINT [FK_P_MemberFingerTemplateHist_P_MemberId]
GO
ALTER TABLE [dbo].[P_MemberMovement]  WITH NOCHECK ADD  CONSTRAINT [FK_P_MemberMovement_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[P_MemberMovement] CHECK CONSTRAINT [FK_P_MemberMovement_BranchId]
GO
ALTER TABLE [dbo].[P_MemberMovement]  WITH NOCHECK ADD  CONSTRAINT [FK_P_MemberMovement_P_GroupId] FOREIGN KEY([P_GroupId])
REFERENCES [dbo].[P_Group] ([Id])
GO
ALTER TABLE [dbo].[P_MemberMovement] CHECK CONSTRAINT [FK_P_MemberMovement_P_GroupId]
GO
ALTER TABLE [dbo].[P_MemberMovement]  WITH NOCHECK ADD  CONSTRAINT [FK_P_MemberMovement_P_MemberId] FOREIGN KEY([P_MemberId])
REFERENCES [dbo].[P_Member] ([Id])
GO
ALTER TABLE [dbo].[P_MemberMovement] CHECK CONSTRAINT [FK_P_MemberMovement_P_MemberId]
GO
ALTER TABLE [dbo].[P_MemberStatus]  WITH NOCHECK ADD  CONSTRAINT [FK_P_MemberStatus_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[P_MemberStatus] CHECK CONSTRAINT [FK_P_MemberStatus_CreatedBy]
GO
ALTER TABLE [dbo].[P_MemberStatus]  WITH NOCHECK ADD  CONSTRAINT [FK_P_MemberStatus_P_MemberId] FOREIGN KEY([P_MemberId])
REFERENCES [dbo].[P_Member] ([Id])
GO
ALTER TABLE [dbo].[P_MemberStatus] CHECK CONSTRAINT [FK_P_MemberStatus_P_MemberId]
GO
ALTER TABLE [dbo].[P_Moratorium]  WITH CHECK ADD  CONSTRAINT [FK_P_Moratorium_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[P_Moratorium] CHECK CONSTRAINT [FK_P_Moratorium_BranchId]
GO
ALTER TABLE [dbo].[P_Moratorium]  WITH CHECK ADD  CONSTRAINT [FK_P_Moratorium_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[P_Moratorium] CHECK CONSTRAINT [FK_P_Moratorium_CreatedBy]
GO
ALTER TABLE [dbo].[P_Moratorium]  WITH CHECK ADD  CONSTRAINT [FK_P_Moratorium_P_LoanAccountId] FOREIGN KEY([P_LoanAccountId])
REFERENCES [dbo].[P_LoanAccount] ([Id])
GO
ALTER TABLE [dbo].[P_Moratorium] CHECK CONSTRAINT [FK_P_Moratorium_P_LoanAccountId]
GO
ALTER TABLE [dbo].[P_MoratoriumOldSchedule]  WITH CHECK ADD  CONSTRAINT [FK_P_MoratoriumOldSchedule_P_MoratoriumId] FOREIGN KEY([P_MoratoriumId])
REFERENCES [dbo].[P_Moratorium] ([Id])
GO
ALTER TABLE [dbo].[P_MoratoriumOldSchedule] CHECK CONSTRAINT [FK_P_MoratoriumOldSchedule_P_MoratoriumId]
GO
ALTER TABLE [dbo].[P_MoratoriumParameter]  WITH CHECK ADD  CONSTRAINT [FK_P_MoratoriumParameter_ProgramId] FOREIGN KEY([P_ProgramId])
REFERENCES [dbo].[P_Program] ([Id])
GO
ALTER TABLE [dbo].[P_MoratoriumParameter] CHECK CONSTRAINT [FK_P_MoratoriumParameter_ProgramId]
GO
ALTER TABLE [dbo].[P_MoratoriumSchedule]  WITH CHECK ADD  CONSTRAINT [FK_P_MoratoriumSchedule_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[P_MoratoriumSchedule] CHECK CONSTRAINT [FK_P_MoratoriumSchedule_BranchId]
GO
ALTER TABLE [dbo].[P_MoratoriumSchedule]  WITH CHECK ADD  CONSTRAINT [FK_P_MoratoriumSchedule_P_LoanAccountId] FOREIGN KEY([P_LoanAccountId])
REFERENCES [dbo].[P_LoanAccount] ([Id])
GO
ALTER TABLE [dbo].[P_MoratoriumSchedule] CHECK CONSTRAINT [FK_P_MoratoriumSchedule_P_LoanAccountId]
GO
ALTER TABLE [dbo].[P_MrfAccount]  WITH CHECK ADD  CONSTRAINT [FK_P_MrfAccount_P_LoanAccountId] FOREIGN KEY([P_LoanAccountId])
REFERENCES [dbo].[P_LoanAccount] ([Id])
GO
ALTER TABLE [dbo].[P_MrfAccount] CHECK CONSTRAINT [FK_P_MrfAccount_P_LoanAccountId]
GO
ALTER TABLE [dbo].[P_MrfAccount]  WITH CHECK ADD  CONSTRAINT [FK_P_MrfAccount_P_MemberId] FOREIGN KEY([P_MemberId])
REFERENCES [dbo].[P_Member] ([Id])
GO
ALTER TABLE [dbo].[P_MrfAccount] CHECK CONSTRAINT [FK_P_MrfAccount_P_MemberId]
GO
ALTER TABLE [dbo].[P_MrfAccount]  WITH CHECK ADD  CONSTRAINT [FK_P_MrfAccount_P_ProgramId] FOREIGN KEY([P_ProgramId])
REFERENCES [dbo].[P_Program] ([Id])
GO
ALTER TABLE [dbo].[P_MrfAccount] CHECK CONSTRAINT [FK_P_MrfAccount_P_ProgramId]
GO
ALTER TABLE [dbo].[P_MrfTransaction]  WITH CHECK ADD  CONSTRAINT [FK_P_MrfTransaction_A_AccountId] FOREIGN KEY([A_AccountId])
REFERENCES [dbo].[A_Account] ([Id])
GO
ALTER TABLE [dbo].[P_MrfTransaction] CHECK CONSTRAINT [FK_P_MrfTransaction_A_AccountId]
GO
ALTER TABLE [dbo].[P_MrfTransaction]  WITH CHECK ADD  CONSTRAINT [FK_P_MrfTransaction_AuthorizedBy] FOREIGN KEY([AuthorizedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[P_MrfTransaction] CHECK CONSTRAINT [FK_P_MrfTransaction_AuthorizedBy]
GO
ALTER TABLE [dbo].[P_MrfTransaction]  WITH CHECK ADD  CONSTRAINT [FK_P_MrfTransaction_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[P_MrfTransaction] CHECK CONSTRAINT [FK_P_MrfTransaction_BranchId]
GO
ALTER TABLE [dbo].[P_MrfTransaction]  WITH CHECK ADD  CONSTRAINT [FK_P_MrfTransaction_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[P_MrfTransaction] CHECK CONSTRAINT [FK_P_MrfTransaction_CreatedBy]
GO
ALTER TABLE [dbo].[P_MrfTransaction]  WITH CHECK ADD  CONSTRAINT [FK_P_MrfTransaction_P_MrfAccountId] FOREIGN KEY([P_MrfAccountId])
REFERENCES [dbo].[P_MrfAccount] ([Id])
GO
ALTER TABLE [dbo].[P_MrfTransaction] CHECK CONSTRAINT [FK_P_MrfTransaction_P_MrfAccountId]
GO
ALTER TABLE [dbo].[P_OtherFee]  WITH NOCHECK ADD  CONSTRAINT [FK_P_OtherFee_Duration] FOREIGN KEY([P_Duration])
REFERENCES [dbo].[P_Duration] ([Duration])
GO
ALTER TABLE [dbo].[P_OtherFee] CHECK CONSTRAINT [FK_P_OtherFee_Duration]
GO
ALTER TABLE [dbo].[P_OtherFee]  WITH NOCHECK ADD  CONSTRAINT [FK_P_OtherFee_InstallmentType] FOREIGN KEY([P_InstallmentType])
REFERENCES [dbo].[P_InstallmentType] ([InstallmentType])
GO
ALTER TABLE [dbo].[P_OtherFee] CHECK CONSTRAINT [FK_P_OtherFee_InstallmentType]
GO
ALTER TABLE [dbo].[P_OtherFee]  WITH NOCHECK ADD  CONSTRAINT [FK_P_OtherFee_ProgramId] FOREIGN KEY([P_ProgramId])
REFERENCES [dbo].[P_Program] ([Id])
GO
ALTER TABLE [dbo].[P_OtherFee] CHECK CONSTRAINT [FK_P_OtherFee_ProgramId]
GO
ALTER TABLE [dbo].[P_OthersTransaction]  WITH CHECK ADD  CONSTRAINT [FK_P_OthersTransaction_A_AccountId] FOREIGN KEY([A_AccountId])
REFERENCES [dbo].[A_Account] ([Id])
GO
ALTER TABLE [dbo].[P_OthersTransaction] CHECK CONSTRAINT [FK_P_OthersTransaction_A_AccountId]
GO
ALTER TABLE [dbo].[P_OthersTransaction]  WITH NOCHECK ADD  CONSTRAINT [FK_P_OthersTransaction_AuthorizedBy] FOREIGN KEY([AuthorizedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[P_OthersTransaction] CHECK CONSTRAINT [FK_P_OthersTransaction_AuthorizedBy]
GO
ALTER TABLE [dbo].[P_OthersTransaction]  WITH CHECK ADD  CONSTRAINT [FK_P_OthersTransaction_B_TransactionId] FOREIGN KEY([B_TransactionId])
REFERENCES [dbo].[B_Transaction] ([Id])
GO
ALTER TABLE [dbo].[P_OthersTransaction] CHECK CONSTRAINT [FK_P_OthersTransaction_B_TransactionId]
GO
ALTER TABLE [dbo].[P_OthersTransaction]  WITH NOCHECK ADD  CONSTRAINT [FK_P_OthersTransaction_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[P_OthersTransaction] CHECK CONSTRAINT [FK_P_OthersTransaction_BranchId]
GO
ALTER TABLE [dbo].[P_OthersTransaction]  WITH NOCHECK ADD  CONSTRAINT [FK_P_OthersTransaction_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[P_OthersTransaction] CHECK CONSTRAINT [FK_P_OthersTransaction_CreatedBy]
GO
ALTER TABLE [dbo].[P_OthersTransaction]  WITH NOCHECK ADD  CONSTRAINT [FK_P_OthersTransaction_P_LoanAccountId] FOREIGN KEY([P_LoanAccountId])
REFERENCES [dbo].[P_LoanAccount] ([Id])
GO
ALTER TABLE [dbo].[P_OthersTransaction] CHECK CONSTRAINT [FK_P_OthersTransaction_P_LoanAccountId]
GO
ALTER TABLE [dbo].[P_OthersTransaction]  WITH CHECK ADD  CONSTRAINT [FK_P_OthersTransaction_P_MemberFingerTemplateId] FOREIGN KEY([P_MemberFingerTemplateId])
REFERENCES [dbo].[P_MemberFingerTemplate] ([Id])
GO
ALTER TABLE [dbo].[P_OthersTransaction] CHECK CONSTRAINT [FK_P_OthersTransaction_P_MemberFingerTemplateId]
GO
ALTER TABLE [dbo].[P_OthersTransaction]  WITH NOCHECK ADD  CONSTRAINT [FK_P_OthersTransaction_P_MemberId] FOREIGN KEY([P_MemberId])
REFERENCES [dbo].[P_Member] ([Id])
GO
ALTER TABLE [dbo].[P_OthersTransaction] CHECK CONSTRAINT [FK_P_OthersTransaction_P_MemberId]
GO
ALTER TABLE [dbo].[P_OthersTransaction]  WITH NOCHECK ADD  CONSTRAINT [FK_P_OthersTransaction_P_ProgramId] FOREIGN KEY([P_ProgramId])
REFERENCES [dbo].[P_Program] ([Id])
GO
ALTER TABLE [dbo].[P_OthersTransaction] CHECK CONSTRAINT [FK_P_OthersTransaction_P_ProgramId]
GO
ALTER TABLE [dbo].[P_OthersTransaction]  WITH CHECK ADD  CONSTRAINT [FK_P_OthersTransaction_P_SecurityAccountId] FOREIGN KEY([P_SecurityAccountId])
REFERENCES [dbo].[P_SecurityAccount] ([Id])
GO
ALTER TABLE [dbo].[P_OthersTransaction] CHECK CONSTRAINT [FK_P_OthersTransaction_P_SecurityAccountId]
GO
ALTER TABLE [dbo].[P_OverdueInerestNonEIR]  WITH CHECK ADD  CONSTRAINT [FK_P_OverdueInerestNonEIR_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[P_OverdueInerestNonEIR] CHECK CONSTRAINT [FK_P_OverdueInerestNonEIR_BranchId]
GO
ALTER TABLE [dbo].[P_OverdueInerestNonEIR]  WITH CHECK ADD  CONSTRAINT [FK_P_OverdueInerestNonEIR_P_LoanAccountId] FOREIGN KEY([P_LoanAccountId])
REFERENCES [dbo].[P_LoanAccount] ([Id])
GO
ALTER TABLE [dbo].[P_OverdueInerestNonEIR] CHECK CONSTRAINT [FK_P_OverdueInerestNonEIR_P_LoanAccountId]
GO
ALTER TABLE [dbo].[P_OverdueInerestProcess]  WITH CHECK ADD  CONSTRAINT [FK_P_OverdueInerestProcess_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[P_OverdueInerestProcess] CHECK CONSTRAINT [FK_P_OverdueInerestProcess_BranchId]
GO
ALTER TABLE [dbo].[P_OverdueInerestProcess]  WITH CHECK ADD  CONSTRAINT [FK_P_OverdueInerestProcess_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[P_OverdueInerestProcess] CHECK CONSTRAINT [FK_P_OverdueInerestProcess_CreatedBy]
GO
ALTER TABLE [dbo].[P_OverdueInerestProcess]  WITH CHECK ADD  CONSTRAINT [FK_P_OverdueInerestProcess_P_LoanAccountId] FOREIGN KEY([P_LoanAccountId])
REFERENCES [dbo].[P_LoanAccount] ([Id])
GO
ALTER TABLE [dbo].[P_OverdueInerestProcess] CHECK CONSTRAINT [FK_P_OverdueInerestProcess_P_LoanAccountId]
GO
ALTER TABLE [dbo].[P_OverdueRecoveryTransaction]  WITH CHECK ADD  CONSTRAINT [FK_P_OverdueRecoveryTransaction_A_AccountId] FOREIGN KEY([A_AccountId])
REFERENCES [dbo].[A_Account] ([Id])
GO
ALTER TABLE [dbo].[P_OverdueRecoveryTransaction] CHECK CONSTRAINT [FK_P_OverdueRecoveryTransaction_A_AccountId]
GO
ALTER TABLE [dbo].[P_OverdueRecoveryTransaction]  WITH CHECK ADD  CONSTRAINT [FK_P_OverdueRecoveryTransaction_AuthorizedBy] FOREIGN KEY([AuthorizedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[P_OverdueRecoveryTransaction] CHECK CONSTRAINT [FK_P_OverdueRecoveryTransaction_AuthorizedBy]
GO
ALTER TABLE [dbo].[P_OverdueRecoveryTransaction]  WITH CHECK ADD  CONSTRAINT [FK_P_OverdueRecoveryTransaction_B_TransactionId] FOREIGN KEY([B_TransactionId])
REFERENCES [dbo].[B_Transaction] ([Id])
GO
ALTER TABLE [dbo].[P_OverdueRecoveryTransaction] CHECK CONSTRAINT [FK_P_OverdueRecoveryTransaction_B_TransactionId]
GO
ALTER TABLE [dbo].[P_OverdueRecoveryTransaction]  WITH CHECK ADD  CONSTRAINT [FK_P_OverdueRecoveryTransaction_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[P_OverdueRecoveryTransaction] CHECK CONSTRAINT [FK_P_OverdueRecoveryTransaction_BranchId]
GO
ALTER TABLE [dbo].[P_OverdueRecoveryTransaction]  WITH CHECK ADD  CONSTRAINT [FK_P_OverdueRecoveryTransaction_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[P_OverdueRecoveryTransaction] CHECK CONSTRAINT [FK_P_OverdueRecoveryTransaction_CreatedBy]
GO
ALTER TABLE [dbo].[P_OverdueRecoveryTransaction]  WITH CHECK ADD  CONSTRAINT [FK_P_OverdueRecoveryTransaction_P_LoanAccountId] FOREIGN KEY([P_LoanAccountId])
REFERENCES [dbo].[P_LoanAccount] ([Id])
GO
ALTER TABLE [dbo].[P_OverdueRecoveryTransaction] CHECK CONSTRAINT [FK_P_OverdueRecoveryTransaction_P_LoanAccountId]
GO
ALTER TABLE [dbo].[P_ProcessAccruedInterestIncome]  WITH CHECK ADD  CONSTRAINT [FK_P_ProcessAccruedInterestIncome_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[P_ProcessAccruedInterestIncome] CHECK CONSTRAINT [FK_P_ProcessAccruedInterestIncome_BranchId]
GO
ALTER TABLE [dbo].[P_Program]  WITH NOCHECK ADD  CONSTRAINT [FK_P_Program_P_ProgramTypeId] FOREIGN KEY([P_ProgramTypeId])
REFERENCES [dbo].[P_ProgramType] ([Id])
GO
ALTER TABLE [dbo].[P_Program] CHECK CONSTRAINT [FK_P_Program_P_ProgramTypeId]
GO
ALTER TABLE [dbo].[P_ProgramGroup]  WITH NOCHECK ADD  CONSTRAINT [FK_P_ProgramGroup_DefaultDuration] FOREIGN KEY([P_DefaultDuration])
REFERENCES [dbo].[P_Duration] ([Duration])
GO
ALTER TABLE [dbo].[P_ProgramGroup] CHECK CONSTRAINT [FK_P_ProgramGroup_DefaultDuration]
GO
ALTER TABLE [dbo].[P_ProgramGroup]  WITH NOCHECK ADD  CONSTRAINT [FK_P_ProgramGroup_DefaultInstallmentType] FOREIGN KEY([P_DefaultInstallmentType])
REFERENCES [dbo].[P_InstallmentType] ([InstallmentType])
GO
ALTER TABLE [dbo].[P_ProgramGroup] CHECK CONSTRAINT [FK_P_ProgramGroup_DefaultInstallmentType]
GO
ALTER TABLE [dbo].[P_ProgramGroup]  WITH NOCHECK ADD  CONSTRAINT [FK_P_ProgramGroup_GroupTypeId] FOREIGN KEY([P_GroupTypeId])
REFERENCES [dbo].[P_GroupType] ([Id])
GO
ALTER TABLE [dbo].[P_ProgramGroup] CHECK CONSTRAINT [FK_P_ProgramGroup_GroupTypeId]
GO
ALTER TABLE [dbo].[P_ProgramGroup]  WITH NOCHECK ADD  CONSTRAINT [FK_P_ProgramGroup_ProgramGroupProgramId] FOREIGN KEY([P_ProgramGroupProgramId])
REFERENCES [dbo].[P_Program] ([Id])
GO
ALTER TABLE [dbo].[P_ProgramGroup] CHECK CONSTRAINT [FK_P_ProgramGroup_ProgramGroupProgramId]
GO
ALTER TABLE [dbo].[P_ProgramGroup]  WITH NOCHECK ADD  CONSTRAINT [FK_P_ProgramGroup_ProgramId] FOREIGN KEY([P_ProgramId])
REFERENCES [dbo].[P_Program] ([Id])
GO
ALTER TABLE [dbo].[P_ProgramGroup] CHECK CONSTRAINT [FK_P_ProgramGroup_ProgramId]
GO
ALTER TABLE [dbo].[P_ProgramGroupDuration]  WITH NOCHECK ADD  CONSTRAINT [FK_P_ProgramGroupDuration_Duration] FOREIGN KEY([P_Duration])
REFERENCES [dbo].[P_Duration] ([Duration])
GO
ALTER TABLE [dbo].[P_ProgramGroupDuration] CHECK CONSTRAINT [FK_P_ProgramGroupDuration_Duration]
GO
ALTER TABLE [dbo].[P_ProgramGroupDuration]  WITH NOCHECK ADD  CONSTRAINT [FK_P_ProgramGroupDuration_GroupTypeId] FOREIGN KEY([P_GroupTypeId])
REFERENCES [dbo].[P_GroupType] ([Id])
GO
ALTER TABLE [dbo].[P_ProgramGroupDuration] CHECK CONSTRAINT [FK_P_ProgramGroupDuration_GroupTypeId]
GO
ALTER TABLE [dbo].[P_ProgramGroupDuration]  WITH NOCHECK ADD  CONSTRAINT [FK_P_ProgramGroupDuration_LoanGroupProgramId] FOREIGN KEY([P_ProgramGroupProgramId])
REFERENCES [dbo].[P_Program] ([Id])
GO
ALTER TABLE [dbo].[P_ProgramGroupDuration] CHECK CONSTRAINT [FK_P_ProgramGroupDuration_LoanGroupProgramId]
GO
ALTER TABLE [dbo].[P_ProgramGroupDuration]  WITH NOCHECK ADD  CONSTRAINT [FK_P_ProgramGroupDuration_ProgramId] FOREIGN KEY([P_ProgramId])
REFERENCES [dbo].[P_Program] ([Id])
GO
ALTER TABLE [dbo].[P_ProgramGroupDuration] CHECK CONSTRAINT [FK_P_ProgramGroupDuration_ProgramId]
GO
ALTER TABLE [dbo].[P_ProgramGroupInstallment]  WITH NOCHECK ADD  CONSTRAINT [FK_P_ProgramGroupInstallment_Duration] FOREIGN KEY([P_Duration])
REFERENCES [dbo].[P_Duration] ([Duration])
GO
ALTER TABLE [dbo].[P_ProgramGroupInstallment] CHECK CONSTRAINT [FK_P_ProgramGroupInstallment_Duration]
GO
ALTER TABLE [dbo].[P_ProgramGroupInstallment]  WITH NOCHECK ADD  CONSTRAINT [FK_P_ProgramGroupInstallment_GroupTypeId] FOREIGN KEY([P_GroupTypeId])
REFERENCES [dbo].[P_GroupType] ([Id])
GO
ALTER TABLE [dbo].[P_ProgramGroupInstallment] CHECK CONSTRAINT [FK_P_ProgramGroupInstallment_GroupTypeId]
GO
ALTER TABLE [dbo].[P_ProgramGroupInstallment]  WITH NOCHECK ADD  CONSTRAINT [FK_P_ProgramGroupInstallment_InstallmentType] FOREIGN KEY([P_InstallmentType])
REFERENCES [dbo].[P_InstallmentType] ([InstallmentType])
GO
ALTER TABLE [dbo].[P_ProgramGroupInstallment] CHECK CONSTRAINT [FK_P_ProgramGroupInstallment_InstallmentType]
GO
ALTER TABLE [dbo].[P_ProgramGroupInstallment]  WITH NOCHECK ADD  CONSTRAINT [FK_P_ProgramGroupInstallment_LoanGroupProgramId] FOREIGN KEY([P_ProgramGroupProgramId])
REFERENCES [dbo].[P_Program] ([Id])
GO
ALTER TABLE [dbo].[P_ProgramGroupInstallment] CHECK CONSTRAINT [FK_P_ProgramGroupInstallment_LoanGroupProgramId]
GO
ALTER TABLE [dbo].[P_ProgramGroupInstallment]  WITH NOCHECK ADD  CONSTRAINT [FK_P_ProgramGroupInstallment_ProgramId] FOREIGN KEY([P_ProgramId])
REFERENCES [dbo].[P_Program] ([Id])
GO
ALTER TABLE [dbo].[P_ProgramGroupInstallment] CHECK CONSTRAINT [FK_P_ProgramGroupInstallment_ProgramId]
GO
ALTER TABLE [dbo].[P_ProgramGroupType]  WITH NOCHECK ADD  CONSTRAINT [FK_P_ProgramGroupType_GroupTypeId] FOREIGN KEY([P_GroupTypeId])
REFERENCES [dbo].[P_GroupType] ([Id])
GO
ALTER TABLE [dbo].[P_ProgramGroupType] CHECK CONSTRAINT [FK_P_ProgramGroupType_GroupTypeId]
GO
ALTER TABLE [dbo].[P_ProgramGroupType]  WITH NOCHECK ADD  CONSTRAINT [FK_P_ProgramGroupType_ProgramId] FOREIGN KEY([P_ProgramId])
REFERENCES [dbo].[P_Program] ([Id])
GO
ALTER TABLE [dbo].[P_ProgramGroupType] CHECK CONSTRAINT [FK_P_ProgramGroupType_ProgramId]
GO
ALTER TABLE [dbo].[P_ReScheduleHistory]  WITH CHECK ADD  CONSTRAINT [FK_P_ReScheduleHistory_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[P_ReScheduleHistory] CHECK CONSTRAINT [FK_P_ReScheduleHistory_BranchId]
GO
ALTER TABLE [dbo].[P_ReScheduleHistory]  WITH CHECK ADD  CONSTRAINT [FK_P_ReScheduleHistory_P_LoanAccountId] FOREIGN KEY([P_LoanAccountId])
REFERENCES [dbo].[P_LoanAccount] ([Id])
GO
ALTER TABLE [dbo].[P_ReScheduleHistory] CHECK CONSTRAINT [FK_P_ReScheduleHistory_P_LoanAccountId]
GO
ALTER TABLE [dbo].[P_ReScheduleHistoryBackup]  WITH CHECK ADD  CONSTRAINT [FK_P_ReScheduleHistoryBackup_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[P_ReScheduleHistoryBackup] CHECK CONSTRAINT [FK_P_ReScheduleHistoryBackup_BranchId]
GO
ALTER TABLE [dbo].[P_ReScheduleHistoryBackup]  WITH CHECK ADD  CONSTRAINT [FK_P_ReScheduleHistoryBackup_P_LoanAccountId] FOREIGN KEY([P_LoanAccountId])
REFERENCES [dbo].[P_LoanAccount] ([Id])
GO
ALTER TABLE [dbo].[P_ReScheduleHistoryBackup] CHECK CONSTRAINT [FK_P_ReScheduleHistoryBackup_P_LoanAccountId]
GO
ALTER TABLE [dbo].[P_SavingsAccount]  WITH NOCHECK ADD  CONSTRAINT [FK_P_SavingsAccount_P_Duration] FOREIGN KEY([P_Duration])
REFERENCES [dbo].[P_Duration] ([Duration])
GO
ALTER TABLE [dbo].[P_SavingsAccount] CHECK CONSTRAINT [FK_P_SavingsAccount_P_Duration]
GO
ALTER TABLE [dbo].[P_SavingsAccount]  WITH NOCHECK ADD  CONSTRAINT [FK_P_SavingsAccount_P_InstallmentType] FOREIGN KEY([P_InstallmentType])
REFERENCES [dbo].[P_InstallmentType] ([InstallmentType])
GO
ALTER TABLE [dbo].[P_SavingsAccount] CHECK CONSTRAINT [FK_P_SavingsAccount_P_InstallmentType]
GO
ALTER TABLE [dbo].[P_SavingsAccount]  WITH NOCHECK ADD  CONSTRAINT [FK_P_SavingsAccount_P_MemberId] FOREIGN KEY([P_MemberId])
REFERENCES [dbo].[P_Member] ([Id])
GO
ALTER TABLE [dbo].[P_SavingsAccount] CHECK CONSTRAINT [FK_P_SavingsAccount_P_MemberId]
GO
ALTER TABLE [dbo].[P_SavingsAccount]  WITH NOCHECK ADD  CONSTRAINT [FK_P_SavingsAccount_P_ProgramId] FOREIGN KEY([P_ProgramId])
REFERENCES [dbo].[P_Program] ([Id])
GO
ALTER TABLE [dbo].[P_SavingsAccount] CHECK CONSTRAINT [FK_P_SavingsAccount_P_ProgramId]
GO
ALTER TABLE [dbo].[P_SavingsAccountInterest]  WITH CHECK ADD  CONSTRAINT [FK_P_SavingsAccountInterest_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[P_SavingsAccountInterest] CHECK CONSTRAINT [FK_P_SavingsAccountInterest_BranchId]
GO
ALTER TABLE [dbo].[P_SavingsAccountInterest]  WITH CHECK ADD  CONSTRAINT [FK_P_SavingsAccountInterest_P_SavingsAccountId] FOREIGN KEY([P_SavingsAccountId])
REFERENCES [dbo].[P_SavingsAccount] ([Id])
GO
ALTER TABLE [dbo].[P_SavingsAccountInterest] CHECK CONSTRAINT [FK_P_SavingsAccountInterest_P_SavingsAccountId]
GO
ALTER TABLE [dbo].[P_SavingsInterestConfig]  WITH CHECK ADD  CONSTRAINT [FK_P_SavingsInterestConfig_P_Program] FOREIGN KEY([P_ProgramId])
REFERENCES [dbo].[P_Program] ([Id])
GO
ALTER TABLE [dbo].[P_SavingsInterestConfig] CHECK CONSTRAINT [FK_P_SavingsInterestConfig_P_Program]
GO
ALTER TABLE [dbo].[P_SavingsTransaction]  WITH CHECK ADD  CONSTRAINT [FK_P_SavingsTransaction_A_AccountId] FOREIGN KEY([A_AccountId])
REFERENCES [dbo].[A_Account] ([Id])
GO
ALTER TABLE [dbo].[P_SavingsTransaction] CHECK CONSTRAINT [FK_P_SavingsTransaction_A_AccountId]
GO
ALTER TABLE [dbo].[P_SavingsTransaction]  WITH NOCHECK ADD  CONSTRAINT [FK_P_SavingsTransaction_AuthorizedBy] FOREIGN KEY([AuthorizedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[P_SavingsTransaction] CHECK CONSTRAINT [FK_P_SavingsTransaction_AuthorizedBy]
GO
ALTER TABLE [dbo].[P_SavingsTransaction]  WITH NOCHECK ADD  CONSTRAINT [FK_P_SavingsTransaction_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[P_SavingsTransaction] CHECK CONSTRAINT [FK_P_SavingsTransaction_BranchId]
GO
ALTER TABLE [dbo].[P_SavingsTransaction]  WITH NOCHECK ADD  CONSTRAINT [FK_P_SavingsTransaction_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[P_SavingsTransaction] CHECK CONSTRAINT [FK_P_SavingsTransaction_CreatedBy]
GO
ALTER TABLE [dbo].[P_SavingsTransaction]  WITH NOCHECK ADD  CONSTRAINT [FK_P_SavingsTransaction_P_LoanTransactionId] FOREIGN KEY([P_LoanTransactionId])
REFERENCES [dbo].[P_LoanTransaction] ([Id])
GO
ALTER TABLE [dbo].[P_SavingsTransaction] CHECK CONSTRAINT [FK_P_SavingsTransaction_P_LoanTransactionId]
GO
ALTER TABLE [dbo].[P_SavingsTransaction]  WITH CHECK ADD  CONSTRAINT [FK_P_SavingsTransaction_P_MemberFingerTemplateId] FOREIGN KEY([P_MemberFingerTemplateId])
REFERENCES [dbo].[P_MemberFingerTemplate] ([Id])
GO
ALTER TABLE [dbo].[P_SavingsTransaction] CHECK CONSTRAINT [FK_P_SavingsTransaction_P_MemberFingerTemplateId]
GO
ALTER TABLE [dbo].[P_SavingsTransaction]  WITH NOCHECK ADD  CONSTRAINT [FK_P_SavingsTransaction_P_SavingsAccountId] FOREIGN KEY([P_SavingsAccountId])
REFERENCES [dbo].[P_SavingsAccount] ([Id])
GO
ALTER TABLE [dbo].[P_SavingsTransaction] CHECK CONSTRAINT [FK_P_SavingsTransaction_P_SavingsAccountId]
GO
ALTER TABLE [dbo].[P_SavingsTransaction]  WITH CHECK ADD  CONSTRAINT [FK_P_SavingsTransaction_P_SavingsTransactionId] FOREIGN KEY([P_SavingsTransactionId])
REFERENCES [dbo].[P_SavingsTransaction] ([Id])
GO
ALTER TABLE [dbo].[P_SavingsTransaction] CHECK CONSTRAINT [FK_P_SavingsTransaction_P_SavingsTransactionId]
GO
ALTER TABLE [dbo].[P_SavingsTransfer]  WITH NOCHECK ADD  CONSTRAINT [FK_P_SavingsTransfer_DestinationBranchId] FOREIGN KEY([DestinationBranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[P_SavingsTransfer] CHECK CONSTRAINT [FK_P_SavingsTransfer_DestinationBranchId]
GO
ALTER TABLE [dbo].[P_SavingsTransfer]  WITH NOCHECK ADD  CONSTRAINT [FK_P_SavingsTransfer_P_SavingsAccountId] FOREIGN KEY([P_SavingsAccountId])
REFERENCES [dbo].[P_SavingsAccount] ([Id])
GO
ALTER TABLE [dbo].[P_SavingsTransfer] CHECK CONSTRAINT [FK_P_SavingsTransfer_P_SavingsAccountId]
GO
ALTER TABLE [dbo].[P_SavingsTransfer]  WITH NOCHECK ADD  CONSTRAINT [FK_P_SavingsTransfer_SourceBranchId] FOREIGN KEY([SourceBranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[P_SavingsTransfer] CHECK CONSTRAINT [FK_P_SavingsTransfer_SourceBranchId]
GO
ALTER TABLE [dbo].[P_Schedule]  WITH NOCHECK ADD  CONSTRAINT [FK_P_Schedule_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[P_Schedule] CHECK CONSTRAINT [FK_P_Schedule_BranchId]
GO
ALTER TABLE [dbo].[P_Schedule]  WITH NOCHECK ADD  CONSTRAINT [FK_P_Schedule_P_LoanAccountId] FOREIGN KEY([P_LoanAccountId])
REFERENCES [dbo].[P_LoanAccount] ([Id])
GO
ALTER TABLE [dbo].[P_Schedule] CHECK CONSTRAINT [FK_P_Schedule_P_LoanAccountId]
GO
ALTER TABLE [dbo].[P_SecurityAccount]  WITH NOCHECK ADD  CONSTRAINT [FK_P_SecurityAccount_P_Duration] FOREIGN KEY([P_Duration])
REFERENCES [dbo].[P_Duration] ([Duration])
GO
ALTER TABLE [dbo].[P_SecurityAccount] CHECK CONSTRAINT [FK_P_SecurityAccount_P_Duration]
GO
ALTER TABLE [dbo].[P_SecurityAccount]  WITH NOCHECK ADD  CONSTRAINT [FK_P_SecurityAccount_P_InstallmentType] FOREIGN KEY([P_InstallmentType])
REFERENCES [dbo].[P_InstallmentType] ([InstallmentType])
GO
ALTER TABLE [dbo].[P_SecurityAccount] CHECK CONSTRAINT [FK_P_SecurityAccount_P_InstallmentType]
GO
ALTER TABLE [dbo].[P_SecurityAccount]  WITH NOCHECK ADD  CONSTRAINT [FK_P_SecurityAccount_P_MemberId] FOREIGN KEY([P_MemberId])
REFERENCES [dbo].[P_Member] ([Id])
GO
ALTER TABLE [dbo].[P_SecurityAccount] CHECK CONSTRAINT [FK_P_SecurityAccount_P_MemberId]
GO
ALTER TABLE [dbo].[P_SecurityAccount]  WITH NOCHECK ADD  CONSTRAINT [FK_P_SecurityAccount_P_ProgramId] FOREIGN KEY([P_ProgramId])
REFERENCES [dbo].[P_Program] ([Id])
GO
ALTER TABLE [dbo].[P_SecurityAccount] CHECK CONSTRAINT [FK_P_SecurityAccount_P_ProgramId]
GO
ALTER TABLE [dbo].[P_SecurityTransaction]  WITH CHECK ADD  CONSTRAINT [FK_P_SecurityTransaction_A_AccountId] FOREIGN KEY([A_AccountId])
REFERENCES [dbo].[A_Account] ([Id])
GO
ALTER TABLE [dbo].[P_SecurityTransaction] CHECK CONSTRAINT [FK_P_SecurityTransaction_A_AccountId]
GO
ALTER TABLE [dbo].[P_SecurityTransaction]  WITH NOCHECK ADD  CONSTRAINT [FK_P_SecurityTransaction_AuthorizedBy] FOREIGN KEY([AuthorizedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[P_SecurityTransaction] CHECK CONSTRAINT [FK_P_SecurityTransaction_AuthorizedBy]
GO
ALTER TABLE [dbo].[P_SecurityTransaction]  WITH CHECK ADD  CONSTRAINT [FK_P_SecurityTransaction_B_TransactionId] FOREIGN KEY([B_TransactionId])
REFERENCES [dbo].[B_Transaction] ([Id])
GO
ALTER TABLE [dbo].[P_SecurityTransaction] CHECK CONSTRAINT [FK_P_SecurityTransaction_B_TransactionId]
GO
ALTER TABLE [dbo].[P_SecurityTransaction]  WITH NOCHECK ADD  CONSTRAINT [FK_P_SecurityTransaction_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[P_SecurityTransaction] CHECK CONSTRAINT [FK_P_SecurityTransaction_BranchId]
GO
ALTER TABLE [dbo].[P_SecurityTransaction]  WITH NOCHECK ADD  CONSTRAINT [FK_P_SecurityTransaction_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[P_SecurityTransaction] CHECK CONSTRAINT [FK_P_SecurityTransaction_CreatedBy]
GO
ALTER TABLE [dbo].[P_SecurityTransaction]  WITH NOCHECK ADD  CONSTRAINT [FK_P_SecurityTransaction_P_LoanTransactionId] FOREIGN KEY([P_LoanTransactionId])
REFERENCES [dbo].[P_LoanTransaction] ([Id])
GO
ALTER TABLE [dbo].[P_SecurityTransaction] CHECK CONSTRAINT [FK_P_SecurityTransaction_P_LoanTransactionId]
GO
ALTER TABLE [dbo].[P_SecurityTransaction]  WITH NOCHECK ADD  CONSTRAINT [FK_P_SecurityTransaction_P_SecurityAccountId] FOREIGN KEY([P_SecurityAccountId])
REFERENCES [dbo].[P_SecurityAccount] ([Id])
GO
ALTER TABLE [dbo].[P_SecurityTransaction] CHECK CONSTRAINT [FK_P_SecurityTransaction_P_SecurityAccountId]
GO
ALTER TABLE [dbo].[P_SecurityTransaction]  WITH NOCHECK ADD  CONSTRAINT [FK_P_SecurityTransaction_P_SecurityTransactionId] FOREIGN KEY([P_SecurityTransactionId])
REFERENCES [dbo].[P_SecurityTransaction] ([Id])
GO
ALTER TABLE [dbo].[P_SecurityTransaction] CHECK CONSTRAINT [FK_P_SecurityTransaction_P_SecurityTransactionId]
GO
ALTER TABLE [dbo].[P_SecurityTransfer]  WITH NOCHECK ADD  CONSTRAINT [FK_P_SecurityTransfer_DestinationBranchId] FOREIGN KEY([DestinationBranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[P_SecurityTransfer] CHECK CONSTRAINT [FK_P_SecurityTransfer_DestinationBranchId]
GO
ALTER TABLE [dbo].[P_SecurityTransfer]  WITH NOCHECK ADD  CONSTRAINT [FK_P_SecurityTransfer_P_SecurityAccountId] FOREIGN KEY([P_SecurityAccountId])
REFERENCES [dbo].[P_SecurityAccount] ([Id])
GO
ALTER TABLE [dbo].[P_SecurityTransfer] CHECK CONSTRAINT [FK_P_SecurityTransfer_P_SecurityAccountId]
GO
ALTER TABLE [dbo].[P_SecurityTransfer]  WITH NOCHECK ADD  CONSTRAINT [FK_P_SecurityTransfer_SourceBranchId] FOREIGN KEY([SourceBranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[P_SecurityTransfer] CHECK CONSTRAINT [FK_P_SecurityTransfer_SourceBranchId]
GO
ALTER TABLE [dbo].[P_StaffLoanConfiguration]  WITH CHECK ADD  CONSTRAINT [FK_P_StaffLoanConfiguration_P_ProgramId] FOREIGN KEY([P_ProgramId])
REFERENCES [dbo].[P_Program] ([Id])
GO
ALTER TABLE [dbo].[P_StaffLoanConfiguration] CHECK CONSTRAINT [FK_P_StaffLoanConfiguration_P_ProgramId]
GO
ALTER TABLE [dbo].[P_TraPostReceiptItems]  WITH CHECK ADD FOREIGN KEY([ReceiptRequestId])
REFERENCES [dbo].[P_TraPostReceiptRequest] ([Id])
GO
ALTER TABLE [dbo].[P_TraPostReceiptPayments]  WITH CHECK ADD FOREIGN KEY([ReceiptRequestId])
REFERENCES [dbo].[P_TraPostReceiptRequest] ([Id])
GO
ALTER TABLE [dbo].[P_TraPostReceiptRequest]  WITH CHECK ADD  CONSTRAINT [FK_P_TraPostReceiptRequest_P_VatInvoiceId] FOREIGN KEY([P_VatInvoiceId])
REFERENCES [dbo].[P_VatInvoice] ([Id])
GO
ALTER TABLE [dbo].[P_TraPostReceiptRequest] CHECK CONSTRAINT [FK_P_TraPostReceiptRequest_P_VatInvoiceId]
GO
ALTER TABLE [dbo].[P_TraPostReceiptResponse]  WITH CHECK ADD FOREIGN KEY([ReceiptRequestId])
REFERENCES [dbo].[P_TraPostReceiptRequest] ([Id])
GO
ALTER TABLE [dbo].[P_TraPostReceiptVatTotals]  WITH CHECK ADD FOREIGN KEY([ReceiptRequestId])
REFERENCES [dbo].[P_TraPostReceiptRequest] ([Id])
GO
ALTER TABLE [dbo].[P_VatInvoice]  WITH CHECK ADD  CONSTRAINT [FK_P_VatInvoice_Branch] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[P_VatInvoice] CHECK CONSTRAINT [FK_P_VatInvoice_Branch]
GO
ALTER TABLE [dbo].[P_VatInvoice]  WITH CHECK ADD  CONSTRAINT [FK_P_VatInvoice_P_Member] FOREIGN KEY([P_MemberId])
REFERENCES [dbo].[P_Member] ([Id])
GO
ALTER TABLE [dbo].[P_VatInvoice] CHECK CONSTRAINT [FK_P_VatInvoice_P_Member]
GO
ALTER TABLE [dbo].[P_VatTransaction]  WITH CHECK ADD  CONSTRAINT [FK_P_VatTransaction_A_AccountId] FOREIGN KEY([A_AccountId])
REFERENCES [dbo].[A_Account] ([Id])
GO
ALTER TABLE [dbo].[P_VatTransaction] CHECK CONSTRAINT [FK_P_VatTransaction_A_AccountId]
GO
ALTER TABLE [dbo].[P_VatTransaction]  WITH CHECK ADD  CONSTRAINT [FK_P_VatTransaction_AuthorizedBy] FOREIGN KEY([AuthorizedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[P_VatTransaction] CHECK CONSTRAINT [FK_P_VatTransaction_AuthorizedBy]
GO
ALTER TABLE [dbo].[P_VatTransaction]  WITH CHECK ADD  CONSTRAINT [FK_P_VatTransaction_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[P_VatTransaction] CHECK CONSTRAINT [FK_P_VatTransaction_BranchId]
GO
ALTER TABLE [dbo].[P_VatTransaction]  WITH CHECK ADD  CONSTRAINT [FK_P_VatTransaction_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[P_VatTransaction] CHECK CONSTRAINT [FK_P_VatTransaction_CreatedBy]
GO
ALTER TABLE [dbo].[P_VatTransaction]  WITH CHECK ADD  CONSTRAINT [FK_P_VatTransaction_P_LoanAccountId] FOREIGN KEY([P_LoanAccountId])
REFERENCES [dbo].[P_LoanAccount] ([Id])
GO
ALTER TABLE [dbo].[P_VatTransaction] CHECK CONSTRAINT [FK_P_VatTransaction_P_LoanAccountId]
GO
ALTER TABLE [dbo].[P_VatTransaction]  WITH CHECK ADD  CONSTRAINT [FK_P_VatTransaction_P_MemberFingerTemplateId] FOREIGN KEY([P_MemberFingerTemplateId])
REFERENCES [dbo].[P_MemberFingerTemplate] ([Id])
GO
ALTER TABLE [dbo].[P_VatTransaction] CHECK CONSTRAINT [FK_P_VatTransaction_P_MemberFingerTemplateId]
GO
ALTER TABLE [dbo].[P_VatTransaction]  WITH CHECK ADD  CONSTRAINT [FK_P_VatTransaction_P_MemberId] FOREIGN KEY([P_MemberId])
REFERENCES [dbo].[P_Member] ([Id])
GO
ALTER TABLE [dbo].[P_VatTransaction] CHECK CONSTRAINT [FK_P_VatTransaction_P_MemberId]
GO
ALTER TABLE [dbo].[P_VatTransaction]  WITH CHECK ADD  CONSTRAINT [FK_P_VatTransaction_P_OthersTransaction] FOREIGN KEY([P_OthersTransactionId])
REFERENCES [dbo].[P_OthersTransaction] ([Id])
GO
ALTER TABLE [dbo].[P_VatTransaction] CHECK CONSTRAINT [FK_P_VatTransaction_P_OthersTransaction]
GO
ALTER TABLE [dbo].[P_VatTransaction]  WITH CHECK ADD  CONSTRAINT [FK_P_VatTransaction_P_ProgramId] FOREIGN KEY([P_ProgramId])
REFERENCES [dbo].[P_Program] ([Id])
GO
ALTER TABLE [dbo].[P_VatTransaction] CHECK CONSTRAINT [FK_P_VatTransaction_P_ProgramId]
GO
ALTER TABLE [dbo].[P_ZReport]  WITH CHECK ADD FOREIGN KEY([RawActivityId])
REFERENCES [dbo].[P_ZReportRawActivity] ([Id])
GO
ALTER TABLE [dbo].[Property]  WITH NOCHECK ADD  CONSTRAINT [FK_Property_ModuleName] FOREIGN KEY([ModuleName])
REFERENCES [dbo].[Module] ([Name])
GO
ALTER TABLE [dbo].[Property] CHECK CONSTRAINT [FK_Property_ModuleName]
GO
ALTER TABLE [dbo].[Property]  WITH NOCHECK ADD  CONSTRAINT [FK_Property_PermissionProperty] FOREIGN KEY([PermissionProperty])
REFERENCES [dbo].[Property] ([Name])
GO
ALTER TABLE [dbo].[Property] CHECK CONSTRAINT [FK_Property_PermissionProperty]
GO
ALTER TABLE [dbo].[PropertyCommand]  WITH NOCHECK ADD  CONSTRAINT [FK_PropertyCommand_CommandName] FOREIGN KEY([CommandName])
REFERENCES [dbo].[Command] ([Name])
GO
ALTER TABLE [dbo].[PropertyCommand] CHECK CONSTRAINT [FK_PropertyCommand_CommandName]
GO
ALTER TABLE [dbo].[PropertyCommand]  WITH NOCHECK ADD  CONSTRAINT [FK_PropertyCommand_PropertyName] FOREIGN KEY([PropertyName])
REFERENCES [dbo].[Property] ([Name])
GO
ALTER TABLE [dbo].[PropertyCommand] CHECK CONSTRAINT [FK_PropertyCommand_PropertyName]
GO
ALTER TABLE [dbo].[Region]  WITH NOCHECK ADD  CONSTRAINT [FK_Region_DistrictId] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[District] ([Id])
GO
ALTER TABLE [dbo].[Region] CHECK CONSTRAINT [FK_Region_DistrictId]
GO
ALTER TABLE [dbo].[RoleCommand]  WITH NOCHECK ADD  CONSTRAINT [FK_RoleCommand_CommandName] FOREIGN KEY([CommandName])
REFERENCES [dbo].[Command] ([Name])
GO
ALTER TABLE [dbo].[RoleCommand] CHECK CONSTRAINT [FK_RoleCommand_CommandName]
GO
ALTER TABLE [dbo].[RoleCommand]  WITH NOCHECK ADD  CONSTRAINT [FK_RoleCommand_PropertyName] FOREIGN KEY([PropertyName])
REFERENCES [dbo].[Property] ([Name])
GO
ALTER TABLE [dbo].[RoleCommand] CHECK CONSTRAINT [FK_RoleCommand_PropertyName]
GO
ALTER TABLE [dbo].[RoleCommand]  WITH NOCHECK ADD  CONSTRAINT [FK_RoleCommand_RoleName] FOREIGN KEY([RoleName])
REFERENCES [dbo].[Role] ([Name])
GO
ALTER TABLE [dbo].[RoleCommand] CHECK CONSTRAINT [FK_RoleCommand_RoleName]
GO
ALTER TABLE [dbo].[RoleProperty]  WITH NOCHECK ADD  CONSTRAINT [FK_RoleProperty_PropertyName] FOREIGN KEY([PropertyName])
REFERENCES [dbo].[Property] ([Name])
GO
ALTER TABLE [dbo].[RoleProperty] CHECK CONSTRAINT [FK_RoleProperty_PropertyName]
GO
ALTER TABLE [dbo].[RoleProperty]  WITH NOCHECK ADD  CONSTRAINT [FK_RoleProperty_RoleName] FOREIGN KEY([RoleName])
REFERENCES [dbo].[Role] ([Name])
GO
ALTER TABLE [dbo].[RoleProperty] CHECK CONSTRAINT [FK_RoleProperty_RoleName]
GO
ALTER TABLE [dbo].[RoleWiseReportConfigurationDetails]  WITH CHECK ADD  CONSTRAINT [FK_RoleWiseReportConfigurationDetails_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[RoleWiseReportConfigurationDetails] CHECK CONSTRAINT [FK_RoleWiseReportConfigurationDetails_CreatedBy]
GO
ALTER TABLE [dbo].[RoleWiseReportConfigurationDetails]  WITH CHECK ADD  CONSTRAINT [FK_RoleWiseReportConfigurationDetails_MasterId] FOREIGN KEY([MasterId])
REFERENCES [dbo].[RoleWiseReportConfigurationMaster] ([Id])
GO
ALTER TABLE [dbo].[RoleWiseReportConfigurationDetails] CHECK CONSTRAINT [FK_RoleWiseReportConfigurationDetails_MasterId]
GO
ALTER TABLE [dbo].[RoleWiseReportConfigurationMaster]  WITH CHECK ADD  CONSTRAINT [FK_RoleWiseReportConfigurationMaster_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[RoleWiseReportConfigurationMaster] CHECK CONSTRAINT [FK_RoleWiseReportConfigurationMaster_CreatedBy]
GO
ALTER TABLE [dbo].[RoleWiseReportConfigurationMaster]  WITH CHECK ADD  CONSTRAINT [FK_RoleWiseReportConfigurationMaster_RoleName] FOREIGN KEY([RoleName])
REFERENCES [dbo].[Role] ([Name])
GO
ALTER TABLE [dbo].[RoleWiseReportConfigurationMaster] CHECK CONSTRAINT [FK_RoleWiseReportConfigurationMaster_RoleName]
GO
ALTER TABLE [dbo].[SmsChargeConfiguration]  WITH CHECK ADD  CONSTRAINT [FK_SmsChargeConfiguration_Duration] FOREIGN KEY([P_Duration])
REFERENCES [dbo].[P_Duration] ([Duration])
GO
ALTER TABLE [dbo].[SmsChargeConfiguration] CHECK CONSTRAINT [FK_SmsChargeConfiguration_Duration]
GO
ALTER TABLE [dbo].[SmsChargeConfiguration]  WITH CHECK ADD  CONSTRAINT [FK_SmsChargeConfiguration_InstallmentType] FOREIGN KEY([P_InstallmentType])
REFERENCES [dbo].[P_InstallmentType] ([InstallmentType])
GO
ALTER TABLE [dbo].[SmsChargeConfiguration] CHECK CONSTRAINT [FK_SmsChargeConfiguration_InstallmentType]
GO
ALTER TABLE [dbo].[SmsChargeConfiguration]  WITH CHECK ADD  CONSTRAINT [FK_SmsChargeConfiguration_ProgramId] FOREIGN KEY([P_ProgramId])
REFERENCES [dbo].[P_Program] ([Id])
GO
ALTER TABLE [dbo].[SmsChargeConfiguration] CHECK CONSTRAINT [FK_SmsChargeConfiguration_ProgramId]
GO
ALTER TABLE [dbo].[SMSDateRange]  WITH CHECK ADD  CONSTRAINT [FK_SMSDateRange_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[SMSDateRange] CHECK CONSTRAINT [FK_SMSDateRange_CreatedBy]
GO
ALTER TABLE [dbo].[SMSEmailNotificationConfig]  WITH CHECK ADD  CONSTRAINT [FK_SMSEmailNotificationConfig_HRM_EmployeeId] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[HRM_Employee] ([Id])
GO
ALTER TABLE [dbo].[SMSEmailNotificationConfig] CHECK CONSTRAINT [FK_SMSEmailNotificationConfig_HRM_EmployeeId]
GO
ALTER TABLE [dbo].[SMSFormat]  WITH CHECK ADD  CONSTRAINT [FK_SMSFormat_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[SMSFormat] CHECK CONSTRAINT [FK_SMSFormat_CreatedBy]
GO
ALTER TABLE [dbo].[SMSLog]  WITH NOCHECK ADD  CONSTRAINT [FK_SMSLog_B_TransactionId] FOREIGN KEY([B_TransactionId])
REFERENCES [dbo].[B_Transaction] ([Id])
GO
ALTER TABLE [dbo].[SMSLog] CHECK CONSTRAINT [FK_SMSLog_B_TransactionId]
GO
ALTER TABLE [dbo].[SMSLog]  WITH NOCHECK ADD  CONSTRAINT [FK_SMSLog_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[SMSLog] CHECK CONSTRAINT [FK_SMSLog_CreatedBy]
GO
ALTER TABLE [dbo].[SmsOTP]  WITH CHECK ADD  CONSTRAINT [FK_SmsOTP_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[SmsOTP] CHECK CONSTRAINT [FK_SmsOTP_UserId]
GO
ALTER TABLE [dbo].[User]  WITH NOCHECK ADD  CONSTRAINT [FK_User_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_CreatedBy]
GO
ALTER TABLE [dbo].[User]  WITH NOCHECK ADD  CONSTRAINT [FK_User_HRM_EmployeeId] FOREIGN KEY([HRM_EmployeeId])
REFERENCES [dbo].[HRM_Employee] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_HRM_EmployeeId]
GO
ALTER TABLE [dbo].[User]  WITH NOCHECK ADD  CONSTRAINT [FK_User_LastModifiedBy] FOREIGN KEY([LastModifiedBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_LastModifiedBy]
GO
ALTER TABLE [dbo].[UserBranch]  WITH NOCHECK ADD  CONSTRAINT [FK_UserBranch_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[UserBranch] CHECK CONSTRAINT [FK_UserBranch_BranchId]
GO
ALTER TABLE [dbo].[UserBranch]  WITH NOCHECK ADD  CONSTRAINT [FK_UserBranch_UserLogin] FOREIGN KEY([UserLogin])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[UserBranch] CHECK CONSTRAINT [FK_UserBranch_UserLogin]
GO
ALTER TABLE [dbo].[UserFingerprintHistory]  WITH CHECK ADD  CONSTRAINT [FK_UserFingerprintHistory_Login] FOREIGN KEY([Login])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[UserFingerprintHistory] CHECK CONSTRAINT [FK_UserFingerprintHistory_Login]
GO
ALTER TABLE [dbo].[UserFingerTemplate]  WITH CHECK ADD  CONSTRAINT [FK_UserFingerTemplate_Login] FOREIGN KEY([Login])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[UserFingerTemplate] CHECK CONSTRAINT [FK_UserFingerTemplate_Login]
GO
ALTER TABLE [dbo].[UserLoginHistory]  WITH NOCHECK ADD  CONSTRAINT [FK_UserLoginHistory_User_Login] FOREIGN KEY([UserLogin])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[UserLoginHistory] CHECK CONSTRAINT [FK_UserLoginHistory_User_Login]
GO
ALTER TABLE [dbo].[UserRole]  WITH NOCHECK ADD  CONSTRAINT [FK_UserRole_RoleName] FOREIGN KEY([RoleName])
REFERENCES [dbo].[Role] ([Name])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_RoleName]
GO
ALTER TABLE [dbo].[UserRole]  WITH NOCHECK ADD  CONSTRAINT [FK_UserRole_UserLogin] FOREIGN KEY([UserLogin])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_UserLogin]
GO
ALTER TABLE [dbo].[UserRoleBranch]  WITH NOCHECK ADD  CONSTRAINT [FK_UserRoleBranch_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[UserRoleBranch] CHECK CONSTRAINT [FK_UserRoleBranch_BranchId]
GO
ALTER TABLE [dbo].[UserRoleBranch]  WITH NOCHECK ADD  CONSTRAINT [FK_UserRoleBranch_RoleName] FOREIGN KEY([RoleName])
REFERENCES [dbo].[Role] ([Name])
GO
ALTER TABLE [dbo].[UserRoleBranch] CHECK CONSTRAINT [FK_UserRoleBranch_RoleName]
GO
ALTER TABLE [dbo].[UserRoleBranch]  WITH NOCHECK ADD  CONSTRAINT [FK_UserRoleBranch_UserLogin] FOREIGN KEY([UserLogin])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[UserRoleBranch] CHECK CONSTRAINT [FK_UserRoleBranch_UserLogin]
GO
ALTER TABLE [dbo].[UserRolePermission]  WITH CHECK ADD  CONSTRAINT [FK_UserRolePermission_User] FOREIGN KEY([UserLogin])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[UserRolePermission] CHECK CONSTRAINT [FK_UserRolePermission_User]
GO
ALTER TABLE [dbo].[UserRolePermission]  WITH CHECK ADD  CONSTRAINT [FK_UserRolePermission_UserRole] FOREIGN KEY([RoleName])
REFERENCES [dbo].[Role] ([Name])
GO
ALTER TABLE [dbo].[UserRolePermission] CHECK CONSTRAINT [FK_UserRolePermission_UserRole]
GO
ALTER TABLE [dbo].[UserStatus]  WITH CHECK ADD  CONSTRAINT [FK_UserStatus_UserLogin] FOREIGN KEY([UserLogin])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[UserStatus] CHECK CONSTRAINT [FK_UserStatus_UserLogin]
GO
ALTER TABLE [dbo].[WorkingDay]  WITH NOCHECK ADD  CONSTRAINT [FK_WorkingDay_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[WorkingDay] CHECK CONSTRAINT [FK_WorkingDay_BranchId]
GO
ALTER TABLE [dbo].[WorkingDay]  WITH NOCHECK ADD  CONSTRAINT [FK_WorkingDay_ClosingBy] FOREIGN KEY([ClosingBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[WorkingDay] CHECK CONSTRAINT [FK_WorkingDay_ClosingBy]
GO
ALTER TABLE [dbo].[WorkingDay]  WITH NOCHECK ADD  CONSTRAINT [FK_WorkingDay_OpeningBy] FOREIGN KEY([OpeningBy])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[WorkingDay] CHECK CONSTRAINT [FK_WorkingDay_OpeningBy]
GO
ALTER TABLE [dbo].[Zone]  WITH NOCHECK ADD  CONSTRAINT [FK_Zone_StateId] FOREIGN KEY([StateId])
REFERENCES [dbo].[State] ([Id])
GO
ALTER TABLE [dbo].[Zone] CHECK CONSTRAINT [FK_Zone_StateId]
GO
ALTER TABLE [dbo].[P_Schedule]  WITH NOCHECK ADD  CONSTRAINT [CT_P_Schedule_OutstandingAmount] CHECK  (([OutstandingAmount]>=(-0.00001)))
GO
ALTER TABLE [dbo].[P_Schedule] CHECK CONSTRAINT [CT_P_Schedule_OutstandingAmount]
GO
ALTER TABLE [dbo].[P_Schedule]  WITH NOCHECK ADD  CONSTRAINT [CT_P_Schedule_PrincipalOutstanding] CHECK  (([PrincipalOutstanding]>=(-0.00001)))
GO
ALTER TABLE [dbo].[P_Schedule] CHECK CONSTRAINT [CT_P_Schedule_PrincipalOutstanding]
GO
