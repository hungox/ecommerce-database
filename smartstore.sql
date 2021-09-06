/*
 Navicat Premium Data Transfer

 Source Server         : SQL Server
 Source Server Type    : SQL Server
 Source Server Version : 15004023
 Source Host           : localhost:1433
 Source Catalog        : smartstore
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 15004023
 File Encoding         : 65001

 Date: 05/01/2021 01:24:55
*/


-- ----------------------------
-- Table structure for __MigrationHistory
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[__MigrationHistory]') AND type IN ('U'))
	DROP TABLE [dbo].[__MigrationHistory]
GO

CREATE TABLE [dbo].[__MigrationHistory] (
  [MigrationId] nvarchar(150) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ContextKey] nvarchar(300) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Model] varbinary(max)  NOT NULL,
  [ProductVersion] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[__MigrationHistory] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for AclRecord
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AclRecord]') AND type IN ('U'))
	DROP TABLE [dbo].[AclRecord]
GO

CREATE TABLE [dbo].[AclRecord] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [EntityId] int  NOT NULL,
  [EntityName] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [CustomerRoleId] int  NOT NULL,
  [IsIdle] bit  NOT NULL
)
GO

ALTER TABLE [dbo].[AclRecord] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ActivityLog
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ActivityLog]') AND type IN ('U'))
	DROP TABLE [dbo].[ActivityLog]
GO

CREATE TABLE [dbo].[ActivityLog] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [ActivityLogTypeId] int  NOT NULL,
  [CustomerId] int  NOT NULL,
  [Comment] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [CreatedOnUtc] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[ActivityLog] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ActivityLogType
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ActivityLogType]') AND type IN ('U'))
	DROP TABLE [dbo].[ActivityLogType]
GO

CREATE TABLE [dbo].[ActivityLogType] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [SystemKeyword] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Name] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Enabled] bit  NOT NULL
)
GO

ALTER TABLE [dbo].[ActivityLogType] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Address
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Address]') AND type IN ('U'))
	DROP TABLE [dbo].[Address]
GO

CREATE TABLE [dbo].[Address] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Salutation] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Title] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FirstName] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LastName] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Email] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Company] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CountryId] int  NULL,
  [StateProvinceId] int  NULL,
  [City] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Address1] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Address2] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ZipPostalCode] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PhoneNumber] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FaxNumber] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CreatedOnUtc] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[Address] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Affiliate
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Affiliate]') AND type IN ('U'))
	DROP TABLE [dbo].[Affiliate]
GO

CREATE TABLE [dbo].[Affiliate] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [AddressId] int  NOT NULL,
  [Deleted] bit  NOT NULL,
  [Active] bit  NOT NULL
)
GO

ALTER TABLE [dbo].[Affiliate] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for BackInStockSubscription
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[BackInStockSubscription]') AND type IN ('U'))
	DROP TABLE [dbo].[BackInStockSubscription]
GO

CREATE TABLE [dbo].[BackInStockSubscription] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [StoreId] int  NOT NULL,
  [ProductId] int  NOT NULL,
  [CustomerId] int  NOT NULL,
  [CreatedOnUtc] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[BackInStockSubscription] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for BlogComment
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[BlogComment]') AND type IN ('U'))
	DROP TABLE [dbo].[BlogComment]
GO

CREATE TABLE [dbo].[BlogComment] (
  [Id] int  NOT NULL,
  [CommentText] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [BlogPostId] int  NOT NULL
)
GO

ALTER TABLE [dbo].[BlogComment] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for BlogPost
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[BlogPost]') AND type IN ('U'))
	DROP TABLE [dbo].[BlogPost]
GO

CREATE TABLE [dbo].[BlogPost] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Title] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Body] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [AllowComments] bit  NOT NULL,
  [ApprovedCommentCount] int  NOT NULL,
  [NotApprovedCommentCount] int  NOT NULL,
  [Tags] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [StartDateUtc] datetime  NULL,
  [EndDateUtc] datetime  NULL,
  [MetaKeywords] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MetaDescription] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MetaTitle] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LimitedToStores] bit  NOT NULL,
  [CreatedOnUtc] datetime  NOT NULL,
  [MediaFileId] int  NULL,
  [PreviewMediaFileId] int  NULL,
  [SectionBg] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Intro] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DisplayTagsInPreview] bit DEFAULT 0 NOT NULL,
  [IsPublished] bit DEFAULT 1 NOT NULL,
  [PreviewDisplayType] int DEFAULT 0 NOT NULL
)
GO

ALTER TABLE [dbo].[BlogPost] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Campaign
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Campaign]') AND type IN ('U'))
	DROP TABLE [dbo].[Campaign]
GO

CREATE TABLE [dbo].[Campaign] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Subject] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Body] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [CreatedOnUtc] datetime  NOT NULL,
  [LimitedToStores] bit  NOT NULL,
  [SubjectToAcl] bit DEFAULT 0 NOT NULL
)
GO

ALTER TABLE [dbo].[Campaign] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Category
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type IN ('U'))
	DROP TABLE [dbo].[Category]
GO

CREATE TABLE [dbo].[Category] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [FullName] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Description] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [BottomDescription] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [BadgeText] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [BadgeStyle] int  NOT NULL,
  [Alias] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CategoryTemplateId] int  NOT NULL,
  [MetaKeywords] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MetaDescription] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MetaTitle] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ParentCategoryId] int  NOT NULL,
  [MediaFileId] int  NULL,
  [PageSize] int  NULL,
  [AllowCustomersToSelectPageSize] bit  NULL,
  [PageSizeOptions] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PriceRanges] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ShowOnHomePage] bit  NOT NULL,
  [HasDiscountsApplied] bit  NOT NULL,
  [SubjectToAcl] bit  NOT NULL,
  [LimitedToStores] bit  NOT NULL,
  [Published] bit  NOT NULL,
  [Deleted] bit  NOT NULL,
  [DisplayOrder] int  NOT NULL,
  [CreatedOnUtc] datetime  NOT NULL,
  [UpdatedOnUtc] datetime  NOT NULL,
  [DefaultViewMode] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ExternalLink] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Category] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for CategoryTemplate
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[CategoryTemplate]') AND type IN ('U'))
	DROP TABLE [dbo].[CategoryTemplate]
GO

CREATE TABLE [dbo].[CategoryTemplate] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ViewPath] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [DisplayOrder] int  NOT NULL
)
GO

ALTER TABLE [dbo].[CategoryTemplate] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for CheckoutAttribute
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[CheckoutAttribute]') AND type IN ('U'))
	DROP TABLE [dbo].[CheckoutAttribute]
GO

CREATE TABLE [dbo].[CheckoutAttribute] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [TextPrompt] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [IsRequired] bit  NOT NULL,
  [ShippableProductRequired] bit  NOT NULL,
  [IsTaxExempt] bit  NOT NULL,
  [TaxCategoryId] int  NOT NULL,
  [AttributeControlTypeId] int  NOT NULL,
  [DisplayOrder] int  NOT NULL,
  [IsActive] bit  NOT NULL,
  [LimitedToStores] bit  NOT NULL
)
GO

ALTER TABLE [dbo].[CheckoutAttribute] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for CheckoutAttributeValue
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[CheckoutAttributeValue]') AND type IN ('U'))
	DROP TABLE [dbo].[CheckoutAttributeValue]
GO

CREATE TABLE [dbo].[CheckoutAttributeValue] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [CheckoutAttributeId] int  NOT NULL,
  [Name] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [PriceAdjustment] decimal(18,4)  NOT NULL,
  [WeightAdjustment] decimal(18,4)  NOT NULL,
  [IsPreSelected] bit  NOT NULL,
  [DisplayOrder] int  NOT NULL,
  [MediaFileId] int  NULL,
  [Color] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[CheckoutAttributeValue] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Country
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Country]') AND type IN ('U'))
	DROP TABLE [dbo].[Country]
GO

CREATE TABLE [dbo].[Country] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [AllowsBilling] bit  NOT NULL,
  [AllowsShipping] bit  NOT NULL,
  [TwoLetterIsoCode] nvarchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ThreeLetterIsoCode] nvarchar(3) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NumericIsoCode] int  NOT NULL,
  [SubjectToVat] bit  NOT NULL,
  [Published] bit  NOT NULL,
  [DisplayOrder] int  NOT NULL,
  [LimitedToStores] bit  NOT NULL,
  [AddressFormat] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DisplayCookieManager] bit DEFAULT 1 NOT NULL,
  [DefaultCurrencyId] int  NULL
)
GO

ALTER TABLE [dbo].[Country] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for CrossSellProduct
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[CrossSellProduct]') AND type IN ('U'))
	DROP TABLE [dbo].[CrossSellProduct]
GO

CREATE TABLE [dbo].[CrossSellProduct] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [ProductId1] int  NOT NULL,
  [ProductId2] int  NOT NULL
)
GO

ALTER TABLE [dbo].[CrossSellProduct] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Currency
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Currency]') AND type IN ('U'))
	DROP TABLE [dbo].[Currency]
GO

CREATE TABLE [dbo].[Currency] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [CurrencyCode] nvarchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Rate] decimal(18,8)  NOT NULL,
  [DisplayLocale] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CustomFormatting] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LimitedToStores] bit  NOT NULL,
  [Published] bit  NOT NULL,
  [DisplayOrder] int  NOT NULL,
  [CreatedOnUtc] datetime  NOT NULL,
  [UpdatedOnUtc] datetime  NOT NULL,
  [DomainEndings] nvarchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [RoundOrderItemsEnabled] bit DEFAULT 0 NOT NULL,
  [RoundNumDecimals] int DEFAULT 2 NOT NULL,
  [RoundOrderTotalEnabled] bit DEFAULT 0 NOT NULL,
  [RoundOrderTotalDenominator] decimal(18,4) DEFAULT 0 NOT NULL,
  [RoundOrderTotalRule] int DEFAULT 0 NOT NULL
)
GO

ALTER TABLE [dbo].[Currency] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Customer
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type IN ('U'))
	DROP TABLE [dbo].[Customer]
GO

CREATE TABLE [dbo].[Customer] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [CustomerGuid] uniqueidentifier  NOT NULL,
  [Username] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Email] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Password] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PasswordFormatId] int  NOT NULL,
  [PasswordSalt] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AdminComment] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [IsTaxExempt] bit  NOT NULL,
  [AffiliateId] int  NOT NULL,
  [Active] bit  NOT NULL,
  [Deleted] bit  NOT NULL,
  [IsSystemAccount] bit  NOT NULL,
  [SystemName] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LastIpAddress] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CreatedOnUtc] datetime  NOT NULL,
  [LastLoginDateUtc] datetime  NULL,
  [LastActivityDateUtc] datetime  NOT NULL,
  [BillingAddress_Id] int  NULL,
  [ShippingAddress_Id] int  NULL,
  [Salutation] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Title] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FirstName] nvarchar(225) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LastName] nvarchar(225) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FullName] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Company] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CustomerNumber] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [BirthDate] datetime  NULL,
  [Gender] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ZipPostalCode] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [VatNumberStatusId] int DEFAULT 0 NOT NULL,
  [TimeZoneId] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TaxDisplayTypeId] int DEFAULT 0 NOT NULL,
  [CountryId] int DEFAULT 0 NOT NULL,
  [CurrencyId] int  NULL,
  [LanguageId] int DEFAULT 0 NOT NULL,
  [LastForumVisit] datetime  NULL,
  [LastUserAgent] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LastUserDeviceType] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Customer] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for CustomerAddresses
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[CustomerAddresses]') AND type IN ('U'))
	DROP TABLE [dbo].[CustomerAddresses]
GO

CREATE TABLE [dbo].[CustomerAddresses] (
  [Customer_Id] int  NOT NULL,
  [Address_Id] int  NOT NULL
)
GO

ALTER TABLE [dbo].[CustomerAddresses] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for CustomerContent
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[CustomerContent]') AND type IN ('U'))
	DROP TABLE [dbo].[CustomerContent]
GO

CREATE TABLE [dbo].[CustomerContent] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [CustomerId] int  NOT NULL,
  [IpAddress] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [IsApproved] bit  NOT NULL,
  [CreatedOnUtc] datetime  NOT NULL,
  [UpdatedOnUtc] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[CustomerContent] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for CustomerRole
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[CustomerRole]') AND type IN ('U'))
	DROP TABLE [dbo].[CustomerRole]
GO

CREATE TABLE [dbo].[CustomerRole] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [FreeShipping] bit  NOT NULL,
  [TaxExempt] bit  NOT NULL,
  [TaxDisplayType] int  NULL,
  [Active] bit  NOT NULL,
  [IsSystemRole] bit  NOT NULL,
  [SystemName] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [OrderTotalMinimum] decimal(18,2)  NULL,
  [OrderTotalMaximum] decimal(18,2)  NULL
)
GO

ALTER TABLE [dbo].[CustomerRole] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for CustomerRoleMapping
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[CustomerRoleMapping]') AND type IN ('U'))
	DROP TABLE [dbo].[CustomerRoleMapping]
GO

CREATE TABLE [dbo].[CustomerRoleMapping] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [CustomerId] int  NOT NULL,
  [CustomerRoleId] int  NOT NULL,
  [IsSystemMapping] bit  NOT NULL
)
GO

ALTER TABLE [dbo].[CustomerRoleMapping] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for DeliveryTime
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[DeliveryTime]') AND type IN ('U'))
	DROP TABLE [dbo].[DeliveryTime]
GO

CREATE TABLE [dbo].[DeliveryTime] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ColorHexValue] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [DisplayLocale] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DisplayOrder] int  NOT NULL,
  [IsDefault] bit  NULL,
  [MinDays] int  NULL,
  [MaxDays] int  NULL
)
GO

ALTER TABLE [dbo].[DeliveryTime] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Discount
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Discount]') AND type IN ('U'))
	DROP TABLE [dbo].[Discount]
GO

CREATE TABLE [dbo].[Discount] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [DiscountTypeId] int  NOT NULL,
  [UsePercentage] bit  NOT NULL,
  [DiscountPercentage] decimal(18,4)  NOT NULL,
  [DiscountAmount] decimal(18,4)  NOT NULL,
  [StartDateUtc] datetime  NULL,
  [EndDateUtc] datetime  NULL,
  [RequiresCouponCode] bit  NOT NULL,
  [CouponCode] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DiscountLimitationId] int  NOT NULL,
  [LimitationTimes] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Discount] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Discount_AppliedToCategories
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Discount_AppliedToCategories]') AND type IN ('U'))
	DROP TABLE [dbo].[Discount_AppliedToCategories]
GO

CREATE TABLE [dbo].[Discount_AppliedToCategories] (
  [Discount_Id] int  NOT NULL,
  [Category_Id] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Discount_AppliedToCategories] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Discount_AppliedToManufacturers
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Discount_AppliedToManufacturers]') AND type IN ('U'))
	DROP TABLE [dbo].[Discount_AppliedToManufacturers]
GO

CREATE TABLE [dbo].[Discount_AppliedToManufacturers] (
  [Discount_Id] int  NOT NULL,
  [Manufacturer_Id] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Discount_AppliedToManufacturers] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Discount_AppliedToProducts
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Discount_AppliedToProducts]') AND type IN ('U'))
	DROP TABLE [dbo].[Discount_AppliedToProducts]
GO

CREATE TABLE [dbo].[Discount_AppliedToProducts] (
  [Discount_Id] int  NOT NULL,
  [Product_Id] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Discount_AppliedToProducts] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for DiscountUsageHistory
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[DiscountUsageHistory]') AND type IN ('U'))
	DROP TABLE [dbo].[DiscountUsageHistory]
GO

CREATE TABLE [dbo].[DiscountUsageHistory] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [DiscountId] int  NOT NULL,
  [OrderId] int  NOT NULL,
  [CreatedOnUtc] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[DiscountUsageHistory] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Download
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Download]') AND type IN ('U'))
	DROP TABLE [dbo].[Download]
GO

CREATE TABLE [dbo].[Download] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [DownloadGuid] uniqueidentifier  NOT NULL,
  [UseDownloadUrl] bit  NOT NULL,
  [DownloadUrl] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ContentType] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Filename] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Extension] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [IsTransient] bit  NOT NULL,
  [UpdatedOnUtc] datetime  NOT NULL,
  [MediaStorageId] int  NULL,
  [EntityId] int DEFAULT 0 NOT NULL,
  [EntityName] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT '' NOT NULL,
  [FileVersion] nvarchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Changelog] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MediaFileId] int  NULL
)
GO

ALTER TABLE [dbo].[Download] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for EmailAccount
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailAccount]') AND type IN ('U'))
	DROP TABLE [dbo].[EmailAccount]
GO

CREATE TABLE [dbo].[EmailAccount] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Email] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [DisplayName] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Host] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Port] int  NOT NULL,
  [Username] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Password] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [EnableSsl] bit  NOT NULL,
  [UseDefaultCredentials] bit  NOT NULL
)
GO

ALTER TABLE [dbo].[EmailAccount] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ExportDeployment
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ExportDeployment]') AND type IN ('U'))
	DROP TABLE [dbo].[ExportDeployment]
GO

CREATE TABLE [dbo].[ExportDeployment] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [ProfileId] int  NOT NULL,
  [Name] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Enabled] bit  NOT NULL,
  [ResultInfo] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DeploymentTypeId] int  NOT NULL,
  [Username] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Password] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Url] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [HttpTransmissionTypeId] int  NOT NULL,
  [HttpTransmissionType] int  NOT NULL,
  [FileSystemPath] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SubFolder] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [EmailAddresses] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [EmailSubject] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [EmailAccountId] int  NOT NULL,
  [PassiveMode] bit  NOT NULL,
  [UseSsl] bit  NOT NULL
)
GO

ALTER TABLE [dbo].[ExportDeployment] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ExportProfile
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ExportProfile]') AND type IN ('U'))
	DROP TABLE [dbo].[ExportProfile]
GO

CREATE TABLE [dbo].[ExportProfile] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [FolderName] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [FileNamePattern] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SystemName] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ProviderSystemName] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [IsSystemProfile] bit  NOT NULL,
  [Enabled] bit  NOT NULL,
  [SchedulingTaskId] int  NOT NULL,
  [Filtering] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Projection] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ProviderConfigData] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ResultInfo] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Offset] int  NOT NULL,
  [Limit] int  NOT NULL,
  [BatchSize] int  NOT NULL,
  [PerStore] bit  NOT NULL,
  [EmailAccountId] int  NOT NULL,
  [CompletedEmailAddresses] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CreateZipArchive] bit  NOT NULL,
  [Cleanup] bit  NOT NULL,
  [ExportRelatedData] bit DEFAULT 0 NOT NULL
)
GO

ALTER TABLE [dbo].[ExportProfile] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ExternalAuthenticationRecord
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ExternalAuthenticationRecord]') AND type IN ('U'))
	DROP TABLE [dbo].[ExternalAuthenticationRecord]
GO

CREATE TABLE [dbo].[ExternalAuthenticationRecord] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [CustomerId] int  NOT NULL,
  [Email] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ExternalIdentifier] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ExternalDisplayIdentifier] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [OAuthToken] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [OAuthAccessToken] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ProviderSystemName] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[ExternalAuthenticationRecord] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ForumPostVote
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ForumPostVote]') AND type IN ('U'))
	DROP TABLE [dbo].[ForumPostVote]
GO

CREATE TABLE [dbo].[ForumPostVote] (
  [Id] int  NOT NULL,
  [ForumPostId] int  NOT NULL,
  [Vote] bit  NOT NULL
)
GO

ALTER TABLE [dbo].[ForumPostVote] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Forums_Forum
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Forums_Forum]') AND type IN ('U'))
	DROP TABLE [dbo].[Forums_Forum]
GO

CREATE TABLE [dbo].[Forums_Forum] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [ForumGroupId] int  NOT NULL,
  [Name] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Description] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NumTopics] int  NOT NULL,
  [NumPosts] int  NOT NULL,
  [LastTopicId] int  NOT NULL,
  [LastPostId] int  NOT NULL,
  [LastPostCustomerId] int  NOT NULL,
  [LastPostTime] datetime  NULL,
  [DisplayOrder] int  NOT NULL,
  [CreatedOnUtc] datetime  NOT NULL,
  [UpdatedOnUtc] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[Forums_Forum] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Forums_Group
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Forums_Group]') AND type IN ('U'))
	DROP TABLE [dbo].[Forums_Group]
GO

CREATE TABLE [dbo].[Forums_Group] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Description] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DisplayOrder] int  NOT NULL,
  [CreatedOnUtc] datetime  NOT NULL,
  [UpdatedOnUtc] datetime  NOT NULL,
  [LimitedToStores] bit  NOT NULL,
  [SubjectToAcl] bit DEFAULT 0 NOT NULL
)
GO

ALTER TABLE [dbo].[Forums_Group] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Forums_Post
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Forums_Post]') AND type IN ('U'))
	DROP TABLE [dbo].[Forums_Post]
GO

CREATE TABLE [dbo].[Forums_Post] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [TopicId] int  NOT NULL,
  [CustomerId] int  NOT NULL,
  [Text] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [IPAddress] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CreatedOnUtc] datetime  NOT NULL,
  [UpdatedOnUtc] datetime  NOT NULL,
  [Published] bit DEFAULT 1 NOT NULL
)
GO

ALTER TABLE [dbo].[Forums_Post] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Forums_PrivateMessage
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Forums_PrivateMessage]') AND type IN ('U'))
	DROP TABLE [dbo].[Forums_PrivateMessage]
GO

CREATE TABLE [dbo].[Forums_PrivateMessage] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [StoreId] int  NOT NULL,
  [FromCustomerId] int  NOT NULL,
  [ToCustomerId] int  NOT NULL,
  [Subject] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Text] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [IsRead] bit  NOT NULL,
  [IsDeletedByAuthor] bit  NOT NULL,
  [IsDeletedByRecipient] bit  NOT NULL,
  [CreatedOnUtc] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[Forums_PrivateMessage] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Forums_Subscription
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Forums_Subscription]') AND type IN ('U'))
	DROP TABLE [dbo].[Forums_Subscription]
GO

