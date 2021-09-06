/*
 Navicat Premium Data Transfer

 Source Server         : nopCommerce
 Source Server Type    : SQL Server
 Source Server Version : 15004073
 Source Host           : localhost:1433
 Source Catalog        : nopcommerce
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 15004073
 File Encoding         : 65001

 Date: 27/11/2020 17:35:51
*/


-- ----------------------------
-- Table structure for AclRecord
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AclRecord]') AND type IN ('U'))
	DROP TABLE [dbo].[AclRecord]
GO

CREATE TABLE [dbo].[AclRecord] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [EntityName] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [CustomerRoleId] int  NOT NULL,
  [EntityId] int  NOT NULL
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
  [Comment] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [IpAddress] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [EntityName] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ActivityLogTypeId] int  NOT NULL,
  [CustomerId] int  NOT NULL,
  [EntityId] int  NULL,
  [CreatedOnUtc] datetime2(7)  NOT NULL
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
  [CountryId] int  NULL,
  [StateProvinceId] int  NULL,
  [FirstName] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LastName] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Email] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Company] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [County] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [City] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Address1] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Address2] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ZipPostalCode] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PhoneNumber] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FaxNumber] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CustomAttributes] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CreatedOnUtc] datetime2(7)  NOT NULL
)
GO

ALTER TABLE [dbo].[Address] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for AddressAttribute
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AddressAttribute]') AND type IN ('U'))
	DROP TABLE [dbo].[AddressAttribute]
GO

CREATE TABLE [dbo].[AddressAttribute] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [IsRequired] bit  NOT NULL,
  [AttributeControlTypeId] int  NOT NULL,
  [DisplayOrder] int  NOT NULL
)
GO

ALTER TABLE [dbo].[AddressAttribute] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for AddressAttributeValue
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AddressAttributeValue]') AND type IN ('U'))
	DROP TABLE [dbo].[AddressAttributeValue]
GO

CREATE TABLE [dbo].[AddressAttributeValue] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [AddressAttributeId] int  NOT NULL,
  [IsPreSelected] bit  NOT NULL,
  [DisplayOrder] int  NOT NULL
)
GO

ALTER TABLE [dbo].[AddressAttributeValue] SET (LOCK_ESCALATION = TABLE)
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
  [AdminComment] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FriendlyUrlName] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
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
  [CustomerId] int  NOT NULL,
  [ProductId] int  NOT NULL,
  [StoreId] int  NOT NULL,
  [CreatedOnUtc] datetime2(7)  NOT NULL
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
  [Id] int  IDENTITY(1,1) NOT NULL,
  [StoreId] int  NOT NULL,
  [CustomerId] int  NOT NULL,
  [BlogPostId] int  NOT NULL,
  [CommentText] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [IsApproved] bit  NOT NULL,
  [CreatedOnUtc] datetime2(7)  NOT NULL
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
  [Title] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Body] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [MetaKeywords] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MetaTitle] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LanguageId] int  NOT NULL,
  [IncludeInSitemap] bit  NOT NULL,
  [BodyOverview] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AllowComments] bit  NOT NULL,
  [Tags] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [StartDateUtc] datetime2(7)  NULL,
  [EndDateUtc] datetime2(7)  NULL,
  [MetaDescription] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LimitedToStores] bit  NOT NULL,
  [CreatedOnUtc] datetime2(7)  NOT NULL
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
  [Name] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Subject] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Body] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [StoreId] int  NOT NULL,
  [CustomerRoleId] int  NOT NULL,
  [CreatedOnUtc] datetime2(7)  NOT NULL,
  [DontSendBeforeDateUtc] datetime2(7)  NULL
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
  [MetaKeywords] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MetaTitle] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PriceRanges] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PageSizeOptions] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Description] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CategoryTemplateId] int  NOT NULL,
  [MetaDescription] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ParentCategoryId] int  NOT NULL,
  [PictureId] int  NOT NULL,
  [PageSize] int  NOT NULL,
  [AllowCustomersToSelectPageSize] bit  NOT NULL,
  [ShowOnHomepage] bit  NOT NULL,
  [IncludeInTopMenu] bit  NOT NULL,
  [SubjectToAcl] bit  NOT NULL,
  [LimitedToStores] bit  NOT NULL,
  [Published] bit  NOT NULL,
  [Deleted] bit  NOT NULL,
  [DisplayOrder] int  NOT NULL,
  [CreatedOnUtc] datetime2(7)  NOT NULL,
  [UpdatedOnUtc] datetime2(7)  NOT NULL
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
  [TextPrompt] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [IsRequired] bit  NOT NULL,
  [ShippableProductRequired] bit  NOT NULL,
  [IsTaxExempt] bit  NOT NULL,
  [TaxCategoryId] int  NOT NULL,
  [AttributeControlTypeId] int  NOT NULL,
  [DisplayOrder] int  NOT NULL,
  [LimitedToStores] bit  NOT NULL,
  [ValidationMinLength] int  NULL,
  [ValidationMaxLength] int  NULL,
  [ValidationFileAllowedExtensions] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ValidationFileMaximumSize] int  NULL,
  [DefaultValue] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ConditionAttributeXml] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
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
  [Name] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ColorSquaresRgb] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CheckoutAttributeId] int  NOT NULL,
  [PriceAdjustment] decimal(18,4)  NOT NULL,
  [WeightAdjustment] decimal(18,4)  NOT NULL,
  [IsPreSelected] bit  NOT NULL,
  [DisplayOrder] int  NOT NULL
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
  [TwoLetterIsoCode] nvarchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ThreeLetterIsoCode] nvarchar(3) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AllowsBilling] bit  NOT NULL,
  [AllowsShipping] bit  NOT NULL,
  [NumericIsoCode] int  NOT NULL,
  [SubjectToVat] bit  NOT NULL,
  [Published] bit  NOT NULL,
  [DisplayOrder] int  NOT NULL,
  [LimitedToStores] bit  NOT NULL
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
  [DisplayLocale] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CustomFormatting] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Rate] decimal(18,4)  NOT NULL,
  [LimitedToStores] bit  NOT NULL,
  [Published] bit  NOT NULL,
  [DisplayOrder] int  NOT NULL,
  [CreatedOnUtc] datetime2(7)  NOT NULL,
  [UpdatedOnUtc] datetime2(7)  NOT NULL,
  [RoundingTypeId] int  NOT NULL
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
  [Username] nvarchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Email] nvarchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [EmailToRevalidate] nvarchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SystemName] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [BillingAddress_Id] int  NULL,
  [ShippingAddress_Id] int  NULL,
  [CustomerGuid] uniqueidentifier  NOT NULL,
  [AdminComment] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [IsTaxExempt] bit  NOT NULL,
  [AffiliateId] int  NOT NULL,
  [VendorId] int  NOT NULL,
  [HasShoppingCartItems] bit  NOT NULL,
  [RequireReLogin] bit  NOT NULL,
  [FailedLoginAttempts] int  NOT NULL,
  [CannotLoginUntilDateUtc] datetime2(7)  NULL,
  [Active] bit  NOT NULL,
  [Deleted] bit  NOT NULL,
  [IsSystemAccount] bit  NOT NULL,
  [LastIpAddress] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CreatedOnUtc] datetime2(7)  NOT NULL,
  [LastLoginDateUtc] datetime2(7)  NULL,
  [LastActivityDateUtc] datetime2(7)  NOT NULL,
  [RegisteredInStoreId] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Customer] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Customer_CustomerRole_Mapping
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer_CustomerRole_Mapping]') AND type IN ('U'))
	DROP TABLE [dbo].[Customer_CustomerRole_Mapping]
GO

CREATE TABLE [dbo].[Customer_CustomerRole_Mapping] (
  [Customer_Id] int  NOT NULL,
  [CustomerRole_Id] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Customer_CustomerRole_Mapping] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for CustomerAddresses
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[CustomerAddresses]') AND type IN ('U'))
	DROP TABLE [dbo].[CustomerAddresses]
GO

CREATE TABLE [dbo].[CustomerAddresses] (
  [Address_Id] int  NOT NULL,
  [Customer_Id] int  NOT NULL
)
GO

ALTER TABLE [dbo].[CustomerAddresses] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for CustomerAttribute
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[CustomerAttribute]') AND type IN ('U'))
	DROP TABLE [dbo].[CustomerAttribute]
GO

CREATE TABLE [dbo].[CustomerAttribute] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [IsRequired] bit  NOT NULL,
  [AttributeControlTypeId] int  NOT NULL,
  [DisplayOrder] int  NOT NULL
)
GO

ALTER TABLE [dbo].[CustomerAttribute] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for CustomerAttributeValue
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[CustomerAttributeValue]') AND type IN ('U'))
	DROP TABLE [dbo].[CustomerAttributeValue]
GO

CREATE TABLE [dbo].[CustomerAttributeValue] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [CustomerAttributeId] int  NOT NULL,
  [IsPreSelected] bit  NOT NULL,
  [DisplayOrder] int  NOT NULL
)
GO

ALTER TABLE [dbo].[CustomerAttributeValue] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for CustomerPassword
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[CustomerPassword]') AND type IN ('U'))
	DROP TABLE [dbo].[CustomerPassword]
GO

CREATE TABLE [dbo].[CustomerPassword] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [CustomerId] int  NOT NULL,
  [Password] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PasswordFormatId] int  NOT NULL,
  [PasswordSalt] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CreatedOnUtc] datetime2(7)  NOT NULL
)
GO

ALTER TABLE [dbo].[CustomerPassword] SET (LOCK_ESCALATION = TABLE)
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
  [SystemName] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FreeShipping] bit  NOT NULL,
  [TaxExempt] bit  NOT NULL,
  [Active] bit  NOT NULL,
  [IsSystemRole] bit  NOT NULL,
  [EnablePasswordLifetime] bit  NOT NULL,
  [OverrideTaxDisplayType] bit  NOT NULL,
  [DefaultTaxDisplayTypeId] int  NOT NULL,
  [PurchasedWithProductId] int  NOT NULL
)
GO

ALTER TABLE [dbo].[CustomerRole] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for DeliveryDate
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[DeliveryDate]') AND type IN ('U'))
	DROP TABLE [dbo].[DeliveryDate]
GO

CREATE TABLE [dbo].[DeliveryDate] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [DisplayOrder] int  NOT NULL
)
GO

ALTER TABLE [dbo].[DeliveryDate] SET (LOCK_ESCALATION = TABLE)
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
  [CouponCode] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AdminComment] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DiscountTypeId] int  NOT NULL,
  [UsePercentage] bit  NOT NULL,
  [DiscountPercentage] decimal(18,4)  NOT NULL,
  [DiscountAmount] decimal(18,4)  NOT NULL,
  [MaximumDiscountAmount] decimal(18,4)  NULL,
  [StartDateUtc] datetime2(7)  NULL,
  [EndDateUtc] datetime2(7)  NULL,
  [RequiresCouponCode] bit  NOT NULL,
  [IsCumulative] bit  NOT NULL,
  [DiscountLimitationId] int  NOT NULL,
  [LimitationTimes] int  NOT NULL,
  [MaximumDiscountedQuantity] int  NULL,
  [AppliedToSubCategories] bit  NOT NULL
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
-- Table structure for DiscountRequirement
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[DiscountRequirement]') AND type IN ('U'))
	DROP TABLE [dbo].[DiscountRequirement]
GO

CREATE TABLE [dbo].[DiscountRequirement] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [DiscountId] int  NOT NULL,
  [ParentId] int  NULL,
  [DiscountRequirementRuleSystemName] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [InteractionTypeId] int  NULL,
  [IsGroup] bit  NOT NULL
)
GO

ALTER TABLE [dbo].[DiscountRequirement] SET (LOCK_ESCALATION = TABLE)
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
  [CreatedOnUtc] datetime2(7)  NOT NULL
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
  [DownloadUrl] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DownloadBinary] varbinary(max)  NULL,
  [ContentType] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Filename] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Extension] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [IsNew] bit  NOT NULL
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
  [DisplayName] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Email] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Host] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Username] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Password] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Port] int  NOT NULL,
  [EnableSsl] bit  NOT NULL,
  [UseDefaultCredentials] bit  NOT NULL
)
GO

ALTER TABLE [dbo].[EmailAccount] SET (LOCK_ESCALATION = TABLE)
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
  [Email] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ExternalIdentifier] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ExternalDisplayIdentifier] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [OAuthToken] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [OAuthAccessToken] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ProviderSystemName] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[ExternalAuthenticationRecord] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for FacebookPixelConfiguration
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[FacebookPixelConfiguration]') AND type IN ('U'))
	DROP TABLE [dbo].[FacebookPixelConfiguration]
GO

CREATE TABLE [dbo].[FacebookPixelConfiguration] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [PixelId] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Enabled] bit  NOT NULL,
  [DisableForUsersNotAcceptingCookieConsent] bit  NOT NULL,
  [StoreId] int  NOT NULL,
  [PassUserProperties] bit  NOT NULL,
  [UseAdvancedMatching] bit  NOT NULL,
  [TrackPageView] bit  NOT NULL,
  [TrackAddToCart] bit  NOT NULL,
  [TrackPurchase] bit  NOT NULL,
  [TrackViewContent] bit  NOT NULL,
  [TrackAddToWishlist] bit  NOT NULL,
  [TrackInitiateCheckout] bit  NOT NULL,
  [TrackSearch] bit  NOT NULL,
  [TrackContact] bit  NOT NULL,
  [TrackCompleteRegistration] bit  NOT NULL,
  [CustomEvents] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[FacebookPixelConfiguration] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Forums_Forum
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Forums_Forum]') AND type IN ('U'))
	DROP TABLE [dbo].[Forums_Forum]
GO

CREATE TABLE [dbo].[Forums_Forum] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ForumGroupId] int  NOT NULL,
  [Description] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NumTopics] int  NOT NULL,
  [NumPosts] int  NOT NULL,
  [LastTopicId] int  NOT NULL,
  [LastPostId] int  NOT NULL,
  [LastPostCustomerId] int  NOT NULL,
  [LastPostTime] datetime2(7)  NULL,
  [DisplayOrder] int  NOT NULL,
  [CreatedOnUtc] datetime2(7)  NOT NULL,
  [UpdatedOnUtc] datetime2(7)  NOT NULL
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
  [DisplayOrder] int  NOT NULL,
  [CreatedOnUtc] datetime2(7)  NOT NULL,
  [UpdatedOnUtc] datetime2(7)  NOT NULL
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
  [Text] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [IPAddress] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CustomerId] int  NOT NULL,
  [TopicId] int  NOT NULL,
  [CreatedOnUtc] datetime2(7)  NOT NULL,
  [UpdatedOnUtc] datetime2(7)  NOT NULL,
  [VoteCount] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Forums_Post] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Forums_PostVote
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Forums_PostVote]') AND type IN ('U'))
	DROP TABLE [dbo].[Forums_PostVote]
GO

CREATE TABLE [dbo].[Forums_PostVote] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [ForumPostId] int  NOT NULL,
  [CustomerId] int  NOT NULL,
  [IsUp] bit  NOT NULL,
  [CreatedOnUtc] datetime2(7)  NOT NULL
)
GO

ALTER TABLE [dbo].[Forums_PostVote] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Forums_PrivateMessage
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Forums_PrivateMessage]') AND type IN ('U'))
	DROP TABLE [dbo].[Forums_PrivateMessage]
GO

CREATE TABLE [dbo].[Forums_PrivateMessage] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Subject] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Text] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [FromCustomerId] int  NOT NULL,
  [ToCustomerId] int  NOT NULL,
  [StoreId] int  NOT NULL,
  [IsRead] bit  NOT NULL,
  [IsDeletedByAuthor] bit  NOT NULL,
  [IsDeletedByRecipient] bit  NOT NULL,
  [CreatedOnUtc] datetime2(7)  NOT NULL
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
  [CustomerId] int  NOT NULL,
  [SubscriptionGuid] uniqueidentifier  NOT NULL,
  [ForumId] int  NOT NULL,
  [TopicId] int  NOT NULL,
  [CreatedOnUtc] datetime2(7)  NOT NULL
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
  [Subject] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [CustomerId] int  NOT NULL,
  [ForumId] int  NOT NULL,
  [TopicTypeId] int  NOT NULL,
  [NumPosts] int  NOT NULL,
  [Views] int  NOT NULL,
  [LastPostId] int  NOT NULL,
  [LastPostCustomerId] int  NOT NULL,
  [LastPostTime] datetime2(7)  NULL,
  [CreatedOnUtc] datetime2(7)  NOT NULL,
  [UpdatedOnUtc] datetime2(7)  NOT NULL
)
GO

ALTER TABLE [dbo].[Forums_Topic] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for GdprConsent
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[GdprConsent]') AND type IN ('U'))
	DROP TABLE [dbo].[GdprConsent]
GO

CREATE TABLE [dbo].[GdprConsent] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Message] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [IsRequired] bit  NOT NULL,
  [RequiredMessage] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DisplayDuringRegistration] bit  NOT NULL,
  [DisplayOnCustomerInfoPage] bit  NOT NULL,
  [DisplayOrder] int  NOT NULL
)
GO

ALTER TABLE [dbo].[GdprConsent] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for GdprLog
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[GdprLog]') AND type IN ('U'))
	DROP TABLE [dbo].[GdprLog]
GO

CREATE TABLE [dbo].[GdprLog] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [CustomerId] int  NOT NULL,
  [ConsentId] int  NOT NULL,
  [CustomerInfo] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [RequestTypeId] int  NOT NULL,
  [RequestDetails] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CreatedOnUtc] datetime2(7)  NOT NULL
)
GO

ALTER TABLE [dbo].[GdprLog] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for GenericAttribute
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[GenericAttribute]') AND type IN ('U'))
	DROP TABLE [dbo].[GenericAttribute]
GO

CREATE TABLE [dbo].[GenericAttribute] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [KeyGroup] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Key] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Value] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [EntityId] int  NOT NULL,
  [StoreId] int  NOT NULL,
  [CreatedOrUpdatedDateUTC] datetime2(7)  NULL
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
  [GiftCardCouponCode] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [RecipientName] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [RecipientEmail] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SenderName] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SenderEmail] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Message] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [IsRecipientNotified] bit  NOT NULL,
  [CreatedOnUtc] datetime2(7)  NOT NULL
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
  [CreatedOnUtc] datetime2(7)  NOT NULL
)
GO

ALTER TABLE [dbo].[GiftCardUsageHistory] SET (LOCK_ESCALATION = TABLE)
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
  [DefaultCurrencyId] int  NOT NULL,
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
  [ResourceName] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ResourceValue] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [LanguageId] int  NOT NULL
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
  [LocaleKeyGroup] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [LocaleKey] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [LocaleValue] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [LanguageId] int  NOT NULL,
  [EntityId] int  NOT NULL
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
  [ShortMessage] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [IpAddress] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CustomerId] int  NULL,
  [LogLevelId] int  NOT NULL,
  [FullMessage] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PageUrl] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ReferrerUrl] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CreatedOnUtc] datetime2(7)  NOT NULL
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
  [MetaKeywords] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MetaTitle] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PriceRanges] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PageSizeOptions] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Description] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ManufacturerTemplateId] int  NOT NULL,
  [MetaDescription] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PictureId] int  NOT NULL,
  [PageSize] int  NOT NULL,
  [AllowCustomersToSelectPageSize] bit  NOT NULL,
  [SubjectToAcl] bit  NOT NULL,
  [LimitedToStores] bit  NOT NULL,
  [Published] bit  NOT NULL,
  [Deleted] bit  NOT NULL,
  [DisplayOrder] int  NOT NULL,
  [CreatedOnUtc] datetime2(7)  NOT NULL,
  [UpdatedOnUtc] datetime2(7)  NOT NULL
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
  [EmailAccountId] int  NOT NULL,
  [Body] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [IsActive] bit  NOT NULL,
  [DelayBeforeSend] int  NULL,
  [DelayPeriodId] int  NOT NULL,
  [AttachedDownloadId] int  NOT NULL,
  [LimitedToStores] bit  NOT NULL
)
GO

ALTER TABLE [dbo].[MessageTemplate] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for MigrationVersionInfo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MigrationVersionInfo]') AND type IN ('U'))
	DROP TABLE [dbo].[MigrationVersionInfo]
GO

