USE [Ecommerce]
GO
/****** Object:  UserDefinedFunction [dbo].[sm_getnotnullnotempty]    Script Date: 7/2/2020 12:07:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[sm_getnotnullnotempty]
(
    @p1 nvarchar(max) = null, 
    @p2 nvarchar(max) = null
)
RETURNS nvarchar(max)
AS
BEGIN
    IF @p1 IS NULL
        return @p2
    IF @p1 =''
        return @p2

    return @p1
END
GO
/****** Object:  UserDefinedFunction [dbo].[sm_getprimarykey_indexname]    Script Date: 7/2/2020 12:07:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[sm_getprimarykey_indexname]
(
    @table_name nvarchar(1000) = null
)
RETURNS nvarchar(1000)
AS
BEGIN
	DECLARE @index_name nvarchar(1000)

    SELECT @index_name = i.name
	FROM sys.tables AS tbl
	INNER JOIN sys.indexes AS i ON (i.index_id > 0 and i.is_hypothetical = 0) AND (i.object_id=tbl.object_id)
	WHERE (i.is_unique=1 and i.is_disabled=0) and (tbl.name=@table_name)

    RETURN @index_name
END
GO
/****** Object:  UserDefinedFunction [dbo].[sm_splitstring_to_table]    Script Date: 7/2/2020 12:07:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[sm_splitstring_to_table]
(
    @string NVARCHAR(MAX),
    @delimiter CHAR(1)
)
RETURNS @output TABLE(
    data NVARCHAR(MAX)
)
BEGIN
    DECLARE @start INT, @end INT
    SELECT @start = 1, @end = CHARINDEX(@delimiter, @string)

    WHILE @start < LEN(@string) + 1 BEGIN
        IF @end = 0 
            SET @end = LEN(@string) + 1

        INSERT INTO @output (data) 
        VALUES(SUBSTRING(@string, @start, @end - @start))
        SET @start = @end + 1
        SET @end = CHARINDEX(@delimiter, @string, @start)
    END
    RETURN
END
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 7/2/2020 12:07:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AclRecord]    Script Date: 7/2/2020 12:07:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AclRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EntityId] [int] NOT NULL,
	[EntityName] [nvarchar](400) NOT NULL,
	[CustomerRoleId] [int] NOT NULL,
	[IsIdle] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.AclRecord] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActivityLog]    Script Date: 7/2/2020 12:07:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivityLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ActivityLogTypeId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[Comment] [nvarchar](max) NOT NULL,
	[CreatedOnUtc] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.ActivityLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActivityLogType]    Script Date: 7/2/2020 12:07:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivityLogType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SystemKeyword] [nvarchar](100) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Enabled] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.ActivityLogType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 7/2/2020 12:07:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Salutation] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[FirstName] [nvarchar](4000) NULL,
	[LastName] [nvarchar](4000) NULL,
	[Email] [nvarchar](4000) NULL,
	[Company] [nvarchar](4000) NULL,
	[CountryId] [int] NULL,
	[StateProvinceId] [int] NULL,
	[City] [nvarchar](4000) NULL,
	[Address1] [nvarchar](4000) NULL,
	[Address2] [nvarchar](4000) NULL,
	[ZipPostalCode] [nvarchar](4000) NULL,
	[PhoneNumber] [nvarchar](4000) NULL,
	[FaxNumber] [nvarchar](4000) NULL,
	[CreatedOnUtc] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Address] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Affiliate]    Script Date: 7/2/2020 12:07:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Affiliate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AddressId] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Affiliate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BackInStockSubscription]    Script Date: 7/2/2020 12:07:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BackInStockSubscription](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StoreId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[CreatedOnUtc] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.BackInStockSubscription] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BlogComment]    Script Date: 7/2/2020 12:07:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogComment](
	[Id] [int] NOT NULL,
	[CommentText] [nvarchar](max) NULL,
	[BlogPostId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.BlogComment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BlogPost]    Script Date: 7/2/2020 12:07:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogPost](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LanguageId] [int] NOT NULL,
	[Title] [nvarchar](4000) NOT NULL,
	[Body] [nvarchar](max) NOT NULL,
	[AllowComments] [bit] NOT NULL,
	[ApprovedCommentCount] [int] NOT NULL,
	[NotApprovedCommentCount] [int] NOT NULL,
	[Tags] [nvarchar](4000) NULL,
	[StartDateUtc] [datetime] NULL,
	[EndDateUtc] [datetime] NULL,
	[MetaKeywords] [nvarchar](400) NULL,
	[MetaDescription] [nvarchar](4000) NULL,
	[MetaTitle] [nvarchar](400) NULL,
	[LimitedToStores] [bit] NOT NULL,
	[CreatedOnUtc] [datetime] NOT NULL,
	[MediaFileId] [int] NULL,
	[PreviewMediaFileId] [int] NULL,
	[SectionBg] [nvarchar](100) NULL,
	[Intro] [nvarchar](max) NULL,
	[DisplayTagsInPreview] [bit] NOT NULL,
	[IsPublished] [bit] NOT NULL,
	[PreviewDisplayType] [int] NOT NULL,
 CONSTRAINT [PK_dbo.BlogPost] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Campaign]    Script Date: 7/2/2020 12:07:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Campaign](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](4000) NOT NULL,
	[Subject] [nvarchar](4000) NOT NULL,
	[Body] [nvarchar](max) NOT NULL,
	[CreatedOnUtc] [datetime] NOT NULL,
	[LimitedToStores] [bit] NOT NULL,
	[SubjectToAcl] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Campaign] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/2/2020 12:07:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](400) NOT NULL,
	[FullName] [nvarchar](400) NULL,
	[Description] [nvarchar](max) NULL,
	[BottomDescription] [nvarchar](max) NULL,
	[BadgeText] [nvarchar](400) NULL,
	[BadgeStyle] [int] NOT NULL,
	[Alias] [nvarchar](100) NULL,
	[CategoryTemplateId] [int] NOT NULL,
	[MetaKeywords] [nvarchar](400) NULL,
	[MetaDescription] [nvarchar](4000) NULL,
	[MetaTitle] [nvarchar](400) NULL,
	[ParentCategoryId] [int] NOT NULL,
	[MediaFileId] [int] NULL,
	[PageSize] [int] NULL,
	[AllowCustomersToSelectPageSize] [bit] NULL,
	[PageSizeOptions] [nvarchar](200) NULL,
	[PriceRanges] [nvarchar](400) NULL,
	[ShowOnHomePage] [bit] NOT NULL,
	[HasDiscountsApplied] [bit] NOT NULL,
	[SubjectToAcl] [bit] NOT NULL,
	[LimitedToStores] [bit] NOT NULL,
	[Published] [bit] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[CreatedOnUtc] [datetime] NOT NULL,
	[UpdatedOnUtc] [datetime] NOT NULL,
	[DefaultViewMode] [nvarchar](max) NULL,
	[ExternalLink] [nvarchar](255) NULL,
 CONSTRAINT [PK_dbo.Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryTemplate]    Script Date: 7/2/2020 12:07:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryTemplate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](400) NOT NULL,
	[ViewPath] [nvarchar](400) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_dbo.CategoryTemplate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CheckoutAttribute]    Script Date: 7/2/2020 12:07:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CheckoutAttribute](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](400) NOT NULL,
	[TextPrompt] [nvarchar](4000) NULL,
	[IsRequired] [bit] NOT NULL,
	[ShippableProductRequired] [bit] NOT NULL,
	[IsTaxExempt] [bit] NOT NULL,
	[TaxCategoryId] [int] NOT NULL,
	[AttributeControlTypeId] [int] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[LimitedToStores] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.CheckoutAttribute] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CheckoutAttributeValue]    Script Date: 7/2/2020 12:07:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CheckoutAttributeValue](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CheckoutAttributeId] [int] NOT NULL,
	[Name] [nvarchar](400) NOT NULL,
	[PriceAdjustment] [decimal](18, 4) NOT NULL,
	[WeightAdjustment] [decimal](18, 4) NOT NULL,
	[IsPreSelected] [bit] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_dbo.CheckoutAttributeValue] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 7/2/2020 12:07:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[AllowsBilling] [bit] NOT NULL,
	[AllowsShipping] [bit] NOT NULL,
	[TwoLetterIsoCode] [nvarchar](2) NULL,
	[ThreeLetterIsoCode] [nvarchar](3) NULL,
	[NumericIsoCode] [int] NOT NULL,
	[SubjectToVat] [bit] NOT NULL,
	[Published] [bit] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[LimitedToStores] [bit] NOT NULL,
	[AddressFormat] [nvarchar](max) NULL,
	[DisplayCookieManager] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Country] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CrossSellProduct]    Script Date: 7/2/2020 12:07:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CrossSellProduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId1] [int] NOT NULL,
	[ProductId2] [int] NOT NULL,
 CONSTRAINT [PK_dbo.CrossSellProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Currency]    Script Date: 7/2/2020 12:07:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Currency](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CurrencyCode] [nvarchar](5) NOT NULL,
	[Rate] [decimal](18, 8) NOT NULL,
	[DisplayLocale] [nvarchar](50) NULL,
	[CustomFormatting] [nvarchar](50) NULL,
	[LimitedToStores] [bit] NOT NULL,
	[Published] [bit] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[CreatedOnUtc] [datetime] NOT NULL,
	[UpdatedOnUtc] [datetime] NOT NULL,
	[DomainEndings] [nvarchar](1000) NULL,
	[RoundOrderItemsEnabled] [bit] NOT NULL,
	[RoundNumDecimals] [int] NOT NULL,
	[RoundOrderTotalEnabled] [bit] NOT NULL,
	[RoundOrderTotalDenominator] [decimal](18, 4) NOT NULL,
	[RoundOrderTotalRule] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Currency] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 7/2/2020 12:07:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerGuid] [uniqueidentifier] NOT NULL,
	[Username] [nvarchar](500) NULL,
	[Email] [nvarchar](500) NULL,
	[Password] [nvarchar](500) NULL,
	[PasswordFormatId] [int] NOT NULL,
	[PasswordSalt] [nvarchar](500) NULL,
	[AdminComment] [nvarchar](4000) NULL,
	[IsTaxExempt] [bit] NOT NULL,
	[AffiliateId] [int] NOT NULL,
	[Active] [bit] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[IsSystemAccount] [bit] NOT NULL,
	[SystemName] [nvarchar](500) NULL,
	[LastIpAddress] [nvarchar](100) NULL,
	[CreatedOnUtc] [datetime] NOT NULL,
	[LastLoginDateUtc] [datetime] NULL,
	[LastActivityDateUtc] [datetime] NOT NULL,
	[BillingAddress_Id] [int] NULL,
	[ShippingAddress_Id] [int] NULL,
	[Salutation] [nvarchar](50) NULL,
	[Title] [nvarchar](100) NULL,
	[FirstName] [nvarchar](225) NULL,
	[LastName] [nvarchar](225) NULL,
	[FullName] [nvarchar](450) NULL,
	[Company] [nvarchar](255) NULL,
	[CustomerNumber] [nvarchar](100) NULL,
	[BirthDate] [datetime] NULL,
	[Gender] [nvarchar](max) NULL,
	[ZipPostalCode] [nvarchar](max) NULL,
	[VatNumberStatusId] [int] NOT NULL,
	[TimeZoneId] [nvarchar](max) NULL,
	[TaxDisplayTypeId] [int] NOT NULL,
	[CountryId] [int] NOT NULL,
	[CurrencyId] [int] NULL,
	[LanguageId] [int] NOT NULL,
	[LastForumVisit] [datetime] NULL,
	[LastUserAgent] [nvarchar](max) NULL,
	[LastUserDeviceType] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Customer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerAddresses]    Script Date: 7/2/2020 12:07:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerAddresses](
	[Customer_Id] [int] NOT NULL,
	[Address_Id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.CustomerAddresses] PRIMARY KEY CLUSTERED 
(
	[Customer_Id] ASC,
	[Address_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerContent]    Script Date: 7/2/2020 12:07:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerContent](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[IpAddress] [nvarchar](200) NULL,
	[IsApproved] [bit] NOT NULL,
	[CreatedOnUtc] [datetime] NOT NULL,
	[UpdatedOnUtc] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.CustomerContent] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerRole]    Script Date: 7/2/2020 12:07:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerRole](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[FreeShipping] [bit] NOT NULL,
	[TaxExempt] [bit] NOT NULL,
	[TaxDisplayType] [int] NULL,
	[Active] [bit] NOT NULL,
	[IsSystemRole] [bit] NOT NULL,
	[SystemName] [nvarchar](255) NULL,
 CONSTRAINT [PK_dbo.CustomerRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerRoleMapping]    Script Date: 7/2/2020 12:07:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerRoleMapping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[CustomerRoleId] [int] NOT NULL,
	[IsSystemMapping] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.CustomerRoleMapping] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeliveryTime]    Script Date: 7/2/2020 12:07:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliveryTime](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ColorHexValue] [nvarchar](50) NOT NULL,
	[DisplayLocale] [nvarchar](50) NULL,
	[DisplayOrder] [int] NOT NULL,
	[IsDefault] [bit] NULL,
 CONSTRAINT [PK_dbo.DeliveryTime] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discount]    Script Date: 7/2/2020 12:07:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discount](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[DiscountTypeId] [int] NOT NULL,
	[UsePercentage] [bit] NOT NULL,
	[DiscountPercentage] [decimal](18, 4) NOT NULL,
	[DiscountAmount] [decimal](18, 4) NOT NULL,
	[StartDateUtc] [datetime] NULL,
	[EndDateUtc] [datetime] NULL,
	[RequiresCouponCode] [bit] NOT NULL,
	[CouponCode] [nvarchar](100) NULL,
	[DiscountLimitationId] [int] NOT NULL,
	[LimitationTimes] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Discount] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discount_AppliedToCategories]    Script Date: 7/2/2020 12:07:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discount_AppliedToCategories](
	[Discount_Id] [int] NOT NULL,
	[Category_Id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Discount_AppliedToCategories] PRIMARY KEY CLUSTERED 
(
	[Discount_Id] ASC,
	[Category_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discount_AppliedToManufacturers]    Script Date: 7/2/2020 12:07:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discount_AppliedToManufacturers](
	[Discount_Id] [int] NOT NULL,
	[Manufacturer_Id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Discount_AppliedToManufacturers] PRIMARY KEY CLUSTERED 
(
	[Discount_Id] ASC,
	[Manufacturer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discount_AppliedToProducts]    Script Date: 7/2/2020 12:07:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discount_AppliedToProducts](
	[Discount_Id] [int] NOT NULL,
	[Product_Id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Discount_AppliedToProducts] PRIMARY KEY CLUSTERED 
(
	[Discount_Id] ASC,
	[Product_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiscountUsageHistory]    Script Date: 7/2/2020 12:07:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiscountUsageHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DiscountId] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
	[CreatedOnUtc] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.DiscountUsageHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Download]    Script Date: 7/2/2020 12:07:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Download](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DownloadGuid] [uniqueidentifier] NOT NULL,
	[UseDownloadUrl] [bit] NOT NULL,
	[DownloadUrl] [nvarchar](4000) NULL,
	[IsTransient] [bit] NOT NULL,
	[UpdatedOnUtc] [datetime] NOT NULL,
	[EntityId] [int] NOT NULL,
	[EntityName] [nvarchar](100) NOT NULL,
	[FileVersion] [nvarchar](30) NULL,
	[Changelog] [nvarchar](max) NULL,
	[MediaFileId] [int] NULL,
 CONSTRAINT [PK_dbo.Download] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailAccount]    Script Date: 7/2/2020 12:07:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailAccount](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[DisplayName] [nvarchar](255) NULL,
	[Host] [nvarchar](255) NOT NULL,
	[Port] [int] NOT NULL,
	[Username] [nvarchar](255) NOT NULL,
	[Password] [nvarchar](255) NOT NULL,
	[EnableSsl] [bit] NOT NULL,
	[UseDefaultCredentials] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.EmailAccount] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExportDeployment]    Script Date: 7/2/2020 12:07:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExportDeployment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProfileId] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Enabled] [bit] NOT NULL,
	[ResultInfo] [nvarchar](max) NULL,
	[DeploymentTypeId] [int] NOT NULL,
	[Username] [nvarchar](400) NULL,
	[Password] [nvarchar](400) NULL,
	[Url] [nvarchar](4000) NULL,
	[HttpTransmissionTypeId] [int] NOT NULL,
	[HttpTransmissionType] [int] NOT NULL,
	[FileSystemPath] [nvarchar](400) NULL,
	[SubFolder] [nvarchar](400) NULL,
	[EmailAddresses] [nvarchar](4000) NULL,
	[EmailSubject] [nvarchar](400) NULL,
	[EmailAccountId] [int] NOT NULL,
	[PassiveMode] [bit] NOT NULL,
	[UseSsl] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.ExportDeployment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExportProfile]    Script Date: 7/2/2020 12:07:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExportProfile](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[FolderName] [nvarchar](400) NOT NULL,
	[FileNamePattern] [nvarchar](400) NULL,
	[SystemName] [nvarchar](400) NULL,
	[ProviderSystemName] [nvarchar](4000) NOT NULL,
	[IsSystemProfile] [bit] NOT NULL,
	[Enabled] [bit] NOT NULL,
	[SchedulingTaskId] [int] NOT NULL,
	[Filtering] [nvarchar](max) NULL,
	[Projection] [nvarchar](max) NULL,
	[ProviderConfigData] [nvarchar](max) NULL,
	[ResultInfo] [nvarchar](max) NULL,
	[Offset] [int] NOT NULL,
	[Limit] [int] NOT NULL,
	[BatchSize] [int] NOT NULL,
	[PerStore] [bit] NOT NULL,
	[EmailAccountId] [int] NOT NULL,
	[CompletedEmailAddresses] [nvarchar](400) NULL,
	[CreateZipArchive] [bit] NOT NULL,
	[Cleanup] [bit] NOT NULL,
	[ExportRelatedData] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.ExportProfile] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExternalAuthenticationRecord]    Script Date: 7/2/2020 12:07:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExternalAuthenticationRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[Email] [nvarchar](4000) NULL,
	[ExternalIdentifier] [nvarchar](4000) NULL,
	[ExternalDisplayIdentifier] [nvarchar](4000) NULL,
	[OAuthToken] [nvarchar](4000) NULL,
	[OAuthAccessToken] [nvarchar](4000) NULL,
	[ProviderSystemName] [nvarchar](4000) NULL,
 CONSTRAINT [PK_dbo.ExternalAuthenticationRecord] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ForumPostVote]    Script Date: 7/2/2020 12:07:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ForumPostVote](
	[Id] [int] NOT NULL,
	[ForumPostId] [int] NOT NULL,
	[Vote] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.ForumPostVote] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Forums_Forum]    Script Date: 7/2/2020 12:07:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Forums_Forum](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ForumGroupId] [int] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[NumTopics] [int] NOT NULL,
	[NumPosts] [int] NOT NULL,
	[LastTopicId] [int] NOT NULL,
	[LastPostId] [int] NOT NULL,
	[LastPostCustomerId] [int] NOT NULL,
	[LastPostTime] [datetime] NULL,
	[DisplayOrder] [int] NOT NULL,
	[CreatedOnUtc] [datetime] NOT NULL,
	[UpdatedOnUtc] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Forums_Forum] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Forums_Group]    Script Date: 7/2/2020 12:07:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Forums_Group](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[DisplayOrder] [int] NOT NULL,
	[CreatedOnUtc] [datetime] NOT NULL,
	[UpdatedOnUtc] [datetime] NOT NULL,
	[LimitedToStores] [bit] NOT NULL,
	[SubjectToAcl] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Forums_Group] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Forums_Post]    Script Date: 7/2/2020 12:07:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Forums_Post](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TopicId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[Text] [nvarchar](max) NOT NULL,
	[IPAddress] [nvarchar](100) NULL,
	[CreatedOnUtc] [datetime] NOT NULL,
	[UpdatedOnUtc] [datetime] NOT NULL,
	[Published] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Forums_Post] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Forums_PrivateMessage]    Script Date: 7/2/2020 12:07:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Forums_PrivateMessage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StoreId] [int] NOT NULL,
	[FromCustomerId] [int] NOT NULL,
	[ToCustomerId] [int] NOT NULL,
	[Subject] [nvarchar](450) NOT NULL,
	[Text] [nvarchar](max) NOT NULL,
	[IsRead] [bit] NOT NULL,
	[IsDeletedByAuthor] [bit] NOT NULL,
	[IsDeletedByRecipient] [bit] NOT NULL,
	[CreatedOnUtc] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Forums_PrivateMessage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Forums_Subscription]    Script Date: 7/2/2020 12:07:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Forums_Subscription](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SubscriptionGuid] [uniqueidentifier] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[ForumId] [int] NOT NULL,
	[TopicId] [int] NOT NULL,
	[CreatedOnUtc] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Forums_Subscription] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Forums_Topic]    Script Date: 7/2/2020 12:07:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Forums_Topic](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ForumId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[TopicTypeId] [int] NOT NULL,
	[Subject] [nvarchar](450) NOT NULL,
	[NumPosts] [int] NOT NULL,
	[Views] [int] NOT NULL,
	[LastPostId] [int] NOT NULL,
	[LastPostCustomerId] [int] NOT NULL,
	[LastPostTime] [datetime] NULL,
	[CreatedOnUtc] [datetime] NOT NULL,
	[UpdatedOnUtc] [datetime] NOT NULL,
	[Published] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Forums_Topic] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GenericAttribute]    Script Date: 7/2/2020 12:07:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GenericAttribute](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EntityId] [int] NOT NULL,
	[KeyGroup] [nvarchar](400) NOT NULL,
	[Key] [nvarchar](400) NOT NULL,
	[Value] [nvarchar](max) NOT NULL,
	[StoreId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.GenericAttribute] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiftCard]    Script Date: 7/2/2020 12:07:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiftCard](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PurchasedWithOrderItemId] [int] NULL,
	[GiftCardTypeId] [int] NOT NULL,
	[Amount] [decimal](18, 4) NOT NULL,
	[IsGiftCardActivated] [bit] NOT NULL,
	[GiftCardCouponCode] [nvarchar](4000) NULL,
	[RecipientName] [nvarchar](4000) NULL,
	[RecipientEmail] [nvarchar](4000) NULL,
	[SenderName] [nvarchar](4000) NULL,
	[SenderEmail] [nvarchar](4000) NULL,
	[Message] [nvarchar](4000) NULL,
	[IsRecipientNotified] [bit] NOT NULL,
	[CreatedOnUtc] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.GiftCard] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiftCardUsageHistory]    Script Date: 7/2/2020 12:07:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiftCardUsageHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GiftCardId] [int] NOT NULL,
	[UsedWithOrderId] [int] NOT NULL,
	[UsedValue] [decimal](18, 4) NOT NULL,
	[CreatedOnUtc] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.GiftCardUsageHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImportProfile]    Script Date: 7/2/2020 12:07:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImportProfile](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[FolderName] [nvarchar](100) NOT NULL,
	[FileTypeId] [int] NOT NULL,
	[EntityTypeId] [int] NOT NULL,
	[Enabled] [bit] NOT NULL,
	[Skip] [int] NOT NULL,
	[Take] [int] NOT NULL,
	[UpdateOnly] [bit] NOT NULL,
	[KeyFieldNames] [nvarchar](1000) NULL,
	[FileTypeConfiguration] [nvarchar](max) NULL,
	[ExtraData] [nvarchar](max) NULL,
	[ColumnMapping] [nvarchar](max) NULL,
	[ResultInfo] [nvarchar](max) NULL,
	[SchedulingTaskId] [int] NOT NULL,
	[ImportRelatedData] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.ImportProfile] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Language]    Script Date: 7/2/2020 12:07:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Language](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[LanguageCulture] [nvarchar](20) NOT NULL,
	[UniqueSeoCode] [nvarchar](2) NULL,
	[FlagImageFileName] [nvarchar](50) NULL,
	[Rtl] [bit] NOT NULL,
	[LimitedToStores] [bit] NOT NULL,
	[Published] [bit] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Language] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LocaleStringResource]    Script Date: 7/2/2020 12:07:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocaleStringResource](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LanguageId] [int] NOT NULL,
	[ResourceName] [nvarchar](200) NOT NULL,
	[ResourceValue] [nvarchar](max) NOT NULL,
	[IsFromPlugin] [bit] NULL,
	[IsTouched] [bit] NULL,
 CONSTRAINT [PK_dbo.LocaleStringResource] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LocalizedProperty]    Script Date: 7/2/2020 12:07:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocalizedProperty](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EntityId] [int] NOT NULL,
	[LanguageId] [int] NOT NULL,
	[LocaleKeyGroup] [nvarchar](400) NOT NULL,
	[LocaleKey] [nvarchar](400) NOT NULL,
	[LocaleValue] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.LocalizedProperty] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Log]    Script Date: 7/2/2020 12:07:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LogLevelId] [int] NOT NULL,
	[ShortMessage] [nvarchar](4000) NOT NULL,
	[FullMessage] [nvarchar](max) NULL,
	[IpAddress] [nvarchar](200) NULL,
	[CustomerId] [int] NULL,
	[PageUrl] [nvarchar](1500) NULL,
	[ReferrerUrl] [nvarchar](1500) NULL,
	[CreatedOnUtc] [datetime] NOT NULL,
	[Logger] [nvarchar](400) NOT NULL,
	[HttpMethod] [nvarchar](10) NULL,
	[UserName] [nvarchar](100) NULL,
 CONSTRAINT [PK_dbo.Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 7/2/2020 12:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](400) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[ManufacturerTemplateId] [int] NOT NULL,
	[MetaKeywords] [nvarchar](400) NULL,
	[MetaDescription] [nvarchar](4000) NULL,
	[MetaTitle] [nvarchar](400) NULL,
	[MediaFileId] [int] NULL,
	[PageSize] [int] NULL,
	[AllowCustomersToSelectPageSize] [bit] NULL,
	[PageSizeOptions] [nvarchar](200) NULL,
	[PriceRanges] [nvarchar](400) NULL,
	[LimitedToStores] [bit] NOT NULL,
	[Published] [bit] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[CreatedOnUtc] [datetime] NOT NULL,
	[UpdatedOnUtc] [datetime] NOT NULL,
	[HasDiscountsApplied] [bit] NOT NULL,
	[BottomDescription] [nvarchar](max) NULL,
	[SubjectToAcl] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Manufacturer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ManufacturerTemplate]    Script Date: 7/2/2020 12:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ManufacturerTemplate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](400) NOT NULL,
	[ViewPath] [nvarchar](400) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ManufacturerTemplate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MeasureDimension]    Script Date: 7/2/2020 12:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MeasureDimension](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[SystemKeyword] [nvarchar](100) NOT NULL,
	[Ratio] [decimal](18, 8) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_dbo.MeasureDimension] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MeasureWeight]    Script Date: 7/2/2020 12:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MeasureWeight](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[SystemKeyword] [nvarchar](100) NOT NULL,
	[Ratio] [decimal](18, 8) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_dbo.MeasureWeight] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MediaFile]    Script Date: 7/2/2020 12:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MediaFile](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MimeType] [nvarchar](100) NOT NULL,
	[Width] [int] NULL,
	[Height] [int] NULL,
	[Name] [nvarchar](300) NULL,
	[IsTransient] [bit] NOT NULL,
	[UpdatedOnUtc] [datetime] NOT NULL,
	[MediaStorageId] [int] NULL,
	[FolderId] [int] NULL,
	[Alt] [nvarchar](400) NULL,
	[Title] [nvarchar](400) NULL,
	[Extension] [nvarchar](50) NULL,
	[MediaType] [nvarchar](20) NOT NULL,
	[Size] [int] NOT NULL,
	[PixelSize] [int] NULL,
	[Metadata] [nvarchar](max) NULL,
	[CreatedOnUtc] [datetime] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[Hidden] [bit] NOT NULL,
	[Version] [int] NOT NULL,
 CONSTRAINT [PK_dbo.MediaFile] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MediaFile_Tag_Mapping]    Script Date: 7/2/2020 12:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MediaFile_Tag_Mapping](
	[MediaFile_Id] [int] NOT NULL,
	[MediaTag_Id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.MediaFile_Tag_Mapping] PRIMARY KEY CLUSTERED 
(
	[MediaFile_Id] ASC,
	[MediaTag_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MediaFolder]    Script Date: 7/2/2020 12:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MediaFolder](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Slug] [nvarchar](255) NULL,
	[CanDetectTracks] [bit] NOT NULL,
	[Metadata] [nvarchar](max) NULL,
	[FilesCount] [int] NOT NULL,
	[ResKey] [nvarchar](255) NULL,
	[IncludePath] [bit] NULL,
	[Order] [int] NULL,
	[Discriminator] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.MediaFolder] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MediaStorage]    Script Date: 7/2/2020 12:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MediaStorage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Data] [varbinary](max) NOT NULL,
 CONSTRAINT [PK_dbo.MediaStorage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MediaTag]    Script Date: 7/2/2020 12:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MediaTag](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_dbo.MediaTag] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MediaTrack]    Script Date: 7/2/2020 12:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MediaTrack](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MediaFileId] [int] NOT NULL,
	[Album] [nvarchar](50) NOT NULL,
	[EntityId] [int] NOT NULL,
	[EntityName] [nvarchar](255) NOT NULL,
	[Property] [nvarchar](255) NULL,
 CONSTRAINT [PK_dbo.MediaTrack] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuItemRecord]    Script Date: 7/2/2020 12:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuItemRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MenuId] [int] NOT NULL,
	[ParentItemId] [int] NOT NULL,
	[ProviderName] [nvarchar](100) NULL,
	[Model] [nvarchar](max) NULL,
	[Title] [nvarchar](400) NULL,
	[ShortDescription] [nvarchar](400) NULL,
	[PermissionNames] [nvarchar](max) NULL,
	[Published] [bit] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[BeginGroup] [bit] NOT NULL,
	[ShowExpanded] [bit] NOT NULL,
	[NoFollow] [bit] NOT NULL,
	[NewWindow] [bit] NOT NULL,
	[Icon] [nvarchar](100) NULL,
	[Style] [nvarchar](10) NULL,
	[HtmlId] [nvarchar](100) NULL,
	[CssClass] [nvarchar](100) NULL,
	[IconColor] [nvarchar](100) NULL,
	[LimitedToStores] [bit] NOT NULL,
	[SubjectToAcl] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.MenuItemRecord] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuRecord]    Script Date: 7/2/2020 12:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SystemName] [nvarchar](400) NOT NULL,
	[IsSystemMenu] [bit] NOT NULL,
	[Template] [nvarchar](400) NULL,
	[WidgetZone] [nvarchar](4000) NULL,
	[Title] [nvarchar](400) NULL,
	[Published] [bit] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[LimitedToStores] [bit] NOT NULL,
	[SubjectToAcl] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.MenuRecord] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MessageTemplate]    Script Date: 7/2/2020 12:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MessageTemplate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[BccEmailAddresses] [nvarchar](200) NULL,
	[Subject] [nvarchar](1000) NULL,
	[Body] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[EmailAccountId] [int] NOT NULL,
	[LimitedToStores] [bit] NOT NULL,
	[SendManually] [bit] NOT NULL,
	[Attachment1FileId] [int] NULL,
	[Attachment2FileId] [int] NULL,
	[Attachment3FileId] [int] NULL,
	[To] [nvarchar](500) NOT NULL,
	[ReplyTo] [nvarchar](500) NULL,
	[ModelTypes] [nvarchar](500) NULL,
	[LastModelTree] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.MessageTemplate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 7/2/2020 12:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LanguageId] [int] NOT NULL,
	[Title] [nvarchar](4000) NOT NULL,
	[Short] [nvarchar](4000) NOT NULL,
	[Full] [nvarchar](max) NOT NULL,
	[Published] [bit] NOT NULL,
	[StartDateUtc] [datetime] NULL,
	[EndDateUtc] [datetime] NULL,
	[AllowComments] [bit] NOT NULL,
	[ApprovedCommentCount] [int] NOT NULL,
	[NotApprovedCommentCount] [int] NOT NULL,
	[LimitedToStores] [bit] NOT NULL,
	[CreatedOnUtc] [datetime] NOT NULL,
	[MetaKeywords] [nvarchar](400) NULL,
	[MetaDescription] [nvarchar](4000) NULL,
	[MetaTitle] [nvarchar](400) NULL,
	[MediaFileId] [int] NULL,
	[PreviewMediaFileId] [int] NULL,
 CONSTRAINT [PK_dbo.News] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsComment]    Script Date: 7/2/2020 12:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsComment](
	[Id] [int] NOT NULL,
	[CommentTitle] [nvarchar](4000) NULL,
	[CommentText] [nvarchar](max) NULL,
	[NewsItemId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.NewsComment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsLetterSubscription]    Script Date: 7/2/2020 12:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsLetterSubscription](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NewsLetterSubscriptionGuid] [uniqueidentifier] NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[Active] [bit] NOT NULL,
	[CreatedOnUtc] [datetime] NOT NULL,
	[StoreId] [int] NOT NULL,
	[WorkingLanguageId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.NewsLetterSubscription] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 7/2/2020 12:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderNumber] [nvarchar](4000) NULL,
	[OrderGuid] [uniqueidentifier] NOT NULL,
	[StoreId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[BillingAddressId] [int] NOT NULL,
	[ShippingAddressId] [int] NULL,
	[OrderStatusId] [int] NOT NULL,
	[ShippingStatusId] [int] NOT NULL,
	[PaymentStatusId] [int] NOT NULL,
	[PaymentMethodSystemName] [nvarchar](4000) NULL,
	[CustomerCurrencyCode] [nvarchar](4000) NULL,
	[CurrencyRate] [decimal](18, 8) NOT NULL,
	[CustomerTaxDisplayTypeId] [int] NOT NULL,
	[VatNumber] [nvarchar](4000) NULL,
	[OrderSubtotalInclTax] [decimal](18, 4) NOT NULL,
	[OrderSubtotalExclTax] [decimal](18, 4) NOT NULL,
	[OrderSubTotalDiscountInclTax] [decimal](18, 4) NOT NULL,
	[OrderSubTotalDiscountExclTax] [decimal](18, 4) NOT NULL,
	[OrderShippingInclTax] [decimal](18, 4) NOT NULL,
	[OrderShippingExclTax] [decimal](18, 4) NOT NULL,
	[OrderShippingTaxRate] [decimal](18, 4) NOT NULL,
	[PaymentMethodAdditionalFeeInclTax] [decimal](18, 4) NOT NULL,
	[PaymentMethodAdditionalFeeExclTax] [decimal](18, 4) NOT NULL,
	[PaymentMethodAdditionalFeeTaxRate] [decimal](18, 4) NOT NULL,
	[TaxRates] [nvarchar](4000) NULL,
	[OrderTax] [decimal](18, 4) NOT NULL,
	[OrderDiscount] [decimal](18, 4) NOT NULL,
	[OrderTotal] [decimal](18, 4) NOT NULL,
	[RefundedAmount] [decimal](18, 4) NOT NULL,
	[RewardPointsWereAdded] [bit] NOT NULL,
	[CheckoutAttributeDescription] [nvarchar](max) NULL,
	[CheckoutAttributesXml] [nvarchar](max) NULL,
	[CustomerLanguageId] [int] NOT NULL,
	[AffiliateId] [int] NOT NULL,
	[CustomerIp] [nvarchar](4000) NULL,
	[AllowStoringCreditCardNumber] [bit] NOT NULL,
	[CardType] [nvarchar](4000) NULL,
	[CardName] [nvarchar](4000) NULL,
	[CardNumber] [nvarchar](4000) NULL,
	[MaskedCreditCardNumber] [nvarchar](4000) NULL,
	[CardCvv2] [nvarchar](4000) NULL,
	[CardExpirationMonth] [nvarchar](4000) NULL,
	[CardExpirationYear] [nvarchar](4000) NULL,
	[AllowStoringDirectDebit] [bit] NOT NULL,
	[DirectDebitAccountHolder] [nvarchar](4000) NULL,
	[DirectDebitAccountNumber] [nvarchar](4000) NULL,
	[DirectDebitBankCode] [nvarchar](4000) NULL,
	[DirectDebitBankName] [nvarchar](4000) NULL,
	[DirectDebitBIC] [nvarchar](4000) NULL,
	[DirectDebitCountry] [nvarchar](4000) NULL,
	[DirectDebitIban] [nvarchar](4000) NULL,
	[CustomerOrderComment] [nvarchar](max) NULL,
	[AuthorizationTransactionId] [nvarchar](4000) NULL,
	[AuthorizationTransactionCode] [nvarchar](4000) NULL,
	[AuthorizationTransactionResult] [nvarchar](4000) NULL,
	[CaptureTransactionId] [nvarchar](4000) NULL,
	[CaptureTransactionResult] [nvarchar](4000) NULL,
	[SubscriptionTransactionId] [nvarchar](4000) NULL,
	[PurchaseOrderNumber] [nvarchar](4000) NULL,
	[PaidDateUtc] [datetime] NULL,
	[ShippingMethod] [nvarchar](4000) NULL,
	[ShippingRateComputationMethodSystemName] [nvarchar](4000) NULL,
	[Deleted] [bit] NOT NULL,
	[CreatedOnUtc] [datetime] NOT NULL,
	[UpdatedOnUtc] [datetime] NOT NULL,
	[RewardPointsRemaining] [int] NULL,
	[HasNewPaymentNotification] [bit] NOT NULL,
	[AcceptThirdPartyEmailHandOver] [bit] NOT NULL,
	[OrderTotalRounding] [decimal](18, 4) NOT NULL,
	[CreditBalance] [decimal](18, 4) NOT NULL,
 CONSTRAINT [PK_dbo.Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItem]    Script Date: 7/2/2020 12:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderItemGuid] [uniqueidentifier] NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitPriceInclTax] [decimal](18, 4) NOT NULL,
	[UnitPriceExclTax] [decimal](18, 4) NOT NULL,
	[PriceInclTax] [decimal](18, 4) NOT NULL,
	[PriceExclTax] [decimal](18, 4) NOT NULL,
	[TaxRate] [decimal](18, 4) NOT NULL,
	[DiscountAmountInclTax] [decimal](18, 4) NOT NULL,
	[DiscountAmountExclTax] [decimal](18, 4) NOT NULL,
	[AttributeDescription] [nvarchar](max) NULL,
	[AttributesXml] [nvarchar](max) NULL,
	[DownloadCount] [int] NOT NULL,
	[IsDownloadActivated] [bit] NOT NULL,
	[LicenseDownloadId] [int] NULL,
	[ItemWeight] [decimal](18, 4) NULL,
	[BundleData] [nvarchar](max) NULL,
	[ProductCost] [decimal](18, 4) NOT NULL,
	[DeliveryTimeId] [int] NULL,
	[DisplayDeliveryTime] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.OrderItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderNote]    Script Date: 7/2/2020 12:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderNote](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[Note] [nvarchar](max) NOT NULL,
	[DisplayToCustomer] [bit] NOT NULL,
	[CreatedOnUtc] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.OrderNote] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentMethod]    Script Date: 7/2/2020 12:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentMethod](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PaymentMethodSystemName] [nvarchar](4000) NOT NULL,
	[FullDescription] [nvarchar](4000) NULL,
	[RoundOrderTotalEnabled] [bit] NOT NULL,
	[LimitedToStores] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.PaymentMethod] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PermissionRecord]    Script Date: 7/2/2020 12:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SystemName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_dbo.PermissionRecord] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PermissionRoleMapping]    Script Date: 7/2/2020 12:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionRoleMapping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Allow] [bit] NOT NULL,
	[PermissionRecordId] [int] NOT NULL,
	[CustomerRoleId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.PermissionRoleMapping] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Poll]    Script Date: 7/2/2020 12:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Poll](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LanguageId] [int] NOT NULL,
	[Name] [nvarchar](4000) NOT NULL,
	[SystemKeyword] [nvarchar](4000) NULL,
	[Published] [bit] NOT NULL,
	[ShowOnHomePage] [bit] NOT NULL,
	[AllowGuestsToVote] [bit] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[StartDateUtc] [datetime] NULL,
	[EndDateUtc] [datetime] NULL,
	[LimitedToStores] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Poll] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PollAnswer]    Script Date: 7/2/2020 12:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PollAnswer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PollId] [int] NOT NULL,
	[Name] [nvarchar](4000) NOT NULL,
	[NumberOfVotes] [int] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_dbo.PollAnswer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PollVotingRecord]    Script Date: 7/2/2020 12:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PollVotingRecord](
	[Id] [int] NOT NULL,
	[PollAnswerId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.PollVotingRecord] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/2/2020 12:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductTypeId] [int] NOT NULL,
	[ParentGroupedProductId] [int] NOT NULL,
	[VisibleIndividually] [bit] NOT NULL,
	[Name] [nvarchar](400) NOT NULL,
	[ShortDescription] [nvarchar](4000) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[AdminComment] [nvarchar](4000) NULL,
	[ProductTemplateId] [int] NOT NULL,
	[ShowOnHomePage] [bit] NOT NULL,
	[HomePageDisplayOrder] [int] NOT NULL,
	[MetaKeywords] [nvarchar](400) NULL,
	[MetaDescription] [nvarchar](4000) NULL,
	[MetaTitle] [nvarchar](400) NULL,
	[AllowCustomerReviews] [bit] NOT NULL,
	[ApprovedRatingSum] [int] NOT NULL,
	[NotApprovedRatingSum] [int] NOT NULL,
	[ApprovedTotalReviews] [int] NOT NULL,
	[NotApprovedTotalReviews] [int] NOT NULL,
	[SubjectToAcl] [bit] NOT NULL,
	[LimitedToStores] [bit] NOT NULL,
	[Sku] [nvarchar](400) NULL,
	[ManufacturerPartNumber] [nvarchar](400) NULL,
	[Gtin] [nvarchar](400) NULL,
	[IsGiftCard] [bit] NOT NULL,
	[GiftCardTypeId] [int] NOT NULL,
	[RequireOtherProducts] [bit] NOT NULL,
	[RequiredProductIds] [nvarchar](1000) NULL,
	[AutomaticallyAddRequiredProducts] [bit] NOT NULL,
	[IsDownload] [bit] NOT NULL,
	[DownloadId] [int] NOT NULL,
	[UnlimitedDownloads] [bit] NOT NULL,
	[MaxNumberOfDownloads] [int] NOT NULL,
	[DownloadExpirationDays] [int] NULL,
	[DownloadActivationTypeId] [int] NOT NULL,
	[HasSampleDownload] [bit] NOT NULL,
	[SampleDownloadId] [int] NULL,
	[HasUserAgreement] [bit] NOT NULL,
	[UserAgreementText] [nvarchar](4000) NULL,
	[IsRecurring] [bit] NOT NULL,
	[RecurringCycleLength] [int] NOT NULL,
	[RecurringCyclePeriodId] [int] NOT NULL,
	[RecurringTotalCycles] [int] NOT NULL,
	[IsShipEnabled] [bit] NOT NULL,
	[IsFreeShipping] [bit] NOT NULL,
	[AdditionalShippingCharge] [decimal](18, 4) NOT NULL,
	[IsTaxExempt] [bit] NOT NULL,
	[IsEsd] [bit] NOT NULL,
	[TaxCategoryId] [int] NOT NULL,
	[ManageInventoryMethodId] [int] NOT NULL,
	[StockQuantity] [int] NOT NULL,
	[DisplayStockAvailability] [bit] NOT NULL,
	[DisplayStockQuantity] [bit] NOT NULL,
	[MinStockQuantity] [int] NOT NULL,
	[LowStockActivityId] [int] NOT NULL,
	[NotifyAdminForQuantityBelow] [int] NOT NULL,
	[BackorderModeId] [int] NOT NULL,
	[AllowBackInStockSubscriptions] [bit] NOT NULL,
	[OrderMinimumQuantity] [int] NOT NULL,
	[OrderMaximumQuantity] [int] NOT NULL,
	[QuantityStep] [int] NOT NULL,
	[QuantiyControlType] [int] NOT NULL,
	[HideQuantityControl] [bit] NOT NULL,
	[AllowedQuantities] [nvarchar](1000) NULL,
	[DisableBuyButton] [bit] NOT NULL,
	[DisableWishlistButton] [bit] NOT NULL,
	[AvailableForPreOrder] [bit] NOT NULL,
	[CallForPrice] [bit] NOT NULL,
	[Price] [decimal](18, 4) NOT NULL,
	[OldPrice] [decimal](18, 4) NOT NULL,
	[ProductCost] [decimal](18, 4) NOT NULL,
	[SpecialPrice] [decimal](18, 4) NULL,
	[SpecialPriceStartDateTimeUtc] [datetime] NULL,
	[SpecialPriceEndDateTimeUtc] [datetime] NULL,
	[CustomerEntersPrice] [bit] NOT NULL,
	[MinimumCustomerEnteredPrice] [decimal](18, 4) NOT NULL,
	[MaximumCustomerEnteredPrice] [decimal](18, 4) NOT NULL,
	[HasTierPrices] [bit] NOT NULL,
	[LowestAttributeCombinationPrice] [decimal](18, 4) NULL,
	[HasDiscountsApplied] [bit] NOT NULL,
	[Weight] [decimal](18, 4) NOT NULL,
	[Length] [decimal](18, 4) NOT NULL,
	[Width] [decimal](18, 4) NOT NULL,
	[Height] [decimal](18, 4) NOT NULL,
	[AvailableStartDateTimeUtc] [datetime] NULL,
	[AvailableEndDateTimeUtc] [datetime] NULL,
	[DisplayOrder] [int] NOT NULL,
	[Published] [bit] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[CreatedOnUtc] [datetime] NOT NULL,
	[UpdatedOnUtc] [datetime] NOT NULL,
	[DeliveryTimeId] [int] NULL,
	[QuantityUnitId] [int] NULL,
	[CustomsTariffNumber] [nvarchar](30) NULL,
	[CountryOfOriginId] [int] NULL,
	[BasePriceEnabled] [bit] NOT NULL,
	[BasePriceMeasureUnit] [nvarchar](50) NULL,
	[BasePriceAmount] [decimal](18, 4) NULL,
	[BasePriceBaseAmount] [int] NULL,
	[BundleTitleText] [nvarchar](400) NULL,
	[BundlePerItemShipping] [bit] NOT NULL,
	[BundlePerItemPricing] [bit] NOT NULL,
	[BundlePerItemShoppingCart] [bit] NOT NULL,
	[MainPictureId] [int] NULL,
	[IsSystemProduct] [bit] NOT NULL,
	[SystemName] [nvarchar](400) NULL,
	[HasPreviewPicture] [bit] NOT NULL,
	[Visibility] [int] NOT NULL,
	[Condition] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Category_Mapping]    Script Date: 7/2/2020 12:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Category_Mapping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[IsFeaturedProduct] [bit] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[IsSystemMapping] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Product_Category_Mapping] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Manufacturer_Mapping]    Script Date: 7/2/2020 12:07:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Manufacturer_Mapping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[ManufacturerId] [int] NOT NULL,
	[IsFeaturedProduct] [bit] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Product_Manufacturer_Mapping] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_MediaFile_Mapping]    Script Date: 7/2/2020 12:07:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_MediaFile_Mapping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[MediaFileId] [int] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Product_MediaFile_Mapping] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_ProductAttribute_Mapping]    Script Date: 7/2/2020 12:07:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_ProductAttribute_Mapping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[ProductAttributeId] [int] NOT NULL,
	[TextPrompt] [nvarchar](4000) NULL,
	[IsRequired] [bit] NOT NULL,
	[AttributeControlTypeId] [int] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Product_ProductAttribute_Mapping] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_ProductTag_Mapping]    Script Date: 7/2/2020 12:07:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_ProductTag_Mapping](
	[Product_Id] [int] NOT NULL,
	[ProductTag_Id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Product_ProductTag_Mapping] PRIMARY KEY CLUSTERED 
(
	[Product_Id] ASC,
	[ProductTag_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_SpecificationAttribute_Mapping]    Script Date: 7/2/2020 12:07:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_SpecificationAttribute_Mapping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[SpecificationAttributeOptionId] [int] NOT NULL,
	[AllowFiltering] [bit] NULL,
	[ShowOnProductPage] [bit] NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Product_SpecificationAttribute_Mapping] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductAttribute]    Script Date: 7/2/2020 12:07:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductAttribute](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Alias] [nvarchar](100) NULL,
	[Name] [nvarchar](4000) NOT NULL,
	[Description] [nvarchar](4000) NULL,
	[AllowFiltering] [bit] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[FacetTemplateHint] [int] NOT NULL,
	[IndexOptionNames] [bit] NOT NULL,
	[ExportMappings] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.ProductAttribute] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductAttributeOption]    Script Date: 7/2/2020 12:07:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductAttributeOption](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductAttributeOptionsSetId] [int] NOT NULL,
	[Alias] [nvarchar](100) NULL,
	[Name] [nvarchar](4000) NULL,
	[MediaFileId] [int] NOT NULL,
	[Color] [nvarchar](100) NULL,
	[PriceAdjustment] [decimal](18, 4) NOT NULL,
	[WeightAdjustment] [decimal](18, 4) NOT NULL,
	[IsPreSelected] [bit] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[ValueTypeId] [int] NOT NULL,
	[LinkedProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ProductAttributeOption] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductAttributeOptionsSet]    Script Date: 7/2/2020 12:07:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductAttributeOptionsSet](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](400) NULL,
	[ProductAttributeId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ProductAttributeOptionsSet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductBundleItem]    Script Date: 7/2/2020 12:07:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductBundleItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[BundleProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Discount] [decimal](18, 4) NULL,
	[DiscountPercentage] [bit] NOT NULL,
	[Name] [nvarchar](400) NULL,
	[ShortDescription] [nvarchar](max) NULL,
	[FilterAttributes] [bit] NOT NULL,
	[HideThumbnail] [bit] NOT NULL,
	[Visible] [bit] NOT NULL,
	[Published] [bit] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[CreatedOnUtc] [datetime] NOT NULL,
	[UpdatedOnUtc] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.ProductBundleItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductBundleItemAttributeFilter]    Script Date: 7/2/2020 12:07:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductBundleItemAttributeFilter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BundleItemId] [int] NOT NULL,
	[AttributeId] [int] NOT NULL,
	[AttributeValueId] [int] NOT NULL,
	[IsPreSelected] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.ProductBundleItemAttributeFilter] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductReview]    Script Date: 7/2/2020 12:07:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductReview](
	[Id] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Title] [nvarchar](4000) NULL,
	[ReviewText] [nvarchar](max) NULL,
	[Rating] [int] NOT NULL,
	[HelpfulYesTotal] [int] NOT NULL,
	[HelpfulNoTotal] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ProductReview] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductReviewHelpfulness]    Script Date: 7/2/2020 12:07:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductReviewHelpfulness](
	[Id] [int] NOT NULL,
	[ProductReviewId] [int] NOT NULL,
	[WasHelpful] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.ProductReviewHelpfulness] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductTag]    Script Date: 7/2/2020 12:07:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTag](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](400) NOT NULL,
	[Published] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.ProductTag] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductTemplate]    Script Date: 7/2/2020 12:07:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTemplate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](400) NOT NULL,
	[ViewPath] [nvarchar](400) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ProductTemplate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductVariantAttributeCombination]    Script Date: 7/2/2020 12:07:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductVariantAttributeCombination](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Sku] [nvarchar](400) NULL,
	[Gtin] [nvarchar](400) NULL,
	[ManufacturerPartNumber] [nvarchar](400) NULL,
	[Price] [decimal](18, 4) NULL,
	[Length] [decimal](18, 4) NULL,
	[Width] [decimal](18, 4) NULL,
	[Height] [decimal](18, 4) NULL,
	[BasePriceAmount] [decimal](18, 4) NULL,
	[BasePriceBaseAmount] [int] NULL,
	[AssignedMediaFileIds] [nvarchar](1000) NULL,
	[DeliveryTimeId] [int] NULL,
	[QuantityUnitId] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[ProductId] [int] NOT NULL,
	[AttributesXml] [nvarchar](max) NULL,
	[StockQuantity] [int] NOT NULL,
	[AllowOutOfStockOrders] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.ProductVariantAttributeCombination] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductVariantAttributeValue]    Script Date: 7/2/2020 12:07:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductVariantAttributeValue](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductVariantAttributeId] [int] NOT NULL,
	[Alias] [nvarchar](100) NULL,
	[Name] [nvarchar](4000) NULL,
	[MediaFileId] [int] NOT NULL,
	[Color] [nvarchar](100) NULL,
	[PriceAdjustment] [decimal](18, 4) NOT NULL,
	[WeightAdjustment] [decimal](18, 4) NOT NULL,
	[IsPreSelected] [bit] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[ValueTypeId] [int] NOT NULL,
	[LinkedProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ProductVariantAttributeValue] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuantityUnit]    Script Date: 7/2/2020 12:07:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuantityUnit](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NULL,
	[DisplayLocale] [nvarchar](50) NULL,
	[DisplayOrder] [int] NOT NULL,
	[IsDefault] [bit] NOT NULL,
	[NamePlural] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_dbo.QuantityUnit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QueuedEmail]    Script Date: 7/2/2020 12:07:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QueuedEmail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Priority] [int] NOT NULL,
	[From] [nvarchar](500) NOT NULL,
	[To] [nvarchar](500) NOT NULL,
	[ReplyTo] [nvarchar](500) NULL,
	[CC] [nvarchar](500) NULL,
	[Bcc] [nvarchar](500) NULL,
	[Subject] [nvarchar](1000) NULL,
	[Body] [nvarchar](max) NULL,
	[CreatedOnUtc] [datetime] NOT NULL,
	[SentTries] [int] NOT NULL,
	[SentOnUtc] [datetime] NULL,
	[EmailAccountId] [int] NOT NULL,
	[SendManually] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.QueuedEmail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QueuedEmailAttachment]    Script Date: 7/2/2020 12:07:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QueuedEmailAttachment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[QueuedEmailId] [int] NOT NULL,
	[StorageLocation] [int] NOT NULL,
	[Path] [nvarchar](1000) NULL,
	[Name] [nvarchar](200) NOT NULL,
	[MimeType] [nvarchar](200) NOT NULL,
	[MediaStorageId] [int] NULL,
	[MediaFileId] [int] NULL,
 CONSTRAINT [PK_dbo.QueuedEmailAttachment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecurringPayment]    Script Date: 7/2/2020 12:07:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecurringPayment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CycleLength] [int] NOT NULL,
	[CyclePeriodId] [int] NOT NULL,
	[TotalCycles] [int] NOT NULL,
	[StartDateUtc] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[InitialOrderId] [int] NOT NULL,
	[CreatedOnUtc] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.RecurringPayment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecurringPaymentHistory]    Script Date: 7/2/2020 12:07:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecurringPaymentHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RecurringPaymentId] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
	[CreatedOnUtc] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.RecurringPaymentHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RelatedProduct]    Script Date: 7/2/2020 12:07:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RelatedProduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId1] [int] NOT NULL,
	[ProductId2] [int] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_dbo.RelatedProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReturnRequest]    Script Date: 7/2/2020 12:07:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReturnRequest](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StoreId] [int] NOT NULL,
	[OrderItemId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[ReasonForReturn] [nvarchar](4000) NOT NULL,
	[RequestedAction] [nvarchar](4000) NOT NULL,
	[RequestedActionUpdatedOnUtc] [datetime] NULL,
	[CustomerComments] [nvarchar](4000) NULL,
	[StaffNotes] [nvarchar](4000) NULL,
	[AdminComment] [nvarchar](4000) NULL,
	[ReturnRequestStatusId] [int] NOT NULL,
	[CreatedOnUtc] [datetime] NOT NULL,
	[UpdatedOnUtc] [datetime] NOT NULL,
	[RefundToWallet] [bit] NULL,
 CONSTRAINT [PK_dbo.ReturnRequest] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RewardPointsHistory]    Script Date: 7/2/2020 12:07:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RewardPointsHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[Points] [int] NOT NULL,
	[PointsBalance] [int] NOT NULL,
	[UsedAmount] [decimal](18, 4) NOT NULL,
	[Message] [nvarchar](4000) NULL,
	[CreatedOnUtc] [datetime] NOT NULL,
	[UsedWithOrder_Id] [int] NULL,
 CONSTRAINT [PK_dbo.RewardPointsHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rule]    Script Date: 7/2/2020 12:07:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rule](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RuleSetId] [int] NOT NULL,
	[RuleType] [nvarchar](100) NOT NULL,
	[Operator] [nvarchar](20) NOT NULL,
	[Value] [nvarchar](max) NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Rule] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RuleSet]    Script Date: 7/2/2020 12:07:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RuleSet](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Description] [nvarchar](400) NULL,
	[IsActive] [bit] NOT NULL,
	[Scope] [int] NOT NULL,
	[IsSubGroup] [bit] NOT NULL,
	[LogicalOperator] [int] NOT NULL,
	[CreatedOnUtc] [datetime] NOT NULL,
	[UpdatedOnUtc] [datetime] NOT NULL,
	[LastProcessedOnUtc] [datetime] NULL,
 CONSTRAINT [PK_dbo.RuleSet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RuleSet_Category_Mapping]    Script Date: 7/2/2020 12:07:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RuleSet_Category_Mapping](
	[Category_Id] [int] NOT NULL,
	[RuleSetEntity_Id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.RuleSet_Category_Mapping] PRIMARY KEY CLUSTERED 
(
	[Category_Id] ASC,
	[RuleSetEntity_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RuleSet_CustomerRole_Mapping]    Script Date: 7/2/2020 12:07:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RuleSet_CustomerRole_Mapping](
	[CustomerRole_Id] [int] NOT NULL,
	[RuleSetEntity_Id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.RuleSet_CustomerRole_Mapping] PRIMARY KEY CLUSTERED 
(
	[CustomerRole_Id] ASC,
	[RuleSetEntity_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RuleSet_Discount_Mapping]    Script Date: 7/2/2020 12:07:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RuleSet_Discount_Mapping](
	[Discount_Id] [int] NOT NULL,
	[RuleSetEntity_Id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.RuleSet_Discount_Mapping] PRIMARY KEY CLUSTERED 
(
	[Discount_Id] ASC,
	[RuleSetEntity_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RuleSet_PaymentMethod_Mapping]    Script Date: 7/2/2020 12:07:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RuleSet_PaymentMethod_Mapping](
	[PaymentMethod_Id] [int] NOT NULL,
	[RuleSetEntity_Id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.RuleSet_PaymentMethod_Mapping] PRIMARY KEY CLUSTERED 
(
	[PaymentMethod_Id] ASC,
	[RuleSetEntity_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RuleSet_ShippingMethod_Mapping]    Script Date: 7/2/2020 12:07:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RuleSet_ShippingMethod_Mapping](
	[ShippingMethod_Id] [int] NOT NULL,
	[RuleSetEntity_Id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.RuleSet_ShippingMethod_Mapping] PRIMARY KEY CLUSTERED 
(
	[ShippingMethod_Id] ASC,
	[RuleSetEntity_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScheduleTask]    Script Date: 7/2/2020 12:07:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScheduleTask](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[Alias] [nvarchar](500) NULL,
	[CronExpression] [nvarchar](1000) NULL,
	[Type] [nvarchar](800) NOT NULL,
	[Enabled] [bit] NOT NULL,
	[StopOnError] [bit] NOT NULL,
	[NextRunUtc] [datetime] NULL,
	[IsHidden] [bit] NOT NULL,
	[RunPerMachine] [bit] NOT NULL,
	[Priority] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ScheduleTask] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScheduleTaskHistory]    Script Date: 7/2/2020 12:07:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScheduleTaskHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ScheduleTaskId] [int] NOT NULL,
	[IsRunning] [bit] NOT NULL,
	[MachineName] [nvarchar](400) NOT NULL,
	[StartedOnUtc] [datetime] NOT NULL,
	[FinishedOnUtc] [datetime] NULL,
	[SucceededOnUtc] [datetime] NULL,
	[Error] [nvarchar](max) NULL,
	[ProgressPercent] [int] NULL,
	[ProgressMessage] [nvarchar](1000) NULL,
 CONSTRAINT [PK_dbo.ScheduleTaskHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Setting]    Script Date: 7/2/2020 12:07:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Setting](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](400) NOT NULL,
	[Value] [nvarchar](max) NOT NULL,
	[StoreId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Setting] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipment]    Script Date: 7/2/2020 12:07:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[TrackingNumber] [nvarchar](4000) NULL,
	[TotalWeight] [decimal](18, 4) NULL,
	[ShippedDateUtc] [datetime] NULL,
	[DeliveryDateUtc] [datetime] NULL,
	[CreatedOnUtc] [datetime] NOT NULL,
	[TrackingUrl] [nvarchar](2000) NULL,
 CONSTRAINT [PK_dbo.Shipment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShipmentItem]    Script Date: 7/2/2020 12:07:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShipmentItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ShipmentId] [int] NOT NULL,
	[OrderItemId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ShipmentItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShippingMethod]    Script Date: 7/2/2020 12:07:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShippingMethod](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](400) NOT NULL,
	[Description] [nvarchar](4000) NULL,
	[DisplayOrder] [int] NOT NULL,
	[IgnoreCharges] [bit] NOT NULL,
	[LimitedToStores] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.ShippingMethod] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCartItem]    Script Date: 7/2/2020 12:07:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCartItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StoreId] [int] NOT NULL,
	[ParentItemId] [int] NULL,
	[BundleItemId] [int] NULL,
	[ShoppingCartTypeId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[AttributesXml] [nvarchar](max) NULL,
	[CustomerEnteredPrice] [decimal](18, 4) NOT NULL,
	[Quantity] [int] NOT NULL,
	[CreatedOnUtc] [datetime] NOT NULL,
	[UpdatedOnUtc] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.ShoppingCartItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SpecificationAttribute]    Script Date: 7/2/2020 12:07:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpecificationAttribute](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](4000) NOT NULL,
	[Alias] [nvarchar](30) NULL,
	[DisplayOrder] [int] NOT NULL,
	[ShowOnProductPage] [bit] NOT NULL,
	[AllowFiltering] [bit] NOT NULL,
	[FacetSorting] [int] NOT NULL,
	[FacetTemplateHint] [int] NOT NULL,
	[IndexOptionNames] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.SpecificationAttribute] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SpecificationAttributeOption]    Script Date: 7/2/2020 12:07:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpecificationAttributeOption](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SpecificationAttributeId] [int] NOT NULL,
	[Name] [nvarchar](4000) NOT NULL,
	[Alias] [nvarchar](30) NULL,
	[DisplayOrder] [int] NOT NULL,
	[NumberValue] [decimal](18, 4) NOT NULL,
	[MediaFileId] [int] NOT NULL,
	[Color] [nvarchar](100) NULL,
 CONSTRAINT [PK_dbo.SpecificationAttributeOption] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StateProvince]    Script Date: 7/2/2020 12:07:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StateProvince](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CountryId] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Abbreviation] [nvarchar](100) NULL,
	[Published] [bit] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_dbo.StateProvince] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Store]    Script Date: 7/2/2020 12:07:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Store](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](400) NOT NULL,
	[Url] [nvarchar](400) NOT NULL,
	[SslEnabled] [bit] NOT NULL,
	[SecureUrl] [nvarchar](400) NULL,
	[Hosts] [nvarchar](1000) NULL,
	[LogoMediaFileId] [int] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[HtmlBodyId] [nvarchar](4000) NULL,
	[ContentDeliveryNetwork] [nvarchar](400) NULL,
	[PrimaryStoreCurrencyId] [int] NOT NULL,
	[PrimaryExchangeRateCurrencyId] [int] NOT NULL,
	[ForceSslForAllPages] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Store] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StoreMapping]    Script Date: 7/2/2020 12:07:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StoreMapping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EntityId] [int] NOT NULL,
	[EntityName] [nvarchar](400) NOT NULL,
	[StoreId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.StoreMapping] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SyncMapping]    Script Date: 7/2/2020 12:07:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SyncMapping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EntityId] [int] NOT NULL,
	[SourceKey] [nvarchar](150) NOT NULL,
	[EntityName] [nvarchar](100) NOT NULL,
	[ContextName] [nvarchar](100) NOT NULL,
	[SourceHash] [nvarchar](40) NULL,
	[CustomInt] [int] NULL,
	[CustomString] [nvarchar](max) NULL,
	[CustomBool] [bit] NULL,
	[SyncedOnUtc] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.SyncMapping] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaxCategory]    Script Date: 7/2/2020 12:07:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaxCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](400) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_dbo.TaxCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThemeVariable]    Script Date: 7/2/2020 12:07:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThemeVariable](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Theme] [nvarchar](400) NULL,
	[Name] [nvarchar](400) NULL,
	[Value] [nvarchar](2000) NULL,
	[StoreId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ThemeVariable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TierPrice]    Script Date: 7/2/2020 12:07:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TierPrice](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[StoreId] [int] NOT NULL,
	[CustomerRoleId] [int] NULL,
	[Quantity] [int] NOT NULL,
	[Price] [decimal](18, 4) NOT NULL,
	[CalculationMethod] [int] NOT NULL,
 CONSTRAINT [PK_dbo.TierPrice] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Topic]    Script Date: 7/2/2020 12:07:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topic](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SystemName] [nvarchar](4000) NULL,
	[IncludeInSitemap] [bit] NOT NULL,
	[IsPasswordProtected] [bit] NOT NULL,
	[Password] [nvarchar](4000) NULL,
	[Title] [nvarchar](4000) NULL,
	[Body] [nvarchar](max) NULL,
	[MetaKeywords] [nvarchar](4000) NULL,
	[MetaDescription] [nvarchar](4000) NULL,
	[MetaTitle] [nvarchar](4000) NULL,
	[LimitedToStores] [bit] NOT NULL,
	[RenderAsWidget] [bit] NOT NULL,
	[WidgetZone] [nvarchar](4000) NULL,
	[WidgetWrapContent] [bit] NULL,
	[WidgetShowTitle] [bit] NOT NULL,
	[WidgetBordered] [bit] NOT NULL,
	[Priority] [int] NOT NULL,
	[TitleTag] [nvarchar](max) NULL,
	[IsSystemTopic] [bit] NOT NULL,
	[ShortTitle] [nvarchar](50) NULL,
	[Intro] [nvarchar](255) NULL,
	[SubjectToAcl] [bit] NOT NULL,
	[IsPublished] [bit] NOT NULL,
	[HtmlId] [nvarchar](128) NULL,
	[BodyCssClass] [nvarchar](512) NULL,
 CONSTRAINT [PK_dbo.Topic] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UrlRecord]    Script Date: 7/2/2020 12:07:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UrlRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EntityId] [int] NOT NULL,
	[EntityName] [nvarchar](400) NOT NULL,
	[Slug] [nvarchar](400) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[LanguageId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.UrlRecord] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WalletHistory]    Script Date: 7/2/2020 12:07:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WalletHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StoreId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[OrderId] [int] NULL,
	[Amount] [decimal](18, 4) NOT NULL,
	[AmountBalance] [decimal](18, 4) NOT NULL,
	[AmountBalancePerStore] [decimal](18, 4) NOT NULL,
	[CreatedOnUtc] [datetime] NOT NULL,
	[Reason] [int] NULL,
	[Message] [nvarchar](1000) NULL,
	[AdminComment] [nvarchar](4000) NULL,
 CONSTRAINT [PK_dbo.WalletHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BlogPost] ADD  DEFAULT ((0)) FOR [DisplayTagsInPreview]
GO
ALTER TABLE [dbo].[BlogPost] ADD  DEFAULT ((1)) FOR [IsPublished]
GO
ALTER TABLE [dbo].[BlogPost] ADD  DEFAULT ((0)) FOR [PreviewDisplayType]
GO
ALTER TABLE [dbo].[Campaign] ADD  DEFAULT ((0)) FOR [SubjectToAcl]
GO
ALTER TABLE [dbo].[Country] ADD  DEFAULT ((0)) FOR [DisplayCookieManager]
GO
ALTER TABLE [dbo].[Currency] ADD  DEFAULT ((0)) FOR [RoundOrderItemsEnabled]
GO
ALTER TABLE [dbo].[Currency] ADD  DEFAULT ((2)) FOR [RoundNumDecimals]
GO
ALTER TABLE [dbo].[Currency] ADD  DEFAULT ((0)) FOR [RoundOrderTotalEnabled]
GO
ALTER TABLE [dbo].[Currency] ADD  DEFAULT ((0)) FOR [RoundOrderTotalDenominator]
GO
ALTER TABLE [dbo].[Currency] ADD  DEFAULT ((0)) FOR [RoundOrderTotalRule]
GO
ALTER TABLE [dbo].[Customer] ADD  DEFAULT ((0)) FOR [VatNumberStatusId]
GO
ALTER TABLE [dbo].[Customer] ADD  DEFAULT ((0)) FOR [TaxDisplayTypeId]
GO
ALTER TABLE [dbo].[Customer] ADD  DEFAULT ((0)) FOR [CountryId]
GO
ALTER TABLE [dbo].[Customer] ADD  DEFAULT ((0)) FOR [LanguageId]
GO
ALTER TABLE [dbo].[Download] ADD  DEFAULT ((0)) FOR [EntityId]
GO
ALTER TABLE [dbo].[Download] ADD  DEFAULT ('') FOR [EntityName]
GO
ALTER TABLE [dbo].[ExportProfile] ADD  DEFAULT ((0)) FOR [ExportRelatedData]
GO
ALTER TABLE [dbo].[Forums_Group] ADD  DEFAULT ((0)) FOR [SubjectToAcl]
GO
ALTER TABLE [dbo].[Forums_Post] ADD  DEFAULT ((1)) FOR [Published]
GO
ALTER TABLE [dbo].[Forums_Topic] ADD  DEFAULT ((1)) FOR [Published]
GO
ALTER TABLE [dbo].[ImportProfile] ADD  DEFAULT ((0)) FOR [ImportRelatedData]
GO
ALTER TABLE [dbo].[Manufacturer] ADD  DEFAULT ((0)) FOR [SubjectToAcl]
GO
ALTER TABLE [dbo].[MediaFile] ADD  DEFAULT ('') FOR [MediaType]
GO
ALTER TABLE [dbo].[MediaFile] ADD  DEFAULT ((0)) FOR [Size]
GO
ALTER TABLE [dbo].[MediaFile] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [CreatedOnUtc]
GO
ALTER TABLE [dbo].[MediaFile] ADD  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[MediaFile] ADD  DEFAULT ((0)) FOR [Hidden]
GO
ALTER TABLE [dbo].[MediaFile] ADD  DEFAULT ((0)) FOR [Version]
GO
ALTER TABLE [dbo].[MenuItemRecord] ADD  DEFAULT ((0)) FOR [LimitedToStores]
GO
ALTER TABLE [dbo].[MenuItemRecord] ADD  DEFAULT ((0)) FOR [SubjectToAcl]
GO
ALTER TABLE [dbo].[MessageTemplate] ADD  DEFAULT (' ') FOR [To]
GO
ALTER TABLE [dbo].[NewsLetterSubscription] ADD  DEFAULT ((0)) FOR [WorkingLanguageId]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT ((0)) FOR [OrderTotalRounding]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT ((0)) FOR [CreditBalance]
GO
ALTER TABLE [dbo].[OrderItem] ADD  DEFAULT ((0)) FOR [DisplayDeliveryTime]
GO
ALTER TABLE [dbo].[PaymentMethod] ADD  DEFAULT ((0)) FOR [RoundOrderTotalEnabled]
GO
ALTER TABLE [dbo].[PaymentMethod] ADD  DEFAULT ((0)) FOR [LimitedToStores]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((0)) FOR [IsSystemProduct]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((0)) FOR [HasPreviewPicture]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((0)) FOR [Visibility]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((0)) FOR [Condition]
GO
ALTER TABLE [dbo].[Product_Category_Mapping] ADD  DEFAULT ((0)) FOR [IsSystemMapping]
GO
ALTER TABLE [dbo].[ProductAttribute] ADD  DEFAULT ((0)) FOR [IndexOptionNames]
GO
ALTER TABLE [dbo].[ProductTag] ADD  DEFAULT ((1)) FOR [Published]
GO
ALTER TABLE [dbo].[QuantityUnit] ADD  DEFAULT ('') FOR [NamePlural]
GO
ALTER TABLE [dbo].[ScheduleTask] ADD  DEFAULT ((0)) FOR [RunPerMachine]
GO
ALTER TABLE [dbo].[ScheduleTask] ADD  DEFAULT ((0)) FOR [Priority]
GO
ALTER TABLE [dbo].[ShippingMethod] ADD  DEFAULT ((0)) FOR [LimitedToStores]
GO
ALTER TABLE [dbo].[SpecificationAttribute] ADD  DEFAULT ((0)) FOR [IndexOptionNames]
GO
ALTER TABLE [dbo].[SpecificationAttributeOption] ADD  DEFAULT ((0)) FOR [MediaFileId]
GO
ALTER TABLE [dbo].[Store] ADD  DEFAULT ((1)) FOR [PrimaryStoreCurrencyId]
GO
ALTER TABLE [dbo].[Store] ADD  DEFAULT ((1)) FOR [PrimaryExchangeRateCurrencyId]
GO
ALTER TABLE [dbo].[Store] ADD  DEFAULT ((0)) FOR [ForceSslForAllPages]
GO
ALTER TABLE [dbo].[TierPrice] ADD  DEFAULT ((0)) FOR [CalculationMethod]
GO
ALTER TABLE [dbo].[Topic] ADD  DEFAULT ((0)) FOR [IsSystemTopic]
GO
ALTER TABLE [dbo].[Topic] ADD  DEFAULT ((0)) FOR [SubjectToAcl]
GO
ALTER TABLE [dbo].[Topic] ADD  DEFAULT ((1)) FOR [IsPublished]
GO
ALTER TABLE [dbo].[AclRecord]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AclRecord_dbo.CustomerRole_CustomerRoleId] FOREIGN KEY([CustomerRoleId])
REFERENCES [dbo].[CustomerRole] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AclRecord] CHECK CONSTRAINT [FK_dbo.AclRecord_dbo.CustomerRole_CustomerRoleId]
GO
ALTER TABLE [dbo].[ActivityLog]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ActivityLog_dbo.ActivityLogType_ActivityLogTypeId] FOREIGN KEY([ActivityLogTypeId])
REFERENCES [dbo].[ActivityLogType] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ActivityLog] CHECK CONSTRAINT [FK_dbo.ActivityLog_dbo.ActivityLogType_ActivityLogTypeId]
GO
ALTER TABLE [dbo].[ActivityLog]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ActivityLog_dbo.Customer_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ActivityLog] CHECK CONSTRAINT [FK_dbo.ActivityLog_dbo.Customer_CustomerId]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Address_dbo.Country_CountryId] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Country] ([Id])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_dbo.Address_dbo.Country_CountryId]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Address_dbo.StateProvince_StateProvinceId] FOREIGN KEY([StateProvinceId])
REFERENCES [dbo].[StateProvince] ([Id])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_dbo.Address_dbo.StateProvince_StateProvinceId]
GO
ALTER TABLE [dbo].[Affiliate]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Affiliate_dbo.Address_AddressId] FOREIGN KEY([AddressId])
REFERENCES [dbo].[Address] ([Id])
GO
ALTER TABLE [dbo].[Affiliate] CHECK CONSTRAINT [FK_dbo.Affiliate_dbo.Address_AddressId]
GO
ALTER TABLE [dbo].[BackInStockSubscription]  WITH CHECK ADD  CONSTRAINT [FK_dbo.BackInStockSubscription_dbo.Customer_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BackInStockSubscription] CHECK CONSTRAINT [FK_dbo.BackInStockSubscription_dbo.Customer_CustomerId]
GO
ALTER TABLE [dbo].[BackInStockSubscription]  WITH CHECK ADD  CONSTRAINT [FK_dbo.BackInStockSubscription_dbo.Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BackInStockSubscription] CHECK CONSTRAINT [FK_dbo.BackInStockSubscription_dbo.Product_ProductId]
GO
ALTER TABLE [dbo].[BlogComment]  WITH CHECK ADD  CONSTRAINT [FK_dbo.BlogComment_dbo.BlogPost_BlogPostId] FOREIGN KEY([BlogPostId])
REFERENCES [dbo].[BlogPost] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BlogComment] CHECK CONSTRAINT [FK_dbo.BlogComment_dbo.BlogPost_BlogPostId]
GO
ALTER TABLE [dbo].[BlogComment]  WITH CHECK ADD  CONSTRAINT [FK_dbo.BlogComment_dbo.CustomerContent_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[CustomerContent] ([Id])
GO
ALTER TABLE [dbo].[BlogComment] CHECK CONSTRAINT [FK_dbo.BlogComment_dbo.CustomerContent_Id]
GO
ALTER TABLE [dbo].[BlogPost]  WITH CHECK ADD  CONSTRAINT [FK_dbo.BlogPost_dbo.Language_LanguageId] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Language] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BlogPost] CHECK CONSTRAINT [FK_dbo.BlogPost_dbo.Language_LanguageId]
GO
ALTER TABLE [dbo].[BlogPost]  WITH CHECK ADD  CONSTRAINT [FK_dbo.BlogPost_dbo.MediaFile_MediaFileId] FOREIGN KEY([MediaFileId])
REFERENCES [dbo].[MediaFile] ([Id])
GO
ALTER TABLE [dbo].[BlogPost] CHECK CONSTRAINT [FK_dbo.BlogPost_dbo.MediaFile_MediaFileId]
GO
ALTER TABLE [dbo].[BlogPost]  WITH CHECK ADD  CONSTRAINT [FK_dbo.BlogPost_dbo.MediaFile_PreviewMediaFileId] FOREIGN KEY([PreviewMediaFileId])
REFERENCES [dbo].[MediaFile] ([Id])
GO
ALTER TABLE [dbo].[BlogPost] CHECK CONSTRAINT [FK_dbo.BlogPost_dbo.MediaFile_PreviewMediaFileId]
GO
ALTER TABLE [dbo].[Category]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Category_dbo.Picture_PictureId] FOREIGN KEY([MediaFileId])
REFERENCES [dbo].[MediaFile] ([Id])
GO
ALTER TABLE [dbo].[Category] CHECK CONSTRAINT [FK_dbo.Category_dbo.Picture_PictureId]
GO
ALTER TABLE [dbo].[CheckoutAttributeValue]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CheckoutAttributeValue_dbo.CheckoutAttribute_CheckoutAttributeId] FOREIGN KEY([CheckoutAttributeId])
REFERENCES [dbo].[CheckoutAttribute] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CheckoutAttributeValue] CHECK CONSTRAINT [FK_dbo.CheckoutAttributeValue_dbo.CheckoutAttribute_CheckoutAttributeId]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Customer_dbo.Address_BillingAddress_Id] FOREIGN KEY([BillingAddress_Id])
REFERENCES [dbo].[Address] ([Id])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_dbo.Customer_dbo.Address_BillingAddress_Id]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Customer_dbo.Address_ShippingAddress_Id] FOREIGN KEY([ShippingAddress_Id])
REFERENCES [dbo].[Address] ([Id])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_dbo.Customer_dbo.Address_ShippingAddress_Id]
GO
ALTER TABLE [dbo].[CustomerAddresses]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CustomerAddresses_dbo.Address_Address_Id] FOREIGN KEY([Address_Id])
REFERENCES [dbo].[Address] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CustomerAddresses] CHECK CONSTRAINT [FK_dbo.CustomerAddresses_dbo.Address_Address_Id]
GO
ALTER TABLE [dbo].[CustomerAddresses]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CustomerAddresses_dbo.Customer_Customer_Id] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customer] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CustomerAddresses] CHECK CONSTRAINT [FK_dbo.CustomerAddresses_dbo.Customer_Customer_Id]
GO
ALTER TABLE [dbo].[CustomerContent]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CustomerContent_dbo.Customer_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CustomerContent] CHECK CONSTRAINT [FK_dbo.CustomerContent_dbo.Customer_CustomerId]
GO
ALTER TABLE [dbo].[CustomerRoleMapping]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CustomerRoleMapping_dbo.Customer_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CustomerRoleMapping] CHECK CONSTRAINT [FK_dbo.CustomerRoleMapping_dbo.Customer_CustomerId]
GO
ALTER TABLE [dbo].[CustomerRoleMapping]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CustomerRoleMapping_dbo.CustomerRole_CustomerRoleId] FOREIGN KEY([CustomerRoleId])
REFERENCES [dbo].[CustomerRole] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CustomerRoleMapping] CHECK CONSTRAINT [FK_dbo.CustomerRoleMapping_dbo.CustomerRole_CustomerRoleId]
GO
ALTER TABLE [dbo].[Discount_AppliedToCategories]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Discount_AppliedToCategories_dbo.Category_Category_Id] FOREIGN KEY([Category_Id])
REFERENCES [dbo].[Category] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Discount_AppliedToCategories] CHECK CONSTRAINT [FK_dbo.Discount_AppliedToCategories_dbo.Category_Category_Id]
GO
ALTER TABLE [dbo].[Discount_AppliedToCategories]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Discount_AppliedToCategories_dbo.Discount_Discount_Id] FOREIGN KEY([Discount_Id])
REFERENCES [dbo].[Discount] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Discount_AppliedToCategories] CHECK CONSTRAINT [FK_dbo.Discount_AppliedToCategories_dbo.Discount_Discount_Id]
GO
ALTER TABLE [dbo].[Discount_AppliedToManufacturers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Discount_AppliedToManufacturers_dbo.Discount_Discount_Id] FOREIGN KEY([Discount_Id])
REFERENCES [dbo].[Discount] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Discount_AppliedToManufacturers] CHECK CONSTRAINT [FK_dbo.Discount_AppliedToManufacturers_dbo.Discount_Discount_Id]
GO
ALTER TABLE [dbo].[Discount_AppliedToManufacturers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Discount_AppliedToManufacturers_dbo.Manufacturer_Manufacturer_Id] FOREIGN KEY([Manufacturer_Id])
REFERENCES [dbo].[Manufacturer] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Discount_AppliedToManufacturers] CHECK CONSTRAINT [FK_dbo.Discount_AppliedToManufacturers_dbo.Manufacturer_Manufacturer_Id]
GO
ALTER TABLE [dbo].[Discount_AppliedToProducts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Discount_AppliedToProducts_dbo.Discount_Discount_Id] FOREIGN KEY([Discount_Id])
REFERENCES [dbo].[Discount] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Discount_AppliedToProducts] CHECK CONSTRAINT [FK_dbo.Discount_AppliedToProducts_dbo.Discount_Discount_Id]
GO
ALTER TABLE [dbo].[Discount_AppliedToProducts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Discount_AppliedToProducts_dbo.Product_Product_Id] FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Discount_AppliedToProducts] CHECK CONSTRAINT [FK_dbo.Discount_AppliedToProducts_dbo.Product_Product_Id]
GO
ALTER TABLE [dbo].[DiscountUsageHistory]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DiscountUsageHistory_dbo.Discount_DiscountId] FOREIGN KEY([DiscountId])
REFERENCES [dbo].[Discount] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DiscountUsageHistory] CHECK CONSTRAINT [FK_dbo.DiscountUsageHistory_dbo.Discount_DiscountId]
GO
ALTER TABLE [dbo].[DiscountUsageHistory]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DiscountUsageHistory_dbo.Order_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DiscountUsageHistory] CHECK CONSTRAINT [FK_dbo.DiscountUsageHistory_dbo.Order_OrderId]
GO
ALTER TABLE [dbo].[Download]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Download_dbo.MediaFile_MediaFileId] FOREIGN KEY([MediaFileId])
REFERENCES [dbo].[MediaFile] ([Id])
GO
ALTER TABLE [dbo].[Download] CHECK CONSTRAINT [FK_dbo.Download_dbo.MediaFile_MediaFileId]
GO
ALTER TABLE [dbo].[ExportDeployment]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ExportDeployment_dbo.ExportProfile_ProfileId] FOREIGN KEY([ProfileId])
REFERENCES [dbo].[ExportProfile] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ExportDeployment] CHECK CONSTRAINT [FK_dbo.ExportDeployment_dbo.ExportProfile_ProfileId]
GO
ALTER TABLE [dbo].[ExportProfile]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ExportProfile_dbo.ScheduleTask_SchedulingTaskId] FOREIGN KEY([SchedulingTaskId])
REFERENCES [dbo].[ScheduleTask] ([Id])
GO
ALTER TABLE [dbo].[ExportProfile] CHECK CONSTRAINT [FK_dbo.ExportProfile_dbo.ScheduleTask_SchedulingTaskId]
GO
ALTER TABLE [dbo].[ExternalAuthenticationRecord]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ExternalAuthenticationRecord_dbo.Customer_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ExternalAuthenticationRecord] CHECK CONSTRAINT [FK_dbo.ExternalAuthenticationRecord_dbo.Customer_CustomerId]
GO
ALTER TABLE [dbo].[ForumPostVote]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ForumPostVote_dbo.CustomerContent_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[CustomerContent] ([Id])
GO
ALTER TABLE [dbo].[ForumPostVote] CHECK CONSTRAINT [FK_dbo.ForumPostVote_dbo.CustomerContent_Id]
GO
ALTER TABLE [dbo].[ForumPostVote]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ForumPostVote_dbo.Forums_Post_ForumPostId] FOREIGN KEY([ForumPostId])
REFERENCES [dbo].[Forums_Post] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ForumPostVote] CHECK CONSTRAINT [FK_dbo.ForumPostVote_dbo.Forums_Post_ForumPostId]
GO
ALTER TABLE [dbo].[Forums_Forum]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Forums_Forum_dbo.Forums_Group_ForumGroupId] FOREIGN KEY([ForumGroupId])
REFERENCES [dbo].[Forums_Group] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Forums_Forum] CHECK CONSTRAINT [FK_dbo.Forums_Forum_dbo.Forums_Group_ForumGroupId]
GO
ALTER TABLE [dbo].[Forums_Post]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Forums_Post_dbo.Customer_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Forums_Post] CHECK CONSTRAINT [FK_dbo.Forums_Post_dbo.Customer_CustomerId]
GO
ALTER TABLE [dbo].[Forums_Post]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Forums_Post_dbo.Forums_Topic_TopicId] FOREIGN KEY([TopicId])
REFERENCES [dbo].[Forums_Topic] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Forums_Post] CHECK CONSTRAINT [FK_dbo.Forums_Post_dbo.Forums_Topic_TopicId]
GO
ALTER TABLE [dbo].[Forums_PrivateMessage]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Forums_PrivateMessage_dbo.Customer_FromCustomerId] FOREIGN KEY([FromCustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Forums_PrivateMessage] CHECK CONSTRAINT [FK_dbo.Forums_PrivateMessage_dbo.Customer_FromCustomerId]
GO
ALTER TABLE [dbo].[Forums_PrivateMessage]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Forums_PrivateMessage_dbo.Customer_ToCustomerId] FOREIGN KEY([ToCustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Forums_PrivateMessage] CHECK CONSTRAINT [FK_dbo.Forums_PrivateMessage_dbo.Customer_ToCustomerId]
GO
ALTER TABLE [dbo].[Forums_Subscription]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Forums_Subscription_dbo.Customer_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Forums_Subscription] CHECK CONSTRAINT [FK_dbo.Forums_Subscription_dbo.Customer_CustomerId]
GO
ALTER TABLE [dbo].[Forums_Topic]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Forums_Topic_dbo.Customer_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Forums_Topic] CHECK CONSTRAINT [FK_dbo.Forums_Topic_dbo.Customer_CustomerId]
GO
ALTER TABLE [dbo].[Forums_Topic]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Forums_Topic_dbo.Forums_Forum_ForumId] FOREIGN KEY([ForumId])
REFERENCES [dbo].[Forums_Forum] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Forums_Topic] CHECK CONSTRAINT [FK_dbo.Forums_Topic_dbo.Forums_Forum_ForumId]
GO
ALTER TABLE [dbo].[GiftCard]  WITH CHECK ADD  CONSTRAINT [FK_dbo.GiftCard_dbo.OrderItem_PurchasedWithOrderItemId] FOREIGN KEY([PurchasedWithOrderItemId])
REFERENCES [dbo].[OrderItem] ([Id])
GO
ALTER TABLE [dbo].[GiftCard] CHECK CONSTRAINT [FK_dbo.GiftCard_dbo.OrderItem_PurchasedWithOrderItemId]
GO
ALTER TABLE [dbo].[GiftCardUsageHistory]  WITH CHECK ADD  CONSTRAINT [FK_dbo.GiftCardUsageHistory_dbo.GiftCard_GiftCardId] FOREIGN KEY([GiftCardId])
REFERENCES [dbo].[GiftCard] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GiftCardUsageHistory] CHECK CONSTRAINT [FK_dbo.GiftCardUsageHistory_dbo.GiftCard_GiftCardId]
GO
ALTER TABLE [dbo].[GiftCardUsageHistory]  WITH CHECK ADD  CONSTRAINT [FK_dbo.GiftCardUsageHistory_dbo.Order_UsedWithOrderId] FOREIGN KEY([UsedWithOrderId])
REFERENCES [dbo].[Order] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GiftCardUsageHistory] CHECK CONSTRAINT [FK_dbo.GiftCardUsageHistory_dbo.Order_UsedWithOrderId]
GO
ALTER TABLE [dbo].[ImportProfile]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ImportProfile_dbo.ScheduleTask_SchedulingTaskId] FOREIGN KEY([SchedulingTaskId])
REFERENCES [dbo].[ScheduleTask] ([Id])
GO
ALTER TABLE [dbo].[ImportProfile] CHECK CONSTRAINT [FK_dbo.ImportProfile_dbo.ScheduleTask_SchedulingTaskId]
GO
ALTER TABLE [dbo].[LocaleStringResource]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LocaleStringResource_dbo.Language_LanguageId] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Language] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LocaleStringResource] CHECK CONSTRAINT [FK_dbo.LocaleStringResource_dbo.Language_LanguageId]
GO
ALTER TABLE [dbo].[LocalizedProperty]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LocalizedProperty_dbo.Language_LanguageId] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Language] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LocalizedProperty] CHECK CONSTRAINT [FK_dbo.LocalizedProperty_dbo.Language_LanguageId]
GO
ALTER TABLE [dbo].[Log]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Log_dbo.Customer_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Log] CHECK CONSTRAINT [FK_dbo.Log_dbo.Customer_CustomerId]
GO
ALTER TABLE [dbo].[Manufacturer]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Manufacturer_dbo.Picture_PictureId] FOREIGN KEY([MediaFileId])
REFERENCES [dbo].[MediaFile] ([Id])
GO
ALTER TABLE [dbo].[Manufacturer] CHECK CONSTRAINT [FK_dbo.Manufacturer_dbo.Picture_PictureId]
GO
ALTER TABLE [dbo].[MediaFile]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MediaFile_dbo.MediaFolder_FolderId] FOREIGN KEY([FolderId])
REFERENCES [dbo].[MediaFolder] ([Id])
GO
ALTER TABLE [dbo].[MediaFile] CHECK CONSTRAINT [FK_dbo.MediaFile_dbo.MediaFolder_FolderId]
GO
ALTER TABLE [dbo].[MediaFile]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Picture_dbo.MediaStorage_MediaStorageId] FOREIGN KEY([MediaStorageId])
REFERENCES [dbo].[MediaStorage] ([Id])
GO
ALTER TABLE [dbo].[MediaFile] CHECK CONSTRAINT [FK_dbo.Picture_dbo.MediaStorage_MediaStorageId]
GO
ALTER TABLE [dbo].[MediaFile_Tag_Mapping]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MediaFile_Tag_Mapping_dbo.MediaFile_MediaFile_Id] FOREIGN KEY([MediaFile_Id])
REFERENCES [dbo].[MediaFile] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MediaFile_Tag_Mapping] CHECK CONSTRAINT [FK_dbo.MediaFile_Tag_Mapping_dbo.MediaFile_MediaFile_Id]
GO
ALTER TABLE [dbo].[MediaFile_Tag_Mapping]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MediaFile_Tag_Mapping_dbo.MediaTag_MediaTag_Id] FOREIGN KEY([MediaTag_Id])
REFERENCES [dbo].[MediaTag] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MediaFile_Tag_Mapping] CHECK CONSTRAINT [FK_dbo.MediaFile_Tag_Mapping_dbo.MediaTag_MediaTag_Id]
GO
ALTER TABLE [dbo].[MediaFolder]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MediaFolder_dbo.MediaFolder_ParentId] FOREIGN KEY([ParentId])
REFERENCES [dbo].[MediaFolder] ([Id])
GO
ALTER TABLE [dbo].[MediaFolder] CHECK CONSTRAINT [FK_dbo.MediaFolder_dbo.MediaFolder_ParentId]
GO
ALTER TABLE [dbo].[MediaTrack]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MediaTrack_dbo.MediaFile_MediaFileId] FOREIGN KEY([MediaFileId])
REFERENCES [dbo].[MediaFile] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MediaTrack] CHECK CONSTRAINT [FK_dbo.MediaTrack_dbo.MediaFile_MediaFileId]
GO
ALTER TABLE [dbo].[MenuItemRecord]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MenuItemRecord_dbo.MenuRecord_MenuId] FOREIGN KEY([MenuId])
REFERENCES [dbo].[MenuRecord] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MenuItemRecord] CHECK CONSTRAINT [FK_dbo.MenuItemRecord_dbo.MenuRecord_MenuId]
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD  CONSTRAINT [FK_dbo.News_dbo.Language_LanguageId] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Language] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[News] CHECK CONSTRAINT [FK_dbo.News_dbo.Language_LanguageId]
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD  CONSTRAINT [FK_dbo.News_dbo.MediaFile_MediaFileId] FOREIGN KEY([MediaFileId])
REFERENCES [dbo].[MediaFile] ([Id])
GO
ALTER TABLE [dbo].[News] CHECK CONSTRAINT [FK_dbo.News_dbo.MediaFile_MediaFileId]
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD  CONSTRAINT [FK_dbo.News_dbo.MediaFile_PreviewMediaFileId] FOREIGN KEY([PreviewMediaFileId])
REFERENCES [dbo].[MediaFile] ([Id])
GO
ALTER TABLE [dbo].[News] CHECK CONSTRAINT [FK_dbo.News_dbo.MediaFile_PreviewMediaFileId]
GO
ALTER TABLE [dbo].[NewsComment]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NewsComment_dbo.CustomerContent_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[CustomerContent] ([Id])
GO
ALTER TABLE [dbo].[NewsComment] CHECK CONSTRAINT [FK_dbo.NewsComment_dbo.CustomerContent_Id]
GO
ALTER TABLE [dbo].[NewsComment]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NewsComment_dbo.News_NewsItemId] FOREIGN KEY([NewsItemId])
REFERENCES [dbo].[News] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NewsComment] CHECK CONSTRAINT [FK_dbo.NewsComment_dbo.News_NewsItemId]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Order_dbo.Address_BillingAddressId] FOREIGN KEY([BillingAddressId])
REFERENCES [dbo].[Address] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_dbo.Order_dbo.Address_BillingAddressId]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Order_dbo.Address_ShippingAddressId] FOREIGN KEY([ShippingAddressId])
REFERENCES [dbo].[Address] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_dbo.Order_dbo.Address_ShippingAddressId]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Order_dbo.Customer_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_dbo.Order_dbo.Customer_CustomerId]
GO
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrderItem_dbo.Order_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItem] CHECK CONSTRAINT [FK_dbo.OrderItem_dbo.Order_OrderId]
GO
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrderItem_dbo.Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItem] CHECK CONSTRAINT [FK_dbo.OrderItem_dbo.Product_ProductId]
GO
ALTER TABLE [dbo].[OrderNote]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrderNote_dbo.Order_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderNote] CHECK CONSTRAINT [FK_dbo.OrderNote_dbo.Order_OrderId]
GO
ALTER TABLE [dbo].[PermissionRoleMapping]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PermissionRoleMapping_dbo.CustomerRole_CustomerRoleId] FOREIGN KEY([CustomerRoleId])
REFERENCES [dbo].[CustomerRole] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PermissionRoleMapping] CHECK CONSTRAINT [FK_dbo.PermissionRoleMapping_dbo.CustomerRole_CustomerRoleId]
GO
ALTER TABLE [dbo].[PermissionRoleMapping]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PermissionRoleMapping_dbo.PermissionRecord_PermissionRecordId] FOREIGN KEY([PermissionRecordId])
REFERENCES [dbo].[PermissionRecord] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PermissionRoleMapping] CHECK CONSTRAINT [FK_dbo.PermissionRoleMapping_dbo.PermissionRecord_PermissionRecordId]
GO
ALTER TABLE [dbo].[Poll]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Poll_dbo.Language_LanguageId] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Language] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Poll] CHECK CONSTRAINT [FK_dbo.Poll_dbo.Language_LanguageId]
GO
ALTER TABLE [dbo].[PollAnswer]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PollAnswer_dbo.Poll_PollId] FOREIGN KEY([PollId])
REFERENCES [dbo].[Poll] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PollAnswer] CHECK CONSTRAINT [FK_dbo.PollAnswer_dbo.Poll_PollId]
GO
ALTER TABLE [dbo].[PollVotingRecord]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PollVotingRecord_dbo.CustomerContent_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[CustomerContent] ([Id])
GO
ALTER TABLE [dbo].[PollVotingRecord] CHECK CONSTRAINT [FK_dbo.PollVotingRecord_dbo.CustomerContent_Id]
GO
ALTER TABLE [dbo].[PollVotingRecord]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PollVotingRecord_dbo.PollAnswer_PollAnswerId] FOREIGN KEY([PollAnswerId])
REFERENCES [dbo].[PollAnswer] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PollVotingRecord] CHECK CONSTRAINT [FK_dbo.PollVotingRecord_dbo.PollAnswer_PollAnswerId]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Product_dbo.Country_CountryOfOriginId] FOREIGN KEY([CountryOfOriginId])
REFERENCES [dbo].[Country] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_dbo.Product_dbo.Country_CountryOfOriginId]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Product_dbo.DeliveryTime_DeliveryTimeId] FOREIGN KEY([DeliveryTimeId])
REFERENCES [dbo].[DeliveryTime] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_dbo.Product_dbo.DeliveryTime_DeliveryTimeId]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Product_dbo.Download_SampleDownloadId] FOREIGN KEY([SampleDownloadId])
REFERENCES [dbo].[Download] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_dbo.Product_dbo.Download_SampleDownloadId]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Product_dbo.QuantityUnit_QuantityUnitId] FOREIGN KEY([QuantityUnitId])
REFERENCES [dbo].[QuantityUnit] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_dbo.Product_dbo.QuantityUnit_QuantityUnitId]
GO
ALTER TABLE [dbo].[Product_Category_Mapping]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Product_Category_Mapping_dbo.Category_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product_Category_Mapping] CHECK CONSTRAINT [FK_dbo.Product_Category_Mapping_dbo.Category_CategoryId]
GO
ALTER TABLE [dbo].[Product_Category_Mapping]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Product_Category_Mapping_dbo.Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product_Category_Mapping] CHECK CONSTRAINT [FK_dbo.Product_Category_Mapping_dbo.Product_ProductId]
GO
ALTER TABLE [dbo].[Product_Manufacturer_Mapping]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Product_Manufacturer_Mapping_dbo.Manufacturer_ManufacturerId] FOREIGN KEY([ManufacturerId])
REFERENCES [dbo].[Manufacturer] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product_Manufacturer_Mapping] CHECK CONSTRAINT [FK_dbo.Product_Manufacturer_Mapping_dbo.Manufacturer_ManufacturerId]
GO
ALTER TABLE [dbo].[Product_Manufacturer_Mapping]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Product_Manufacturer_Mapping_dbo.Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product_Manufacturer_Mapping] CHECK CONSTRAINT [FK_dbo.Product_Manufacturer_Mapping_dbo.Product_ProductId]
GO
ALTER TABLE [dbo].[Product_MediaFile_Mapping]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Product_Picture_Mapping_dbo.Picture_PictureId] FOREIGN KEY([MediaFileId])
REFERENCES [dbo].[MediaFile] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product_MediaFile_Mapping] CHECK CONSTRAINT [FK_dbo.Product_Picture_Mapping_dbo.Picture_PictureId]
GO
ALTER TABLE [dbo].[Product_MediaFile_Mapping]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Product_Picture_Mapping_dbo.Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product_MediaFile_Mapping] CHECK CONSTRAINT [FK_dbo.Product_Picture_Mapping_dbo.Product_ProductId]
GO
ALTER TABLE [dbo].[Product_ProductAttribute_Mapping]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Product_ProductAttribute_Mapping_dbo.Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product_ProductAttribute_Mapping] CHECK CONSTRAINT [FK_dbo.Product_ProductAttribute_Mapping_dbo.Product_ProductId]
GO
ALTER TABLE [dbo].[Product_ProductAttribute_Mapping]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Product_ProductAttribute_Mapping_dbo.ProductAttribute_ProductAttributeId] FOREIGN KEY([ProductAttributeId])
REFERENCES [dbo].[ProductAttribute] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product_ProductAttribute_Mapping] CHECK CONSTRAINT [FK_dbo.Product_ProductAttribute_Mapping_dbo.ProductAttribute_ProductAttributeId]
GO
ALTER TABLE [dbo].[Product_ProductTag_Mapping]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Product_ProductTag_Mapping_dbo.Product_Product_Id] FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product_ProductTag_Mapping] CHECK CONSTRAINT [FK_dbo.Product_ProductTag_Mapping_dbo.Product_Product_Id]
GO
ALTER TABLE [dbo].[Product_ProductTag_Mapping]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Product_ProductTag_Mapping_dbo.ProductTag_ProductTag_Id] FOREIGN KEY([ProductTag_Id])
REFERENCES [dbo].[ProductTag] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product_ProductTag_Mapping] CHECK CONSTRAINT [FK_dbo.Product_ProductTag_Mapping_dbo.ProductTag_ProductTag_Id]
GO
ALTER TABLE [dbo].[Product_SpecificationAttribute_Mapping]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Product_SpecificationAttribute_Mapping_dbo.Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product_SpecificationAttribute_Mapping] CHECK CONSTRAINT [FK_dbo.Product_SpecificationAttribute_Mapping_dbo.Product_ProductId]
GO
ALTER TABLE [dbo].[Product_SpecificationAttribute_Mapping]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Product_SpecificationAttribute_Mapping_dbo.SpecificationAttributeOption_SpecificationAttributeOptionId] FOREIGN KEY([SpecificationAttributeOptionId])
REFERENCES [dbo].[SpecificationAttributeOption] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product_SpecificationAttribute_Mapping] CHECK CONSTRAINT [FK_dbo.Product_SpecificationAttribute_Mapping_dbo.SpecificationAttributeOption_SpecificationAttributeOptionId]
GO
ALTER TABLE [dbo].[ProductAttributeOption]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductAttributeOption_dbo.ProductAttributeOptionsSet_ProductAttributeOptionsSetId] FOREIGN KEY([ProductAttributeOptionsSetId])
REFERENCES [dbo].[ProductAttributeOptionsSet] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductAttributeOption] CHECK CONSTRAINT [FK_dbo.ProductAttributeOption_dbo.ProductAttributeOptionsSet_ProductAttributeOptionsSetId]
GO
ALTER TABLE [dbo].[ProductAttributeOptionsSet]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductAttributeOptionsSet_dbo.ProductAttribute_ProductAttributeId] FOREIGN KEY([ProductAttributeId])
REFERENCES [dbo].[ProductAttribute] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductAttributeOptionsSet] CHECK CONSTRAINT [FK_dbo.ProductAttributeOptionsSet_dbo.ProductAttribute_ProductAttributeId]
GO
ALTER TABLE [dbo].[ProductBundleItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductBundleItem_dbo.Product_BundleProductId] FOREIGN KEY([BundleProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductBundleItem] CHECK CONSTRAINT [FK_dbo.ProductBundleItem_dbo.Product_BundleProductId]
GO
ALTER TABLE [dbo].[ProductBundleItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductBundleItem_dbo.Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ProductBundleItem] CHECK CONSTRAINT [FK_dbo.ProductBundleItem_dbo.Product_ProductId]
GO
ALTER TABLE [dbo].[ProductBundleItemAttributeFilter]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductBundleItemAttributeFilter_dbo.ProductBundleItem_BundleItemId] FOREIGN KEY([BundleItemId])
REFERENCES [dbo].[ProductBundleItem] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductBundleItemAttributeFilter] CHECK CONSTRAINT [FK_dbo.ProductBundleItemAttributeFilter_dbo.ProductBundleItem_BundleItemId]
GO
ALTER TABLE [dbo].[ProductReview]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductReview_dbo.CustomerContent_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[CustomerContent] ([Id])
GO
ALTER TABLE [dbo].[ProductReview] CHECK CONSTRAINT [FK_dbo.ProductReview_dbo.CustomerContent_Id]
GO
ALTER TABLE [dbo].[ProductReview]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductReview_dbo.Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductReview] CHECK CONSTRAINT [FK_dbo.ProductReview_dbo.Product_ProductId]
GO
ALTER TABLE [dbo].[ProductReviewHelpfulness]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductReviewHelpfulness_dbo.CustomerContent_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[CustomerContent] ([Id])
GO
ALTER TABLE [dbo].[ProductReviewHelpfulness] CHECK CONSTRAINT [FK_dbo.ProductReviewHelpfulness_dbo.CustomerContent_Id]
GO
ALTER TABLE [dbo].[ProductReviewHelpfulness]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductReviewHelpfulness_dbo.ProductReview_ProductReviewId] FOREIGN KEY([ProductReviewId])
REFERENCES [dbo].[ProductReview] ([Id])
GO
ALTER TABLE [dbo].[ProductReviewHelpfulness] CHECK CONSTRAINT [FK_dbo.ProductReviewHelpfulness_dbo.ProductReview_ProductReviewId]
GO
ALTER TABLE [dbo].[ProductVariantAttributeCombination]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductVariantAttributeCombination_dbo.DeliveryTime_DeliveryTimeId] FOREIGN KEY([DeliveryTimeId])
REFERENCES [dbo].[DeliveryTime] ([Id])
GO
ALTER TABLE [dbo].[ProductVariantAttributeCombination] CHECK CONSTRAINT [FK_dbo.ProductVariantAttributeCombination_dbo.DeliveryTime_DeliveryTimeId]
GO
ALTER TABLE [dbo].[ProductVariantAttributeCombination]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductVariantAttributeCombination_dbo.Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductVariantAttributeCombination] CHECK CONSTRAINT [FK_dbo.ProductVariantAttributeCombination_dbo.Product_ProductId]
GO
ALTER TABLE [dbo].[ProductVariantAttributeCombination]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductVariantAttributeCombination_dbo.QuantityUnit_QuantityUnitId] FOREIGN KEY([QuantityUnitId])
REFERENCES [dbo].[QuantityUnit] ([Id])
GO
ALTER TABLE [dbo].[ProductVariantAttributeCombination] CHECK CONSTRAINT [FK_dbo.ProductVariantAttributeCombination_dbo.QuantityUnit_QuantityUnitId]
GO
ALTER TABLE [dbo].[ProductVariantAttributeValue]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductVariantAttributeValue_dbo.Product_ProductAttribute_Mapping_ProductVariantAttributeId] FOREIGN KEY([ProductVariantAttributeId])
REFERENCES [dbo].[Product_ProductAttribute_Mapping] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductVariantAttributeValue] CHECK CONSTRAINT [FK_dbo.ProductVariantAttributeValue_dbo.Product_ProductAttribute_Mapping_ProductVariantAttributeId]
GO
ALTER TABLE [dbo].[QueuedEmail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QueuedEmail_dbo.EmailAccount_EmailAccountId] FOREIGN KEY([EmailAccountId])
REFERENCES [dbo].[EmailAccount] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QueuedEmail] CHECK CONSTRAINT [FK_dbo.QueuedEmail_dbo.EmailAccount_EmailAccountId]
GO
ALTER TABLE [dbo].[QueuedEmailAttachment]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QueuedEmailAttachment_dbo.MediaFile_MediaFileId] FOREIGN KEY([MediaFileId])
REFERENCES [dbo].[MediaFile] ([Id])
GO
ALTER TABLE [dbo].[QueuedEmailAttachment] CHECK CONSTRAINT [FK_dbo.QueuedEmailAttachment_dbo.MediaFile_MediaFileId]
GO
ALTER TABLE [dbo].[QueuedEmailAttachment]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QueuedEmailAttachment_dbo.MediaStorage_MediaStorageId] FOREIGN KEY([MediaStorageId])
REFERENCES [dbo].[MediaStorage] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QueuedEmailAttachment] CHECK CONSTRAINT [FK_dbo.QueuedEmailAttachment_dbo.MediaStorage_MediaStorageId]
GO
ALTER TABLE [dbo].[QueuedEmailAttachment]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QueuedEmailAttachment_dbo.QueuedEmail_QueuedEmailId] FOREIGN KEY([QueuedEmailId])
REFERENCES [dbo].[QueuedEmail] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QueuedEmailAttachment] CHECK CONSTRAINT [FK_dbo.QueuedEmailAttachment_dbo.QueuedEmail_QueuedEmailId]
GO
ALTER TABLE [dbo].[RecurringPayment]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RecurringPayment_dbo.Order_InitialOrderId] FOREIGN KEY([InitialOrderId])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[RecurringPayment] CHECK CONSTRAINT [FK_dbo.RecurringPayment_dbo.Order_InitialOrderId]
GO
ALTER TABLE [dbo].[RecurringPaymentHistory]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RecurringPaymentHistory_dbo.RecurringPayment_RecurringPaymentId] FOREIGN KEY([RecurringPaymentId])
REFERENCES [dbo].[RecurringPayment] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RecurringPaymentHistory] CHECK CONSTRAINT [FK_dbo.RecurringPaymentHistory_dbo.RecurringPayment_RecurringPaymentId]
GO
ALTER TABLE [dbo].[ReturnRequest]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ReturnRequest_dbo.Customer_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ReturnRequest] CHECK CONSTRAINT [FK_dbo.ReturnRequest_dbo.Customer_CustomerId]
GO
ALTER TABLE [dbo].[RewardPointsHistory]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RewardPointsHistory_dbo.Customer_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RewardPointsHistory] CHECK CONSTRAINT [FK_dbo.RewardPointsHistory_dbo.Customer_CustomerId]
GO
ALTER TABLE [dbo].[RewardPointsHistory]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RewardPointsHistory_dbo.Order_UsedWithOrder_Id] FOREIGN KEY([UsedWithOrder_Id])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[RewardPointsHistory] CHECK CONSTRAINT [FK_dbo.RewardPointsHistory_dbo.Order_UsedWithOrder_Id]
GO
ALTER TABLE [dbo].[Rule]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Rule_dbo.RuleSet_RuleSetId] FOREIGN KEY([RuleSetId])
REFERENCES [dbo].[RuleSet] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Rule] CHECK CONSTRAINT [FK_dbo.Rule_dbo.RuleSet_RuleSetId]
GO
ALTER TABLE [dbo].[RuleSet_Category_Mapping]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RuleSet_Category_Mapping_dbo.Category_Category_Id] FOREIGN KEY([Category_Id])
REFERENCES [dbo].[Category] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RuleSet_Category_Mapping] CHECK CONSTRAINT [FK_dbo.RuleSet_Category_Mapping_dbo.Category_Category_Id]
GO
ALTER TABLE [dbo].[RuleSet_Category_Mapping]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RuleSet_Category_Mapping_dbo.RuleSet_RuleSetEntity_Id] FOREIGN KEY([RuleSetEntity_Id])
REFERENCES [dbo].[RuleSet] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RuleSet_Category_Mapping] CHECK CONSTRAINT [FK_dbo.RuleSet_Category_Mapping_dbo.RuleSet_RuleSetEntity_Id]
GO
ALTER TABLE [dbo].[RuleSet_CustomerRole_Mapping]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RuleSet_CustomerRole_Mapping_dbo.CustomerRole_CustomerRole_Id] FOREIGN KEY([CustomerRole_Id])
REFERENCES [dbo].[CustomerRole] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RuleSet_CustomerRole_Mapping] CHECK CONSTRAINT [FK_dbo.RuleSet_CustomerRole_Mapping_dbo.CustomerRole_CustomerRole_Id]
GO
ALTER TABLE [dbo].[RuleSet_CustomerRole_Mapping]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RuleSet_CustomerRole_Mapping_dbo.RuleSet_RuleSetEntity_Id] FOREIGN KEY([RuleSetEntity_Id])
REFERENCES [dbo].[RuleSet] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RuleSet_CustomerRole_Mapping] CHECK CONSTRAINT [FK_dbo.RuleSet_CustomerRole_Mapping_dbo.RuleSet_RuleSetEntity_Id]
GO
ALTER TABLE [dbo].[RuleSet_Discount_Mapping]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RuleSet_Discount_Mapping_dbo.Discount_Discount_Id] FOREIGN KEY([Discount_Id])
REFERENCES [dbo].[Discount] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RuleSet_Discount_Mapping] CHECK CONSTRAINT [FK_dbo.RuleSet_Discount_Mapping_dbo.Discount_Discount_Id]
GO
ALTER TABLE [dbo].[RuleSet_Discount_Mapping]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RuleSet_Discount_Mapping_dbo.RuleSet_RuleSetEntity_Id] FOREIGN KEY([RuleSetEntity_Id])
REFERENCES [dbo].[RuleSet] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RuleSet_Discount_Mapping] CHECK CONSTRAINT [FK_dbo.RuleSet_Discount_Mapping_dbo.RuleSet_RuleSetEntity_Id]
GO
ALTER TABLE [dbo].[RuleSet_PaymentMethod_Mapping]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RuleSet_PaymentMethod_Mapping_dbo.PaymentMethod_PaymentMethod_Id] FOREIGN KEY([PaymentMethod_Id])
REFERENCES [dbo].[PaymentMethod] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RuleSet_PaymentMethod_Mapping] CHECK CONSTRAINT [FK_dbo.RuleSet_PaymentMethod_Mapping_dbo.PaymentMethod_PaymentMethod_Id]
GO
ALTER TABLE [dbo].[RuleSet_PaymentMethod_Mapping]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RuleSet_PaymentMethod_Mapping_dbo.RuleSet_RuleSetEntity_Id] FOREIGN KEY([RuleSetEntity_Id])
REFERENCES [dbo].[RuleSet] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RuleSet_PaymentMethod_Mapping] CHECK CONSTRAINT [FK_dbo.RuleSet_PaymentMethod_Mapping_dbo.RuleSet_RuleSetEntity_Id]
GO
ALTER TABLE [dbo].[RuleSet_ShippingMethod_Mapping]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RuleSet_ShippingMethod_Mapping_dbo.RuleSet_RuleSetEntity_Id] FOREIGN KEY([RuleSetEntity_Id])
REFERENCES [dbo].[RuleSet] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RuleSet_ShippingMethod_Mapping] CHECK CONSTRAINT [FK_dbo.RuleSet_ShippingMethod_Mapping_dbo.RuleSet_RuleSetEntity_Id]
GO
ALTER TABLE [dbo].[RuleSet_ShippingMethod_Mapping]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RuleSet_ShippingMethod_Mapping_dbo.ShippingMethod_ShippingMethod_Id] FOREIGN KEY([ShippingMethod_Id])
REFERENCES [dbo].[ShippingMethod] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RuleSet_ShippingMethod_Mapping] CHECK CONSTRAINT [FK_dbo.RuleSet_ShippingMethod_Mapping_dbo.ShippingMethod_ShippingMethod_Id]
GO
ALTER TABLE [dbo].[ScheduleTaskHistory]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ScheduleTaskHistory_dbo.ScheduleTask_ScheduleTaskId] FOREIGN KEY([ScheduleTaskId])
REFERENCES [dbo].[ScheduleTask] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ScheduleTaskHistory] CHECK CONSTRAINT [FK_dbo.ScheduleTaskHistory_dbo.ScheduleTask_ScheduleTaskId]
GO
ALTER TABLE [dbo].[Shipment]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Shipment_dbo.Order_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Shipment] CHECK CONSTRAINT [FK_dbo.Shipment_dbo.Order_OrderId]
GO
ALTER TABLE [dbo].[ShipmentItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ShipmentItem_dbo.Shipment_ShipmentId] FOREIGN KEY([ShipmentId])
REFERENCES [dbo].[Shipment] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ShipmentItem] CHECK CONSTRAINT [FK_dbo.ShipmentItem_dbo.Shipment_ShipmentId]
GO
ALTER TABLE [dbo].[ShoppingCartItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ShoppingCartItem_dbo.Customer_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ShoppingCartItem] CHECK CONSTRAINT [FK_dbo.ShoppingCartItem_dbo.Customer_CustomerId]
GO
ALTER TABLE [dbo].[ShoppingCartItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ShoppingCartItem_dbo.Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ShoppingCartItem] CHECK CONSTRAINT [FK_dbo.ShoppingCartItem_dbo.Product_ProductId]
GO
ALTER TABLE [dbo].[ShoppingCartItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ShoppingCartItem_dbo.ProductBundleItem_BundleItemId] FOREIGN KEY([BundleItemId])
REFERENCES [dbo].[ProductBundleItem] ([Id])
GO
ALTER TABLE [dbo].[ShoppingCartItem] CHECK CONSTRAINT [FK_dbo.ShoppingCartItem_dbo.ProductBundleItem_BundleItemId]
GO
ALTER TABLE [dbo].[SpecificationAttributeOption]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SpecificationAttributeOption_dbo.SpecificationAttribute_SpecificationAttributeId] FOREIGN KEY([SpecificationAttributeId])
REFERENCES [dbo].[SpecificationAttribute] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SpecificationAttributeOption] CHECK CONSTRAINT [FK_dbo.SpecificationAttributeOption_dbo.SpecificationAttribute_SpecificationAttributeId]
GO
ALTER TABLE [dbo].[StateProvince]  WITH CHECK ADD  CONSTRAINT [FK_dbo.StateProvince_dbo.Country_CountryId] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Country] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StateProvince] CHECK CONSTRAINT [FK_dbo.StateProvince_dbo.Country_CountryId]
GO
ALTER TABLE [dbo].[Store]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Store_dbo.Currency_PrimaryExchangeRateCurrencyId] FOREIGN KEY([PrimaryExchangeRateCurrencyId])
REFERENCES [dbo].[Currency] ([Id])
GO
ALTER TABLE [dbo].[Store] CHECK CONSTRAINT [FK_dbo.Store_dbo.Currency_PrimaryExchangeRateCurrencyId]
GO
ALTER TABLE [dbo].[Store]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Store_dbo.Currency_PrimaryStoreCurrencyId] FOREIGN KEY([PrimaryStoreCurrencyId])
REFERENCES [dbo].[Currency] ([Id])
GO
ALTER TABLE [dbo].[Store] CHECK CONSTRAINT [FK_dbo.Store_dbo.Currency_PrimaryStoreCurrencyId]
GO
ALTER TABLE [dbo].[TierPrice]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TierPrice_dbo.CustomerRole_CustomerRoleId] FOREIGN KEY([CustomerRoleId])
REFERENCES [dbo].[CustomerRole] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TierPrice] CHECK CONSTRAINT [FK_dbo.TierPrice_dbo.CustomerRole_CustomerRoleId]
GO
ALTER TABLE [dbo].[TierPrice]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TierPrice_dbo.Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TierPrice] CHECK CONSTRAINT [FK_dbo.TierPrice_dbo.Product_ProductId]
GO
ALTER TABLE [dbo].[WalletHistory]  WITH CHECK ADD  CONSTRAINT [FK_dbo.WalletHistory_dbo.Customer_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WalletHistory] CHECK CONSTRAINT [FK_dbo.WalletHistory_dbo.Customer_CustomerId]
GO
ALTER TABLE [dbo].[WalletHistory]  WITH CHECK ADD  CONSTRAINT [FK_dbo.WalletHistory_dbo.Order_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[WalletHistory] CHECK CONSTRAINT [FK_dbo.WalletHistory_dbo.Order_OrderId]
GO
/****** Object:  StoredProcedure [dbo].[ProductTagCountLoadAll]    Script Date: 7/2/2020 12:07:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ProductTagCountLoadAll]
(
	@StoreId int,
   @IncludeHidden bit = 0
)
AS
BEGIN
    SET NOCOUNT ON
    SELECT pt.Id as [ProductTagId], COUNT(p.Id) as [ProductCount]
    FROM ProductTag pt with (NOLOCK)
	LEFT JOIN Product_ProductTag_Mapping pptm with (NOLOCK) ON pt.[Id] = pptm.[ProductTag_Id]
	LEFT JOIN Product p with (NOLOCK) ON pptm.[Product_Id] = p.[Id]
	WHERE
		p.[Deleted] = 0
		AND p.Published = 1
		AND p.Visibility = 0
		AND (@IncludeHidden = 1 Or pt.Published = 1)
		AND (@StoreId = 0 or (p.LimitedToStores = 0 OR EXISTS (
			SELECT 1 FROM [StoreMapping] sm
			WHERE [sm].EntityId = p.Id AND [sm].EntityName = 'Product' and [sm].StoreId=@StoreId
			)))
	GROUP BY pt.Id
	ORDER BY pt.Id
END
GO