CREATE TABLE [dbo].[Forums_Subscription] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [SubscriptionGuid] uniqueidentifier  NOT NULL,
  [CustomerId] int  NOT NULL,
  [ForumId] int  NOT NULL,
  [TopicId] int  NOT NULL,
  [CreatedOnUtc] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[Forums_Subscription] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Forums_Topic
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Forums_Topic]') AND type IN ('U'))
	DROP TABLE [dbo].[Forums_Topic]
GO

CREATE TABLE [dbo].[Forums_Topic] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [ForumId] int  NOT NULL,
  [CustomerId] int  NOT NULL,
  [TopicTypeId] int  NOT NULL,
  [Subject] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [NumPosts] int  NOT NULL,
  [Views] int  NOT NULL,
  [LastPostId] int  NOT NULL,
  [LastPostCustomerId] int  NOT NULL,
  [LastPostTime] datetime  NULL,
  [CreatedOnUtc] datetime  NOT NULL,
  [UpdatedOnUtc] datetime  NOT NULL,
  [Published] bit DEFAULT 1 NOT NULL
)
GO

ALTER TABLE [dbo].[Forums_Topic] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for GenericAttribute
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[GenericAttribute]') AND type IN ('U'))
	DROP TABLE [dbo].[GenericAttribute]
GO

CREATE TABLE [dbo].[GenericAttribute] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [EntityId] int  NOT NULL,
  [KeyGroup] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Key] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Value] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [StoreId] int  NOT NULL
)
GO

ALTER TABLE [dbo].[GenericAttribute] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for GiftCard
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[GiftCard]') AND type IN ('U'))
	DROP TABLE [dbo].[GiftCard]
GO

CREATE TABLE [dbo].[GiftCard] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [PurchasedWithOrderItemId] int  NULL,
  [GiftCardTypeId] int  NOT NULL,
  [Amount] decimal(18,4)  NOT NULL,
  [IsGiftCardActivated] bit  NOT NULL,
  [GiftCardCouponCode] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [RecipientName] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [RecipientEmail] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SenderName] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SenderEmail] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Message] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [IsRecipientNotified] bit  NOT NULL,
  [CreatedOnUtc] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[GiftCard] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for GiftCardUsageHistory
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[GiftCardUsageHistory]') AND type IN ('U'))
	DROP TABLE [dbo].[GiftCardUsageHistory]
GO

CREATE TABLE [dbo].[GiftCardUsageHistory] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [GiftCardId] int  NOT NULL,
  [UsedWithOrderId] int  NOT NULL,
  [UsedValue] decimal(18,4)  NOT NULL,
  [CreatedOnUtc] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[GiftCardUsageHistory] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ImportProfile
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ImportProfile]') AND type IN ('U'))
	DROP TABLE [dbo].[ImportProfile]
GO

CREATE TABLE [dbo].[ImportProfile] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [FolderName] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [FileTypeId] int  NOT NULL,
  [EntityTypeId] int  NOT NULL,
  [Enabled] bit  NOT NULL,
  [Skip] int  NOT NULL,
  [Take] int  NOT NULL,
  [UpdateOnly] bit  NOT NULL,
  [KeyFieldNames] nvarchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FileTypeConfiguration] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ExtraData] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ColumnMapping] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ResultInfo] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SchedulingTaskId] int  NOT NULL,
  [ImportRelatedData] bit DEFAULT 0 NOT NULL
)
GO

ALTER TABLE [dbo].[ImportProfile] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Language
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Language]') AND type IN ('U'))
	DROP TABLE [dbo].[Language]
GO

CREATE TABLE [dbo].[Language] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [LanguageCulture] nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [UniqueSeoCode] nvarchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FlagImageFileName] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Rtl] bit  NOT NULL,
  [LimitedToStores] bit  NOT NULL,
  [Published] bit  NOT NULL,
  [DisplayOrder] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Language] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for LocaleStringResource
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[LocaleStringResource]') AND type IN ('U'))
	DROP TABLE [dbo].[LocaleStringResource]
GO

CREATE TABLE [dbo].[LocaleStringResource] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [LanguageId] int  NOT NULL,
  [ResourceName] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ResourceValue] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [IsFromPlugin] bit  NULL,
  [IsTouched] bit  NULL
)
GO

ALTER TABLE [dbo].[LocaleStringResource] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for LocalizedProperty
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[LocalizedProperty]') AND type IN ('U'))
	DROP TABLE [dbo].[LocalizedProperty]
GO

CREATE TABLE [dbo].[LocalizedProperty] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [EntityId] int  NOT NULL,
  [LanguageId] int  NOT NULL,
  [LocaleKeyGroup] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [LocaleKey] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [LocaleValue] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[LocalizedProperty] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Log
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Log]') AND type IN ('U'))
	DROP TABLE [dbo].[Log]
GO

CREATE TABLE [dbo].[Log] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [LogLevelId] int  NOT NULL,
  [ShortMessage] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [FullMessage] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [IpAddress] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CustomerId] int  NULL,
  [PageUrl] nvarchar(1500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ReferrerUrl] nvarchar(1500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CreatedOnUtc] datetime  NOT NULL,
  [Logger] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [HttpMethod] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [UserName] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Log] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Manufacturer
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Manufacturer]') AND type IN ('U'))
	DROP TABLE [dbo].[Manufacturer]
GO

CREATE TABLE [dbo].[Manufacturer] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Description] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ManufacturerTemplateId] int  NOT NULL,
  [MetaKeywords] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MetaDescription] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MetaTitle] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MediaFileId] int  NULL,
  [PageSize] int  NULL,
  [AllowCustomersToSelectPageSize] bit  NULL,
  [PageSizeOptions] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PriceRanges] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LimitedToStores] bit  NOT NULL,
  [Published] bit  NOT NULL,
  [Deleted] bit  NOT NULL,
  [DisplayOrder] int  NOT NULL,
  [CreatedOnUtc] datetime  NOT NULL,
  [UpdatedOnUtc] datetime  NOT NULL,
  [HasDiscountsApplied] bit  NOT NULL,
  [BottomDescription] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SubjectToAcl] bit DEFAULT 0 NOT NULL
)
GO

ALTER TABLE [dbo].[Manufacturer] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ManufacturerTemplate
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ManufacturerTemplate]') AND type IN ('U'))
	DROP TABLE [dbo].[ManufacturerTemplate]
GO

CREATE TABLE [dbo].[ManufacturerTemplate] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ViewPath] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [DisplayOrder] int  NOT NULL
)
GO

ALTER TABLE [dbo].[ManufacturerTemplate] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for MeasureDimension
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MeasureDimension]') AND type IN ('U'))
	DROP TABLE [dbo].[MeasureDimension]
GO

CREATE TABLE [dbo].[MeasureDimension] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [SystemKeyword] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Ratio] decimal(18,8)  NOT NULL,
  [DisplayOrder] int  NOT NULL
)
GO

ALTER TABLE [dbo].[MeasureDimension] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for MeasureWeight
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MeasureWeight]') AND type IN ('U'))
	DROP TABLE [dbo].[MeasureWeight]
GO

CREATE TABLE [dbo].[MeasureWeight] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [SystemKeyword] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Ratio] decimal(18,8)  NOT NULL,
  [DisplayOrder] int  NOT NULL
)
GO

ALTER TABLE [dbo].[MeasureWeight] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for MediaFile
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MediaFile]') AND type IN ('U'))
	DROP TABLE [dbo].[MediaFile]
GO

CREATE TABLE [dbo].[MediaFile] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [MimeType] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Width] int  NULL,
  [Height] int  NULL,
  [Name] nvarchar(300) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [IsTransient] bit  NOT NULL,
  [UpdatedOnUtc] datetime  NOT NULL,
  [MediaStorageId] int  NULL,
  [FolderId] int  NULL,
  [Alt] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Title] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Extension] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MediaType] nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT '' NOT NULL,
  [Size] int DEFAULT 0 NOT NULL,
  [PixelSize] int  NULL,
  [Metadata] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CreatedOnUtc] datetime DEFAULT '1900-01-01T00:00:00.000' NOT NULL,
  [Deleted] bit DEFAULT 0 NOT NULL,
  [Hidden] bit DEFAULT 0 NOT NULL,
  [Version] int DEFAULT 0 NOT NULL
)
GO

ALTER TABLE [dbo].[MediaFile] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for MediaFile_Tag_Mapping
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MediaFile_Tag_Mapping]') AND type IN ('U'))
	DROP TABLE [dbo].[MediaFile_Tag_Mapping]
GO

CREATE TABLE [dbo].[MediaFile_Tag_Mapping] (
  [MediaFile_Id] int  NOT NULL,
  [MediaTag_Id] int  NOT NULL
)
GO

ALTER TABLE [dbo].[MediaFile_Tag_Mapping] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for MediaFolder
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MediaFolder]') AND type IN ('U'))
	DROP TABLE [dbo].[MediaFolder]
GO

CREATE TABLE [dbo].[MediaFolder] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [ParentId] int  NULL,
  [Name] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Slug] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CanDetectTracks] bit  NOT NULL,
  [Metadata] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FilesCount] int  NOT NULL,
  [ResKey] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [IncludePath] bit  NULL,
  [Order] int  NULL,
  [Discriminator] nvarchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[MediaFolder] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for MediaStorage
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MediaStorage]') AND type IN ('U'))
	DROP TABLE [dbo].[MediaStorage]
GO

CREATE TABLE [dbo].[MediaStorage] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Data] varbinary(max)  NOT NULL
)
GO

ALTER TABLE [dbo].[MediaStorage] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for MediaTag
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MediaTag]') AND type IN ('U'))
	DROP TABLE [dbo].[MediaTag]
GO

CREATE TABLE [dbo].[MediaTag] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[MediaTag] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for MediaTrack
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MediaTrack]') AND type IN ('U'))
	DROP TABLE [dbo].[MediaTrack]
GO

CREATE TABLE [dbo].[MediaTrack] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [MediaFileId] int  NOT NULL,
  [Album] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [EntityId] int  NOT NULL,
  [EntityName] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Property] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[MediaTrack] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for MenuItemRecord
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MenuItemRecord]') AND type IN ('U'))
	DROP TABLE [dbo].[MenuItemRecord]
GO

CREATE TABLE [dbo].[MenuItemRecord] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [MenuId] int  NOT NULL,
  [ParentItemId] int  NOT NULL,
  [ProviderName] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Model] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Title] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ShortDescription] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PermissionNames] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Published] bit  NOT NULL,
  [DisplayOrder] int  NOT NULL,
  [BeginGroup] bit  NOT NULL,
  [ShowExpanded] bit  NOT NULL,
  [NoFollow] bit  NOT NULL,
  [NewWindow] bit  NOT NULL,
  [Icon] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Style] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [HtmlId] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CssClass] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [IconColor] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LimitedToStores] bit DEFAULT 0 NOT NULL,
  [SubjectToAcl] bit DEFAULT 0 NOT NULL
)
GO

ALTER TABLE [dbo].[MenuItemRecord] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for MenuRecord
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MenuRecord]') AND type IN ('U'))
	DROP TABLE [dbo].[MenuRecord]
GO

CREATE TABLE [dbo].[MenuRecord] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [SystemName] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [IsSystemMenu] bit  NOT NULL,
  [Template] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [WidgetZone] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Title] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Published] bit  NOT NULL,
  [DisplayOrder] int  NOT NULL,
  [LimitedToStores] bit  NOT NULL,
  [SubjectToAcl] bit  NOT NULL
)
GO

ALTER TABLE [dbo].[MenuRecord] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for MessageTemplate
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MessageTemplate]') AND type IN ('U'))
	DROP TABLE [dbo].[MessageTemplate]
GO

CREATE TABLE [dbo].[MessageTemplate] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [BccEmailAddresses] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Subject] nvarchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Body] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [IsActive] bit  NOT NULL,
  [EmailAccountId] int  NOT NULL,
  [LimitedToStores] bit  NOT NULL,
  [SendManually] bit  NOT NULL,
  [Attachment1FileId] int  NULL,
  [Attachment2FileId] int  NULL,
  [Attachment3FileId] int  NULL,
  [To] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT ' ' NOT NULL,
  [ReplyTo] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ModelTypes] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LastModelTree] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[MessageTemplate] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for News
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[News]') AND type IN ('U'))
	DROP TABLE [dbo].[News]
GO

CREATE TABLE [dbo].[News] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Title] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Short] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Full] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Published] bit  NOT NULL,
  [StartDateUtc] datetime  NULL,
  [EndDateUtc] datetime  NULL,
  [AllowComments] bit  NOT NULL,
  [ApprovedCommentCount] int  NOT NULL,
  [NotApprovedCommentCount] int  NOT NULL,
  [LimitedToStores] bit  NOT NULL,
  [CreatedOnUtc] datetime  NOT NULL,
  [MetaKeywords] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MetaDescription] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MetaTitle] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MediaFileId] int  NULL,
  [PreviewMediaFileId] int  NULL
)
GO

ALTER TABLE [dbo].[News] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for NewsComment
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[NewsComment]') AND type IN ('U'))
	DROP TABLE [dbo].[NewsComment]
GO

CREATE TABLE [dbo].[NewsComment] (
  [Id] int  NOT NULL,
  [CommentTitle] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CommentText] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NewsItemId] int  NOT NULL
)
GO

ALTER TABLE [dbo].[NewsComment] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for NewsLetterSubscription
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[NewsLetterSubscription]') AND type IN ('U'))
	DROP TABLE [dbo].[NewsLetterSubscription]
GO

CREATE TABLE [dbo].[NewsLetterSubscription] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [NewsLetterSubscriptionGuid] uniqueidentifier  NOT NULL,
  [Email] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Active] bit  NOT NULL,
  [CreatedOnUtc] datetime  NOT NULL,
  [StoreId] int  NOT NULL,
  [WorkingLanguageId] int DEFAULT 0 NOT NULL
)
GO

ALTER TABLE [dbo].[NewsLetterSubscription] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Order
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Order]') AND type IN ('U'))
	DROP TABLE [dbo].[Order]
GO

CREATE TABLE [dbo].[Order] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [OrderNumber] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [OrderGuid] uniqueidentifier  NOT NULL,
  [StoreId] int  NOT NULL,
  [CustomerId] int  NOT NULL,
  [BillingAddressId] int  NOT NULL,
  [ShippingAddressId] int  NULL,
  [OrderStatusId] int  NOT NULL,
  [ShippingStatusId] int  NOT NULL,
  [PaymentStatusId] int  NOT NULL,
  [PaymentMethodSystemName] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CustomerCurrencyCode] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CurrencyRate] decimal(18,8)  NOT NULL,
  [CustomerTaxDisplayTypeId] int  NOT NULL,
  [VatNumber] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [OrderSubtotalInclTax] decimal(18,4)  NOT NULL,
  [OrderSubtotalExclTax] decimal(18,4)  NOT NULL,
  [OrderSubTotalDiscountInclTax] decimal(18,4)  NOT NULL,
  [OrderSubTotalDiscountExclTax] decimal(18,4)  NOT NULL,
  [OrderShippingInclTax] decimal(18,4)  NOT NULL,
  [OrderShippingExclTax] decimal(18,4)  NOT NULL,
  [OrderShippingTaxRate] decimal(18,4)  NOT NULL,
  [PaymentMethodAdditionalFeeInclTax] decimal(18,4)  NOT NULL,
  [PaymentMethodAdditionalFeeExclTax] decimal(18,4)  NOT NULL,
  [PaymentMethodAdditionalFeeTaxRate] decimal(18,4)  NOT NULL,
  [TaxRates] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [OrderTax] decimal(18,4)  NOT NULL,
  [OrderDiscount] decimal(18,4)  NOT NULL,
  [OrderTotal] decimal(18,4)  NOT NULL,
  [RefundedAmount] decimal(18,4)  NOT NULL,
  [RewardPointsWereAdded] bit  NOT NULL,
  [CheckoutAttributeDescription] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CheckoutAttributesXml] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CustomerLanguageId] int  NOT NULL,
  [AffiliateId] int  NOT NULL,
  [CustomerIp] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AllowStoringCreditCardNumber] bit  NOT NULL,
  [CardType] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CardName] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CardNumber] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MaskedCreditCardNumber] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CardCvv2] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CardExpirationMonth] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CardExpirationYear] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AllowStoringDirectDebit] bit  NOT NULL,
  [DirectDebitAccountHolder] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DirectDebitAccountNumber] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DirectDebitBankCode] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DirectDebitBankName] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DirectDebitBIC] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DirectDebitCountry] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DirectDebitIban] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CustomerOrderComment] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AuthorizationTransactionId] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AuthorizationTransactionCode] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AuthorizationTransactionResult] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CaptureTransactionId] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CaptureTransactionResult] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SubscriptionTransactionId] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PurchaseOrderNumber] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PaidDateUtc] datetime  NULL,
  [ShippingMethod] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ShippingRateComputationMethodSystemName] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Deleted] bit  NOT NULL,
  [CreatedOnUtc] datetime  NOT NULL,
  [UpdatedOnUtc] datetime  NOT NULL,
  [RewardPointsRemaining] int  NULL,
  [HasNewPaymentNotification] bit  NOT NULL,
  [AcceptThirdPartyEmailHandOver] bit  NOT NULL,
  [OrderTotalRounding] decimal(18,4) DEFAULT 0 NOT NULL,
  [CreditBalance] decimal(18,4) DEFAULT 0 NOT NULL
)
GO

ALTER TABLE [dbo].[Order] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for OrderItem
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderItem]') AND type IN ('U'))
	DROP TABLE [dbo].[OrderItem]
GO

CREATE TABLE [dbo].[OrderItem] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [OrderItemGuid] uniqueidentifier  NOT NULL,
  [OrderId] int  NOT NULL,
  [ProductId] int  NOT NULL,
  [Quantity] int  NOT NULL,
  [UnitPriceInclTax] decimal(18,4)  NOT NULL,
  [UnitPriceExclTax] decimal(18,4)  NOT NULL,
  [PriceInclTax] decimal(18,4)  NOT NULL,
  [PriceExclTax] decimal(18,4)  NOT NULL,
  [TaxRate] decimal(18,4)  NOT NULL,
  [DiscountAmountInclTax] decimal(18,4)  NOT NULL,
  [DiscountAmountExclTax] decimal(18,4)  NOT NULL,
  [AttributeDescription] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AttributesXml] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DownloadCount] int  NOT NULL,
  [IsDownloadActivated] bit  NOT NULL,
  [LicenseDownloadId] int  NULL,
  [ItemWeight] decimal(18,4)  NULL,
  [BundleData] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ProductCost] decimal(18,4)  NOT NULL,
  [DeliveryTimeId] int  NULL,
  [DisplayDeliveryTime] bit DEFAULT 0 NOT NULL
)
GO

ALTER TABLE [dbo].[OrderItem] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for OrderNote
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderNote]') AND type IN ('U'))
	DROP TABLE [dbo].[OrderNote]
GO

CREATE TABLE [dbo].[OrderNote] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [OrderId] int  NOT NULL,
  [Note] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [DisplayToCustomer] bit  NOT NULL,
  [CreatedOnUtc] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[OrderNote] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for PaymentMethod
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[PaymentMethod]') AND type IN ('U'))
	DROP TABLE [dbo].[PaymentMethod]
GO

CREATE TABLE [dbo].[PaymentMethod] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [PaymentMethodSystemName] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [FullDescription] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [RoundOrderTotalEnabled] bit DEFAULT 0 NOT NULL,
  [LimitedToStores] bit DEFAULT 0 NOT NULL
)
GO

ALTER TABLE [dbo].[PaymentMethod] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for PermissionRecord
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[PermissionRecord]') AND type IN ('U'))
	DROP TABLE [dbo].[PermissionRecord]
GO

CREATE TABLE [dbo].[PermissionRecord] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [SystemName] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[PermissionRecord] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for PermissionRoleMapping
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[PermissionRoleMapping]') AND type IN ('U'))
	DROP TABLE [dbo].[PermissionRoleMapping]
GO

CREATE TABLE [dbo].[PermissionRoleMapping] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Allow] bit  NOT NULL,
  [PermissionRecordId] int  NOT NULL,
  [CustomerRoleId] int  NOT NULL
)
GO

ALTER TABLE [dbo].[PermissionRoleMapping] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Poll
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Poll]') AND type IN ('U'))
	DROP TABLE [dbo].[Poll]
GO

CREATE TABLE [dbo].[Poll] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [LanguageId] int  NOT NULL,
  [Name] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [SystemKeyword] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Published] bit  NOT NULL,
  [ShowOnHomePage] bit  NOT NULL,
  [AllowGuestsToVote] bit  NOT NULL,
  [DisplayOrder] int  NOT NULL,
  [StartDateUtc] datetime  NULL,
  [EndDateUtc] datetime  NULL,
  [LimitedToStores] bit  NOT NULL
)
GO

ALTER TABLE [dbo].[Poll] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for PollAnswer
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[PollAnswer]') AND type IN ('U'))
	DROP TABLE [dbo].[PollAnswer]
GO

CREATE TABLE [dbo].[PollAnswer] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [PollId] int  NOT NULL,
  [Name] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [NumberOfVotes] int  NOT NULL,
  [DisplayOrder] int  NOT NULL
)
GO

ALTER TABLE [dbo].[PollAnswer] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for PollVotingRecord
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[PollVotingRecord]') AND type IN ('U'))
	DROP TABLE [dbo].[PollVotingRecord]
GO

CREATE TABLE [dbo].[PollVotingRecord] (
  [Id] int  NOT NULL,
  [PollAnswerId] int  NOT NULL
)
GO

ALTER TABLE [dbo].[PollVotingRecord] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Product
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Product]') AND type IN ('U'))
	DROP TABLE [dbo].[Product]
GO