CREATE TABLE [dbo].[MigrationVersionInfo] (
  [AppliedOn] datetime  NULL,
  [Description] nvarchar(1024) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Version] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[MigrationVersionInfo] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for News
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[News]') AND type IN ('U'))
	DROP TABLE [dbo].[News]
GO

CREATE TABLE [dbo].[News] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Title] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Short] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Full] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [MetaKeywords] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MetaTitle] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LanguageId] int  NOT NULL,
  [Published] bit  NOT NULL,
  [StartDateUtc] datetime2(7)  NULL,
  [EndDateUtc] datetime2(7)  NULL,
  [AllowComments] bit  NOT NULL,
  [LimitedToStores] bit  NOT NULL,
  [MetaDescription] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CreatedOnUtc] datetime2(7)  NOT NULL
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
  [Id] int  IDENTITY(1,1) NOT NULL,
  [CustomerId] int  NOT NULL,
  [NewsItemId] int  NOT NULL,
  [StoreId] int  NOT NULL,
  [CommentTitle] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CommentText] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [IsApproved] bit  NOT NULL,
  [CreatedOnUtc] datetime2(7)  NOT NULL
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
  [Email] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [NewsLetterSubscriptionGuid] uniqueidentifier  NOT NULL,
  [Active] bit  NOT NULL,
  [StoreId] int  NOT NULL,
  [CreatedOnUtc] datetime2(7)  NOT NULL
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
  [CustomOrderNumber] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [BillingAddressId] int  NOT NULL,
  [CustomerId] int  NOT NULL,
  [PickupAddressId] int  NULL,
  [ShippingAddressId] int  NULL,
  [OrderGuid] uniqueidentifier  NOT NULL,
  [StoreId] int  NOT NULL,
  [PickupInStore] bit  NOT NULL,
  [OrderStatusId] int  NOT NULL,
  [ShippingStatusId] int  NOT NULL,
  [PaymentStatusId] int  NOT NULL,
  [PaymentMethodSystemName] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CustomerCurrencyCode] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CurrencyRate] decimal(18,4)  NOT NULL,
  [CustomerTaxDisplayTypeId] int  NOT NULL,
  [VatNumber] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [OrderSubtotalInclTax] decimal(18,4)  NOT NULL,
  [OrderSubtotalExclTax] decimal(18,4)  NOT NULL,
  [OrderSubTotalDiscountInclTax] decimal(18,4)  NOT NULL,
  [OrderSubTotalDiscountExclTax] decimal(18,4)  NOT NULL,
  [OrderShippingInclTax] decimal(18,4)  NOT NULL,
  [OrderShippingExclTax] decimal(18,4)  NOT NULL,
  [PaymentMethodAdditionalFeeInclTax] decimal(18,4)  NOT NULL,
  [PaymentMethodAdditionalFeeExclTax] decimal(18,4)  NOT NULL,
  [TaxRates] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [OrderTax] decimal(18,4)  NOT NULL,
  [OrderDiscount] decimal(18,4)  NOT NULL,
  [OrderTotal] decimal(18,4)  NOT NULL,
  [RefundedAmount] decimal(18,4)  NOT NULL,
  [RewardPointsHistoryEntryId] int  NULL,
  [CheckoutAttributeDescription] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CheckoutAttributesXml] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CustomerLanguageId] int  NOT NULL,
  [AffiliateId] int  NOT NULL,
  [CustomerIp] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AllowStoringCreditCardNumber] bit  NOT NULL,
  [CardType] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CardName] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CardNumber] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MaskedCreditCardNumber] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CardCvv2] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CardExpirationMonth] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CardExpirationYear] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AuthorizationTransactionId] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AuthorizationTransactionCode] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AuthorizationTransactionResult] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CaptureTransactionId] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CaptureTransactionResult] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SubscriptionTransactionId] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PaidDateUtc] datetime2(7)  NULL,
  [ShippingMethod] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ShippingRateComputationMethodSystemName] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CustomValuesXml] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Deleted] bit  NOT NULL,
  [CreatedOnUtc] datetime2(7)  NOT NULL,
  [RedeemedRewardPointsEntryId] int  NULL
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
  [OrderId] int  NOT NULL,
  [ProductId] int  NOT NULL,
  [OrderItemGuid] uniqueidentifier  NOT NULL,
  [Quantity] int  NOT NULL,
  [UnitPriceInclTax] decimal(18,4)  NOT NULL,
  [UnitPriceExclTax] decimal(18,4)  NOT NULL,
  [PriceInclTax] decimal(18,4)  NOT NULL,
  [PriceExclTax] decimal(18,4)  NOT NULL,
  [DiscountAmountInclTax] decimal(18,4)  NOT NULL,
  [DiscountAmountExclTax] decimal(18,4)  NOT NULL,
  [OriginalProductCost] decimal(18,4)  NOT NULL,
  [AttributeDescription] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AttributesXml] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DownloadCount] int  NOT NULL,
  [IsDownloadActivated] bit  NOT NULL,
  [LicenseDownloadId] int  NULL,
  [ItemWeight] decimal(18,4)  NULL,
  [RentalStartDateUtc] datetime2(7)  NULL,
  [RentalEndDateUtc] datetime2(7)  NULL
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
  [Note] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [OrderId] int  NOT NULL,
  [DownloadId] int  NOT NULL,
  [DisplayToCustomer] bit  NOT NULL,
  [CreatedOnUtc] datetime2(7)  NOT NULL
)
GO

ALTER TABLE [dbo].[OrderNote] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for PermissionRecord
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[PermissionRecord]') AND type IN ('U'))
	DROP TABLE [dbo].[PermissionRecord]
GO

CREATE TABLE [dbo].[PermissionRecord] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [SystemName] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Category] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[PermissionRecord] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for PermissionRecord_Role_Mapping
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[PermissionRecord_Role_Mapping]') AND type IN ('U'))
	DROP TABLE [dbo].[PermissionRecord_Role_Mapping]
GO

CREATE TABLE [dbo].[PermissionRecord_Role_Mapping] (
  [PermissionRecord_Id] int  NOT NULL,
  [CustomerRole_Id] int  NOT NULL
)
GO

ALTER TABLE [dbo].[PermissionRecord_Role_Mapping] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Picture
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Picture]') AND type IN ('U'))
	DROP TABLE [dbo].[Picture]
GO

CREATE TABLE [dbo].[Picture] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [MimeType] nvarchar(40) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [SeoFilename] nvarchar(300) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AltAttribute] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TitleAttribute] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [IsNew] bit  NOT NULL,
  [VirtualPath] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Picture] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for PictureBinary
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[PictureBinary]') AND type IN ('U'))
	DROP TABLE [dbo].[PictureBinary]
GO

CREATE TABLE [dbo].[PictureBinary] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [PictureId] int  NOT NULL,
  [BinaryData] varbinary(max)  NULL
)
GO

ALTER TABLE [dbo].[PictureBinary] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Poll
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Poll]') AND type IN ('U'))
	DROP TABLE [dbo].[Poll]
GO

CREATE TABLE [dbo].[Poll] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [LanguageId] int  NOT NULL,
  [SystemKeyword] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Published] bit  NOT NULL,
  [ShowOnHomepage] bit  NOT NULL,
  [AllowGuestsToVote] bit  NOT NULL,
  [DisplayOrder] int  NOT NULL,
  [LimitedToStores] bit  NOT NULL,
  [StartDateUtc] datetime2(7)  NULL,
  [EndDateUtc] datetime2(7)  NULL
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
  [Name] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [PollId] int  NOT NULL,
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
  [Id] int  IDENTITY(1,1) NOT NULL,
  [PollAnswerId] int  NOT NULL,
  [CustomerId] int  NOT NULL,
  [CreatedOnUtc] datetime2(7)  NOT NULL
)
GO

ALTER TABLE [dbo].[PollVotingRecord] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for PredefinedProductAttributeValue
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[PredefinedProductAttributeValue]') AND type IN ('U'))
	DROP TABLE [dbo].[PredefinedProductAttributeValue]
GO

CREATE TABLE [dbo].[PredefinedProductAttributeValue] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ProductAttributeId] int  NOT NULL,
  [PriceAdjustment] decimal(18,4)  NOT NULL,
  [PriceAdjustmentUsePercentage] bit  NOT NULL,
  [WeightAdjustment] decimal(18,4)  NOT NULL,
  [Cost] decimal(18,4)  NOT NULL,
  [IsPreSelected] bit  NOT NULL,
  [DisplayOrder] int  NOT NULL
)
GO

ALTER TABLE [dbo].[PredefinedProductAttributeValue] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Product
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Product]') AND type IN ('U'))
	DROP TABLE [dbo].[Product]
GO

CREATE TABLE [dbo].[Product] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [MetaKeywords] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MetaTitle] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Sku] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ManufacturerPartNumber] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Gtin] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [RequiredProductIds] nvarchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AllowedQuantities] nvarchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ProductTypeId] int  NOT NULL,
  [ParentGroupedProductId] int  NOT NULL,
  [VisibleIndividually] bit  NOT NULL,
  [ShortDescription] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FullDescription] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AdminComment] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ProductTemplateId] int  NOT NULL,
  [VendorId] int  NOT NULL,
  [ShowOnHomepage] bit  NOT NULL,
  [MetaDescription] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AllowCustomerReviews] bit  NOT NULL,
  [ApprovedRatingSum] int  NOT NULL,
  [NotApprovedRatingSum] int  NOT NULL,
  [ApprovedTotalReviews] int  NOT NULL,
  [NotApprovedTotalReviews] int  NOT NULL,
  [SubjectToAcl] bit  NOT NULL,
  [LimitedToStores] bit  NOT NULL,
  [IsGiftCard] bit  NOT NULL,
  [GiftCardTypeId] int  NOT NULL,
  [OverriddenGiftCardAmount] decimal(18,4)  NULL,
  [RequireOtherProducts] bit  NOT NULL,
  [AutomaticallyAddRequiredProducts] bit  NOT NULL,
  [IsDownload] bit  NOT NULL,
  [DownloadId] int  NOT NULL,
  [UnlimitedDownloads] bit  NOT NULL,
  [MaxNumberOfDownloads] int  NOT NULL,
  [DownloadExpirationDays] int  NULL,
  [DownloadActivationTypeId] int  NOT NULL,
  [HasSampleDownload] bit  NOT NULL,
  [SampleDownloadId] int  NOT NULL,
  [HasUserAgreement] bit  NOT NULL,
  [UserAgreementText] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [IsRecurring] bit  NOT NULL,
  [RecurringCycleLength] int  NOT NULL,
  [RecurringCyclePeriodId] int  NOT NULL,
  [RecurringTotalCycles] int  NOT NULL,
  [IsRental] bit  NOT NULL,
  [RentalPriceLength] int  NOT NULL,
  [RentalPricePeriodId] int  NOT NULL,
  [IsShipEnabled] bit  NOT NULL,
  [IsFreeShipping] bit  NOT NULL,
  [ShipSeparately] bit  NOT NULL,
  [AdditionalShippingCharge] decimal(18,4)  NOT NULL,
  [DeliveryDateId] int  NOT NULL,
  [IsTaxExempt] bit  NOT NULL,
  [TaxCategoryId] int  NOT NULL,
  [IsTelecommunicationsOrBroadcastingOrElectronicServices] bit  NOT NULL,
  [ManageInventoryMethodId] int  NOT NULL,
  [ProductAvailabilityRangeId] int  NOT NULL,
  [UseMultipleWarehouses] bit  NOT NULL,
  [WarehouseId] int  NOT NULL,
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
  [AllowAddingOnlyExistingAttributeCombinations] bit  NOT NULL,
  [NotReturnable] bit  NOT NULL,
  [DisableBuyButton] bit  NOT NULL,
  [DisableWishlistButton] bit  NOT NULL,
  [AvailableForPreOrder] bit  NOT NULL,
  [PreOrderAvailabilityStartDateTimeUtc] datetime2(7)  NULL,
  [CallForPrice] bit  NOT NULL,
  [Price] decimal(18,4)  NOT NULL,
  [OldPrice] decimal(18,4)  NOT NULL,
  [ProductCost] decimal(18,4)  NOT NULL,
  [CustomerEntersPrice] bit  NOT NULL,
  [MinimumCustomerEnteredPrice] decimal(18,4)  NOT NULL,
  [MaximumCustomerEnteredPrice] decimal(18,4)  NOT NULL,
  [BasepriceEnabled] bit  NOT NULL,
  [BasepriceAmount] decimal(18,4)  NOT NULL,
  [BasepriceUnitId] int  NOT NULL,
  [BasepriceBaseAmount] decimal(18,4)  NOT NULL,
  [BasepriceBaseUnitId] int  NOT NULL,
  [MarkAsNew] bit  NOT NULL,
  [MarkAsNewStartDateTimeUtc] datetime2(7)  NULL,
  [MarkAsNewEndDateTimeUtc] datetime2(7)  NULL,
  [HasTierPrices] bit  NOT NULL,
  [HasDiscountsApplied] bit  NOT NULL,
  [Weight] decimal(18,4)  NOT NULL,
  [Length] decimal(18,4)  NOT NULL,
  [Width] decimal(18,4)  NOT NULL,
  [Height] decimal(18,4)  NOT NULL,
  [AvailableStartDateTimeUtc] datetime2(7)  NULL,
  [AvailableEndDateTimeUtc] datetime2(7)  NULL,
  [DisplayOrder] int  NOT NULL,
  [Published] bit  NOT NULL,
  [Deleted] bit  NOT NULL,
  [CreatedOnUtc] datetime2(7)  NOT NULL,
  [UpdatedOnUtc] datetime2(7)  NOT NULL
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
  [CategoryId] int  NOT NULL,
  [ProductId] int  NOT NULL,
  [IsFeaturedProduct] bit  NOT NULL,
  [DisplayOrder] int  NOT NULL
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
  [ManufacturerId] int  NOT NULL,
  [ProductId] int  NOT NULL,
  [IsFeaturedProduct] bit  NOT NULL,
  [DisplayOrder] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Product_Manufacturer_Mapping] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Product_Picture_Mapping
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Product_Picture_Mapping]') AND type IN ('U'))
	DROP TABLE [dbo].[Product_Picture_Mapping]
GO

CREATE TABLE [dbo].[Product_Picture_Mapping] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [PictureId] int  NOT NULL,
  [ProductId] int  NOT NULL,
  [DisplayOrder] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Product_Picture_Mapping] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Product_ProductAttribute_Mapping
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Product_ProductAttribute_Mapping]') AND type IN ('U'))
	DROP TABLE [dbo].[Product_ProductAttribute_Mapping]
GO

CREATE TABLE [dbo].[Product_ProductAttribute_Mapping] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [ProductAttributeId] int  NOT NULL,
  [ProductId] int  NOT NULL,
  [TextPrompt] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [IsRequired] bit  NOT NULL,
  [AttributeControlTypeId] int  NOT NULL,
  [DisplayOrder] int  NOT NULL,
  [ValidationMinLength] int  NULL,
  [ValidationMaxLength] int  NULL,
  [ValidationFileAllowedExtensions] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ValidationFileMaximumSize] int  NULL,
  [DefaultValue] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ConditionAttributeXml] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
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
  [CustomValue] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ProductId] int  NOT NULL,
  [SpecificationAttributeOptionId] int  NOT NULL,
  [AttributeTypeId] int  NOT NULL,
  [AllowFiltering] bit  NOT NULL,
  [ShowOnProductPage] bit  NOT NULL,
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
  [Name] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Description] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[ProductAttribute] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ProductAttributeCombination
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductAttributeCombination]') AND type IN ('U'))
	DROP TABLE [dbo].[ProductAttributeCombination]
GO

CREATE TABLE [dbo].[ProductAttributeCombination] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Sku] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ManufacturerPartNumber] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Gtin] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ProductId] int  NOT NULL,
  [AttributesXml] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [StockQuantity] int  NOT NULL,
  [AllowOutOfStockOrders] bit  NOT NULL,
  [OverriddenPrice] decimal(18,4)  NULL,
  [NotifyAdminForQuantityBelow] int  NOT NULL,
  [PictureId] int  NOT NULL
)
GO

ALTER TABLE [dbo].[ProductAttributeCombination] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ProductAttributeValue
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductAttributeValue]') AND type IN ('U'))
	DROP TABLE [dbo].[ProductAttributeValue]
GO

CREATE TABLE [dbo].[ProductAttributeValue] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ColorSquaresRgb] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ProductAttributeMappingId] int  NOT NULL,
  [AttributeValueTypeId] int  NOT NULL,
  [AssociatedProductId] int  NOT NULL,
  [ImageSquaresPictureId] int  NOT NULL,
  [PriceAdjustment] decimal(18,4)  NOT NULL,
  [PriceAdjustmentUsePercentage] bit  NOT NULL,
  [WeightAdjustment] decimal(18,4)  NOT NULL,
  [Cost] decimal(18,4)  NOT NULL,
  [CustomerEntersQty] bit  NOT NULL,
  [Quantity] int  NOT NULL,
  [IsPreSelected] bit  NOT NULL,
  [DisplayOrder] int  NOT NULL,
  [PictureId] int  NOT NULL
)
GO

ALTER TABLE [dbo].[ProductAttributeValue] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ProductAvailabilityRange
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductAvailabilityRange]') AND type IN ('U'))
	DROP TABLE [dbo].[ProductAvailabilityRange]
GO

CREATE TABLE [dbo].[ProductAvailabilityRange] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [DisplayOrder] int  NOT NULL
)
GO

ALTER TABLE [dbo].[ProductAvailabilityRange] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ProductReview
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductReview]') AND type IN ('U'))
	DROP TABLE [dbo].[ProductReview]
GO

CREATE TABLE [dbo].[ProductReview] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [CustomerId] int  NOT NULL,
  [ProductId] int  NOT NULL,
  [StoreId] int  NOT NULL,
  [IsApproved] bit  NOT NULL,
  [Title] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ReviewText] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ReplyText] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CustomerNotifiedOfReply] bit  NOT NULL,
  [Rating] int  NOT NULL,
  [HelpfulYesTotal] int  NOT NULL,
  [HelpfulNoTotal] int  NOT NULL,
  [CreatedOnUtc] datetime2(7)  NOT NULL
)
GO

ALTER TABLE [dbo].[ProductReview] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ProductReview_ReviewType_Mapping
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductReview_ReviewType_Mapping]') AND type IN ('U'))
	DROP TABLE [dbo].[ProductReview_ReviewType_Mapping]
GO

CREATE TABLE [dbo].[ProductReview_ReviewType_Mapping] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [ProductReviewId] int  NOT NULL,
  [ReviewTypeId] int  NOT NULL,
  [Rating] int  NOT NULL
)
GO

ALTER TABLE [dbo].[ProductReview_ReviewType_Mapping] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ProductReviewHelpfulness
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductReviewHelpfulness]') AND type IN ('U'))
	DROP TABLE [dbo].[ProductReviewHelpfulness]
GO

CREATE TABLE [dbo].[ProductReviewHelpfulness] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [ProductReviewId] int  NOT NULL,
  [WasHelpful] bit  NOT NULL,
  [CustomerId] int  NOT NULL
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
  [Name] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
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
  [DisplayOrder] int  NOT NULL,
  [IgnoredProductTypes] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[ProductTemplate] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ProductWarehouseInventory
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductWarehouseInventory]') AND type IN ('U'))
	DROP TABLE [dbo].[ProductWarehouseInventory]
GO

CREATE TABLE [dbo].[ProductWarehouseInventory] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [ProductId] int  NOT NULL,
  [WarehouseId] int  NOT NULL,
  [StockQuantity] int  NOT NULL,
  [ReservedQuantity] int  NOT NULL
)
GO

ALTER TABLE [dbo].[ProductWarehouseInventory] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for QueuedEmail
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[QueuedEmail]') AND type IN ('U'))
	DROP TABLE [dbo].[QueuedEmail]
GO

CREATE TABLE [dbo].[QueuedEmail] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [From] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [FromName] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [To] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ToName] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ReplyTo] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ReplyToName] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CC] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Bcc] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Subject] nvarchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [EmailAccountId] int  NOT NULL,
  [PriorityId] int  NOT NULL,
  [Body] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AttachmentFilePath] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AttachmentFileName] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AttachedDownloadId] int  NOT NULL,
  [CreatedOnUtc] datetime2(7)  NOT NULL,
  [DontSendBeforeDateUtc] datetime2(7)  NULL,
  [SentTries] int  NOT NULL,
  [SentOnUtc] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[QueuedEmail] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for RecurringPayment
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[RecurringPayment]') AND type IN ('U'))
	DROP TABLE [dbo].[RecurringPayment]