CREATE TABLE [dbo].[Product] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [ProductTypeId] int  NOT NULL,
  [ParentGroupedProductId] int  NOT NULL,
  [VisibleIndividually] bit  NOT NULL,
  [Name] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ShortDescription] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FullDescription] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AdminComment] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ProductTemplateId] int  NOT NULL,
  [ShowOnHomePage] bit  NOT NULL,
  [HomePageDisplayOrder] int  NOT NULL,
  [MetaKeywords] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MetaDescription] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MetaTitle] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AllowCustomerReviews] bit  NOT NULL,
  [ApprovedRatingSum] int  NOT NULL,
  [NotApprovedRatingSum] int  NOT NULL,
  [ApprovedTotalReviews] int  NOT NULL,
  [NotApprovedTotalReviews] int  NOT NULL,
  [SubjectToAcl] bit  NOT NULL,
  [LimitedToStores] bit  NOT NULL,
  [Sku] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ManufacturerPartNumber] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Gtin] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [IsGiftCard] bit  NOT NULL,
  [GiftCardTypeId] int  NOT NULL,
  [RequireOtherProducts] bit  NOT NULL,
  [RequiredProductIds] nvarchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AutomaticallyAddRequiredProducts] bit  NOT NULL,
  [IsDownload] bit  NOT NULL,
  [DownloadId] int  NOT NULL,
  [UnlimitedDownloads] bit  NOT NULL,
  [MaxNumberOfDownloads] int  NOT NULL,
  [DownloadExpirationDays] int  NULL,
  [DownloadActivationTypeId] int  NOT NULL,
  [HasSampleDownload] bit  NOT NULL,
  [SampleDownloadId] int  NULL,
  [HasUserAgreement] bit  NOT NULL,
  [UserAgreementText] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [IsRecurring] bit  NOT NULL,
  [RecurringCycleLength] int  NOT NULL,
  [RecurringCyclePeriodId] int  NOT NULL,
  [RecurringTotalCycles] int  NOT NULL,
  [IsShipEnabled] bit  NOT NULL,
  [IsFreeShipping] bit  NOT NULL,
  [AdditionalShippingCharge] decimal(18,4)  NOT NULL,
  [IsTaxExempt] bit  NOT NULL,
  [IsEsd] bit  NOT NULL,
  [TaxCategoryId] int  NOT NULL,
  [ManageInventoryMethodId] int  NOT NULL,
  [StockQuantity] int  NOT NULL,
  [DisplayStockAvailability] bit  NOT NULL,
  [DisplayStockQuantity] bit  NOT NULL,
  [MinStockQuantity] int  NOT NULL,
  [LowStockActivityId] int  NOT NULL,
  [NotifyAdminForQuantityBelow] int  NOT NULL,
  [BackorderModeId] int  NOT NULL,
  [AllowBackInStockSubscriptions] bit  NOT NULL,
  [OrderMinimumQuantity] int  NOT NULL,
  [OrderMaximumQuantity] int  NOT NULL,
  [QuantityStep] int  NOT NULL,
  [QuantiyControlType] int  NOT NULL,
  [HideQuantityControl] bit  NOT NULL,
  [AllowedQuantities] nvarchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DisableBuyButton] bit  NOT NULL,
  [DisableWishlistButton] bit  NOT NULL,
  [AvailableForPreOrder] bit  NOT NULL,
  [CallForPrice] bit  NOT NULL,
  [Price] decimal(18,4)  NOT NULL,
  [OldPrice] decimal(18,4)  NOT NULL,
  [ProductCost] decimal(18,4)  NOT NULL,
  [SpecialPrice] decimal(18,4)  NULL,
  [SpecialPriceStartDateTimeUtc] datetime  NULL,
  [SpecialPriceEndDateTimeUtc] datetime  NULL,
  [CustomerEntersPrice] bit  NOT NULL,
  [MinimumCustomerEnteredPrice] decimal(18,4)  NOT NULL,
  [MaximumCustomerEnteredPrice] decimal(18,4)  NOT NULL,
  [HasTierPrices] bit  NOT NULL,
  [LowestAttributeCombinationPrice] decimal(18,4)  NULL,
  [HasDiscountsApplied] bit  NOT NULL,
  [Weight] decimal(18,4)  NOT NULL,
  [Length] decimal(18,4)  NOT NULL,
  [Width] decimal(18,4)  NOT NULL,
  [Height] decimal(18,4)  NOT NULL,
  [AvailableStartDateTimeUtc] datetime  NULL,
  [AvailableEndDateTimeUtc] datetime  NULL,
  [DisplayOrder] int  NOT NULL,
  [Published] bit  NOT NULL,
  [Deleted] bit  NOT NULL,
  [CreatedOnUtc] datetime  NOT NULL,
  [UpdatedOnUtc] datetime  NOT NULL,
  [DeliveryTimeId] int  NULL,
  [QuantityUnitId] int  NULL,
  [CustomsTariffNumber] nvarchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CountryOfOriginId] int  NULL,
  [BasePriceEnabled] bit  NOT NULL,
  [BasePriceMeasureUnit] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [BasePriceAmount] decimal(18,4)  NULL,
  [BasePriceBaseAmount] int  NULL,
  [BundleTitleText] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [BundlePerItemShipping] bit  NOT NULL,
  [BundlePerItemPricing] bit  NOT NULL,
  [BundlePerItemShoppingCart] bit  NOT NULL,
  [MainPictureId] int  NULL,
  [IsSystemProduct] bit DEFAULT 0 NOT NULL,
  [SystemName] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [HasPreviewPicture] bit DEFAULT 0 NOT NULL,
  [Visibility] int DEFAULT 0 NOT NULL,
  [Condition] int DEFAULT 0 NOT NULL,
  [AttributeChoiceBehaviour] int DEFAULT 0 NOT NULL
)
GO

ALTER TABLE [dbo].[Product] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Product_Category_Mapping
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Product_Category_Mapping]') AND type IN ('U'))
	DROP TABLE [dbo].[Product_Category_Mapping]
GO

CREATE TABLE [dbo].[Product_Category_Mapping] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [ProductId] int  NOT NULL,
  [CategoryId] int  NOT NULL,
  [IsFeaturedProduct] bit  NOT NULL,
  [DisplayOrder] int  NOT NULL,
  [IsSystemMapping] bit DEFAULT 0 NOT NULL
)
GO

ALTER TABLE [dbo].[Product_Category_Mapping] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Product_Manufacturer_Mapping
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Product_Manufacturer_Mapping]') AND type IN ('U'))
	DROP TABLE [dbo].[Product_Manufacturer_Mapping]
GO

CREATE TABLE [dbo].[Product_Manufacturer_Mapping] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [ProductId] int  NOT NULL,
  [ManufacturerId] int  NOT NULL,
  [IsFeaturedProduct] bit  NOT NULL,
  [DisplayOrder] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Product_Manufacturer_Mapping] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Product_MediaFile_Mapping
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Product_MediaFile_Mapping]') AND type IN ('U'))
	DROP TABLE [dbo].[Product_MediaFile_Mapping]
GO

CREATE TABLE [dbo].[Product_MediaFile_Mapping] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [ProductId] int  NOT NULL,
  [MediaFileId] int  NOT NULL,
  [DisplayOrder] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Product_MediaFile_Mapping] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Product_ProductAttribute_Mapping
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Product_ProductAttribute_Mapping]') AND type IN ('U'))
	DROP TABLE [dbo].[Product_ProductAttribute_Mapping]
GO

CREATE TABLE [dbo].[Product_ProductAttribute_Mapping] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [ProductId] int  NOT NULL,
  [ProductAttributeId] int  NOT NULL,
  [TextPrompt] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [IsRequired] bit  NOT NULL,
  [AttributeControlTypeId] int  NOT NULL,
  [DisplayOrder] int  NOT NULL,
  [CustomData] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Product_ProductAttribute_Mapping] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Product_ProductTag_Mapping
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Product_ProductTag_Mapping]') AND type IN ('U'))
	DROP TABLE [dbo].[Product_ProductTag_Mapping]
GO

CREATE TABLE [dbo].[Product_ProductTag_Mapping] (
  [Product_Id] int  NOT NULL,
  [ProductTag_Id] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Product_ProductTag_Mapping] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Product_SpecificationAttribute_Mapping
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Product_SpecificationAttribute_Mapping]') AND type IN ('U'))
	DROP TABLE [dbo].[Product_SpecificationAttribute_Mapping]
GO

CREATE TABLE [dbo].[Product_SpecificationAttribute_Mapping] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [ProductId] int  NOT NULL,
  [SpecificationAttributeOptionId] int  NOT NULL,
  [AllowFiltering] bit  NULL,
  [ShowOnProductPage] bit  NULL,
  [DisplayOrder] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Product_SpecificationAttribute_Mapping] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ProductAttribute
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductAttribute]') AND type IN ('U'))
	DROP TABLE [dbo].[ProductAttribute]
GO

CREATE TABLE [dbo].[ProductAttribute] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Alias] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Name] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Description] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AllowFiltering] bit  NOT NULL,
  [DisplayOrder] int  NOT NULL,
  [FacetTemplateHint] int  NOT NULL,
  [IndexOptionNames] bit DEFAULT 0 NOT NULL,
  [ExportMappings] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[ProductAttribute] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ProductAttributeOption
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductAttributeOption]') AND type IN ('U'))
	DROP TABLE [dbo].[ProductAttributeOption]
GO

CREATE TABLE [dbo].[ProductAttributeOption] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [ProductAttributeOptionsSetId] int  NOT NULL,
  [Alias] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Name] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MediaFileId] int  NOT NULL,
  [Color] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PriceAdjustment] decimal(18,4)  NOT NULL,
  [WeightAdjustment] decimal(18,4)  NOT NULL,
  [IsPreSelected] bit  NOT NULL,
  [DisplayOrder] int  NOT NULL,
  [ValueTypeId] int  NOT NULL,
  [LinkedProductId] int  NOT NULL,
  [Quantity] int  NOT NULL
)
GO

ALTER TABLE [dbo].[ProductAttributeOption] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ProductAttributeOptionsSet
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductAttributeOptionsSet]') AND type IN ('U'))
	DROP TABLE [dbo].[ProductAttributeOptionsSet]
GO

CREATE TABLE [dbo].[ProductAttributeOptionsSet] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ProductAttributeId] int  NOT NULL
)
GO

ALTER TABLE [dbo].[ProductAttributeOptionsSet] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ProductBundleItem
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductBundleItem]') AND type IN ('U'))
	DROP TABLE [dbo].[ProductBundleItem]
GO

CREATE TABLE [dbo].[ProductBundleItem] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [ProductId] int  NOT NULL,
  [BundleProductId] int  NOT NULL,
  [Quantity] int  NOT NULL,
  [Discount] decimal(18,4)  NULL,
  [DiscountPercentage] bit  NOT NULL,
  [Name] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ShortDescription] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FilterAttributes] bit  NOT NULL,
  [HideThumbnail] bit  NOT NULL,
  [Visible] bit  NOT NULL,
  [Published] bit  NOT NULL,
  [DisplayOrder] int  NOT NULL,
  [CreatedOnUtc] datetime  NOT NULL,
  [UpdatedOnUtc] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[ProductBundleItem] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ProductBundleItemAttributeFilter
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductBundleItemAttributeFilter]') AND type IN ('U'))
	DROP TABLE [dbo].[ProductBundleItemAttributeFilter]
GO

CREATE TABLE [dbo].[ProductBundleItemAttributeFilter] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [BundleItemId] int  NOT NULL,
  [AttributeId] int  NOT NULL,
  [AttributeValueId] int  NOT NULL,
  [IsPreSelected] bit  NOT NULL
)
GO

ALTER TABLE [dbo].[ProductBundleItemAttributeFilter] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ProductReview
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductReview]') AND type IN ('U'))
	DROP TABLE [dbo].[ProductReview]
GO

CREATE TABLE [dbo].[ProductReview] (
  [Id] int  NOT NULL,
  [ProductId] int  NOT NULL,
  [Title] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ReviewText] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Rating] int  NOT NULL,
  [HelpfulYesTotal] int  NOT NULL,
  [HelpfulNoTotal] int  NOT NULL
)
GO

ALTER TABLE [dbo].[ProductReview] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ProductReviewHelpfulness
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductReviewHelpfulness]') AND type IN ('U'))
	DROP TABLE [dbo].[ProductReviewHelpfulness]
GO

CREATE TABLE [dbo].[ProductReviewHelpfulness] (
  [Id] int  NOT NULL,
  [ProductReviewId] int  NOT NULL,
  [WasHelpful] bit  NOT NULL
)
GO

ALTER TABLE [dbo].[ProductReviewHelpfulness] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ProductTag
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductTag]') AND type IN ('U'))
	DROP TABLE [dbo].[ProductTag]
GO

CREATE TABLE [dbo].[ProductTag] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Published] bit DEFAULT 1 NOT NULL
)
GO

ALTER TABLE [dbo].[ProductTag] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ProductTemplate
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductTemplate]') AND type IN ('U'))
	DROP TABLE [dbo].[ProductTemplate]
GO

CREATE TABLE [dbo].[ProductTemplate] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ViewPath] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [DisplayOrder] int  NOT NULL
)
GO

ALTER TABLE [dbo].[ProductTemplate] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ProductVariantAttributeCombination
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductVariantAttributeCombination]') AND type IN ('U'))
	DROP TABLE [dbo].[ProductVariantAttributeCombination]
GO

CREATE TABLE [dbo].[ProductVariantAttributeCombination] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Sku] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Gtin] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ManufacturerPartNumber] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Price] decimal(18,4)  NULL,
  [Length] decimal(18,4)  NULL,
  [Width] decimal(18,4)  NULL,
  [Height] decimal(18,4)  NULL,
  [BasePriceAmount] decimal(18,4)  NULL,
  [BasePriceBaseAmount] int  NULL,
  [AssignedMediaFileIds] nvarchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DeliveryTimeId] int  NULL,
  [QuantityUnitId] int  NULL,
  [IsActive] bit  NOT NULL,
  [ProductId] int  NOT NULL,
  [AttributesXml] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [StockQuantity] int  NOT NULL,
  [AllowOutOfStockOrders] bit  NOT NULL
)
GO

ALTER TABLE [dbo].[ProductVariantAttributeCombination] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ProductVariantAttributeValue
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductVariantAttributeValue]') AND type IN ('U'))
	DROP TABLE [dbo].[ProductVariantAttributeValue]
GO

CREATE TABLE [dbo].[ProductVariantAttributeValue] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [ProductVariantAttributeId] int  NOT NULL,
  [Alias] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Name] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MediaFileId] int  NOT NULL,
  [Color] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PriceAdjustment] decimal(18,4)  NOT NULL,
  [WeightAdjustment] decimal(18,4)  NOT NULL,
  [IsPreSelected] bit  NOT NULL,
  [DisplayOrder] int  NOT NULL,
  [ValueTypeId] int  NOT NULL,
  [LinkedProductId] int  NOT NULL,
  [Quantity] int  NOT NULL
)
GO

ALTER TABLE [dbo].[ProductVariantAttributeValue] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for QuantityUnit
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[QuantityUnit]') AND type IN ('U'))
	DROP TABLE [dbo].[QuantityUnit]
GO

CREATE TABLE [dbo].[QuantityUnit] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Description] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DisplayLocale] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DisplayOrder] int  NOT NULL,
  [IsDefault] bit  NOT NULL,
  [NamePlural] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT '' NOT NULL
)
GO

ALTER TABLE [dbo].[QuantityUnit] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for QueuedEmail
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[QueuedEmail]') AND type IN ('U'))
	DROP TABLE [dbo].[QueuedEmail]
GO

CREATE TABLE [dbo].[QueuedEmail] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Priority] int  NOT NULL,
  [From] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [To] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ReplyTo] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CC] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Bcc] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Subject] nvarchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Body] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CreatedOnUtc] datetime  NOT NULL,
  [SentTries] int  NOT NULL,
  [SentOnUtc] datetime  NULL,
  [EmailAccountId] int  NOT NULL,
  [SendManually] bit  NOT NULL
)
GO

ALTER TABLE [dbo].[QueuedEmail] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for QueuedEmailAttachment
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[QueuedEmailAttachment]') AND type IN ('U'))
	DROP TABLE [dbo].[QueuedEmailAttachment]
GO

CREATE TABLE [dbo].[QueuedEmailAttachment] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [QueuedEmailId] int  NOT NULL,
  [StorageLocation] int  NOT NULL,
  [Path] nvarchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FileId] int  NULL,
  [Data] varbinary(max)  NULL,
  [Name] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [MimeType] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [MediaStorageId] int  NULL,
  [MediaFileId] int  NULL
)
GO

ALTER TABLE [dbo].[QueuedEmailAttachment] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for RecurringPayment
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[RecurringPayment]') AND type IN ('U'))
	DROP TABLE [dbo].[RecurringPayment]
GO

CREATE TABLE [dbo].[RecurringPayment] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [CycleLength] int  NOT NULL,
  [CyclePeriodId] int  NOT NULL,
  [TotalCycles] int  NOT NULL,
  [StartDateUtc] datetime  NOT NULL,
  [IsActive] bit  NOT NULL,
  [Deleted] bit  NOT NULL,
  [InitialOrderId] int  NOT NULL,
  [CreatedOnUtc] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[RecurringPayment] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for RecurringPaymentHistory
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[RecurringPaymentHistory]') AND type IN ('U'))
	DROP TABLE [dbo].[RecurringPaymentHistory]
GO

CREATE TABLE [dbo].[RecurringPaymentHistory] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [RecurringPaymentId] int  NOT NULL,
  [OrderId] int  NOT NULL,
  [CreatedOnUtc] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[RecurringPaymentHistory] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for RelatedProduct
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[RelatedProduct]') AND type IN ('U'))
	DROP TABLE [dbo].[RelatedProduct]
GO

CREATE TABLE [dbo].[RelatedProduct] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [ProductId1] int  NOT NULL,
  [ProductId2] int  NOT NULL,
  [DisplayOrder] int  NOT NULL
)
GO

ALTER TABLE [dbo].[RelatedProduct] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ReturnRequest
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ReturnRequest]') AND type IN ('U'))
	DROP TABLE [dbo].[ReturnRequest]
GO

CREATE TABLE [dbo].[ReturnRequest] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [StoreId] int  NOT NULL,
  [OrderItemId] int  NOT NULL,
  [CustomerId] int  NOT NULL,
  [Quantity] int  NOT NULL,
  [ReasonForReturn] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [RequestedAction] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [RequestedActionUpdatedOnUtc] datetime  NULL,
  [CustomerComments] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [StaffNotes] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AdminComment] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ReturnRequestStatusId] int  NOT NULL,
  [CreatedOnUtc] datetime  NOT NULL,
  [UpdatedOnUtc] datetime  NOT NULL,
  [RefundToWallet] bit  NULL
)
GO

ALTER TABLE [dbo].[ReturnRequest] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for RewardPointsHistory
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[RewardPointsHistory]') AND type IN ('U'))
	DROP TABLE [dbo].[RewardPointsHistory]
GO

CREATE TABLE [dbo].[RewardPointsHistory] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [CustomerId] int  NOT NULL,
  [Points] int  NOT NULL,
  [PointsBalance] int  NOT NULL,
  [UsedAmount] decimal(18,4)  NOT NULL,
  [Message] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CreatedOnUtc] datetime  NOT NULL,
  [UsedWithOrder_Id] int  NULL
)
GO

ALTER TABLE [dbo].[RewardPointsHistory] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Rule
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Rule]') AND type IN ('U'))
	DROP TABLE [dbo].[Rule]
GO

CREATE TABLE [dbo].[Rule] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [RuleSetId] int  NOT NULL,
  [RuleType] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Operator] nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Value] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DisplayOrder] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Rule] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for RuleSet
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[RuleSet]') AND type IN ('U'))
	DROP TABLE [dbo].[RuleSet]
GO

CREATE TABLE [dbo].[RuleSet] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Description] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [IsActive] bit  NOT NULL,
  [Scope] int  NOT NULL,
  [IsSubGroup] bit  NOT NULL,
  [LogicalOperator] int  NOT NULL,
  [CreatedOnUtc] datetime  NOT NULL,
  [UpdatedOnUtc] datetime  NOT NULL,
  [LastProcessedOnUtc] datetime  NULL
)
GO

ALTER TABLE [dbo].[RuleSet] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for RuleSet_Category_Mapping
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[RuleSet_Category_Mapping]') AND type IN ('U'))
	DROP TABLE [dbo].[RuleSet_Category_Mapping]
GO

CREATE TABLE [dbo].[RuleSet_Category_Mapping] (
  [Category_Id] int  NOT NULL,
  [RuleSetEntity_Id] int  NOT NULL
)
GO

ALTER TABLE [dbo].[RuleSet_Category_Mapping] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for RuleSet_CustomerRole_Mapping
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[RuleSet_CustomerRole_Mapping]') AND type IN ('U'))
	DROP TABLE [dbo].[RuleSet_CustomerRole_Mapping]
GO

CREATE TABLE [dbo].[RuleSet_CustomerRole_Mapping] (
  [CustomerRole_Id] int  NOT NULL,
  [RuleSetEntity_Id] int  NOT NULL
)
GO

ALTER TABLE [dbo].[RuleSet_CustomerRole_Mapping] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for RuleSet_Discount_Mapping
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[RuleSet_Discount_Mapping]') AND type IN ('U'))
	DROP TABLE [dbo].[RuleSet_Discount_Mapping]
GO

CREATE TABLE [dbo].[RuleSet_Discount_Mapping] (
  [Discount_Id] int  NOT NULL,
  [RuleSetEntity_Id] int  NOT NULL
)
GO

ALTER TABLE [dbo].[RuleSet_Discount_Mapping] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for RuleSet_PaymentMethod_Mapping
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[RuleSet_PaymentMethod_Mapping]') AND type IN ('U'))
	DROP TABLE [dbo].[RuleSet_PaymentMethod_Mapping]
GO

CREATE TABLE [dbo].[RuleSet_PaymentMethod_Mapping] (
  [PaymentMethod_Id] int  NOT NULL,
  [RuleSetEntity_Id] int  NOT NULL
)
GO

ALTER TABLE [dbo].[RuleSet_PaymentMethod_Mapping] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for RuleSet_ShippingMethod_Mapping
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[RuleSet_ShippingMethod_Mapping]') AND type IN ('U'))
	DROP TABLE [dbo].[RuleSet_ShippingMethod_Mapping]
GO

CREATE TABLE [dbo].[RuleSet_ShippingMethod_Mapping] (
  [ShippingMethod_Id] int  NOT NULL,
  [RuleSetEntity_Id] int  NOT NULL
)
GO

ALTER TABLE [dbo].[RuleSet_ShippingMethod_Mapping] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ScheduleTask
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ScheduleTask]') AND type IN ('U'))
	DROP TABLE [dbo].[ScheduleTask]
GO

CREATE TABLE [dbo].[ScheduleTask] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Alias] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CronExpression] nvarchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Type] nvarchar(800) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Enabled] bit  NOT NULL,
  [StopOnError] bit  NOT NULL,
  [NextRunUtc] datetime  NULL,
  [IsHidden] bit  NOT NULL,
  [RunPerMachine] bit DEFAULT 0 NOT NULL,
  [Priority] int DEFAULT 0 NOT NULL
)
GO

ALTER TABLE [dbo].[ScheduleTask] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ScheduleTaskHistory
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ScheduleTaskHistory]') AND type IN ('U'))
	DROP TABLE [dbo].[ScheduleTaskHistory]
GO

CREATE TABLE [dbo].[ScheduleTaskHistory] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [ScheduleTaskId] int  NOT NULL,
  [IsRunning] bit  NOT NULL,
  [MachineName] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [StartedOnUtc] datetime  NOT NULL,
  [FinishedOnUtc] datetime  NULL,
  [SucceededOnUtc] datetime  NULL,
  [Error] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ProgressPercent] int  NULL,
  [ProgressMessage] nvarchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[ScheduleTaskHistory] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Setting
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Setting]') AND type IN ('U'))
	DROP TABLE [dbo].[Setting]
GO

CREATE TABLE [dbo].[Setting] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Value] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [StoreId] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Setting] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Shipment
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Shipment]') AND type IN ('U'))
	DROP TABLE [dbo].[Shipment]
GO

CREATE TABLE [dbo].[Shipment] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [OrderId] int  NOT NULL,
  [TrackingNumber] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TotalWeight] decimal(18,4)  NULL,
  [ShippedDateUtc] datetime  NULL,
  [DeliveryDateUtc] datetime  NULL,
  [CreatedOnUtc] datetime  NOT NULL,
  [TrackingUrl] nvarchar(2000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Shipment] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ShipmentItem
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ShipmentItem]') AND type IN ('U'))
	DROP TABLE [dbo].[ShipmentItem]
GO

CREATE TABLE [dbo].[ShipmentItem] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [ShipmentId] int  NOT NULL,
  [OrderItemId] int  NOT NULL,
  [Quantity] int  NOT NULL
)
GO

ALTER TABLE [dbo].[ShipmentItem] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ShippingMethod
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ShippingMethod]') AND type IN ('U'))
	DROP TABLE [dbo].[ShippingMethod]
GO

CREATE TABLE [dbo].[ShippingMethod] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Description] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DisplayOrder] int  NOT NULL,
  [IgnoreCharges] bit  NOT NULL,
  [LimitedToStores] bit DEFAULT 0 NOT NULL
)
GO

ALTER TABLE [dbo].[ShippingMethod] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ShoppingCartItem
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ShoppingCartItem]') AND type IN ('U'))
	DROP TABLE [dbo].[ShoppingCartItem]
GO

CREATE TABLE [dbo].[ShoppingCartItem] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [StoreId] int  NOT NULL,
  [ParentItemId] int  NULL,
  [BundleItemId] int  NULL,
  [ShoppingCartTypeId] int  NOT NULL,
  [CustomerId] int  NOT NULL,
  [ProductId] int  NOT NULL,
  [AttributesXml] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CustomerEnteredPrice] decimal(18,4)  NOT NULL,
  [Quantity] int  NOT NULL,
  [CreatedOnUtc] datetime  NOT NULL,
  [UpdatedOnUtc] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[ShoppingCartItem] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for SpecificationAttribute
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SpecificationAttribute]') AND type IN ('U'))
	DROP TABLE [dbo].[SpecificationAttribute]
GO

CREATE TABLE [dbo].[SpecificationAttribute] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Alias] nvarchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DisplayOrder] int  NOT NULL,
  [ShowOnProductPage] bit  NOT NULL,
  [AllowFiltering] bit  NOT NULL,
  [FacetSorting] int  NOT NULL,
  [FacetTemplateHint] int  NOT NULL,
  [IndexOptionNames] bit DEFAULT 0 NOT NULL
)
GO

ALTER TABLE [dbo].[SpecificationAttribute] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for SpecificationAttributeOption
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SpecificationAttributeOption]') AND type IN ('U'))
	DROP TABLE [dbo].[SpecificationAttributeOption]
GO

CREATE TABLE [dbo].[SpecificationAttributeOption] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [SpecificationAttributeId] int  NOT NULL,
  [Name] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Alias] nvarchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DisplayOrder] int  NOT NULL,
  [NumberValue] decimal(18,4)  NOT NULL,
  [MediaFileId] int DEFAULT 0 NOT NULL,
  [Color] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[SpecificationAttributeOption] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for StateProvince
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[StateProvince]') AND type IN ('U'))
	DROP TABLE [dbo].[StateProvince]
GO

CREATE TABLE [dbo].[StateProvince] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [CountryId] int  NOT NULL,
  [Name] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Abbreviation] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Published] bit  NOT NULL,
  [DisplayOrder] int  NOT NULL
)
GO

ALTER TABLE [dbo].[StateProvince] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Store
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Store]') AND type IN ('U'))
	DROP TABLE [dbo].[Store]
GO

CREATE TABLE [dbo].[Store] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Url] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [SslEnabled] bit  NOT NULL,
  [SecureUrl] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Hosts] nvarchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LogoMediaFileId] int  NOT NULL,
  [DisplayOrder] int  NOT NULL,
  [HtmlBodyId] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ContentDeliveryNetwork] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PrimaryStoreCurrencyId] int DEFAULT 1 NOT NULL,
  [PrimaryExchangeRateCurrencyId] int DEFAULT 1 NOT NULL,
  [ForceSslForAllPages] bit DEFAULT 0 NOT NULL,
  [FavIconMediaFileId] int  NULL,
  [PngIconMediaFileId] int  NULL,
  [AppleTouchIconMediaFileId] int  NULL,
  [MsTileImageMediaFileId] int  NULL,
  [MsTileColor] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Store] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for StoreMapping
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[StoreMapping]') AND type IN ('U'))
	DROP TABLE [dbo].[StoreMapping]
GO

CREATE TABLE [dbo].[StoreMapping] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [EntityId] int  NOT NULL,
  [EntityName] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [StoreId] int  NOT NULL
)
GO

ALTER TABLE [dbo].[StoreMapping] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for SyncMapping
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SyncMapping]') AND type IN ('U'))
	DROP TABLE [dbo].[SyncMapping]
GO

CREATE TABLE [dbo].[SyncMapping] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [EntityId] int  NOT NULL,
  [SourceKey] nvarchar(150) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [EntityName] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ContextName] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [SourceHash] nvarchar(40) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CustomInt] int  NULL,
  [CustomString] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CustomBool] bit  NULL,
  [SyncedOnUtc] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[SyncMapping] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for TaxCategory
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[TaxCategory]') AND type IN ('U'))
	DROP TABLE [dbo].[TaxCategory]
GO

CREATE TABLE [dbo].[TaxCategory] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [DisplayOrder] int  NOT NULL
)
GO

ALTER TABLE [dbo].[TaxCategory] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ThemeVariable
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ThemeVariable]') AND type IN ('U'))
	DROP TABLE [dbo].[ThemeVariable]
GO

CREATE TABLE [dbo].[ThemeVariable] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Theme] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Name] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Value] nvarchar(2000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [StoreId] int  NOT NULL
)
GO

ALTER TABLE [dbo].[ThemeVariable] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for TierPrice
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[TierPrice]') AND type IN ('U'))
	DROP TABLE [dbo].[TierPrice]
GO

CREATE TABLE [dbo].[TierPrice] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [ProductId] int  NOT NULL,
  [StoreId] int  NOT NULL,
  [CustomerRoleId] int  NULL,
  [Quantity] int  NOT NULL,
  [Price] decimal(18,4)  NOT NULL,
  [CalculationMethod] int DEFAULT 0 NOT NULL
)
GO

ALTER TABLE [dbo].[TierPrice] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Topic
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Topic]') AND type IN ('U'))
	DROP TABLE [dbo].[Topic]
GO

CREATE TABLE [dbo].[Topic] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [SystemName] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [IncludeInSitemap] bit  NOT NULL,
  [IsPasswordProtected] bit  NOT NULL,
  [Password] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Title] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Body] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MetaKeywords] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MetaDescription] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MetaTitle] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LimitedToStores] bit  NOT NULL,
  [RenderAsWidget] bit  NOT NULL,
  [WidgetZone] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [WidgetWrapContent] bit  NULL,
  [WidgetShowTitle] bit  NOT NULL,
  [WidgetBordered] bit  NOT NULL,
  [Priority] int  NOT NULL,
  [TitleTag] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [IsSystemTopic] bit DEFAULT 0 NOT NULL,
  [ShortTitle] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Intro] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SubjectToAcl] bit DEFAULT 0 NOT NULL,
  [IsPublished] bit DEFAULT 1 NOT NULL,
  [HtmlId] nvarchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [BodyCssClass] nvarchar(512) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CookieType] int  NULL
)
GO

ALTER TABLE [dbo].[Topic] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for UrlRecord
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[UrlRecord]') AND type IN ('U'))
	DROP TABLE [dbo].[UrlRecord]
GO

CREATE TABLE [dbo].[UrlRecord] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [EntityId] int  NOT NULL,
  [EntityName] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Slug] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [IsActive] bit  NOT NULL,
  [LanguageId] int  NOT NULL
)
GO

ALTER TABLE [dbo].[UrlRecord] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for WalletHistory
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WalletHistory]') AND type IN ('U'))
	DROP TABLE [dbo].[WalletHistory]
GO

CREATE TABLE [dbo].[WalletHistory] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [StoreId] int  NOT NULL,
  [CustomerId] int  NOT NULL,
  [OrderId] int  NULL,
  [Amount] decimal(18,4)  NOT NULL,
  [AmountBalance] decimal(18,4)  NOT NULL,
  [AmountBalancePerStore] decimal(18,4)  NOT NULL,
  [CreatedOnUtc] datetime  NOT NULL,
  [Reason] int  NULL,
  [Message] nvarchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AdminComment] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[WalletHistory] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- function structure for sm_getnotnullnotempty
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sm_getnotnullnotempty]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[sm_getnotnullnotempty]
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


-- ----------------------------
-- function structure for sm_getprimarykey_indexname
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sm_getprimarykey_indexname]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[sm_getprimarykey_indexname]
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


-- ----------------------------
-- function structure for sm_splitstring_to_table
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sm_splitstring_to_table]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[sm_splitstring_to_table]
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


-- ----------------------------
-- procedure structure for ProductTagCountLoadAll
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductTagCountLoadAll]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProductTagCountLoadAll]
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


-- ----------------------------
-- Primary Key structure for table __MigrationHistory
-- ----------------------------
ALTER TABLE [dbo].[__MigrationHistory] ADD CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED ([MigrationId], [ContextKey])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for AclRecord
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[AclRecord]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table AclRecord
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AclRecord_EntityId_EntityName]
ON [dbo].[AclRecord] (
  [EntityId] ASC,
  [EntityName] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_CustomerRoleId]
ON [dbo].[AclRecord] (
  [CustomerRoleId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AclRecord
-- ----------------------------
ALTER TABLE [dbo].[AclRecord] ADD CONSTRAINT [PK_dbo.AclRecord] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ActivityLog
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ActivityLog]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table ActivityLog
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_ActivityLog_CreatedOnUtc]
ON [dbo].[ActivityLog] (
  [CreatedOnUtc] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_ActivityLogTypeId]