GO

CREATE TABLE [dbo].[RecurringPayment] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [InitialOrderId] int  NOT NULL,
  [CycleLength] int  NOT NULL,
  [CyclePeriodId] int  NOT NULL,
  [TotalCycles] int  NOT NULL,
  [StartDateUtc] datetime2(7)  NOT NULL,
  [IsActive] bit  NOT NULL,
  [LastPaymentFailed] bit  NOT NULL,
  [Deleted] bit  NOT NULL,
  [CreatedOnUtc] datetime2(7)  NOT NULL
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
  [CreatedOnUtc] datetime2(7)  NOT NULL
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
  [ReasonForReturn] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [RequestedAction] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [CustomerId] int  NOT NULL,
  [CustomNumber] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [StoreId] int  NOT NULL,
  [OrderItemId] int  NOT NULL,
  [Quantity] int  NOT NULL,
  [CustomerComments] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [UploadedFileId] int  NOT NULL,
  [StaffNotes] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ReturnRequestStatusId] int  NOT NULL,
  [CreatedOnUtc] datetime2(7)  NOT NULL,
  [UpdatedOnUtc] datetime2(7)  NOT NULL
)
GO

ALTER TABLE [dbo].[ReturnRequest] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ReturnRequestAction
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ReturnRequestAction]') AND type IN ('U'))
	DROP TABLE [dbo].[ReturnRequestAction]
GO

CREATE TABLE [dbo].[ReturnRequestAction] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [DisplayOrder] int  NOT NULL
)
GO

ALTER TABLE [dbo].[ReturnRequestAction] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ReturnRequestReason
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ReturnRequestReason]') AND type IN ('U'))
	DROP TABLE [dbo].[ReturnRequestReason]
GO

CREATE TABLE [dbo].[ReturnRequestReason] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [DisplayOrder] int  NOT NULL
)
GO

ALTER TABLE [dbo].[ReturnRequestReason] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ReviewType
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ReviewType]') AND type IN ('U'))
	DROP TABLE [dbo].[ReviewType]
GO

CREATE TABLE [dbo].[ReviewType] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Description] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [DisplayOrder] int  NOT NULL,
  [VisibleToAllCustomers] bit  NOT NULL,
  [IsRequired] bit  NOT NULL
)
GO

ALTER TABLE [dbo].[ReviewType] SET (LOCK_ESCALATION = TABLE)
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
  [StoreId] int  NOT NULL,
  [Points] int  NOT NULL,
  [PointsBalance] int  NULL,
  [UsedAmount] decimal(18,4)  NOT NULL,
  [Message] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CreatedOnUtc] datetime2(7)  NOT NULL,
  [EndDateUtc] datetime2(7)  NULL,
  [ValidPoints] int  NULL,
  [UsedWithOrder] uniqueidentifier  NULL
)
GO

ALTER TABLE [dbo].[RewardPointsHistory] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ScheduleTask
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ScheduleTask]') AND type IN ('U'))
	DROP TABLE [dbo].[ScheduleTask]
GO

CREATE TABLE [dbo].[ScheduleTask] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Type] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Seconds] int  NOT NULL,
  [Enabled] bit  NOT NULL,
  [StopOnError] bit  NOT NULL,
  [LastStartUtc] datetime2(7)  NULL,
  [LastEndUtc] datetime2(7)  NULL,
  [LastSuccessUtc] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[ScheduleTask] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for SearchTerm
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SearchTerm]') AND type IN ('U'))
	DROP TABLE [dbo].[SearchTerm]
GO

CREATE TABLE [dbo].[SearchTerm] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Keyword] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [StoreId] int  NOT NULL,
  [Count] int  NOT NULL
)
GO

ALTER TABLE [dbo].[SearchTerm] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Setting
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Setting]') AND type IN ('U'))
	DROP TABLE [dbo].[Setting]
GO

CREATE TABLE [dbo].[Setting] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
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
  [TrackingNumber] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TotalWeight] decimal(18,4)  NULL,
  [ShippedDateUtc] datetime2(7)  NULL,
  [DeliveryDateUtc] datetime2(7)  NULL,
  [AdminComment] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CreatedOnUtc] datetime2(7)  NOT NULL
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
  [Quantity] int  NOT NULL,
  [WarehouseId] int  NOT NULL
)
GO

ALTER TABLE [dbo].[ShipmentItem] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ShippingByWeightByTotalRecord
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ShippingByWeightByTotalRecord]') AND type IN ('U'))
	DROP TABLE [dbo].[ShippingByWeightByTotalRecord]
GO

CREATE TABLE [dbo].[ShippingByWeightByTotalRecord] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [WeightFrom] decimal(18,2)  NOT NULL,
  [WeightTo] decimal(18,2)  NOT NULL,
  [OrderSubtotalFrom] decimal(18,2)  NOT NULL,
  [OrderSubtotalTo] decimal(18,2)  NOT NULL,
  [AdditionalFixedCost] decimal(18,2)  NOT NULL,
  [PercentageRateOfSubtotal] decimal(18,2)  NOT NULL,
  [RatePerWeightUnit] decimal(18,2)  NOT NULL,
  [LowerWeightLimit] decimal(18,2)  NOT NULL,
  [Zip] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [StoreId] int  NOT NULL,
  [WarehouseId] int  NOT NULL,
  [CountryId] int  NOT NULL,
  [StateProvinceId] int  NOT NULL,
  [ShippingMethodId] int  NOT NULL,
  [TransitDays] int  NULL
)
GO

ALTER TABLE [dbo].[ShippingByWeightByTotalRecord] SET (LOCK_ESCALATION = TABLE)
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
  [Description] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DisplayOrder] int  NOT NULL
)
GO

ALTER TABLE [dbo].[ShippingMethod] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ShippingMethodRestrictions
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ShippingMethodRestrictions]') AND type IN ('U'))
	DROP TABLE [dbo].[ShippingMethodRestrictions]
GO

CREATE TABLE [dbo].[ShippingMethodRestrictions] (
  [ShippingMethod_Id] int  NOT NULL,
  [Country_Id] int  NOT NULL
)
GO

ALTER TABLE [dbo].[ShippingMethodRestrictions] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ShoppingCartItem
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ShoppingCartItem]') AND type IN ('U'))
	DROP TABLE [dbo].[ShoppingCartItem]
GO

CREATE TABLE [dbo].[ShoppingCartItem] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [CustomerId] int  NOT NULL,
  [ProductId] int  NOT NULL,
  [StoreId] int  NOT NULL,
  [ShoppingCartTypeId] int  NOT NULL,
  [AttributesXml] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CustomerEnteredPrice] decimal(18,4)  NOT NULL,
  [Quantity] int  NOT NULL,
  [RentalStartDateUtc] datetime2(7)  NULL,
  [RentalEndDateUtc] datetime2(7)  NULL,
  [CreatedOnUtc] datetime2(7)  NOT NULL,
  [UpdatedOnUtc] datetime2(7)  NOT NULL
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
  [Name] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [SpecificationAttributeGroupId] int  NULL,
  [DisplayOrder] int  NOT NULL
)
GO

ALTER TABLE [dbo].[SpecificationAttribute] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for SpecificationAttributeGroup
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SpecificationAttributeGroup]') AND type IN ('U'))
	DROP TABLE [dbo].[SpecificationAttributeGroup]
GO

CREATE TABLE [dbo].[SpecificationAttributeGroup] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [DisplayOrder] int  NOT NULL
)
GO

ALTER TABLE [dbo].[SpecificationAttributeGroup] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for SpecificationAttributeOption
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SpecificationAttributeOption]') AND type IN ('U'))
	DROP TABLE [dbo].[SpecificationAttributeOption]
GO

CREATE TABLE [dbo].[SpecificationAttributeOption] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ColorSquaresRgb] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SpecificationAttributeId] int  NOT NULL,
  [DisplayOrder] int  NOT NULL
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
  [Name] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Abbreviation] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CountryId] int  NOT NULL,
  [Published] bit  NOT NULL,
  [DisplayOrder] int  NOT NULL
)
GO

ALTER TABLE [dbo].[StateProvince] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for StockQuantityHistory
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[StockQuantityHistory]') AND type IN ('U'))
	DROP TABLE [dbo].[StockQuantityHistory]
GO

CREATE TABLE [dbo].[StockQuantityHistory] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [ProductId] int  NOT NULL,
  [QuantityAdjustment] int  NOT NULL,
  [StockQuantity] int  NOT NULL,
  [Message] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CreatedOnUtc] datetime2(7)  NOT NULL,
  [CombinationId] int  NULL,
  [WarehouseId] int  NULL
)
GO

ALTER TABLE [dbo].[StockQuantityHistory] SET (LOCK_ESCALATION = TABLE)
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
  [Hosts] nvarchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CompanyName] nvarchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CompanyAddress] nvarchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CompanyPhoneNumber] nvarchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CompanyVat] nvarchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SslEnabled] bit  NOT NULL,
  [DefaultLanguageId] int  NOT NULL,
  [DisplayOrder] int  NOT NULL
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
  [EntityName] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [StoreId] int  NOT NULL,
  [EntityId] int  NOT NULL
)
GO

ALTER TABLE [dbo].[StoreMapping] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for StorePickupPoint
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[StorePickupPoint]') AND type IN ('U'))
	DROP TABLE [dbo].[StorePickupPoint]
GO

CREATE TABLE [dbo].[StorePickupPoint] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Description] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AddressId] int  NOT NULL,
  [PickupFee] decimal(18,4)  NOT NULL,
  [OpeningHours] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DisplayOrder] int  NOT NULL,
  [StoreId] int  NOT NULL,
  [Latitude] decimal(18,4)  NULL,
  [Longitude] decimal(18,4)  NULL,
  [TransitDays] int  NULL
)
GO

ALTER TABLE [dbo].[StorePickupPoint] SET (LOCK_ESCALATION = TABLE)
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
-- Table structure for TaxRate
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[TaxRate]') AND type IN ('U'))
	DROP TABLE [dbo].[TaxRate]
GO

CREATE TABLE [dbo].[TaxRate] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [StoreId] int  NOT NULL,
  [TaxCategoryId] int  NOT NULL,
  [CountryId] int  NOT NULL,
  [StateProvinceId] int  NOT NULL,
  [Zip] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Percentage] decimal(18,4)  NOT NULL
)
GO

ALTER TABLE [dbo].[TaxRate] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for TaxTransactionLog
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[TaxTransactionLog]') AND type IN ('U'))
	DROP TABLE [dbo].[TaxTransactionLog]
GO

CREATE TABLE [dbo].[TaxTransactionLog] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [StatusCode] int  NOT NULL,
  [Url] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [RequestMessage] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ResponseMessage] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CustomerId] int  NOT NULL,
  [CreatedDateUtc] datetime2(7)  NOT NULL
)
GO

ALTER TABLE [dbo].[TaxTransactionLog] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for TierPrice
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[TierPrice]') AND type IN ('U'))
	DROP TABLE [dbo].[TierPrice]
GO

CREATE TABLE [dbo].[TierPrice] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [CustomerRoleId] int  NULL,
  [ProductId] int  NOT NULL,
  [StoreId] int  NOT NULL,
  [Quantity] int  NOT NULL,
  [Price] decimal(18,4)  NOT NULL,
  [StartDateTimeUtc] datetime2(7)  NULL,
  [EndDateTimeUtc] datetime2(7)  NULL
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
  [SystemName] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [IncludeInSitemap] bit  NOT NULL,
  [IncludeInTopMenu] bit  NOT NULL,
  [IncludeInFooterColumn1] bit  NOT NULL,
  [IncludeInFooterColumn2] bit  NOT NULL,
  [IncludeInFooterColumn3] bit  NOT NULL,
  [DisplayOrder] int  NOT NULL,
  [AccessibleWhenStoreClosed] bit  NOT NULL,
  [IsPasswordProtected] bit  NOT NULL,
  [Password] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Title] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Body] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Published] bit  NOT NULL,
  [TopicTemplateId] int  NOT NULL,
  [MetaKeywords] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MetaDescription] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MetaTitle] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SubjectToAcl] bit  NOT NULL,
  [LimitedToStores] bit  NOT NULL
)
GO

ALTER TABLE [dbo].[Topic] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for TopicTemplate
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[TopicTemplate]') AND type IN ('U'))
	DROP TABLE [dbo].[TopicTemplate]
GO

CREATE TABLE [dbo].[TopicTemplate] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ViewPath] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [DisplayOrder] int  NOT NULL
)
GO

ALTER TABLE [dbo].[TopicTemplate] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for UrlRecord
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[UrlRecord]') AND type IN ('U'))
	DROP TABLE [dbo].[UrlRecord]
GO

CREATE TABLE [dbo].[UrlRecord] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [EntityName] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Slug] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [EntityId] int  NOT NULL,
  [IsActive] bit  NOT NULL,
  [LanguageId] int  NOT NULL
)
GO

ALTER TABLE [dbo].[UrlRecord] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Vendor
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Vendor]') AND type IN ('U'))
	DROP TABLE [dbo].[Vendor]
GO

CREATE TABLE [dbo].[Vendor] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Email] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MetaKeywords] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MetaTitle] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PageSizeOptions] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Description] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PictureId] int  NOT NULL,
  [AddressId] int  NOT NULL,
  [AdminComment] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Active] bit  NOT NULL,
  [Deleted] bit  NOT NULL,
  [DisplayOrder] int  NOT NULL,
  [MetaDescription] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PageSize] int  NOT NULL,
  [AllowCustomersToSelectPageSize] bit  NOT NULL
)
GO

ALTER TABLE [dbo].[Vendor] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for VendorAttribute
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[VendorAttribute]') AND type IN ('U'))
	DROP TABLE [dbo].[VendorAttribute]
GO

CREATE TABLE [dbo].[VendorAttribute] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [IsRequired] bit  NOT NULL,
  [DisplayOrder] int  NOT NULL,
  [AttributeControlTypeId] int  NOT NULL
)
GO

ALTER TABLE [dbo].[VendorAttribute] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for VendorAttributeValue
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[VendorAttributeValue]') AND type IN ('U'))
	DROP TABLE [dbo].[VendorAttributeValue]
GO

CREATE TABLE [dbo].[VendorAttributeValue] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [VendorAttributeId] int  NOT NULL,
  [IsPreSelected] bit  NOT NULL,
  [DisplayOrder] int  NOT NULL
)
GO

ALTER TABLE [dbo].[VendorAttributeValue] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for VendorNote
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[VendorNote]') AND type IN ('U'))
	DROP TABLE [dbo].[VendorNote]
GO

CREATE TABLE [dbo].[VendorNote] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Note] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [VendorId] int  NOT NULL,
  [CreatedOnUtc] datetime2(7)  NOT NULL
)
GO

ALTER TABLE [dbo].[VendorNote] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Warehouse
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Warehouse]') AND type IN ('U'))
	DROP TABLE [dbo].[Warehouse]
GO

CREATE TABLE [dbo].[Warehouse] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(400) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [AdminComment] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [AddressId] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Warehouse] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- procedure structure for DeleteGuests
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[DeleteGuests]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[DeleteGuests]
GO