ON [dbo].[ActivityLog] (
  [ActivityLogTypeId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_CustomerId]
ON [dbo].[ActivityLog] (
  [CustomerId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table ActivityLog
-- ----------------------------
ALTER TABLE [dbo].[ActivityLog] ADD CONSTRAINT [PK_dbo.ActivityLog] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ActivityLogType
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ActivityLogType]', RESEED, 63)
GO


-- ----------------------------
-- Primary Key structure for table ActivityLogType
-- ----------------------------
ALTER TABLE [dbo].[ActivityLogType] ADD CONSTRAINT [PK_dbo.ActivityLogType] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Address
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Address]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table Address
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_CountryId]
ON [dbo].[Address] (
  [CountryId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_StateProvinceId]
ON [dbo].[Address] (
  [StateProvinceId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Address
-- ----------------------------
ALTER TABLE [dbo].[Address] ADD CONSTRAINT [PK_dbo.Address] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Affiliate
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Affiliate]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table Affiliate
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AddressId]
ON [dbo].[Affiliate] (
  [AddressId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Affiliate
-- ----------------------------
ALTER TABLE [dbo].[Affiliate] ADD CONSTRAINT [PK_dbo.Affiliate] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for BackInStockSubscription
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[BackInStockSubscription]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table BackInStockSubscription
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_CustomerId]
ON [dbo].[BackInStockSubscription] (
  [CustomerId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_ProductId]
ON [dbo].[BackInStockSubscription] (
  [ProductId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table BackInStockSubscription
-- ----------------------------
ALTER TABLE [dbo].[BackInStockSubscription] ADD CONSTRAINT [PK_dbo.BackInStockSubscription] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table BlogComment
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_BlogComment_BlogPostId]
ON [dbo].[BlogComment] (
  [BlogPostId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_BlogPostId]
ON [dbo].[BlogComment] (
  [BlogPostId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Id]
ON [dbo].[BlogComment] (
  [Id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table BlogComment
-- ----------------------------
ALTER TABLE [dbo].[BlogComment] ADD CONSTRAINT [PK_dbo.BlogComment] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for BlogPost
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[BlogPost]', RESEED, 6)
GO


-- ----------------------------
-- Indexes structure for table BlogPost
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_MediaFileId]
ON [dbo].[BlogPost] (
  [MediaFileId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_PreviewMediaFileId]
ON [dbo].[BlogPost] (
  [PreviewMediaFileId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table BlogPost
-- ----------------------------
ALTER TABLE [dbo].[BlogPost] ADD CONSTRAINT [PK_dbo.BlogPost] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Campaign
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Campaign]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table Campaign
-- ----------------------------
ALTER TABLE [dbo].[Campaign] ADD CONSTRAINT [PK_dbo.Campaign] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Category
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Category]', RESEED, 24)
GO


-- ----------------------------
-- Indexes structure for table Category
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Category_DisplayOrder]
ON [dbo].[Category] (
  [DisplayOrder] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Category_LimitedToStores]
ON [dbo].[Category] (
  [LimitedToStores] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Category_ParentCategoryId]
ON [dbo].[Category] (
  [ParentCategoryId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Deleted]
ON [dbo].[Category] (
  [Deleted] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_MediaFileId]
ON [dbo].[Category] (
  [MediaFileId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Category
-- ----------------------------
ALTER TABLE [dbo].[Category] ADD CONSTRAINT [PK_dbo.Category] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for CategoryTemplate
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[CategoryTemplate]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table CategoryTemplate
-- ----------------------------
ALTER TABLE [dbo].[CategoryTemplate] ADD CONSTRAINT [PK_dbo.CategoryTemplate] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for CheckoutAttribute
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[CheckoutAttribute]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table CheckoutAttribute
-- ----------------------------
ALTER TABLE [dbo].[CheckoutAttribute] ADD CONSTRAINT [PK_dbo.CheckoutAttribute] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for CheckoutAttributeValue
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[CheckoutAttributeValue]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table CheckoutAttributeValue
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_CheckoutAttributeId]
ON [dbo].[CheckoutAttributeValue] (
  [CheckoutAttributeId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_MediaFileId]
ON [dbo].[CheckoutAttributeValue] (
  [MediaFileId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table CheckoutAttributeValue
-- ----------------------------
ALTER TABLE [dbo].[CheckoutAttributeValue] ADD CONSTRAINT [PK_dbo.CheckoutAttributeValue] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Country
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Country]', RESEED, 237)
GO


-- ----------------------------
-- Indexes structure for table Country
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Country_DisplayOrder]
ON [dbo].[Country] (
  [DisplayOrder] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_DefaultCurrencyId]
ON [dbo].[Country] (
  [DefaultCurrencyId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Country
-- ----------------------------
ALTER TABLE [dbo].[Country] ADD CONSTRAINT [PK_dbo.Country] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for CrossSellProduct
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[CrossSellProduct]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table CrossSellProduct
-- ----------------------------
ALTER TABLE [dbo].[CrossSellProduct] ADD CONSTRAINT [PK_dbo.CrossSellProduct] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Currency
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Currency]', RESEED, 12)
GO


-- ----------------------------
-- Indexes structure for table Currency
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Currency_DisplayOrder]
ON [dbo].[Currency] (
  [DisplayOrder] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Currency
-- ----------------------------
ALTER TABLE [dbo].[Currency] ADD CONSTRAINT [PK_dbo.Currency] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Customer
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Customer]', RESEED, 5)
GO


-- ----------------------------
-- Indexes structure for table Customer
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_BillingAddress_Id]
ON [dbo].[Customer] (
  [BillingAddress_Id] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Customer_BirthDate]
ON [dbo].[Customer] (
  [BirthDate] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Customer_Company]
ON [dbo].[Customer] (
  [Company] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Customer_CreatedOn]
ON [dbo].[Customer] (
  [CreatedOnUtc] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Customer_CustomerGuid]
ON [dbo].[Customer] (
  [CustomerGuid] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Customer_CustomerNumber]
ON [dbo].[Customer] (
  [CustomerNumber] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Customer_Deleted_IsSystemAccount]
ON [dbo].[Customer] (
  [Deleted] ASC,
  [IsSystemAccount] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Customer_Email]
ON [dbo].[Customer] (
  [Email] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Customer_FullName]
ON [dbo].[Customer] (
  [FullName] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Customer_LastActivity]
ON [dbo].[Customer] (
  [LastActivityDateUtc] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Customer_LastIpAddress]
ON [dbo].[Customer] (
  [LastIpAddress] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Customer_Username]
ON [dbo].[Customer] (
  [Username] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Deleted]
ON [dbo].[Customer] (
  [Deleted] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_IsSystemAccount]
ON [dbo].[Customer] (
  [IsSystemAccount] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_ShippingAddress_Id]
ON [dbo].[Customer] (
  [ShippingAddress_Id] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_SystemName]
ON [dbo].[Customer] (
  [SystemName] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Customer
-- ----------------------------
ALTER TABLE [dbo].[Customer] ADD CONSTRAINT [PK_dbo.Customer] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table CustomerAddresses
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Address_Id]
ON [dbo].[CustomerAddresses] (
  [Address_Id] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Customer_Id]
ON [dbo].[CustomerAddresses] (
  [Customer_Id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table CustomerAddresses
-- ----------------------------
ALTER TABLE [dbo].[CustomerAddresses] ADD CONSTRAINT [PK_dbo.CustomerAddresses] PRIMARY KEY CLUSTERED ([Customer_Id], [Address_Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for CustomerContent
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[CustomerContent]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table CustomerContent
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_CustomerId]
ON [dbo].[CustomerContent] (
  [CustomerId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table CustomerContent
-- ----------------------------
ALTER TABLE [dbo].[CustomerContent] ADD CONSTRAINT [PK_dbo.CustomerContent] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for CustomerRole
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[CustomerRole]', RESEED, 5)
GO


-- ----------------------------
-- Indexes structure for table CustomerRole
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Active]
ON [dbo].[CustomerRole] (
  [Active] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_CustomerRole_SystemName_IsSystemRole]
ON [dbo].[CustomerRole] (
  [SystemName] ASC,
  [IsSystemRole] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_IsSystemRole]
ON [dbo].[CustomerRole] (
  [IsSystemRole] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_SystemName]
ON [dbo].[CustomerRole] (
  [SystemName] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table CustomerRole
-- ----------------------------
ALTER TABLE [dbo].[CustomerRole] ADD CONSTRAINT [PK_dbo.CustomerRole] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for CustomerRoleMapping
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[CustomerRoleMapping]', RESEED, 7)
GO


-- ----------------------------
-- Indexes structure for table CustomerRoleMapping
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_CustomerId]
ON [dbo].[CustomerRoleMapping] (
  [CustomerId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_CustomerRoleId]
ON [dbo].[CustomerRoleMapping] (
  [CustomerRoleId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_IsSystemMapping]
ON [dbo].[CustomerRoleMapping] (
  [IsSystemMapping] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table CustomerRoleMapping
-- ----------------------------
ALTER TABLE [dbo].[CustomerRoleMapping] ADD CONSTRAINT [PK_dbo.CustomerRoleMapping] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for DeliveryTime
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[DeliveryTime]', RESEED, 3)
GO


-- ----------------------------
-- Primary Key structure for table DeliveryTime
-- ----------------------------
ALTER TABLE [dbo].[DeliveryTime] ADD CONSTRAINT [PK_dbo.DeliveryTime] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Discount
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Discount]', RESEED, 6)
GO


-- ----------------------------
-- Primary Key structure for table Discount
-- ----------------------------
ALTER TABLE [dbo].[Discount] ADD CONSTRAINT [PK_dbo.Discount] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table Discount_AppliedToCategories
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Category_Id]
ON [dbo].[Discount_AppliedToCategories] (
  [Category_Id] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Discount_Id]
ON [dbo].[Discount_AppliedToCategories] (
  [Discount_Id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Discount_AppliedToCategories
-- ----------------------------
ALTER TABLE [dbo].[Discount_AppliedToCategories] ADD CONSTRAINT [PK_dbo.Discount_AppliedToCategories] PRIMARY KEY CLUSTERED ([Discount_Id], [Category_Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table Discount_AppliedToManufacturers
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Discount_Id]
ON [dbo].[Discount_AppliedToManufacturers] (
  [Discount_Id] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Manufacturer_Id]
ON [dbo].[Discount_AppliedToManufacturers] (
  [Manufacturer_Id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Discount_AppliedToManufacturers
-- ----------------------------
ALTER TABLE [dbo].[Discount_AppliedToManufacturers] ADD CONSTRAINT [PK_dbo.Discount_AppliedToManufacturers] PRIMARY KEY CLUSTERED ([Discount_Id], [Manufacturer_Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table Discount_AppliedToProducts
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Discount_Id]
ON [dbo].[Discount_AppliedToProducts] (
  [Discount_Id] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Product_Id]
ON [dbo].[Discount_AppliedToProducts] (
  [Product_Id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Discount_AppliedToProducts
-- ----------------------------
ALTER TABLE [dbo].[Discount_AppliedToProducts] ADD CONSTRAINT [PK_dbo.Discount_AppliedToProducts] PRIMARY KEY CLUSTERED ([Discount_Id], [Product_Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for DiscountUsageHistory
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[DiscountUsageHistory]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table DiscountUsageHistory
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_DiscountId]
ON [dbo].[DiscountUsageHistory] (
  [DiscountId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_OrderId]
ON [dbo].[DiscountUsageHistory] (
  [OrderId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table DiscountUsageHistory
-- ----------------------------
ALTER TABLE [dbo].[DiscountUsageHistory] ADD CONSTRAINT [PK_dbo.DiscountUsageHistory] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Download
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Download]', RESEED, 3)
GO


-- ----------------------------
-- Indexes structure for table Download
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_DownloadGuid]
ON [dbo].[Download] (
  [DownloadGuid] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_EntityId_EntityName]
ON [dbo].[Download] (
  [EntityId] ASC,
  [EntityName] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_MediaFileId]
ON [dbo].[Download] (
  [MediaFileId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_MediaStorageId]
ON [dbo].[Download] (
  [MediaStorageId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_UpdatedOn_IsTransient]
ON [dbo].[Download] (
  [UpdatedOnUtc] ASC,
  [IsTransient] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Download
-- ----------------------------
ALTER TABLE [dbo].[Download] ADD CONSTRAINT [PK_dbo.Download] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for EmailAccount
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[EmailAccount]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table EmailAccount
-- ----------------------------
ALTER TABLE [dbo].[EmailAccount] ADD CONSTRAINT [PK_dbo.EmailAccount] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ExportDeployment
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ExportDeployment]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table ExportDeployment
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_ProfileId]
ON [dbo].[ExportDeployment] (
  [ProfileId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table ExportDeployment
-- ----------------------------
ALTER TABLE [dbo].[ExportDeployment] ADD CONSTRAINT [PK_dbo.ExportDeployment] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ExportProfile
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ExportProfile]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table ExportProfile
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_SchedulingTaskId]
ON [dbo].[ExportProfile] (
  [SchedulingTaskId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table ExportProfile
-- ----------------------------
ALTER TABLE [dbo].[ExportProfile] ADD CONSTRAINT [PK_dbo.ExportProfile] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ExternalAuthenticationRecord
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ExternalAuthenticationRecord]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table ExternalAuthenticationRecord
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_CustomerId]
ON [dbo].[ExternalAuthenticationRecord] (
  [CustomerId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table ExternalAuthenticationRecord
-- ----------------------------
ALTER TABLE [dbo].[ExternalAuthenticationRecord] ADD CONSTRAINT [PK_dbo.ExternalAuthenticationRecord] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table ForumPostVote
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_ForumPostId]
ON [dbo].[ForumPostVote] (
  [ForumPostId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Id]
ON [dbo].[ForumPostVote] (
  [Id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table ForumPostVote
-- ----------------------------
ALTER TABLE [dbo].[ForumPostVote] ADD CONSTRAINT [PK_dbo.ForumPostVote] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Forums_Forum
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Forums_Forum]', RESEED, 2)
GO


-- ----------------------------
-- Indexes structure for table Forums_Forum
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_ForumGroupId_DisplayOrder]
ON [dbo].[Forums_Forum] (
  [ForumGroupId] ASC,
  [DisplayOrder] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Forums_Forum_DisplayOrder]
ON [dbo].[Forums_Forum] (
  [DisplayOrder] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Forums_Forum_ForumGroupId]
ON [dbo].[Forums_Forum] (
  [ForumGroupId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Forums_Forum
-- ----------------------------
ALTER TABLE [dbo].[Forums_Forum] ADD CONSTRAINT [PK_dbo.Forums_Forum] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Forums_Group
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Forums_Group]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table Forums_Group
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_DisplayOrder]
ON [dbo].[Forums_Group] (
  [DisplayOrder] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Forums_Group_DisplayOrder]
ON [dbo].[Forums_Group] (
  [DisplayOrder] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_LimitedToStores]
ON [dbo].[Forums_Group] (
  [LimitedToStores] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_SubjectToAcl]
ON [dbo].[Forums_Group] (
  [SubjectToAcl] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Forums_Group
-- ----------------------------
ALTER TABLE [dbo].[Forums_Group] ADD CONSTRAINT [PK_dbo.Forums_Group] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Forums_Post
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Forums_Post]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table Forums_Post
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_CreatedOnUtc]
ON [dbo].[Forums_Post] (
  [CreatedOnUtc] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_CustomerId]
ON [dbo].[Forums_Post] (
  [CustomerId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Forums_Post_CustomerId]
ON [dbo].[Forums_Post] (
  [CustomerId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Forums_Post_TopicId]
ON [dbo].[Forums_Post] (
  [TopicId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Published]
ON [dbo].[Forums_Post] (
  [Published] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_TopicId]
ON [dbo].[Forums_Post] (
  [TopicId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Forums_Post
-- ----------------------------
ALTER TABLE [dbo].[Forums_Post] ADD CONSTRAINT [PK_dbo.Forums_Post] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Forums_PrivateMessage
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Forums_PrivateMessage]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table Forums_PrivateMessage
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_FromCustomerId]
ON [dbo].[Forums_PrivateMessage] (
  [FromCustomerId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_ToCustomerId]
ON [dbo].[Forums_PrivateMessage] (
  [ToCustomerId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Forums_PrivateMessage
-- ----------------------------
ALTER TABLE [dbo].[Forums_PrivateMessage] ADD CONSTRAINT [PK_dbo.Forums_PrivateMessage] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Forums_Subscription
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Forums_Subscription]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table Forums_Subscription
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_CustomerId]
ON [dbo].[Forums_Subscription] (
  [CustomerId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Forums_Subscription_ForumId]
ON [dbo].[Forums_Subscription] (
  [ForumId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Forums_Subscription_TopicId]
ON [dbo].[Forums_Subscription] (
  [TopicId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Forums_Subscription
-- ----------------------------
ALTER TABLE [dbo].[Forums_Subscription] ADD CONSTRAINT [PK_dbo.Forums_Subscription] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Forums_Topic
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Forums_Topic]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table Forums_Topic
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_CreatedOnUtc]
ON [dbo].[Forums_Topic] (
  [CreatedOnUtc] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_CustomerId]
ON [dbo].[Forums_Topic] (
  [CustomerId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_ForumId_Published]
ON [dbo].[Forums_Topic] (
  [ForumId] ASC,
  [Published] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Forums_Topic_ForumId]
ON [dbo].[Forums_Topic] (
  [ForumId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_NumPosts]
ON [dbo].[Forums_Topic] (
  [NumPosts] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Subject]
ON [dbo].[Forums_Topic] (
  [Subject] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_TopicTypeId_LastPostTime]
ON [dbo].[Forums_Topic] (
  [TopicTypeId] ASC,
  [LastPostTime] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Forums_Topic
-- ----------------------------
ALTER TABLE [dbo].[Forums_Topic] ADD CONSTRAINT [PK_dbo.Forums_Topic] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for GenericAttribute
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[GenericAttribute]', RESEED, 4)
GO


-- ----------------------------
-- Indexes structure for table GenericAttribute
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_GenericAttribute_EntityId_and_KeyGroup]
ON [dbo].[GenericAttribute] (
  [EntityId] ASC,
  [KeyGroup] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_GenericAttribute_Key]
ON [dbo].[GenericAttribute] (
  [Key] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table GenericAttribute
-- ----------------------------
ALTER TABLE [dbo].[GenericAttribute] ADD CONSTRAINT [PK_dbo.GenericAttribute] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for GiftCard
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[GiftCard]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table GiftCard
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_PurchasedWithOrderItemId]
ON [dbo].[GiftCard] (
  [PurchasedWithOrderItemId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table GiftCard
-- ----------------------------
ALTER TABLE [dbo].[GiftCard] ADD CONSTRAINT [PK_dbo.GiftCard] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for GiftCardUsageHistory
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[GiftCardUsageHistory]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table GiftCardUsageHistory
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_GiftCardId]
ON [dbo].[GiftCardUsageHistory] (
  [GiftCardId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_UsedWithOrderId]
ON [dbo].[GiftCardUsageHistory] (
  [UsedWithOrderId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table GiftCardUsageHistory
-- ----------------------------
ALTER TABLE [dbo].[GiftCardUsageHistory] ADD CONSTRAINT [PK_dbo.GiftCardUsageHistory] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ImportProfile
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ImportProfile]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table ImportProfile
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_SchedulingTaskId]
ON [dbo].[ImportProfile] (
  [SchedulingTaskId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table ImportProfile
-- ----------------------------
ALTER TABLE [dbo].[ImportProfile] ADD CONSTRAINT [PK_dbo.ImportProfile] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Language
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Language]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table Language
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Language_DisplayOrder]
ON [dbo].[Language] (
  [DisplayOrder] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Language
-- ----------------------------
ALTER TABLE [dbo].[Language] ADD CONSTRAINT [PK_dbo.Language] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for LocaleStringResource
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[LocaleStringResource]', RESEED, 6944)
GO


-- ----------------------------
-- Indexes structure for table LocaleStringResource
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_LanguageId]
ON [dbo].[LocaleStringResource] (
  [LanguageId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_LocaleStringResource]
ON [dbo].[LocaleStringResource] (
  [ResourceName] ASC,
  [LanguageId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table LocaleStringResource
-- ----------------------------
ALTER TABLE [dbo].[LocaleStringResource] ADD CONSTRAINT [PK_dbo.LocaleStringResource] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for LocalizedProperty
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[LocalizedProperty]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table LocalizedProperty
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_LocalizedProperty_Compound]
ON [dbo].[LocalizedProperty] (
  [EntityId] ASC,
  [LocaleKey] ASC,
  [LocaleKeyGroup] ASC,
  [LanguageId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_LocalizedProperty_Key]
ON [dbo].[LocalizedProperty] (
  [Id] ASC
)
INCLUDE ([EntityId], [LocaleKeyGroup], [LocaleKey])
GO

CREATE NONCLUSTERED INDEX [IX_LocalizedProperty_LocaleKeyGroup]
ON [dbo].[LocalizedProperty] (
  [LocaleKeyGroup] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table LocalizedProperty
-- ----------------------------
ALTER TABLE [dbo].[LocalizedProperty] ADD CONSTRAINT [PK_dbo.LocalizedProperty] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Log
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Log]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table Log
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_CustomerId]
ON [dbo].[Log] (
  [CustomerId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Log_CreatedOnUtc]
ON [dbo].[Log] (
  [CreatedOnUtc] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Log_Level]
ON [dbo].[Log] (
  [LogLevelId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Log_Logger]
ON [dbo].[Log] (
  [Logger] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Log
-- ----------------------------
ALTER TABLE [dbo].[Log] ADD CONSTRAINT [PK_dbo.Log] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Manufacturer
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Manufacturer]', RESEED, 18)
GO


-- ----------------------------
-- Indexes structure for table Manufacturer
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Deleted]
ON [dbo].[Manufacturer] (
  [Deleted] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Manufacturer_DisplayOrder]
ON [dbo].[Manufacturer] (
  [DisplayOrder] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Manufacturer_LimitedToStores]
ON [dbo].[Manufacturer] (
  [LimitedToStores] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_MediaFileId]
ON [dbo].[Manufacturer] (
  [MediaFileId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_SubjectToAcl]
ON [dbo].[Manufacturer] (
  [SubjectToAcl] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Manufacturer
-- ----------------------------
ALTER TABLE [dbo].[Manufacturer] ADD CONSTRAINT [PK_dbo.Manufacturer] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ManufacturerTemplate
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ManufacturerTemplate]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table ManufacturerTemplate
-- ----------------------------
ALTER TABLE [dbo].[ManufacturerTemplate] ADD CONSTRAINT [PK_dbo.ManufacturerTemplate] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for MeasureDimension
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[MeasureDimension]', RESEED, 5)
GO


-- ----------------------------
-- Primary Key structure for table MeasureDimension
-- ----------------------------
ALTER TABLE [dbo].[MeasureDimension] ADD CONSTRAINT [PK_dbo.MeasureDimension] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for MeasureWeight
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[MeasureWeight]', RESEED, 6)
GO


-- ----------------------------
-- Primary Key structure for table MeasureWeight
-- ----------------------------
ALTER TABLE [dbo].[MeasureWeight] ADD CONSTRAINT [PK_dbo.MeasureWeight] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for MediaFile
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[MediaFile]', RESEED, 252)
GO


-- ----------------------------
-- Indexes structure for table MediaFile
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Media_Extension]
ON [dbo].[MediaFile] (
  [FolderId] ASC,
  [Extension] ASC,
  [PixelSize] ASC,
  [Deleted] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Media_FolderId]
ON [dbo].[MediaFile] (
  [FolderId] ASC,
  [Deleted] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Media_MediaType]
ON [dbo].[MediaFile] (
  [FolderId] ASC,
  [MediaType] ASC,
  [Extension] ASC,
  [PixelSize] ASC,
  [Deleted] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Media_Name]
ON [dbo].[MediaFile] (
  [FolderId] ASC,
  [Name] ASC,
  [Deleted] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Media_PixelSize]
ON [dbo].[MediaFile] (
  [FolderId] ASC,
  [PixelSize] ASC,
  [Deleted] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Media_Size]
ON [dbo].[MediaFile] (
  [FolderId] ASC,
  [Size] ASC,
  [Deleted] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Media_UpdatedOnUtc]
ON [dbo].[MediaFile] (
  [FolderId] ASC,
  [Deleted] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_MediaStorageId]
ON [dbo].[MediaFile] (
  [MediaStorageId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table MediaFile
-- ----------------------------
ALTER TABLE [dbo].[MediaFile] ADD CONSTRAINT [PK_dbo.MediaFile] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table MediaFile_Tag_Mapping
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_MediaFile_Id]
ON [dbo].[MediaFile_Tag_Mapping] (
  [MediaFile_Id] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_MediaTag_Id]
ON [dbo].[MediaFile_Tag_Mapping] (
  [MediaTag_Id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table MediaFile_Tag_Mapping
-- ----------------------------
ALTER TABLE [dbo].[MediaFile_Tag_Mapping] ADD CONSTRAINT [PK_dbo.MediaFile_Tag_Mapping] PRIMARY KEY CLUSTERED ([MediaFile_Id], [MediaTag_Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for MediaFolder
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[MediaFolder]', RESEED, 6)
GO


-- ----------------------------
-- Indexes structure for table MediaFolder
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [IX_NameParentId]
ON [dbo].[MediaFolder] (
  [ParentId] ASC,
  [Name] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table MediaFolder
-- ----------------------------
ALTER TABLE [dbo].[MediaFolder] ADD CONSTRAINT [PK_dbo.MediaFolder] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for MediaStorage
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[MediaStorage]', RESEED, 252)
GO


-- ----------------------------
-- Primary Key structure for table MediaStorage
-- ----------------------------
ALTER TABLE [dbo].[MediaStorage] ADD CONSTRAINT [PK_dbo.MediaStorage] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for MediaTag
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[MediaTag]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table MediaTag
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_MediaTag_Name]
ON [dbo].[MediaTag] (
  [Name] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table MediaTag
-- ----------------------------
ALTER TABLE [dbo].[MediaTag] ADD CONSTRAINT [PK_dbo.MediaTag] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for MediaTrack
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[MediaTrack]', RESEED, 253)
GO


-- ----------------------------
-- Indexes structure for table MediaTrack
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Album]
ON [dbo].[MediaTrack] (
  [Album] ASC
)
GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_MediaTrack_Composite]
ON [dbo].[MediaTrack] (
  [MediaFileId] ASC,
  [EntityId] ASC,
  [EntityName] ASC,
  [Property] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table MediaTrack
-- ----------------------------
ALTER TABLE [dbo].[MediaTrack] ADD CONSTRAINT [PK_dbo.MediaTrack] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for MenuItemRecord
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[MenuItemRecord]', RESEED, 24)
GO


-- ----------------------------
-- Indexes structure for table MenuItemRecord
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_MenuId]
ON [dbo].[MenuItemRecord] (
  [MenuId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_MenuItem_DisplayOrder]
ON [dbo].[MenuItemRecord] (
  [DisplayOrder] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_MenuItem_LimitedToStores]
ON [dbo].[MenuItemRecord] (
  [LimitedToStores] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_MenuItem_ParentItemId]
ON [dbo].[MenuItemRecord] (
  [ParentItemId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_MenuItem_Published]
ON [dbo].[MenuItemRecord] (
  [Published] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_MenuItem_SubjectToAcl]
ON [dbo].[MenuItemRecord] (
  [SubjectToAcl] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table MenuItemRecord
-- ----------------------------
ALTER TABLE [dbo].[MenuItemRecord] ADD CONSTRAINT [PK_dbo.MenuItemRecord] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for MenuRecord
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[MenuRecord]', RESEED, 5)
GO


-- ----------------------------
-- Indexes structure for table MenuRecord
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Menu_LimitedToStores]
ON [dbo].[MenuRecord] (
  [LimitedToStores] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Menu_Published]
ON [dbo].[MenuRecord] (
  [Published] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Menu_SubjectToAcl]
ON [dbo].[MenuRecord] (
  [SubjectToAcl] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Menu_SystemName_IsSystemMenu]
ON [dbo].[MenuRecord] (
  [SystemName] ASC,
  [IsSystemMenu] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table MenuRecord
-- ----------------------------
ALTER TABLE [dbo].[MenuRecord] ADD CONSTRAINT [PK_dbo.MenuRecord] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for MessageTemplate
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[MessageTemplate]', RESEED, 32)
GO


-- ----------------------------
-- Primary Key structure for table MessageTemplate
-- ----------------------------
ALTER TABLE [dbo].[MessageTemplate] ADD CONSTRAINT [PK_dbo.MessageTemplate] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for News
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[News]', RESEED, 4)
GO


-- ----------------------------
-- Indexes structure for table News
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_MediaFileId]
ON [dbo].[News] (
  [MediaFileId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_PreviewMediaFileId]
ON [dbo].[News] (
  [PreviewMediaFileId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table News
-- ----------------------------
ALTER TABLE [dbo].[News] ADD CONSTRAINT [PK_dbo.News] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table NewsComment
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Id]
ON [dbo].[NewsComment] (
  [Id] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_NewsComment_NewsItemId]
ON [dbo].[NewsComment] (
  [NewsItemId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_NewsItemId]
ON [dbo].[NewsComment] (
  [NewsItemId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table NewsComment
-- ----------------------------
ALTER TABLE [dbo].[NewsComment] ADD CONSTRAINT [PK_dbo.NewsComment] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for NewsLetterSubscription
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[NewsLetterSubscription]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table NewsLetterSubscription
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Active]
ON [dbo].[NewsLetterSubscription] (
  [Active] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_NewsletterSubscription_Email_StoreId]
ON [dbo].[NewsLetterSubscription] (
  [Email] ASC,
  [StoreId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table NewsLetterSubscription
-- ----------------------------
ALTER TABLE [dbo].[NewsLetterSubscription] ADD CONSTRAINT [PK_dbo.NewsLetterSubscription] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Order
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Order]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table Order
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_BillingAddressId]
ON [dbo].[Order] (
  [BillingAddressId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_CustomerId]
ON [dbo].[Order] (
  [CustomerId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Deleted]
ON [dbo].[Order] (
  [Deleted] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Order_CustomerId]
ON [dbo].[Order] (
  [CustomerId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_ShippingAddressId]
ON [dbo].[Order] (
  [ShippingAddressId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Order
-- ----------------------------
ALTER TABLE [dbo].[Order] ADD CONSTRAINT [PK_dbo.Order] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for OrderItem
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[OrderItem]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table OrderItem
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_OrderId]
ON [dbo].[OrderItem] (
  [OrderId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_OrderItem_OrderId]
ON [dbo].[OrderItem] (
  [OrderId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_ProductId]
ON [dbo].[OrderItem] (
  [ProductId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table OrderItem
-- ----------------------------
ALTER TABLE [dbo].[OrderItem] ADD CONSTRAINT [PK_dbo.OrderItem] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for OrderNote
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[OrderNote]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table OrderNote
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_OrderId]
ON [dbo].[OrderNote] (
  [OrderId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_OrderNote_OrderId]
ON [dbo].[OrderNote] (
  [OrderId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table OrderNote
-- ----------------------------
ALTER TABLE [dbo].[OrderNote] ADD CONSTRAINT [PK_dbo.OrderNote] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for PaymentMethod
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[PaymentMethod]', RESEED, 2)
GO


-- ----------------------------
-- Primary Key structure for table PaymentMethod
-- ----------------------------
ALTER TABLE [dbo].[PaymentMethod] ADD CONSTRAINT [PK_dbo.PaymentMethod] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for PermissionRecord
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[PermissionRecord]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table PermissionRecord
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_SystemName]
ON [dbo].[PermissionRecord] (
  [SystemName] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table PermissionRecord
-- ----------------------------
ALTER TABLE [dbo].[PermissionRecord] ADD CONSTRAINT [PK_dbo.PermissionRecord] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for PermissionRoleMapping
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[PermissionRoleMapping]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table PermissionRoleMapping
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_CustomerRoleId]
ON [dbo].[PermissionRoleMapping] (
  [CustomerRoleId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_PermissionRecordId]
ON [dbo].[PermissionRoleMapping] (
  [PermissionRecordId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table PermissionRoleMapping
-- ----------------------------
ALTER TABLE [dbo].[PermissionRoleMapping] ADD CONSTRAINT [PK_dbo.PermissionRoleMapping] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Poll
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Poll]', RESEED, 2)
GO


-- ----------------------------
-- Indexes structure for table Poll
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_LanguageId]
ON [dbo].[Poll] (
  [LanguageId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Poll
-- ----------------------------
ALTER TABLE [dbo].[Poll] ADD CONSTRAINT [PK_dbo.Poll] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for PollAnswer
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[PollAnswer]', RESEED, 8)
GO


-- ----------------------------
-- Indexes structure for table PollAnswer
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_PollAnswer_PollId]
ON [dbo].[PollAnswer] (
  [PollId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_PollId]
ON [dbo].[PollAnswer] (
  [PollId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table PollAnswer
-- ----------------------------
ALTER TABLE [dbo].[PollAnswer] ADD CONSTRAINT [PK_dbo.PollAnswer] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table PollVotingRecord
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Id]
ON [dbo].[PollVotingRecord] (
  [Id] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_PollAnswerId]
ON [dbo].[PollVotingRecord] (
  [PollAnswerId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table PollVotingRecord
-- ----------------------------
ALTER TABLE [dbo].[PollVotingRecord] ADD CONSTRAINT [PK_dbo.PollVotingRecord] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Product
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Product]', RESEED, 68)
GO


-- ----------------------------
-- Indexes structure for table Product
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_CountryOfOriginId]
ON [dbo].[Product] (
  [CountryOfOriginId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Deleted]
ON [dbo].[Product] (
  [Deleted] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_DeliveryTimeId]
ON [dbo].[Product] (
  [DeliveryTimeId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Gtin]
ON [dbo].[Product] (
  [Gtin] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_IsSystemProduct]
ON [dbo].[Product] (
  [IsSystemProduct] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_ManufacturerPartNumber]
ON [dbo].[Product] (
  [ManufacturerPartNumber] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Product_LimitedToStores]
ON [dbo].[Product] (
  [LimitedToStores] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Product_Name]
ON [dbo].[Product] (
  [Name] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Product_ParentGroupedProductId]
ON [dbo].[Product] (
  [ParentGroupedProductId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Product_PriceDatesEtc]
ON [dbo].[Product] (
  [Price] ASC,
  [AvailableStartDateTimeUtc] ASC,
  [AvailableEndDateTimeUtc] ASC,
  [Published] ASC,
  [Deleted] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Product_Published]
ON [dbo].[Product] (
  [Published] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Product_Published_Deleted_IsSystemProduct]
ON [dbo].[Product] (
  [Published] ASC,
  [Deleted] ASC,
  [IsSystemProduct] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Product_ShowOnHomepage]
ON [dbo].[Product] (
  [ShowOnHomePage] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Product_Sku]
ON [dbo].[Product] (
  [Sku] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Product_SystemName_IsSystemProduct]
ON [dbo].[Product] (
  [SystemName] ASC,
  [IsSystemProduct] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Product_VisibleIndividually]
ON [dbo].[Product] (
  [VisibleIndividually] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_QuantityUnitId]
ON [dbo].[Product] (
  [QuantityUnitId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_SampleDownloadId]
ON [dbo].[Product] (
  [SampleDownloadId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_SeekExport1]
ON [dbo].[Product] (
  [Published] ASC,
  [Id] ASC,
  [Visibility] ASC,
  [Deleted] ASC,
  [IsSystemProduct] ASC,
  [AvailableStartDateTimeUtc] ASC,
  [AvailableEndDateTimeUtc] ASC
)
INCLUDE ([UpdatedOnUtc])
GO

CREATE NONCLUSTERED INDEX [IX_Visibility]
ON [dbo].[Product] (
  [Visibility] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Product
-- ----------------------------
ALTER TABLE [dbo].[Product] ADD CONSTRAINT [PK_dbo.Product] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Product_Category_Mapping
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Product_Category_Mapping]', RESEED, 70)
GO


-- ----------------------------
-- Indexes structure for table Product_Category_Mapping
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_CategoryId]
ON [dbo].[Product_Category_Mapping] (
  [CategoryId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_IsFeaturedProduct]
ON [dbo].[Product_Category_Mapping] (
  [IsFeaturedProduct] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_IsSystemMapping]
ON [dbo].[Product_Category_Mapping] (
  [IsSystemMapping] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_PCM_Product_and_Category]
ON [dbo].[Product_Category_Mapping] (
  [CategoryId] ASC,
  [ProductId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_ProductId]
ON [dbo].[Product_Category_Mapping] (
  [ProductId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Product_Category_Mapping
-- ----------------------------
ALTER TABLE [dbo].[Product_Category_Mapping] ADD CONSTRAINT [PK_dbo.Product_Category_Mapping] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Product_Manufacturer_Mapping
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Product_Manufacturer_Mapping]', RESEED, 39)
GO


-- ----------------------------
-- Indexes structure for table Product_Manufacturer_Mapping
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_IsFeaturedProduct]
ON [dbo].[Product_Manufacturer_Mapping] (
  [IsFeaturedProduct] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_ManufacturerId]
ON [dbo].[Product_Manufacturer_Mapping] (
  [ManufacturerId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_PMM_Product_and_Manufacturer]
ON [dbo].[Product_Manufacturer_Mapping] (
  [ManufacturerId] ASC,
  [ProductId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_ProductId]
ON [dbo].[Product_Manufacturer_Mapping] (
  [ProductId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Product_Manufacturer_Mapping
-- ----------------------------
ALTER TABLE [dbo].[Product_Manufacturer_Mapping] ADD CONSTRAINT [PK_dbo.Product_Manufacturer_Mapping] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Product_MediaFile_Mapping
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Product_MediaFile_Mapping]', RESEED, 184)
GO


-- ----------------------------
-- Indexes structure for table Product_MediaFile_Mapping
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_PictureId]
ON [dbo].[Product_MediaFile_Mapping] (
  [MediaFileId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_ProductId]
ON [dbo].[Product_MediaFile_Mapping] (
  [ProductId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Product_MediaFile_Mapping
-- ----------------------------
ALTER TABLE [dbo].[Product_MediaFile_Mapping] ADD CONSTRAINT [PK_dbo.Product_MediaFile_Mapping] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Product_ProductAttribute_Mapping
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Product_ProductAttribute_Mapping]', RESEED, 35)
GO


-- ----------------------------
-- Indexes structure for table Product_ProductAttribute_Mapping
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AttributeControlTypeId]
ON [dbo].[Product_ProductAttribute_Mapping] (
  [AttributeControlTypeId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Product_ProductAttribute_Mapping_ProductId]
ON [dbo].[Product_ProductAttribute_Mapping] (
  [ProductId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Product_ProductAttribute_Mapping_ProductId_DisplayOrder]
ON [dbo].[Product_ProductAttribute_Mapping] (
  [ProductId] ASC,
  [DisplayOrder] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_ProductAttributeId]
ON [dbo].[Product_ProductAttribute_Mapping] (
  [ProductAttributeId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Product_ProductAttribute_Mapping
-- ----------------------------
ALTER TABLE [dbo].[Product_ProductAttribute_Mapping] ADD CONSTRAINT [PK_dbo.Product_ProductAttribute_Mapping] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table Product_ProductTag_Mapping
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Product_Id]
ON [dbo].[Product_ProductTag_Mapping] (
  [Product_Id] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_ProductTag_Id]
ON [dbo].[Product_ProductTag_Mapping] (
  [ProductTag_Id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Product_ProductTag_Mapping
-- ----------------------------
ALTER TABLE [dbo].[Product_ProductTag_Mapping] ADD CONSTRAINT [PK_dbo.Product_ProductTag_Mapping] PRIMARY KEY CLUSTERED ([Product_Id], [ProductTag_Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Product_SpecificationAttribute_Mapping
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Product_SpecificationAttribute_Mapping]', RESEED, 105)
GO


-- ----------------------------
-- Indexes structure for table Product_SpecificationAttribute_Mapping
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_ProductId]
ON [dbo].[Product_SpecificationAttribute_Mapping] (
  [ProductId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_PSAM_AllowFiltering]
ON [dbo].[Product_SpecificationAttribute_Mapping] (
  [AllowFiltering] ASC
)
INCLUDE ([ProductId], [SpecificationAttributeOptionId])
GO

CREATE NONCLUSTERED INDEX [IX_PSAM_SpecificationAttributeOptionId_AllowFiltering]
ON [dbo].[Product_SpecificationAttribute_Mapping] (
  [SpecificationAttributeOptionId] ASC,
  [AllowFiltering] ASC
)
INCLUDE ([ProductId])
GO

CREATE NONCLUSTERED INDEX [IX_SpecificationAttributeOptionId]
ON [dbo].[Product_SpecificationAttribute_Mapping] (
  [SpecificationAttributeOptionId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Product_SpecificationAttribute_Mapping
-- ----------------------------
ALTER TABLE [dbo].[Product_SpecificationAttribute_Mapping] ADD CONSTRAINT [PK_dbo.Product_SpecificationAttribute_Mapping] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ProductAttribute
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ProductAttribute]', RESEED, 28)
GO


-- ----------------------------
-- Indexes structure for table ProductAttribute
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AllowFiltering]
ON [dbo].[ProductAttribute] (
  [AllowFiltering] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_DisplayOrder]
ON [dbo].[ProductAttribute] (
  [DisplayOrder] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table ProductAttribute
-- ----------------------------
ALTER TABLE [dbo].[ProductAttribute] ADD CONSTRAINT [PK_dbo.ProductAttribute] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ProductAttributeOption
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ProductAttributeOption]', RESEED, 9)
GO


-- ----------------------------
-- Indexes structure for table ProductAttributeOption
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_ProductAttributeOptionsSetId]
ON [dbo].[ProductAttributeOption] (
  [ProductAttributeOptionsSetId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table ProductAttributeOption
-- ----------------------------
ALTER TABLE [dbo].[ProductAttributeOption] ADD CONSTRAINT [PK_dbo.ProductAttributeOption] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ProductAttributeOptionsSet
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ProductAttributeOptionsSet]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table ProductAttributeOptionsSet
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_ProductAttributeId]
ON [dbo].[ProductAttributeOptionsSet] (
  [ProductAttributeId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table ProductAttributeOptionsSet
-- ----------------------------
ALTER TABLE [dbo].[ProductAttributeOptionsSet] ADD CONSTRAINT [PK_dbo.ProductAttributeOptionsSet] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ProductBundleItem
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ProductBundleItem]', RESEED, 10)
GO


-- ----------------------------
-- Indexes structure for table ProductBundleItem
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_BundleProductId]
ON [dbo].[ProductBundleItem] (
  [BundleProductId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_ProductBundleItem_BundleProductId]
ON [dbo].[ProductBundleItem] (
  [BundleProductId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_ProductBundleItem_ProductId]
ON [dbo].[ProductBundleItem] (
  [ProductId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_ProductId]
ON [dbo].[ProductBundleItem] (
  [ProductId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table ProductBundleItem
-- ----------------------------
ALTER TABLE [dbo].[ProductBundleItem] ADD CONSTRAINT [PK_dbo.ProductBundleItem] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ProductBundleItemAttributeFilter
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ProductBundleItemAttributeFilter]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table ProductBundleItemAttributeFilter
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_BundleItemId]
ON [dbo].[ProductBundleItemAttributeFilter] (
  [BundleItemId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_ProductBundleItemAttributeFilter_BundleItemId]
ON [dbo].[ProductBundleItemAttributeFilter] (
  [BundleItemId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table ProductBundleItemAttributeFilter
-- ----------------------------
ALTER TABLE [dbo].[ProductBundleItemAttributeFilter] ADD CONSTRAINT [PK_dbo.ProductBundleItemAttributeFilter] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table ProductReview
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Id]
ON [dbo].[ProductReview] (
  [Id] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_ProductId]
ON [dbo].[ProductReview] (
  [ProductId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_ProductReview_ProductId]
ON [dbo].[ProductReview] (
  [ProductId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table ProductReview
-- ----------------------------
ALTER TABLE [dbo].[ProductReview] ADD CONSTRAINT [PK_dbo.ProductReview] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table ProductReviewHelpfulness
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Id]
ON [dbo].[ProductReviewHelpfulness] (
  [Id] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_ProductReviewId]
ON [dbo].[ProductReviewHelpfulness] (
  [ProductReviewId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table ProductReviewHelpfulness
-- ----------------------------
ALTER TABLE [dbo].[ProductReviewHelpfulness] ADD CONSTRAINT [PK_dbo.ProductReviewHelpfulness] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ProductTag
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ProductTag]', RESEED, 10)
GO


-- ----------------------------
-- Indexes structure for table ProductTag
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_ProductTag_Name]
ON [dbo].[ProductTag] (
  [Name] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_ProductTag_Published]
ON [dbo].[ProductTag] (
  [Published] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table ProductTag
-- ----------------------------
ALTER TABLE [dbo].[ProductTag] ADD CONSTRAINT [PK_dbo.ProductTag] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ProductTemplate
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ProductTemplate]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table ProductTemplate
-- ----------------------------
ALTER TABLE [dbo].[ProductTemplate] ADD CONSTRAINT [PK_dbo.ProductTemplate] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ProductVariantAttributeCombination
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ProductVariantAttributeCombination]', RESEED, 262)
GO


-- ----------------------------
-- Indexes structure for table ProductVariantAttributeCombination
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_DeliveryTimeId]
ON [dbo].[ProductVariantAttributeCombination] (
  [DeliveryTimeId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Gtin]
ON [dbo].[ProductVariantAttributeCombination] (
  [Gtin] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_IsActive]
ON [dbo].[ProductVariantAttributeCombination] (
  [IsActive] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_ManufacturerPartNumber]
ON [dbo].[ProductVariantAttributeCombination] (
  [ManufacturerPartNumber] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_ProductId]
ON [dbo].[ProductVariantAttributeCombination] (
  [ProductId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_ProductVariantAttributeCombination_SKU]
ON [dbo].[ProductVariantAttributeCombination] (
  [Sku] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_QuantityUnitId]
ON [dbo].[ProductVariantAttributeCombination] (
  [QuantityUnitId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_StockQuantity_AllowOutOfStockOrders]
ON [dbo].[ProductVariantAttributeCombination] (
  [StockQuantity] ASC,
  [AllowOutOfStockOrders] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table ProductVariantAttributeCombination
-- ----------------------------
ALTER TABLE [dbo].[ProductVariantAttributeCombination] ADD CONSTRAINT [PK_dbo.ProductVariantAttributeCombination] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ProductVariantAttributeValue
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ProductVariantAttributeValue]', RESEED, 188)
GO


-- ----------------------------
-- Indexes structure for table ProductVariantAttributeValue
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Name]
ON [dbo].[ProductVariantAttributeValue] (
  [Name] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_ProductVariantAttributeValue_ProductVariantAttributeId]
ON [dbo].[ProductVariantAttributeValue] (
  [ProductVariantAttributeId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_ProductVariantAttributeValue_ProductVariantAttributeId_DisplayOrder]
ON [dbo].[ProductVariantAttributeValue] (
  [ProductVariantAttributeId] ASC,
  [DisplayOrder] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_ValueTypeId]
ON [dbo].[ProductVariantAttributeValue] (
  [ValueTypeId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table ProductVariantAttributeValue
-- ----------------------------
ALTER TABLE [dbo].[ProductVariantAttributeValue] ADD CONSTRAINT [PK_dbo.ProductVariantAttributeValue] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for QuantityUnit
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[QuantityUnit]', RESEED, 19)
GO


-- ----------------------------
-- Primary Key structure for table QuantityUnit
-- ----------------------------
ALTER TABLE [dbo].[QuantityUnit] ADD CONSTRAINT [PK_dbo.QuantityUnit] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for QueuedEmail
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[QueuedEmail]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table QueuedEmail
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_EmailAccountId]
ON [dbo].[QueuedEmail] (
  [EmailAccountId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_QueuedEmail_CreatedOnUtc]
ON [dbo].[QueuedEmail] (
  [CreatedOnUtc] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table QueuedEmail
-- ----------------------------
ALTER TABLE [dbo].[QueuedEmail] ADD CONSTRAINT [PK_dbo.QueuedEmail] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for QueuedEmailAttachment
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[QueuedEmailAttachment]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table QueuedEmailAttachment
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_FileId]
ON [dbo].[QueuedEmailAttachment] (
  [FileId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_MediaFileId]
ON [dbo].[QueuedEmailAttachment] (
  [MediaFileId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_MediaStorageId]
ON [dbo].[QueuedEmailAttachment] (
  [MediaStorageId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_QueuedEmailId]
ON [dbo].[QueuedEmailAttachment] (
  [QueuedEmailId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table QueuedEmailAttachment
-- ----------------------------
ALTER TABLE [dbo].[QueuedEmailAttachment] ADD CONSTRAINT [PK_dbo.QueuedEmailAttachment] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for RecurringPayment
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[RecurringPayment]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table RecurringPayment
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_InitialOrderId]
ON [dbo].[RecurringPayment] (
  [InitialOrderId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table RecurringPayment
-- ----------------------------
ALTER TABLE [dbo].[RecurringPayment] ADD CONSTRAINT [PK_dbo.RecurringPayment] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for RecurringPaymentHistory
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[RecurringPaymentHistory]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table RecurringPaymentHistory
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_RecurringPaymentId]
ON [dbo].[RecurringPaymentHistory] (
  [RecurringPaymentId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table RecurringPaymentHistory
-- ----------------------------
ALTER TABLE [dbo].[RecurringPaymentHistory] ADD CONSTRAINT [PK_dbo.RecurringPaymentHistory] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for RelatedProduct
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[RelatedProduct]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table RelatedProduct
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_RelatedProduct_ProductId1]
ON [dbo].[RelatedProduct] (
  [ProductId1] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table RelatedProduct
-- ----------------------------
ALTER TABLE [dbo].[RelatedProduct] ADD CONSTRAINT [PK_dbo.RelatedProduct] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ReturnRequest
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ReturnRequest]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table ReturnRequest
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_CustomerId]
ON [dbo].[ReturnRequest] (
  [CustomerId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table ReturnRequest
-- ----------------------------
ALTER TABLE [dbo].[ReturnRequest] ADD CONSTRAINT [PK_dbo.ReturnRequest] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for RewardPointsHistory
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[RewardPointsHistory]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table RewardPointsHistory
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_CustomerId]
ON [dbo].[RewardPointsHistory] (
  [CustomerId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_UsedWithOrder_Id]
ON [dbo].[RewardPointsHistory] (
  [UsedWithOrder_Id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table RewardPointsHistory
-- ----------------------------
ALTER TABLE [dbo].[RewardPointsHistory] ADD CONSTRAINT [PK_dbo.RewardPointsHistory] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Rule
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Rule]', RESEED, 6)
GO


-- ----------------------------
-- Indexes structure for table Rule
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_PageBuilder_DisplayOrder]
ON [dbo].[Rule] (
  [DisplayOrder] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_PageBuilder_RuleType]
ON [dbo].[Rule] (
  [RuleType] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_RuleSetId]
ON [dbo].[Rule] (
  [RuleSetId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Rule
-- ----------------------------
ALTER TABLE [dbo].[Rule] ADD CONSTRAINT [PK_dbo.Rule] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for RuleSet
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[RuleSet]', RESEED, 4)
GO


-- ----------------------------
-- Indexes structure for table RuleSet
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_IsSubGroup]
ON [dbo].[RuleSet] (
  [IsSubGroup] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_RuleSetEntity_Scope]
ON [dbo].[RuleSet] (
  [IsActive] ASC,
  [Scope] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table RuleSet
-- ----------------------------
ALTER TABLE [dbo].[RuleSet] ADD CONSTRAINT [PK_dbo.RuleSet] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table RuleSet_Category_Mapping
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Category_Id]
ON [dbo].[RuleSet_Category_Mapping] (
  [Category_Id] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_RuleSetEntity_Id]
ON [dbo].[RuleSet_Category_Mapping] (
  [RuleSetEntity_Id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table RuleSet_Category_Mapping
-- ----------------------------
ALTER TABLE [dbo].[RuleSet_Category_Mapping] ADD CONSTRAINT [PK_dbo.RuleSet_Category_Mapping] PRIMARY KEY CLUSTERED ([Category_Id], [RuleSetEntity_Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table RuleSet_CustomerRole_Mapping
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_CustomerRole_Id]
ON [dbo].[RuleSet_CustomerRole_Mapping] (
  [CustomerRole_Id] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_RuleSetEntity_Id]
ON [dbo].[RuleSet_CustomerRole_Mapping] (
  [RuleSetEntity_Id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table RuleSet_CustomerRole_Mapping
-- ----------------------------
ALTER TABLE [dbo].[RuleSet_CustomerRole_Mapping] ADD CONSTRAINT [PK_dbo.RuleSet_CustomerRole_Mapping] PRIMARY KEY CLUSTERED ([CustomerRole_Id], [RuleSetEntity_Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table RuleSet_Discount_Mapping
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Discount_Id]
ON [dbo].[RuleSet_Discount_Mapping] (
  [Discount_Id] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_RuleSetEntity_Id]
ON [dbo].[RuleSet_Discount_Mapping] (
  [RuleSetEntity_Id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table RuleSet_Discount_Mapping
-- ----------------------------
ALTER TABLE [dbo].[RuleSet_Discount_Mapping] ADD CONSTRAINT [PK_dbo.RuleSet_Discount_Mapping] PRIMARY KEY CLUSTERED ([Discount_Id], [RuleSetEntity_Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table RuleSet_PaymentMethod_Mapping
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_PaymentMethod_Id]
ON [dbo].[RuleSet_PaymentMethod_Mapping] (
  [PaymentMethod_Id] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_RuleSetEntity_Id]
ON [dbo].[RuleSet_PaymentMethod_Mapping] (
  [RuleSetEntity_Id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table RuleSet_PaymentMethod_Mapping
-- ----------------------------
ALTER TABLE [dbo].[RuleSet_PaymentMethod_Mapping] ADD CONSTRAINT [PK_dbo.RuleSet_PaymentMethod_Mapping] PRIMARY KEY CLUSTERED ([PaymentMethod_Id], [RuleSetEntity_Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table RuleSet_ShippingMethod_Mapping
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_RuleSetEntity_Id]
ON [dbo].[RuleSet_ShippingMethod_Mapping] (
  [RuleSetEntity_Id] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_ShippingMethod_Id]
ON [dbo].[RuleSet_ShippingMethod_Mapping] (
  [ShippingMethod_Id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table RuleSet_ShippingMethod_Mapping
-- ----------------------------
ALTER TABLE [dbo].[RuleSet_ShippingMethod_Mapping] ADD CONSTRAINT [PK_dbo.RuleSet_ShippingMethod_Mapping] PRIMARY KEY CLUSTERED ([ShippingMethod_Id], [RuleSetEntity_Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ScheduleTask
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ScheduleTask]', RESEED, 13)
GO


-- ----------------------------
-- Indexes structure for table ScheduleTask
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_NextRun_Enabled]
ON [dbo].[ScheduleTask] (
  [NextRunUtc] ASC,
  [Enabled] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Type]
ON [dbo].[ScheduleTask] (
  [Type] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table ScheduleTask
-- ----------------------------
ALTER TABLE [dbo].[ScheduleTask] ADD CONSTRAINT [PK_dbo.ScheduleTask] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ScheduleTaskHistory
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ScheduleTaskHistory]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table ScheduleTaskHistory
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_MachineName_IsRunning]
ON [dbo].[ScheduleTaskHistory] (
  [MachineName] ASC,
  [IsRunning] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_ScheduleTaskId]
ON [dbo].[ScheduleTaskHistory] (
  [ScheduleTaskId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Started_Finished]
ON [dbo].[ScheduleTaskHistory] (
  [StartedOnUtc] ASC,
  [FinishedOnUtc] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table ScheduleTaskHistory
-- ----------------------------
ALTER TABLE [dbo].[ScheduleTaskHistory] ADD CONSTRAINT [PK_dbo.ScheduleTaskHistory] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Setting
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Setting]', RESEED, 596)
GO


-- ----------------------------
-- Indexes structure for table Setting
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Setting_Name]
ON [dbo].[Setting] (
  [Name] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Setting_StoreId]
ON [dbo].[Setting] (
  [StoreId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Setting
-- ----------------------------
ALTER TABLE [dbo].[Setting] ADD CONSTRAINT [PK_dbo.Setting] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Shipment
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Shipment]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table Shipment
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_OrderId]
ON [dbo].[Shipment] (
  [OrderId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Shipment
-- ----------------------------
ALTER TABLE [dbo].[Shipment] ADD CONSTRAINT [PK_dbo.Shipment] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ShipmentItem
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ShipmentItem]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table ShipmentItem
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_ShipmentId]
ON [dbo].[ShipmentItem] (
  [ShipmentId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table ShipmentItem
-- ----------------------------
ALTER TABLE [dbo].[ShipmentItem] ADD CONSTRAINT [PK_dbo.ShipmentItem] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ShippingMethod
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ShippingMethod]', RESEED, 3)
GO


-- ----------------------------
-- Primary Key structure for table ShippingMethod
-- ----------------------------
ALTER TABLE [dbo].[ShippingMethod] ADD CONSTRAINT [PK_dbo.ShippingMethod] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ShoppingCartItem
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ShoppingCartItem]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table ShoppingCartItem
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_BundleItemId]
ON [dbo].[ShoppingCartItem] (
  [BundleItemId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_CustomerId]
ON [dbo].[ShoppingCartItem] (
  [CustomerId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_ProductId]
ON [dbo].[ShoppingCartItem] (
  [ProductId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_ShoppingCartItem_ShoppingCartTypeId_CustomerId]
ON [dbo].[ShoppingCartItem] (
  [ShoppingCartTypeId] ASC,
  [CustomerId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table ShoppingCartItem
-- ----------------------------
ALTER TABLE [dbo].[ShoppingCartItem] ADD CONSTRAINT [PK_dbo.ShoppingCartItem] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for SpecificationAttribute
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[SpecificationAttribute]', RESEED, 28)
GO


-- ----------------------------
-- Indexes structure for table SpecificationAttribute
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AllowFiltering]
ON [dbo].[SpecificationAttribute] (
  [AllowFiltering] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table SpecificationAttribute
-- ----------------------------
ALTER TABLE [dbo].[SpecificationAttribute] ADD CONSTRAINT [PK_dbo.SpecificationAttribute] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for SpecificationAttributeOption
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[SpecificationAttributeOption]', RESEED, 151)
GO


-- ----------------------------
-- Indexes structure for table SpecificationAttributeOption
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_SpecificationAttributeId]
ON [dbo].[SpecificationAttributeOption] (
  [SpecificationAttributeId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table SpecificationAttributeOption
-- ----------------------------
ALTER TABLE [dbo].[SpecificationAttributeOption] ADD CONSTRAINT [PK_dbo.SpecificationAttributeOption] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for StateProvince
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[StateProvince]', RESEED, 75)
GO


-- ----------------------------
-- Indexes structure for table StateProvince
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_CountryId]
ON [dbo].[StateProvince] (
  [CountryId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_StateProvince_CountryId]
ON [dbo].[StateProvince] (
  [CountryId] ASC
)
INCLUDE ([DisplayOrder])
GO


-- ----------------------------
-- Primary Key structure for table StateProvince
-- ----------------------------
ALTER TABLE [dbo].[StateProvince] ADD CONSTRAINT [PK_dbo.StateProvince] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Store
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Store]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table Store
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_PrimaryExchangeRateCurrencyId]
ON [dbo].[Store] (
  [PrimaryExchangeRateCurrencyId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_PrimaryStoreCurrencyId]
ON [dbo].[Store] (
  [PrimaryStoreCurrencyId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Store
-- ----------------------------
ALTER TABLE [dbo].[Store] ADD CONSTRAINT [PK_dbo.Store] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for StoreMapping
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[StoreMapping]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table StoreMapping
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_StoreMapping_EntityId_EntityName]
ON [dbo].[StoreMapping] (
  [EntityId] ASC,
  [EntityName] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table StoreMapping
-- ----------------------------
ALTER TABLE [dbo].[StoreMapping] ADD CONSTRAINT [PK_dbo.StoreMapping] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for SyncMapping
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[SyncMapping]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table SyncMapping
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [IX_SyncMapping_ByEntity]
ON [dbo].[SyncMapping] (
  [EntityId] ASC,
  [EntityName] ASC,
  [ContextName] ASC
)
GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_SyncMapping_BySource]
ON [dbo].[SyncMapping] (
  [SourceKey] ASC,
  [EntityName] ASC,
  [ContextName] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table SyncMapping
-- ----------------------------
ALTER TABLE [dbo].[SyncMapping] ADD CONSTRAINT [PK_dbo.SyncMapping] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for TaxCategory
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[TaxCategory]', RESEED, 6)
GO


-- ----------------------------
-- Primary Key structure for table TaxCategory
-- ----------------------------
ALTER TABLE [dbo].[TaxCategory] ADD CONSTRAINT [PK_dbo.TaxCategory] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ThemeVariable
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ThemeVariable]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table ThemeVariable
-- ----------------------------
ALTER TABLE [dbo].[ThemeVariable] ADD CONSTRAINT [PK_dbo.ThemeVariable] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for TierPrice
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[TierPrice]', RESEED, 31)
GO


-- ----------------------------
-- Indexes structure for table TierPrice
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_CustomerRoleId]
ON [dbo].[TierPrice] (
  [CustomerRoleId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_ProductId]
ON [dbo].[TierPrice] (
  [ProductId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_TierPrice_ProductId]
ON [dbo].[TierPrice] (
  [ProductId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table TierPrice
-- ----------------------------
ALTER TABLE [dbo].[TierPrice] ADD CONSTRAINT [PK_dbo.TierPrice] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Topic
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Topic]', RESEED, 12)
GO


-- ----------------------------
-- Primary Key structure for table Topic
-- ----------------------------
ALTER TABLE [dbo].[Topic] ADD CONSTRAINT [PK_dbo.Topic] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for UrlRecord
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[UrlRecord]', RESEED, 132)
GO


-- ----------------------------
-- Indexes structure for table UrlRecord
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [IX_UrlRecord_Slug]
ON [dbo].[UrlRecord] (
  [Slug] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table UrlRecord
-- ----------------------------
ALTER TABLE [dbo].[UrlRecord] ADD CONSTRAINT [PK_dbo.UrlRecord] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for WalletHistory
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[WalletHistory]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table WalletHistory
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_CustomerId]
ON [dbo].[WalletHistory] (
  [CustomerId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_OrderId]
ON [dbo].[WalletHistory] (
  [OrderId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_StoreId_CreatedOn]
ON [dbo].[WalletHistory] (
  [StoreId] ASC,
  [CreatedOnUtc] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table WalletHistory
-- ----------------------------
ALTER TABLE [dbo].[WalletHistory] ADD CONSTRAINT [PK_dbo.WalletHistory] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table AclRecord
-- ----------------------------
ALTER TABLE [dbo].[AclRecord] ADD CONSTRAINT [FK_dbo.AclRecord_dbo.CustomerRole_CustomerRoleId] FOREIGN KEY ([CustomerRoleId]) REFERENCES [dbo].[CustomerRole] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ActivityLog
-- ----------------------------
ALTER TABLE [dbo].[ActivityLog] ADD CONSTRAINT [FK_dbo.ActivityLog_dbo.ActivityLogType_ActivityLogTypeId] FOREIGN KEY ([ActivityLogTypeId]) REFERENCES [dbo].[ActivityLogType] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[ActivityLog] ADD CONSTRAINT [FK_dbo.ActivityLog_dbo.Customer_CustomerId] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Address
-- ----------------------------
ALTER TABLE [dbo].[Address] ADD CONSTRAINT [FK_dbo.Address_dbo.Country_CountryId] FOREIGN KEY ([CountryId]) REFERENCES [dbo].[Country] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Address] ADD CONSTRAINT [FK_dbo.Address_dbo.StateProvince_StateProvinceId] FOREIGN KEY ([StateProvinceId]) REFERENCES [dbo].[StateProvince] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Affiliate
-- ----------------------------
ALTER TABLE [dbo].[Affiliate] ADD CONSTRAINT [FK_dbo.Affiliate_dbo.Address_AddressId] FOREIGN KEY ([AddressId]) REFERENCES [dbo].[Address] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table BackInStockSubscription
-- ----------------------------
ALTER TABLE [dbo].[BackInStockSubscription] ADD CONSTRAINT [FK_dbo.BackInStockSubscription_dbo.Customer_CustomerId] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[BackInStockSubscription] ADD CONSTRAINT [FK_dbo.BackInStockSubscription_dbo.Product_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table BlogComment
-- ----------------------------
ALTER TABLE [dbo].[BlogComment] ADD CONSTRAINT [FK_dbo.BlogComment_dbo.BlogPost_BlogPostId] FOREIGN KEY ([BlogPostId]) REFERENCES [dbo].[BlogPost] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[BlogComment] ADD CONSTRAINT [FK_dbo.BlogComment_dbo.CustomerContent_Id] FOREIGN KEY ([Id]) REFERENCES [dbo].[CustomerContent] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table BlogPost
-- ----------------------------
ALTER TABLE [dbo].[BlogPost] ADD CONSTRAINT [FK_dbo.BlogPost_dbo.MediaFile_MediaFileId] FOREIGN KEY ([MediaFileId]) REFERENCES [dbo].[MediaFile] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[BlogPost] ADD CONSTRAINT [FK_dbo.BlogPost_dbo.MediaFile_PreviewMediaFileId] FOREIGN KEY ([PreviewMediaFileId]) REFERENCES [dbo].[MediaFile] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Category
-- ----------------------------
ALTER TABLE [dbo].[Category] ADD CONSTRAINT [FK_dbo.Category_dbo.Picture_PictureId] FOREIGN KEY ([MediaFileId]) REFERENCES [dbo].[MediaFile] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table CheckoutAttributeValue
-- ----------------------------
ALTER TABLE [dbo].[CheckoutAttributeValue] ADD CONSTRAINT [FK_dbo.CheckoutAttributeValue_dbo.CheckoutAttribute_CheckoutAttributeId] FOREIGN KEY ([CheckoutAttributeId]) REFERENCES [dbo].[CheckoutAttribute] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[CheckoutAttributeValue] ADD CONSTRAINT [FK_dbo.CheckoutAttributeValue_dbo.MediaFile_MediaFileId] FOREIGN KEY ([MediaFileId]) REFERENCES [dbo].[MediaFile] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Country
-- ----------------------------
ALTER TABLE [dbo].[Country] ADD CONSTRAINT [FK_dbo.Country_dbo.Currency_DefaultCurrencyId] FOREIGN KEY ([DefaultCurrencyId]) REFERENCES [dbo].[Currency] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Customer
-- ----------------------------
ALTER TABLE [dbo].[Customer] ADD CONSTRAINT [FK_dbo.Customer_dbo.Address_BillingAddress_Id] FOREIGN KEY ([BillingAddress_Id]) REFERENCES [dbo].[Address] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Customer] ADD CONSTRAINT [FK_dbo.Customer_dbo.Address_ShippingAddress_Id] FOREIGN KEY ([ShippingAddress_Id]) REFERENCES [dbo].[Address] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table CustomerAddresses
-- ----------------------------
ALTER TABLE [dbo].[CustomerAddresses] ADD CONSTRAINT [FK_dbo.CustomerAddresses_dbo.Address_Address_Id] FOREIGN KEY ([Address_Id]) REFERENCES [dbo].[Address] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[CustomerAddresses] ADD CONSTRAINT [FK_dbo.CustomerAddresses_dbo.Customer_Customer_Id] FOREIGN KEY ([Customer_Id]) REFERENCES [dbo].[Customer] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table CustomerContent
-- ----------------------------
ALTER TABLE [dbo].[CustomerContent] ADD CONSTRAINT [FK_dbo.CustomerContent_dbo.Customer_CustomerId] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table CustomerRoleMapping
-- ----------------------------
ALTER TABLE [dbo].[CustomerRoleMapping] ADD CONSTRAINT [FK_dbo.CustomerRoleMapping_dbo.Customer_CustomerId] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[CustomerRoleMapping] ADD CONSTRAINT [FK_dbo.CustomerRoleMapping_dbo.CustomerRole_CustomerRoleId] FOREIGN KEY ([CustomerRoleId]) REFERENCES [dbo].[CustomerRole] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Discount_AppliedToCategories
-- ----------------------------
ALTER TABLE [dbo].[Discount_AppliedToCategories] ADD CONSTRAINT [FK_dbo.Discount_AppliedToCategories_dbo.Category_Category_Id] FOREIGN KEY ([Category_Id]) REFERENCES [dbo].[Category] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Discount_AppliedToCategories] ADD CONSTRAINT [FK_dbo.Discount_AppliedToCategories_dbo.Discount_Discount_Id] FOREIGN KEY ([Discount_Id]) REFERENCES [dbo].[Discount] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Discount_AppliedToManufacturers
-- ----------------------------
ALTER TABLE [dbo].[Discount_AppliedToManufacturers] ADD CONSTRAINT [FK_dbo.Discount_AppliedToManufacturers_dbo.Discount_Discount_Id] FOREIGN KEY ([Discount_Id]) REFERENCES [dbo].[Discount] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Discount_AppliedToManufacturers] ADD CONSTRAINT [FK_dbo.Discount_AppliedToManufacturers_dbo.Manufacturer_Manufacturer_Id] FOREIGN KEY ([Manufacturer_Id]) REFERENCES [dbo].[Manufacturer] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Discount_AppliedToProducts
-- ----------------------------
ALTER TABLE [dbo].[Discount_AppliedToProducts] ADD CONSTRAINT [FK_dbo.Discount_AppliedToProducts_dbo.Discount_Discount_Id] FOREIGN KEY ([Discount_Id]) REFERENCES [dbo].[Discount] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Discount_AppliedToProducts] ADD CONSTRAINT [FK_dbo.Discount_AppliedToProducts_dbo.Product_Product_Id] FOREIGN KEY ([Product_Id]) REFERENCES [dbo].[Product] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table DiscountUsageHistory
-- ----------------------------
ALTER TABLE [dbo].[DiscountUsageHistory] ADD CONSTRAINT [FK_dbo.DiscountUsageHistory_dbo.Discount_DiscountId] FOREIGN KEY ([DiscountId]) REFERENCES [dbo].[Discount] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[DiscountUsageHistory] ADD CONSTRAINT [FK_dbo.DiscountUsageHistory_dbo.Order_OrderId] FOREIGN KEY ([OrderId]) REFERENCES [dbo].[Order] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Download
-- ----------------------------
ALTER TABLE [dbo].[Download] ADD CONSTRAINT [FK_dbo.Download_dbo.MediaFile_MediaFileId] FOREIGN KEY ([MediaFileId]) REFERENCES [dbo].[MediaFile] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Download] ADD CONSTRAINT [FK_dbo.Download_dbo.MediaStorage_MediaStorageId] FOREIGN KEY ([MediaStorageId]) REFERENCES [dbo].[MediaStorage] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ExportDeployment
-- ----------------------------
ALTER TABLE [dbo].[ExportDeployment] ADD CONSTRAINT [FK_dbo.ExportDeployment_dbo.ExportProfile_ProfileId] FOREIGN KEY ([ProfileId]) REFERENCES [dbo].[ExportProfile] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ExportProfile
-- ----------------------------
ALTER TABLE [dbo].[ExportProfile] ADD CONSTRAINT [FK_dbo.ExportProfile_dbo.ScheduleTask_SchedulingTaskId] FOREIGN KEY ([SchedulingTaskId]) REFERENCES [dbo].[ScheduleTask] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ExternalAuthenticationRecord
-- ----------------------------
ALTER TABLE [dbo].[ExternalAuthenticationRecord] ADD CONSTRAINT [FK_dbo.ExternalAuthenticationRecord_dbo.Customer_CustomerId] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ForumPostVote
-- ----------------------------
ALTER TABLE [dbo].[ForumPostVote] ADD CONSTRAINT [FK_dbo.ForumPostVote_dbo.CustomerContent_Id] FOREIGN KEY ([Id]) REFERENCES [dbo].[CustomerContent] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[ForumPostVote] ADD CONSTRAINT [FK_dbo.ForumPostVote_dbo.Forums_Post_ForumPostId] FOREIGN KEY ([ForumPostId]) REFERENCES [dbo].[Forums_Post] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Forums_Forum
-- ----------------------------
ALTER TABLE [dbo].[Forums_Forum] ADD CONSTRAINT [FK_dbo.Forums_Forum_dbo.Forums_Group_ForumGroupId] FOREIGN KEY ([ForumGroupId]) REFERENCES [dbo].[Forums_Group] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Forums_Post
-- ----------------------------
ALTER TABLE [dbo].[Forums_Post] ADD CONSTRAINT [FK_dbo.Forums_Post_dbo.Customer_CustomerId] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Forums_Post] ADD CONSTRAINT [FK_dbo.Forums_Post_dbo.Forums_Topic_TopicId] FOREIGN KEY ([TopicId]) REFERENCES [dbo].[Forums_Topic] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Forums_PrivateMessage
-- ----------------------------
ALTER TABLE [dbo].[Forums_PrivateMessage] ADD CONSTRAINT [FK_dbo.Forums_PrivateMessage_dbo.Customer_FromCustomerId] FOREIGN KEY ([FromCustomerId]) REFERENCES [dbo].[Customer] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Forums_PrivateMessage] ADD CONSTRAINT [FK_dbo.Forums_PrivateMessage_dbo.Customer_ToCustomerId] FOREIGN KEY ([ToCustomerId]) REFERENCES [dbo].[Customer] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Forums_Subscription
-- ----------------------------
ALTER TABLE [dbo].[Forums_Subscription] ADD CONSTRAINT [FK_dbo.Forums_Subscription_dbo.Customer_CustomerId] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Forums_Topic
-- ----------------------------
ALTER TABLE [dbo].[Forums_Topic] ADD CONSTRAINT [FK_dbo.Forums_Topic_dbo.Customer_CustomerId] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Forums_Topic] ADD CONSTRAINT [FK_dbo.Forums_Topic_dbo.Forums_Forum_ForumId] FOREIGN KEY ([ForumId]) REFERENCES [dbo].[Forums_Forum] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table GiftCard
-- ----------------------------
ALTER TABLE [dbo].[GiftCard] ADD CONSTRAINT [FK_dbo.GiftCard_dbo.OrderItem_PurchasedWithOrderItemId] FOREIGN KEY ([PurchasedWithOrderItemId]) REFERENCES [dbo].[OrderItem] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table GiftCardUsageHistory
-- ----------------------------
ALTER TABLE [dbo].[GiftCardUsageHistory] ADD CONSTRAINT [FK_dbo.GiftCardUsageHistory_dbo.GiftCard_GiftCardId] FOREIGN KEY ([GiftCardId]) REFERENCES [dbo].[GiftCard] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[GiftCardUsageHistory] ADD CONSTRAINT [FK_dbo.GiftCardUsageHistory_dbo.Order_UsedWithOrderId] FOREIGN KEY ([UsedWithOrderId]) REFERENCES [dbo].[Order] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ImportProfile
-- ----------------------------
ALTER TABLE [dbo].[ImportProfile] ADD CONSTRAINT [FK_dbo.ImportProfile_dbo.ScheduleTask_SchedulingTaskId] FOREIGN KEY ([SchedulingTaskId]) REFERENCES [dbo].[ScheduleTask] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table LocaleStringResource
-- ----------------------------
ALTER TABLE [dbo].[LocaleStringResource] ADD CONSTRAINT [FK_dbo.LocaleStringResource_dbo.Language_LanguageId] FOREIGN KEY ([LanguageId]) REFERENCES [dbo].[Language] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table LocalizedProperty
-- ----------------------------
ALTER TABLE [dbo].[LocalizedProperty] ADD CONSTRAINT [FK_dbo.LocalizedProperty_dbo.Language_LanguageId] FOREIGN KEY ([LanguageId]) REFERENCES [dbo].[Language] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Log
-- ----------------------------
ALTER TABLE [dbo].[Log] ADD CONSTRAINT [FK_dbo.Log_dbo.Customer_CustomerId] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Manufacturer
-- ----------------------------
ALTER TABLE [dbo].[Manufacturer] ADD CONSTRAINT [FK_dbo.Manufacturer_dbo.Picture_PictureId] FOREIGN KEY ([MediaFileId]) REFERENCES [dbo].[MediaFile] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table MediaFile
-- ----------------------------
ALTER TABLE [dbo].[MediaFile] ADD CONSTRAINT [FK_dbo.MediaFile_dbo.MediaFolder_FolderId] FOREIGN KEY ([FolderId]) REFERENCES [dbo].[MediaFolder] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[MediaFile] ADD CONSTRAINT [FK_dbo.Picture_dbo.MediaStorage_MediaStorageId] FOREIGN KEY ([MediaStorageId]) REFERENCES [dbo].[MediaStorage] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table MediaFile_Tag_Mapping
-- ----------------------------
ALTER TABLE [dbo].[MediaFile_Tag_Mapping] ADD CONSTRAINT [FK_dbo.MediaFile_Tag_Mapping_dbo.MediaFile_MediaFile_Id] FOREIGN KEY ([MediaFile_Id]) REFERENCES [dbo].[MediaFile] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[MediaFile_Tag_Mapping] ADD CONSTRAINT [FK_dbo.MediaFile_Tag_Mapping_dbo.MediaTag_MediaTag_Id] FOREIGN KEY ([MediaTag_Id]) REFERENCES [dbo].[MediaTag] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table MediaFolder
-- ----------------------------
ALTER TABLE [dbo].[MediaFolder] ADD CONSTRAINT [FK_dbo.MediaFolder_dbo.MediaFolder_ParentId] FOREIGN KEY ([ParentId]) REFERENCES [dbo].[MediaFolder] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table MediaTrack
-- ----------------------------
ALTER TABLE [dbo].[MediaTrack] ADD CONSTRAINT [FK_dbo.MediaTrack_dbo.MediaFile_MediaFileId] FOREIGN KEY ([MediaFileId]) REFERENCES [dbo].[MediaFile] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table MenuItemRecord
-- ----------------------------
ALTER TABLE [dbo].[MenuItemRecord] ADD CONSTRAINT [FK_dbo.MenuItemRecord_dbo.MenuRecord_MenuId] FOREIGN KEY ([MenuId]) REFERENCES [dbo].[MenuRecord] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table News
-- ----------------------------
ALTER TABLE [dbo].[News] ADD CONSTRAINT [FK_dbo.News_dbo.MediaFile_MediaFileId] FOREIGN KEY ([MediaFileId]) REFERENCES [dbo].[MediaFile] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[News] ADD CONSTRAINT [FK_dbo.News_dbo.MediaFile_PreviewMediaFileId] FOREIGN KEY ([PreviewMediaFileId]) REFERENCES [dbo].[MediaFile] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table NewsComment
-- ----------------------------
ALTER TABLE [dbo].[NewsComment] ADD CONSTRAINT [FK_dbo.NewsComment_dbo.CustomerContent_Id] FOREIGN KEY ([Id]) REFERENCES [dbo].[CustomerContent] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[NewsComment] ADD CONSTRAINT [FK_dbo.NewsComment_dbo.News_NewsItemId] FOREIGN KEY ([NewsItemId]) REFERENCES [dbo].[News] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Order
-- ----------------------------
ALTER TABLE [dbo].[Order] ADD CONSTRAINT [FK_dbo.Order_dbo.Address_BillingAddressId] FOREIGN KEY ([BillingAddressId]) REFERENCES [dbo].[Address] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Order] ADD CONSTRAINT [FK_dbo.Order_dbo.Address_ShippingAddressId] FOREIGN KEY ([ShippingAddressId]) REFERENCES [dbo].[Address] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Order] ADD CONSTRAINT [FK_dbo.Order_dbo.Customer_CustomerId] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table OrderItem
-- ----------------------------
ALTER TABLE [dbo].[OrderItem] ADD CONSTRAINT [FK_dbo.OrderItem_dbo.Order_OrderId] FOREIGN KEY ([OrderId]) REFERENCES [dbo].[Order] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[OrderItem] ADD CONSTRAINT [FK_dbo.OrderItem_dbo.Product_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table OrderNote
-- ----------------------------
ALTER TABLE [dbo].[OrderNote] ADD CONSTRAINT [FK_dbo.OrderNote_dbo.Order_OrderId] FOREIGN KEY ([OrderId]) REFERENCES [dbo].[Order] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table PermissionRoleMapping
-- ----------------------------
ALTER TABLE [dbo].[PermissionRoleMapping] ADD CONSTRAINT [FK_dbo.PermissionRoleMapping_dbo.CustomerRole_CustomerRoleId] FOREIGN KEY ([CustomerRoleId]) REFERENCES [dbo].[CustomerRole] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[PermissionRoleMapping] ADD CONSTRAINT [FK_dbo.PermissionRoleMapping_dbo.PermissionRecord_PermissionRecordId] FOREIGN KEY ([PermissionRecordId]) REFERENCES [dbo].[PermissionRecord] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Poll
-- ----------------------------
ALTER TABLE [dbo].[Poll] ADD CONSTRAINT [FK_dbo.Poll_dbo.Language_LanguageId] FOREIGN KEY ([LanguageId]) REFERENCES [dbo].[Language] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table PollAnswer
-- ----------------------------
ALTER TABLE [dbo].[PollAnswer] ADD CONSTRAINT [FK_dbo.PollAnswer_dbo.Poll_PollId] FOREIGN KEY ([PollId]) REFERENCES [dbo].[Poll] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table PollVotingRecord
-- ----------------------------
ALTER TABLE [dbo].[PollVotingRecord] ADD CONSTRAINT [FK_dbo.PollVotingRecord_dbo.CustomerContent_Id] FOREIGN KEY ([Id]) REFERENCES [dbo].[CustomerContent] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[PollVotingRecord] ADD CONSTRAINT [FK_dbo.PollVotingRecord_dbo.PollAnswer_PollAnswerId] FOREIGN KEY ([PollAnswerId]) REFERENCES [dbo].[PollAnswer] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Product
-- ----------------------------
ALTER TABLE [dbo].[Product] ADD CONSTRAINT [FK_dbo.Product_dbo.Country_CountryOfOriginId] FOREIGN KEY ([CountryOfOriginId]) REFERENCES [dbo].[Country] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Product] ADD CONSTRAINT [FK_dbo.Product_dbo.DeliveryTime_DeliveryTimeId] FOREIGN KEY ([DeliveryTimeId]) REFERENCES [dbo].[DeliveryTime] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Product] ADD CONSTRAINT [FK_dbo.Product_dbo.Download_SampleDownloadId] FOREIGN KEY ([SampleDownloadId]) REFERENCES [dbo].[Download] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Product] ADD CONSTRAINT [FK_dbo.Product_dbo.QuantityUnit_QuantityUnitId] FOREIGN KEY ([QuantityUnitId]) REFERENCES [dbo].[QuantityUnit] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Product_Category_Mapping
-- ----------------------------
ALTER TABLE [dbo].[Product_Category_Mapping] ADD CONSTRAINT [FK_dbo.Product_Category_Mapping_dbo.Category_CategoryId] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Category] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Product_Category_Mapping] ADD CONSTRAINT [FK_dbo.Product_Category_Mapping_dbo.Product_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Product_Manufacturer_Mapping
-- ----------------------------
ALTER TABLE [dbo].[Product_Manufacturer_Mapping] ADD CONSTRAINT [FK_dbo.Product_Manufacturer_Mapping_dbo.Manufacturer_ManufacturerId] FOREIGN KEY ([ManufacturerId]) REFERENCES [dbo].[Manufacturer] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Product_Manufacturer_Mapping] ADD CONSTRAINT [FK_dbo.Product_Manufacturer_Mapping_dbo.Product_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Product_MediaFile_Mapping
-- ----------------------------
ALTER TABLE [dbo].[Product_MediaFile_Mapping] ADD CONSTRAINT [FK_dbo.Product_Picture_Mapping_dbo.Picture_PictureId] FOREIGN KEY ([MediaFileId]) REFERENCES [dbo].[MediaFile] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Product_MediaFile_Mapping] ADD CONSTRAINT [FK_dbo.Product_Picture_Mapping_dbo.Product_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Product_ProductAttribute_Mapping
-- ----------------------------
ALTER TABLE [dbo].[Product_ProductAttribute_Mapping] ADD CONSTRAINT [FK_dbo.Product_ProductAttribute_Mapping_dbo.Product_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Product_ProductAttribute_Mapping] ADD CONSTRAINT [FK_dbo.Product_ProductAttribute_Mapping_dbo.ProductAttribute_ProductAttributeId] FOREIGN KEY ([ProductAttributeId]) REFERENCES [dbo].[ProductAttribute] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Product_ProductTag_Mapping
-- ----------------------------
ALTER TABLE [dbo].[Product_ProductTag_Mapping] ADD CONSTRAINT [FK_dbo.Product_ProductTag_Mapping_dbo.Product_Product_Id] FOREIGN KEY ([Product_Id]) REFERENCES [dbo].[Product] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Product_ProductTag_Mapping] ADD CONSTRAINT [FK_dbo.Product_ProductTag_Mapping_dbo.ProductTag_ProductTag_Id] FOREIGN KEY ([ProductTag_Id]) REFERENCES [dbo].[ProductTag] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Product_SpecificationAttribute_Mapping
-- ----------------------------
ALTER TABLE [dbo].[Product_SpecificationAttribute_Mapping] ADD CONSTRAINT [FK_dbo.Product_SpecificationAttribute_Mapping_dbo.Product_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Product_SpecificationAttribute_Mapping] ADD CONSTRAINT [FK_dbo.Product_SpecificationAttribute_Mapping_dbo.SpecificationAttributeOption_SpecificationAttributeOptionId] FOREIGN KEY ([SpecificationAttributeOptionId]) REFERENCES [dbo].[SpecificationAttributeOption] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ProductAttributeOption
-- ----------------------------
ALTER TABLE [dbo].[ProductAttributeOption] ADD CONSTRAINT [FK_dbo.ProductAttributeOption_dbo.ProductAttributeOptionsSet_ProductAttributeOptionsSetId] FOREIGN KEY ([ProductAttributeOptionsSetId]) REFERENCES [dbo].[ProductAttributeOptionsSet] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ProductAttributeOptionsSet
-- ----------------------------
ALTER TABLE [dbo].[ProductAttributeOptionsSet] ADD CONSTRAINT [FK_dbo.ProductAttributeOptionsSet_dbo.ProductAttribute_ProductAttributeId] FOREIGN KEY ([ProductAttributeId]) REFERENCES [dbo].[ProductAttribute] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ProductBundleItem
-- ----------------------------
ALTER TABLE [dbo].[ProductBundleItem] ADD CONSTRAINT [FK_dbo.ProductBundleItem_dbo.Product_BundleProductId] FOREIGN KEY ([BundleProductId]) REFERENCES [dbo].[Product] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[ProductBundleItem] ADD CONSTRAINT [FK_dbo.ProductBundleItem_dbo.Product_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ProductBundleItemAttributeFilter
-- ----------------------------
ALTER TABLE [dbo].[ProductBundleItemAttributeFilter] ADD CONSTRAINT [FK_dbo.ProductBundleItemAttributeFilter_dbo.ProductBundleItem_BundleItemId] FOREIGN KEY ([BundleItemId]) REFERENCES [dbo].[ProductBundleItem] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ProductReview
-- ----------------------------
ALTER TABLE [dbo].[ProductReview] ADD CONSTRAINT [FK_dbo.ProductReview_dbo.CustomerContent_Id] FOREIGN KEY ([Id]) REFERENCES [dbo].[CustomerContent] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[ProductReview] ADD CONSTRAINT [FK_dbo.ProductReview_dbo.Product_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ProductReviewHelpfulness
-- ----------------------------
ALTER TABLE [dbo].[ProductReviewHelpfulness] ADD CONSTRAINT [FK_dbo.ProductReviewHelpfulness_dbo.CustomerContent_Id] FOREIGN KEY ([Id]) REFERENCES [dbo].[CustomerContent] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[ProductReviewHelpfulness] ADD CONSTRAINT [FK_dbo.ProductReviewHelpfulness_dbo.ProductReview_ProductReviewId] FOREIGN KEY ([ProductReviewId]) REFERENCES [dbo].[ProductReview] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ProductVariantAttributeCombination
-- ----------------------------
ALTER TABLE [dbo].[ProductVariantAttributeCombination] ADD CONSTRAINT [FK_dbo.ProductVariantAttributeCombination_dbo.DeliveryTime_DeliveryTimeId] FOREIGN KEY ([DeliveryTimeId]) REFERENCES [dbo].[DeliveryTime] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[ProductVariantAttributeCombination] ADD CONSTRAINT [FK_dbo.ProductVariantAttributeCombination_dbo.Product_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[ProductVariantAttributeCombination] ADD CONSTRAINT [FK_dbo.ProductVariantAttributeCombination_dbo.QuantityUnit_QuantityUnitId] FOREIGN KEY ([QuantityUnitId]) REFERENCES [dbo].[QuantityUnit] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ProductVariantAttributeValue
-- ----------------------------
ALTER TABLE [dbo].[ProductVariantAttributeValue] ADD CONSTRAINT [FK_dbo.ProductVariantAttributeValue_dbo.Product_ProductAttribute_Mapping_ProductVariantAttributeId] FOREIGN KEY ([ProductVariantAttributeId]) REFERENCES [dbo].[Product_ProductAttribute_Mapping] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table QueuedEmail
-- ----------------------------
ALTER TABLE [dbo].[QueuedEmail] ADD CONSTRAINT [FK_dbo.QueuedEmail_dbo.EmailAccount_EmailAccountId] FOREIGN KEY ([EmailAccountId]) REFERENCES [dbo].[EmailAccount] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table QueuedEmailAttachment
-- ----------------------------
ALTER TABLE [dbo].[QueuedEmailAttachment] ADD CONSTRAINT [FK_dbo.QueuedEmailAttachment_dbo.Download_FileId] FOREIGN KEY ([FileId]) REFERENCES [dbo].[Download] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[QueuedEmailAttachment] ADD CONSTRAINT [FK_dbo.QueuedEmailAttachment_dbo.MediaFile_MediaFileId] FOREIGN KEY ([MediaFileId]) REFERENCES [dbo].[MediaFile] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[QueuedEmailAttachment] ADD CONSTRAINT [FK_dbo.QueuedEmailAttachment_dbo.MediaStorage_MediaStorageId] FOREIGN KEY ([MediaStorageId]) REFERENCES [dbo].[MediaStorage] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[QueuedEmailAttachment] ADD CONSTRAINT [FK_dbo.QueuedEmailAttachment_dbo.QueuedEmail_QueuedEmailId] FOREIGN KEY ([QueuedEmailId]) REFERENCES [dbo].[QueuedEmail] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table RecurringPayment
-- ----------------------------
ALTER TABLE [dbo].[RecurringPayment] ADD CONSTRAINT [FK_dbo.RecurringPayment_dbo.Order_InitialOrderId] FOREIGN KEY ([InitialOrderId]) REFERENCES [dbo].[Order] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table RecurringPaymentHistory
-- ----------------------------
ALTER TABLE [dbo].[RecurringPaymentHistory] ADD CONSTRAINT [FK_dbo.RecurringPaymentHistory_dbo.RecurringPayment_RecurringPaymentId] FOREIGN KEY ([RecurringPaymentId]) REFERENCES [dbo].[RecurringPayment] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ReturnRequest
-- ----------------------------
ALTER TABLE [dbo].[ReturnRequest] ADD CONSTRAINT [FK_dbo.ReturnRequest_dbo.Customer_CustomerId] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table RewardPointsHistory
-- ----------------------------
ALTER TABLE [dbo].[RewardPointsHistory] ADD CONSTRAINT [FK_dbo.RewardPointsHistory_dbo.Customer_CustomerId] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[RewardPointsHistory] ADD CONSTRAINT [FK_dbo.RewardPointsHistory_dbo.Order_UsedWithOrder_Id] FOREIGN KEY ([UsedWithOrder_Id]) REFERENCES [dbo].[Order] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Rule
-- ----------------------------
ALTER TABLE [dbo].[Rule] ADD CONSTRAINT [FK_dbo.Rule_dbo.RuleSet_RuleSetId] FOREIGN KEY ([RuleSetId]) REFERENCES [dbo].[RuleSet] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table RuleSet_Category_Mapping
-- ----------------------------
ALTER TABLE [dbo].[RuleSet_Category_Mapping] ADD CONSTRAINT [FK_dbo.RuleSet_Category_Mapping_dbo.Category_Category_Id] FOREIGN KEY ([Category_Id]) REFERENCES [dbo].[Category] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[RuleSet_Category_Mapping] ADD CONSTRAINT [FK_dbo.RuleSet_Category_Mapping_dbo.RuleSet_RuleSetEntity_Id] FOREIGN KEY ([RuleSetEntity_Id]) REFERENCES [dbo].[RuleSet] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table RuleSet_CustomerRole_Mapping
-- ----------------------------
ALTER TABLE [dbo].[RuleSet_CustomerRole_Mapping] ADD CONSTRAINT [FK_dbo.RuleSet_CustomerRole_Mapping_dbo.CustomerRole_CustomerRole_Id] FOREIGN KEY ([CustomerRole_Id]) REFERENCES [dbo].[CustomerRole] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[RuleSet_CustomerRole_Mapping] ADD CONSTRAINT [FK_dbo.RuleSet_CustomerRole_Mapping_dbo.RuleSet_RuleSetEntity_Id] FOREIGN KEY ([RuleSetEntity_Id]) REFERENCES [dbo].[RuleSet] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table RuleSet_Discount_Mapping
-- ----------------------------
ALTER TABLE [dbo].[RuleSet_Discount_Mapping] ADD CONSTRAINT [FK_dbo.RuleSet_Discount_Mapping_dbo.Discount_Discount_Id] FOREIGN KEY ([Discount_Id]) REFERENCES [dbo].[Discount] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[RuleSet_Discount_Mapping] ADD CONSTRAINT [FK_dbo.RuleSet_Discount_Mapping_dbo.RuleSet_RuleSetEntity_Id] FOREIGN KEY ([RuleSetEntity_Id]) REFERENCES [dbo].[RuleSet] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table RuleSet_PaymentMethod_Mapping
-- ----------------------------
ALTER TABLE [dbo].[RuleSet_PaymentMethod_Mapping] ADD CONSTRAINT [FK_dbo.RuleSet_PaymentMethod_Mapping_dbo.PaymentMethod_PaymentMethod_Id] FOREIGN KEY ([PaymentMethod_Id]) REFERENCES [dbo].[PaymentMethod] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[RuleSet_PaymentMethod_Mapping] ADD CONSTRAINT [FK_dbo.RuleSet_PaymentMethod_Mapping_dbo.RuleSet_RuleSetEntity_Id] FOREIGN KEY ([RuleSetEntity_Id]) REFERENCES [dbo].[RuleSet] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table RuleSet_ShippingMethod_Mapping
-- ----------------------------
ALTER TABLE [dbo].[RuleSet_ShippingMethod_Mapping] ADD CONSTRAINT [FK_dbo.RuleSet_ShippingMethod_Mapping_dbo.RuleSet_RuleSetEntity_Id] FOREIGN KEY ([RuleSetEntity_Id]) REFERENCES [dbo].[RuleSet] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[RuleSet_ShippingMethod_Mapping] ADD CONSTRAINT [FK_dbo.RuleSet_ShippingMethod_Mapping_dbo.ShippingMethod_ShippingMethod_Id] FOREIGN KEY ([ShippingMethod_Id]) REFERENCES [dbo].[ShippingMethod] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ScheduleTaskHistory
-- ----------------------------
ALTER TABLE [dbo].[ScheduleTaskHistory] ADD CONSTRAINT [FK_dbo.ScheduleTaskHistory_dbo.ScheduleTask_ScheduleTaskId] FOREIGN KEY ([ScheduleTaskId]) REFERENCES [dbo].[ScheduleTask] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Shipment
-- ----------------------------
ALTER TABLE [dbo].[Shipment] ADD CONSTRAINT [FK_dbo.Shipment_dbo.Order_OrderId] FOREIGN KEY ([OrderId]) REFERENCES [dbo].[Order] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ShipmentItem
-- ----------------------------
ALTER TABLE [dbo].[ShipmentItem] ADD CONSTRAINT [FK_dbo.ShipmentItem_dbo.Shipment_ShipmentId] FOREIGN KEY ([ShipmentId]) REFERENCES [dbo].[Shipment] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ShoppingCartItem
-- ----------------------------
ALTER TABLE [dbo].[ShoppingCartItem] ADD CONSTRAINT [FK_dbo.ShoppingCartItem_dbo.Customer_CustomerId] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[ShoppingCartItem] ADD CONSTRAINT [FK_dbo.ShoppingCartItem_dbo.Product_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[ShoppingCartItem] ADD CONSTRAINT [FK_dbo.ShoppingCartItem_dbo.ProductBundleItem_BundleItemId] FOREIGN KEY ([BundleItemId]) REFERENCES [dbo].[ProductBundleItem] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table SpecificationAttributeOption
-- ----------------------------
ALTER TABLE [dbo].[SpecificationAttributeOption] ADD CONSTRAINT [FK_dbo.SpecificationAttributeOption_dbo.SpecificationAttribute_SpecificationAttributeId] FOREIGN KEY ([SpecificationAttributeId]) REFERENCES [dbo].[SpecificationAttribute] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table StateProvince
-- ----------------------------
ALTER TABLE [dbo].[StateProvince] ADD CONSTRAINT [FK_dbo.StateProvince_dbo.Country_CountryId] FOREIGN KEY ([CountryId]) REFERENCES [dbo].[Country] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Store
-- ----------------------------
ALTER TABLE [dbo].[Store] ADD CONSTRAINT [FK_dbo.Store_dbo.Currency_PrimaryExchangeRateCurrencyId] FOREIGN KEY ([PrimaryExchangeRateCurrencyId]) REFERENCES [dbo].[Currency] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Store] ADD CONSTRAINT [FK_dbo.Store_dbo.Currency_PrimaryStoreCurrencyId] FOREIGN KEY ([PrimaryStoreCurrencyId]) REFERENCES [dbo].[Currency] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table TierPrice
-- ----------------------------
ALTER TABLE [dbo].[TierPrice] ADD CONSTRAINT [FK_dbo.TierPrice_dbo.CustomerRole_CustomerRoleId] FOREIGN KEY ([CustomerRoleId]) REFERENCES [dbo].[CustomerRole] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[TierPrice] ADD CONSTRAINT [FK_dbo.TierPrice_dbo.Product_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table WalletHistory
-- ----------------------------
ALTER TABLE [dbo].[WalletHistory] ADD CONSTRAINT [FK_dbo.WalletHistory_dbo.Customer_CustomerId] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[WalletHistory] ADD CONSTRAINT [FK_dbo.WalletHistory_dbo.Order_OrderId] FOREIGN KEY ([OrderId]) REFERENCES [dbo].[Order] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