CREATE PROCEDURE [dbo].[DeleteGuests]
(
	@OnlyWithoutShoppingCart bit = 1,
	@CreatedFromUtc datetime,
	@CreatedToUtc datetime,
	@TotalRecordsDeleted int = null OUTPUT
)
AS
BEGIN
	CREATE TABLE #tmp_guests (CustomerId int)
	CREATE TABLE #tmp_adresses (AddressId int)
		
	INSERT #tmp_guests (CustomerId)
	SELECT c.[Id] 
	FROM [Customer] c with (NOLOCK)
		LEFT JOIN [ShoppingCartItem] sci with (NOLOCK) ON sci.[CustomerId] = c.[Id]
		INNER JOIN (
			--guests only
			SELECT ccrm.[Customer_Id] 
			FROM [Customer_CustomerRole_Mapping] ccrm with (NOLOCK)
				INNER JOIN [CustomerRole] cr with (NOLOCK) ON cr.[Id] = ccrm.[CustomerRole_Id]
			WHERE cr.[SystemName] = N'Guests'
		) g ON g.[Customer_Id] = c.[Id]
		LEFT JOIN [Order] o with (NOLOCK) ON o.[CustomerId] = c.[Id]
		LEFT JOIN [BlogComment] bc with (NOLOCK) ON bc.[CustomerId] = c.[Id]
		LEFT JOIN [NewsComment] nc with (NOLOCK) ON nc.[CustomerId] = c.[Id]
		LEFT JOIN [ProductReview] pr with (NOLOCK) ON pr.[CustomerId] = c.[Id]
		LEFT JOIN [ProductReviewHelpfulness] prh with (NOLOCK) ON prh.[CustomerId] = c.[Id]
		LEFT JOIN [PollVotingRecord] pvr with (NOLOCK) ON pvr.[CustomerId] = c.[Id]
		LEFT JOIN [Forums_Topic] ft with (NOLOCK) ON ft.[CustomerId] = c.[Id]
		LEFT JOIN [Forums_Post] fp with (NOLOCK) ON fp.[CustomerId] = c.[Id]
	WHERE 1 = 1
		--no orders
		AND (o.Id is null)
		--no blog comments
		AND (bc.Id is null)
		--no news comments
		AND (nc.Id is null)
		--no product reviews
		AND (pr.Id is null)
		--no product reviews helpfulness
		AND (prh.Id is null)
		--no poll voting
		AND (pvr.Id is null)
		--no forum topics
		AND (ft.Id is null)
		--no forum topics
		AND (fp.Id is null)
		--no system accounts
		AND (c.IsSystemAccount = 0)
		--created from
		AND ((@CreatedFromUtc is null) OR (c.[CreatedOnUtc] > @CreatedFromUtc))
		--created to
		AND ((@CreatedToUtc is null) OR (c.[CreatedOnUtc] < @CreatedToUtc))
		--shopping cart items
		AND ((@OnlyWithoutShoppingCart = 0) OR (sci.Id is null))

	INSERT #tmp_adresses (AddressId)
	SELECT [Address_Id] FROM [CustomerAddresses] WHERE [Customer_Id] IN (SELECT [CustomerId] FROM #tmp_guests)

	--delete guests
	DELETE [Customer]
	WHERE [Id] IN (SELECT [CustomerId] FROM #tmp_guests)
	
	--delete attributes
	DELETE [GenericAttribute]
	WHERE ([EntityId] IN (SELECT [CustomerId] FROM #tmp_guests))
	AND
	([KeyGroup] = N'Customer')

	--delete addresses
	DELETE [Address]
	WHERE [Id] IN (SELECT [AddressId] FROM #tmp_adresses)
	
	--total records
	SELECT @TotalRecordsDeleted = COUNT(1) FROM #tmp_guests
	
	DROP TABLE #tmp_guests
	DROP TABLE #tmp_adresses
END
GO


-- ----------------------------
-- procedure structure for ProductLoadAllPaged
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductLoadAllPaged]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProductLoadAllPaged]
GO

CREATE PROCEDURE [dbo].[ProductLoadAllPaged]
(
	@CategoryIds		nvarchar(MAX) = null,	--a list of category IDs (comma-separated list). e.g. 1,2,3
	@ManufacturerId		int = 0,
	@StoreId			int = 0,
	@VendorId			int = 0,
	@WarehouseId		int = 0,
	@ProductTypeId		int = null, --product type identifier, null - load all products
	@VisibleIndividuallyOnly bit = 0, 	--0 - load all products , 1 - "visible indivially" only
	@MarkedAsNewOnly	bit = 0, 	--0 - load all products , 1 - "marked as new" only
	@ProductTagId		int = 0,
	@FeaturedProducts	bit = null,	--0 featured only , 1 not featured only, null - load all products
	@PriceMin			decimal(18, 4) = null,
	@PriceMax			decimal(18, 4) = null,
	@Keywords			nvarchar(4000) = null,
	@SearchDescriptions bit = 0, --a value indicating whether to search by a specified "keyword" in product descriptions
	@SearchManufacturerPartNumber bit = 0, -- a value indicating whether to search by a specified "keyword" in manufacturer part number
	@SearchSku			bit = 0, --a value indicating whether to search by a specified "keyword" in product SKU
	@SearchProductTags  bit = 0, --a value indicating whether to search by a specified "keyword" in product tags
	@UseFullTextSearch  bit = 0,
	@FullTextMode		int = 0, --0 - using CONTAINS with <prefix_term>, 5 - using CONTAINS and OR with <prefix_term>, 10 - using CONTAINS and AND with <prefix_term>
	@FilteredSpecs		nvarchar(MAX) = null,	--filter by specification attribute options (comma-separated list of IDs). e.g. 14,15,16
	@LanguageId			int = 0,
	@OrderBy			int = 0, --0 - position, 5 - Name: A to Z, 6 - Name: Z to A, 10 - Price: Low to High, 11 - Price: High to Low, 15 - creation date
	@AllowedCustomerRoleIds	nvarchar(MAX) = null,	--a list of customer role IDs (comma-separated list) for which a product should be shown (if a subject to ACL)
	@PageIndex			int = 0, 
	@PageSize			int = 2147483644,
	@ShowHidden			bit = 0,
	@OverridePublished	bit = null, --null - process "Published" property according to "showHidden" parameter, true - load only "Published" products, false - load only "Unpublished" products
	@LoadFilterableSpecificationAttributeOptionIds bit = 0, --a value indicating whether we should load the specification attribute option identifiers applied to loaded products (all pages)
	@FilterableSpecificationAttributeOptionIds nvarchar(MAX) = null OUTPUT, --the specification attribute option identifiers applied to loaded products (all pages). returned as a comma separated list of identifiers
	@TotalRecords		int = null OUTPUT
)
AS
BEGIN	
	/* Products that filtered by keywords */
	CREATE TABLE #KeywordProducts
	(
		[ProductId] int NOT NULL
	)

	DECLARE
		@SearchKeywords bit,
		@OriginalKeywords nvarchar(4000),
		@sql nvarchar(max),
		@sql_orderby nvarchar(max)

	SET NOCOUNT ON
	
	--filter by keywords
	SET @Keywords = isnull(@Keywords, '')
	SET @Keywords = rtrim(ltrim(@Keywords))
	SET @OriginalKeywords = @Keywords
	IF ISNULL(@Keywords, '') != ''
	BEGIN
		SET @SearchKeywords = 1
		
		IF @UseFullTextSearch = 1
		BEGIN
			--remove wrong chars (' ")
			SET @Keywords = REPLACE(@Keywords, '''', '')
			SET @Keywords = REPLACE(@Keywords, '"', '')
			
			--full-text search
			IF @FullTextMode = 0 
			BEGIN
				--0 - using CONTAINS with <prefix_term>
				SET @Keywords = ' "' + @Keywords + '*" '
			END
			ELSE
			BEGIN
				--5 - using CONTAINS and OR with <prefix_term>
				--10 - using CONTAINS and AND with <prefix_term>

				--clean multiple spaces
				WHILE CHARINDEX('  ', @Keywords) > 0 
					SET @Keywords = REPLACE(@Keywords, '  ', ' ')

				DECLARE @concat_term nvarchar(100)				
				IF @FullTextMode = 5 --5 - using CONTAINS and OR with <prefix_term>
				BEGIN
					SET @concat_term = 'OR'
				END 
				IF @FullTextMode = 10 --10 - using CONTAINS and AND with <prefix_term>
				BEGIN
					SET @concat_term = 'AND'
				END

				--now let's build search string
				declare @fulltext_keywords nvarchar(4000)
				set @fulltext_keywords = N''
				declare @index int		
		
				set @index = CHARINDEX(' ', @Keywords, 0)

				-- if index = 0, then only one field was passed
				IF(@index = 0)
					set @fulltext_keywords = ' "' + @Keywords + '*" '
				ELSE
				BEGIN		
                    DECLARE @len_keywords INT
					DECLARE @len_nvarchar INT
					SET @len_keywords = 0
					SET @len_nvarchar = DATALENGTH(CONVERT(NVARCHAR(MAX), 'a'))

					DECLARE @first BIT
					SET  @first = 1			
					WHILE @index > 0
					BEGIN
						IF (@first = 0)
							SET @fulltext_keywords = @fulltext_keywords + ' ' + @concat_term + ' '
						ELSE
							SET @first = 0

                        --LEN excludes trailing spaces. That is why we use DATALENGTH
						--see https://docs.microsoft.com/sql/t-sql/functions/len-transact-sql?view=sqlallproducts-allversions for more ditails
						SET @len_keywords = DATALENGTH(@Keywords) / @len_nvarchar

						SET @fulltext_keywords = @fulltext_keywords + '"' + SUBSTRING(@Keywords, 1, @index - 1) + '*"'					
						SET @Keywords = SUBSTRING(@Keywords, @index + 1, @len_keywords - @index)						
						SET @index = CHARINDEX(' ', @Keywords, 0)
					end
					
					-- add the last field
                    SET @len_keywords = DATALENGTH(@Keywords) / @len_nvarchar
					IF LEN(@fulltext_keywords) > 0
						SET @fulltext_keywords = @fulltext_keywords + ' ' + @concat_term + ' ' + '"' + SUBSTRING(@Keywords, 1, @len_keywords) + '*"'	
				END
				SET @Keywords = @fulltext_keywords
			END
		END
		ELSE
		BEGIN
			--usual search by PATINDEX
			SET @Keywords = '%' + @Keywords + '%'
		END
		--PRINT @Keywords

		--product name
		SET @sql = '
		INSERT INTO #KeywordProducts ([ProductId])
		SELECT p.Id
		FROM Product p with (NOLOCK)
		WHERE '
		IF @UseFullTextSearch = 1
			SET @sql = @sql + 'CONTAINS(p.[Name], @Keywords) '
		ELSE
			SET @sql = @sql + 'PATINDEX(@Keywords, p.[Name]) > 0 '

		IF @SearchDescriptions = 1
		BEGIN
			--product short description
			IF @UseFullTextSearch = 1
			BEGIN
				SET @sql = @sql + 'OR CONTAINS(p.[ShortDescription], @Keywords) '
				SET @sql = @sql + 'OR CONTAINS(p.[FullDescription], @Keywords) '
			END
			ELSE
			BEGIN
				SET @sql = @sql + 'OR PATINDEX(@Keywords, p.[ShortDescription]) > 0 '
				SET @sql = @sql + 'OR PATINDEX(@Keywords, p.[FullDescription]) > 0 '
			END
		END

		--manufacturer part number (exact match)
		IF @SearchManufacturerPartNumber = 1
		BEGIN
			SET @sql = @sql + 'OR p.[ManufacturerPartNumber] = @OriginalKeywords '
		END

		--SKU (exact match)
		IF @SearchSku = 1
		BEGIN
			SET @sql = @sql + 'OR p.[Sku] = @OriginalKeywords '
		END

		--localized product name
		SET @sql = @sql + '
		UNION
		SELECT lp.EntityId
		FROM LocalizedProperty lp with (NOLOCK)
		WHERE
			lp.LocaleKeyGroup = N''Product''
			AND lp.LanguageId = ' + ISNULL(CAST(@LanguageId AS nvarchar(max)), '0') + '
			AND ( (lp.LocaleKey = N''Name'''
		IF @UseFullTextSearch = 1
			SET @sql = @sql + ' AND CONTAINS(lp.[LocaleValue], @Keywords)) '
		ELSE
			SET @sql = @sql + ' AND PATINDEX(@Keywords, lp.[LocaleValue]) > 0) '

		IF @SearchDescriptions = 1
		BEGIN
			--localized product short description
			SET @sql = @sql + '
				OR (lp.LocaleKey = N''ShortDescription'''
			IF @UseFullTextSearch = 1
				SET @sql = @sql + ' AND CONTAINS(lp.[LocaleValue], @Keywords)) '
			ELSE
				SET @sql = @sql + ' AND PATINDEX(@Keywords, lp.[LocaleValue]) > 0) '

			--localized product full description
			SET @sql = @sql + '
				OR (lp.LocaleKey = N''FullDescription'''
			IF @UseFullTextSearch = 1
				SET @sql = @sql + ' AND CONTAINS(lp.[LocaleValue], @Keywords)) '
			ELSE
				SET @sql = @sql + ' AND PATINDEX(@Keywords, lp.[LocaleValue]) > 0) '
		END

		SET @sql = @sql + ' ) '

		IF @SearchProductTags = 1
		BEGIN
			--product tags (exact match)
			SET @sql = @sql + '
			UNION
			SELECT pptm.Product_Id
			FROM Product_ProductTag_Mapping pptm with(NOLOCK) INNER JOIN ProductTag pt with(NOLOCK) ON pt.Id = pptm.ProductTag_Id
			WHERE pt.[Name] = @OriginalKeywords '

			--localized product tags
			SET @sql = @sql + '
			UNION
			SELECT pptm.Product_Id
			FROM LocalizedProperty lp with (NOLOCK) INNER JOIN Product_ProductTag_Mapping pptm with(NOLOCK) ON lp.EntityId = pptm.ProductTag_Id
			WHERE
				lp.LocaleKeyGroup = N''ProductTag''
				AND lp.LanguageId = ' + ISNULL(CAST(@LanguageId AS nvarchar(max)), '0') + '
				AND lp.LocaleKey = N''Name''
				AND lp.[LocaleValue] = @OriginalKeywords '
		END

		--PRINT (@sql)
		EXEC sp_executesql @sql, N'@Keywords nvarchar(4000), @OriginalKeywords nvarchar(4000)', @Keywords, @OriginalKeywords

	END
	ELSE
	BEGIN
		SET @SearchKeywords = 0
	END

	--filter by category IDs
	SET @CategoryIds = isnull(@CategoryIds, '')	
	CREATE TABLE #FilteredCategoryIds
	(
		CategoryId int not null
	)
	INSERT INTO #FilteredCategoryIds (CategoryId)
	SELECT CAST(data as int) FROM [nop_splitstring_to_table](@CategoryIds, ',')	
	DECLARE @CategoryIdsCount int	
	SET @CategoryIdsCount = (SELECT COUNT(1) FROM #FilteredCategoryIds)

	--filter by customer role IDs (access control list)
	SET @AllowedCustomerRoleIds = isnull(@AllowedCustomerRoleIds, '')	
	CREATE TABLE #FilteredCustomerRoleIds
	(
		CustomerRoleId int not null
	)
	INSERT INTO #FilteredCustomerRoleIds (CustomerRoleId)
	SELECT CAST(data as int) FROM [nop_splitstring_to_table](@AllowedCustomerRoleIds, ',')
	DECLARE @FilteredCustomerRoleIdsCount int	
	SET @FilteredCustomerRoleIdsCount = (SELECT COUNT(1) FROM #FilteredCustomerRoleIds)
	
	--paging
	DECLARE @PageLowerBound int
	DECLARE @PageUpperBound int
	DECLARE @RowsToReturn int
	SET @RowsToReturn = @PageSize * (@PageIndex + 1)	
	SET @PageLowerBound = @PageSize * @PageIndex
	SET @PageUpperBound = @PageLowerBound + @PageSize + 1
	
	CREATE TABLE #DisplayOrderTmp 
	(
		[Id] int IDENTITY (1, 1) NOT NULL,
		[ProductId] int NOT NULL
	)

	SET @sql = '
	SELECT p.Id
	FROM
		Product p with (NOLOCK)'
	
	IF @CategoryIdsCount > 0
	BEGIN
		SET @sql = @sql + '
		INNER JOIN Product_Category_Mapping pcm with (NOLOCK)
			ON p.Id = pcm.ProductId'
	END
	
	IF @ManufacturerId > 0
	BEGIN
		SET @sql = @sql + '
		INNER JOIN Product_Manufacturer_Mapping pmm with (NOLOCK)
			ON p.Id = pmm.ProductId'
	END
	
	IF ISNULL(@ProductTagId, 0) != 0
	BEGIN
		SET @sql = @sql + '
		INNER JOIN Product_ProductTag_Mapping pptm with (NOLOCK)
			ON p.Id = pptm.Product_Id'
	END
	
	--searching by keywords
	IF @SearchKeywords = 1
	BEGIN
		SET @sql = @sql + '
		JOIN #KeywordProducts kp
			ON  p.Id = kp.ProductId'
	END
	
	SET @sql = @sql + '
	WHERE
		p.Deleted = 0'
	
	--filter by category
	IF @CategoryIdsCount > 0
	BEGIN
		SET @sql = @sql + '
		AND pcm.CategoryId IN ('
		
		SET @sql = @sql + + CAST(@CategoryIds AS nvarchar(max))

		SET @sql = @sql + ')'

		IF @FeaturedProducts IS NOT NULL
		BEGIN
			SET @sql = @sql + '
		AND pcm.IsFeaturedProduct = ' + CAST(@FeaturedProducts AS nvarchar(max))
		END
	END
	
	--filter by manufacturer
	IF @ManufacturerId > 0
	BEGIN
		SET @sql = @sql + '
		AND pmm.ManufacturerId = ' + CAST(@ManufacturerId AS nvarchar(max))
		
		IF @FeaturedProducts IS NOT NULL
		BEGIN
			SET @sql = @sql + '
		AND pmm.IsFeaturedProduct = ' + CAST(@FeaturedProducts AS nvarchar(max))
		END
	END
	
	--filter by vendor
	IF @VendorId > 0
	BEGIN
		SET @sql = @sql + '
		AND p.VendorId = ' + CAST(@VendorId AS nvarchar(max))
	END
	
	--filter by warehouse
	IF @WarehouseId > 0
	BEGIN
		--we should also ensure that 'ManageInventoryMethodId' is set to 'ManageStock' (1)
		--but we skip it in order to prevent hard-coded values (e.g. 1) and for better performance
		SET @sql = @sql + '
		AND  
			(
				(p.UseMultipleWarehouses = 0 AND
					p.WarehouseId = ' + CAST(@WarehouseId AS nvarchar(max)) + ')
				OR
				(p.UseMultipleWarehouses > 0 AND
					EXISTS (SELECT 1 FROM ProductWarehouseInventory [pwi]
					WHERE [pwi].WarehouseId = ' + CAST(@WarehouseId AS nvarchar(max)) + ' AND [pwi].ProductId = p.Id))
			)'
	END
	
	--filter by product type
	IF @ProductTypeId is not null
	BEGIN
		SET @sql = @sql + '
		AND p.ProductTypeId = ' + CAST(@ProductTypeId AS nvarchar(max))
	END
	
	--filter by "visible individually"
	IF @VisibleIndividuallyOnly = 1
	BEGIN
		SET @sql = @sql + '
		AND p.VisibleIndividually = 1'
	END
	
	--filter by "marked as new"
	IF @MarkedAsNewOnly = 1
	BEGIN
		SET @sql = @sql + '
		AND p.MarkAsNew = 1
		AND (getutcdate() BETWEEN ISNULL(p.MarkAsNewStartDateTimeUtc, ''1/1/1900'') and ISNULL(p.MarkAsNewEndDateTimeUtc, ''1/1/2999''))'
	END
	
	--filter by product tag
	IF ISNULL(@ProductTagId, 0) != 0
	BEGIN
		SET @sql = @sql + '
		AND pptm.ProductTag_Id = ' + CAST(@ProductTagId AS nvarchar(max))
	END
	
	--"Published" property
	IF (@OverridePublished is null)
	BEGIN
		--process according to "showHidden"
		IF @ShowHidden = 0
		BEGIN
			SET @sql = @sql + '
			AND p.Published = 1'
		END
	END
	ELSE IF (@OverridePublished = 1)
	BEGIN
		--published only
		SET @sql = @sql + '
		AND p.Published = 1'
	END
	ELSE IF (@OverridePublished = 0)
	BEGIN
		--unpublished only
		SET @sql = @sql + '
		AND p.Published = 0'
	END
	
	--show hidden
	IF @ShowHidden = 0
	BEGIN
		SET @sql = @sql + '
		AND p.Deleted = 0
		AND (getutcdate() BETWEEN ISNULL(p.AvailableStartDateTimeUtc, ''1/1/1900'') and ISNULL(p.AvailableEndDateTimeUtc, ''1/1/2999''))'
	END
	
	--min price
	IF @PriceMin is not null
	BEGIN
		SET @sql = @sql + '
		AND (p.Price >= ' + CAST(@PriceMin AS nvarchar(max)) + ')'
	END
	
	--max price
	IF @PriceMax is not null
	BEGIN
		SET @sql = @sql + '
		AND (p.Price <= ' + CAST(@PriceMax AS nvarchar(max)) + ')'
	END
	
	--show hidden and ACL
	IF  @ShowHidden = 0 and @FilteredCustomerRoleIdsCount > 0
	BEGIN
		SET @sql = @sql + '
		AND (p.SubjectToAcl = 0 OR EXISTS (
			SELECT 1 FROM #FilteredCustomerRoleIds [fcr]
			WHERE
				[fcr].CustomerRoleId IN (
					SELECT [acl].CustomerRoleId
					FROM [AclRecord] acl with (NOLOCK)
					WHERE [acl].EntityId = p.Id AND [acl].EntityName = ''Product''
				)
			))'
	END
	
	--filter by store
	IF @StoreId > 0
	BEGIN
		SET @sql = @sql + '
		AND (p.LimitedToStores = 0 OR EXISTS (
			SELECT 1 FROM [StoreMapping] sm with (NOLOCK)
			WHERE [sm].EntityId = p.Id AND [sm].EntityName = ''Product'' and [sm].StoreId=' + CAST(@StoreId AS nvarchar(max)) + '
			))'
	END
	
    --prepare filterable specification attribute option identifier (if requested)
    IF @LoadFilterableSpecificationAttributeOptionIds = 1
	BEGIN		
		CREATE TABLE #FilterableSpecs 
		(
			[SpecificationAttributeOptionId] int NOT NULL
		)
        DECLARE @sql_filterableSpecs nvarchar(max)
        SET @sql_filterableSpecs = '
	        INSERT INTO #FilterableSpecs ([SpecificationAttributeOptionId])
	        SELECT DISTINCT [psam].SpecificationAttributeOptionId
	        FROM [Product_SpecificationAttribute_Mapping] [psam] WITH (NOLOCK)
	            WHERE [psam].[AllowFiltering] = 1
	            AND [psam].[ProductId] IN (' + @sql + ')'

        EXEC sp_executesql @sql_filterableSpecs

		--build comma separated list of filterable identifiers
		SELECT @FilterableSpecificationAttributeOptionIds = COALESCE(@FilterableSpecificationAttributeOptionIds + ',' , '') + CAST(SpecificationAttributeOptionId as nvarchar(4000))
		FROM #FilterableSpecs

		DROP TABLE #FilterableSpecs
 	END

	--filter by specification attribution options
	SET @FilteredSpecs = isnull(@FilteredSpecs, '')	
	CREATE TABLE #FilteredSpecs
	(
		SpecificationAttributeOptionId int not null
	)
	INSERT INTO #FilteredSpecs (SpecificationAttributeOptionId)
	SELECT CAST(data as int) FROM [nop_splitstring_to_table](@FilteredSpecs, ',') 

    CREATE TABLE #FilteredSpecsWithAttributes
	(
        SpecificationAttributeId int not null,
		SpecificationAttributeOptionId int not null
	)
	INSERT INTO #FilteredSpecsWithAttributes (SpecificationAttributeId, SpecificationAttributeOptionId)
	SELECT sao.SpecificationAttributeId, fs.SpecificationAttributeOptionId
    FROM #FilteredSpecs fs INNER JOIN SpecificationAttributeOption sao ON sao.Id = fs.SpecificationAttributeOptionId
    ORDER BY sao.SpecificationAttributeId 

    DECLARE @SpecAttributesCount int	
	SET @SpecAttributesCount = (SELECT COUNT(1) FROM #FilteredSpecsWithAttributes)
	IF @SpecAttributesCount > 0
	BEGIN
		--do it for each specified specification option
		DECLARE @SpecificationAttributeOptionId int
        DECLARE @SpecificationAttributeId int
        DECLARE @LastSpecificationAttributeId int
        SET @LastSpecificationAttributeId = 0
		DECLARE cur_SpecificationAttributeOption CURSOR FOR
		SELECT SpecificationAttributeId, SpecificationAttributeOptionId
		FROM #FilteredSpecsWithAttributes

		OPEN cur_SpecificationAttributeOption
        FOREACH:
            FETCH NEXT FROM cur_SpecificationAttributeOption INTO @SpecificationAttributeId, @SpecificationAttributeOptionId
            IF (@LastSpecificationAttributeId <> 0 AND @SpecificationAttributeId <> @LastSpecificationAttributeId OR @@FETCH_STATUS <> 0) 
			    SET @sql = @sql + '
        AND p.Id in (select psam.ProductId from [Product_SpecificationAttribute_Mapping] psam with (NOLOCK) where psam.AllowFiltering = 1 and psam.SpecificationAttributeOptionId IN (SELECT SpecificationAttributeOptionId FROM #FilteredSpecsWithAttributes WHERE SpecificationAttributeId = ' + CAST(@LastSpecificationAttributeId AS nvarchar(max)) + '))'
            SET @LastSpecificationAttributeId = @SpecificationAttributeId
		IF @@FETCH_STATUS = 0 GOTO FOREACH
		CLOSE cur_SpecificationAttributeOption
		DEALLOCATE cur_SpecificationAttributeOption
	END

	--sorting
	SET @sql_orderby = ''	
	IF @OrderBy = 5 /* Name: A to Z */
		SET @sql_orderby = ' p.[Name] ASC'
	ELSE IF @OrderBy = 6 /* Name: Z to A */
		SET @sql_orderby = ' p.[Name] DESC'
	ELSE IF @OrderBy = 10 /* Price: Low to High */
		SET @sql_orderby = ' p.[Price] ASC'
	ELSE IF @OrderBy = 11 /* Price: High to Low */
		SET @sql_orderby = ' p.[Price] DESC'
	ELSE IF @OrderBy = 15 /* creation date */
		SET @sql_orderby = ' p.[CreatedOnUtc] DESC'
	ELSE /* default sorting, 0 (position) */
	BEGIN
		--category position (display order)
		IF @CategoryIdsCount > 0 SET @sql_orderby = ' pcm.DisplayOrder ASC'
		
		--manufacturer position (display order)
		IF @ManufacturerId > 0
		BEGIN
			IF LEN(@sql_orderby) > 0 SET @sql_orderby = @sql_orderby + ', '
			SET @sql_orderby = @sql_orderby + ' pmm.DisplayOrder ASC'
		END
		
		--name
		IF LEN(@sql_orderby) > 0 SET @sql_orderby = @sql_orderby + ', '
		SET @sql_orderby = @sql_orderby + ' p.[Name] ASC'
	END
	
	SET @sql = @sql + '
	ORDER BY' + @sql_orderby
	
    SET @sql = '
    INSERT INTO #DisplayOrderTmp ([ProductId])' + @sql

	--PRINT (@sql)
	EXEC sp_executesql @sql

	DROP TABLE #FilteredCategoryIds
	DROP TABLE #FilteredSpecs
    DROP TABLE #FilteredSpecsWithAttributes
	DROP TABLE #FilteredCustomerRoleIds
	DROP TABLE #KeywordProducts

	CREATE TABLE #PageIndex 
	(
		[IndexId] int IDENTITY (1, 1) NOT NULL,
		[ProductId] int NOT NULL
	)
	INSERT INTO #PageIndex ([ProductId])
	SELECT ProductId
	FROM #DisplayOrderTmp
	GROUP BY ProductId
	ORDER BY min([Id])

	--total records
	SET @TotalRecords = @@rowcount
	
	DROP TABLE #DisplayOrderTmp

	--return products
	SELECT TOP (@RowsToReturn)
		p.*
	FROM
		#PageIndex [pi]
		INNER JOIN Product p with (NOLOCK) on p.Id = [pi].[ProductId]
	WHERE
		[pi].IndexId > @PageLowerBound AND 
		[pi].IndexId < @PageUpperBound
	ORDER BY
		[pi].IndexId
	
	DROP TABLE #PageIndex
END
GO


-- ----------------------------
-- Auto increment value for AclRecord
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[AclRecord]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table AclRecord
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AclRecord_CustomerRoleId]
ON [dbo].[AclRecord] (
  [CustomerRoleId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_AclRecord_EntityId_EntityName]
ON [dbo].[AclRecord] (
  [EntityId] ASC,
  [EntityName] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AclRecord
-- ----------------------------
ALTER TABLE [dbo].[AclRecord] ADD CONSTRAINT [PK_AclRecord] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ActivityLog
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ActivityLog]', RESEED, 5)
GO


-- ----------------------------
-- Indexes structure for table ActivityLog
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_ActivityLog_ActivityLogTypeId]
ON [dbo].[ActivityLog] (
  [ActivityLogTypeId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_ActivityLog_CustomerId]
ON [dbo].[ActivityLog] (
  [CustomerId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_ActivityLog_CreatedOnUtc]
ON [dbo].[ActivityLog] (
  [CreatedOnUtc] DESC
)
GO


-- ----------------------------
-- Primary Key structure for table ActivityLog
-- ----------------------------
ALTER TABLE [dbo].[ActivityLog] ADD CONSTRAINT [PK_ActivityLog] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ActivityLogType
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ActivityLogType]', RESEED, 153)
GO


-- ----------------------------
-- Primary Key structure for table ActivityLogType
-- ----------------------------
ALTER TABLE [dbo].[ActivityLogType] ADD CONSTRAINT [PK_ActivityLogType] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Address
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Address]', RESEED, 20)
GO


-- ----------------------------
-- Indexes structure for table Address
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Address_CountryId]
ON [dbo].[Address] (
  [CountryId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Address_StateProvinceId]
ON [dbo].[Address] (
  [StateProvinceId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Address
-- ----------------------------
ALTER TABLE [dbo].[Address] ADD CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for AddressAttribute
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[AddressAttribute]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table AddressAttribute
-- ----------------------------
ALTER TABLE [dbo].[AddressAttribute] ADD CONSTRAINT [PK_AddressAttribute] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for AddressAttributeValue
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[AddressAttributeValue]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table AddressAttributeValue
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AddressAttributeValue_AddressAttributeId]
ON [dbo].[AddressAttributeValue] (
  [AddressAttributeId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AddressAttributeValue
-- ----------------------------
ALTER TABLE [dbo].[AddressAttributeValue] ADD CONSTRAINT [PK_AddressAttributeValue] PRIMARY KEY CLUSTERED ([Id])
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
CREATE NONCLUSTERED INDEX [IX_Affiliate_AddressId]
ON [dbo].[Affiliate] (
  [AddressId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Affiliate
-- ----------------------------
ALTER TABLE [dbo].[Affiliate] ADD CONSTRAINT [PK_Affiliate] PRIMARY KEY CLUSTERED ([Id])
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
CREATE NONCLUSTERED INDEX [IX_BackInStockSubscription_CustomerId]
ON [dbo].[BackInStockSubscription] (
  [CustomerId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_BackInStockSubscription_ProductId]
ON [dbo].[BackInStockSubscription] (
  [ProductId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table BackInStockSubscription
-- ----------------------------
ALTER TABLE [dbo].[BackInStockSubscription] ADD CONSTRAINT [PK_BackInStockSubscription] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for BlogComment
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[BlogComment]', RESEED, 2)
GO


-- ----------------------------
-- Indexes structure for table BlogComment
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_BlogComment_StoreId]
ON [dbo].[BlogComment] (
  [StoreId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_BlogComment_CustomerId]
ON [dbo].[BlogComment] (
  [CustomerId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_BlogComment_BlogPostId]
ON [dbo].[BlogComment] (
  [BlogPostId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table BlogComment
-- ----------------------------
ALTER TABLE [dbo].[BlogComment] ADD CONSTRAINT [PK_BlogComment] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for BlogPost
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[BlogPost]', RESEED, 2)
GO


-- ----------------------------
-- Indexes structure for table BlogPost
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_BlogPost_LanguageId]
ON [dbo].[BlogPost] (
  [LanguageId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table BlogPost
-- ----------------------------
ALTER TABLE [dbo].[BlogPost] ADD CONSTRAINT [PK_BlogPost] PRIMARY KEY CLUSTERED ([Id])
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
ALTER TABLE [dbo].[Campaign] ADD CONSTRAINT [PK_Campaign] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Category
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Category]', RESEED, 16)
GO


-- ----------------------------
-- Indexes structure for table Category
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Category_DisplayOrder]
ON [dbo].[Category] (
  [DisplayOrder] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Category_ParentCategoryId]
ON [dbo].[Category] (
  [ParentCategoryId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Category_LimitedToStores]
ON [dbo].[Category] (
  [LimitedToStores] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Category_SubjectToAcl]
ON [dbo].[Category] (
  [SubjectToAcl] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Category_Deleted_Extended]
ON [dbo].[Category] (
  [Deleted] ASC
)
INCLUDE ([Id], [Name], [SubjectToAcl], [LimitedToStores], [Published])
GO


-- ----------------------------
-- Primary Key structure for table Category
-- ----------------------------
ALTER TABLE [dbo].[Category] ADD CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED ([Id])
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
ALTER TABLE [dbo].[CategoryTemplate] ADD CONSTRAINT [PK_CategoryTemplate] PRIMARY KEY CLUSTERED ([Id])
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
ALTER TABLE [dbo].[CheckoutAttribute] ADD CONSTRAINT [PK_CheckoutAttribute] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for CheckoutAttributeValue
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[CheckoutAttributeValue]', RESEED, 2)
GO


-- ----------------------------
-- Indexes structure for table CheckoutAttributeValue
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_CheckoutAttributeValue_CheckoutAttributeId]
ON [dbo].[CheckoutAttributeValue] (
  [CheckoutAttributeId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table CheckoutAttributeValue
-- ----------------------------
ALTER TABLE [dbo].[CheckoutAttributeValue] ADD CONSTRAINT [PK_CheckoutAttributeValue] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Country
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Country]', RESEED, 240)
GO


-- ----------------------------
-- Indexes structure for table Country
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Country_DisplayOrder]
ON [dbo].[Country] (
  [DisplayOrder] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Country
-- ----------------------------
ALTER TABLE [dbo].[Country] ADD CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED ([Id])
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
ALTER TABLE [dbo].[CrossSellProduct] ADD CONSTRAINT [PK_CrossSellProduct] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Currency
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Currency]', RESEED, 11)
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
ALTER TABLE [dbo].[Currency] ADD CONSTRAINT [PK_Currency] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Customer
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Customer]', RESEED, 9)
GO


-- ----------------------------
-- Indexes structure for table Customer
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Customer_BillingAddress_Id]
ON [dbo].[Customer] (
  [BillingAddress_Id] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Customer_ShippingAddress_Id]
ON [dbo].[Customer] (
  [ShippingAddress_Id] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Customer_Email]
ON [dbo].[Customer] (
  [Email] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Customer_Username]
ON [dbo].[Customer] (
  [Username] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Customer_CustomerGuid]
ON [dbo].[Customer] (
  [CustomerGuid] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Customer_SystemName]
ON [dbo].[Customer] (
  [SystemName] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Customer_CreatedOnUtc]
ON [dbo].[Customer] (
  [CreatedOnUtc] DESC
)
GO


-- ----------------------------
-- Primary Key structure for table Customer
-- ----------------------------
ALTER TABLE [dbo].[Customer] ADD CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table Customer_CustomerRole_Mapping
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Customer_CustomerRole_Mapping_Customer_Id]
ON [dbo].[Customer_CustomerRole_Mapping] (
  [Customer_Id] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Customer_CustomerRole_Mapping_CustomerRole_Id]
ON [dbo].[Customer_CustomerRole_Mapping] (
  [CustomerRole_Id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Customer_CustomerRole_Mapping
-- ----------------------------
ALTER TABLE [dbo].[Customer_CustomerRole_Mapping] ADD CONSTRAINT [PK_Customer_CustomerRole_Mapping] PRIMARY KEY CLUSTERED ([Customer_Id], [CustomerRole_Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table CustomerAddresses
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_CustomerAddresses_Address_Id]
ON [dbo].[CustomerAddresses] (
  [Address_Id] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_CustomerAddresses_Customer_Id]
ON [dbo].[CustomerAddresses] (
  [Customer_Id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table CustomerAddresses
-- ----------------------------
ALTER TABLE [dbo].[CustomerAddresses] ADD CONSTRAINT [PK_CustomerAddresses] PRIMARY KEY CLUSTERED ([Address_Id], [Customer_Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for CustomerAttribute
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[CustomerAttribute]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table CustomerAttribute
-- ----------------------------
ALTER TABLE [dbo].[CustomerAttribute] ADD CONSTRAINT [PK_CustomerAttribute] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for CustomerAttributeValue
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[CustomerAttributeValue]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table CustomerAttributeValue
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_CustomerAttributeValue_CustomerAttributeId]
ON [dbo].[CustomerAttributeValue] (
  [CustomerAttributeId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table CustomerAttributeValue
-- ----------------------------
ALTER TABLE [dbo].[CustomerAttributeValue] ADD CONSTRAINT [PK_CustomerAttributeValue] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for CustomerPassword
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[CustomerPassword]', RESEED, 6)
GO


-- ----------------------------
-- Indexes structure for table CustomerPassword
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_CustomerPassword_CustomerId]
ON [dbo].[CustomerPassword] (
  [CustomerId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table CustomerPassword
-- ----------------------------
ALTER TABLE [dbo].[CustomerPassword] ADD CONSTRAINT [PK_CustomerPassword] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for CustomerRole
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[CustomerRole]', RESEED, 5)
GO


-- ----------------------------
-- Primary Key structure for table CustomerRole
-- ----------------------------
ALTER TABLE [dbo].[CustomerRole] ADD CONSTRAINT [PK_CustomerRole] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for DeliveryDate
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[DeliveryDate]', RESEED, 3)
GO


-- ----------------------------
-- Primary Key structure for table DeliveryDate
-- ----------------------------
ALTER TABLE [dbo].[DeliveryDate] ADD CONSTRAINT [PK_DeliveryDate] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Discount
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Discount]', RESEED, 2)
GO


-- ----------------------------
-- Primary Key structure for table Discount
-- ----------------------------
ALTER TABLE [dbo].[Discount] ADD CONSTRAINT [PK_Discount] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table Discount_AppliedToCategories
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Discount_AppliedToCategories_Discount_Id]
ON [dbo].[Discount_AppliedToCategories] (
  [Discount_Id] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Discount_AppliedToCategories_Category_Id]
ON [dbo].[Discount_AppliedToCategories] (
  [Category_Id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Discount_AppliedToCategories
-- ----------------------------
ALTER TABLE [dbo].[Discount_AppliedToCategories] ADD CONSTRAINT [PK_Discount_AppliedToCategories] PRIMARY KEY CLUSTERED ([Discount_Id], [Category_Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table Discount_AppliedToManufacturers
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Discount_AppliedToManufacturers_Discount_Id]
ON [dbo].[Discount_AppliedToManufacturers] (
  [Discount_Id] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Discount_AppliedToManufacturers_Manufacturer_Id]
ON [dbo].[Discount_AppliedToManufacturers] (
  [Manufacturer_Id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Discount_AppliedToManufacturers
-- ----------------------------
ALTER TABLE [dbo].[Discount_AppliedToManufacturers] ADD CONSTRAINT [PK_Discount_AppliedToManufacturers] PRIMARY KEY CLUSTERED ([Discount_Id], [Manufacturer_Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table Discount_AppliedToProducts
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Discount_AppliedToProducts_Discount_Id]
ON [dbo].[Discount_AppliedToProducts] (
  [Discount_Id] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Discount_AppliedToProducts_Product_Id]
ON [dbo].[Discount_AppliedToProducts] (
  [Product_Id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Discount_AppliedToProducts
-- ----------------------------
ALTER TABLE [dbo].[Discount_AppliedToProducts] ADD CONSTRAINT [PK_Discount_AppliedToProducts] PRIMARY KEY CLUSTERED ([Discount_Id], [Product_Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for DiscountRequirement
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[DiscountRequirement]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table DiscountRequirement
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_DiscountRequirement_DiscountId]
ON [dbo].[DiscountRequirement] (
  [DiscountId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_DiscountRequirement_ParentId]
ON [dbo].[DiscountRequirement] (
  [ParentId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table DiscountRequirement
-- ----------------------------
ALTER TABLE [dbo].[DiscountRequirement] ADD CONSTRAINT [PK_DiscountRequirement] PRIMARY KEY CLUSTERED ([Id])
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
CREATE NONCLUSTERED INDEX [IX_DiscountUsageHistory_DiscountId]
ON [dbo].[DiscountUsageHistory] (
  [DiscountId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_DiscountUsageHistory_OrderId]
ON [dbo].[DiscountUsageHistory] (
  [OrderId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table DiscountUsageHistory
-- ----------------------------
ALTER TABLE [dbo].[DiscountUsageHistory] ADD CONSTRAINT [PK_DiscountUsageHistory] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Download
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Download]', RESEED, 5)
GO


-- ----------------------------
-- Primary Key structure for table Download
-- ----------------------------
ALTER TABLE [dbo].[Download] ADD CONSTRAINT [PK_Download] PRIMARY KEY CLUSTERED ([Id])
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
ALTER TABLE [dbo].[EmailAccount] ADD CONSTRAINT [PK_EmailAccount] PRIMARY KEY CLUSTERED ([Id])
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
CREATE NONCLUSTERED INDEX [IX_ExternalAuthenticationRecord_CustomerId]
ON [dbo].[ExternalAuthenticationRecord] (
  [CustomerId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table ExternalAuthenticationRecord
-- ----------------------------
ALTER TABLE [dbo].[ExternalAuthenticationRecord] ADD CONSTRAINT [PK_ExternalAuthenticationRecord] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for FacebookPixelConfiguration
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[FacebookPixelConfiguration]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table FacebookPixelConfiguration
-- ----------------------------
ALTER TABLE [dbo].[FacebookPixelConfiguration] ADD CONSTRAINT [PK_FacebookPixelConfiguration] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Forums_Forum
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Forums_Forum]', RESEED, 3)
GO


-- ----------------------------
-- Indexes structure for table Forums_Forum
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Forums_Forum_ForumGroupId]
ON [dbo].[Forums_Forum] (
  [ForumGroupId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Forums_Forum_DisplayOrder]
ON [dbo].[Forums_Forum] (
  [DisplayOrder] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Forums_Forum
-- ----------------------------
ALTER TABLE [dbo].[Forums_Forum] ADD CONSTRAINT [PK_Forums_Forum] PRIMARY KEY CLUSTERED ([Id])
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
CREATE NONCLUSTERED INDEX [IX_Forums_Group_DisplayOrder]
ON [dbo].[Forums_Group] (
  [DisplayOrder] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Forums_Group
-- ----------------------------
ALTER TABLE [dbo].[Forums_Group] ADD CONSTRAINT [PK_Forums_Group] PRIMARY KEY CLUSTERED ([Id])
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


-- ----------------------------
-- Primary Key structure for table Forums_Post
-- ----------------------------
ALTER TABLE [dbo].[Forums_Post] ADD CONSTRAINT [PK_Forums_Post] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Forums_PostVote
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Forums_PostVote]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table Forums_PostVote
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Forums_PostVote_ForumPostId]
ON [dbo].[Forums_PostVote] (
  [ForumPostId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Forums_PostVote
-- ----------------------------
ALTER TABLE [dbo].[Forums_PostVote] ADD CONSTRAINT [PK_Forums_PostVote] PRIMARY KEY CLUSTERED ([Id])
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
CREATE NONCLUSTERED INDEX [IX_Forums_PrivateMessage_FromCustomerId]
ON [dbo].[Forums_PrivateMessage] (
  [FromCustomerId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Forums_PrivateMessage_ToCustomerId]
ON [dbo].[Forums_PrivateMessage] (
  [ToCustomerId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Forums_PrivateMessage
-- ----------------------------
ALTER TABLE [dbo].[Forums_PrivateMessage] ADD CONSTRAINT [PK_Forums_PrivateMessage] PRIMARY KEY CLUSTERED ([Id])
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
CREATE NONCLUSTERED INDEX [IX_Forums_Subscription_CustomerId]
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
ALTER TABLE [dbo].[Forums_Subscription] ADD CONSTRAINT [PK_Forums_Subscription] PRIMARY KEY CLUSTERED ([Id])
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
CREATE NONCLUSTERED INDEX [IX_Forums_Topic_CustomerId]
ON [dbo].[Forums_Topic] (
  [CustomerId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Forums_Topic_ForumId]
ON [dbo].[Forums_Topic] (
  [ForumId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Forums_Topic
-- ----------------------------
ALTER TABLE [dbo].[Forums_Topic] ADD CONSTRAINT [PK_Forums_Topic] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for GdprConsent
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[GdprConsent]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table GdprConsent
-- ----------------------------
ALTER TABLE [dbo].[GdprConsent] ADD CONSTRAINT [PK_GdprConsent] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for GdprLog
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[GdprLog]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table GdprLog
-- ----------------------------
ALTER TABLE [dbo].[GdprLog] ADD CONSTRAINT [PK_GdprLog] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for GenericAttribute
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[GenericAttribute]', RESEED, 13)
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


-- ----------------------------
-- Primary Key structure for table GenericAttribute
-- ----------------------------
ALTER TABLE [dbo].[GenericAttribute] ADD CONSTRAINT [PK_GenericAttribute] PRIMARY KEY CLUSTERED ([Id])
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
CREATE NONCLUSTERED INDEX [IX_GiftCard_PurchasedWithOrderItemId]
ON [dbo].[GiftCard] (
  [PurchasedWithOrderItemId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table GiftCard
-- ----------------------------
ALTER TABLE [dbo].[GiftCard] ADD CONSTRAINT [PK_GiftCard] PRIMARY KEY CLUSTERED ([Id])
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
CREATE NONCLUSTERED INDEX [IX_GiftCardUsageHistory_GiftCardId]
ON [dbo].[GiftCardUsageHistory] (
  [GiftCardId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_GiftCardUsageHistory_UsedWithOrderId]
ON [dbo].[GiftCardUsageHistory] (
  [UsedWithOrderId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table GiftCardUsageHistory
-- ----------------------------
ALTER TABLE [dbo].[GiftCardUsageHistory] ADD CONSTRAINT [PK_GiftCardUsageHistory] PRIMARY KEY CLUSTERED ([Id])
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
ALTER TABLE [dbo].[Language] ADD CONSTRAINT [PK_Language] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for LocaleStringResource
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[LocaleStringResource]', RESEED, 7020)
GO


-- ----------------------------
-- Indexes structure for table LocaleStringResource
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_LocaleStringResource_LanguageId]
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
ALTER TABLE [dbo].[LocaleStringResource] ADD CONSTRAINT [PK_LocaleStringResource] PRIMARY KEY CLUSTERED ([Id])
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
CREATE NONCLUSTERED INDEX [IX_LocalizedProperty_LanguageId]
ON [dbo].[LocalizedProperty] (
  [LanguageId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table LocalizedProperty
-- ----------------------------
ALTER TABLE [dbo].[LocalizedProperty] ADD CONSTRAINT [PK_LocalizedProperty] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Log
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Log]', RESEED, 15)
GO


-- ----------------------------
-- Indexes structure for table Log
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Log_CustomerId]
ON [dbo].[Log] (
  [CustomerId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Log_CreatedOnUtc]
ON [dbo].[Log] (
  [CreatedOnUtc] DESC
)
GO


-- ----------------------------
-- Primary Key structure for table Log
-- ----------------------------
ALTER TABLE [dbo].[Log] ADD CONSTRAINT [PK_Log] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Manufacturer
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Manufacturer]', RESEED, 3)
GO


-- ----------------------------
-- Indexes structure for table Manufacturer
-- ----------------------------
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

CREATE NONCLUSTERED INDEX [IX_Manufacturer_SubjectToAcl]
ON [dbo].[Manufacturer] (
  [SubjectToAcl] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Manufacturer
-- ----------------------------
ALTER TABLE [dbo].[Manufacturer] ADD CONSTRAINT [PK_Manufacturer] PRIMARY KEY CLUSTERED ([Id])
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
ALTER TABLE [dbo].[ManufacturerTemplate] ADD CONSTRAINT [PK_ManufacturerTemplate] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for MeasureDimension
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[MeasureDimension]', RESEED, 4)
GO


-- ----------------------------
-- Primary Key structure for table MeasureDimension
-- ----------------------------
ALTER TABLE [dbo].[MeasureDimension] ADD CONSTRAINT [PK_MeasureDimension] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for MeasureWeight
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[MeasureWeight]', RESEED, 4)
GO


-- ----------------------------
-- Primary Key structure for table MeasureWeight
-- ----------------------------
ALTER TABLE [dbo].[MeasureWeight] ADD CONSTRAINT [PK_MeasureWeight] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for MessageTemplate
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[MessageTemplate]', RESEED, 46)
GO


-- ----------------------------
-- Primary Key structure for table MessageTemplate
-- ----------------------------
ALTER TABLE [dbo].[MessageTemplate] ADD CONSTRAINT [PK_MessageTemplate] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for News
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[News]', RESEED, 3)
GO


-- ----------------------------
-- Indexes structure for table News
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_News_LanguageId]
ON [dbo].[News] (
  [LanguageId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table News
-- ----------------------------
ALTER TABLE [dbo].[News] ADD CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for NewsComment
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[NewsComment]', RESEED, 3)
GO


-- ----------------------------
-- Indexes structure for table NewsComment
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_NewsComment_CustomerId]
ON [dbo].[NewsComment] (
  [CustomerId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_NewsComment_NewsItemId]
ON [dbo].[NewsComment] (
  [NewsItemId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_NewsComment_StoreId]
ON [dbo].[NewsComment] (
  [StoreId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table NewsComment
-- ----------------------------
ALTER TABLE [dbo].[NewsComment] ADD CONSTRAINT [PK_NewsComment] PRIMARY KEY CLUSTERED ([Id])
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
CREATE NONCLUSTERED INDEX [IX_NewsletterSubscription_Email_StoreId]
ON [dbo].[NewsLetterSubscription] (
  [Email] ASC,
  [StoreId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table NewsLetterSubscription
-- ----------------------------
ALTER TABLE [dbo].[NewsLetterSubscription] ADD CONSTRAINT [PK_NewsLetterSubscription] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Order
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Order]', RESEED, 5)
GO


-- ----------------------------
-- Indexes structure for table Order
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Order_BillingAddressId]
ON [dbo].[Order] (
  [BillingAddressId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Order_CustomerId]
ON [dbo].[Order] (
  [CustomerId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Order_PickupAddressId]
ON [dbo].[Order] (
  [PickupAddressId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Order_ShippingAddressId]
ON [dbo].[Order] (
  [ShippingAddressId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Order_CreatedOnUtc]
ON [dbo].[Order] (
  [CreatedOnUtc] DESC
)
GO


-- ----------------------------
-- Primary Key structure for table Order
-- ----------------------------
ALTER TABLE [dbo].[Order] ADD CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for OrderItem
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[OrderItem]', RESEED, 12)
GO


-- ----------------------------
-- Indexes structure for table OrderItem
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_OrderItem_OrderId]
ON [dbo].[OrderItem] (
  [OrderId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_OrderItem_ProductId]
ON [dbo].[OrderItem] (
  [ProductId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table OrderItem
-- ----------------------------
ALTER TABLE [dbo].[OrderItem] ADD CONSTRAINT [PK_OrderItem] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for OrderNote
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[OrderNote]', RESEED, 11)
GO


-- ----------------------------
-- Indexes structure for table OrderNote
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_OrderNote_OrderId]
ON [dbo].[OrderNote] (
  [OrderId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table OrderNote
-- ----------------------------
ALTER TABLE [dbo].[OrderNote] ADD CONSTRAINT [PK_OrderNote] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for PermissionRecord
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[PermissionRecord]', RESEED, 52)
GO


-- ----------------------------
-- Primary Key structure for table PermissionRecord
-- ----------------------------
ALTER TABLE [dbo].[PermissionRecord] ADD CONSTRAINT [PK_PermissionRecord] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table PermissionRecord_Role_Mapping
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_PermissionRecord_Role_Mapping_PermissionRecord_Id]
ON [dbo].[PermissionRecord_Role_Mapping] (
  [PermissionRecord_Id] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_PermissionRecord_Role_Mapping_CustomerRole_Id]
ON [dbo].[PermissionRecord_Role_Mapping] (
  [CustomerRole_Id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table PermissionRecord_Role_Mapping
-- ----------------------------
ALTER TABLE [dbo].[PermissionRecord_Role_Mapping] ADD CONSTRAINT [PK_PermissionRecord_Role_Mapping] PRIMARY KEY CLUSTERED ([PermissionRecord_Id], [CustomerRole_Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Picture
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Picture]', RESEED, 78)
GO


-- ----------------------------
-- Primary Key structure for table Picture
-- ----------------------------
ALTER TABLE [dbo].[Picture] ADD CONSTRAINT [PK_Picture] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for PictureBinary
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[PictureBinary]', RESEED, 78)
GO


-- ----------------------------
-- Indexes structure for table PictureBinary
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_PictureBinary_PictureId]
ON [dbo].[PictureBinary] (
  [PictureId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table PictureBinary
-- ----------------------------
ALTER TABLE [dbo].[PictureBinary] ADD CONSTRAINT [PK_PictureBinary] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Poll
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Poll]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table Poll
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Poll_LanguageId]
ON [dbo].[Poll] (
  [LanguageId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Poll
-- ----------------------------
ALTER TABLE [dbo].[Poll] ADD CONSTRAINT [PK_Poll] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for PollAnswer
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[PollAnswer]', RESEED, 4)
GO


-- ----------------------------
-- Indexes structure for table PollAnswer
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_PollAnswer_PollId]
ON [dbo].[PollAnswer] (
  [PollId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table PollAnswer
-- ----------------------------
ALTER TABLE [dbo].[PollAnswer] ADD CONSTRAINT [PK_PollAnswer] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for PollVotingRecord
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[PollVotingRecord]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table PollVotingRecord
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_PollVotingRecord_PollAnswerId]
ON [dbo].[PollVotingRecord] (
  [PollAnswerId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_PollVotingRecord_CustomerId]
ON [dbo].[PollVotingRecord] (
  [CustomerId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table PollVotingRecord
-- ----------------------------
ALTER TABLE [dbo].[PollVotingRecord] ADD CONSTRAINT [PK_PollVotingRecord] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for PredefinedProductAttributeValue
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[PredefinedProductAttributeValue]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table PredefinedProductAttributeValue
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_PredefinedProductAttributeValue_ProductAttributeId]
ON [dbo].[PredefinedProductAttributeValue] (
  [ProductAttributeId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table PredefinedProductAttributeValue
-- ----------------------------
ALTER TABLE [dbo].[PredefinedProductAttributeValue] ADD CONSTRAINT [PK_PredefinedProductAttributeValue] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Product
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Product]', RESEED, 45)
GO


-- ----------------------------
-- Indexes structure for table Product
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Product_PriceDatesEtc]
ON [dbo].[Product] (
  [Price] ASC,
  [AvailableStartDateTimeUtc] ASC,
  [AvailableEndDateTimeUtc] ASC,
  [Published] ASC,
  [Deleted] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Product_Deleted_and_Published]
ON [dbo].[Product] (
  [Published] ASC,
  [Deleted] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Product_Published]
ON [dbo].[Product] (
  [Published] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Product_ShowOnHomepage]
ON [dbo].[Product] (
  [ShowOnHomepage] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Product_ParentGroupedProductId]
ON [dbo].[Product] (
  [ParentGroupedProductId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Product_VisibleIndividually]
ON [dbo].[Product] (
  [VisibleIndividually] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Product_LimitedToStores]
ON [dbo].[Product] (
  [LimitedToStores] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Product_SubjectToAcl]
ON [dbo].[Product] (
  [SubjectToAcl] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Product_Delete_Id]
ON [dbo].[Product] (
  [Deleted] ASC,
  [Id] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_GetLowStockProducts]
ON [dbo].[Product] (
  [Deleted] ASC,
  [VendorId] ASC,
  [ProductTypeId] ASC,
  [ManageInventoryMethodId] ASC,
  [MinStockQuantity] ASC,
  [UseMultipleWarehouses] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Product_VisibleIndividually_Published_Deleted_Extended]
ON [dbo].[Product] (
  [VisibleIndividually] ASC,
  [Published] ASC,
  [Deleted] ASC
)
INCLUDE ([Id], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc])
GO


-- ----------------------------
-- Primary Key structure for table Product
-- ----------------------------
ALTER TABLE [dbo].[Product] ADD CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Product_Category_Mapping
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Product_Category_Mapping]', RESEED, 43)
GO


-- ----------------------------
-- Indexes structure for table Product_Category_Mapping
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Product_Category_Mapping_CategoryId]
ON [dbo].[Product_Category_Mapping] (
  [CategoryId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Product_Category_Mapping_ProductId]
ON [dbo].[Product_Category_Mapping] (
  [ProductId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_PCM_Product_and_Category]
ON [dbo].[Product_Category_Mapping] (
  [CategoryId] ASC,
  [ProductId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Product_Category_Mapping_IsFeaturedProduct]
ON [dbo].[Product_Category_Mapping] (
  [IsFeaturedProduct] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_PCM_ProductId_Extended]
ON [dbo].[Product_Category_Mapping] (
  [ProductId] ASC,
  [IsFeaturedProduct] ASC
)
INCLUDE ([CategoryId])
GO


-- ----------------------------
-- Primary Key structure for table Product_Category_Mapping
-- ----------------------------
ALTER TABLE [dbo].[Product_Category_Mapping] ADD CONSTRAINT [PK_Product_Category_Mapping] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Product_Manufacturer_Mapping
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Product_Manufacturer_Mapping]', RESEED, 7)
GO


-- ----------------------------
-- Indexes structure for table Product_Manufacturer_Mapping
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Product_Manufacturer_Mapping_ManufacturerId]
ON [dbo].[Product_Manufacturer_Mapping] (
  [ManufacturerId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Product_Manufacturer_Mapping_ProductId]
ON [dbo].[Product_Manufacturer_Mapping] (
  [ProductId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Product_Manufacturer_Mapping_IsFeaturedProduct]
ON [dbo].[Product_Manufacturer_Mapping] (
  [IsFeaturedProduct] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_PMM_Product_and_Manufacturer]
ON [dbo].[Product_Manufacturer_Mapping] (
  [ManufacturerId] ASC,
  [ProductId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_PMM_ProductId_Extended]
ON [dbo].[Product_Manufacturer_Mapping] (
  [ProductId] ASC,
  [IsFeaturedProduct] ASC
)
INCLUDE ([ManufacturerId])
GO


-- ----------------------------
-- Primary Key structure for table Product_Manufacturer_Mapping
-- ----------------------------
ALTER TABLE [dbo].[Product_Manufacturer_Mapping] ADD CONSTRAINT [PK_Product_Manufacturer_Mapping] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Product_Picture_Mapping
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Product_Picture_Mapping]', RESEED, 55)
GO


-- ----------------------------
-- Indexes structure for table Product_Picture_Mapping
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Product_Picture_Mapping_PictureId]
ON [dbo].[Product_Picture_Mapping] (
  [PictureId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Product_Picture_Mapping_ProductId]
ON [dbo].[Product_Picture_Mapping] (
  [ProductId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Product_Picture_Mapping
-- ----------------------------
ALTER TABLE [dbo].[Product_Picture_Mapping] ADD CONSTRAINT [PK_Product_Picture_Mapping] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Product_ProductAttribute_Mapping
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Product_ProductAttribute_Mapping]', RESEED, 13)
GO


-- ----------------------------
-- Indexes structure for table Product_ProductAttribute_Mapping
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Product_ProductAttribute_Mapping_ProductAttributeId]
ON [dbo].[Product_ProductAttribute_Mapping] (
  [ProductAttributeId] ASC
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


-- ----------------------------
-- Primary Key structure for table Product_ProductAttribute_Mapping
-- ----------------------------
ALTER TABLE [dbo].[Product_ProductAttribute_Mapping] ADD CONSTRAINT [PK_Product_ProductAttribute_Mapping] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table Product_ProductTag_Mapping
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Product_ProductTag_Mapping_Product_Id]
ON [dbo].[Product_ProductTag_Mapping] (
  [Product_Id] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Product_ProductTag_Mapping_ProductTag_Id]
ON [dbo].[Product_ProductTag_Mapping] (
  [ProductTag_Id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Product_ProductTag_Mapping
-- ----------------------------
ALTER TABLE [dbo].[Product_ProductTag_Mapping] ADD CONSTRAINT [PK_Product_ProductTag_Mapping] PRIMARY KEY CLUSTERED ([Product_Id], [ProductTag_Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Product_SpecificationAttribute_Mapping
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Product_SpecificationAttribute_Mapping]', RESEED, 26)
GO


-- ----------------------------
-- Indexes structure for table Product_SpecificationAttribute_Mapping
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Product_SpecificationAttribute_Mapping_ProductId]
ON [dbo].[Product_SpecificationAttribute_Mapping] (
  [ProductId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Product_SpecificationAttribute_Mapping_SpecificationAttributeOptionId]
ON [dbo].[Product_SpecificationAttribute_Mapping] (
  [SpecificationAttributeOptionId] ASC
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


-- ----------------------------
-- Primary Key structure for table Product_SpecificationAttribute_Mapping
-- ----------------------------
ALTER TABLE [dbo].[Product_SpecificationAttribute_Mapping] ADD CONSTRAINT [PK_Product_SpecificationAttribute_Mapping] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ProductAttribute
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ProductAttribute]', RESEED, 9)
GO


-- ----------------------------
-- Primary Key structure for table ProductAttribute
-- ----------------------------
ALTER TABLE [dbo].[ProductAttribute] ADD CONSTRAINT [PK_ProductAttribute] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ProductAttributeCombination
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ProductAttributeCombination]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table ProductAttributeCombination
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_ProductAttributeCombination_ProductId]
ON [dbo].[ProductAttributeCombination] (
  [ProductId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table ProductAttributeCombination
-- ----------------------------
ALTER TABLE [dbo].[ProductAttributeCombination] ADD CONSTRAINT [PK_ProductAttributeCombination] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ProductAttributeValue
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ProductAttributeValue]', RESEED, 37)
GO


-- ----------------------------
-- Indexes structure for table ProductAttributeValue
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_ProductAttributeValue_ProductAttributeMappingId]
ON [dbo].[ProductAttributeValue] (
  [ProductAttributeMappingId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_ProductAttributeValue_ProductAttributeMappingId_DisplayOrder]
ON [dbo].[ProductAttributeValue] (
  [ProductAttributeMappingId] ASC,
  [DisplayOrder] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table ProductAttributeValue
-- ----------------------------
ALTER TABLE [dbo].[ProductAttributeValue] ADD CONSTRAINT [PK_ProductAttributeValue] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ProductAvailabilityRange
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ProductAvailabilityRange]', RESEED, 3)
GO


-- ----------------------------
-- Primary Key structure for table ProductAvailabilityRange
-- ----------------------------
ALTER TABLE [dbo].[ProductAvailabilityRange] ADD CONSTRAINT [PK_ProductAvailabilityRange] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ProductReview
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ProductReview]', RESEED, 33)
GO


-- ----------------------------
-- Indexes structure for table ProductReview
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_ProductReview_CustomerId]
ON [dbo].[ProductReview] (
  [CustomerId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_ProductReview_ProductId]
ON [dbo].[ProductReview] (
  [ProductId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_ProductReview_StoreId]
ON [dbo].[ProductReview] (
  [StoreId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table ProductReview
-- ----------------------------
ALTER TABLE [dbo].[ProductReview] ADD CONSTRAINT [PK_ProductReview] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ProductReview_ReviewType_Mapping
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ProductReview_ReviewType_Mapping]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table ProductReview_ReviewType_Mapping
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_ProductReview_ReviewType_Mapping_ProductReviewId]
ON [dbo].[ProductReview_ReviewType_Mapping] (
  [ProductReviewId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_ProductReview_ReviewType_Mapping_ReviewTypeId]
ON [dbo].[ProductReview_ReviewType_Mapping] (
  [ReviewTypeId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table ProductReview_ReviewType_Mapping
-- ----------------------------
ALTER TABLE [dbo].[ProductReview_ReviewType_Mapping] ADD CONSTRAINT [PK_ProductReview_ReviewType_Mapping] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ProductReviewHelpfulness
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ProductReviewHelpfulness]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table ProductReviewHelpfulness
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_ProductReviewHelpfulness_ProductReviewId]
ON [dbo].[ProductReviewHelpfulness] (
  [ProductReviewId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table ProductReviewHelpfulness
-- ----------------------------
ALTER TABLE [dbo].[ProductReviewHelpfulness] ADD CONSTRAINT [PK_ProductReviewHelpfulness] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ProductTag
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ProductTag]', RESEED, 16)
GO


-- ----------------------------
-- Indexes structure for table ProductTag
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_ProductTag_Name]
ON [dbo].[ProductTag] (
  [Name] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table ProductTag
-- ----------------------------
ALTER TABLE [dbo].[ProductTag] ADD CONSTRAINT [PK_ProductTag] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ProductTemplate
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ProductTemplate]', RESEED, 2)
GO


-- ----------------------------
-- Primary Key structure for table ProductTemplate
-- ----------------------------
ALTER TABLE [dbo].[ProductTemplate] ADD CONSTRAINT [PK_ProductTemplate] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ProductWarehouseInventory
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ProductWarehouseInventory]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table ProductWarehouseInventory
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_ProductWarehouseInventory_ProductId]
ON [dbo].[ProductWarehouseInventory] (
  [ProductId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_ProductWarehouseInventory_WarehouseId]
ON [dbo].[ProductWarehouseInventory] (
  [WarehouseId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table ProductWarehouseInventory
-- ----------------------------
ALTER TABLE [dbo].[ProductWarehouseInventory] ADD CONSTRAINT [PK_ProductWarehouseInventory] PRIMARY KEY CLUSTERED ([Id])
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
CREATE NONCLUSTERED INDEX [IX_QueuedEmail_EmailAccountId]
ON [dbo].[QueuedEmail] (
  [EmailAccountId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_QueuedEmail_CreatedOnUtc]
ON [dbo].[QueuedEmail] (
  [CreatedOnUtc] DESC
)
GO

CREATE NONCLUSTERED INDEX [IX_QueuedEmail_SentOnUtc_DontSendBeforeDateUtc_Extended]
ON [dbo].[QueuedEmail] (
  [SentOnUtc] ASC,
  [DontSendBeforeDateUtc] ASC
)
INCLUDE ([SentTries])
GO


-- ----------------------------
-- Primary Key structure for table QueuedEmail
-- ----------------------------
ALTER TABLE [dbo].[QueuedEmail] ADD CONSTRAINT [PK_QueuedEmail] PRIMARY KEY CLUSTERED ([Id])
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
CREATE NONCLUSTERED INDEX [IX_RecurringPayment_InitialOrderId]
ON [dbo].[RecurringPayment] (
  [InitialOrderId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table RecurringPayment
-- ----------------------------
ALTER TABLE [dbo].[RecurringPayment] ADD CONSTRAINT [PK_RecurringPayment] PRIMARY KEY CLUSTERED ([Id])
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
CREATE NONCLUSTERED INDEX [IX_RecurringPaymentHistory_RecurringPaymentId]
ON [dbo].[RecurringPaymentHistory] (
  [RecurringPaymentId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table RecurringPaymentHistory
-- ----------------------------
ALTER TABLE [dbo].[RecurringPaymentHistory] ADD CONSTRAINT [PK_RecurringPaymentHistory] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for RelatedProduct
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[RelatedProduct]', RESEED, 76)
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
ALTER TABLE [dbo].[RelatedProduct] ADD CONSTRAINT [PK_RelatedProduct] PRIMARY KEY CLUSTERED ([Id])
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
CREATE NONCLUSTERED INDEX [IX_ReturnRequest_CustomerId]
ON [dbo].[ReturnRequest] (
  [CustomerId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table ReturnRequest
-- ----------------------------
ALTER TABLE [dbo].[ReturnRequest] ADD CONSTRAINT [PK_ReturnRequest] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ReturnRequestAction
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ReturnRequestAction]', RESEED, 3)
GO


-- ----------------------------
-- Primary Key structure for table ReturnRequestAction
-- ----------------------------
ALTER TABLE [dbo].[ReturnRequestAction] ADD CONSTRAINT [PK_ReturnRequestAction] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ReturnRequestReason
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ReturnRequestReason]', RESEED, 3)
GO


-- ----------------------------
-- Primary Key structure for table ReturnRequestReason
-- ----------------------------
ALTER TABLE [dbo].[ReturnRequestReason] ADD CONSTRAINT [PK_ReturnRequestReason] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ReviewType
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ReviewType]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table ReviewType
-- ----------------------------
ALTER TABLE [dbo].[ReviewType] ADD CONSTRAINT [PK_ReviewType] PRIMARY KEY CLUSTERED ([Id])
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
CREATE NONCLUSTERED INDEX [IX_RewardPointsHistory_CustomerId]
ON [dbo].[RewardPointsHistory] (
  [CustomerId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table RewardPointsHistory
-- ----------------------------
ALTER TABLE [dbo].[RewardPointsHistory] ADD CONSTRAINT [PK_RewardPointsHistory] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ScheduleTask
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ScheduleTask]', RESEED, 7)
GO


-- ----------------------------
-- Primary Key structure for table ScheduleTask
-- ----------------------------
ALTER TABLE [dbo].[ScheduleTask] ADD CONSTRAINT [PK_ScheduleTask] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for SearchTerm
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[SearchTerm]', RESEED, 6)
GO


-- ----------------------------
-- Primary Key structure for table SearchTerm
-- ----------------------------
ALTER TABLE [dbo].[SearchTerm] ADD CONSTRAINT [PK_SearchTerm] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Setting
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Setting]', RESEED, 740)
GO


-- ----------------------------
-- Primary Key structure for table Setting
-- ----------------------------
ALTER TABLE [dbo].[Setting] ADD CONSTRAINT [PK_Setting] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Shipment
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Shipment]', RESEED, 3)
GO


-- ----------------------------
-- Indexes structure for table Shipment
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Shipment_OrderId]
ON [dbo].[Shipment] (
  [OrderId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Shipment
-- ----------------------------
ALTER TABLE [dbo].[Shipment] ADD CONSTRAINT [PK_Shipment] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ShipmentItem
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ShipmentItem]', RESEED, 4)
GO


-- ----------------------------
-- Indexes structure for table ShipmentItem
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_ShipmentItem_ShipmentId]
ON [dbo].[ShipmentItem] (
  [ShipmentId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table ShipmentItem
-- ----------------------------
ALTER TABLE [dbo].[ShipmentItem] ADD CONSTRAINT [PK_ShipmentItem] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ShippingByWeightByTotalRecord
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ShippingByWeightByTotalRecord]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table ShippingByWeightByTotalRecord
-- ----------------------------
ALTER TABLE [dbo].[ShippingByWeightByTotalRecord] ADD CONSTRAINT [PK_ShippingByWeightByTotalRecord] PRIMARY KEY CLUSTERED ([Id])
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
ALTER TABLE [dbo].[ShippingMethod] ADD CONSTRAINT [PK_ShippingMethod] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table ShippingMethodRestrictions
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_ShippingMethodRestrictions_ShippingMethod_Id]
ON [dbo].[ShippingMethodRestrictions] (
  [ShippingMethod_Id] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_ShippingMethodRestrictions_Country_Id]
ON [dbo].[ShippingMethodRestrictions] (
  [Country_Id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table ShippingMethodRestrictions
-- ----------------------------
ALTER TABLE [dbo].[ShippingMethodRestrictions] ADD CONSTRAINT [PK_ShippingMethodRestrictions] PRIMARY KEY CLUSTERED ([ShippingMethod_Id], [Country_Id])
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
CREATE NONCLUSTERED INDEX [IX_ShoppingCartItem_CustomerId]
ON [dbo].[ShoppingCartItem] (
  [CustomerId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_ShoppingCartItem_ProductId]
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
ALTER TABLE [dbo].[ShoppingCartItem] ADD CONSTRAINT [PK_ShoppingCartItem] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for SpecificationAttribute
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[SpecificationAttribute]', RESEED, 5)
GO


-- ----------------------------
-- Indexes structure for table SpecificationAttribute
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_SpecificationAttribute_SpecificationAttributeGroupId]
ON [dbo].[SpecificationAttribute] (
  [SpecificationAttributeGroupId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table SpecificationAttribute
-- ----------------------------
ALTER TABLE [dbo].[SpecificationAttribute] ADD CONSTRAINT [PK_SpecificationAttribute] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for SpecificationAttributeGroup
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[SpecificationAttributeGroup]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table SpecificationAttributeGroup
-- ----------------------------
ALTER TABLE [dbo].[SpecificationAttributeGroup] ADD CONSTRAINT [PK_SpecificationAttributeGroup] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for SpecificationAttributeOption
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[SpecificationAttributeOption]', RESEED, 16)
GO


-- ----------------------------
-- Indexes structure for table SpecificationAttributeOption
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_SpecificationAttributeOption_SpecificationAttributeId]
ON [dbo].[SpecificationAttributeOption] (
  [SpecificationAttributeId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table SpecificationAttributeOption
-- ----------------------------
ALTER TABLE [dbo].[SpecificationAttributeOption] ADD CONSTRAINT [PK_SpecificationAttributeOption] PRIMARY KEY CLUSTERED ([Id])
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
CREATE NONCLUSTERED INDEX [IX_StateProvince_CountryId]
ON [dbo].[StateProvince] (
  [CountryId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table StateProvince
-- ----------------------------
ALTER TABLE [dbo].[StateProvince] ADD CONSTRAINT [PK_StateProvince] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for StockQuantityHistory
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[StockQuantityHistory]', RESEED, 44)
GO


-- ----------------------------
-- Indexes structure for table StockQuantityHistory
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_StockQuantityHistory_ProductId]
ON [dbo].[StockQuantityHistory] (
  [ProductId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table StockQuantityHistory
-- ----------------------------
ALTER TABLE [dbo].[StockQuantityHistory] ADD CONSTRAINT [PK_StockQuantityHistory] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Store
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Store]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table Store
-- ----------------------------
ALTER TABLE [dbo].[Store] ADD CONSTRAINT [PK_Store] PRIMARY KEY CLUSTERED ([Id])
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
CREATE NONCLUSTERED INDEX [IX_StoreMapping_StoreId]
ON [dbo].[StoreMapping] (
  [StoreId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_StoreMapping_EntityId_EntityName]
ON [dbo].[StoreMapping] (
  [EntityId] ASC,
  [EntityName] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table StoreMapping
-- ----------------------------
ALTER TABLE [dbo].[StoreMapping] ADD CONSTRAINT [PK_StoreMapping] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for StorePickupPoint
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[StorePickupPoint]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table StorePickupPoint
-- ----------------------------
ALTER TABLE [dbo].[StorePickupPoint] ADD CONSTRAINT [PK_StorePickupPoint] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for TaxCategory
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[TaxCategory]', RESEED, 5)
GO


-- ----------------------------
-- Primary Key structure for table TaxCategory
-- ----------------------------
ALTER TABLE [dbo].[TaxCategory] ADD CONSTRAINT [PK_TaxCategory] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for TaxRate
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[TaxRate]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table TaxRate
-- ----------------------------
ALTER TABLE [dbo].[TaxRate] ADD CONSTRAINT [PK_TaxRate] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for TaxTransactionLog
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[TaxTransactionLog]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table TaxTransactionLog
-- ----------------------------
ALTER TABLE [dbo].[TaxTransactionLog] ADD CONSTRAINT [PK_TaxTransactionLog] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for TierPrice
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[TierPrice]', RESEED, 9)
GO


-- ----------------------------
-- Indexes structure for table TierPrice
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_TierPrice_CustomerRoleId]
ON [dbo].[TierPrice] (
  [CustomerRoleId] ASC
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
ALTER TABLE [dbo].[TierPrice] ADD CONSTRAINT [PK_TierPrice] PRIMARY KEY CLUSTERED ([Id])
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
ALTER TABLE [dbo].[Topic] ADD CONSTRAINT [PK_Topic] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for TopicTemplate
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[TopicTemplate]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table TopicTemplate
-- ----------------------------
ALTER TABLE [dbo].[TopicTemplate] ADD CONSTRAINT [PK_TopicTemplate] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for UrlRecord
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[UrlRecord]', RESEED, 99)
GO


-- ----------------------------
-- Indexes structure for table UrlRecord
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_UrlRecord_Slug]
ON [dbo].[UrlRecord] (
  [Slug] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_UrlRecord_Custom_1]
ON [dbo].[UrlRecord] (
  [EntityId] ASC,
  [EntityName] ASC,
  [LanguageId] ASC,
  [IsActive] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table UrlRecord
-- ----------------------------
ALTER TABLE [dbo].[UrlRecord] ADD CONSTRAINT [PK_UrlRecord] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Vendor
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Vendor]', RESEED, 2)
GO


-- ----------------------------
-- Primary Key structure for table Vendor
-- ----------------------------
ALTER TABLE [dbo].[Vendor] ADD CONSTRAINT [PK_Vendor] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for VendorAttribute
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[VendorAttribute]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table VendorAttribute
-- ----------------------------
ALTER TABLE [dbo].[VendorAttribute] ADD CONSTRAINT [PK_VendorAttribute] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for VendorAttributeValue
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[VendorAttributeValue]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table VendorAttributeValue
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_VendorAttributeValue_VendorAttributeId]
ON [dbo].[VendorAttributeValue] (
  [VendorAttributeId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table VendorAttributeValue
-- ----------------------------
ALTER TABLE [dbo].[VendorAttributeValue] ADD CONSTRAINT [PK_VendorAttributeValue] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for VendorNote
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[VendorNote]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table VendorNote
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_VendorNote_VendorId]
ON [dbo].[VendorNote] (
  [VendorId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table VendorNote
-- ----------------------------
ALTER TABLE [dbo].[VendorNote] ADD CONSTRAINT [PK_VendorNote] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Warehouse
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Warehouse]', RESEED, 2)
GO


-- ----------------------------
-- Primary Key structure for table Warehouse
-- ----------------------------
ALTER TABLE [dbo].[Warehouse] ADD CONSTRAINT [PK_Warehouse] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table AclRecord
-- ----------------------------
ALTER TABLE [dbo].[AclRecord] ADD CONSTRAINT [FK_AclRecord_CustomerRoleId_CustomerRole_Id] FOREIGN KEY ([CustomerRoleId]) REFERENCES [dbo].[CustomerRole] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ActivityLog
-- ----------------------------
ALTER TABLE [dbo].[ActivityLog] ADD CONSTRAINT [FK_ActivityLog_ActivityLogTypeId_ActivityLogType_Id] FOREIGN KEY ([ActivityLogTypeId]) REFERENCES [dbo].[ActivityLogType] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[ActivityLog] ADD CONSTRAINT [FK_ActivityLog_CustomerId_Customer_Id] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Address
-- ----------------------------
ALTER TABLE [dbo].[Address] ADD CONSTRAINT [FK_Address_CountryId_Country_Id] FOREIGN KEY ([CountryId]) REFERENCES [dbo].[Country] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Address] ADD CONSTRAINT [FK_Address_StateProvinceId_StateProvince_Id] FOREIGN KEY ([StateProvinceId]) REFERENCES [dbo].[StateProvince] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table AddressAttributeValue
-- ----------------------------
ALTER TABLE [dbo].[AddressAttributeValue] ADD CONSTRAINT [FK_AddressAttributeValue_AddressAttributeId_AddressAttribute_Id] FOREIGN KEY ([AddressAttributeId]) REFERENCES [dbo].[AddressAttribute] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Affiliate
-- ----------------------------
ALTER TABLE [dbo].[Affiliate] ADD CONSTRAINT [FK_Affiliate_AddressId_Address_Id] FOREIGN KEY ([AddressId]) REFERENCES [dbo].[Address] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table BackInStockSubscription
-- ----------------------------
ALTER TABLE [dbo].[BackInStockSubscription] ADD CONSTRAINT [FK_BackInStockSubscription_ProductId_Product_Id] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[BackInStockSubscription] ADD CONSTRAINT [FK_BackInStockSubscription_CustomerId_Customer_Id] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table BlogComment
-- ----------------------------
ALTER TABLE [dbo].[BlogComment] ADD CONSTRAINT [FK_BlogComment_StoreId_Store_Id] FOREIGN KEY ([StoreId]) REFERENCES [dbo].[Store] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[BlogComment] ADD CONSTRAINT [FK_BlogComment_CustomerId_Customer_Id] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[BlogComment] ADD CONSTRAINT [FK_BlogComment_BlogPostId_BlogPost_Id] FOREIGN KEY ([BlogPostId]) REFERENCES [dbo].[BlogPost] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table BlogPost
-- ----------------------------
ALTER TABLE [dbo].[BlogPost] ADD CONSTRAINT [FK_BlogPost_LanguageId_Language_Id] FOREIGN KEY ([LanguageId]) REFERENCES [dbo].[Language] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table CheckoutAttributeValue
-- ----------------------------
ALTER TABLE [dbo].[CheckoutAttributeValue] ADD CONSTRAINT [FK_CheckoutAttributeValue_CheckoutAttributeId_CheckoutAttribute_Id] FOREIGN KEY ([CheckoutAttributeId]) REFERENCES [dbo].[CheckoutAttribute] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Customer
-- ----------------------------
ALTER TABLE [dbo].[Customer] ADD CONSTRAINT [FK_Customer_BillingAddress_Id_Address_Id] FOREIGN KEY ([BillingAddress_Id]) REFERENCES [dbo].[Address] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Customer] ADD CONSTRAINT [FK_Customer_ShippingAddress_Id_Address_Id] FOREIGN KEY ([ShippingAddress_Id]) REFERENCES [dbo].[Address] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Customer_CustomerRole_Mapping
-- ----------------------------
ALTER TABLE [dbo].[Customer_CustomerRole_Mapping] ADD CONSTRAINT [FK_Customer_CustomerRole_Mapping_Customer_Id_Customer_Id] FOREIGN KEY ([Customer_Id]) REFERENCES [dbo].[Customer] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Customer_CustomerRole_Mapping] ADD CONSTRAINT [FK_Customer_CustomerRole_Mapping_CustomerRole_Id_CustomerRole_Id] FOREIGN KEY ([CustomerRole_Id]) REFERENCES [dbo].[CustomerRole] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table CustomerAddresses
-- ----------------------------
ALTER TABLE [dbo].[CustomerAddresses] ADD CONSTRAINT [FK_CustomerAddresses_Address_Id_Address_Id] FOREIGN KEY ([Address_Id]) REFERENCES [dbo].[Address] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[CustomerAddresses] ADD CONSTRAINT [FK_CustomerAddresses_Customer_Id_Customer_Id] FOREIGN KEY ([Customer_Id]) REFERENCES [dbo].[Customer] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table CustomerAttributeValue
-- ----------------------------
ALTER TABLE [dbo].[CustomerAttributeValue] ADD CONSTRAINT [FK_CustomerAttributeValue_CustomerAttributeId_CustomerAttribute_Id] FOREIGN KEY ([CustomerAttributeId]) REFERENCES [dbo].[CustomerAttribute] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table CustomerPassword
-- ----------------------------
ALTER TABLE [dbo].[CustomerPassword] ADD CONSTRAINT [FK_CustomerPassword_CustomerId_Customer_Id] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Discount_AppliedToCategories
-- ----------------------------
ALTER TABLE [dbo].[Discount_AppliedToCategories] ADD CONSTRAINT [FK_Discount_AppliedToCategories_Discount_Id_Discount_Id] FOREIGN KEY ([Discount_Id]) REFERENCES [dbo].[Discount] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Discount_AppliedToCategories] ADD CONSTRAINT [FK_Discount_AppliedToCategories_Category_Id_Category_Id] FOREIGN KEY ([Category_Id]) REFERENCES [dbo].[Category] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Discount_AppliedToManufacturers
-- ----------------------------
ALTER TABLE [dbo].[Discount_AppliedToManufacturers] ADD CONSTRAINT [FK_Discount_AppliedToManufacturers_Discount_Id_Discount_Id] FOREIGN KEY ([Discount_Id]) REFERENCES [dbo].[Discount] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Discount_AppliedToManufacturers] ADD CONSTRAINT [FK_Discount_AppliedToManufacturers_Manufacturer_Id_Manufacturer_Id] FOREIGN KEY ([Manufacturer_Id]) REFERENCES [dbo].[Manufacturer] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Discount_AppliedToProducts
-- ----------------------------
ALTER TABLE [dbo].[Discount_AppliedToProducts] ADD CONSTRAINT [FK_Discount_AppliedToProducts_Discount_Id_Discount_Id] FOREIGN KEY ([Discount_Id]) REFERENCES [dbo].[Discount] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Discount_AppliedToProducts] ADD CONSTRAINT [FK_Discount_AppliedToProducts_Product_Id_Product_Id] FOREIGN KEY ([Product_Id]) REFERENCES [dbo].[Product] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table DiscountRequirement
-- ----------------------------
ALTER TABLE [dbo].[DiscountRequirement] ADD CONSTRAINT [FK_DiscountRequirement_DiscountId_Discount_Id] FOREIGN KEY ([DiscountId]) REFERENCES [dbo].[Discount] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[DiscountRequirement] ADD CONSTRAINT [FK_DiscountRequirement_ParentId_DiscountRequirement_Id] FOREIGN KEY ([ParentId]) REFERENCES [dbo].[DiscountRequirement] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table DiscountUsageHistory
-- ----------------------------
ALTER TABLE [dbo].[DiscountUsageHistory] ADD CONSTRAINT [FK_DiscountUsageHistory_DiscountId_Discount_Id] FOREIGN KEY ([DiscountId]) REFERENCES [dbo].[Discount] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[DiscountUsageHistory] ADD CONSTRAINT [FK_DiscountUsageHistory_OrderId_Order_Id] FOREIGN KEY ([OrderId]) REFERENCES [dbo].[Order] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ExternalAuthenticationRecord
-- ----------------------------
ALTER TABLE [dbo].[ExternalAuthenticationRecord] ADD CONSTRAINT [FK_ExternalAuthenticationRecord_CustomerId_Customer_Id] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Forums_Forum
-- ----------------------------
ALTER TABLE [dbo].[Forums_Forum] ADD CONSTRAINT [FK_Forums_Forum_ForumGroupId_Forums_Group_Id] FOREIGN KEY ([ForumGroupId]) REFERENCES [dbo].[Forums_Group] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Forums_Post
-- ----------------------------
ALTER TABLE [dbo].[Forums_Post] ADD CONSTRAINT [FK_Forums_Post_CustomerId_Customer_Id] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Forums_Post] ADD CONSTRAINT [FK_Forums_Post_TopicId_Forums_Topic_Id] FOREIGN KEY ([TopicId]) REFERENCES [dbo].[Forums_Topic] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Forums_PostVote
-- ----------------------------
ALTER TABLE [dbo].[Forums_PostVote] ADD CONSTRAINT [FK_Forums_PostVote_ForumPostId_Forums_Post_Id] FOREIGN KEY ([ForumPostId]) REFERENCES [dbo].[Forums_Post] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Forums_PrivateMessage
-- ----------------------------
ALTER TABLE [dbo].[Forums_PrivateMessage] ADD CONSTRAINT [FK_Forums_PrivateMessage_FromCustomerId_Customer_Id] FOREIGN KEY ([FromCustomerId]) REFERENCES [dbo].[Customer] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Forums_PrivateMessage] ADD CONSTRAINT [FK_Forums_PrivateMessage_ToCustomerId_Customer_Id] FOREIGN KEY ([ToCustomerId]) REFERENCES [dbo].[Customer] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Forums_Subscription
-- ----------------------------
ALTER TABLE [dbo].[Forums_Subscription] ADD CONSTRAINT [FK_Forums_Subscription_CustomerId_Customer_Id] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Forums_Topic
-- ----------------------------
ALTER TABLE [dbo].[Forums_Topic] ADD CONSTRAINT [FK_Forums_Topic_CustomerId_Customer_Id] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Forums_Topic] ADD CONSTRAINT [FK_Forums_Topic_ForumId_Forums_Forum_Id] FOREIGN KEY ([ForumId]) REFERENCES [dbo].[Forums_Forum] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table GiftCard
-- ----------------------------
ALTER TABLE [dbo].[GiftCard] ADD CONSTRAINT [FK_GiftCard_PurchasedWithOrderItemId_OrderItem_Id] FOREIGN KEY ([PurchasedWithOrderItemId]) REFERENCES [dbo].[OrderItem] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table GiftCardUsageHistory
-- ----------------------------
ALTER TABLE [dbo].[GiftCardUsageHistory] ADD CONSTRAINT [FK_GiftCardUsageHistory_GiftCardId_GiftCard_Id] FOREIGN KEY ([GiftCardId]) REFERENCES [dbo].[GiftCard] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[GiftCardUsageHistory] ADD CONSTRAINT [FK_GiftCardUsageHistory_UsedWithOrderId_Order_Id] FOREIGN KEY ([UsedWithOrderId]) REFERENCES [dbo].[Order] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table LocaleStringResource
-- ----------------------------
ALTER TABLE [dbo].[LocaleStringResource] ADD CONSTRAINT [FK_LocaleStringResource_LanguageId_Language_Id] FOREIGN KEY ([LanguageId]) REFERENCES [dbo].[Language] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table LocalizedProperty
-- ----------------------------
ALTER TABLE [dbo].[LocalizedProperty] ADD CONSTRAINT [FK_LocalizedProperty_LanguageId_Language_Id] FOREIGN KEY ([LanguageId]) REFERENCES [dbo].[Language] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Log
-- ----------------------------
ALTER TABLE [dbo].[Log] ADD CONSTRAINT [FK_Log_CustomerId_Customer_Id] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table News
-- ----------------------------
ALTER TABLE [dbo].[News] ADD CONSTRAINT [FK_News_LanguageId_Language_Id] FOREIGN KEY ([LanguageId]) REFERENCES [dbo].[Language] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table NewsComment
-- ----------------------------
ALTER TABLE [dbo].[NewsComment] ADD CONSTRAINT [FK_NewsComment_CustomerId_Customer_Id] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[NewsComment] ADD CONSTRAINT [FK_NewsComment_NewsItemId_News_Id] FOREIGN KEY ([NewsItemId]) REFERENCES [dbo].[News] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[NewsComment] ADD CONSTRAINT [FK_NewsComment_StoreId_Store_Id] FOREIGN KEY ([StoreId]) REFERENCES [dbo].[Store] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Order
-- ----------------------------
ALTER TABLE [dbo].[Order] ADD CONSTRAINT [FK_Order_RewardPointsHistoryEntryId_RewardPointsHistory_Id] FOREIGN KEY ([RewardPointsHistoryEntryId]) REFERENCES [dbo].[RewardPointsHistory] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Order] ADD CONSTRAINT [FK_Order_BillingAddressId_Address_Id] FOREIGN KEY ([BillingAddressId]) REFERENCES [dbo].[Address] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Order] ADD CONSTRAINT [FK_Order_CustomerId_Customer_Id] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Order] ADD CONSTRAINT [FK_Order_PickupAddressId_Address_Id] FOREIGN KEY ([PickupAddressId]) REFERENCES [dbo].[Address] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Order] ADD CONSTRAINT [FK_Order_ShippingAddressId_Address_Id] FOREIGN KEY ([ShippingAddressId]) REFERENCES [dbo].[Address] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table OrderItem
-- ----------------------------
ALTER TABLE [dbo].[OrderItem] ADD CONSTRAINT [FK_OrderItem_OrderId_Order_Id] FOREIGN KEY ([OrderId]) REFERENCES [dbo].[Order] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[OrderItem] ADD CONSTRAINT [FK_OrderItem_ProductId_Product_Id] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table OrderNote
-- ----------------------------
ALTER TABLE [dbo].[OrderNote] ADD CONSTRAINT [FK_OrderNote_OrderId_Order_Id] FOREIGN KEY ([OrderId]) REFERENCES [dbo].[Order] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table PermissionRecord_Role_Mapping
-- ----------------------------
ALTER TABLE [dbo].[PermissionRecord_Role_Mapping] ADD CONSTRAINT [FK_PermissionRecord_Role_Mapping_PermissionRecord_Id_PermissionRecord_Id] FOREIGN KEY ([PermissionRecord_Id]) REFERENCES [dbo].[PermissionRecord] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[PermissionRecord_Role_Mapping] ADD CONSTRAINT [FK_PermissionRecord_Role_Mapping_CustomerRole_Id_CustomerRole_Id] FOREIGN KEY ([CustomerRole_Id]) REFERENCES [dbo].[CustomerRole] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table PictureBinary
-- ----------------------------
ALTER TABLE [dbo].[PictureBinary] ADD CONSTRAINT [FK_PictureBinary_PictureId_Picture_Id] FOREIGN KEY ([PictureId]) REFERENCES [dbo].[Picture] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Poll
-- ----------------------------
ALTER TABLE [dbo].[Poll] ADD CONSTRAINT [FK_Poll_LanguageId_Language_Id] FOREIGN KEY ([LanguageId]) REFERENCES [dbo].[Language] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table PollAnswer
-- ----------------------------
ALTER TABLE [dbo].[PollAnswer] ADD CONSTRAINT [FK_PollAnswer_PollId_Poll_Id] FOREIGN KEY ([PollId]) REFERENCES [dbo].[Poll] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table PollVotingRecord
-- ----------------------------
ALTER TABLE [dbo].[PollVotingRecord] ADD CONSTRAINT [FK_PollVotingRecord_PollAnswerId_PollAnswer_Id] FOREIGN KEY ([PollAnswerId]) REFERENCES [dbo].[PollAnswer] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[PollVotingRecord] ADD CONSTRAINT [FK_PollVotingRecord_CustomerId_Customer_Id] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table PredefinedProductAttributeValue
-- ----------------------------
ALTER TABLE [dbo].[PredefinedProductAttributeValue] ADD CONSTRAINT [FK_PredefinedProductAttributeValue_ProductAttributeId_ProductAttribute_Id] FOREIGN KEY ([ProductAttributeId]) REFERENCES [dbo].[ProductAttribute] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Product_Category_Mapping
-- ----------------------------
ALTER TABLE [dbo].[Product_Category_Mapping] ADD CONSTRAINT [FK_Product_Category_Mapping_CategoryId_Category_Id] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Category] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Product_Category_Mapping] ADD CONSTRAINT [FK_Product_Category_Mapping_ProductId_Product_Id] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Product_Manufacturer_Mapping
-- ----------------------------
ALTER TABLE [dbo].[Product_Manufacturer_Mapping] ADD CONSTRAINT [FK_Product_Manufacturer_Mapping_ManufacturerId_Manufacturer_Id] FOREIGN KEY ([ManufacturerId]) REFERENCES [dbo].[Manufacturer] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Product_Manufacturer_Mapping] ADD CONSTRAINT [FK_Product_Manufacturer_Mapping_ProductId_Product_Id] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Product_Picture_Mapping
-- ----------------------------
ALTER TABLE [dbo].[Product_Picture_Mapping] ADD CONSTRAINT [FK_Product_Picture_Mapping_PictureId_Picture_Id] FOREIGN KEY ([PictureId]) REFERENCES [dbo].[Picture] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Product_Picture_Mapping] ADD CONSTRAINT [FK_Product_Picture_Mapping_ProductId_Product_Id] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Product_ProductAttribute_Mapping
-- ----------------------------
ALTER TABLE [dbo].[Product_ProductAttribute_Mapping] ADD CONSTRAINT [FK_Product_ProductAttribute_Mapping_ProductAttributeId_ProductAttribute_Id] FOREIGN KEY ([ProductAttributeId]) REFERENCES [dbo].[ProductAttribute] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Product_ProductAttribute_Mapping] ADD CONSTRAINT [FK_Product_ProductAttribute_Mapping_ProductId_Product_Id] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Product_ProductTag_Mapping
-- ----------------------------
ALTER TABLE [dbo].[Product_ProductTag_Mapping] ADD CONSTRAINT [FK_Product_ProductTag_Mapping_Product_Id_Product_Id] FOREIGN KEY ([Product_Id]) REFERENCES [dbo].[Product] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Product_ProductTag_Mapping] ADD CONSTRAINT [FK_Product_ProductTag_Mapping_ProductTag_Id_ProductTag_Id] FOREIGN KEY ([ProductTag_Id]) REFERENCES [dbo].[ProductTag] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Product_SpecificationAttribute_Mapping
-- ----------------------------
ALTER TABLE [dbo].[Product_SpecificationAttribute_Mapping] ADD CONSTRAINT [FK_Product_SpecificationAttribute_Mapping_ProductId_Product_Id] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Product_SpecificationAttribute_Mapping] ADD CONSTRAINT [FK_Product_SpecificationAttribute_Mapping_SpecificationAttributeOptionId_SpecificationAttributeOption_Id] FOREIGN KEY ([SpecificationAttributeOptionId]) REFERENCES [dbo].[SpecificationAttributeOption] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ProductAttributeCombination
-- ----------------------------
ALTER TABLE [dbo].[ProductAttributeCombination] ADD CONSTRAINT [FK_ProductAttributeCombination_ProductId_Product_Id] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ProductAttributeValue
-- ----------------------------
ALTER TABLE [dbo].[ProductAttributeValue] ADD CONSTRAINT [FK_ProductAttributeValue_ProductAttributeMappingId_Product_ProductAttribute_Mapping_Id] FOREIGN KEY ([ProductAttributeMappingId]) REFERENCES [dbo].[Product_ProductAttribute_Mapping] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ProductReview
-- ----------------------------
ALTER TABLE [dbo].[ProductReview] ADD CONSTRAINT [FK_ProductReview_CustomerId_Customer_Id] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[ProductReview] ADD CONSTRAINT [FK_ProductReview_ProductId_Product_Id] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[ProductReview] ADD CONSTRAINT [FK_ProductReview_StoreId_Store_Id] FOREIGN KEY ([StoreId]) REFERENCES [dbo].[Store] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ProductReview_ReviewType_Mapping
-- ----------------------------
ALTER TABLE [dbo].[ProductReview_ReviewType_Mapping] ADD CONSTRAINT [FK_ProductReview_ReviewType_Mapping_ProductReviewId_ProductReview_Id] FOREIGN KEY ([ProductReviewId]) REFERENCES [dbo].[ProductReview] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[ProductReview_ReviewType_Mapping] ADD CONSTRAINT [FK_ProductReview_ReviewType_Mapping_ReviewTypeId_ReviewType_Id] FOREIGN KEY ([ReviewTypeId]) REFERENCES [dbo].[ReviewType] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ProductReviewHelpfulness
-- ----------------------------
ALTER TABLE [dbo].[ProductReviewHelpfulness] ADD CONSTRAINT [FK_ProductReviewHelpfulness_ProductReviewId_ProductReview_Id] FOREIGN KEY ([ProductReviewId]) REFERENCES [dbo].[ProductReview] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ProductWarehouseInventory
-- ----------------------------
ALTER TABLE [dbo].[ProductWarehouseInventory] ADD CONSTRAINT [FK_ProductWarehouseInventory_ProductId_Product_Id] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[ProductWarehouseInventory] ADD CONSTRAINT [FK_ProductWarehouseInventory_WarehouseId_Warehouse_Id] FOREIGN KEY ([WarehouseId]) REFERENCES [dbo].[Warehouse] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table QueuedEmail
-- ----------------------------
ALTER TABLE [dbo].[QueuedEmail] ADD CONSTRAINT [FK_QueuedEmail_EmailAccountId_EmailAccount_Id] FOREIGN KEY ([EmailAccountId]) REFERENCES [dbo].[EmailAccount] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table RecurringPayment
-- ----------------------------
ALTER TABLE [dbo].[RecurringPayment] ADD CONSTRAINT [FK_RecurringPayment_InitialOrderId_Order_Id] FOREIGN KEY ([InitialOrderId]) REFERENCES [dbo].[Order] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table RecurringPaymentHistory
-- ----------------------------
ALTER TABLE [dbo].[RecurringPaymentHistory] ADD CONSTRAINT [FK_RecurringPaymentHistory_RecurringPaymentId_RecurringPayment_Id] FOREIGN KEY ([RecurringPaymentId]) REFERENCES [dbo].[RecurringPayment] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ReturnRequest
-- ----------------------------
ALTER TABLE [dbo].[ReturnRequest] ADD CONSTRAINT [FK_ReturnRequest_CustomerId_Customer_Id] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table RewardPointsHistory
-- ----------------------------
ALTER TABLE [dbo].[RewardPointsHistory] ADD CONSTRAINT [FK_RewardPointsHistory_CustomerId_Customer_Id] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Shipment
-- ----------------------------
ALTER TABLE [dbo].[Shipment] ADD CONSTRAINT [FK_Shipment_OrderId_Order_Id] FOREIGN KEY ([OrderId]) REFERENCES [dbo].[Order] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ShipmentItem
-- ----------------------------
ALTER TABLE [dbo].[ShipmentItem] ADD CONSTRAINT [FK_ShipmentItem_ShipmentId_Shipment_Id] FOREIGN KEY ([ShipmentId]) REFERENCES [dbo].[Shipment] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ShippingMethodRestrictions
-- ----------------------------
ALTER TABLE [dbo].[ShippingMethodRestrictions] ADD CONSTRAINT [FK_ShippingMethodRestrictions_ShippingMethod_Id_ShippingMethod_Id] FOREIGN KEY ([ShippingMethod_Id]) REFERENCES [dbo].[ShippingMethod] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[ShippingMethodRestrictions] ADD CONSTRAINT [FK_ShippingMethodRestrictions_Country_Id_Country_Id] FOREIGN KEY ([Country_Id]) REFERENCES [dbo].[Country] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ShoppingCartItem
-- ----------------------------
ALTER TABLE [dbo].[ShoppingCartItem] ADD CONSTRAINT [FK_ShoppingCartItem_CustomerId_Customer_Id] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[ShoppingCartItem] ADD CONSTRAINT [FK_ShoppingCartItem_ProductId_Product_Id] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table SpecificationAttribute
-- ----------------------------
ALTER TABLE [dbo].[SpecificationAttribute] ADD CONSTRAINT [FK_SpecificationAttribute_SpecificationAttributeGroupId_SpecificationAttributeGroup_Id] FOREIGN KEY ([SpecificationAttributeGroupId]) REFERENCES [dbo].[SpecificationAttributeGroup] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table SpecificationAttributeOption
-- ----------------------------
ALTER TABLE [dbo].[SpecificationAttributeOption] ADD CONSTRAINT [FK_SpecificationAttributeOption_SpecificationAttributeId_SpecificationAttribute_Id] FOREIGN KEY ([SpecificationAttributeId]) REFERENCES [dbo].[SpecificationAttribute] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table StateProvince
-- ----------------------------
ALTER TABLE [dbo].[StateProvince] ADD CONSTRAINT [FK_StateProvince_CountryId_Country_Id] FOREIGN KEY ([CountryId]) REFERENCES [dbo].[Country] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table StockQuantityHistory
-- ----------------------------
ALTER TABLE [dbo].[StockQuantityHistory] ADD CONSTRAINT [FK_StockQuantityHistory_ProductId_Product_Id] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table StoreMapping
-- ----------------------------
ALTER TABLE [dbo].[StoreMapping] ADD CONSTRAINT [FK_StoreMapping_StoreId_Store_Id] FOREIGN KEY ([StoreId]) REFERENCES [dbo].[Store] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table TierPrice
-- ----------------------------
ALTER TABLE [dbo].[TierPrice] ADD CONSTRAINT [FK_TierPrice_CustomerRoleId_CustomerRole_Id] FOREIGN KEY ([CustomerRoleId]) REFERENCES [dbo].[CustomerRole] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[TierPrice] ADD CONSTRAINT [FK_TierPrice_ProductId_Product_Id] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table VendorAttributeValue
-- ----------------------------
ALTER TABLE [dbo].[VendorAttributeValue] ADD CONSTRAINT [FK_VendorAttributeValue_VendorAttributeId_VendorAttribute_Id] FOREIGN KEY ([VendorAttributeId]) REFERENCES [dbo].[VendorAttribute] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table VendorNote
-- ----------------------------
ALTER TABLE [dbo].[VendorNote] ADD CONSTRAINT [FK_VendorNote_VendorId_Vendor_Id] FOREIGN KEY ([VendorId]) REFERENCES [dbo].[Vendor] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

