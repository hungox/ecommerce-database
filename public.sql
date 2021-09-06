/*
 Navicat Premium Data Transfer

 Source Server         : PostgreSQL
 Source Server Type    : PostgreSQL
 Source Server Version : 110001
 Source Host           : localhost:5432
 Source Catalog        : saleor
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 110001
 File Encoding         : 65001

 Date: 27/11/2020 15:38:25
*/


-- ----------------------------
-- Type structure for ghstore
-- ----------------------------
DROP TYPE IF EXISTS "public"."ghstore";
CREATE TYPE "public"."ghstore" (
  INPUT = "public"."ghstore_in",
  OUTPUT = "public"."ghstore_out",
  INTERNALLENGTH = VARIABLE,
  CATEGORY = U,
  DELIMITER = ','
);
ALTER TYPE "public"."ghstore" OWNER TO "saleor";

-- ----------------------------
-- Type structure for gtrgm
-- ----------------------------
DROP TYPE IF EXISTS "public"."gtrgm";
CREATE TYPE "public"."gtrgm" (
  INPUT = "public"."gtrgm_in",
  OUTPUT = "public"."gtrgm_out",
  INTERNALLENGTH = VARIABLE,
  CATEGORY = U,
  DELIMITER = ','
);
ALTER TYPE "public"."gtrgm" OWNER TO "saleor";

-- ----------------------------
-- Type structure for hstore
-- ----------------------------
DROP TYPE IF EXISTS "public"."hstore";
CREATE TYPE "public"."hstore" (
  INPUT = "public"."hstore_in",
  OUTPUT = "public"."hstore_out",
  RECEIVE = "public"."hstore_recv",
  SEND = "public"."hstore_send",
  INTERNALLENGTH = VARIABLE,
  STORAGE = extended,
  CATEGORY = U,
  DELIMITER = ','
);
ALTER TYPE "public"."hstore" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for account_customerevent_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."account_customerevent_id_seq";
CREATE SEQUENCE "public"."account_customerevent_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."account_customerevent_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for account_customernote_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."account_customernote_id_seq";
CREATE SEQUENCE "public"."account_customernote_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."account_customernote_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for account_serviceaccount_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."account_serviceaccount_id_seq";
CREATE SEQUENCE "public"."account_serviceaccount_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."account_serviceaccount_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for account_serviceaccount_permissions_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."account_serviceaccount_permissions_id_seq";
CREATE SEQUENCE "public"."account_serviceaccount_permissions_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."account_serviceaccount_permissions_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for account_serviceaccounttoken_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."account_serviceaccounttoken_id_seq";
CREATE SEQUENCE "public"."account_serviceaccounttoken_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."account_serviceaccounttoken_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for account_staffnotificationrecipient_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."account_staffnotificationrecipient_id_seq";
CREATE SEQUENCE "public"."account_staffnotificationrecipient_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."account_staffnotificationrecipient_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for app_appinstallation_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."app_appinstallation_id_seq";
CREATE SEQUENCE "public"."app_appinstallation_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."app_appinstallation_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for app_appinstallation_permissions_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."app_appinstallation_permissions_id_seq";
CREATE SEQUENCE "public"."app_appinstallation_permissions_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."app_appinstallation_permissions_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for auth_group_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."auth_group_id_seq";
CREATE SEQUENCE "public"."auth_group_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."auth_group_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for auth_group_permissions_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."auth_group_permissions_id_seq";
CREATE SEQUENCE "public"."auth_group_permissions_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."auth_group_permissions_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for auth_permission_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."auth_permission_id_seq";
CREATE SEQUENCE "public"."auth_permission_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."auth_permission_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for cart_cartline_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."cart_cartline_id_seq";
CREATE SEQUENCE "public"."cart_cartline_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."cart_cartline_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for checkout_checkout_gift_cards_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."checkout_checkout_gift_cards_id_seq";
CREATE SEQUENCE "public"."checkout_checkout_gift_cards_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."checkout_checkout_gift_cards_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for csv_exportevent_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."csv_exportevent_id_seq";
CREATE SEQUENCE "public"."csv_exportevent_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."csv_exportevent_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for csv_exportfile_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."csv_exportfile_id_seq";
CREATE SEQUENCE "public"."csv_exportfile_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."csv_exportfile_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for discount_sale_categories_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."discount_sale_categories_id_seq";
CREATE SEQUENCE "public"."discount_sale_categories_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."discount_sale_categories_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for discount_sale_collections_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."discount_sale_collections_id_seq";
CREATE SEQUENCE "public"."discount_sale_collections_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."discount_sale_collections_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for discount_sale_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."discount_sale_id_seq";
CREATE SEQUENCE "public"."discount_sale_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."discount_sale_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for discount_sale_products_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."discount_sale_products_id_seq";
CREATE SEQUENCE "public"."discount_sale_products_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."discount_sale_products_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for discount_saletranslation_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."discount_saletranslation_id_seq";
CREATE SEQUENCE "public"."discount_saletranslation_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."discount_saletranslation_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for discount_voucher_categories_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."discount_voucher_categories_id_seq";
CREATE SEQUENCE "public"."discount_voucher_categories_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."discount_voucher_categories_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for discount_voucher_collections_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."discount_voucher_collections_id_seq";
CREATE SEQUENCE "public"."discount_voucher_collections_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."discount_voucher_collections_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for discount_voucher_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."discount_voucher_id_seq";
CREATE SEQUENCE "public"."discount_voucher_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."discount_voucher_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for discount_voucher_products_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."discount_voucher_products_id_seq";
CREATE SEQUENCE "public"."discount_voucher_products_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."discount_voucher_products_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for discount_vouchercustomer_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."discount_vouchercustomer_id_seq";
CREATE SEQUENCE "public"."discount_vouchercustomer_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."discount_vouchercustomer_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for discount_vouchertranslation_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."discount_vouchertranslation_id_seq";
CREATE SEQUENCE "public"."discount_vouchertranslation_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."discount_vouchertranslation_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for django_content_type_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."django_content_type_id_seq";
CREATE SEQUENCE "public"."django_content_type_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."django_content_type_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for django_migrations_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."django_migrations_id_seq";
CREATE SEQUENCE "public"."django_migrations_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."django_migrations_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for django_prices_openexchangerates_conversionrate_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."django_prices_openexchangerates_conversionrate_id_seq";
CREATE SEQUENCE "public"."django_prices_openexchangerates_conversionrate_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."django_prices_openexchangerates_conversionrate_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for django_prices_vatlayer_ratetypes_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."django_prices_vatlayer_ratetypes_id_seq";
CREATE SEQUENCE "public"."django_prices_vatlayer_ratetypes_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."django_prices_vatlayer_ratetypes_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for django_prices_vatlayer_vat_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."django_prices_vatlayer_vat_id_seq";
CREATE SEQUENCE "public"."django_prices_vatlayer_vat_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."django_prices_vatlayer_vat_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for django_site_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."django_site_id_seq";
CREATE SEQUENCE "public"."django_site_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."django_site_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for giftcard_giftcard_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."giftcard_giftcard_id_seq";
CREATE SEQUENCE "public"."giftcard_giftcard_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."giftcard_giftcard_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for invoice_invoice_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."invoice_invoice_id_seq";
CREATE SEQUENCE "public"."invoice_invoice_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."invoice_invoice_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for invoice_invoiceevent_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."invoice_invoiceevent_id_seq";
CREATE SEQUENCE "public"."invoice_invoiceevent_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."invoice_invoiceevent_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for menu_menu_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."menu_menu_id_seq";
CREATE SEQUENCE "public"."menu_menu_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."menu_menu_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for menu_menuitem_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."menu_menuitem_id_seq";
CREATE SEQUENCE "public"."menu_menuitem_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."menu_menuitem_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for menu_menuitemtranslation_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."menu_menuitemtranslation_id_seq";
CREATE SEQUENCE "public"."menu_menuitemtranslation_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."menu_menuitemtranslation_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for order_fulfillment_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."order_fulfillment_id_seq";
CREATE SEQUENCE "public"."order_fulfillment_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."order_fulfillment_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for order_fulfillmentline_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."order_fulfillmentline_id_seq";
CREATE SEQUENCE "public"."order_fulfillmentline_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."order_fulfillmentline_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for order_order_gift_cards_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."order_order_gift_cards_id_seq";
CREATE SEQUENCE "public"."order_order_gift_cards_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."order_order_gift_cards_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for order_order_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."order_order_id_seq";
CREATE SEQUENCE "public"."order_order_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."order_order_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for order_ordereditem_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."order_ordereditem_id_seq";
CREATE SEQUENCE "public"."order_ordereditem_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."order_ordereditem_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for order_orderevent_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."order_orderevent_id_seq";
CREATE SEQUENCE "public"."order_orderevent_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."order_orderevent_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for page_page_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."page_page_id_seq";
CREATE SEQUENCE "public"."page_page_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."page_page_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for page_pagetranslation_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."page_pagetranslation_id_seq";
CREATE SEQUENCE "public"."page_pagetranslation_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."page_pagetranslation_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for payment_paymentmethod_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."payment_paymentmethod_id_seq";
CREATE SEQUENCE "public"."payment_paymentmethod_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."payment_paymentmethod_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for payment_transaction_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."payment_transaction_id_seq";
CREATE SEQUENCE "public"."payment_transaction_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."payment_transaction_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for plugins_pluginconfiguration_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."plugins_pluginconfiguration_id_seq";
CREATE SEQUENCE "public"."plugins_pluginconfiguration_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."plugins_pluginconfiguration_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for product_assignedproductattribute_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."product_assignedproductattribute_id_seq";
CREATE SEQUENCE "public"."product_assignedproductattribute_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."product_assignedproductattribute_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for product_assignedproductattribute_values_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."product_assignedproductattribute_values_id_seq";
CREATE SEQUENCE "public"."product_assignedproductattribute_values_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."product_assignedproductattribute_values_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for product_assignedvariantattribute_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."product_assignedvariantattribute_id_seq";
CREATE SEQUENCE "public"."product_assignedvariantattribute_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."product_assignedvariantattribute_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for product_assignedvariantattribute_values_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."product_assignedvariantattribute_values_id_seq";
CREATE SEQUENCE "public"."product_assignedvariantattribute_values_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."product_assignedvariantattribute_values_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for product_attributechoicevalue_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."product_attributechoicevalue_id_seq";
CREATE SEQUENCE "public"."product_attributechoicevalue_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."product_attributechoicevalue_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for product_attributechoicevaluetranslation_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."product_attributechoicevaluetranslation_id_seq";
CREATE SEQUENCE "public"."product_attributechoicevaluetranslation_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."product_attributechoicevaluetranslation_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for product_attributeproduct_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."product_attributeproduct_id_seq";
CREATE SEQUENCE "public"."product_attributeproduct_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."product_attributeproduct_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for product_attributevariant_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."product_attributevariant_id_seq";
CREATE SEQUENCE "public"."product_attributevariant_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."product_attributevariant_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for product_category_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."product_category_id_seq";
CREATE SEQUENCE "public"."product_category_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."product_category_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for product_categorytranslation_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."product_categorytranslation_id_seq";
CREATE SEQUENCE "public"."product_categorytranslation_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."product_categorytranslation_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for product_collection_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."product_collection_id_seq";
CREATE SEQUENCE "public"."product_collection_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."product_collection_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for product_collection_products_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."product_collection_products_id_seq";
CREATE SEQUENCE "public"."product_collection_products_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."product_collection_products_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for product_collectiontranslation_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."product_collectiontranslation_id_seq";
CREATE SEQUENCE "public"."product_collectiontranslation_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."product_collectiontranslation_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for product_digitalcontent_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."product_digitalcontent_id_seq";
CREATE SEQUENCE "public"."product_digitalcontent_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."product_digitalcontent_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for product_digitalcontenturl_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."product_digitalcontenturl_id_seq";
CREATE SEQUENCE "public"."product_digitalcontenturl_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."product_digitalcontenturl_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for product_product_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."product_product_id_seq";
CREATE SEQUENCE "public"."product_product_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."product_product_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for product_productattribute_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."product_productattribute_id_seq";
CREATE SEQUENCE "public"."product_productattribute_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."product_productattribute_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for product_productattributetranslation_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."product_productattributetranslation_id_seq";
CREATE SEQUENCE "public"."product_productattributetranslation_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."product_productattributetranslation_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for product_productclass_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."product_productclass_id_seq";
CREATE SEQUENCE "public"."product_productclass_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."product_productclass_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for product_productimage_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."product_productimage_id_seq";
CREATE SEQUENCE "public"."product_productimage_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."product_productimage_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for product_producttranslation_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."product_producttranslation_id_seq";
CREATE SEQUENCE "public"."product_producttranslation_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."product_producttranslation_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for product_productvariant_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."product_productvariant_id_seq";
CREATE SEQUENCE "public"."product_productvariant_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."product_productvariant_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for product_productvarianttranslation_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."product_productvarianttranslation_id_seq";
CREATE SEQUENCE "public"."product_productvarianttranslation_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."product_productvarianttranslation_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for product_variantimage_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."product_variantimage_id_seq";
CREATE SEQUENCE "public"."product_variantimage_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."product_variantimage_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for shipping_shippingmethod_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."shipping_shippingmethod_id_seq";
CREATE SEQUENCE "public"."shipping_shippingmethod_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."shipping_shippingmethod_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for shipping_shippingmethodtranslation_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."shipping_shippingmethodtranslation_id_seq";
CREATE SEQUENCE "public"."shipping_shippingmethodtranslation_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."shipping_shippingmethodtranslation_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for shipping_shippingzone_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."shipping_shippingzone_id_seq";
CREATE SEQUENCE "public"."shipping_shippingzone_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."shipping_shippingzone_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for site_authorizationkey_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."site_authorizationkey_id_seq";
CREATE SEQUENCE "public"."site_authorizationkey_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."site_authorizationkey_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for site_sitesettings_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."site_sitesettings_id_seq";
CREATE SEQUENCE "public"."site_sitesettings_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."site_sitesettings_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for site_sitesettingstranslation_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."site_sitesettingstranslation_id_seq";
CREATE SEQUENCE "public"."site_sitesettingstranslation_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."site_sitesettingstranslation_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for userprofile_address_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."userprofile_address_id_seq";
CREATE SEQUENCE "public"."userprofile_address_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."userprofile_address_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for userprofile_user_addresses_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."userprofile_user_addresses_id_seq";
CREATE SEQUENCE "public"."userprofile_user_addresses_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."userprofile_user_addresses_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for userprofile_user_groups_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."userprofile_user_groups_id_seq";
CREATE SEQUENCE "public"."userprofile_user_groups_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."userprofile_user_groups_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for userprofile_user_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."userprofile_user_id_seq";
CREATE SEQUENCE "public"."userprofile_user_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."userprofile_user_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for userprofile_user_user_permissions_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."userprofile_user_user_permissions_id_seq";
CREATE SEQUENCE "public"."userprofile_user_user_permissions_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."userprofile_user_user_permissions_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for warehouse_allocation_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."warehouse_allocation_id_seq";
CREATE SEQUENCE "public"."warehouse_allocation_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."warehouse_allocation_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for warehouse_stock_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."warehouse_stock_id_seq";
CREATE SEQUENCE "public"."warehouse_stock_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."warehouse_stock_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for warehouse_warehouse_shipping_zones_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."warehouse_warehouse_shipping_zones_id_seq";
CREATE SEQUENCE "public"."warehouse_warehouse_shipping_zones_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."warehouse_warehouse_shipping_zones_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for webhook_webhook_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."webhook_webhook_id_seq";
CREATE SEQUENCE "public"."webhook_webhook_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."webhook_webhook_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for webhook_webhookevent_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."webhook_webhookevent_id_seq";
CREATE SEQUENCE "public"."webhook_webhookevent_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."webhook_webhookevent_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for wishlist_wishlist_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."wishlist_wishlist_id_seq";
CREATE SEQUENCE "public"."wishlist_wishlist_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."wishlist_wishlist_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for wishlist_wishlistitem_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."wishlist_wishlistitem_id_seq";
CREATE SEQUENCE "public"."wishlist_wishlistitem_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."wishlist_wishlistitem_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Sequence structure for wishlist_wishlistitem_variants_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."wishlist_wishlistitem_variants_id_seq";
CREATE SEQUENCE "public"."wishlist_wishlistitem_variants_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."wishlist_wishlistitem_variants_id_seq" OWNER TO "saleor";

-- ----------------------------
-- Table structure for account_address
-- ----------------------------
DROP TABLE IF EXISTS "public"."account_address";
CREATE TABLE "public"."account_address" (
  "id" int4 NOT NULL DEFAULT nextval('userprofile_address_id_seq'::regclass),
  "first_name" varchar(256) COLLATE "pg_catalog"."default" NOT NULL,
  "last_name" varchar(256) COLLATE "pg_catalog"."default" NOT NULL,
  "company_name" varchar(256) COLLATE "pg_catalog"."default" NOT NULL,
  "street_address_1" varchar(256) COLLATE "pg_catalog"."default" NOT NULL,
  "street_address_2" varchar(256) COLLATE "pg_catalog"."default" NOT NULL,
  "city" varchar(256) COLLATE "pg_catalog"."default" NOT NULL,
  "postal_code" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "country" varchar(2) COLLATE "pg_catalog"."default" NOT NULL,
  "country_area" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "phone" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "city_area" varchar(128) COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."account_address" OWNER TO "saleor";

-- ----------------------------
-- Records of account_address
-- ----------------------------
BEGIN;
INSERT INTO "public"."account_address" VALUES (1, 'Danielle', 'Cook', '', '2534 Mary Landing Suite 642', '', 'West Mike', '68015', 'US', 'NE', '', '');
INSERT INTO "public"."account_address" VALUES (2, 'Joseph', 'Williams', '', '73195 King Corners Apt. 299', '', 'Hesterfurt', '57009', 'US', 'SD', '', '');
INSERT INTO "public"."account_address" VALUES (3, 'Kara', 'Lopez', '', '137 Mark Keys', '', 'Hannahchester', '11046', 'US', 'NY', '', '');
INSERT INTO "public"."account_address" VALUES (4, 'John', 'Warren', '', '304 Barton Green', '', 'Smithmouth', '72183', 'US', 'AR', '', '');
INSERT INTO "public"."account_address" VALUES (5, 'Taylor', 'Figueroa', '', '367 Jared Course', '', 'Amandaview', '63753', 'US', 'MO', '', '');
INSERT INTO "public"."account_address" VALUES (6, 'Cameron', 'Frank', '', '465 Mendez Skyway', '', 'Troyfort', '36515', 'US', 'AL', '', '');
INSERT INTO "public"."account_address" VALUES (7, 'Amber', 'Perkins', '', '51874 Emily Fort', '', 'Lake Raymond', '04229', 'US', 'ME', '', '');
INSERT INTO "public"."account_address" VALUES (8, 'Diane', 'Jones', '', '34608 Moreno Canyon', '', 'Lake Brandonport', '62190', 'US', 'IL', '', '');
INSERT INTO "public"."account_address" VALUES (9, 'Annette', 'Jackson', '', '53276 Lee Groves', '', 'Wardland', '05495', 'US', 'VT', '', '');
INSERT INTO "public"."account_address" VALUES (10, 'Emily', 'Russell', '', '0029 Stacy Alley Apt. 493', '', 'Erichaven', '29457', 'US', 'SC', '', '');
INSERT INTO "public"."account_address" VALUES (11, 'Christopher', 'Mason', '', '5449 James Crossing', '', 'Michaelshire', '31789', 'US', 'GA', '', '');
INSERT INTO "public"."account_address" VALUES (12, 'Michael', 'Scott', '', '105 Martinez Mews', '', 'Karenchester', '82583', 'US', 'WY', '', '');
INSERT INTO "public"."account_address" VALUES (13, 'Joseph', 'Austin', '', '060 Chan Crossing', '', 'Mcleanstad', '08183', 'US', 'NJ', '', '');
INSERT INTO "public"."account_address" VALUES (14, 'Nicole', 'Keith', '', '9381 Carpenter Corners Suite 378', '', 'North Katie', '01346', 'US', 'MA', '', '');
INSERT INTO "public"."account_address" VALUES (15, 'John', 'Wells', '', '6936 Armstrong Club Apt. 359', '', 'Lake Evan', '57047', 'US', 'SD', '', '');
INSERT INTO "public"."account_address" VALUES (16, 'Crystal', 'Whitaker', '', '8916 Gibbs Drive Apt. 134', '', 'Tannerfort', '70076', 'US', 'LA', '', '');
INSERT INTO "public"."account_address" VALUES (17, 'Kimberly', 'Nash', '', '394 Shah Trail Suite 481', '', 'Port Tim', '72301', 'US', 'AR', '', '');
INSERT INTO "public"."account_address" VALUES (18, 'Sabrina', 'Rogers', '', '2979 Mejia Pass', '', 'Daniellemouth', '48982', 'US', 'MI', '', '');
INSERT INTO "public"."account_address" VALUES (19, 'Vincent', 'Campos', '', '753 Reyes Route', '', 'South Catherine', '55757', 'US', 'MN', '', '');
INSERT INTO "public"."account_address" VALUES (20, 'Raymond', 'Cook', '', '9214 Santos View', '', 'North Heather', '81113', 'US', 'CO', '', '');
INSERT INTO "public"."account_address" VALUES (21, 'Barbara', 'Mcneil', '', '80765 Lisa Inlet', '', 'New Yeseniaberg', '21888', 'US', 'MD', '', '');
INSERT INTO "public"."account_address" VALUES (22, 'Gary', 'Rodriguez', '', '78162 Johnson Trace', '', 'West Davidfort', '68101', 'US', 'NE', '', '');
INSERT INTO "public"."account_address" VALUES (23, 'Audrey', 'Ray', '', '29549 Nash Coves', '', 'Port Kevin', '83771', 'US', 'ID', '', '');
INSERT INTO "public"."account_address" VALUES (24, 'Michele', 'Brady', '', '39477 Floyd Oval Apt. 402', '', 'Gonzalesville', '36182', 'US', 'AL', '', '');
INSERT INTO "public"."account_address" VALUES (25, 'Crystal', 'Patel', '', '734 Justin Meadows Suite 762', '', 'North Michael', '90802', 'US', 'CA', '', '');
INSERT INTO "public"."account_address" VALUES (26, 'Nancy', 'Johnson', '', '019 Kyle Fords', '', 'New Ashley', '41258', 'US', 'KY', '', '');
INSERT INTO "public"."account_address" VALUES (27, 'Robert', 'Johns', '', '826 Kennedy Overpass', '', 'Lake Laurastad', '28180', 'US', 'NC', '', '');
INSERT INTO "public"."account_address" VALUES (28, 'Samantha', 'Johnson', '', '26086 Turner Walk Suite 545', '', 'Evansmouth', '38964', 'US', 'MS', '', '');
INSERT INTO "public"."account_address" VALUES (29, 'Lauren', 'Oconnell', '', '3207 Patel Key', '', 'West David', '67483', 'US', 'KS', '', '');
INSERT INTO "public"."account_address" VALUES (30, 'Nicole', 'Schneider', '', '1979 Mcneil Lakes Apt. 903', '', 'Rogershaven', '54940', 'US', 'WI', '', '');
INSERT INTO "public"."account_address" VALUES (31, 'Jason', 'Warner', '', '779 Davis Mall', '', 'Lake Michellemouth', '61451', 'US', 'IL', '', '');
INSERT INTO "public"."account_address" VALUES (32, 'David', 'Harris', '', '281 Christina Walks Suite 473', '', 'East Jillian', '68053', 'US', 'NE', '', '');
INSERT INTO "public"."account_address" VALUES (33, 'Kathryn', 'Smith', '', '6086 Lutz Vista', '', 'Gillview', '57413', 'US', 'SD', '', '');
INSERT INTO "public"."account_address" VALUES (34, 'Maria', 'Schwartz', '', '4990 Pitts Pines Suite 625', '', 'Rasmussenborough', '19794', 'US', 'DE', '', '');
INSERT INTO "public"."account_address" VALUES (35, 'Michelle', 'Bradley', '', '20051 Megan Route Suite 528', '', 'South Morgan', '21196', 'US', 'MD', '', '');
INSERT INTO "public"."account_address" VALUES (36, 'Cheryl', 'Garner', '', '622 Washington Valley', '', 'South Meredith', '83661', 'US', 'ID', '', '');
INSERT INTO "public"."account_address" VALUES (37, 'Kenneth', 'Gallagher', '', '533 Hogan Forge', '', 'Bradleyfort', '28475', 'US', 'NC', '', '');
INSERT INTO "public"."account_address" VALUES (38, 'Janice', 'Becker', '', '7593 Smith Creek Suite 762', '', 'Quinnshire', '38847', 'US', 'MS', '', '');
INSERT INTO "public"."account_address" VALUES (39, 'Janice', 'Becker', '', '7593 Smith Creek Suite 762', '', 'Quinnshire', '38847', 'US', 'MS', '', '');
INSERT INTO "public"."account_address" VALUES (40, 'Laura', 'Mendez', '', '783 Monique Light Suite 739', '', 'Crystalview', '03477', 'US', 'NH', '', '');
INSERT INTO "public"."account_address" VALUES (41, 'Natalie', 'Beck', '', '55589 Powers Land Suite 700', '', 'North Michaelburgh', '49794', 'US', 'MI', '', '');
COMMIT;

-- ----------------------------
-- Table structure for account_customerevent
-- ----------------------------
DROP TABLE IF EXISTS "public"."account_customerevent";
CREATE TABLE "public"."account_customerevent" (
  "id" int4 NOT NULL DEFAULT nextval('account_customerevent_id_seq'::regclass),
  "date" timestamptz(6) NOT NULL,
  "type" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "parameters" jsonb NOT NULL,
  "order_id" int4,
  "user_id" int4 NOT NULL
)
;
ALTER TABLE "public"."account_customerevent" OWNER TO "saleor";

-- ----------------------------
-- Records of account_customerevent
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for account_customernote
-- ----------------------------
DROP TABLE IF EXISTS "public"."account_customernote";
CREATE TABLE "public"."account_customernote" (
  "id" int4 NOT NULL DEFAULT nextval('account_customernote_id_seq'::regclass),
  "date" timestamptz(6) NOT NULL,
  "content" text COLLATE "pg_catalog"."default" NOT NULL,
  "is_public" bool NOT NULL,
  "customer_id" int4 NOT NULL,
  "user_id" int4
)
;
ALTER TABLE "public"."account_customernote" OWNER TO "saleor";

-- ----------------------------
-- Records of account_customernote
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for account_staffnotificationrecipient
-- ----------------------------
DROP TABLE IF EXISTS "public"."account_staffnotificationrecipient";
CREATE TABLE "public"."account_staffnotificationrecipient" (
  "id" int4 NOT NULL DEFAULT nextval('account_staffnotificationrecipient_id_seq'::regclass),
  "staff_email" varchar(254) COLLATE "pg_catalog"."default",
  "active" bool NOT NULL,
  "user_id" int4
)
;
ALTER TABLE "public"."account_staffnotificationrecipient" OWNER TO "saleor";

-- ----------------------------
-- Records of account_staffnotificationrecipient
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for account_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."account_user";
CREATE TABLE "public"."account_user" (
  "id" int4 NOT NULL DEFAULT nextval('userprofile_user_id_seq'::regclass),
  "is_superuser" bool NOT NULL,
  "email" varchar(254) COLLATE "pg_catalog"."default" NOT NULL,
  "is_staff" bool NOT NULL,
  "is_active" bool NOT NULL,
  "password" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "date_joined" timestamptz(6) NOT NULL,
  "last_login" timestamptz(6),
  "default_billing_address_id" int4,
  "default_shipping_address_id" int4,
  "note" text COLLATE "pg_catalog"."default",
  "first_name" varchar(256) COLLATE "pg_catalog"."default" NOT NULL,
  "last_name" varchar(256) COLLATE "pg_catalog"."default" NOT NULL,
  "avatar" varchar(100) COLLATE "pg_catalog"."default",
  "private_metadata" jsonb,
  "metadata" jsonb,
  "jwt_token_key" varchar(12) COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."account_user" OWNER TO "saleor";

-- ----------------------------
-- Records of account_user
-- ----------------------------
BEGIN;
INSERT INTO "public"."account_user" VALUES (1, 'f', 'cameron.frank@example.com', 'f', 't', 'password', '2010-01-16 20:06:22+00', NULL, 6, 6, 'Contain reach go almost during. Half yard six push between. Throughout budget should another student late.', 'Cameron', 'Frank', '', '{}', '{}', '7c12qWFSETre');
INSERT INTO "public"."account_user" VALUES (2, 'f', 'amber.perkins@example.com', 'f', 't', 'password', '2002-01-19 04:55:27+00', NULL, 7, 7, 'Family small explain standard. We become none court forward continue develop.', 'Amber', 'Perkins', '', '{}', '{}', 'JN0Wb211gLj8');
INSERT INTO "public"."account_user" VALUES (3, 'f', 'diane.jones@example.com', 'f', 't', 'password', '2000-08-29 16:28:40+00', NULL, 8, 8, 'Rise force member along certainly friend. Central dog here really cause she example.', 'Diane', 'Jones', '', '{}', '{}', 'WN14Y7sPK1mz');
INSERT INTO "public"."account_user" VALUES (4, 'f', 'annette.jackson@example.com', 'f', 't', 'password', '1974-05-04 09:38:00+00', NULL, 9, 9, 'International whether city. Reduce really soldier job. Forget line design reach shake.', 'Annette', 'Jackson', '', '{}', '{}', 'JtO8Ft123MEf');
INSERT INTO "public"."account_user" VALUES (5, 'f', 'emily.russell@example.com', 'f', 't', 'password', '1980-06-19 16:28:25+00', NULL, 10, 10, 'Reach end son care. Common member movie price.', 'Emily', 'Russell', '', '{}', '{}', 'Qum3uIA21dIQ');
INSERT INTO "public"."account_user" VALUES (6, 'f', 'christopher.mason@example.com', 'f', 't', 'password', '2006-06-06 16:45:48+00', NULL, 11, 11, 'Later toward statement cold common thing.', 'Christopher', 'Mason', '', '{}', '{}', 'fiK3SDcGrCtW');
INSERT INTO "public"."account_user" VALUES (7, 'f', 'michael.scott@example.com', 'f', 't', 'password', '1999-08-10 02:29:22+00', NULL, 12, 12, 'Trial ready bad. Response probably sound late. Note since nature.', 'Michael', 'Scott', '', '{}', '{}', 'TfzH5Z3slJwg');
INSERT INTO "public"."account_user" VALUES (8, 'f', 'joseph.austin@example.com', 'f', 't', 'password', '2007-10-27 12:19:46+00', NULL, 13, 13, 'Home avoid record voice. Would part in respond five.', 'Joseph', 'Austin', '', '{}', '{}', 'wx30QZP3F75P');
INSERT INTO "public"."account_user" VALUES (9, 'f', 'nicole.keith@example.com', 'f', 't', 'password', '2000-11-20 22:51:18+00', NULL, 14, 14, 'Look leave old father common oil. Store race light music travel senior hand. Actually window particular carry.', 'Nicole', 'Keith', '', '{}', '{}', 'hPqX7HDctDpL');
INSERT INTO "public"."account_user" VALUES (10, 'f', 'john.wells@example.com', 'f', 't', 'password', '1992-12-03 05:11:37+00', NULL, 15, 15, 'Medical eye back few side various. Significant prevent hair worker various model street.', 'John', 'Wells', '', '{}', '{}', 'jctJcwZdvlfK');
INSERT INTO "public"."account_user" VALUES (11, 'f', 'crystal.whitaker@example.com', 'f', 't', 'password', '1994-06-23 18:01:09+00', NULL, 16, 16, 'Same turn example great social action write practice. Interest manager measure.', 'Crystal', 'Whitaker', '', '{}', '{}', 'a18xdgsVSq11');
INSERT INTO "public"."account_user" VALUES (12, 'f', 'kimberly.nash@example.com', 'f', 't', 'password', '1987-08-11 20:00:35+00', NULL, 17, 17, 'Mean carry give suddenly space. Record great way democratic. Because newspaper later either single air.', 'Kimberly', 'Nash', '', '{}', '{}', 'gbQpHrxmIand');
INSERT INTO "public"."account_user" VALUES (13, 'f', 'sabrina.rogers@example.com', 'f', 't', 'password', '1980-01-29 12:46:40+00', NULL, 18, 18, 'Assume however authority discuss appear discover impact. Turn identify attorney write car writer affect.', 'Sabrina', 'Rogers', '', '{}', '{}', 'AMZZK6KfQA5P');
INSERT INTO "public"."account_user" VALUES (14, 'f', 'vincent.campos@example.com', 'f', 't', 'password', '1975-09-01 23:41:41+00', NULL, 19, 19, 'Behind kind risk. Eat skill bit. Less miss my. Bank statement police cover everything born candidate.', 'Vincent', 'Campos', '', '{}', '{}', 'xgfhDjYmWgv8');
INSERT INTO "public"."account_user" VALUES (15, 'f', 'raymond.cook@example.com', 'f', 't', 'password', '1987-08-22 18:54:12+00', NULL, 20, 20, 'Represent early big now tough. Order turn few investment.', 'Raymond', 'Cook', '', '{}', '{}', 'qrLvmOXwjG29');
INSERT INTO "public"."account_user" VALUES (16, 'f', 'barbara.mcneil@example.com', 'f', 't', 'password', '1975-06-05 14:43:21+00', NULL, 21, 21, 'What sound occur example. House catch arm dog pretty line.', 'Barbara', 'Mcneil', '', '{}', '{}', 'WvfjBBWaml0X');
INSERT INTO "public"."account_user" VALUES (17, 'f', 'gary.rodriguez@example.com', 'f', 't', 'password', '1994-06-14 11:30:10+00', NULL, 22, 22, 'Focus difficult age girl. Tv realize well fly like east part.', 'Gary', 'Rodriguez', '', '{}', '{}', 'HjyCi07Tc9Rt');
INSERT INTO "public"."account_user" VALUES (18, 'f', 'audrey.ray@example.com', 'f', 't', 'password', '2015-10-30 23:19:39+00', NULL, 23, 23, 'Same police camera season phone. Point with government player season not.', 'Audrey', 'Ray', '', '{}', '{}', 'Y531cbiwu16u');
INSERT INTO "public"."account_user" VALUES (19, 'f', 'michele.brady@example.com', 'f', 't', 'password', '2020-09-17 01:58:12+00', NULL, 24, 24, 'After someone which type future himself either. Society white pick during eight.', 'Michele', 'Brady', '', '{}', '{}', 'zP3zvCeIRuYo');
INSERT INTO "public"."account_user" VALUES (20, 'f', 'crystal.patel@example.com', 'f', 't', 'password', '2003-02-24 04:12:30+00', NULL, 25, 25, 'Entire necessary quickly let. Record administration class.', 'Crystal', 'Patel', '', '{}', '{}', 'NKfoifEdb3ho');
INSERT INTO "public"."account_user" VALUES (22, 'f', 'laura.mendez@example.com', 't', 't', 'pbkdf2_sha256$216000$u12kfBREVWg5$jjFylxsOIbLEXuhf5ZN0Zidxkxet6uVne1F0DIUQVN8=', '2020-11-27 08:05:13.059477+00', NULL, 40, 40, NULL, 'Laura', 'Mendez', '', '{}', '{}', 'rkhNNfFALUyl');
INSERT INTO "public"."account_user" VALUES (23, 'f', 'natalie.beck@example.com', 't', 't', 'pbkdf2_sha256$216000$NzwXsls9ggRQ$hcnA/OFDLuWya+tM1Q71JKNlX1GyacQib/V2WGHas90=', '2020-11-27 08:05:13.188373+00', NULL, 41, 41, NULL, 'Natalie', 'Beck', '', '{}', '{}', 'rFdC6qwTr3ue');
INSERT INTO "public"."account_user" VALUES (21, 't', 'admin@example.com', 't', 't', 'pbkdf2_sha256$216000$cuuq7rPe18c6$ZaUu4mVVbirf/m9aDmKUnYnLQcLRHGCDcACJ+5HQI0s=', '2020-11-27 08:05:12.83807+00', '2020-11-27 08:14:02.699342+00', 39, 39, NULL, '', '', '', '{}', '{}', 'BM7jgepVnt7s');
COMMIT;

-- ----------------------------
-- Table structure for account_user_addresses
-- ----------------------------
DROP TABLE IF EXISTS "public"."account_user_addresses";
CREATE TABLE "public"."account_user_addresses" (
  "id" int4 NOT NULL DEFAULT nextval('userprofile_user_addresses_id_seq'::regclass),
  "user_id" int4 NOT NULL,
  "address_id" int4 NOT NULL
)
;
ALTER TABLE "public"."account_user_addresses" OWNER TO "saleor";

-- ----------------------------
-- Records of account_user_addresses
-- ----------------------------
BEGIN;
INSERT INTO "public"."account_user_addresses" VALUES (1, 1, 6);
INSERT INTO "public"."account_user_addresses" VALUES (2, 2, 7);
INSERT INTO "public"."account_user_addresses" VALUES (3, 3, 8);
INSERT INTO "public"."account_user_addresses" VALUES (4, 4, 9);
INSERT INTO "public"."account_user_addresses" VALUES (5, 5, 10);
INSERT INTO "public"."account_user_addresses" VALUES (6, 6, 11);
INSERT INTO "public"."account_user_addresses" VALUES (7, 7, 12);
INSERT INTO "public"."account_user_addresses" VALUES (8, 8, 13);
INSERT INTO "public"."account_user_addresses" VALUES (9, 9, 14);
INSERT INTO "public"."account_user_addresses" VALUES (10, 10, 15);
INSERT INTO "public"."account_user_addresses" VALUES (11, 11, 16);
INSERT INTO "public"."account_user_addresses" VALUES (12, 12, 17);
INSERT INTO "public"."account_user_addresses" VALUES (13, 13, 18);
INSERT INTO "public"."account_user_addresses" VALUES (14, 14, 19);
INSERT INTO "public"."account_user_addresses" VALUES (15, 15, 20);
INSERT INTO "public"."account_user_addresses" VALUES (16, 16, 21);
INSERT INTO "public"."account_user_addresses" VALUES (17, 17, 22);
INSERT INTO "public"."account_user_addresses" VALUES (18, 18, 23);
INSERT INTO "public"."account_user_addresses" VALUES (19, 19, 24);
INSERT INTO "public"."account_user_addresses" VALUES (20, 20, 25);
INSERT INTO "public"."account_user_addresses" VALUES (21, 21, 39);
COMMIT;

-- ----------------------------
-- Table structure for account_user_groups
-- ----------------------------
DROP TABLE IF EXISTS "public"."account_user_groups";
CREATE TABLE "public"."account_user_groups" (
  "id" int4 NOT NULL DEFAULT nextval('userprofile_user_groups_id_seq'::regclass),
  "user_id" int4 NOT NULL,
  "group_id" int4 NOT NULL
)
;
ALTER TABLE "public"."account_user_groups" OWNER TO "saleor";

-- ----------------------------
-- Records of account_user_groups
-- ----------------------------
BEGIN;
INSERT INTO "public"."account_user_groups" VALUES (1, 21, 1);
INSERT INTO "public"."account_user_groups" VALUES (2, 22, 2);
INSERT INTO "public"."account_user_groups" VALUES (3, 23, 2);
COMMIT;

-- ----------------------------
-- Table structure for account_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS "public"."account_user_user_permissions";
CREATE TABLE "public"."account_user_user_permissions" (
  "id" int4 NOT NULL DEFAULT nextval('userprofile_user_user_permissions_id_seq'::regclass),
  "user_id" int4 NOT NULL,
  "permission_id" int4 NOT NULL
)
;
ALTER TABLE "public"."account_user_user_permissions" OWNER TO "saleor";

-- ----------------------------
-- Records of account_user_user_permissions
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for app_app
-- ----------------------------
DROP TABLE IF EXISTS "public"."app_app";
CREATE TABLE "public"."app_app" (
  "id" int4 NOT NULL DEFAULT nextval('account_serviceaccount_id_seq'::regclass),
  "private_metadata" jsonb,
  "metadata" jsonb,
  "name" varchar(60) COLLATE "pg_catalog"."default" NOT NULL,
  "created" timestamptz(6) NOT NULL,
  "is_active" bool NOT NULL,
  "about_app" text COLLATE "pg_catalog"."default",
  "app_url" varchar(200) COLLATE "pg_catalog"."default",
  "configuration_url" varchar(200) COLLATE "pg_catalog"."default",
  "data_privacy" text COLLATE "pg_catalog"."default",
  "data_privacy_url" varchar(200) COLLATE "pg_catalog"."default",
  "homepage_url" varchar(200) COLLATE "pg_catalog"."default",
  "identifier" varchar(256) COLLATE "pg_catalog"."default",
  "support_url" varchar(200) COLLATE "pg_catalog"."default",
  "type" varchar(60) COLLATE "pg_catalog"."default" NOT NULL,
  "version" varchar(60) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."app_app" OWNER TO "saleor";

-- ----------------------------
-- Records of app_app
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for app_app_permissions
-- ----------------------------
DROP TABLE IF EXISTS "public"."app_app_permissions";
CREATE TABLE "public"."app_app_permissions" (
  "id" int4 NOT NULL DEFAULT nextval('account_serviceaccount_permissions_id_seq'::regclass),
  "app_id" int4 NOT NULL,
  "permission_id" int4 NOT NULL
)
;
ALTER TABLE "public"."app_app_permissions" OWNER TO "saleor";

-- ----------------------------
-- Records of app_app_permissions
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for app_appinstallation
-- ----------------------------
DROP TABLE IF EXISTS "public"."app_appinstallation";
CREATE TABLE "public"."app_appinstallation" (
  "id" int4 NOT NULL DEFAULT nextval('app_appinstallation_id_seq'::regclass),
  "status" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "message" varchar(255) COLLATE "pg_catalog"."default",
  "created_at" timestamptz(6) NOT NULL,
  "updated_at" timestamptz(6) NOT NULL,
  "app_name" varchar(60) COLLATE "pg_catalog"."default" NOT NULL,
  "manifest_url" varchar(200) COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."app_appinstallation" OWNER TO "saleor";

-- ----------------------------
-- Records of app_appinstallation
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for app_appinstallation_permissions
-- ----------------------------
DROP TABLE IF EXISTS "public"."app_appinstallation_permissions";
CREATE TABLE "public"."app_appinstallation_permissions" (
  "id" int4 NOT NULL DEFAULT nextval('app_appinstallation_permissions_id_seq'::regclass),
  "appinstallation_id" int4 NOT NULL,
  "permission_id" int4 NOT NULL
)
;
ALTER TABLE "public"."app_appinstallation_permissions" OWNER TO "saleor";

-- ----------------------------
-- Records of app_appinstallation_permissions
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for app_apptoken
-- ----------------------------
DROP TABLE IF EXISTS "public"."app_apptoken";
CREATE TABLE "public"."app_apptoken" (
  "id" int4 NOT NULL DEFAULT nextval('account_serviceaccounttoken_id_seq'::regclass),
  "name" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "auth_token" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "app_id" int4 NOT NULL
)
;
ALTER TABLE "public"."app_apptoken" OWNER TO "saleor";

-- ----------------------------
-- Records of app_apptoken
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_group";
CREATE TABLE "public"."auth_group" (
  "id" int4 NOT NULL DEFAULT nextval('auth_group_id_seq'::regclass),
  "name" varchar(150) COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."auth_group" OWNER TO "saleor";

-- ----------------------------
-- Records of auth_group
-- ----------------------------
BEGIN;
INSERT INTO "public"."auth_group" VALUES (1, 'Full Access');
INSERT INTO "public"."auth_group" VALUES (2, 'Customer Support');
COMMIT;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_group_permissions";
CREATE TABLE "public"."auth_group_permissions" (
  "id" int4 NOT NULL DEFAULT nextval('auth_group_permissions_id_seq'::regclass),
  "group_id" int4 NOT NULL,
  "permission_id" int4 NOT NULL
)
;
ALTER TABLE "public"."auth_group_permissions" OWNER TO "saleor";

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------
BEGIN;
INSERT INTO "public"."auth_group_permissions" VALUES (1, 1, 194);
INSERT INTO "public"."auth_group_permissions" VALUES (2, 1, 164);
INSERT INTO "public"."auth_group_permissions" VALUES (3, 1, 69);
INSERT INTO "public"."auth_group_permissions" VALUES (4, 1, 5);
INSERT INTO "public"."auth_group_permissions" VALUES (5, 1, 295);
INSERT INTO "public"."auth_group_permissions" VALUES (6, 1, 236);
INSERT INTO "public"."auth_group_permissions" VALUES (7, 1, 31);
INSERT INTO "public"."auth_group_permissions" VALUES (8, 1, 237);
INSERT INTO "public"."auth_group_permissions" VALUES (9, 1, 82);
INSERT INTO "public"."auth_group_permissions" VALUES (10, 1, 181);
INSERT INTO "public"."auth_group_permissions" VALUES (11, 1, 87);
INSERT INTO "public"."auth_group_permissions" VALUES (12, 1, 250);
INSERT INTO "public"."auth_group_permissions" VALUES (13, 1, 60);
INSERT INTO "public"."auth_group_permissions" VALUES (14, 1, 30);
INSERT INTO "public"."auth_group_permissions" VALUES (15, 1, 223);
INSERT INTO "public"."auth_group_permissions" VALUES (16, 2, 194);
INSERT INTO "public"."auth_group_permissions" VALUES (17, 2, 164);
INSERT INTO "public"."auth_group_permissions" VALUES (18, 2, 69);
INSERT INTO "public"."auth_group_permissions" VALUES (19, 2, 30);
COMMIT;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_permission";
CREATE TABLE "public"."auth_permission" (
  "id" int4 NOT NULL DEFAULT nextval('auth_permission_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "content_type_id" int4 NOT NULL,
  "codename" varchar(100) COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."auth_permission" OWNER TO "saleor";

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
BEGIN;
INSERT INTO "public"."auth_permission" VALUES (1, 'Can add plugin configuration', 1, 'add_pluginconfiguration');
INSERT INTO "public"."auth_permission" VALUES (2, 'Can change plugin configuration', 1, 'change_pluginconfiguration');
INSERT INTO "public"."auth_permission" VALUES (3, 'Can delete plugin configuration', 1, 'delete_pluginconfiguration');
INSERT INTO "public"."auth_permission" VALUES (4, 'Can view plugin configuration', 1, 'view_pluginconfiguration');
INSERT INTO "public"."auth_permission" VALUES (5, 'Manage plugins', 1, 'manage_plugins');
INSERT INTO "public"."auth_permission" VALUES (6, 'Can add content type', 2, 'add_contenttype');
INSERT INTO "public"."auth_permission" VALUES (7, 'Can change content type', 2, 'change_contenttype');
INSERT INTO "public"."auth_permission" VALUES (8, 'Can delete content type', 2, 'delete_contenttype');
INSERT INTO "public"."auth_permission" VALUES (9, 'Can view content type', 2, 'view_contenttype');
INSERT INTO "public"."auth_permission" VALUES (10, 'Can add site', 3, 'add_site');
INSERT INTO "public"."auth_permission" VALUES (11, 'Can change site', 3, 'change_site');
INSERT INTO "public"."auth_permission" VALUES (12, 'Can delete site', 3, 'delete_site');
INSERT INTO "public"."auth_permission" VALUES (13, 'Can view site', 3, 'view_site');
INSERT INTO "public"."auth_permission" VALUES (14, 'Can add permission', 4, 'add_permission');
INSERT INTO "public"."auth_permission" VALUES (15, 'Can change permission', 4, 'change_permission');
INSERT INTO "public"."auth_permission" VALUES (16, 'Can delete permission', 4, 'delete_permission');
INSERT INTO "public"."auth_permission" VALUES (17, 'Can view permission', 4, 'view_permission');
INSERT INTO "public"."auth_permission" VALUES (18, 'Can add group', 5, 'add_group');
INSERT INTO "public"."auth_permission" VALUES (19, 'Can change group', 5, 'change_group');
INSERT INTO "public"."auth_permission" VALUES (20, 'Can delete group', 5, 'delete_group');
INSERT INTO "public"."auth_permission" VALUES (21, 'Can view group', 5, 'view_group');
INSERT INTO "public"."auth_permission" VALUES (22, 'Can add address', 6, 'add_address');
INSERT INTO "public"."auth_permission" VALUES (23, 'Can change address', 6, 'change_address');
INSERT INTO "public"."auth_permission" VALUES (24, 'Can delete address', 6, 'delete_address');
INSERT INTO "public"."auth_permission" VALUES (25, 'Can view address', 6, 'view_address');
INSERT INTO "public"."auth_permission" VALUES (26, 'Can add user', 7, 'add_user');
INSERT INTO "public"."auth_permission" VALUES (27, 'Can change user', 7, 'change_user');
INSERT INTO "public"."auth_permission" VALUES (28, 'Can delete user', 7, 'delete_user');
INSERT INTO "public"."auth_permission" VALUES (29, 'Can view user', 7, 'view_user');
INSERT INTO "public"."auth_permission" VALUES (30, 'Manage customers.', 7, 'manage_users');
INSERT INTO "public"."auth_permission" VALUES (31, 'Manage staff.', 7, 'manage_staff');
INSERT INTO "public"."auth_permission" VALUES (32, 'Can add customer note', 8, 'add_customernote');
INSERT INTO "public"."auth_permission" VALUES (33, 'Can change customer note', 8, 'change_customernote');
INSERT INTO "public"."auth_permission" VALUES (34, 'Can delete customer note', 8, 'delete_customernote');
INSERT INTO "public"."auth_permission" VALUES (35, 'Can view customer note', 8, 'view_customernote');
INSERT INTO "public"."auth_permission" VALUES (36, 'Can add customer event', 9, 'add_customerevent');
INSERT INTO "public"."auth_permission" VALUES (37, 'Can change customer event', 9, 'change_customerevent');
INSERT INTO "public"."auth_permission" VALUES (38, 'Can delete customer event', 9, 'delete_customerevent');
INSERT INTO "public"."auth_permission" VALUES (39, 'Can view customer event', 9, 'view_customerevent');
INSERT INTO "public"."auth_permission" VALUES (40, 'Can add staff notification recipient', 10, 'add_staffnotificationrecipient');
INSERT INTO "public"."auth_permission" VALUES (41, 'Can change staff notification recipient', 10, 'change_staffnotificationrecipient');
INSERT INTO "public"."auth_permission" VALUES (42, 'Can delete staff notification recipient', 10, 'delete_staffnotificationrecipient');
INSERT INTO "public"."auth_permission" VALUES (43, 'Can view staff notification recipient', 10, 'view_staffnotificationrecipient');
INSERT INTO "public"."auth_permission" VALUES (44, 'Can add voucher', 11, 'add_voucher');
INSERT INTO "public"."auth_permission" VALUES (45, 'Can change voucher', 11, 'change_voucher');
INSERT INTO "public"."auth_permission" VALUES (46, 'Can delete voucher', 11, 'delete_voucher');
INSERT INTO "public"."auth_permission" VALUES (47, 'Can view voucher', 11, 'view_voucher');
INSERT INTO "public"."auth_permission" VALUES (48, 'Can add voucher customer', 12, 'add_vouchercustomer');
INSERT INTO "public"."auth_permission" VALUES (49, 'Can change voucher customer', 12, 'change_vouchercustomer');
INSERT INTO "public"."auth_permission" VALUES (50, 'Can delete voucher customer', 12, 'delete_vouchercustomer');
INSERT INTO "public"."auth_permission" VALUES (51, 'Can view voucher customer', 12, 'view_vouchercustomer');
INSERT INTO "public"."auth_permission" VALUES (52, 'Can add voucher translation', 13, 'add_vouchertranslation');
INSERT INTO "public"."auth_permission" VALUES (53, 'Can change voucher translation', 13, 'change_vouchertranslation');
INSERT INTO "public"."auth_permission" VALUES (54, 'Can delete voucher translation', 13, 'delete_vouchertranslation');
INSERT INTO "public"."auth_permission" VALUES (55, 'Can view voucher translation', 13, 'view_vouchertranslation');
INSERT INTO "public"."auth_permission" VALUES (56, 'Can add sale', 14, 'add_sale');
INSERT INTO "public"."auth_permission" VALUES (57, 'Can change sale', 14, 'change_sale');
INSERT INTO "public"."auth_permission" VALUES (58, 'Can delete sale', 14, 'delete_sale');
INSERT INTO "public"."auth_permission" VALUES (59, 'Can view sale', 14, 'view_sale');
INSERT INTO "public"."auth_permission" VALUES (60, 'Manage sales and vouchers.', 14, 'manage_discounts');
INSERT INTO "public"."auth_permission" VALUES (61, 'Can add sale translation', 15, 'add_saletranslation');
INSERT INTO "public"."auth_permission" VALUES (62, 'Can change sale translation', 15, 'change_saletranslation');
INSERT INTO "public"."auth_permission" VALUES (63, 'Can delete sale translation', 15, 'delete_saletranslation');
INSERT INTO "public"."auth_permission" VALUES (64, 'Can view sale translation', 15, 'view_saletranslation');
INSERT INTO "public"."auth_permission" VALUES (65, 'Can add gift card', 16, 'add_giftcard');
INSERT INTO "public"."auth_permission" VALUES (66, 'Can change gift card', 16, 'change_giftcard');
INSERT INTO "public"."auth_permission" VALUES (67, 'Can delete gift card', 16, 'delete_giftcard');
INSERT INTO "public"."auth_permission" VALUES (68, 'Can view gift card', 16, 'view_giftcard');
INSERT INTO "public"."auth_permission" VALUES (69, 'Manage gift cards.', 16, 'manage_gift_card');
INSERT INTO "public"."auth_permission" VALUES (70, 'Can add category', 17, 'add_category');
INSERT INTO "public"."auth_permission" VALUES (71, 'Can change category', 17, 'change_category');
INSERT INTO "public"."auth_permission" VALUES (72, 'Can delete category', 17, 'delete_category');
INSERT INTO "public"."auth_permission" VALUES (73, 'Can view category', 17, 'view_category');
INSERT INTO "public"."auth_permission" VALUES (74, 'Can add category translation', 18, 'add_categorytranslation');
INSERT INTO "public"."auth_permission" VALUES (75, 'Can change category translation', 18, 'change_categorytranslation');
INSERT INTO "public"."auth_permission" VALUES (76, 'Can delete category translation', 18, 'delete_categorytranslation');
INSERT INTO "public"."auth_permission" VALUES (77, 'Can view category translation', 18, 'view_categorytranslation');
INSERT INTO "public"."auth_permission" VALUES (78, 'Can add product type', 19, 'add_producttype');
INSERT INTO "public"."auth_permission" VALUES (79, 'Can change product type', 19, 'change_producttype');
INSERT INTO "public"."auth_permission" VALUES (80, 'Can delete product type', 19, 'delete_producttype');
INSERT INTO "public"."auth_permission" VALUES (81, 'Can view product type', 19, 'view_producttype');
INSERT INTO "public"."auth_permission" VALUES (82, 'Manage product types and attributes.', 19, 'manage_product_types_and_attributes');
INSERT INTO "public"."auth_permission" VALUES (83, 'Can add product', 20, 'add_product');
INSERT INTO "public"."auth_permission" VALUES (84, 'Can change product', 20, 'change_product');
INSERT INTO "public"."auth_permission" VALUES (85, 'Can delete product', 20, 'delete_product');
INSERT INTO "public"."auth_permission" VALUES (86, 'Can view product', 20, 'view_product');
INSERT INTO "public"."auth_permission" VALUES (87, 'Manage products.', 20, 'manage_products');
INSERT INTO "public"."auth_permission" VALUES (88, 'Can add product translation', 21, 'add_producttranslation');
INSERT INTO "public"."auth_permission" VALUES (89, 'Can change product translation', 21, 'change_producttranslation');
INSERT INTO "public"."auth_permission" VALUES (90, 'Can delete product translation', 21, 'delete_producttranslation');
INSERT INTO "public"."auth_permission" VALUES (91, 'Can view product translation', 21, 'view_producttranslation');
INSERT INTO "public"."auth_permission" VALUES (92, 'Can add product variant', 22, 'add_productvariant');
INSERT INTO "public"."auth_permission" VALUES (93, 'Can change product variant', 22, 'change_productvariant');
INSERT INTO "public"."auth_permission" VALUES (94, 'Can delete product variant', 22, 'delete_productvariant');
INSERT INTO "public"."auth_permission" VALUES (95, 'Can view product variant', 22, 'view_productvariant');
INSERT INTO "public"."auth_permission" VALUES (96, 'Can add product variant translation', 23, 'add_productvarianttranslation');
INSERT INTO "public"."auth_permission" VALUES (97, 'Can change product variant translation', 23, 'change_productvarianttranslation');
INSERT INTO "public"."auth_permission" VALUES (98, 'Can delete product variant translation', 23, 'delete_productvarianttranslation');
INSERT INTO "public"."auth_permission" VALUES (99, 'Can view product variant translation', 23, 'view_productvarianttranslation');
INSERT INTO "public"."auth_permission" VALUES (100, 'Can add digital content', 24, 'add_digitalcontent');
INSERT INTO "public"."auth_permission" VALUES (101, 'Can change digital content', 24, 'change_digitalcontent');
INSERT INTO "public"."auth_permission" VALUES (102, 'Can delete digital content', 24, 'delete_digitalcontent');
INSERT INTO "public"."auth_permission" VALUES (103, 'Can view digital content', 24, 'view_digitalcontent');
INSERT INTO "public"."auth_permission" VALUES (104, 'Can add digital content url', 25, 'add_digitalcontenturl');
INSERT INTO "public"."auth_permission" VALUES (105, 'Can change digital content url', 25, 'change_digitalcontenturl');
INSERT INTO "public"."auth_permission" VALUES (106, 'Can delete digital content url', 25, 'delete_digitalcontenturl');
INSERT INTO "public"."auth_permission" VALUES (107, 'Can view digital content url', 25, 'view_digitalcontenturl');
INSERT INTO "public"."auth_permission" VALUES (108, 'Can add assigned product attribute', 26, 'add_assignedproductattribute');
INSERT INTO "public"."auth_permission" VALUES (109, 'Can change assigned product attribute', 26, 'change_assignedproductattribute');
INSERT INTO "public"."auth_permission" VALUES (110, 'Can delete assigned product attribute', 26, 'delete_assignedproductattribute');
INSERT INTO "public"."auth_permission" VALUES (111, 'Can view assigned product attribute', 26, 'view_assignedproductattribute');
INSERT INTO "public"."auth_permission" VALUES (112, 'Can add assigned variant attribute', 27, 'add_assignedvariantattribute');
INSERT INTO "public"."auth_permission" VALUES (113, 'Can change assigned variant attribute', 27, 'change_assignedvariantattribute');
INSERT INTO "public"."auth_permission" VALUES (114, 'Can delete assigned variant attribute', 27, 'delete_assignedvariantattribute');
INSERT INTO "public"."auth_permission" VALUES (115, 'Can view assigned variant attribute', 27, 'view_assignedvariantattribute');
INSERT INTO "public"."auth_permission" VALUES (116, 'Can add attribute product', 28, 'add_attributeproduct');
INSERT INTO "public"."auth_permission" VALUES (117, 'Can change attribute product', 28, 'change_attributeproduct');
INSERT INTO "public"."auth_permission" VALUES (118, 'Can delete attribute product', 28, 'delete_attributeproduct');
INSERT INTO "public"."auth_permission" VALUES (119, 'Can view attribute product', 28, 'view_attributeproduct');
INSERT INTO "public"."auth_permission" VALUES (120, 'Can add attribute variant', 29, 'add_attributevariant');
INSERT INTO "public"."auth_permission" VALUES (121, 'Can change attribute variant', 29, 'change_attributevariant');
INSERT INTO "public"."auth_permission" VALUES (122, 'Can delete attribute variant', 29, 'delete_attributevariant');
INSERT INTO "public"."auth_permission" VALUES (123, 'Can view attribute variant', 29, 'view_attributevariant');
INSERT INTO "public"."auth_permission" VALUES (124, 'Can add attribute', 30, 'add_attribute');
INSERT INTO "public"."auth_permission" VALUES (125, 'Can change attribute', 30, 'change_attribute');
INSERT INTO "public"."auth_permission" VALUES (126, 'Can delete attribute', 30, 'delete_attribute');
INSERT INTO "public"."auth_permission" VALUES (127, 'Can view attribute', 30, 'view_attribute');
INSERT INTO "public"."auth_permission" VALUES (128, 'Can add attribute translation', 31, 'add_attributetranslation');
INSERT INTO "public"."auth_permission" VALUES (129, 'Can change attribute translation', 31, 'change_attributetranslation');
INSERT INTO "public"."auth_permission" VALUES (130, 'Can delete attribute translation', 31, 'delete_attributetranslation');
INSERT INTO "public"."auth_permission" VALUES (131, 'Can view attribute translation', 31, 'view_attributetranslation');
INSERT INTO "public"."auth_permission" VALUES (132, 'Can add attribute value', 32, 'add_attributevalue');
INSERT INTO "public"."auth_permission" VALUES (133, 'Can change attribute value', 32, 'change_attributevalue');
INSERT INTO "public"."auth_permission" VALUES (134, 'Can delete attribute value', 32, 'delete_attributevalue');
INSERT INTO "public"."auth_permission" VALUES (135, 'Can view attribute value', 32, 'view_attributevalue');
INSERT INTO "public"."auth_permission" VALUES (136, 'Can add attribute value translation', 33, 'add_attributevaluetranslation');
INSERT INTO "public"."auth_permission" VALUES (137, 'Can change attribute value translation', 33, 'change_attributevaluetranslation');
INSERT INTO "public"."auth_permission" VALUES (138, 'Can delete attribute value translation', 33, 'delete_attributevaluetranslation');
INSERT INTO "public"."auth_permission" VALUES (139, 'Can view attribute value translation', 33, 'view_attributevaluetranslation');
INSERT INTO "public"."auth_permission" VALUES (140, 'Can add product image', 34, 'add_productimage');
INSERT INTO "public"."auth_permission" VALUES (141, 'Can change product image', 34, 'change_productimage');
INSERT INTO "public"."auth_permission" VALUES (142, 'Can delete product image', 34, 'delete_productimage');
INSERT INTO "public"."auth_permission" VALUES (143, 'Can view product image', 34, 'view_productimage');
INSERT INTO "public"."auth_permission" VALUES (144, 'Can add variant image', 35, 'add_variantimage');
INSERT INTO "public"."auth_permission" VALUES (145, 'Can change variant image', 35, 'change_variantimage');
INSERT INTO "public"."auth_permission" VALUES (146, 'Can delete variant image', 35, 'delete_variantimage');
INSERT INTO "public"."auth_permission" VALUES (147, 'Can view variant image', 35, 'view_variantimage');
INSERT INTO "public"."auth_permission" VALUES (148, 'Can add collection product', 36, 'add_collectionproduct');
INSERT INTO "public"."auth_permission" VALUES (149, 'Can change collection product', 36, 'change_collectionproduct');
INSERT INTO "public"."auth_permission" VALUES (150, 'Can delete collection product', 36, 'delete_collectionproduct');
INSERT INTO "public"."auth_permission" VALUES (151, 'Can view collection product', 36, 'view_collectionproduct');
INSERT INTO "public"."auth_permission" VALUES (152, 'Can add collection', 37, 'add_collection');
INSERT INTO "public"."auth_permission" VALUES (153, 'Can change collection', 37, 'change_collection');
INSERT INTO "public"."auth_permission" VALUES (154, 'Can delete collection', 37, 'delete_collection');
INSERT INTO "public"."auth_permission" VALUES (155, 'Can view collection', 37, 'view_collection');
INSERT INTO "public"."auth_permission" VALUES (156, 'Can add collection translation', 38, 'add_collectiontranslation');
INSERT INTO "public"."auth_permission" VALUES (157, 'Can change collection translation', 38, 'change_collectiontranslation');
INSERT INTO "public"."auth_permission" VALUES (158, 'Can delete collection translation', 38, 'delete_collectiontranslation');
INSERT INTO "public"."auth_permission" VALUES (159, 'Can view collection translation', 38, 'view_collectiontranslation');
INSERT INTO "public"."auth_permission" VALUES (160, 'Can add checkout', 39, 'add_checkout');
INSERT INTO "public"."auth_permission" VALUES (161, 'Can change checkout', 39, 'change_checkout');
INSERT INTO "public"."auth_permission" VALUES (162, 'Can delete checkout', 39, 'delete_checkout');
INSERT INTO "public"."auth_permission" VALUES (163, 'Can view checkout', 39, 'view_checkout');
INSERT INTO "public"."auth_permission" VALUES (164, 'Manage checkouts', 39, 'manage_checkouts');
INSERT INTO "public"."auth_permission" VALUES (165, 'Can add checkout line', 40, 'add_checkoutline');
INSERT INTO "public"."auth_permission" VALUES (166, 'Can change checkout line', 40, 'change_checkoutline');
INSERT INTO "public"."auth_permission" VALUES (167, 'Can delete checkout line', 40, 'delete_checkoutline');
INSERT INTO "public"."auth_permission" VALUES (168, 'Can view checkout line', 40, 'view_checkoutline');
INSERT INTO "public"."auth_permission" VALUES (169, 'Can add export file', 41, 'add_exportfile');
INSERT INTO "public"."auth_permission" VALUES (170, 'Can change export file', 41, 'change_exportfile');
INSERT INTO "public"."auth_permission" VALUES (171, 'Can delete export file', 41, 'delete_exportfile');
INSERT INTO "public"."auth_permission" VALUES (172, 'Can view export file', 41, 'view_exportfile');
INSERT INTO "public"."auth_permission" VALUES (173, 'Can add export event', 42, 'add_exportevent');
INSERT INTO "public"."auth_permission" VALUES (174, 'Can change export event', 42, 'change_exportevent');
INSERT INTO "public"."auth_permission" VALUES (175, 'Can delete export event', 42, 'delete_exportevent');
INSERT INTO "public"."auth_permission" VALUES (176, 'Can view export event', 42, 'view_exportevent');
INSERT INTO "public"."auth_permission" VALUES (177, 'Can add menu', 43, 'add_menu');
INSERT INTO "public"."auth_permission" VALUES (178, 'Can change menu', 43, 'change_menu');
INSERT INTO "public"."auth_permission" VALUES (179, 'Can delete menu', 43, 'delete_menu');
INSERT INTO "public"."auth_permission" VALUES (180, 'Can view menu', 43, 'view_menu');
INSERT INTO "public"."auth_permission" VALUES (181, 'Manage navigation.', 43, 'manage_menus');
INSERT INTO "public"."auth_permission" VALUES (182, 'Can add menu item', 44, 'add_menuitem');
INSERT INTO "public"."auth_permission" VALUES (183, 'Can change menu item', 44, 'change_menuitem');
INSERT INTO "public"."auth_permission" VALUES (184, 'Can delete menu item', 44, 'delete_menuitem');
INSERT INTO "public"."auth_permission" VALUES (185, 'Can view menu item', 44, 'view_menuitem');
INSERT INTO "public"."auth_permission" VALUES (186, 'Can add menu item translation', 45, 'add_menuitemtranslation');
INSERT INTO "public"."auth_permission" VALUES (187, 'Can change menu item translation', 45, 'change_menuitemtranslation');
INSERT INTO "public"."auth_permission" VALUES (188, 'Can delete menu item translation', 45, 'delete_menuitemtranslation');
INSERT INTO "public"."auth_permission" VALUES (189, 'Can view menu item translation', 45, 'view_menuitemtranslation');
INSERT INTO "public"."auth_permission" VALUES (190, 'Can add order', 46, 'add_order');
INSERT INTO "public"."auth_permission" VALUES (191, 'Can change order', 46, 'change_order');
INSERT INTO "public"."auth_permission" VALUES (192, 'Can delete order', 46, 'delete_order');
INSERT INTO "public"."auth_permission" VALUES (193, 'Can view order', 46, 'view_order');
INSERT INTO "public"."auth_permission" VALUES (194, 'Manage orders.', 46, 'manage_orders');
INSERT INTO "public"."auth_permission" VALUES (195, 'Can add order line', 47, 'add_orderline');
INSERT INTO "public"."auth_permission" VALUES (196, 'Can change order line', 47, 'change_orderline');
INSERT INTO "public"."auth_permission" VALUES (197, 'Can delete order line', 47, 'delete_orderline');
INSERT INTO "public"."auth_permission" VALUES (198, 'Can view order line', 47, 'view_orderline');
INSERT INTO "public"."auth_permission" VALUES (199, 'Can add fulfillment', 48, 'add_fulfillment');
INSERT INTO "public"."auth_permission" VALUES (200, 'Can change fulfillment', 48, 'change_fulfillment');
INSERT INTO "public"."auth_permission" VALUES (201, 'Can delete fulfillment', 48, 'delete_fulfillment');
INSERT INTO "public"."auth_permission" VALUES (202, 'Can view fulfillment', 48, 'view_fulfillment');
INSERT INTO "public"."auth_permission" VALUES (203, 'Can add fulfillment line', 49, 'add_fulfillmentline');
INSERT INTO "public"."auth_permission" VALUES (204, 'Can change fulfillment line', 49, 'change_fulfillmentline');
INSERT INTO "public"."auth_permission" VALUES (205, 'Can delete fulfillment line', 49, 'delete_fulfillmentline');
INSERT INTO "public"."auth_permission" VALUES (206, 'Can view fulfillment line', 49, 'view_fulfillmentline');
INSERT INTO "public"."auth_permission" VALUES (207, 'Can add order event', 50, 'add_orderevent');
INSERT INTO "public"."auth_permission" VALUES (208, 'Can change order event', 50, 'change_orderevent');
INSERT INTO "public"."auth_permission" VALUES (209, 'Can delete order event', 50, 'delete_orderevent');
INSERT INTO "public"."auth_permission" VALUES (210, 'Can view order event', 50, 'view_orderevent');
INSERT INTO "public"."auth_permission" VALUES (211, 'Can add invoice', 51, 'add_invoice');
INSERT INTO "public"."auth_permission" VALUES (212, 'Can change invoice', 51, 'change_invoice');
INSERT INTO "public"."auth_permission" VALUES (213, 'Can delete invoice', 51, 'delete_invoice');
INSERT INTO "public"."auth_permission" VALUES (214, 'Can view invoice', 51, 'view_invoice');
INSERT INTO "public"."auth_permission" VALUES (215, 'Can add invoice event', 52, 'add_invoiceevent');
INSERT INTO "public"."auth_permission" VALUES (216, 'Can change invoice event', 52, 'change_invoiceevent');
INSERT INTO "public"."auth_permission" VALUES (217, 'Can delete invoice event', 52, 'delete_invoiceevent');
INSERT INTO "public"."auth_permission" VALUES (218, 'Can view invoice event', 52, 'view_invoiceevent');
INSERT INTO "public"."auth_permission" VALUES (219, 'Can add shipping zone', 53, 'add_shippingzone');
INSERT INTO "public"."auth_permission" VALUES (220, 'Can change shipping zone', 53, 'change_shippingzone');
INSERT INTO "public"."auth_permission" VALUES (221, 'Can delete shipping zone', 53, 'delete_shippingzone');
INSERT INTO "public"."auth_permission" VALUES (222, 'Can view shipping zone', 53, 'view_shippingzone');
INSERT INTO "public"."auth_permission" VALUES (223, 'Manage shipping.', 53, 'manage_shipping');
INSERT INTO "public"."auth_permission" VALUES (224, 'Can add shipping method', 54, 'add_shippingmethod');
INSERT INTO "public"."auth_permission" VALUES (225, 'Can change shipping method', 54, 'change_shippingmethod');
INSERT INTO "public"."auth_permission" VALUES (226, 'Can delete shipping method', 54, 'delete_shippingmethod');
INSERT INTO "public"."auth_permission" VALUES (227, 'Can view shipping method', 54, 'view_shippingmethod');
INSERT INTO "public"."auth_permission" VALUES (228, 'Can add shipping method translation', 55, 'add_shippingmethodtranslation');
INSERT INTO "public"."auth_permission" VALUES (229, 'Can change shipping method translation', 55, 'change_shippingmethodtranslation');
INSERT INTO "public"."auth_permission" VALUES (230, 'Can delete shipping method translation', 55, 'delete_shippingmethodtranslation');
INSERT INTO "public"."auth_permission" VALUES (231, 'Can view shipping method translation', 55, 'view_shippingmethodtranslation');
INSERT INTO "public"."auth_permission" VALUES (232, 'Can add site settings', 56, 'add_sitesettings');
INSERT INTO "public"."auth_permission" VALUES (233, 'Can change site settings', 56, 'change_sitesettings');
INSERT INTO "public"."auth_permission" VALUES (234, 'Can delete site settings', 56, 'delete_sitesettings');
INSERT INTO "public"."auth_permission" VALUES (235, 'Can view site settings', 56, 'view_sitesettings');
INSERT INTO "public"."auth_permission" VALUES (236, 'Manage settings.', 56, 'manage_settings');
INSERT INTO "public"."auth_permission" VALUES (237, 'Manage translations.', 56, 'manage_translations');
INSERT INTO "public"."auth_permission" VALUES (238, 'Can add site settings translation', 57, 'add_sitesettingstranslation');
INSERT INTO "public"."auth_permission" VALUES (239, 'Can change site settings translation', 57, 'change_sitesettingstranslation');
INSERT INTO "public"."auth_permission" VALUES (240, 'Can delete site settings translation', 57, 'delete_sitesettingstranslation');
INSERT INTO "public"."auth_permission" VALUES (241, 'Can view site settings translation', 57, 'view_sitesettingstranslation');
INSERT INTO "public"."auth_permission" VALUES (242, 'Can add authorization key', 58, 'add_authorizationkey');
INSERT INTO "public"."auth_permission" VALUES (243, 'Can change authorization key', 58, 'change_authorizationkey');
INSERT INTO "public"."auth_permission" VALUES (244, 'Can delete authorization key', 58, 'delete_authorizationkey');
INSERT INTO "public"."auth_permission" VALUES (245, 'Can view authorization key', 58, 'view_authorizationkey');
INSERT INTO "public"."auth_permission" VALUES (246, 'Can add page', 59, 'add_page');
INSERT INTO "public"."auth_permission" VALUES (247, 'Can change page', 59, 'change_page');
INSERT INTO "public"."auth_permission" VALUES (248, 'Can delete page', 59, 'delete_page');
INSERT INTO "public"."auth_permission" VALUES (249, 'Can view page', 59, 'view_page');
INSERT INTO "public"."auth_permission" VALUES (250, 'Manage pages.', 59, 'manage_pages');
INSERT INTO "public"."auth_permission" VALUES (251, 'Can add page translation', 60, 'add_pagetranslation');
INSERT INTO "public"."auth_permission" VALUES (252, 'Can change page translation', 60, 'change_pagetranslation');
INSERT INTO "public"."auth_permission" VALUES (253, 'Can delete page translation', 60, 'delete_pagetranslation');
INSERT INTO "public"."auth_permission" VALUES (254, 'Can view page translation', 60, 'view_pagetranslation');
INSERT INTO "public"."auth_permission" VALUES (255, 'Can add payment', 61, 'add_payment');
INSERT INTO "public"."auth_permission" VALUES (256, 'Can change payment', 61, 'change_payment');
INSERT INTO "public"."auth_permission" VALUES (257, 'Can delete payment', 61, 'delete_payment');
INSERT INTO "public"."auth_permission" VALUES (258, 'Can view payment', 61, 'view_payment');
INSERT INTO "public"."auth_permission" VALUES (259, 'Can add transaction', 62, 'add_transaction');
INSERT INTO "public"."auth_permission" VALUES (260, 'Can change transaction', 62, 'change_transaction');
INSERT INTO "public"."auth_permission" VALUES (261, 'Can delete transaction', 62, 'delete_transaction');
INSERT INTO "public"."auth_permission" VALUES (262, 'Can view transaction', 62, 'view_transaction');
INSERT INTO "public"."auth_permission" VALUES (263, 'Can add warehouse', 63, 'add_warehouse');
INSERT INTO "public"."auth_permission" VALUES (264, 'Can change warehouse', 63, 'change_warehouse');
INSERT INTO "public"."auth_permission" VALUES (265, 'Can delete warehouse', 63, 'delete_warehouse');
INSERT INTO "public"."auth_permission" VALUES (266, 'Can view warehouse', 63, 'view_warehouse');
INSERT INTO "public"."auth_permission" VALUES (267, 'Can add stock', 64, 'add_stock');
INSERT INTO "public"."auth_permission" VALUES (268, 'Can change stock', 64, 'change_stock');
INSERT INTO "public"."auth_permission" VALUES (269, 'Can delete stock', 64, 'delete_stock');
INSERT INTO "public"."auth_permission" VALUES (270, 'Can view stock', 64, 'view_stock');
INSERT INTO "public"."auth_permission" VALUES (271, 'Can add allocation', 65, 'add_allocation');
INSERT INTO "public"."auth_permission" VALUES (272, 'Can change allocation', 65, 'change_allocation');
INSERT INTO "public"."auth_permission" VALUES (273, 'Can delete allocation', 65, 'delete_allocation');
INSERT INTO "public"."auth_permission" VALUES (274, 'Can view allocation', 65, 'view_allocation');
INSERT INTO "public"."auth_permission" VALUES (275, 'Can add webhook', 66, 'add_webhook');
INSERT INTO "public"."auth_permission" VALUES (276, 'Can change webhook', 66, 'change_webhook');
INSERT INTO "public"."auth_permission" VALUES (277, 'Can delete webhook', 66, 'delete_webhook');
INSERT INTO "public"."auth_permission" VALUES (278, 'Can view webhook', 66, 'view_webhook');
INSERT INTO "public"."auth_permission" VALUES (279, 'Can add webhook event', 67, 'add_webhookevent');
INSERT INTO "public"."auth_permission" VALUES (280, 'Can change webhook event', 67, 'change_webhookevent');
INSERT INTO "public"."auth_permission" VALUES (281, 'Can delete webhook event', 67, 'delete_webhookevent');
INSERT INTO "public"."auth_permission" VALUES (282, 'Can view webhook event', 67, 'view_webhookevent');
INSERT INTO "public"."auth_permission" VALUES (283, 'Can add wishlist', 68, 'add_wishlist');
INSERT INTO "public"."auth_permission" VALUES (284, 'Can change wishlist', 68, 'change_wishlist');
INSERT INTO "public"."auth_permission" VALUES (285, 'Can delete wishlist', 68, 'delete_wishlist');
INSERT INTO "public"."auth_permission" VALUES (286, 'Can view wishlist', 68, 'view_wishlist');
INSERT INTO "public"."auth_permission" VALUES (287, 'Can add wishlist item', 69, 'add_wishlistitem');
INSERT INTO "public"."auth_permission" VALUES (288, 'Can change wishlist item', 69, 'change_wishlistitem');
INSERT INTO "public"."auth_permission" VALUES (289, 'Can delete wishlist item', 69, 'delete_wishlistitem');
INSERT INTO "public"."auth_permission" VALUES (290, 'Can view wishlist item', 69, 'view_wishlistitem');
INSERT INTO "public"."auth_permission" VALUES (291, 'Can add app', 70, 'add_app');
INSERT INTO "public"."auth_permission" VALUES (292, 'Can change app', 70, 'change_app');
INSERT INTO "public"."auth_permission" VALUES (293, 'Can delete app', 70, 'delete_app');
INSERT INTO "public"."auth_permission" VALUES (294, 'Can view app', 70, 'view_app');
INSERT INTO "public"."auth_permission" VALUES (295, 'Manage apps', 70, 'manage_apps');
INSERT INTO "public"."auth_permission" VALUES (296, 'Can add app token', 71, 'add_apptoken');
INSERT INTO "public"."auth_permission" VALUES (297, 'Can change app token', 71, 'change_apptoken');
INSERT INTO "public"."auth_permission" VALUES (298, 'Can delete app token', 71, 'delete_apptoken');
INSERT INTO "public"."auth_permission" VALUES (299, 'Can view app token', 71, 'view_apptoken');
INSERT INTO "public"."auth_permission" VALUES (300, 'Can add app installation', 72, 'add_appinstallation');
INSERT INTO "public"."auth_permission" VALUES (301, 'Can change app installation', 72, 'change_appinstallation');
INSERT INTO "public"."auth_permission" VALUES (302, 'Can delete app installation', 72, 'delete_appinstallation');
INSERT INTO "public"."auth_permission" VALUES (303, 'Can view app installation', 72, 'view_appinstallation');
INSERT INTO "public"."auth_permission" VALUES (304, 'Can add conversion rate', 73, 'add_conversionrate');
INSERT INTO "public"."auth_permission" VALUES (305, 'Can change conversion rate', 73, 'change_conversionrate');
INSERT INTO "public"."auth_permission" VALUES (306, 'Can delete conversion rate', 73, 'delete_conversionrate');
INSERT INTO "public"."auth_permission" VALUES (307, 'Can view conversion rate', 73, 'view_conversionrate');
INSERT INTO "public"."auth_permission" VALUES (308, 'Can add vat', 74, 'add_vat');
INSERT INTO "public"."auth_permission" VALUES (309, 'Can change vat', 74, 'change_vat');
INSERT INTO "public"."auth_permission" VALUES (310, 'Can delete vat', 74, 'delete_vat');
INSERT INTO "public"."auth_permission" VALUES (311, 'Can view vat', 74, 'view_vat');
INSERT INTO "public"."auth_permission" VALUES (312, 'Can add rate types', 75, 'add_ratetypes');
INSERT INTO "public"."auth_permission" VALUES (313, 'Can change rate types', 75, 'change_ratetypes');
INSERT INTO "public"."auth_permission" VALUES (314, 'Can delete rate types', 75, 'delete_ratetypes');
INSERT INTO "public"."auth_permission" VALUES (315, 'Can view rate types', 75, 'view_ratetypes');
COMMIT;

-- ----------------------------
-- Table structure for checkout_checkout
-- ----------------------------
DROP TABLE IF EXISTS "public"."checkout_checkout";
CREATE TABLE "public"."checkout_checkout" (
  "created" timestamptz(6) NOT NULL,
  "last_change" timestamptz(6) NOT NULL,
  "email" varchar(254) COLLATE "pg_catalog"."default" NOT NULL,
  "token" uuid NOT NULL,
  "quantity" int4 NOT NULL,
  "user_id" int4,
  "billing_address_id" int4,
  "discount_amount" numeric(12,3) NOT NULL,
  "discount_name" varchar(255) COLLATE "pg_catalog"."default",
  "note" text COLLATE "pg_catalog"."default" NOT NULL,
  "shipping_address_id" int4,
  "shipping_method_id" int4,
  "voucher_code" varchar(12) COLLATE "pg_catalog"."default",
  "translated_discount_name" varchar(255) COLLATE "pg_catalog"."default",
  "metadata" jsonb,
  "private_metadata" jsonb,
  "currency" varchar(3) COLLATE "pg_catalog"."default" NOT NULL,
  "country" varchar(2) COLLATE "pg_catalog"."default" NOT NULL,
  "redirect_url" varchar(200) COLLATE "pg_catalog"."default",
  "tracking_code" varchar(255) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."checkout_checkout" OWNER TO "saleor";

-- ----------------------------
-- Records of checkout_checkout
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for checkout_checkout_gift_cards
-- ----------------------------
DROP TABLE IF EXISTS "public"."checkout_checkout_gift_cards";
CREATE TABLE "public"."checkout_checkout_gift_cards" (
  "id" int4 NOT NULL DEFAULT nextval('checkout_checkout_gift_cards_id_seq'::regclass),
  "checkout_id" uuid NOT NULL,
  "giftcard_id" int4 NOT NULL
)
;
ALTER TABLE "public"."checkout_checkout_gift_cards" OWNER TO "saleor";

-- ----------------------------
-- Records of checkout_checkout_gift_cards
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for checkout_checkoutline
-- ----------------------------
DROP TABLE IF EXISTS "public"."checkout_checkoutline";
CREATE TABLE "public"."checkout_checkoutline" (
  "id" int4 NOT NULL DEFAULT nextval('cart_cartline_id_seq'::regclass),
  "quantity" int4 NOT NULL,
  "checkout_id" uuid NOT NULL,
  "variant_id" int4 NOT NULL,
  "data" jsonb NOT NULL
)
;
ALTER TABLE "public"."checkout_checkoutline" OWNER TO "saleor";

-- ----------------------------
-- Records of checkout_checkoutline
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for csv_exportevent
-- ----------------------------
DROP TABLE IF EXISTS "public"."csv_exportevent";
CREATE TABLE "public"."csv_exportevent" (
  "id" int4 NOT NULL DEFAULT nextval('csv_exportevent_id_seq'::regclass),
  "date" timestamptz(6) NOT NULL,
  "type" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "parameters" jsonb NOT NULL,
  "app_id" int4,
  "export_file_id" int4 NOT NULL,
  "user_id" int4
)
;
ALTER TABLE "public"."csv_exportevent" OWNER TO "saleor";

-- ----------------------------
-- Records of csv_exportevent
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for csv_exportfile
-- ----------------------------
DROP TABLE IF EXISTS "public"."csv_exportfile";
CREATE TABLE "public"."csv_exportfile" (
  "id" int4 NOT NULL DEFAULT nextval('csv_exportfile_id_seq'::regclass),
  "status" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) NOT NULL,
  "updated_at" timestamptz(6) NOT NULL,
  "content_file" varchar(100) COLLATE "pg_catalog"."default",
  "app_id" int4,
  "user_id" int4,
  "message" varchar(255) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."csv_exportfile" OWNER TO "saleor";

-- ----------------------------
-- Records of csv_exportfile
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for discount_sale
-- ----------------------------
DROP TABLE IF EXISTS "public"."discount_sale";
CREATE TABLE "public"."discount_sale" (
  "id" int4 NOT NULL DEFAULT nextval('discount_sale_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "type" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "value" numeric(12,3) NOT NULL,
  "end_date" timestamptz(6),
  "start_date" timestamptz(6) NOT NULL
)
;
ALTER TABLE "public"."discount_sale" OWNER TO "saleor";

-- ----------------------------
-- Records of discount_sale
-- ----------------------------
BEGIN;
INSERT INTO "public"."discount_sale" VALUES (1, 'Happy door day!', 'percentage', 50.000, NULL, '2020-11-27 08:05:10.556875+00');
INSERT INTO "public"."discount_sale" VALUES (2, 'Happy bit day!', 'percentage', 10.000, NULL, '2020-11-27 08:05:10.570865+00');
INSERT INTO "public"."discount_sale" VALUES (3, 'Happy development day!', 'percentage', 20.000, NULL, '2020-11-27 08:05:10.580865+00');
INSERT INTO "public"."discount_sale" VALUES (4, 'Happy on day!', 'percentage', 50.000, NULL, '2020-11-27 08:05:10.590968+00');
INSERT INTO "public"."discount_sale" VALUES (5, 'Happy several day!', 'percentage', 30.000, NULL, '2020-11-27 08:05:10.60184+00');
COMMIT;

-- ----------------------------
-- Table structure for discount_sale_categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."discount_sale_categories";
CREATE TABLE "public"."discount_sale_categories" (
  "id" int4 NOT NULL DEFAULT nextval('discount_sale_categories_id_seq'::regclass),
  "sale_id" int4 NOT NULL,
  "category_id" int4 NOT NULL
)
;
ALTER TABLE "public"."discount_sale_categories" OWNER TO "saleor";

-- ----------------------------
-- Records of discount_sale_categories
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for discount_sale_collections
-- ----------------------------
DROP TABLE IF EXISTS "public"."discount_sale_collections";
CREATE TABLE "public"."discount_sale_collections" (
  "id" int4 NOT NULL DEFAULT nextval('discount_sale_collections_id_seq'::regclass),
  "sale_id" int4 NOT NULL,
  "collection_id" int4 NOT NULL
)
;
ALTER TABLE "public"."discount_sale_collections" OWNER TO "saleor";

-- ----------------------------
-- Records of discount_sale_collections
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for discount_sale_products
-- ----------------------------
DROP TABLE IF EXISTS "public"."discount_sale_products";
CREATE TABLE "public"."discount_sale_products" (
  "id" int4 NOT NULL DEFAULT nextval('discount_sale_products_id_seq'::regclass),
  "sale_id" int4 NOT NULL,
  "product_id" int4 NOT NULL
)
;
ALTER TABLE "public"."discount_sale_products" OWNER TO "saleor";

-- ----------------------------
-- Records of discount_sale_products
-- ----------------------------
BEGIN;
INSERT INTO "public"."discount_sale_products" VALUES (1, 1, 118);
INSERT INTO "public"."discount_sale_products" VALUES (2, 1, 63);
INSERT INTO "public"."discount_sale_products" VALUES (3, 1, 71);
INSERT INTO "public"."discount_sale_products" VALUES (4, 1, 77);
INSERT INTO "public"."discount_sale_products" VALUES (5, 2, 120);
INSERT INTO "public"."discount_sale_products" VALUES (6, 2, 77);
INSERT INTO "public"."discount_sale_products" VALUES (7, 2, 119);
INSERT INTO "public"."discount_sale_products" VALUES (8, 2, 78);
INSERT INTO "public"."discount_sale_products" VALUES (9, 3, 74);
INSERT INTO "public"."discount_sale_products" VALUES (10, 3, 79);
INSERT INTO "public"."discount_sale_products" VALUES (11, 3, 81);
INSERT INTO "public"."discount_sale_products" VALUES (12, 3, 77);
INSERT INTO "public"."discount_sale_products" VALUES (13, 4, 114);
INSERT INTO "public"."discount_sale_products" VALUES (14, 4, 63);
INSERT INTO "public"."discount_sale_products" VALUES (15, 4, 108);
INSERT INTO "public"."discount_sale_products" VALUES (16, 4, 122);
INSERT INTO "public"."discount_sale_products" VALUES (17, 5, 61);
INSERT INTO "public"."discount_sale_products" VALUES (18, 5, 118);
INSERT INTO "public"."discount_sale_products" VALUES (19, 5, 79);
INSERT INTO "public"."discount_sale_products" VALUES (20, 5, 109);
COMMIT;

-- ----------------------------
-- Table structure for discount_saletranslation
-- ----------------------------
DROP TABLE IF EXISTS "public"."discount_saletranslation";
CREATE TABLE "public"."discount_saletranslation" (
  "id" int4 NOT NULL DEFAULT nextval('discount_saletranslation_id_seq'::regclass),
  "language_code" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "sale_id" int4 NOT NULL
)
;
ALTER TABLE "public"."discount_saletranslation" OWNER TO "saleor";

-- ----------------------------
-- Records of discount_saletranslation
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for discount_voucher
-- ----------------------------
DROP TABLE IF EXISTS "public"."discount_voucher";
CREATE TABLE "public"."discount_voucher" (
  "id" int4 NOT NULL DEFAULT nextval('discount_voucher_id_seq'::regclass),
  "type" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "code" varchar(12) COLLATE "pg_catalog"."default" NOT NULL,
  "usage_limit" int4,
  "used" int4 NOT NULL,
  "start_date" timestamptz(6) NOT NULL,
  "end_date" timestamptz(6),
  "discount_value_type" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "discount_value" numeric(12,3) NOT NULL,
  "min_spent_amount" numeric(12,3),
  "apply_once_per_order" bool NOT NULL,
  "countries" varchar(749) COLLATE "pg_catalog"."default" NOT NULL,
  "min_checkout_items_quantity" int4,
  "apply_once_per_customer" bool NOT NULL,
  "currency" varchar(3) COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."discount_voucher" OWNER TO "saleor";

-- ----------------------------
-- Records of discount_voucher
-- ----------------------------
BEGIN;
INSERT INTO "public"."discount_voucher" VALUES (1, 'shipping', 'Free shipping', 'FREESHIPPING', NULL, 0, '2020-11-27 08:05:10.613347+00', NULL, 'percentage', 100.000, NULL, 'f', '', NULL, 'f', 'USD');
INSERT INTO "public"."discount_voucher" VALUES (2, 'entire_order', 'Big order discount', 'DISCOUNT', NULL, 0, '2020-11-27 08:05:10.616551+00', NULL, 'fixed', 25.000, 200.000, 'f', '', NULL, 'f', 'USD');
INSERT INTO "public"."discount_voucher" VALUES (3, 'entire_order', NULL, 'VCO9KV98LC', NULL, 0, '2020-11-27 08:05:10.619801+00', NULL, 'percentage', 5.000, NULL, 'f', '', NULL, 'f', 'USD');
COMMIT;

-- ----------------------------
-- Table structure for discount_voucher_categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."discount_voucher_categories";
CREATE TABLE "public"."discount_voucher_categories" (
  "id" int4 NOT NULL DEFAULT nextval('discount_voucher_categories_id_seq'::regclass),
  "voucher_id" int4 NOT NULL,
  "category_id" int4 NOT NULL
)
;
ALTER TABLE "public"."discount_voucher_categories" OWNER TO "saleor";

-- ----------------------------
-- Records of discount_voucher_categories
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for discount_voucher_collections
-- ----------------------------
DROP TABLE IF EXISTS "public"."discount_voucher_collections";
CREATE TABLE "public"."discount_voucher_collections" (
  "id" int4 NOT NULL DEFAULT nextval('discount_voucher_collections_id_seq'::regclass),
  "voucher_id" int4 NOT NULL,
  "collection_id" int4 NOT NULL
)
;
ALTER TABLE "public"."discount_voucher_collections" OWNER TO "saleor";

-- ----------------------------
-- Records of discount_voucher_collections
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for discount_voucher_products
-- ----------------------------
DROP TABLE IF EXISTS "public"."discount_voucher_products";
CREATE TABLE "public"."discount_voucher_products" (
  "id" int4 NOT NULL DEFAULT nextval('discount_voucher_products_id_seq'::regclass),
  "voucher_id" int4 NOT NULL,
  "product_id" int4 NOT NULL
)
;
ALTER TABLE "public"."discount_voucher_products" OWNER TO "saleor";

-- ----------------------------
-- Records of discount_voucher_products
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for discount_vouchercustomer
-- ----------------------------
DROP TABLE IF EXISTS "public"."discount_vouchercustomer";
CREATE TABLE "public"."discount_vouchercustomer" (
  "id" int4 NOT NULL DEFAULT nextval('discount_vouchercustomer_id_seq'::regclass),
  "customer_email" varchar(254) COLLATE "pg_catalog"."default" NOT NULL,
  "voucher_id" int4 NOT NULL
)
;
ALTER TABLE "public"."discount_vouchercustomer" OWNER TO "saleor";

-- ----------------------------
-- Records of discount_vouchercustomer
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for discount_vouchertranslation
-- ----------------------------
DROP TABLE IF EXISTS "public"."discount_vouchertranslation";
CREATE TABLE "public"."discount_vouchertranslation" (
  "id" int4 NOT NULL DEFAULT nextval('discount_vouchertranslation_id_seq'::regclass),
  "language_code" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "voucher_id" int4 NOT NULL
)
;
ALTER TABLE "public"."discount_vouchertranslation" OWNER TO "saleor";

-- ----------------------------
-- Records of discount_vouchertranslation
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_content_type";
CREATE TABLE "public"."django_content_type" (
  "id" int4 NOT NULL DEFAULT nextval('django_content_type_id_seq'::regclass),
  "app_label" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "model" varchar(100) COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."django_content_type" OWNER TO "saleor";

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
BEGIN;
INSERT INTO "public"."django_content_type" VALUES (1, 'plugins', 'pluginconfiguration');
INSERT INTO "public"."django_content_type" VALUES (2, 'contenttypes', 'contenttype');
INSERT INTO "public"."django_content_type" VALUES (3, 'sites', 'site');
INSERT INTO "public"."django_content_type" VALUES (4, 'auth', 'permission');
INSERT INTO "public"."django_content_type" VALUES (5, 'auth', 'group');
INSERT INTO "public"."django_content_type" VALUES (6, 'account', 'address');
INSERT INTO "public"."django_content_type" VALUES (7, 'account', 'user');
INSERT INTO "public"."django_content_type" VALUES (8, 'account', 'customernote');
INSERT INTO "public"."django_content_type" VALUES (9, 'account', 'customerevent');
INSERT INTO "public"."django_content_type" VALUES (10, 'account', 'staffnotificationrecipient');
INSERT INTO "public"."django_content_type" VALUES (11, 'discount', 'voucher');
INSERT INTO "public"."django_content_type" VALUES (12, 'discount', 'vouchercustomer');
INSERT INTO "public"."django_content_type" VALUES (13, 'discount', 'vouchertranslation');
INSERT INTO "public"."django_content_type" VALUES (14, 'discount', 'sale');
INSERT INTO "public"."django_content_type" VALUES (15, 'discount', 'saletranslation');
INSERT INTO "public"."django_content_type" VALUES (16, 'giftcard', 'giftcard');
INSERT INTO "public"."django_content_type" VALUES (17, 'product', 'category');
INSERT INTO "public"."django_content_type" VALUES (18, 'product', 'categorytranslation');
INSERT INTO "public"."django_content_type" VALUES (19, 'product', 'producttype');
INSERT INTO "public"."django_content_type" VALUES (20, 'product', 'product');
INSERT INTO "public"."django_content_type" VALUES (21, 'product', 'producttranslation');
INSERT INTO "public"."django_content_type" VALUES (22, 'product', 'productvariant');
INSERT INTO "public"."django_content_type" VALUES (23, 'product', 'productvarianttranslation');
INSERT INTO "public"."django_content_type" VALUES (24, 'product', 'digitalcontent');
INSERT INTO "public"."django_content_type" VALUES (25, 'product', 'digitalcontenturl');
INSERT INTO "public"."django_content_type" VALUES (26, 'product', 'assignedproductattribute');
INSERT INTO "public"."django_content_type" VALUES (27, 'product', 'assignedvariantattribute');
INSERT INTO "public"."django_content_type" VALUES (28, 'product', 'attributeproduct');
INSERT INTO "public"."django_content_type" VALUES (29, 'product', 'attributevariant');
INSERT INTO "public"."django_content_type" VALUES (30, 'product', 'attribute');
INSERT INTO "public"."django_content_type" VALUES (31, 'product', 'attributetranslation');
INSERT INTO "public"."django_content_type" VALUES (32, 'product', 'attributevalue');
INSERT INTO "public"."django_content_type" VALUES (33, 'product', 'attributevaluetranslation');
INSERT INTO "public"."django_content_type" VALUES (34, 'product', 'productimage');
INSERT INTO "public"."django_content_type" VALUES (35, 'product', 'variantimage');
INSERT INTO "public"."django_content_type" VALUES (36, 'product', 'collectionproduct');
INSERT INTO "public"."django_content_type" VALUES (37, 'product', 'collection');
INSERT INTO "public"."django_content_type" VALUES (38, 'product', 'collectiontranslation');
INSERT INTO "public"."django_content_type" VALUES (39, 'checkout', 'checkout');
INSERT INTO "public"."django_content_type" VALUES (40, 'checkout', 'checkoutline');
INSERT INTO "public"."django_content_type" VALUES (41, 'csv', 'exportfile');
INSERT INTO "public"."django_content_type" VALUES (42, 'csv', 'exportevent');
INSERT INTO "public"."django_content_type" VALUES (43, 'menu', 'menu');
INSERT INTO "public"."django_content_type" VALUES (44, 'menu', 'menuitem');
INSERT INTO "public"."django_content_type" VALUES (45, 'menu', 'menuitemtranslation');
INSERT INTO "public"."django_content_type" VALUES (46, 'order', 'order');
INSERT INTO "public"."django_content_type" VALUES (47, 'order', 'orderline');
INSERT INTO "public"."django_content_type" VALUES (48, 'order', 'fulfillment');
INSERT INTO "public"."django_content_type" VALUES (49, 'order', 'fulfillmentline');
INSERT INTO "public"."django_content_type" VALUES (50, 'order', 'orderevent');
INSERT INTO "public"."django_content_type" VALUES (51, 'invoice', 'invoice');
INSERT INTO "public"."django_content_type" VALUES (52, 'invoice', 'invoiceevent');
INSERT INTO "public"."django_content_type" VALUES (53, 'shipping', 'shippingzone');
INSERT INTO "public"."django_content_type" VALUES (54, 'shipping', 'shippingmethod');
INSERT INTO "public"."django_content_type" VALUES (55, 'shipping', 'shippingmethodtranslation');
INSERT INTO "public"."django_content_type" VALUES (56, 'site', 'sitesettings');
INSERT INTO "public"."django_content_type" VALUES (57, 'site', 'sitesettingstranslation');
INSERT INTO "public"."django_content_type" VALUES (58, 'site', 'authorizationkey');
INSERT INTO "public"."django_content_type" VALUES (59, 'page', 'page');
INSERT INTO "public"."django_content_type" VALUES (60, 'page', 'pagetranslation');
INSERT INTO "public"."django_content_type" VALUES (61, 'payment', 'payment');
INSERT INTO "public"."django_content_type" VALUES (62, 'payment', 'transaction');
INSERT INTO "public"."django_content_type" VALUES (63, 'warehouse', 'warehouse');
INSERT INTO "public"."django_content_type" VALUES (64, 'warehouse', 'stock');
INSERT INTO "public"."django_content_type" VALUES (65, 'warehouse', 'allocation');
INSERT INTO "public"."django_content_type" VALUES (66, 'webhook', 'webhook');
INSERT INTO "public"."django_content_type" VALUES (67, 'webhook', 'webhookevent');
INSERT INTO "public"."django_content_type" VALUES (68, 'wishlist', 'wishlist');
INSERT INTO "public"."django_content_type" VALUES (69, 'wishlist', 'wishlistitem');
INSERT INTO "public"."django_content_type" VALUES (70, 'app', 'app');
INSERT INTO "public"."django_content_type" VALUES (71, 'app', 'apptoken');
INSERT INTO "public"."django_content_type" VALUES (72, 'app', 'appinstallation');
INSERT INTO "public"."django_content_type" VALUES (73, 'django_prices_openexchangerates', 'conversionrate');
INSERT INTO "public"."django_content_type" VALUES (74, 'django_prices_vatlayer', 'vat');
INSERT INTO "public"."django_content_type" VALUES (75, 'django_prices_vatlayer', 'ratetypes');
COMMIT;

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_migrations";
CREATE TABLE "public"."django_migrations" (
  "id" int4 NOT NULL DEFAULT nextval('django_migrations_id_seq'::regclass),
  "app" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "applied" timestamptz(6) NOT NULL
)
;
ALTER TABLE "public"."django_migrations" OWNER TO "saleor";

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
BEGIN;
INSERT INTO "public"."django_migrations" VALUES (1, 'plugins', '0001_initial', '2020-11-27 08:03:42.819689+00');
INSERT INTO "public"."django_migrations" VALUES (2, 'plugins', '0002_auto_20200417_0335', '2020-11-27 08:03:42.846896+00');
INSERT INTO "public"."django_migrations" VALUES (3, 'contenttypes', '0001_initial', '2020-11-27 08:03:42.857973+00');
INSERT INTO "public"."django_migrations" VALUES (4, 'contenttypes', '0002_remove_content_type_name', '2020-11-27 08:03:42.870021+00');
INSERT INTO "public"."django_migrations" VALUES (5, 'auth', '0001_initial', '2020-11-27 08:03:42.894473+00');
INSERT INTO "public"."django_migrations" VALUES (6, 'auth', '0002_alter_permission_name_max_length', '2020-11-27 08:03:42.915151+00');
INSERT INTO "public"."django_migrations" VALUES (7, 'auth', '0003_alter_user_email_max_length', '2020-11-27 08:03:42.923001+00');
INSERT INTO "public"."django_migrations" VALUES (8, 'auth', '0004_alter_user_username_opts', '2020-11-27 08:03:42.930555+00');
INSERT INTO "public"."django_migrations" VALUES (9, 'auth', '0005_alter_user_last_login_null', '2020-11-27 08:03:42.937758+00');
INSERT INTO "public"."django_migrations" VALUES (10, 'auth', '0006_require_contenttypes_0002', '2020-11-27 08:03:42.940012+00');
INSERT INTO "public"."django_migrations" VALUES (11, 'auth', '0007_alter_validators_add_error_messages', '2020-11-27 08:03:42.947555+00');
INSERT INTO "public"."django_migrations" VALUES (12, 'auth', '0008_alter_user_username_max_length', '2020-11-27 08:03:42.955541+00');
INSERT INTO "public"."django_migrations" VALUES (13, 'auth', '0009_alter_user_last_name_max_length', '2020-11-27 08:03:42.962909+00');
INSERT INTO "public"."django_migrations" VALUES (14, 'auth', '0010_alter_group_name_max_length', '2020-11-27 08:03:42.97177+00');
INSERT INTO "public"."django_migrations" VALUES (15, 'auth', '0011_update_proxy_permissions', '2020-11-27 08:03:42.979567+00');
INSERT INTO "public"."django_migrations" VALUES (16, 'product', '0001_initial', '2020-11-27 08:03:43.078955+00');
INSERT INTO "public"."django_migrations" VALUES (17, 'product', '0002_auto_20150722_0545', '2020-11-27 08:03:43.131131+00');
INSERT INTO "public"."django_migrations" VALUES (18, 'product', '0003_auto_20150820_2016', '2020-11-27 08:03:43.153733+00');
INSERT INTO "public"."django_migrations" VALUES (19, 'product', '0003_auto_20150820_1955', '2020-11-27 08:03:43.16651+00');
INSERT INTO "public"."django_migrations" VALUES (20, 'product', '0004_merge', '2020-11-27 08:03:43.169096+00');
INSERT INTO "public"."django_migrations" VALUES (21, 'product', '0005_auto_20150825_1433', '2020-11-27 08:03:43.355663+00');
INSERT INTO "public"."django_migrations" VALUES (22, 'product', '0006_product_updated_at', '2020-11-27 08:03:43.372376+00');
INSERT INTO "public"."django_migrations" VALUES (23, 'product', '0007_auto_20160112_1025', '2020-11-27 08:03:43.411072+00');
INSERT INTO "public"."django_migrations" VALUES (24, 'product', '0008_auto_20160114_0733', '2020-11-27 08:03:43.443413+00');
INSERT INTO "public"."django_migrations" VALUES (25, 'product', '0009_discount_categories', '2020-11-27 08:03:43.460509+00');
INSERT INTO "public"."django_migrations" VALUES (26, 'product', '0010_auto_20160129_0826', '2020-11-27 08:03:43.492634+00');
INSERT INTO "public"."django_migrations" VALUES (27, 'product', '0011_stock_quantity_allocated', '2020-11-27 08:03:43.505004+00');
INSERT INTO "public"."django_migrations" VALUES (28, 'product', '0012_auto_20160218_0812', '2020-11-27 08:03:43.529834+00');
INSERT INTO "public"."django_migrations" VALUES (29, 'product', '0013_auto_20161207_0555', '2020-11-27 08:03:43.552116+00');
INSERT INTO "public"."django_migrations" VALUES (30, 'product', '0014_auto_20161207_0840', '2020-11-27 08:03:43.564584+00');
INSERT INTO "public"."django_migrations" VALUES (31, 'product', '0015_transfer_locations', '2020-11-27 08:03:43.581648+00');
INSERT INTO "public"."django_migrations" VALUES (32, 'product', '0016_auto_20161207_0843', '2020-11-27 08:03:43.600113+00');
INSERT INTO "public"."django_migrations" VALUES (33, 'product', '0017_remove_stock_location', '2020-11-27 08:03:43.611132+00');
INSERT INTO "public"."django_migrations" VALUES (34, 'product', '0018_auto_20161207_0844', '2020-11-27 08:03:43.633514+00');
INSERT INTO "public"."django_migrations" VALUES (35, 'product', '0019_auto_20161212_0230', '2020-11-27 08:03:43.669165+00');
INSERT INTO "public"."django_migrations" VALUES (36, 'product', '0020_attribute_data_to_class', '2020-11-27 08:03:43.70258+00');
INSERT INTO "public"."django_migrations" VALUES (37, 'product', '0021_add_hstore_extension', '2020-11-27 08:03:43.722126+00');
INSERT INTO "public"."django_migrations" VALUES (38, 'product', '0022_auto_20161212_0301', '2020-11-27 08:03:43.766789+00');
INSERT INTO "public"."django_migrations" VALUES (39, 'product', '0023_auto_20161211_1912', '2020-11-27 08:03:43.780954+00');
INSERT INTO "public"."django_migrations" VALUES (40, 'product', '0024_migrate_json_data', '2020-11-27 08:03:43.821542+00');
INSERT INTO "public"."django_migrations" VALUES (41, 'product', '0025_auto_20161219_0517', '2020-11-27 08:03:43.829112+00');
INSERT INTO "public"."django_migrations" VALUES (42, 'product', '0026_auto_20161230_0347', '2020-11-27 08:03:43.838751+00');
INSERT INTO "public"."django_migrations" VALUES (43, 'product', '0027_auto_20170113_0435', '2020-11-27 08:03:43.900761+00');
INSERT INTO "public"."django_migrations" VALUES (44, 'product', '0013_auto_20161130_0608', '2020-11-27 08:03:43.905816+00');
INSERT INTO "public"."django_migrations" VALUES (45, 'product', '0014_remove_productvariant_attributes', '2020-11-27 08:03:43.91975+00');
INSERT INTO "public"."django_migrations" VALUES (46, 'product', '0015_productvariant_attributes', '2020-11-27 08:03:43.933458+00');
INSERT INTO "public"."django_migrations" VALUES (47, 'product', '0016_auto_20161204_0311', '2020-11-27 08:03:43.945991+00');
INSERT INTO "public"."django_migrations" VALUES (48, 'product', '0017_attributechoicevalue_slug', '2020-11-27 08:03:43.957718+00');
INSERT INTO "public"."django_migrations" VALUES (49, 'product', '0018_auto_20161212_0725', '2020-11-27 08:03:43.978516+00');
INSERT INTO "public"."django_migrations" VALUES (50, 'product', '0026_merge_20161221_0845', '2020-11-27 08:03:43.980785+00');
INSERT INTO "public"."django_migrations" VALUES (51, 'product', '0028_merge_20170116_1016', '2020-11-27 08:03:43.983166+00');
INSERT INTO "public"."django_migrations" VALUES (52, 'product', '0029_product_is_featured', '2020-11-27 08:03:43.996756+00');
INSERT INTO "public"."django_migrations" VALUES (53, 'product', '0030_auto_20170206_0407', '2020-11-27 08:03:44.168752+00');
INSERT INTO "public"."django_migrations" VALUES (54, 'product', '0031_auto_20170206_0601', '2020-11-27 08:03:44.189515+00');
INSERT INTO "public"."django_migrations" VALUES (55, 'product', '0032_auto_20170216_0438', '2020-11-27 08:03:44.198045+00');
INSERT INTO "public"."django_migrations" VALUES (56, 'product', '0033_auto_20170227_0757', '2020-11-27 08:03:44.241999+00');
INSERT INTO "public"."django_migrations" VALUES (57, 'product', '0034_product_is_published', '2020-11-27 08:03:44.253949+00');
INSERT INTO "public"."django_migrations" VALUES (58, 'product', '0035_auto_20170919_0846', '2020-11-27 08:03:44.270994+00');
INSERT INTO "public"."django_migrations" VALUES (59, 'product', '0036_auto_20171115_0608', '2020-11-27 08:03:44.282973+00');
INSERT INTO "public"."django_migrations" VALUES (60, 'product', '0037_auto_20171124_0847', '2020-11-27 08:03:44.295206+00');
INSERT INTO "public"."django_migrations" VALUES (61, 'product', '0038_auto_20171129_0616', '2020-11-27 08:03:44.324039+00');
INSERT INTO "public"."django_migrations" VALUES (62, 'product', '0037_auto_20171129_1004', '2020-11-27 08:03:44.382266+00');
INSERT INTO "public"."django_migrations" VALUES (63, 'product', '0039_merge_20171130_0727', '2020-11-27 08:03:44.38499+00');
INSERT INTO "public"."django_migrations" VALUES (64, 'product', '0040_auto_20171205_0428', '2020-11-27 08:03:44.397206+00');
INSERT INTO "public"."django_migrations" VALUES (65, 'product', '0041_auto_20171205_0546', '2020-11-27 08:03:44.412046+00');
INSERT INTO "public"."django_migrations" VALUES (66, 'product', '0042_auto_20171206_0501', '2020-11-27 08:03:44.427546+00');
INSERT INTO "public"."django_migrations" VALUES (67, 'product', '0043_auto_20171207_0839', '2020-11-27 08:03:44.439038+00');
INSERT INTO "public"."django_migrations" VALUES (68, 'product', '0044_auto_20180108_0814', '2020-11-27 08:03:44.887575+00');
INSERT INTO "public"."django_migrations" VALUES (69, 'product', '0045_md_to_html', '2020-11-27 08:03:44.906038+00');
INSERT INTO "public"."django_migrations" VALUES (70, 'product', '0046_product_category', '2020-11-27 08:03:44.940188+00');
INSERT INTO "public"."django_migrations" VALUES (71, 'product', '0047_auto_20180117_0359', '2020-11-27 08:03:44.975818+00');
INSERT INTO "public"."django_migrations" VALUES (72, 'product', '0048_product_class_to_type', '2020-11-27 08:03:45.085144+00');
INSERT INTO "public"."django_migrations" VALUES (73, 'product', '0049_collection', '2020-11-27 08:03:45.138031+00');
INSERT INTO "public"."django_migrations" VALUES (74, 'product', '0050_auto_20180131_0746', '2020-11-27 08:03:45.157493+00');
INSERT INTO "public"."django_migrations" VALUES (75, 'product', '0051_auto_20180202_1106', '2020-11-27 08:03:45.167991+00');
INSERT INTO "public"."django_migrations" VALUES (76, 'product', '0052_slug_field_length', '2020-11-27 08:03:45.196899+00');
INSERT INTO "public"."django_migrations" VALUES (77, 'product', '0053_product_seo_description', '2020-11-27 08:03:45.210306+00');
INSERT INTO "public"."django_migrations" VALUES (78, 'product', '0053_auto_20180305_1002', '2020-11-27 08:03:45.228275+00');
INSERT INTO "public"."django_migrations" VALUES (79, 'product', '0054_merge_20180320_1108', '2020-11-27 08:03:45.230788+00');
INSERT INTO "public"."django_migrations" VALUES (80, 'shipping', '0001_initial', '2020-11-27 08:03:45.252158+00');
INSERT INTO "public"."django_migrations" VALUES (81, 'shipping', '0002_auto_20160906_0741', '2020-11-27 08:03:45.266042+00');
INSERT INTO "public"."django_migrations" VALUES (82, 'shipping', '0003_auto_20170116_0700', '2020-11-27 08:03:45.27178+00');
INSERT INTO "public"."django_migrations" VALUES (83, 'shipping', '0004_auto_20170206_0407', '2020-11-27 08:03:45.297298+00');
INSERT INTO "public"."django_migrations" VALUES (84, 'shipping', '0005_auto_20170906_0556', '2020-11-27 08:03:45.303582+00');
INSERT INTO "public"."django_migrations" VALUES (85, 'shipping', '0006_auto_20171109_0908', '2020-11-27 08:03:45.309719+00');
INSERT INTO "public"."django_migrations" VALUES (86, 'shipping', '0007_auto_20171129_1004', '2020-11-27 08:03:45.317719+00');
INSERT INTO "public"."django_migrations" VALUES (87, 'shipping', '0008_auto_20180108_0814', '2020-11-27 08:03:45.340627+00');
INSERT INTO "public"."django_migrations" VALUES (88, 'userprofile', '0001_initial', '2020-11-27 08:03:45.566593+00');
INSERT INTO "public"."django_migrations" VALUES (89, 'order', '0001_initial', '2020-11-27 08:03:45.707731+00');
INSERT INTO "public"."django_migrations" VALUES (90, 'order', '0002_auto_20150820_1955', '2020-11-27 08:03:45.74662+00');
INSERT INTO "public"."django_migrations" VALUES (91, 'order', '0003_auto_20150825_1433', '2020-11-27 08:03:45.773668+00');
INSERT INTO "public"."django_migrations" VALUES (92, 'order', '0004_order_total', '2020-11-27 08:03:45.792496+00');
INSERT INTO "public"."django_migrations" VALUES (93, 'order', '0005_deliverygroup_last_updated', '2020-11-27 08:03:45.808689+00');
INSERT INTO "public"."django_migrations" VALUES (94, 'order', '0006_deliverygroup_shipping_method', '2020-11-27 08:03:45.825377+00');
INSERT INTO "public"."django_migrations" VALUES (95, 'order', '0007_deliverygroup_tracking_number', '2020-11-27 08:03:45.845606+00');
INSERT INTO "public"."django_migrations" VALUES (96, 'order', '0008_auto_20151026_0820', '2020-11-27 08:03:45.892273+00');
INSERT INTO "public"."django_migrations" VALUES (97, 'order', '0009_auto_20151201_0820', '2020-11-27 08:03:45.95055+00');
INSERT INTO "public"."django_migrations" VALUES (98, 'order', '0010_auto_20160119_0541', '2020-11-27 08:03:46.007008+00');
INSERT INTO "public"."django_migrations" VALUES (99, 'discount', '0001_initial', '2020-11-27 08:03:46.045919+00');
INSERT INTO "public"."django_migrations" VALUES (100, 'discount', '0002_voucher', '2020-11-27 08:03:46.095996+00');
INSERT INTO "public"."django_migrations" VALUES (101, 'discount', '0003_auto_20160207_0534', '2020-11-27 08:03:46.233243+00');
INSERT INTO "public"."django_migrations" VALUES (102, 'order', '0011_auto_20160207_0534', '2020-11-27 08:03:46.298617+00');
INSERT INTO "public"."django_migrations" VALUES (103, 'order', '0012_auto_20160216_1032', '2020-11-27 08:03:46.34931+00');
INSERT INTO "public"."django_migrations" VALUES (104, 'order', '0013_auto_20160906_0741', '2020-11-27 08:03:46.432176+00');
INSERT INTO "public"."django_migrations" VALUES (105, 'order', '0014_auto_20161028_0955', '2020-11-27 08:03:46.455823+00');
INSERT INTO "public"."django_migrations" VALUES (106, 'order', '0015_auto_20170206_0407', '2020-11-27 08:03:47.165371+00');
INSERT INTO "public"."django_migrations" VALUES (107, 'order', '0016_order_language_code', '2020-11-27 08:03:47.186074+00');
INSERT INTO "public"."django_migrations" VALUES (108, 'order', '0017_auto_20170906_0556', '2020-11-27 08:03:47.203815+00');
INSERT INTO "public"."django_migrations" VALUES (109, 'order', '0018_auto_20170919_0839', '2020-11-27 08:03:47.226072+00');
INSERT INTO "public"."django_migrations" VALUES (110, 'order', '0019_auto_20171109_1423', '2020-11-27 08:03:47.400275+00');
INSERT INTO "public"."django_migrations" VALUES (111, 'order', '0020_auto_20171123_0609', '2020-11-27 08:03:47.453011+00');
INSERT INTO "public"."django_migrations" VALUES (112, 'order', '0021_auto_20171129_1004', '2020-11-27 08:03:47.5468+00');
INSERT INTO "public"."django_migrations" VALUES (113, 'order', '0022_auto_20171205_0428', '2020-11-27 08:03:47.583448+00');
INSERT INTO "public"."django_migrations" VALUES (114, 'order', '0023_auto_20171206_0506', '2020-11-27 08:03:47.639114+00');
INSERT INTO "public"."django_migrations" VALUES (115, 'order', '0024_remove_order_status', '2020-11-27 08:03:47.660985+00');
INSERT INTO "public"."django_migrations" VALUES (116, 'order', '0025_auto_20171214_1015', '2020-11-27 08:03:47.870269+00');
INSERT INTO "public"."django_migrations" VALUES (117, 'order', '0026_auto_20171218_0428', '2020-11-27 08:03:47.942253+00');
INSERT INTO "public"."django_migrations" VALUES (118, 'order', '0027_auto_20180108_0814', '2020-11-27 08:03:48.670972+00');
INSERT INTO "public"."django_migrations" VALUES (119, 'order', '0028_status_fsm', '2020-11-27 08:03:48.688605+00');
INSERT INTO "public"."django_migrations" VALUES (120, 'order', '0029_auto_20180111_0845', '2020-11-27 08:03:48.919348+00');
INSERT INTO "public"."django_migrations" VALUES (121, 'order', '0030_auto_20180118_0605', '2020-11-27 08:03:48.976602+00');
INSERT INTO "public"."django_migrations" VALUES (122, 'order', '0031_auto_20180119_0405', '2020-11-27 08:03:49.051004+00');
INSERT INTO "public"."django_migrations" VALUES (123, 'order', '0032_orderline_is_shipping_required', '2020-11-27 08:03:49.105946+00');
INSERT INTO "public"."django_migrations" VALUES (124, 'order', '0033_auto_20180123_0832', '2020-11-27 08:03:49.130174+00');
INSERT INTO "public"."django_migrations" VALUES (125, 'order', '0034_auto_20180221_1056', '2020-11-27 08:03:49.186154+00');
INSERT INTO "public"."django_migrations" VALUES (126, 'order', '0035_auto_20180221_1057', '2020-11-27 08:03:49.220937+00');
INSERT INTO "public"."django_migrations" VALUES (127, 'order', '0036_remove_order_total_tax', '2020-11-27 08:03:49.244185+00');
INSERT INTO "public"."django_migrations" VALUES (128, 'order', '0037_auto_20180228_0450', '2020-11-27 08:03:49.311562+00');
INSERT INTO "public"."django_migrations" VALUES (129, 'order', '0038_auto_20180228_0451', '2020-11-27 08:03:49.346783+00');
INSERT INTO "public"."django_migrations" VALUES (130, 'order', '0039_auto_20180312_1203', '2020-11-27 08:03:49.390772+00');
INSERT INTO "public"."django_migrations" VALUES (131, 'order', '0040_auto_20180210_0422', '2020-11-27 08:03:49.63514+00');
INSERT INTO "public"."django_migrations" VALUES (132, 'order', '0041_auto_20180222_0458', '2020-11-27 08:03:49.658231+00');
INSERT INTO "public"."django_migrations" VALUES (133, 'order', '0042_auto_20180227_0436', '2020-11-27 08:03:49.792249+00');
INSERT INTO "public"."django_migrations" VALUES (134, 'order', '0043_auto_20180322_0655', '2020-11-27 08:03:49.832471+00');
INSERT INTO "public"."django_migrations" VALUES (135, 'order', '0044_auto_20180326_1055', '2020-11-27 08:03:50.204294+00');
INSERT INTO "public"."django_migrations" VALUES (136, 'order', '0045_auto_20180329_0142', '2020-11-27 08:03:50.386249+00');
INSERT INTO "public"."django_migrations" VALUES (137, 'order', '0046_order_line_taxes', '2020-11-27 08:03:50.432851+00');
INSERT INTO "public"."django_migrations" VALUES (138, 'order', '0047_order_line_name_length', '2020-11-27 08:03:50.461158+00');
INSERT INTO "public"."django_migrations" VALUES (139, 'order', '0048_auto_20180629_1055', '2020-11-27 08:03:50.522056+00');
INSERT INTO "public"."django_migrations" VALUES (140, 'order', '0049_auto_20180719_0520', '2020-11-27 08:03:50.543843+00');
INSERT INTO "public"."django_migrations" VALUES (141, 'order', '0050_auto_20180803_0528', '2020-11-27 08:03:50.590734+00');
INSERT INTO "public"."django_migrations" VALUES (142, 'order', '0050_auto_20180803_0337', '2020-11-27 08:03:50.632847+00');
INSERT INTO "public"."django_migrations" VALUES (143, 'order', '0051_merge_20180807_0704', '2020-11-27 08:03:50.63582+00');
INSERT INTO "public"."django_migrations" VALUES (144, 'order', '0052_auto_20180822_0720', '2020-11-27 08:03:50.699076+00');
INSERT INTO "public"."django_migrations" VALUES (145, 'order', '0053_orderevent', '2020-11-27 08:03:50.739902+00');
INSERT INTO "public"."django_migrations" VALUES (146, 'order', '0054_move_data_to_order_events', '2020-11-27 08:03:50.816803+00');
INSERT INTO "public"."django_migrations" VALUES (147, 'order', '0055_remove_order_note_order_history_entry', '2020-11-27 08:03:51.141155+00');
INSERT INTO "public"."django_migrations" VALUES (148, 'order', '0056_auto_20180911_1541', '2020-11-27 08:03:51.165823+00');
INSERT INTO "public"."django_migrations" VALUES (149, 'order', '0057_orderevent_parameters_new', '2020-11-27 08:03:51.223809+00');
INSERT INTO "public"."django_migrations" VALUES (150, 'order', '0058_remove_orderevent_parameters', '2020-11-27 08:03:51.242537+00');
INSERT INTO "public"."django_migrations" VALUES (151, 'order', '0059_auto_20180913_0841', '2020-11-27 08:03:51.262969+00');
INSERT INTO "public"."django_migrations" VALUES (152, 'order', '0060_auto_20180919_0731', '2020-11-27 08:03:51.287583+00');
INSERT INTO "public"."django_migrations" VALUES (153, 'order', '0061_auto_20180920_0859', '2020-11-27 08:03:51.306142+00');
INSERT INTO "public"."django_migrations" VALUES (154, 'order', '0062_auto_20180921_0949', '2020-11-27 08:03:51.356093+00');
INSERT INTO "public"."django_migrations" VALUES (155, 'order', '0063_auto_20180926_0446', '2020-11-27 08:03:51.375148+00');
INSERT INTO "public"."django_migrations" VALUES (156, 'order', '0064_auto_20181016_0819', '2020-11-27 08:03:51.415152+00');
INSERT INTO "public"."django_migrations" VALUES (157, 'cart', '0001_initial', '2020-11-27 08:03:51.507957+00');
INSERT INTO "public"."django_migrations" VALUES (158, 'cart', '0002_auto_20161014_1221', '2020-11-27 08:03:51.551488+00');
INSERT INTO "public"."django_migrations" VALUES (159, 'cart', 'fix_empty_data_in_lines', '2020-11-27 08:03:51.589432+00');
INSERT INTO "public"."django_migrations" VALUES (160, 'cart', '0001_auto_20170113_0435', '2020-11-27 08:03:51.637658+00');
INSERT INTO "public"."django_migrations" VALUES (161, 'cart', '0002_auto_20170206_0407', '2020-11-27 08:03:51.822024+00');
INSERT INTO "public"."django_migrations" VALUES (162, 'cart', '0003_auto_20170906_0556', '2020-11-27 08:03:51.840863+00');
INSERT INTO "public"."django_migrations" VALUES (163, 'cart', '0004_auto_20171129_1004', '2020-11-27 08:03:51.873249+00');
INSERT INTO "public"."django_migrations" VALUES (164, 'cart', '0005_auto_20180108_0814', '2020-11-27 08:03:52.376084+00');
INSERT INTO "public"."django_migrations" VALUES (165, 'cart', '0006_auto_20180221_0825', '2020-11-27 08:03:52.395276+00');
INSERT INTO "public"."django_migrations" VALUES (166, 'userprofile', '0002_auto_20150907_0602', '2020-11-27 08:03:52.442381+00');
INSERT INTO "public"."django_migrations" VALUES (167, 'userprofile', '0003_auto_20151104_1102', '2020-11-27 08:03:52.486797+00');
INSERT INTO "public"."django_migrations" VALUES (168, 'userprofile', '0004_auto_20160114_0419', '2020-11-27 08:03:52.529337+00');
INSERT INTO "public"."django_migrations" VALUES (169, 'userprofile', '0005_auto_20160205_0651', '2020-11-27 08:03:52.609845+00');
INSERT INTO "public"."django_migrations" VALUES (170, 'userprofile', '0006_auto_20160829_0819', '2020-11-27 08:03:52.648752+00');
INSERT INTO "public"."django_migrations" VALUES (171, 'userprofile', '0007_auto_20161115_0940', '2020-11-27 08:03:52.728827+00');
INSERT INTO "public"."django_migrations" VALUES (172, 'userprofile', '0008_auto_20161115_1011', '2020-11-27 08:03:52.74922+00');
INSERT INTO "public"."django_migrations" VALUES (173, 'userprofile', '0009_auto_20170206_0407', '2020-11-27 08:03:52.848261+00');
INSERT INTO "public"."django_migrations" VALUES (174, 'userprofile', '0010_auto_20170919_0839', '2020-11-27 08:03:52.869241+00');
INSERT INTO "public"."django_migrations" VALUES (175, 'userprofile', '0011_auto_20171110_0552', '2020-11-27 08:03:52.889777+00');
INSERT INTO "public"."django_migrations" VALUES (176, 'userprofile', '0012_auto_20171117_0846', '2020-11-27 08:03:52.911439+00');
INSERT INTO "public"."django_migrations" VALUES (177, 'userprofile', '0013_auto_20171120_0521', '2020-11-27 08:03:52.99135+00');
INSERT INTO "public"."django_migrations" VALUES (178, 'userprofile', '0014_auto_20171129_1004', '2020-11-27 08:03:53.026348+00');
INSERT INTO "public"."django_migrations" VALUES (179, 'userprofile', '0015_auto_20171213_0734', '2020-11-27 08:03:53.068369+00');
INSERT INTO "public"."django_migrations" VALUES (180, 'userprofile', '0016_auto_20180108_0814', '2020-11-27 08:03:53.868981+00');
INSERT INTO "public"."django_migrations" VALUES (181, 'account', '0017_auto_20180206_0957', '2020-11-27 08:03:53.906225+00');
INSERT INTO "public"."django_migrations" VALUES (182, 'account', '0018_auto_20180426_0641', '2020-11-27 08:03:54.013611+00');
INSERT INTO "public"."django_migrations" VALUES (183, 'account', '0019_auto_20180528_1205', '2020-11-27 08:03:54.072922+00');
INSERT INTO "public"."django_migrations" VALUES (184, 'checkout', '0007_merge_cart_with_checkout', '2020-11-27 08:03:54.664991+00');
INSERT INTO "public"."django_migrations" VALUES (185, 'checkout', '0008_rename_tables', '2020-11-27 08:03:54.712485+00');
INSERT INTO "public"."django_migrations" VALUES (186, 'checkout', '0009_cart_translated_discount_name', '2020-11-27 08:03:54.737856+00');
INSERT INTO "public"."django_migrations" VALUES (187, 'checkout', '0010_auto_20180822_0720', '2020-11-27 08:03:54.787808+00');
INSERT INTO "public"."django_migrations" VALUES (188, 'checkout', '0011_auto_20180913_0817', '2020-11-27 08:03:54.878985+00');
INSERT INTO "public"."django_migrations" VALUES (189, 'checkout', '0012_remove_cartline_data', '2020-11-27 08:03:54.904326+00');
INSERT INTO "public"."django_migrations" VALUES (190, 'checkout', '0013_auto_20180913_0841', '2020-11-27 08:03:54.948353+00');
INSERT INTO "public"."django_migrations" VALUES (191, 'checkout', '0014_auto_20180921_0751', '2020-11-27 08:03:54.972056+00');
INSERT INTO "public"."django_migrations" VALUES (192, 'checkout', '0015_auto_20181017_1346', '2020-11-27 08:03:54.996589+00');
INSERT INTO "public"."django_migrations" VALUES (193, 'payment', '0001_initial', '2020-11-27 08:03:55.096074+00');
INSERT INTO "public"."django_migrations" VALUES (194, 'payment', '0002_transfer_payment_to_payment_method', '2020-11-27 08:03:55.150079+00');
INSERT INTO "public"."django_migrations" VALUES (195, 'order', '0065_auto_20181017_1346', '2020-11-27 08:03:55.338392+00');
INSERT INTO "public"."django_migrations" VALUES (196, 'order', '0066_auto_20181023_0319', '2020-11-27 08:03:55.384762+00');
INSERT INTO "public"."django_migrations" VALUES (197, 'order', '0067_auto_20181102_1054', '2020-11-27 08:03:55.414861+00');
INSERT INTO "public"."django_migrations" VALUES (198, 'order', '0068_order_checkout_token', '2020-11-27 08:03:55.448816+00');
INSERT INTO "public"."django_migrations" VALUES (199, 'order', '0069_auto_20190225_2305', '2020-11-27 08:03:55.460835+00');
INSERT INTO "public"."django_migrations" VALUES (200, 'order', '0070_drop_update_event_and_rename_events', '2020-11-27 08:03:55.758506+00');
INSERT INTO "public"."django_migrations" VALUES (201, 'account', '0020_user_token', '2020-11-27 08:03:55.78778+00');
INSERT INTO "public"."django_migrations" VALUES (202, 'account', '0021_unique_token', '2020-11-27 08:03:55.861038+00');
INSERT INTO "public"."django_migrations" VALUES (203, 'account', '0022_auto_20180718_0956', '2020-11-27 08:03:55.882414+00');
INSERT INTO "public"."django_migrations" VALUES (204, 'account', '0023_auto_20180719_0520', '2020-11-27 08:03:55.90612+00');
INSERT INTO "public"."django_migrations" VALUES (205, 'account', '0024_auto_20181011_0737', '2020-11-27 08:03:55.953523+00');
INSERT INTO "public"."django_migrations" VALUES (206, 'account', '0025_auto_20190314_0550', '2020-11-27 08:03:55.971382+00');
INSERT INTO "public"."django_migrations" VALUES (207, 'account', '0026_user_avatar', '2020-11-27 08:03:55.996796+00');
INSERT INTO "public"."django_migrations" VALUES (208, 'account', '0027_customerevent', '2020-11-27 08:03:56.047852+00');
INSERT INTO "public"."django_migrations" VALUES (209, 'account', '0028_user_private_meta', '2020-11-27 08:03:56.076552+00');
INSERT INTO "public"."django_migrations" VALUES (210, 'account', '0029_user_meta', '2020-11-27 08:03:56.101235+00');
INSERT INTO "public"."django_migrations" VALUES (211, 'account', '0030_auto_20190719_0733', '2020-11-27 08:03:56.125786+00');
INSERT INTO "public"."django_migrations" VALUES (212, 'account', '0031_auto_20190719_0745', '2020-11-27 08:03:56.152944+00');
INSERT INTO "public"."django_migrations" VALUES (213, 'account', '0032_remove_user_token', '2020-11-27 08:03:56.176811+00');
INSERT INTO "public"."django_migrations" VALUES (214, 'account', '0033_serviceaccount', '2020-11-27 08:03:56.231114+00');
INSERT INTO "public"."django_migrations" VALUES (215, 'webhook', '0001_initial', '2020-11-27 08:03:56.336401+00');
INSERT INTO "public"."django_migrations" VALUES (216, 'webhook', '0002_webhook_name', '2020-11-27 08:03:56.353858+00');
INSERT INTO "public"."django_migrations" VALUES (217, 'sites', '0001_initial', '2020-11-27 08:03:56.362317+00');
INSERT INTO "public"."django_migrations" VALUES (218, 'sites', '0002_alter_domain_unique', '2020-11-27 08:03:56.371849+00');
INSERT INTO "public"."django_migrations" VALUES (219, 'site', '0001_initial', '2020-11-27 08:03:56.380489+00');
INSERT INTO "public"."django_migrations" VALUES (220, 'site', '0002_add_default_data', '2020-11-27 08:03:56.436313+00');
INSERT INTO "public"."django_migrations" VALUES (221, 'site', '0003_sitesettings_description', '2020-11-27 08:03:56.44542+00');
INSERT INTO "public"."django_migrations" VALUES (222, 'site', '0004_auto_20170221_0426', '2020-11-27 08:03:56.463978+00');
INSERT INTO "public"."django_migrations" VALUES (223, 'site', '0005_auto_20170906_0556', '2020-11-27 08:03:56.473298+00');
INSERT INTO "public"."django_migrations" VALUES (224, 'site', '0006_auto_20171025_0454', '2020-11-27 08:03:56.486034+00');
INSERT INTO "public"."django_migrations" VALUES (225, 'site', '0007_auto_20171027_0856', '2020-11-27 08:03:56.549147+00');
INSERT INTO "public"."django_migrations" VALUES (226, 'site', '0008_auto_20171027_0856', '2020-11-27 08:03:56.574281+00');
INSERT INTO "public"."django_migrations" VALUES (227, 'site', '0009_auto_20171109_0849', '2020-11-27 08:03:56.584324+00');
INSERT INTO "public"."django_migrations" VALUES (228, 'site', '0010_auto_20171113_0958', '2020-11-27 08:03:56.594086+00');
INSERT INTO "public"."django_migrations" VALUES (229, 'site', '0011_auto_20180108_0814', '2020-11-27 08:03:56.625823+00');
INSERT INTO "public"."django_migrations" VALUES (230, 'page', '0001_initial', '2020-11-27 08:03:56.637625+00');
INSERT INTO "public"."django_migrations" VALUES (231, 'menu', '0001_initial', '2020-11-27 08:03:56.70434+00');
INSERT INTO "public"."django_migrations" VALUES (232, 'menu', '0002_auto_20180319_0412', '2020-11-27 08:03:56.779554+00');
INSERT INTO "public"."django_migrations" VALUES (233, 'site', '0012_auto_20180405_0757', '2020-11-27 08:03:56.881593+00');
INSERT INTO "public"."django_migrations" VALUES (234, 'menu', '0003_auto_20180405_0854', '2020-11-27 08:03:56.95337+00');
INSERT INTO "public"."django_migrations" VALUES (235, 'site', '0013_assign_default_menus', '2020-11-27 08:03:57.195818+00');
INSERT INTO "public"."django_migrations" VALUES (236, 'site', '0014_handle_taxes', '2020-11-27 08:03:57.227102+00');
INSERT INTO "public"."django_migrations" VALUES (237, 'site', '0015_sitesettings_handle_stock_by_default', '2020-11-27 08:03:57.2402+00');
INSERT INTO "public"."django_migrations" VALUES (238, 'site', '0016_auto_20180719_0520', '2020-11-27 08:03:57.252254+00');
INSERT INTO "public"."django_migrations" VALUES (239, 'site', '0017_auto_20180803_0528', '2020-11-27 08:03:57.323756+00');
INSERT INTO "public"."django_migrations" VALUES (240, 'product', '0055_auto_20180321_0417', '2020-11-27 08:03:57.40228+00');
INSERT INTO "public"."django_migrations" VALUES (241, 'product', '0056_auto_20180330_0321', '2020-11-27 08:03:57.472477+00');
INSERT INTO "public"."django_migrations" VALUES (242, 'product', '0057_auto_20180403_0852', '2020-11-27 08:03:57.494451+00');
INSERT INTO "public"."django_migrations" VALUES (243, 'product', '0058_auto_20180329_0142', '2020-11-27 08:03:57.687074+00');
INSERT INTO "public"."django_migrations" VALUES (244, 'product', '0059_generate_variant_name_from_attrs', '2020-11-27 08:03:57.743382+00');
INSERT INTO "public"."django_migrations" VALUES (245, 'product', '0060_collection_is_published', '2020-11-27 08:03:57.762915+00');
INSERT INTO "public"."django_migrations" VALUES (246, 'product', '0061_product_taxes', '2020-11-27 08:03:57.809823+00');
INSERT INTO "public"."django_migrations" VALUES (247, 'product', '0062_sortable_models', '2020-11-27 08:03:58.003794+00');
INSERT INTO "public"."django_migrations" VALUES (248, 'product', '0063_required_attr_value_order', '2020-11-27 08:03:58.017414+00');
INSERT INTO "public"."django_migrations" VALUES (249, 'product', '0064_productvariant_handle_stock', '2020-11-27 08:03:58.038853+00');
INSERT INTO "public"."django_migrations" VALUES (250, 'product', '0065_auto_20180719_0520', '2020-11-27 08:03:58.072042+00');
INSERT INTO "public"."django_migrations" VALUES (251, 'product', '0066_auto_20180803_0528', '2020-11-27 08:03:58.726768+00');
INSERT INTO "public"."django_migrations" VALUES (252, 'site', '0018_sitesettings_homepage_collection', '2020-11-27 08:03:58.878724+00');
INSERT INTO "public"."django_migrations" VALUES (253, 'site', '0019_sitesettings_default_weight_unit', '2020-11-27 08:03:58.897226+00');
INSERT INTO "public"."django_migrations" VALUES (254, 'site', '0020_auto_20190301_0336', '2020-11-27 08:03:58.913034+00');
INSERT INTO "public"."django_migrations" VALUES (255, 'site', '0021_auto_20190326_0521', '2020-11-27 08:03:58.96323+00');
INSERT INTO "public"."django_migrations" VALUES (256, 'site', '0022_sitesettings_company_address', '2020-11-27 08:03:59.03227+00');
INSERT INTO "public"."django_migrations" VALUES (257, 'site', '0023_auto_20191007_0835', '2020-11-27 08:03:59.089475+00');
INSERT INTO "public"."django_migrations" VALUES (258, 'site', '0024_sitesettings_customer_set_password_url', '2020-11-27 08:03:59.120028+00');
INSERT INTO "public"."django_migrations" VALUES (259, 'site', '0025_auto_20191024_0552', '2020-11-27 08:03:59.187647+00');
INSERT INTO "public"."django_migrations" VALUES (260, 'shipping', '0009_auto_20180629_1055', '2020-11-27 08:03:59.202113+00');
INSERT INTO "public"."django_migrations" VALUES (261, 'shipping', '0010_auto_20180719_0520', '2020-11-27 08:03:59.214397+00');
INSERT INTO "public"."django_migrations" VALUES (262, 'shipping', '0011_auto_20180802_1238', '2020-11-27 08:03:59.227451+00');
INSERT INTO "public"."django_migrations" VALUES (263, 'shipping', '0012_remove_legacy_shipping_methods', '2020-11-27 08:03:59.294795+00');
INSERT INTO "public"."django_migrations" VALUES (264, 'shipping', '0013_auto_20180822_0721', '2020-11-27 08:03:59.847028+00');
INSERT INTO "public"."django_migrations" VALUES (265, 'shipping', '0014_auto_20180920_0956', '2020-11-27 08:03:59.885507+00');
INSERT INTO "public"."django_migrations" VALUES (266, 'shipping', '0015_auto_20190305_0640', '2020-11-27 08:03:59.9073+00');
INSERT INTO "public"."django_migrations" VALUES (267, 'shipping', '0016_shippingmethod_meta', '2020-11-27 08:03:59.930036+00');
INSERT INTO "public"."django_migrations" VALUES (268, 'shipping', '0017_django_price_2', '2020-11-27 08:04:00.009537+00');
INSERT INTO "public"."django_migrations" VALUES (269, 'product', '0067_remove_product_is_featured', '2020-11-27 08:04:00.041288+00');
INSERT INTO "public"."django_migrations" VALUES (270, 'product', '0068_auto_20180822_0720', '2020-11-27 08:04:00.124462+00');
INSERT INTO "public"."django_migrations" VALUES (271, 'product', '0069_auto_20180912_0326', '2020-11-27 08:04:00.14545+00');
INSERT INTO "public"."django_migrations" VALUES (272, 'product', '0070_auto_20180912_0329', '2020-11-27 08:04:00.516644+00');
INSERT INTO "public"."django_migrations" VALUES (273, 'product', '0071_attributechoicevalue_value', '2020-11-27 08:04:00.533864+00');
INSERT INTO "public"."django_migrations" VALUES (274, 'product', '0072_auto_20180925_1048', '2020-11-27 08:04:01.365207+00');
INSERT INTO "public"."django_migrations" VALUES (275, 'product', '0073_auto_20181010_0729', '2020-11-27 08:04:02.272267+00');
INSERT INTO "public"."django_migrations" VALUES (276, 'product', '0074_auto_20181010_0730', '2020-11-27 08:04:02.999639+00');
INSERT INTO "public"."django_migrations" VALUES (277, 'product', '0075_auto_20181010_0842', '2020-11-27 08:04:03.361216+00');
INSERT INTO "public"."django_migrations" VALUES (278, 'product', '0076_auto_20181012_1146', '2020-11-27 08:04:03.400974+00');
INSERT INTO "public"."django_migrations" VALUES (279, 'product', '0077_generate_versatile_background_images', '2020-11-27 08:04:03.404558+00');
INSERT INTO "public"."django_migrations" VALUES (280, 'product', '0078_auto_20181120_0437', '2020-11-27 08:04:03.450371+00');
INSERT INTO "public"."django_migrations" VALUES (281, 'product', '0079_default_tax_rate_instead_of_empty_field', '2020-11-27 08:04:03.568815+00');
INSERT INTO "public"."django_migrations" VALUES (282, 'product', '0080_collection_published_date', '2020-11-27 08:04:03.601515+00');
INSERT INTO "public"."django_migrations" VALUES (283, 'product', '0080_auto_20181214_0440', '2020-11-27 08:04:03.648162+00');
INSERT INTO "public"."django_migrations" VALUES (284, 'product', '0081_merge_20181215_1659', '2020-11-27 08:04:03.662209+00');
INSERT INTO "public"."django_migrations" VALUES (285, 'product', '0081_auto_20181218_0024', '2020-11-27 08:04:03.781723+00');
INSERT INTO "public"."django_migrations" VALUES (286, 'product', '0082_merge_20181219_1440', '2020-11-27 08:04:03.785747+00');
INSERT INTO "public"."django_migrations" VALUES (287, 'product', '0083_auto_20190104_0443', '2020-11-27 08:04:03.834402+00');
INSERT INTO "public"."django_migrations" VALUES (288, 'product', '0084_auto_20190122_0113', '2020-11-27 08:04:03.918796+00');
INSERT INTO "public"."django_migrations" VALUES (289, 'product', '0085_auto_20190125_0025', '2020-11-27 08:04:03.930811+00');
INSERT INTO "public"."django_migrations" VALUES (290, 'product', '0086_product_publication_date', '2020-11-27 08:04:04.000843+00');
INSERT INTO "public"."django_migrations" VALUES (291, 'product', '0087_auto_20190208_0326', '2020-11-27 08:04:04.056882+00');
INSERT INTO "public"."django_migrations" VALUES (292, 'product', '0088_auto_20190220_1928', '2020-11-27 08:04:04.084216+00');
INSERT INTO "public"."django_migrations" VALUES (293, 'product', '0089_auto_20190225_0252', '2020-11-27 08:04:04.453817+00');
INSERT INTO "public"."django_migrations" VALUES (294, 'product', '0090_auto_20190328_0608', '2020-11-27 08:04:04.52347+00');
INSERT INTO "public"."django_migrations" VALUES (295, 'product', '0091_auto_20190402_0853', '2020-11-27 08:04:04.669646+00');
INSERT INTO "public"."django_migrations" VALUES (296, 'product', '0092_auto_20190507_0309', '2020-11-27 08:04:04.878765+00');
INSERT INTO "public"."django_migrations" VALUES (297, 'product', '0093_auto_20190521_0124', '2020-11-27 08:04:05.127371+00');
INSERT INTO "public"."django_migrations" VALUES (298, 'product', '0094_auto_20190618_0430', '2020-11-27 08:04:05.159084+00');
INSERT INTO "public"."django_migrations" VALUES (299, 'product', '0095_auto_20190618_0842', '2020-11-27 08:04:05.43879+00');
INSERT INTO "public"."django_migrations" VALUES (300, 'product', '0096_auto_20190719_0339', '2020-11-27 08:04:05.460733+00');
INSERT INTO "public"."django_migrations" VALUES (301, 'product', '0097_auto_20190719_0458', '2020-11-27 08:04:05.552747+00');
INSERT INTO "public"."django_migrations" VALUES (302, 'product', '0098_auto_20190719_0733', '2020-11-27 08:04:05.625461+00');
INSERT INTO "public"."django_migrations" VALUES (303, 'product', '0099_auto_20190719_0745', '2020-11-27 08:04:05.699896+00');
INSERT INTO "public"."django_migrations" VALUES (304, 'product', '0096_raw_html_to_json', '2020-11-27 08:04:05.903834+00');
INSERT INTO "public"."django_migrations" VALUES (305, 'product', '0100_merge_20190719_0803', '2020-11-27 08:04:05.90709+00');
INSERT INTO "public"."django_migrations" VALUES (306, 'product', '0101_auto_20190719_0839', '2020-11-27 08:04:06.057442+00');
INSERT INTO "public"."django_migrations" VALUES (307, 'product', '0102_migrate_data_enterprise_grade_attributes', '2020-11-27 08:04:06.602082+00');
INSERT INTO "public"."django_migrations" VALUES (308, 'product', '0103_schema_data_enterprise_grade_attributes', '2020-11-27 08:04:08.349104+00');
INSERT INTO "public"."django_migrations" VALUES (309, 'product', '0104_fix_invalid_attributes_map', '2020-11-27 08:04:08.560106+00');
INSERT INTO "public"."django_migrations" VALUES (310, 'product', '0105_product_minimal_variant_price', '2020-11-27 08:04:08.73348+00');
INSERT INTO "public"."django_migrations" VALUES (311, 'product', '0106_django_prices_2', '2020-11-27 08:04:08.900497+00');
INSERT INTO "public"."django_migrations" VALUES (312, 'product', '0107_attributes_map_to_m2m', '2020-11-27 08:04:09.846006+00');
INSERT INTO "public"."django_migrations" VALUES (313, 'product', '0108_auto_20191003_0422', '2020-11-27 08:04:10.103033+00');
INSERT INTO "public"."django_migrations" VALUES (314, 'product', '0109_auto_20191006_1433', '2020-11-27 08:04:10.179766+00');
INSERT INTO "public"."django_migrations" VALUES (315, 'product', '0110_auto_20191108_0340', '2020-11-27 08:04:10.348538+00');
INSERT INTO "public"."django_migrations" VALUES (316, 'account', '0034_service_account_token', '2020-11-27 08:04:10.513351+00');
INSERT INTO "public"."django_migrations" VALUES (317, 'account', '0035_staffnotificationrecipient', '2020-11-27 08:04:10.787237+00');
INSERT INTO "public"."django_migrations" VALUES (318, 'account', '0036_auto_20191209_0407', '2020-11-27 08:04:10.827485+00');
INSERT INTO "public"."django_migrations" VALUES (319, 'account', '0037_auto_20191219_0944', '2020-11-27 08:04:10.865473+00');
INSERT INTO "public"."django_migrations" VALUES (320, 'warehouse', '0001_initial', '2020-11-27 08:04:11.104225+00');
INSERT INTO "public"."django_migrations" VALUES (321, 'product', '0111_auto_20191209_0437', '2020-11-27 08:04:11.171868+00');
INSERT INTO "public"."django_migrations" VALUES (322, 'product', '0112_auto_20200129_0050', '2020-11-27 08:04:11.518317+00');
INSERT INTO "public"."django_migrations" VALUES (323, 'product', '0113_auto_20200129_0717', '2020-11-27 08:04:12.231922+00');
INSERT INTO "public"."django_migrations" VALUES (324, 'product', '0114_auto_20200129_0815', '2020-11-27 08:04:12.47709+00');
INSERT INTO "public"."django_migrations" VALUES (325, 'product', '0115_auto_20200221_0257', '2020-11-27 08:04:13.348699+00');
INSERT INTO "public"."django_migrations" VALUES (326, 'giftcard', '0001_initial', '2020-11-27 08:04:13.432506+00');
INSERT INTO "public"."django_migrations" VALUES (327, 'order', '0071_order_gift_cards', '2020-11-27 08:04:13.518801+00');
INSERT INTO "public"."django_migrations" VALUES (328, 'order', '0072_django_price_2', '2020-11-27 08:04:14.039738+00');
INSERT INTO "public"."django_migrations" VALUES (329, 'order', '0073_auto_20190829_0249', '2020-11-27 08:04:14.19698+00');
INSERT INTO "public"."django_migrations" VALUES (330, 'order', '0074_auto_20190930_0731', '2020-11-27 08:04:14.291774+00');
INSERT INTO "public"."django_migrations" VALUES (331, 'order', '0075_auto_20191006_1433', '2020-11-27 08:04:14.330518+00');
INSERT INTO "public"."django_migrations" VALUES (332, 'order', '0076_auto_20191018_0554', '2020-11-27 08:04:14.395764+00');
INSERT INTO "public"."django_migrations" VALUES (333, 'order', '0077_auto_20191118_0606', '2020-11-27 08:04:14.453383+00');
INSERT INTO "public"."django_migrations" VALUES (334, 'order', '0078_auto_20200221_0257', '2020-11-27 08:04:14.597436+00');
INSERT INTO "public"."django_migrations" VALUES (335, 'payment', '0003_rename_payment_method_to_payment', '2020-11-27 08:04:14.899237+00');
INSERT INTO "public"."django_migrations" VALUES (336, 'payment', '0004_auto_20181206_0031', '2020-11-27 08:04:14.932118+00');
INSERT INTO "public"."django_migrations" VALUES (337, 'payment', '0005_auto_20190104_0443', '2020-11-27 08:04:14.965025+00');
INSERT INTO "public"."django_migrations" VALUES (338, 'payment', '0006_auto_20190109_0358', '2020-11-27 08:04:14.979998+00');
INSERT INTO "public"."django_migrations" VALUES (339, 'payment', '0007_auto_20190206_0938', '2020-11-27 08:04:14.993328+00');
INSERT INTO "public"."django_migrations" VALUES (340, 'payment', '0007_auto_20190125_0242', '2020-11-27 08:04:15.028435+00');
INSERT INTO "public"."django_migrations" VALUES (341, 'payment', '0008_merge_20190214_0447', '2020-11-27 08:04:15.031052+00');
INSERT INTO "public"."django_migrations" VALUES (342, 'payment', '0009_convert_to_partially_charged_and_partially_refunded', '2020-11-27 08:04:15.304122+00');
INSERT INTO "public"."django_migrations" VALUES (343, 'payment', '0010_auto_20190220_2001', '2020-11-27 08:04:15.336617+00');
INSERT INTO "public"."django_migrations" VALUES (344, 'checkout', '0016_auto_20190112_0506', '2020-11-27 08:04:15.372283+00');
INSERT INTO "public"."django_migrations" VALUES (345, 'checkout', '0017_auto_20190130_0207', '2020-11-27 08:04:15.419115+00');
INSERT INTO "public"."django_migrations" VALUES (346, 'checkout', '0018_auto_20190410_0132', '2020-11-27 08:04:15.949767+00');
INSERT INTO "public"."django_migrations" VALUES (347, 'checkout', '0019_checkout_gift_cards', '2020-11-27 08:04:16.064092+00');
INSERT INTO "public"."django_migrations" VALUES (348, 'checkout', '0020_auto_20190723_0722', '2020-11-27 08:04:16.16074+00');
INSERT INTO "public"."django_migrations" VALUES (349, 'checkout', '0021_django_price_2', '2020-11-27 08:04:16.212066+00');
INSERT INTO "public"."django_migrations" VALUES (350, 'checkout', '0022_auto_20191219_1137', '2020-11-27 08:04:16.413717+00');
INSERT INTO "public"."django_migrations" VALUES (351, 'checkout', '0023_checkout_country', '2020-11-27 08:04:16.464437+00');
INSERT INTO "public"."django_migrations" VALUES (352, 'checkout', '0024_auto_20200120_0154', '2020-11-27 08:04:16.515827+00');
INSERT INTO "public"."django_migrations" VALUES (353, 'checkout', '0025_auto_20200221_0257', '2020-11-27 08:04:16.614539+00');
INSERT INTO "public"."django_migrations" VALUES (354, 'account', '0038_auto_20200123_0034', '2020-11-27 08:04:16.73491+00');
INSERT INTO "public"."django_migrations" VALUES (355, 'account', '0039_auto_20200221_0257', '2020-11-27 08:04:16.849121+00');
INSERT INTO "public"."django_migrations" VALUES (356, 'core', '0001_migrate_metadata', '2020-11-27 08:04:18.059841+00');
INSERT INTO "public"."django_migrations" VALUES (357, 'account', '0040_auto_20200415_0443', '2020-11-27 08:04:18.155871+00');
INSERT INTO "public"."django_migrations" VALUES (358, 'account', '0041_permissions_to_groups', '2020-11-27 08:04:18.244351+00');
INSERT INTO "public"."django_migrations" VALUES (359, 'account', '0040_auto_20200225_0237', '2020-11-27 08:04:18.333877+00');
INSERT INTO "public"."django_migrations" VALUES (360, 'account', '0041_merge_20200421_0529', '2020-11-27 08:04:18.337473+00');
INSERT INTO "public"."django_migrations" VALUES (361, 'account', '0042_merge_20200422_0555', '2020-11-27 08:04:18.340338+00');
INSERT INTO "public"."django_migrations" VALUES (362, 'account', '0043_rename_service_account_to_app', '2020-11-27 08:04:18.881216+00');
INSERT INTO "public"."django_migrations" VALUES (363, 'webhook', '0003_unmount_service_account', '2020-11-27 08:04:18.979723+00');
INSERT INTO "public"."django_migrations" VALUES (364, 'account', '0044_unmount_app_and_app_token', '2020-11-27 08:04:19.062102+00');
INSERT INTO "public"."django_migrations" VALUES (365, 'account', '0045_auto_20200427_0425', '2020-11-27 08:04:19.15122+00');
INSERT INTO "public"."django_migrations" VALUES (366, 'account', '0046_user_jwt_token_key', '2020-11-27 08:04:19.195076+00');
INSERT INTO "public"."django_migrations" VALUES (367, 'account', '0047_auto_20200810_1415', '2020-11-27 08:04:19.310186+00');
INSERT INTO "public"."django_migrations" VALUES (368, 'app', '0001_initial', '2020-11-27 08:04:19.635082+00');
INSERT INTO "public"."django_migrations" VALUES (369, 'app', '0002_auto_20200702_0945', '2020-11-27 08:04:19.864979+00');
INSERT INTO "public"."django_migrations" VALUES (370, 'app', '0003_auto_20200810_1415', '2020-11-27 08:04:20.117148+00');
INSERT INTO "public"."django_migrations" VALUES (371, 'auth', '0012_alter_user_first_name_max_length', '2020-11-27 08:04:20.141163+00');
INSERT INTO "public"."django_migrations" VALUES (372, 'checkout', '0026_auto_20200709_1102', '2020-11-27 08:04:20.208828+00');
INSERT INTO "public"."django_migrations" VALUES (373, 'checkout', '0027_auto_20200810_1415', '2020-11-27 08:04:20.367035+00');
INSERT INTO "public"."django_migrations" VALUES (374, 'checkout', '0028_auto_20200824_1019', '2020-11-27 08:04:20.477586+00');
INSERT INTO "public"."django_migrations" VALUES (375, 'checkout', '0029_auto_20200904_0529', '2020-11-27 08:04:20.543709+00');
INSERT INTO "public"."django_migrations" VALUES (376, 'csv', '0001_initial', '2020-11-27 08:04:20.740734+00');
INSERT INTO "public"."django_migrations" VALUES (377, 'csv', '0002_exportfile_message', '2020-11-27 08:04:20.798883+00');
INSERT INTO "public"."django_migrations" VALUES (378, 'csv', '0003_auto_20200810_1415', '2020-11-27 08:04:20.861151+00');
INSERT INTO "public"."django_migrations" VALUES (379, 'discount', '0004_auto_20170206_0407', '2020-11-27 08:04:21.814822+00');
INSERT INTO "public"."django_migrations" VALUES (380, 'discount', '0005_auto_20170919_0839', '2020-11-27 08:04:21.880636+00');
INSERT INTO "public"."django_migrations" VALUES (381, 'discount', '0006_auto_20171129_1004', '2020-11-27 08:04:21.937121+00');
INSERT INTO "public"."django_migrations" VALUES (382, 'discount', '0007_auto_20180108_0814', '2020-11-27 08:04:22.697051+00');
INSERT INTO "public"."django_migrations" VALUES (383, 'discount', '0008_sale_collections', '2020-11-27 08:04:23.023114+00');
INSERT INTO "public"."django_migrations" VALUES (384, 'discount', '0009_auto_20180719_0520', '2020-11-27 08:04:23.112615+00');
INSERT INTO "public"."django_migrations" VALUES (385, 'discount', '0010_auto_20180724_1251', '2020-11-27 08:04:23.959335+00');
INSERT INTO "public"."django_migrations" VALUES (386, 'discount', '0011_auto_20180803_0528', '2020-11-27 08:04:24.158297+00');
INSERT INTO "public"."django_migrations" VALUES (387, 'discount', '0012_auto_20190329_0836', '2020-11-27 08:04:24.521292+00');
INSERT INTO "public"."django_migrations" VALUES (388, 'discount', '0013_auto_20190618_0733', '2020-11-27 08:04:24.719872+00');
INSERT INTO "public"."django_migrations" VALUES (389, 'discount', '0014_auto_20190701_0402', '2020-11-27 08:04:24.870149+00');
INSERT INTO "public"."django_migrations" VALUES (390, 'discount', '0015_voucher_min_quantity_of_products', '2020-11-27 08:04:24.920967+00');
INSERT INTO "public"."django_migrations" VALUES (391, 'discount', '0016_auto_20190716_0330', '2020-11-27 08:04:25.088147+00');
INSERT INTO "public"."django_migrations" VALUES (392, 'discount', '0017_django_price_2', '2020-11-27 08:04:25.184399+00');
INSERT INTO "public"."django_migrations" VALUES (393, 'discount', '0018_auto_20190827_0315', '2020-11-27 08:04:25.341423+00');
INSERT INTO "public"."django_migrations" VALUES (394, 'discount', '0019_auto_20200217_0350', '2020-11-27 08:04:25.464217+00');
INSERT INTO "public"."django_migrations" VALUES (395, 'discount', '0020_auto_20200709_1102', '2020-11-27 08:04:25.511156+00');
INSERT INTO "public"."django_migrations" VALUES (396, 'discount', '0021_auto_20200902_1249', '2020-11-27 08:04:25.658577+00');
INSERT INTO "public"."django_migrations" VALUES (397, 'django_prices_openexchangerates', '0001_initial', '2020-11-27 08:04:25.67343+00');
INSERT INTO "public"."django_migrations" VALUES (398, 'django_prices_openexchangerates', '0002_auto_20160329_0702', '2020-11-27 08:04:25.691446+00');
INSERT INTO "public"."django_migrations" VALUES (399, 'django_prices_openexchangerates', '0003_auto_20161018_0707', '2020-11-27 08:04:25.717278+00');
INSERT INTO "public"."django_migrations" VALUES (400, 'django_prices_openexchangerates', '0004_auto_20170316_0944', '2020-11-27 08:04:25.729712+00');
INSERT INTO "public"."django_migrations" VALUES (401, 'django_prices_openexchangerates', '0005_auto_20190124_1008', '2020-11-27 08:04:25.740803+00');
INSERT INTO "public"."django_migrations" VALUES (402, 'django_prices_vatlayer', '0001_initial', '2020-11-27 08:04:25.753882+00');
INSERT INTO "public"."django_migrations" VALUES (403, 'django_prices_vatlayer', '0002_ratetypes', '2020-11-27 08:04:25.768647+00');
INSERT INTO "public"."django_migrations" VALUES (404, 'django_prices_vatlayer', '0003_auto_20180316_1053', '2020-11-27 08:04:25.98582+00');
INSERT INTO "public"."django_migrations" VALUES (405, 'giftcard', '0002_auto_20190814_0413', '2020-11-27 08:04:26.235979+00');
INSERT INTO "public"."django_migrations" VALUES (406, 'giftcard', '0003_auto_20200217_0350', '2020-11-27 08:04:26.276096+00');
INSERT INTO "public"."django_migrations" VALUES (407, 'giftcard', '0004_auto_20200902_1249', '2020-11-27 08:04:26.481282+00');
INSERT INTO "public"."django_migrations" VALUES (408, 'warehouse', '0002_auto_20200123_0036', '2020-11-27 08:04:26.60515+00');
INSERT INTO "public"."django_migrations" VALUES (409, 'warehouse', '0003_warehouse_slug', '2020-11-27 08:04:26.787147+00');
INSERT INTO "public"."django_migrations" VALUES (410, 'warehouse', '0004_auto_20200129_0717', '2020-11-27 08:04:26.835741+00');
INSERT INTO "public"."django_migrations" VALUES (411, 'warehouse', '0005_auto_20200204_0722', '2020-11-27 08:04:26.945407+00');
INSERT INTO "public"."django_migrations" VALUES (412, 'warehouse', '0006_auto_20200228_0519', '2020-11-27 08:04:27.053172+00');
INSERT INTO "public"."django_migrations" VALUES (413, 'order', '0079_auto_20200304_0752', '2020-11-27 08:04:27.39469+00');
INSERT INTO "public"."django_migrations" VALUES (414, 'order', '0080_invoice', '2020-11-27 08:04:27.522925+00');
INSERT INTO "public"."django_migrations" VALUES (415, 'order', '0081_auto_20200406_0456', '2020-11-27 08:04:27.645796+00');
INSERT INTO "public"."django_migrations" VALUES (416, 'warehouse', '0007_auto_20200406_0341', '2020-11-27 08:04:27.947046+00');
INSERT INTO "public"."django_migrations" VALUES (417, 'order', '0082_fulfillmentline_stock', '2020-11-27 08:04:28.058486+00');
INSERT INTO "public"."django_migrations" VALUES (418, 'order', '0079_auto_20200225_0237', '2020-11-27 08:04:28.108693+00');
INSERT INTO "public"."django_migrations" VALUES (419, 'order', '0081_merge_20200309_0952', '2020-11-27 08:04:28.112463+00');
INSERT INTO "public"."django_migrations" VALUES (420, 'order', '0083_merge_20200421_0529', '2020-11-27 08:04:28.115604+00');
INSERT INTO "public"."django_migrations" VALUES (421, 'order', '0084_auto_20200522_0522', '2020-11-27 08:04:28.179179+00');
INSERT INTO "public"."django_migrations" VALUES (422, 'order', '0085_delete_invoice', '2020-11-27 08:04:28.18934+00');
INSERT INTO "public"."django_migrations" VALUES (423, 'invoice', '0001_initial', '2020-11-27 08:04:28.404216+00');
INSERT INTO "public"."django_migrations" VALUES (424, 'invoice', '0002_invoice_message', '2020-11-27 08:04:28.453914+00');
INSERT INTO "public"."django_migrations" VALUES (425, 'invoice', '0003_auto_20200713_1311', '2020-11-27 08:04:28.508454+00');
INSERT INTO "public"."django_migrations" VALUES (426, 'invoice', '0004_auto_20200810_1415', '2020-11-27 08:04:28.83634+00');
INSERT INTO "public"."django_migrations" VALUES (427, 'menu', '0004_sort_order_index', '2020-11-27 08:04:28.879793+00');
INSERT INTO "public"."django_migrations" VALUES (428, 'menu', '0005_auto_20180719_0520', '2020-11-27 08:04:28.894155+00');
INSERT INTO "public"."django_migrations" VALUES (429, 'menu', '0006_auto_20180803_0528', '2020-11-27 08:04:29.033752+00');
INSERT INTO "public"."django_migrations" VALUES (430, 'menu', '0007_auto_20180807_0547', '2020-11-27 08:04:29.161815+00');
INSERT INTO "public"."django_migrations" VALUES (431, 'menu', '0008_menu_json_content_new', '2020-11-27 08:04:29.27785+00');
INSERT INTO "public"."django_migrations" VALUES (432, 'menu', '0009_remove_menu_json_content', '2020-11-27 08:04:29.289813+00');
INSERT INTO "public"."django_migrations" VALUES (433, 'menu', '0010_auto_20180913_0841', '2020-11-27 08:04:29.302535+00');
INSERT INTO "public"."django_migrations" VALUES (434, 'menu', '0011_auto_20181204_0004', '2020-11-27 08:04:29.314125+00');
INSERT INTO "public"."django_migrations" VALUES (435, 'menu', '0012_auto_20190104_0443', '2020-11-27 08:04:29.326013+00');
INSERT INTO "public"."django_migrations" VALUES (436, 'menu', '0013_auto_20190507_0309', '2020-11-27 08:04:29.442697+00');
INSERT INTO "public"."django_migrations" VALUES (437, 'menu', '0014_auto_20190523_0759', '2020-11-27 08:04:29.483155+00');
INSERT INTO "public"."django_migrations" VALUES (438, 'menu', '0015_auto_20190725_0811', '2020-11-27 08:04:29.524423+00');
INSERT INTO "public"."django_migrations" VALUES (439, 'menu', '0016_auto_20200217_0350', '2020-11-27 08:04:29.540575+00');
INSERT INTO "public"."django_migrations" VALUES (440, 'menu', '0017_remove_menu_json_content', '2020-11-27 08:04:29.554632+00');
INSERT INTO "public"."django_migrations" VALUES (441, 'menu', '0018_auto_20200709_1102', '2020-11-27 08:04:29.606743+00');
INSERT INTO "public"."django_migrations" VALUES (442, 'menu', '0019_menu_slug', '2020-11-27 08:04:29.756246+00');
INSERT INTO "public"."django_migrations" VALUES (443, 'order', '0086_auto_20200716_1226', '2020-11-27 08:04:29.812777+00');
INSERT INTO "public"."django_migrations" VALUES (444, 'order', '0087_auto_20200810_1415', '2020-11-27 08:04:30.071208+00');
INSERT INTO "public"."django_migrations" VALUES (445, 'order', '0088_auto_20200812_1101', '2020-11-27 08:04:30.129558+00');
INSERT INTO "public"."django_migrations" VALUES (446, 'order', '0089_auto_20200902_1249', '2020-11-27 08:04:30.865452+00');
INSERT INTO "public"."django_migrations" VALUES (447, 'page', '0002_auto_20180321_0417', '2020-11-27 08:04:30.889785+00');
INSERT INTO "public"."django_migrations" VALUES (448, 'page', '0003_auto_20180719_0520', '2020-11-27 08:04:30.900517+00');
INSERT INTO "public"."django_migrations" VALUES (449, 'page', '0004_auto_20180803_0528', '2020-11-27 08:04:31.027196+00');
INSERT INTO "public"."django_migrations" VALUES (450, 'page', '0005_auto_20190208_0456', '2020-11-27 08:04:31.054952+00');
INSERT INTO "public"."django_migrations" VALUES (451, 'page', '0006_auto_20190220_1928', '2020-11-27 08:04:31.069453+00');
INSERT INTO "public"."django_migrations" VALUES (452, 'page', '0007_auto_20190225_0252', '2020-11-27 08:04:31.120862+00');
INSERT INTO "public"."django_migrations" VALUES (453, 'page', '0008_raw_html_to_json', '2020-11-27 08:04:31.371093+00');
INSERT INTO "public"."django_migrations" VALUES (454, 'page', '0009_auto_20191108_0402', '2020-11-27 08:04:31.385877+00');
INSERT INTO "public"."django_migrations" VALUES (455, 'page', '0010_auto_20200129_0717', '2020-11-27 08:04:31.410232+00');
INSERT INTO "public"."django_migrations" VALUES (456, 'page', '0011_auto_20200217_0350', '2020-11-27 08:04:31.423852+00');
INSERT INTO "public"."django_migrations" VALUES (457, 'page', '0012_auto_20200709_1102', '2020-11-27 08:04:31.436564+00');
INSERT INTO "public"."django_migrations" VALUES (458, 'page', '0013_update_publication_date', '2020-11-27 08:04:31.547231+00');
INSERT INTO "public"."django_migrations" VALUES (459, 'page', '0014_add_metadata', '2020-11-27 08:04:31.569121+00');
INSERT INTO "public"."django_migrations" VALUES (460, 'payment', '0011_auto_20190516_0901', '2020-11-27 08:04:31.593233+00');
INSERT INTO "public"."django_migrations" VALUES (461, 'payment', '0012_transaction_customer_id', '2020-11-27 08:04:31.619695+00');
INSERT INTO "public"."django_migrations" VALUES (462, 'payment', '0013_auto_20190813_0735', '2020-11-27 08:04:31.650218+00');
INSERT INTO "public"."django_migrations" VALUES (463, 'payment', '0014_django_price_2', '2020-11-27 08:04:31.747657+00');
INSERT INTO "public"."django_migrations" VALUES (464, 'payment', '0015_auto_20200203_1116', '2020-11-27 08:04:31.823886+00');
INSERT INTO "public"."django_migrations" VALUES (465, 'payment', '0016_auto_20200423_0314', '2020-11-27 08:04:31.935168+00');
INSERT INTO "public"."django_migrations" VALUES (466, 'payment', '0017_payment_payment_method_type', '2020-11-27 08:04:32.205071+00');
INSERT INTO "public"."django_migrations" VALUES (467, 'payment', '0018_auto_20200810_1415', '2020-11-27 08:04:32.23389+00');
INSERT INTO "public"."django_migrations" VALUES (468, 'payment', '0019_auto_20200812_1101', '2020-11-27 08:04:32.42675+00');
INSERT INTO "public"."django_migrations" VALUES (469, 'payment', '0020_auto_20200902_1249', '2020-11-27 08:04:32.577369+00');
INSERT INTO "public"."django_migrations" VALUES (470, 'payment', '0021_transaction_searchable_key', '2020-11-27 08:04:32.606049+00');
INSERT INTO "public"."django_migrations" VALUES (471, 'plugins', '0003_auto_20200429_0142', '2020-11-27 08:04:32.7413+00');
INSERT INTO "public"."django_migrations" VALUES (472, 'plugins', '0004_drop_support_for_env_vatlayer_access_key', '2020-11-27 08:04:32.860843+00');
INSERT INTO "public"."django_migrations" VALUES (473, 'plugins', '0005_auto_20200810_1415', '2020-11-27 08:04:32.870785+00');
INSERT INTO "public"."django_migrations" VALUES (474, 'plugins', '0006_auto_20200909_1253', '2020-11-27 08:04:32.879824+00');
INSERT INTO "public"."django_migrations" VALUES (475, 'product', '0116_auto_20200225_0237', '2020-11-27 08:04:32.933096+00');
INSERT INTO "public"."django_migrations" VALUES (476, 'product', '0117_auto_20200423_0737', '2020-11-27 08:04:32.970182+00');
INSERT INTO "public"."django_migrations" VALUES (477, 'product', '0118_populate_product_variant_price', '2020-11-27 08:04:33.400645+00');
INSERT INTO "public"."django_migrations" VALUES (478, 'product', '0119_auto_20200709_1102', '2020-11-27 08:04:33.747912+00');
INSERT INTO "public"."django_migrations" VALUES (479, 'product', '0120_auto_20200714_0539', '2020-11-27 08:04:34.320102+00');
INSERT INTO "public"."django_migrations" VALUES (480, 'product', '0121_auto_20200810_1415', '2020-11-27 08:04:36.21954+00');
INSERT INTO "public"."django_migrations" VALUES (481, 'product', '0122_auto_20200828_1135', '2020-11-27 08:04:36.406094+00');
INSERT INTO "public"."django_migrations" VALUES (482, 'product', '0123_auto_20200904_1251', '2020-11-27 08:04:36.53125+00');
INSERT INTO "public"."django_migrations" VALUES (483, 'product', '0124_auto_20200909_0904', '2020-11-27 08:04:36.861557+00');
INSERT INTO "public"."django_migrations" VALUES (484, 'product', '0125_auto_20200916_1511', '2020-11-27 08:04:36.936211+00');
INSERT INTO "public"."django_migrations" VALUES (485, 'product', '0126_product_default_variant', '2020-11-27 08:04:37.341913+00');
INSERT INTO "public"."django_migrations" VALUES (486, 'product', '0127_auto_20201001_0933', '2020-11-27 08:04:37.463803+00');
INSERT INTO "public"."django_migrations" VALUES (487, 'product', '0128_update_publication_date', '2020-11-27 08:04:37.668131+00');
INSERT INTO "public"."django_migrations" VALUES (488, 'product', '0129_add_product_types_and_attributes_perm', '2020-11-27 08:04:38.029062+00');
INSERT INTO "public"."django_migrations" VALUES (489, 'shipping', '0018_default_zones_countries', '2020-11-27 08:04:38.1356+00');
INSERT INTO "public"."django_migrations" VALUES (490, 'shipping', '0019_remove_shippingmethod_meta', '2020-11-27 08:04:38.164496+00');
INSERT INTO "public"."django_migrations" VALUES (491, 'shipping', '0020_auto_20200902_1249', '2020-11-27 08:04:38.2525+00');
INSERT INTO "public"."django_migrations" VALUES (492, 'warehouse', '0008_auto_20200430_0239', '2020-11-27 08:04:38.364778+00');
INSERT INTO "public"."django_migrations" VALUES (493, 'warehouse', '0009_remove_invalid_allocation', '2020-11-27 08:04:38.472188+00');
INSERT INTO "public"."django_migrations" VALUES (494, 'warehouse', '0010_auto_20200709_1102', '2020-11-27 08:04:38.510243+00');
INSERT INTO "public"."django_migrations" VALUES (495, 'warehouse', '0011_auto_20200714_0539', '2020-11-27 08:04:38.551419+00');
INSERT INTO "public"."django_migrations" VALUES (496, 'webhook', '0004_mount_app', '2020-11-27 08:04:38.657529+00');
INSERT INTO "public"."django_migrations" VALUES (497, 'webhook', '0005_drop_manage_webhooks_permission', '2020-11-27 08:04:38.988267+00');
INSERT INTO "public"."django_migrations" VALUES (498, 'webhook', '0006_auto_20200731_1440', '2020-11-27 08:04:39.043511+00');
INSERT INTO "public"."django_migrations" VALUES (499, 'wishlist', '0001_initial', '2020-11-27 08:04:39.377602+00');
INSERT INTO "public"."django_migrations" VALUES (500, 'account', '0003_auto_20151104_1102', '2020-11-27 08:04:39.401145+00');
INSERT INTO "public"."django_migrations" VALUES (501, 'account', '0002_auto_20150907_0602', '2020-11-27 08:04:39.403174+00');
INSERT INTO "public"."django_migrations" VALUES (502, 'account', '0009_auto_20170206_0407', '2020-11-27 08:04:39.404902+00');
INSERT INTO "public"."django_migrations" VALUES (503, 'account', '0001_initial', '2020-11-27 08:04:39.406897+00');
INSERT INTO "public"."django_migrations" VALUES (504, 'account', '0016_auto_20180108_0814', '2020-11-27 08:04:39.408815+00');
INSERT INTO "public"."django_migrations" VALUES (505, 'account', '0015_auto_20171213_0734', '2020-11-27 08:04:39.410605+00');
INSERT INTO "public"."django_migrations" VALUES (506, 'account', '0006_auto_20160829_0819', '2020-11-27 08:04:39.412396+00');
INSERT INTO "public"."django_migrations" VALUES (507, 'account', '0010_auto_20170919_0839', '2020-11-27 08:04:39.414154+00');
INSERT INTO "public"."django_migrations" VALUES (508, 'account', '0005_auto_20160205_0651', '2020-11-27 08:04:39.415913+00');
INSERT INTO "public"."django_migrations" VALUES (509, 'account', '0007_auto_20161115_0940', '2020-11-27 08:04:39.417803+00');
INSERT INTO "public"."django_migrations" VALUES (510, 'account', '0004_auto_20160114_0419', '2020-11-27 08:04:39.419865+00');
INSERT INTO "public"."django_migrations" VALUES (511, 'account', '0013_auto_20171120_0521', '2020-11-27 08:04:39.421713+00');
INSERT INTO "public"."django_migrations" VALUES (512, 'account', '0012_auto_20171117_0846', '2020-11-27 08:04:39.423645+00');
INSERT INTO "public"."django_migrations" VALUES (513, 'account', '0014_auto_20171129_1004', '2020-11-27 08:04:39.425529+00');
INSERT INTO "public"."django_migrations" VALUES (514, 'account', '0011_auto_20171110_0552', '2020-11-27 08:04:39.427233+00');
INSERT INTO "public"."django_migrations" VALUES (515, 'account', '0008_auto_20161115_1011', '2020-11-27 08:04:39.429083+00');
INSERT INTO "public"."django_migrations" VALUES (516, 'checkout', '0006_auto_20180221_0825', '2020-11-27 08:04:39.431167+00');
INSERT INTO "public"."django_migrations" VALUES (517, 'checkout', '0002_auto_20170206_0407', '2020-11-27 08:04:39.433427+00');
INSERT INTO "public"."django_migrations" VALUES (518, 'checkout', '0001_initial', '2020-11-27 08:04:39.43577+00');
INSERT INTO "public"."django_migrations" VALUES (519, 'checkout', '0004_auto_20171129_1004', '2020-11-27 08:04:39.438031+00');
INSERT INTO "public"."django_migrations" VALUES (520, 'checkout', '0002_auto_20161014_1221', '2020-11-27 08:04:39.44004+00');
INSERT INTO "public"."django_migrations" VALUES (521, 'checkout', '0005_auto_20180108_0814', '2020-11-27 08:04:39.441745+00');
INSERT INTO "public"."django_migrations" VALUES (522, 'checkout', '0003_auto_20170906_0556', '2020-11-27 08:04:39.443566+00');
INSERT INTO "public"."django_migrations" VALUES (523, 'checkout', '0001_auto_20170113_0435', '2020-11-27 08:04:39.445437+00');
INSERT INTO "public"."django_migrations" VALUES (524, 'checkout', 'fix_empty_data_in_lines', '2020-11-27 08:04:39.447155+00');
COMMIT;

-- ----------------------------
-- Table structure for django_prices_openexchangerates_conversionrate
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_prices_openexchangerates_conversionrate";
CREATE TABLE "public"."django_prices_openexchangerates_conversionrate" (
  "id" int4 NOT NULL DEFAULT nextval('django_prices_openexchangerates_conversionrate_id_seq'::regclass),
  "to_currency" varchar(3) COLLATE "pg_catalog"."default" NOT NULL,
  "rate" numeric(20,12) NOT NULL,
  "modified_at" timestamptz(6) NOT NULL
)
;
ALTER TABLE "public"."django_prices_openexchangerates_conversionrate" OWNER TO "saleor";

-- ----------------------------
-- Records of django_prices_openexchangerates_conversionrate
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for django_prices_vatlayer_ratetypes
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_prices_vatlayer_ratetypes";
CREATE TABLE "public"."django_prices_vatlayer_ratetypes" (
  "id" int4 NOT NULL DEFAULT nextval('django_prices_vatlayer_ratetypes_id_seq'::regclass),
  "types" text COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."django_prices_vatlayer_ratetypes" OWNER TO "saleor";

-- ----------------------------
-- Records of django_prices_vatlayer_ratetypes
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for django_prices_vatlayer_vat
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_prices_vatlayer_vat";
CREATE TABLE "public"."django_prices_vatlayer_vat" (
  "id" int4 NOT NULL DEFAULT nextval('django_prices_vatlayer_vat_id_seq'::regclass),
  "country_code" varchar(2) COLLATE "pg_catalog"."default" NOT NULL,
  "data" text COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."django_prices_vatlayer_vat" OWNER TO "saleor";

-- ----------------------------
-- Records of django_prices_vatlayer_vat
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for django_site
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_site";
CREATE TABLE "public"."django_site" (
  "id" int4 NOT NULL DEFAULT nextval('django_site_id_seq'::regclass),
  "domain" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."django_site" OWNER TO "saleor";

-- ----------------------------
-- Records of django_site
-- ----------------------------
BEGIN;
INSERT INTO "public"."django_site" VALUES (1, 'localhost:8000', 'Saleor e-commerce');
COMMIT;

-- ----------------------------
-- Table structure for giftcard_giftcard
-- ----------------------------
DROP TABLE IF EXISTS "public"."giftcard_giftcard";
CREATE TABLE "public"."giftcard_giftcard" (
  "id" int4 NOT NULL DEFAULT nextval('giftcard_giftcard_id_seq'::regclass),
  "code" varchar(16) COLLATE "pg_catalog"."default" NOT NULL,
  "created" timestamptz(6) NOT NULL,
  "start_date" date NOT NULL,
  "end_date" date,
  "last_used_on" timestamptz(6),
  "is_active" bool NOT NULL,
  "initial_balance_amount" numeric(12,3) NOT NULL,
  "current_balance_amount" numeric(12,3) NOT NULL,
  "user_id" int4,
  "currency" varchar(3) COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."giftcard_giftcard" OWNER TO "saleor";

-- ----------------------------
-- Records of giftcard_giftcard
-- ----------------------------
BEGIN;
INSERT INTO "public"."giftcard_giftcard" VALUES (1, 'Gift_card_10', '2020-11-27 08:05:10.625347+00', '2020-11-27', NULL, NULL, 't', 10.000, 10.000, NULL, 'USD');
COMMIT;

-- ----------------------------
-- Table structure for invoice_invoice
-- ----------------------------
DROP TABLE IF EXISTS "public"."invoice_invoice";
CREATE TABLE "public"."invoice_invoice" (
  "id" int4 NOT NULL DEFAULT nextval('invoice_invoice_id_seq'::regclass),
  "private_metadata" jsonb,
  "metadata" jsonb,
  "status" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) NOT NULL,
  "updated_at" timestamptz(6) NOT NULL,
  "number" varchar(255) COLLATE "pg_catalog"."default",
  "created" timestamptz(6),
  "external_url" varchar(2048) COLLATE "pg_catalog"."default",
  "invoice_file" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "order_id" int4,
  "message" varchar(255) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."invoice_invoice" OWNER TO "saleor";

-- ----------------------------
-- Records of invoice_invoice
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for invoice_invoiceevent
-- ----------------------------
DROP TABLE IF EXISTS "public"."invoice_invoiceevent";
CREATE TABLE "public"."invoice_invoiceevent" (
  "id" int4 NOT NULL DEFAULT nextval('invoice_invoiceevent_id_seq'::regclass),
  "date" timestamptz(6) NOT NULL,
  "type" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "parameters" jsonb NOT NULL,
  "invoice_id" int4,
  "order_id" int4,
  "user_id" int4
)
;
ALTER TABLE "public"."invoice_invoiceevent" OWNER TO "saleor";

-- ----------------------------
-- Records of invoice_invoiceevent
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for menu_menu
-- ----------------------------
DROP TABLE IF EXISTS "public"."menu_menu";
CREATE TABLE "public"."menu_menu" (
  "id" int4 NOT NULL DEFAULT nextval('menu_menu_id_seq'::regclass),
  "name" varchar(250) COLLATE "pg_catalog"."default" NOT NULL,
  "slug" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."menu_menu" OWNER TO "saleor";

-- ----------------------------
-- Records of menu_menu
-- ----------------------------
BEGIN;
INSERT INTO "public"."menu_menu" VALUES (2, 'footer', 'footer');
INSERT INTO "public"."menu_menu" VALUES (1, 'navbar', 'navbar');
COMMIT;

-- ----------------------------
-- Table structure for menu_menuitem
-- ----------------------------
DROP TABLE IF EXISTS "public"."menu_menuitem";
CREATE TABLE "public"."menu_menuitem" (
  "id" int4 NOT NULL DEFAULT nextval('menu_menuitem_id_seq'::regclass),
  "name" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "sort_order" int4,
  "url" varchar(256) COLLATE "pg_catalog"."default",
  "lft" int4 NOT NULL,
  "rght" int4 NOT NULL,
  "tree_id" int4 NOT NULL,
  "level" int4 NOT NULL,
  "category_id" int4,
  "collection_id" int4,
  "menu_id" int4 NOT NULL,
  "page_id" int4,
  "parent_id" int4
)
;
ALTER TABLE "public"."menu_menuitem" OWNER TO "saleor";

-- ----------------------------
-- Records of menu_menuitem
-- ----------------------------
BEGIN;
INSERT INTO "public"."menu_menuitem" VALUES (2, 'Paints', 0, NULL, 2, 3, 1, 1, 20, NULL, 1, NULL, 1);
INSERT INTO "public"."menu_menuitem" VALUES (3, 'Homewares', 1, NULL, 4, 5, 1, 1, 22, NULL, 1, NULL, 1);
INSERT INTO "public"."menu_menuitem" VALUES (1, 'Accessories', 0, NULL, 1, 8, 1, 0, 7, NULL, 1, NULL, NULL);
INSERT INTO "public"."menu_menuitem" VALUES (4, 'Audiobooks', 2, NULL, 6, 7, 1, 1, 23, NULL, 1, NULL, 1);
INSERT INTO "public"."menu_menuitem" VALUES (6, 'Juices', 0, NULL, 2, 3, 2, 1, 14, NULL, 1, NULL, 5);
INSERT INTO "public"."menu_menuitem" VALUES (5, 'Groceries', 3, NULL, 1, 6, 2, 0, 8, NULL, 1, NULL, NULL);
INSERT INTO "public"."menu_menuitem" VALUES (7, 'Alcohol', 1, NULL, 4, 5, 2, 1, 15, NULL, 1, NULL, 5);
INSERT INTO "public"."menu_menuitem" VALUES (9, 'T-shirts', 0, NULL, 2, 3, 3, 1, 10, NULL, 1, NULL, 8);
INSERT INTO "public"."menu_menuitem" VALUES (10, 'Polo Shirts', 1, NULL, 4, 5, 3, 1, 11, NULL, 1, NULL, 8);
INSERT INTO "public"."menu_menuitem" VALUES (11, 'Hoodies', 2, NULL, 6, 7, 3, 1, 12, NULL, 1, NULL, 8);
INSERT INTO "public"."menu_menuitem" VALUES (8, 'Apparel', 4, NULL, 1, 10, 3, 0, 9, NULL, 1, NULL, NULL);
INSERT INTO "public"."menu_menuitem" VALUES (12, 'Footwear', 3, NULL, 8, 9, 3, 1, 13, NULL, 1, NULL, 8);
INSERT INTO "public"."menu_menuitem" VALUES (14, 'Summer collection', 0, NULL, 2, 3, 4, 1, NULL, 1, 2, NULL, 13);
INSERT INTO "public"."menu_menuitem" VALUES (13, 'Collections', 0, NULL, 1, 6, 4, 0, NULL, 2, 2, NULL, NULL);
INSERT INTO "public"."menu_menuitem" VALUES (15, 'Winter sale', 1, NULL, 4, 5, 4, 1, NULL, 2, 2, NULL, 13);
INSERT INTO "public"."menu_menuitem" VALUES (17, 'About', 0, NULL, 2, 3, 5, 1, NULL, NULL, 2, 1, 16);
INSERT INTO "public"."menu_menuitem" VALUES (16, 'Saleor', 2, '/', 1, 6, 5, 0, NULL, NULL, 2, NULL, NULL);
INSERT INTO "public"."menu_menuitem" VALUES (18, 'GraphQL API', 1, 'http://localhost:8000/graphql/', 4, 5, 5, 1, NULL, NULL, 2, NULL, 16);
COMMIT;

-- ----------------------------
-- Table structure for menu_menuitemtranslation
-- ----------------------------
DROP TABLE IF EXISTS "public"."menu_menuitemtranslation";
CREATE TABLE "public"."menu_menuitemtranslation" (
  "id" int4 NOT NULL DEFAULT nextval('menu_menuitemtranslation_id_seq'::regclass),
  "language_code" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "menu_item_id" int4 NOT NULL
)
;
ALTER TABLE "public"."menu_menuitemtranslation" OWNER TO "saleor";

-- ----------------------------
-- Records of menu_menuitemtranslation
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for order_fulfillment
-- ----------------------------
DROP TABLE IF EXISTS "public"."order_fulfillment";
CREATE TABLE "public"."order_fulfillment" (
  "id" int4 NOT NULL DEFAULT nextval('order_fulfillment_id_seq'::regclass),
  "tracking_number" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created" timestamptz(6) NOT NULL,
  "order_id" int4 NOT NULL,
  "fulfillment_order" int4 NOT NULL,
  "status" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "metadata" jsonb,
  "private_metadata" jsonb
)
;
ALTER TABLE "public"."order_fulfillment" OWNER TO "saleor";

-- ----------------------------
-- Records of order_fulfillment
-- ----------------------------
BEGIN;
INSERT INTO "public"."order_fulfillment" VALUES (1, '', '2020-11-27 08:05:10.868229+00', 1, 1, 'fulfilled', '{}', '{}');
INSERT INTO "public"."order_fulfillment" VALUES (2, '', '2020-11-27 08:05:11.101823+00', 3, 1, 'fulfilled', '{}', '{}');
INSERT INTO "public"."order_fulfillment" VALUES (3, '', '2020-11-27 08:05:11.179322+00', 4, 1, 'fulfilled', '{}', '{}');
INSERT INTO "public"."order_fulfillment" VALUES (4, '', '2020-11-27 08:05:11.254373+00', 5, 1, 'fulfilled', '{}', '{}');
INSERT INTO "public"."order_fulfillment" VALUES (5, '', '2020-11-27 08:05:11.425657+00', 7, 1, 'fulfilled', '{}', '{}');
INSERT INTO "public"."order_fulfillment" VALUES (6, '', '2020-11-27 08:05:11.537544+00', 8, 1, 'fulfilled', '{}', '{}');
INSERT INTO "public"."order_fulfillment" VALUES (7, '', '2020-11-27 08:05:11.616888+00', 9, 1, 'fulfilled', '{}', '{}');
INSERT INTO "public"."order_fulfillment" VALUES (8, '', '2020-11-27 08:05:11.70304+00', 10, 1, 'fulfilled', '{}', '{}');
INSERT INTO "public"."order_fulfillment" VALUES (9, '', '2020-11-27 08:05:11.774399+00', 11, 1, 'fulfilled', '{}', '{}');
INSERT INTO "public"."order_fulfillment" VALUES (10, '', '2020-11-27 08:05:11.864101+00', 12, 1, 'fulfilled', '{}', '{}');
INSERT INTO "public"."order_fulfillment" VALUES (11, '', '2020-11-27 08:05:11.937639+00', 13, 1, 'fulfilled', '{}', '{}');
INSERT INTO "public"."order_fulfillment" VALUES (12, '', '2020-11-27 08:05:12.01231+00', 14, 1, 'fulfilled', '{}', '{}');
INSERT INTO "public"."order_fulfillment" VALUES (13, '', '2020-11-27 08:05:12.185826+00', 15, 1, 'fulfilled', '{}', '{}');
INSERT INTO "public"."order_fulfillment" VALUES (14, '', '2020-11-27 08:05:12.278891+00', 16, 1, 'fulfilled', '{}', '{}');
INSERT INTO "public"."order_fulfillment" VALUES (15, '', '2020-11-27 08:05:12.391019+00', 17, 1, 'fulfilled', '{}', '{}');
INSERT INTO "public"."order_fulfillment" VALUES (16, '', '2020-11-27 08:05:12.499186+00', 18, 1, 'fulfilled', '{}', '{}');
INSERT INTO "public"."order_fulfillment" VALUES (17, '', '2020-11-27 08:05:12.56919+00', 19, 1, 'fulfilled', '{}', '{}');
INSERT INTO "public"."order_fulfillment" VALUES (18, '', '2020-11-27 08:05:12.660488+00', 20, 1, 'fulfilled', '{}', '{}');
COMMIT;

-- ----------------------------
-- Table structure for order_fulfillmentline
-- ----------------------------
DROP TABLE IF EXISTS "public"."order_fulfillmentline";
CREATE TABLE "public"."order_fulfillmentline" (
  "id" int4 NOT NULL DEFAULT nextval('order_fulfillmentline_id_seq'::regclass),
  "order_line_id" int4 NOT NULL,
  "quantity" int4 NOT NULL,
  "fulfillment_id" int4 NOT NULL,
  "stock_id" int4
)
;
ALTER TABLE "public"."order_fulfillmentline" OWNER TO "saleor";

-- ----------------------------
-- Records of order_fulfillmentline
-- ----------------------------
BEGIN;
INSERT INTO "public"."order_fulfillmentline" VALUES (1, 1, 2, 1, 644);
INSERT INTO "public"."order_fulfillmentline" VALUES (2, 2, 2, 1, 494);
INSERT INTO "public"."order_fulfillmentline" VALUES (3, 3, 1, 1, 164);
INSERT INTO "public"."order_fulfillmentline" VALUES (4, 10, 2, 2, 523);
INSERT INTO "public"."order_fulfillmentline" VALUES (5, 12, 1, 3, 128);
INSERT INTO "public"."order_fulfillmentline" VALUES (6, 13, 2, 4, 310);
INSERT INTO "public"."order_fulfillmentline" VALUES (7, 16, 1, 5, 113);
INSERT INTO "public"."order_fulfillmentline" VALUES (8, 17, 2, 5, 368);
INSERT INTO "public"."order_fulfillmentline" VALUES (9, 20, 3, 6, 210);
INSERT INTO "public"."order_fulfillmentline" VALUES (10, 22, 2, 6, 430);
INSERT INTO "public"."order_fulfillmentline" VALUES (11, 23, 3, 7, 505);
INSERT INTO "public"."order_fulfillmentline" VALUES (12, 24, 2, 7, 645);
INSERT INTO "public"."order_fulfillmentline" VALUES (13, 25, 1, 8, 116);
INSERT INTO "public"."order_fulfillmentline" VALUES (14, 27, 2, 9, 50);
INSERT INTO "public"."order_fulfillmentline" VALUES (15, 29, 1, 10, 276);
INSERT INTO "public"."order_fulfillmentline" VALUES (16, 31, 2, 11, 519);
INSERT INTO "public"."order_fulfillmentline" VALUES (17, 32, 2, 12, 170);
INSERT INTO "public"."order_fulfillmentline" VALUES (18, 36, 2, 13, 203);
INSERT INTO "public"."order_fulfillmentline" VALUES (19, 37, 2, 14, 273);
INSERT INTO "public"."order_fulfillmentline" VALUES (20, 39, 2, 14, 628);
INSERT INTO "public"."order_fulfillmentline" VALUES (21, 40, 1, 15, 249);
INSERT INTO "public"."order_fulfillmentline" VALUES (22, 41, 3, 15, 319);
INSERT INTO "public"."order_fulfillmentline" VALUES (23, 42, 1, 15, 154);
INSERT INTO "public"."order_fulfillmentline" VALUES (24, 43, 1, 15, 539);
INSERT INTO "public"."order_fulfillmentline" VALUES (25, 45, 1, 16, 243);
INSERT INTO "public"."order_fulfillmentline" VALUES (26, 46, 3, 17, 89);
INSERT INTO "public"."order_fulfillmentline" VALUES (27, 47, 1, 18, 588);
INSERT INTO "public"."order_fulfillmentline" VALUES (28, 48, 2, 18, 153);
COMMIT;

-- ----------------------------
-- Table structure for order_order
-- ----------------------------
DROP TABLE IF EXISTS "public"."order_order";
CREATE TABLE "public"."order_order" (
  "id" int4 NOT NULL DEFAULT nextval('order_order_id_seq'::regclass),
  "created" timestamptz(6) NOT NULL,
  "tracking_client_id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "user_email" varchar(254) COLLATE "pg_catalog"."default" NOT NULL,
  "token" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "billing_address_id" int4,
  "shipping_address_id" int4,
  "user_id" int4,
  "total_net_amount" numeric(12,3) NOT NULL,
  "discount_amount" numeric(12,3) NOT NULL,
  "discount_name" varchar(255) COLLATE "pg_catalog"."default",
  "voucher_id" int4,
  "language_code" varchar(35) COLLATE "pg_catalog"."default" NOT NULL,
  "shipping_price_gross_amount" numeric(12,3) NOT NULL,
  "total_gross_amount" numeric(12,3) NOT NULL,
  "shipping_price_net_amount" numeric(12,3) NOT NULL,
  "status" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "shipping_method_name" varchar(255) COLLATE "pg_catalog"."default",
  "shipping_method_id" int4,
  "display_gross_prices" bool NOT NULL,
  "translated_discount_name" varchar(255) COLLATE "pg_catalog"."default",
  "customer_note" text COLLATE "pg_catalog"."default" NOT NULL,
  "weight" float8 NOT NULL,
  "checkout_token" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "currency" varchar(3) COLLATE "pg_catalog"."default" NOT NULL,
  "metadata" jsonb,
  "private_metadata" jsonb
)
;
ALTER TABLE "public"."order_order" OWNER TO "saleor";

-- ----------------------------
-- Records of order_order
-- ----------------------------
BEGIN;
INSERT INTO "public"."order_order" VALUES (13, '2020-11-27 08:05:11.879574+00', '', '', '969fafb5-f5d3-42c0-8663-dcd458d76f48', 13, 13, 8, 28.830, 0.000, NULL, NULL, 'en', 23.830, 28.830, 23.830, 'fulfilled', 'FedEx', 14, 't', NULL, '', 1000, '', 'USD', '{}', '{}');
INSERT INTO "public"."order_order" VALUES (1, '2020-11-27 08:05:10.774531+00', '', '', 'd05189ac-4645-44f0-bbe5-5e8b64086125', 13, 13, 8, 76.800, 0.000, NULL, NULL, 'en', 23.830, 76.800, 23.830, 'partially fulfilled', 'FedEx', 14, 't', NULL, '', 2000, '', 'USD', '{}', '{}');
INSERT INTO "public"."order_order" VALUES (2, '2020-11-27 08:05:10.897358+00', '', '', '418544ab-4867-46ee-9e68-19775ba4790f', 24, 24, 19, 157.810, 0.000, NULL, NULL, 'en', 52.810, 157.810, 52.810, 'unfulfilled', 'UPS', 13, 't', NULL, '', 5500, '', 'USD', '{}', '{}');
INSERT INTO "public"."order_order" VALUES (3, '2020-11-27 08:05:10.992898+00', '', '', '0fb9217a-682e-43fa-9455-16b292ef2fd9', 22, 22, 17, 80.150, 0.000, NULL, NULL, 'en', 34.150, 80.150, 34.150, 'partially fulfilled', 'Aramex', 10, 't', NULL, '', 4000, '', 'USD', '{}', '{}');
INSERT INTO "public"."order_order" VALUES (4, '2020-11-27 08:05:11.1204+00', '', 'nancy.johnson@example.com', 'acb02f34-e1cd-4b4c-a5a8-a6e4de282dc7', 26, 26, NULL, 72.940, 0.000, NULL, NULL, 'en', 57.940, 72.940, 57.940, 'partially fulfilled', 'EMS', 11, 't', NULL, '', 500, '', 'USD', '{}', '{}');
INSERT INTO "public"."order_order" VALUES (14, '2020-11-27 08:05:11.953038+00', '', '', '8cd88e25-8ad7-40f8-86b7-94f1c93a5099', 13, 13, 8, 10.510, 0.000, NULL, NULL, 'en', 2.510, 10.510, 2.510, 'fulfilled', 'Royale International', 16, 't', NULL, '', 1000, '', 'USD', '{}', '{}');
INSERT INTO "public"."order_order" VALUES (5, '2020-11-27 08:05:11.195578+00', '', 'robert.johns@example.com', '3aebdf3f-6d0a-4633-8f8a-76e88903ce4e', 27, 27, NULL, 103.840, 0.000, NULL, NULL, 'en', 88.840, 103.840, 88.840, 'partially fulfilled', 'Post Office', 19, 't', NULL, '', 1000, '', 'USD', '{}', '{}');
INSERT INTO "public"."order_order" VALUES (6, '2020-11-27 08:05:11.270341+00', '', 'samantha.johnson@example.com', 'c3de0186-2d6a-45d1-bedd-b289a091d109', 28, 28, NULL, 46.330, 0.000, NULL, NULL, 'en', 22.830, 46.330, 22.830, 'unfulfilled', 'DB Schenker', 4, 't', NULL, '', 3000, '', 'USD', '{}', '{}');
INSERT INTO "public"."order_order" VALUES (7, '2020-11-27 08:05:11.336695+00', '', '', '0622e31b-b576-474b-a635-1ac965a2c040', 13, 13, 8, 69.150, 0.000, NULL, NULL, 'en', 34.150, 69.150, 34.150, 'partially fulfilled', 'Aramex', 10, 't', NULL, '', 2500, '', 'USD', '{}', '{}');
INSERT INTO "public"."order_order" VALUES (8, '2020-11-27 08:05:11.447436+00', '', 'lauren.oconnell@example.com', '28298ef1-3722-4d76-867b-1292438105a2', 29, 29, NULL, 127.840, 0.000, NULL, NULL, 'en', 88.840, 127.840, 88.840, 'partially fulfilled', 'Post Office', 19, 't', NULL, '', 4000, '', 'USD', '{}', '{}');
INSERT INTO "public"."order_order" VALUES (15, '2020-11-27 08:05:12.042904+00', '', 'maria.schwartz@example.com', 'caa5951e-d864-4b28-abb9-fa2f955e02dd', 34, 34, NULL, 91.200, 0.000, NULL, NULL, 'en', 44.700, 91.200, 44.700, 'partially fulfilled', 'China Post', 8, 't', NULL, '', 4500, '', 'USD', '{}', '{}');
INSERT INTO "public"."order_order" VALUES (9, '2020-11-27 08:05:11.55939+00', '', 'nicole.schneider@example.com', '36d011c0-1165-432d-a113-e7aaaa7039a7', 30, 30, NULL, 78.620, 0.000, NULL, NULL, 'en', 31.160, 78.620, 31.160, 'partially fulfilled', 'ACE', 17, 't', NULL, '', 1000, '', 'USD', '{}', '{}');
INSERT INTO "public"."order_order" VALUES (10, '2020-11-27 08:05:11.638496+00', '', 'jason.warner@example.com', 'a959dc0d-3f57-4848-be63-342915a28452', 31, 31, NULL, 86.510, 0.000, NULL, NULL, 'en', 52.610, 86.510, 52.610, 'partially fulfilled', 'FBA', 5, 't', NULL, '', 2500, '', 'USD', '{}', '{}');
INSERT INTO "public"."order_order" VALUES (11, '2020-11-27 08:05:11.7182+00', '', 'david.harris@example.com', 'a275ae81-f741-4592-b862-d04694891b96', 32, 32, NULL, 106.160, 0.000, NULL, NULL, 'en', 31.160, 106.160, 31.160, 'partially fulfilled', 'ACE', 17, 't', NULL, '', 2000, '', 'USD', '{}', '{}');
INSERT INTO "public"."order_order" VALUES (16, '2020-11-27 08:05:12.201177+00', '', 'michelle.bradley@example.com', 'cdd97b78-a3bc-4139-80d2-a372f2535b11', 35, 35, NULL, 135.690, 0.000, NULL, NULL, 'en', 83.690, 135.690, 83.690, 'partially fulfilled', 'TNT', 9, 't', NULL, '', 2000, '', 'USD', '{}', '{}');
INSERT INTO "public"."order_order" VALUES (12, '2020-11-27 08:05:11.791648+00', '', 'kathryn.smith@example.com', '2d8901ac-2111-4484-8f3c-5cbfaa85b0ea', 33, 33, NULL, 77.610, 0.000, NULL, NULL, 'en', 52.610, 77.610, 52.610, 'partially fulfilled', 'FBA', 5, 't', NULL, '', 2000, '', 'USD', '{}', '{}');
INSERT INTO "public"."order_order" VALUES (17, '2020-11-27 08:05:12.300742+00', '', 'cheryl.garner@example.com', '7dba0b0c-d2e6-4ab4-aa1b-29fe0b782e77', 36, 36, NULL, 82.710, 0.000, NULL, NULL, 'en', 52.810, 82.710, 52.810, 'fulfilled', 'UPS', 13, 't', NULL, '', 5000, '', 'USD', '{}', '{}');
INSERT INTO "public"."order_order" VALUES (18, '2020-11-27 08:05:12.42499+00', '', '', 'b24c5df8-95bd-4c1b-aa68-1cf95216ee01', 15, 15, 10, 52.650, 0.000, NULL, NULL, 'en', 34.150, 52.650, 34.150, 'partially fulfilled', 'Aramex', 10, 't', NULL, '', 2000, '', 'USD', '{}', '{}');
INSERT INTO "public"."order_order" VALUES (19, '2020-11-27 08:05:12.515097+00', '', 'kenneth.gallagher@example.com', 'bcf776de-aeb9-404d-955d-aca0cd2cb9a2', 37, 37, NULL, 66.810, 0.000, NULL, NULL, 'en', 52.810, 66.810, 52.810, 'partially fulfilled', 'UPS', 13, 't', NULL, '', 2000, '', 'USD', '{}', '{}');
INSERT INTO "public"."order_order" VALUES (20, '2020-11-27 08:05:12.584514+00', '', '', '07e50d06-5ca4-4a60-a6f6-bbc20a3e475f', 11, 11, 6, 97.940, 0.000, NULL, NULL, 'en', 57.940, 97.940, 57.940, 'partially fulfilled', 'EMS', 11, 't', NULL, '', 3000, '', 'USD', '{}', '{}');
COMMIT;

-- ----------------------------
-- Table structure for order_order_gift_cards
-- ----------------------------
DROP TABLE IF EXISTS "public"."order_order_gift_cards";
CREATE TABLE "public"."order_order_gift_cards" (
  "id" int4 NOT NULL DEFAULT nextval('order_order_gift_cards_id_seq'::regclass),
  "order_id" int4 NOT NULL,
  "giftcard_id" int4 NOT NULL
)
;
ALTER TABLE "public"."order_order_gift_cards" OWNER TO "saleor";

-- ----------------------------
-- Records of order_order_gift_cards
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for order_orderevent
-- ----------------------------
DROP TABLE IF EXISTS "public"."order_orderevent";
CREATE TABLE "public"."order_orderevent" (
  "id" int4 NOT NULL DEFAULT nextval('order_orderevent_id_seq'::regclass),
  "date" timestamptz(6) NOT NULL,
  "type" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "order_id" int4 NOT NULL,
  "user_id" int4,
  "parameters" jsonb NOT NULL
)
;
ALTER TABLE "public"."order_orderevent" OWNER TO "saleor";

-- ----------------------------
-- Records of order_orderevent
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for order_orderline
-- ----------------------------
DROP TABLE IF EXISTS "public"."order_orderline";
CREATE TABLE "public"."order_orderline" (
  "id" int4 NOT NULL DEFAULT nextval('order_ordereditem_id_seq'::regclass),
  "product_name" varchar(386) COLLATE "pg_catalog"."default" NOT NULL,
  "product_sku" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "quantity" int4 NOT NULL,
  "unit_price_net_amount" numeric(12,3) NOT NULL,
  "unit_price_gross_amount" numeric(12,3) NOT NULL,
  "is_shipping_required" bool NOT NULL,
  "order_id" int4 NOT NULL,
  "quantity_fulfilled" int4 NOT NULL,
  "variant_id" int4,
  "tax_rate" numeric(5,2) NOT NULL,
  "translated_product_name" varchar(386) COLLATE "pg_catalog"."default" NOT NULL,
  "currency" varchar(3) COLLATE "pg_catalog"."default" NOT NULL,
  "translated_variant_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "variant_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."order_orderline" OWNER TO "saleor";

-- ----------------------------
-- Records of order_orderline
-- ----------------------------
BEGIN;
INSERT INTO "public"."order_orderline" VALUES (40, 'Bean Juice', '21438542', 1, 4.900, 4.900, 't', 17, 1, 225, 0.00, '', 'USD', '', '2l');
INSERT INTO "public"."order_orderline" VALUES (1, 'Lagoon Chants', 'lagoon-chants-mp3', 3, 9.990, 9.990, 'f', 1, 2, 320, 0.00, '', 'USD', '', 'MP3');
INSERT INTO "public"."order_orderline" VALUES (2, 'T-shirt', '98653891', 3, 5.000, 5.000, 't', 1, 2, 290, 0.00, '', 'USD', '', 'XXL');
INSERT INTO "public"."order_orderline" VALUES (3, 'Banana Juice', '45328412', 2, 4.000, 4.000, 't', 1, 1, 208, 0.00, '', 'USD', '', '500ml');
INSERT INTO "public"."order_orderline" VALUES (4, 'T-shirt', '72289815', 1, 5.000, 5.000, 't', 2, 0, 289, 0.00, '', 'USD', '', 'XL');
INSERT INTO "public"."order_orderline" VALUES (5, 'Hyperspace Turquoise Paint', '998423583', 2, 30.000, 30.000, 't', 2, 0, 184, 0.00, '', 'USD', '', '2.5l');
INSERT INTO "public"."order_orderline" VALUES (6, 'Black Hoodie', '61630747', 4, 5.000, 5.000, 't', 2, 0, 300, 0.00, '', 'USD', '', 'XXL');
INSERT INTO "public"."order_orderline" VALUES (7, 'Seaman Lager', '98616712', 4, 5.000, 5.000, 't', 2, 0, 195, 0.00, '', 'USD', '', '98616712');
INSERT INTO "public"."order_orderline" VALUES (8, 'Polo Shirt', '90892602', 1, 2.500, 2.500, 't', 3, 0, 262, 0.00, '', 'USD', '', 'M');
INSERT INTO "public"."order_orderline" VALUES (9, 'Polo Shirt', '36260498', 1, 3.500, 3.500, 't', 3, 0, 267, 0.00, '', 'USD', '', 'M');
INSERT INTO "public"."order_orderline" VALUES (28, 'Seaman Lager', '98616712', 3, 5.000, 5.000, 't', 11, 0, 195, 0.00, '', 'USD', '', '98616712');
INSERT INTO "public"."order_orderline" VALUES (11, 'Mustard Hoodie', '33963052', 4, 5.000, 5.000, 't', 3, 0, 306, 0.00, '', 'USD', '', 'S');
INSERT INTO "public"."order_orderline" VALUES (10, 'Black Hoodie', '62783187', 4, 5.000, 5.000, 't', 3, 2, 296, 0.00, '', 'USD', '', 'S');
INSERT INTO "public"."order_orderline" VALUES (27, 'Light Speed Yellow Paint', '998323582', 4, 15.000, 15.000, 't', 11, 2, 180, 0.00, '', 'USD', '', '1l');
INSERT INTO "public"."order_orderline" VALUES (12, 'White Parrot Cushion', '998223590', 3, 5.000, 5.000, 't', 4, 1, 200, 0.00, '', 'USD', '', '55cm x 55cm');
INSERT INTO "public"."order_orderline" VALUES (13, 'Code Division T-shirt', '118223591', 3, 5.000, 5.000, 't', 5, 2, 253, 0.00, '', 'USD', '', 'L');
INSERT INTO "public"."order_orderline" VALUES (14, 'Code Division T-shirt', '3128223583', 4, 5.000, 5.000, 't', 6, 0, 255, 0.00, '', 'USD', '', 'XXL');
INSERT INTO "public"."order_orderline" VALUES (15, 'Power Juice', '80696397', 1, 3.500, 3.500, 't', 6, 0, 219, 0.00, '', 'USD', '', '2l');
INSERT INTO "public"."order_orderline" VALUES (41, 'Code Division T-shirt', '3128223583', 3, 5.000, 5.000, 't', 17, 3, 255, 0.00, '', 'USD', '', 'XXL');
INSERT INTO "public"."order_orderline" VALUES (18, 'Code Division T-shirt', '338223582', 2, 5.000, 5.000, 't', 7, 0, 252, 0.00, '', 'USD', '', 'M');
INSERT INTO "public"."order_orderline" VALUES (16, 'Colored Parrot Cushion', '698223582', 1, 20.000, 20.000, 't', 7, 1, 197, 0.00, '', 'USD', '', '45cm x 45cm');
INSERT INTO "public"."order_orderline" VALUES (17, 'Polo Shirt', '60597697', 2, 2.500, 2.500, 't', 7, 2, 265, 0.00, '', 'USD', '', 'XXL');
INSERT INTO "public"."order_orderline" VALUES (19, 'Bean Juice', '57211177', 4, 3.500, 3.500, 't', 8, 0, 223, 0.00, '', 'USD', '', '500ml');
INSERT INTO "public"."order_orderline" VALUES (30, 'Mustard Hoodie', '73186143', 4, 5.000, 5.000, 't', 12, 0, 309, 0.00, '', 'USD', '', 'XL');
INSERT INTO "public"."order_orderline" VALUES (21, 'Blue Hoodie', '21599567', 1, 5.000, 5.000, 't', 8, 0, 302, 0.00, '', 'USD', '', 'M');
INSERT INTO "public"."order_orderline" VALUES (29, 'White Plimsolls', '993223583', 1, 5.000, 5.000, 't', 12, 1, 247, 0.00, '', 'USD', '', '40');
INSERT INTO "public"."order_orderline" VALUES (20, 'Power Juice', '70058446', 4, 2.500, 2.500, 't', 8, 3, 217, 0.00, '', 'USD', '', '500ml');
INSERT INTO "public"."order_orderline" VALUES (22, 'T-shirt', '38254631', 2, 5.000, 5.000, 't', 8, 2, 277, 0.00, '', 'USD', '', 'M');
INSERT INTO "public"."order_orderline" VALUES (42, 'Carrot Juice', '14925419', 1, 5.000, 5.000, 't', 17, 1, 206, 0.00, '', 'USD', '', '1l');
INSERT INTO "public"."order_orderline" VALUES (23, 'T-shirt', '68848129', 3, 2.500, 2.500, 't', 9, 3, 292, 0.00, '', 'USD', '', 'M');
INSERT INTO "public"."order_orderline" VALUES (24, 'Lagoon Chants', 'lagoon-chants-mp3', 4, 9.990, 9.990, 'f', 9, 2, 320, 0.00, '', 'USD', '', 'MP3');
INSERT INTO "public"."order_orderline" VALUES (31, 'T-shirt', '45179543', 2, 2.500, 2.500, 't', 13, 2, 295, 0.00, '', 'USD', '', 'XXL');
INSERT INTO "public"."order_orderline" VALUES (26, 'Green Juice', '30635751', 3, 6.300, 6.300, 't', 10, 0, 222, 0.00, '', 'USD', '', '2l');
INSERT INTO "public"."order_orderline" VALUES (25, 'Colored Parrot Cushion', '698223581', 3, 5.000, 5.000, 't', 10, 1, 198, 0.00, '', 'USD', '', '55cm x 55cm');
INSERT INTO "public"."order_orderline" VALUES (43, 'Black Hoodie', '19230637', 1, 5.000, 5.000, 't', 17, 1, 299, 0.00, '', 'USD', '', 'XL');
INSERT INTO "public"."order_orderline" VALUES (32, 'Banana Juice', '27512590', 2, 4.000, 4.000, 't', 14, 2, 209, 0.00, '', 'USD', '', '1l');
INSERT INTO "public"."order_orderline" VALUES (33, 'Orange Juice', '938323582', 3, 2.500, 2.500, 't', 15, 0, 191, 0.00, '', 'USD', '', '1l');
INSERT INTO "public"."order_orderline" VALUES (34, 'Polo Shirt', '71103052', 1, 5.000, 5.000, 't', 15, 0, 273, 0.00, '', 'USD', '', 'L');
INSERT INTO "public"."order_orderline" VALUES (35, 'White Parrot Cushion', '998223590', 4, 5.000, 5.000, 't', 15, 0, 200, 0.00, '', 'USD', '', '55cm x 55cm');
INSERT INTO "public"."order_orderline" VALUES (36, 'Coconut Juice', '84725784', 2, 7.000, 7.000, 't', 15, 2, 216, 0.00, '', 'USD', '', '2l');
INSERT INTO "public"."order_orderline" VALUES (38, 'White Plimsolls', '993223583', 3, 5.000, 5.000, 't', 16, 0, 247, 0.00, '', 'USD', '', '40');
INSERT INTO "public"."order_orderline" VALUES (44, 'Hyperspace Turquoise Paint', '998423582', 1, 15.000, 15.000, 't', 18, 0, 183, 0.00, '', 'USD', '', '1l');
INSERT INTO "public"."order_orderline" VALUES (37, 'Yellow Plimsolls', '398323588', 2, 5.000, 5.000, 't', 16, 2, 246, 0.00, '', 'USD', '', '43');
INSERT INTO "public"."order_orderline" VALUES (39, 'Lake Tunes', 'lake-tunes-mp3', 3, 9.000, 9.000, 'f', 16, 2, 317, 0.00, '', 'USD', '', 'MP3');
INSERT INTO "public"."order_orderline" VALUES (45, 'Bean Juice', '57423879', 1, 3.500, 3.500, 't', 18, 1, 224, 0.00, '', 'USD', '', '1l');
INSERT INTO "public"."order_orderline" VALUES (46, 'Orange Juice', '988323522', 4, 3.500, 3.500, 't', 19, 3, 192, 0.00, '', 'USD', '', '2l');
INSERT INTO "public"."order_orderline" VALUES (49, 'Polo Shirt', '46806935', 3, 5.000, 5.000, 't', 20, 0, 272, 0.00, '', 'USD', '', 'M');
INSERT INTO "public"."order_orderline" VALUES (47, 'Mustard Hoodie', '73186143', 3, 5.000, 5.000, 't', 20, 1, 309, 0.00, '', 'USD', '', 'XL');
INSERT INTO "public"."order_orderline" VALUES (48, 'Carrot Juice', '14925419', 2, 5.000, 5.000, 't', 20, 2, 206, 0.00, '', 'USD', '', '1l');
COMMIT;

-- ----------------------------
-- Table structure for page_page
-- ----------------------------
DROP TABLE IF EXISTS "public"."page_page";
CREATE TABLE "public"."page_page" (
  "id" int4 NOT NULL DEFAULT nextval('page_page_id_seq'::regclass),
  "slug" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "title" varchar(250) COLLATE "pg_catalog"."default" NOT NULL,
  "content" text COLLATE "pg_catalog"."default" NOT NULL,
  "created" timestamptz(6) NOT NULL,
  "is_published" bool NOT NULL,
  "publication_date" date,
  "seo_description" varchar(300) COLLATE "pg_catalog"."default",
  "seo_title" varchar(70) COLLATE "pg_catalog"."default",
  "content_json" jsonb NOT NULL,
  "metadata" jsonb,
  "private_metadata" jsonb
)
;
ALTER TABLE "public"."page_page" OWNER TO "saleor";

-- ----------------------------
-- Records of page_page
-- ----------------------------
BEGIN;
INSERT INTO "public"."page_page" VALUES (1, 'about', 'About', '
    <h2>E-commerce for the PWA era</h2>
    <h3>A modular, high performance e-commerce storefront built with GraphQL,
        Django, and ReactJS.</h3>
    <p>Saleor is a rapidly-growing open source e-commerce platform that has served
       high-volume companies from branches like publishing and apparel since 2012.
       Based on Python and Django, the latest major update introduces a modular
       front end with a GraphQL API and storefront and dashboard written in React
       to make Saleor a full-functionality open source e-commerce.</p>
    <p><a href="https://github.com/mirumee/saleor">Get Saleor today!</a></p>
    ', '2020-11-27 08:05:12.684218+00', 't', NULL, NULL, NULL, '{"blocks": [{"key": "", "data": {}, "text": "E-commerce for the PWA era", "type": "header-two", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}, {"key": "", "data": {}, "text": "A modular, high performance e-commerce storefront built with GraphQL, Django, and ReactJS.", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}, {"key": "", "data": {}, "text": "", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}, {"key": "", "data": {}, "text": "Saleor is a rapidly-growing open source e-commerce platform that has served high-volume companies from branches like publishing and apparel since 2012. Based on Python and Django, the latest major update introduces a modular front end with a GraphQL API and storefront and dashboard written in React to make Saleor a full-functionality open source e-commerce.", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}, {"key": "", "data": {}, "text": "", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}, {"key": "", "data": {}, "text": "Get Saleor today!", "type": "unstyled", "depth": 0, "entityRanges": [{"key": 0, "length": 17, "offset": 0}], "inlineStyleRanges": []}], "entityMap": {"0": {"data": {"url": "https://github.com/mirumee/saleor"}, "type": "LINK", "mutability": "MUTABLE"}}}', '{}', '{}');
COMMIT;

-- ----------------------------
-- Table structure for page_pagetranslation
-- ----------------------------
DROP TABLE IF EXISTS "public"."page_pagetranslation";
CREATE TABLE "public"."page_pagetranslation" (
  "id" int4 NOT NULL DEFAULT nextval('page_pagetranslation_id_seq'::regclass),
  "seo_title" varchar(70) COLLATE "pg_catalog"."default",
  "seo_description" varchar(300) COLLATE "pg_catalog"."default",
  "language_code" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "title" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "content" text COLLATE "pg_catalog"."default" NOT NULL,
  "page_id" int4 NOT NULL,
  "content_json" jsonb NOT NULL
)
;
ALTER TABLE "public"."page_pagetranslation" OWNER TO "saleor";

-- ----------------------------
-- Records of page_pagetranslation
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for payment_payment
-- ----------------------------
DROP TABLE IF EXISTS "public"."payment_payment";
CREATE TABLE "public"."payment_payment" (
  "id" int4 NOT NULL DEFAULT nextval('payment_paymentmethod_id_seq'::regclass),
  "gateway" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "is_active" bool NOT NULL,
  "created" timestamptz(6) NOT NULL,
  "modified" timestamptz(6) NOT NULL,
  "charge_status" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "billing_first_name" varchar(256) COLLATE "pg_catalog"."default" NOT NULL,
  "billing_last_name" varchar(256) COLLATE "pg_catalog"."default" NOT NULL,
  "billing_company_name" varchar(256) COLLATE "pg_catalog"."default" NOT NULL,
  "billing_address_1" varchar(256) COLLATE "pg_catalog"."default" NOT NULL,
  "billing_address_2" varchar(256) COLLATE "pg_catalog"."default" NOT NULL,
  "billing_city" varchar(256) COLLATE "pg_catalog"."default" NOT NULL,
  "billing_city_area" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "billing_postal_code" varchar(256) COLLATE "pg_catalog"."default" NOT NULL,
  "billing_country_code" varchar(2) COLLATE "pg_catalog"."default" NOT NULL,
  "billing_country_area" varchar(256) COLLATE "pg_catalog"."default" NOT NULL,
  "billing_email" varchar(254) COLLATE "pg_catalog"."default" NOT NULL,
  "customer_ip_address" inet,
  "cc_brand" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
  "cc_exp_month" int4,
  "cc_exp_year" int4,
  "cc_first_digits" varchar(6) COLLATE "pg_catalog"."default" NOT NULL,
  "cc_last_digits" varchar(4) COLLATE "pg_catalog"."default" NOT NULL,
  "extra_data" text COLLATE "pg_catalog"."default" NOT NULL,
  "token" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "currency" varchar(3) COLLATE "pg_catalog"."default" NOT NULL,
  "total" numeric(12,3) NOT NULL,
  "captured_amount" numeric(12,3) NOT NULL,
  "checkout_id" uuid,
  "order_id" int4,
  "to_confirm" bool NOT NULL,
  "payment_method_type" varchar(256) COLLATE "pg_catalog"."default" NOT NULL,
  "return_url" varchar(200) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."payment_payment" OWNER TO "saleor";

-- ----------------------------
-- Records of payment_payment
-- ----------------------------
BEGIN;
INSERT INTO "public"."payment_payment" VALUES (1, 'mirumee.payments.dummy', 't', '2020-11-27 08:05:10.852366+00', '2020-11-27 08:05:10.852382+00', 'not-charged', 'Joseph', 'Austin', '', '060 Chan Crossing', '', 'Mcleanstad', '', '08183', 'US', 'NJ', '', '148.89.227.190', 'dummy_visa', 12, 2222, '', '1234', '{}', '03b5aff0-7e13-4a19-b32a-71e38d691fcc', 'USD', 76.800, 0.000, NULL, 1, 'f', 'card', NULL);
INSERT INTO "public"."payment_payment" VALUES (2, 'mirumee.payments.dummy', 'f', '2020-11-27 08:05:10.960374+00', '2020-11-27 08:05:10.980478+00', 'not-charged', 'Michele', 'Brady', '', '39477 Floyd Oval Apt. 402', '', 'Gonzalesville', '', '36182', 'US', 'AL', '', '10.58.154.219', 'dummy_visa', 12, 2222, '', '1234', '{}', 'f86e7e16-e071-4061-8dd9-770d28df7e27', 'USD', 157.810, 0.000, NULL, 2, 'f', 'card', NULL);
INSERT INTO "public"."payment_payment" VALUES (9, 'mirumee.payments.dummy', 't', '2020-11-27 08:05:11.601787+00', '2020-11-27 08:05:11.601803+00', 'not-charged', 'Nicole', 'Schneider', '', '1979 Mcneil Lakes Apt. 903', '', 'Rogershaven', '', '54940', 'US', 'WI', 'nicole.schneider@example.com', '94.148.133.148', 'dummy_visa', 12, 2222, '', '1234', '{}', '90f62f25-4830-40e4-8ede-d12397ec22b8', 'USD', 78.620, 0.000, NULL, 9, 'f', 'card', NULL);
INSERT INTO "public"."payment_payment" VALUES (3, 'mirumee.payments.dummy', 'f', '2020-11-27 08:05:11.064729+00', '2020-11-27 08:05:11.096022+00', 'fully-refunded', 'Gary', 'Rodriguez', '', '78162 Johnson Trace', '', 'West Davidfort', '', '68101', 'US', 'NE', '', '214.7.19.43', 'dummy_visa', 12, 2222, '', '1234', '{}', 'a7dce10f-5747-42cd-80ac-76a2cc5674cc', 'USD', 80.150, 0.000, NULL, 3, 'f', 'card', NULL);
INSERT INTO "public"."payment_payment" VALUES (10, 'mirumee.payments.dummy', 'f', '2020-11-27 08:05:11.677761+00', '2020-11-27 08:05:11.697298+00', 'not-charged', 'Jason', 'Warner', '', '779 Davis Mall', '', 'Lake Michellemouth', '', '61451', 'US', 'IL', 'jason.warner@example.com', '128.233.85.174', 'dummy_visa', 12, 2222, '', '1234', '{}', '364606f3-16a8-4907-a059-ae26a819c129', 'USD', 86.510, 0.000, NULL, 10, 'f', 'card', NULL);
INSERT INTO "public"."payment_payment" VALUES (4, 'mirumee.payments.dummy', 'f', '2020-11-27 08:05:11.150036+00', '2020-11-27 08:05:11.172511+00', 'not-charged', 'Nancy', 'Johnson', '', '019 Kyle Fords', '', 'New Ashley', '', '41258', 'US', 'KY', 'nancy.johnson@example.com', '166.231.129.138', 'dummy_visa', 12, 2222, '', '1234', '{}', '0b4d2511-8edc-4763-8f72-f82d975f788c', 'USD', 72.940, 0.000, NULL, 4, 'f', 'card', NULL);
INSERT INTO "public"."payment_payment" VALUES (11, 'mirumee.payments.dummy', 't', '2020-11-27 08:05:11.758434+00', '2020-11-27 08:05:11.758447+00', 'not-charged', 'David', 'Harris', '', '281 Christina Walks Suite 473', '', 'East Jillian', '', '68053', 'US', 'NE', 'david.harris@example.com', '120.144.253.45', 'dummy_visa', 12, 2222, '', '1234', '{}', 'e1c36d5a-651e-4068-80a2-0005f3dae454', 'USD', 106.160, 0.000, NULL, 11, 'f', 'card', NULL);
INSERT INTO "public"."payment_payment" VALUES (5, 'mirumee.payments.dummy', 't', '2020-11-27 08:05:11.225646+00', '2020-11-27 08:05:11.247701+00', 'fully-charged', 'Robert', 'Johns', '', '826 Kennedy Overpass', '', 'Lake Laurastad', '', '28180', 'US', 'NC', 'robert.johns@example.com', '183.154.220.10', 'dummy_visa', 12, 2222, '', '1234', '{}', '140a6cfa-eb0c-4b83-8fca-878835def70b', 'USD', 103.840, 103.840, NULL, 5, 'f', 'card', NULL);
INSERT INTO "public"."payment_payment" VALUES (6, 'mirumee.payments.dummy', 't', '2020-11-27 08:05:11.314978+00', '2020-11-27 08:05:11.314993+00', 'not-charged', 'Samantha', 'Johnson', '', '26086 Turner Walk Suite 545', '', 'Evansmouth', '', '38964', 'US', 'MS', 'samantha.johnson@example.com', '13.52.41.10', 'dummy_visa', 12, 2222, '', '1234', '{}', '6e81e7af-dff6-404c-aff6-7bd7bcca1f7c', 'USD', 46.330, 0.000, NULL, 6, 'f', 'card', NULL);
INSERT INTO "public"."payment_payment" VALUES (14, 'mirumee.payments.dummy', 't', '2020-11-27 08:05:11.980659+00', '2020-11-27 08:05:12.003759+00', 'fully-charged', 'Joseph', 'Austin', '', '060 Chan Crossing', '', 'Mcleanstad', '', '08183', 'US', 'NJ', '', '83.228.24.70', 'dummy_visa', 12, 2222, '', '1234', '{}', '10c6f391-2e6b-4d7f-af8e-900919650778', 'USD', 10.510, 10.510, NULL, 14, 'f', 'card', NULL);
INSERT INTO "public"."payment_payment" VALUES (7, 'mirumee.payments.dummy', 'f', '2020-11-27 08:05:11.388746+00', '2020-11-27 08:05:11.419221+00', 'fully-refunded', 'Joseph', 'Austin', '', '060 Chan Crossing', '', 'Mcleanstad', '', '08183', 'US', 'NJ', '', '159.17.100.180', 'dummy_visa', 12, 2222, '', '1234', '{}', '1e9f7a2d-65be-47ea-bed4-c70f5370f73d', 'USD', 69.150, 0.000, NULL, 7, 'f', 'card', NULL);
INSERT INTO "public"."payment_payment" VALUES (17, 'mirumee.payments.dummy', 't', '2020-11-27 08:05:12.365686+00', '2020-11-27 08:05:12.38504+00', 'fully-charged', 'Cheryl', 'Garner', '', '622 Washington Valley', '', 'South Meredith', '', '83661', 'US', 'ID', 'cheryl.garner@example.com', '61.115.235.187', 'dummy_visa', 12, 2222, '', '1234', '{}', '72eacfad-5d30-4bb0-9867-cd14a5b61b30', 'USD', 82.710, 82.710, NULL, 17, 'f', 'card', NULL);
INSERT INTO "public"."payment_payment" VALUES (8, 'mirumee.payments.dummy', 't', '2020-11-27 08:05:11.510667+00', '2020-11-27 08:05:11.531352+00', 'fully-charged', 'Lauren', 'Oconnell', '', '3207 Patel Key', '', 'West David', '', '67483', 'US', 'KS', 'lauren.oconnell@example.com', '102.35.50.91', 'dummy_visa', 12, 2222, '', '1234', '{}', '456b167b-a421-49a3-af33-eac19e334255', 'USD', 127.840, 127.840, NULL, 8, 'f', 'card', NULL);
INSERT INTO "public"."payment_payment" VALUES (12, 'mirumee.payments.dummy', 't', '2020-11-27 08:05:11.835666+00', '2020-11-27 08:05:11.858318+00', 'fully-charged', 'Kathryn', 'Smith', '', '6086 Lutz Vista', '', 'Gillview', '', '57413', 'US', 'SD', 'kathryn.smith@example.com', '105.63.95.200', 'dummy_visa', 12, 2222, '', '1234', '{}', 'c6b41210-b1f4-4fc4-ba9b-b46b495973c8', 'USD', 77.610, 77.610, NULL, 12, 'f', 'card', NULL);
INSERT INTO "public"."payment_payment" VALUES (15, 'mirumee.payments.dummy', 't', '2020-11-27 08:05:12.158993+00', '2020-11-27 08:05:12.179953+00', 'fully-charged', 'Maria', 'Schwartz', '', '4990 Pitts Pines Suite 625', '', 'Rasmussenborough', '', '19794', 'US', 'DE', 'maria.schwartz@example.com', '31.43.25.116', 'dummy_visa', 12, 2222, '', '1234', '{}', 'e2cd2aaf-33ac-45c2-b0b3-2bd34bf48f55', 'USD', 91.200, 91.200, NULL, 15, 'f', 'card', NULL);
INSERT INTO "public"."payment_payment" VALUES (13, 'mirumee.payments.dummy', 't', '2020-11-27 08:05:11.908847+00', '2020-11-27 08:05:11.931411+00', 'fully-charged', 'Joseph', 'Austin', '', '060 Chan Crossing', '', 'Mcleanstad', '', '08183', 'US', 'NJ', '', '79.9.117.155', 'dummy_visa', 12, 2222, '', '1234', '{}', 'c969a90a-da6f-43e2-8bc3-be6986cf3c48', 'USD', 28.830, 28.830, NULL, 13, 'f', 'card', NULL);
INSERT INTO "public"."payment_payment" VALUES (19, 'mirumee.payments.dummy', 't', '2020-11-27 08:05:12.541381+00', '2020-11-27 08:05:12.563127+00', 'fully-charged', 'Kenneth', 'Gallagher', '', '533 Hogan Forge', '', 'Bradleyfort', '', '28475', 'US', 'NC', 'kenneth.gallagher@example.com', '42.61.165.154', 'dummy_visa', 12, 2222, '', '1234', '{}', '1e22a42b-919b-4175-8060-74f11639fd8a', 'USD', 66.810, 66.810, NULL, 19, 'f', 'card', NULL);
INSERT INTO "public"."payment_payment" VALUES (16, 'mirumee.payments.dummy', 't', '2020-11-27 08:05:12.253358+00', '2020-11-27 08:05:12.273064+00', 'fully-charged', 'Michelle', 'Bradley', '', '20051 Megan Route Suite 528', '', 'South Morgan', '', '21196', 'US', 'MD', 'michelle.bradley@example.com', '45.221.125.105', 'dummy_visa', 12, 2222, '', '1234', '{}', '22e24b6f-81ef-47d2-a834-9ec4c8ec3925', 'USD', 135.690, 135.690, NULL, 16, 'f', 'card', NULL);
INSERT INTO "public"."payment_payment" VALUES (20, 'mirumee.payments.dummy', 'f', '2020-11-27 08:05:12.635915+00', '2020-11-27 08:05:12.654666+00', 'not-charged', 'Christopher', 'Mason', '', '5449 James Crossing', '', 'Michaelshire', '', '31789', 'US', 'GA', '', '206.216.253.23', 'dummy_visa', 12, 2222, '', '1234', '{}', '47d48bda-66f3-42fa-8b37-153463d470fd', 'USD', 97.940, 0.000, NULL, 20, 'f', 'card', NULL);
INSERT INTO "public"."payment_payment" VALUES (18, 'mirumee.payments.dummy', 'f', '2020-11-27 08:05:12.461483+00', '2020-11-27 08:05:12.492477+00', 'fully-refunded', 'John', 'Wells', '', '6936 Armstrong Club Apt. 359', '', 'Lake Evan', '', '57047', 'US', 'SD', '', '61.56.36.251', 'dummy_visa', 12, 2222, '', '1234', '{}', 'ddcf3f84-5bd7-47e5-9546-2233f1a266d7', 'USD', 52.650, 0.000, NULL, 18, 'f', 'card', NULL);
COMMIT;

-- ----------------------------
-- Table structure for payment_transaction
-- ----------------------------
DROP TABLE IF EXISTS "public"."payment_transaction";
CREATE TABLE "public"."payment_transaction" (
  "id" int4 NOT NULL DEFAULT nextval('payment_transaction_id_seq'::regclass),
  "created" timestamptz(6) NOT NULL,
  "token" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "kind" varchar(25) COLLATE "pg_catalog"."default" NOT NULL,
  "is_success" bool NOT NULL,
  "error" varchar(256) COLLATE "pg_catalog"."default",
  "currency" varchar(3) COLLATE "pg_catalog"."default" NOT NULL,
  "amount" numeric(12,3) NOT NULL,
  "gateway_response" jsonb NOT NULL,
  "payment_id" int4 NOT NULL,
  "customer_id" varchar(256) COLLATE "pg_catalog"."default",
  "action_required" bool NOT NULL,
  "action_required_data" jsonb NOT NULL,
  "already_processed" bool NOT NULL,
  "searchable_key" varchar(256) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."payment_transaction" OWNER TO "saleor";

-- ----------------------------
-- Records of payment_transaction
-- ----------------------------
BEGIN;
INSERT INTO "public"."payment_transaction" VALUES (1, '2020-11-27 08:05:10.861359+00', '03b5aff0-7e13-4a19-b32a-71e38d691fcc', 'auth', 't', NULL, 'USD', 76.800, '{}', 1, NULL, 'f', '{}', 't', '');
INSERT INTO "public"."payment_transaction" VALUES (2, '2020-11-27 08:05:10.96917+00', 'f86e7e16-e071-4061-8dd9-770d28df7e27', 'auth', 't', NULL, 'USD', 157.810, '{}', 2, NULL, 'f', '{}', 't', '');
INSERT INTO "public"."payment_transaction" VALUES (3, '2020-11-27 08:05:10.979584+00', 'f86e7e16-e071-4061-8dd9-770d28df7e27', 'void', 't', NULL, 'USD', 157.810, '{}', 2, NULL, 'f', '{}', 't', '');
INSERT INTO "public"."payment_transaction" VALUES (4, '2020-11-27 08:05:11.073585+00', 'a7dce10f-5747-42cd-80ac-76a2cc5674cc', 'auth', 't', NULL, 'USD', 80.150, '{}', 3, NULL, 'f', '{}', 't', '');
INSERT INTO "public"."payment_transaction" VALUES (5, '2020-11-27 08:05:11.084401+00', 'a7dce10f-5747-42cd-80ac-76a2cc5674cc', 'capture', 't', NULL, 'USD', 80.150, '{}', 3, NULL, 'f', '{}', 't', '');
INSERT INTO "public"."payment_transaction" VALUES (6, '2020-11-27 08:05:11.095189+00', 'a7dce10f-5747-42cd-80ac-76a2cc5674cc', 'refund', 't', NULL, 'USD', 80.150, '{}', 3, NULL, 'f', '{}', 't', '');
INSERT INTO "public"."payment_transaction" VALUES (7, '2020-11-27 08:05:11.159908+00', '0b4d2511-8edc-4763-8f72-f82d975f788c', 'auth', 't', NULL, 'USD', 72.940, '{}', 4, NULL, 'f', '{}', 't', '');
INSERT INTO "public"."payment_transaction" VALUES (8, '2020-11-27 08:05:11.171366+00', '0b4d2511-8edc-4763-8f72-f82d975f788c', 'void', 't', NULL, 'USD', 72.940, '{}', 4, NULL, 'f', '{}', 't', '');
INSERT INTO "public"."payment_transaction" VALUES (9, '2020-11-27 08:05:11.234893+00', '140a6cfa-eb0c-4b83-8fca-878835def70b', 'auth', 't', NULL, 'USD', 103.840, '{}', 5, NULL, 'f', '{}', 't', '');
INSERT INTO "public"."payment_transaction" VALUES (10, '2020-11-27 08:05:11.246532+00', '140a6cfa-eb0c-4b83-8fca-878835def70b', 'capture', 't', NULL, 'USD', 103.840, '{}', 5, NULL, 'f', '{}', 't', '');
INSERT INTO "public"."payment_transaction" VALUES (11, '2020-11-27 08:05:11.323605+00', '6e81e7af-dff6-404c-aff6-7bd7bcca1f7c', 'auth', 't', NULL, 'USD', 46.330, '{}', 6, NULL, 'f', '{}', 't', '');
INSERT INTO "public"."payment_transaction" VALUES (12, '2020-11-27 08:05:11.396866+00', '1e9f7a2d-65be-47ea-bed4-c70f5370f73d', 'auth', 't', NULL, 'USD', 69.150, '{}', 7, NULL, 'f', '{}', 't', '');
INSERT INTO "public"."payment_transaction" VALUES (13, '2020-11-27 08:05:11.407306+00', '1e9f7a2d-65be-47ea-bed4-c70f5370f73d', 'capture', 't', NULL, 'USD', 69.150, '{}', 7, NULL, 'f', '{}', 't', '');
INSERT INTO "public"."payment_transaction" VALUES (14, '2020-11-27 08:05:11.417806+00', '1e9f7a2d-65be-47ea-bed4-c70f5370f73d', 'refund', 't', NULL, 'USD', 69.150, '{}', 7, NULL, 'f', '{}', 't', '');
INSERT INTO "public"."payment_transaction" VALUES (15, '2020-11-27 08:05:11.518998+00', '456b167b-a421-49a3-af33-eac19e334255', 'auth', 't', NULL, 'USD', 127.840, '{}', 8, NULL, 'f', '{}', 't', '');
INSERT INTO "public"."payment_transaction" VALUES (16, '2020-11-27 08:05:11.530428+00', '456b167b-a421-49a3-af33-eac19e334255', 'capture', 't', NULL, 'USD', 127.840, '{}', 8, NULL, 'f', '{}', 't', '');
INSERT INTO "public"."payment_transaction" VALUES (17, '2020-11-27 08:05:11.610904+00', '90f62f25-4830-40e4-8ede-d12397ec22b8', 'auth', 't', NULL, 'USD', 78.620, '{}', 9, NULL, 'f', '{}', 't', '');
INSERT INTO "public"."payment_transaction" VALUES (18, '2020-11-27 08:05:11.685704+00', '364606f3-16a8-4907-a059-ae26a819c129', 'auth', 't', NULL, 'USD', 86.510, '{}', 10, NULL, 'f', '{}', 't', '');
INSERT INTO "public"."payment_transaction" VALUES (19, '2020-11-27 08:05:11.696324+00', '364606f3-16a8-4907-a059-ae26a819c129', 'void', 't', NULL, 'USD', 86.510, '{}', 10, NULL, 'f', '{}', 't', '');
INSERT INTO "public"."payment_transaction" VALUES (20, '2020-11-27 08:05:11.766487+00', 'e1c36d5a-651e-4068-80a2-0005f3dae454', 'auth', 't', NULL, 'USD', 106.160, '{}', 11, NULL, 'f', '{}', 't', '');
INSERT INTO "public"."payment_transaction" VALUES (21, '2020-11-27 08:05:11.845709+00', 'c6b41210-b1f4-4fc4-ba9b-b46b495973c8', 'auth', 't', NULL, 'USD', 77.610, '{}', 12, NULL, 'f', '{}', 't', '');
INSERT INTO "public"."payment_transaction" VALUES (22, '2020-11-27 08:05:11.857385+00', 'c6b41210-b1f4-4fc4-ba9b-b46b495973c8', 'capture', 't', NULL, 'USD', 77.610, '{}', 12, NULL, 'f', '{}', 't', '');
INSERT INTO "public"."payment_transaction" VALUES (23, '2020-11-27 08:05:11.918078+00', 'c969a90a-da6f-43e2-8bc3-be6986cf3c48', 'auth', 't', NULL, 'USD', 28.830, '{}', 13, NULL, 'f', '{}', 't', '');
INSERT INTO "public"."payment_transaction" VALUES (24, '2020-11-27 08:05:11.930474+00', 'c969a90a-da6f-43e2-8bc3-be6986cf3c48', 'capture', 't', NULL, 'USD', 28.830, '{}', 13, NULL, 'f', '{}', 't', '');
INSERT INTO "public"."payment_transaction" VALUES (25, '2020-11-27 08:05:11.990731+00', '10c6f391-2e6b-4d7f-af8e-900919650778', 'auth', 't', NULL, 'USD', 10.510, '{}', 14, NULL, 'f', '{}', 't', '');
INSERT INTO "public"."payment_transaction" VALUES (26, '2020-11-27 08:05:12.002633+00', '10c6f391-2e6b-4d7f-af8e-900919650778', 'capture', 't', NULL, 'USD', 10.510, '{}', 14, NULL, 'f', '{}', 't', '');
INSERT INTO "public"."payment_transaction" VALUES (27, '2020-11-27 08:05:12.167611+00', 'e2cd2aaf-33ac-45c2-b0b3-2bd34bf48f55', 'auth', 't', NULL, 'USD', 91.200, '{}', 15, NULL, 'f', '{}', 't', '');
INSERT INTO "public"."payment_transaction" VALUES (28, '2020-11-27 08:05:12.179+00', 'e2cd2aaf-33ac-45c2-b0b3-2bd34bf48f55', 'capture', 't', NULL, 'USD', 91.200, '{}', 15, NULL, 'f', '{}', 't', '');
INSERT INTO "public"."payment_transaction" VALUES (29, '2020-11-27 08:05:12.26152+00', '22e24b6f-81ef-47d2-a834-9ec4c8ec3925', 'auth', 't', NULL, 'USD', 135.690, '{}', 16, NULL, 'f', '{}', 't', '');
INSERT INTO "public"."payment_transaction" VALUES (30, '2020-11-27 08:05:12.272155+00', '22e24b6f-81ef-47d2-a834-9ec4c8ec3925', 'capture', 't', NULL, 'USD', 135.690, '{}', 16, NULL, 'f', '{}', 't', '');
INSERT INTO "public"."payment_transaction" VALUES (31, '2020-11-27 08:05:12.373806+00', '72eacfad-5d30-4bb0-9867-cd14a5b61b30', 'auth', 't', NULL, 'USD', 82.710, '{}', 17, NULL, 'f', '{}', 't', '');
INSERT INTO "public"."payment_transaction" VALUES (32, '2020-11-27 08:05:12.384298+00', '72eacfad-5d30-4bb0-9867-cd14a5b61b30', 'capture', 't', NULL, 'USD', 82.710, '{}', 17, NULL, 'f', '{}', 't', '');
INSERT INTO "public"."payment_transaction" VALUES (33, '2020-11-27 08:05:12.469737+00', 'ddcf3f84-5bd7-47e5-9546-2233f1a266d7', 'auth', 't', NULL, 'USD', 52.650, '{}', 18, NULL, 'f', '{}', 't', '');
INSERT INTO "public"."payment_transaction" VALUES (34, '2020-11-27 08:05:12.480665+00', 'ddcf3f84-5bd7-47e5-9546-2233f1a266d7', 'capture', 't', NULL, 'USD', 52.650, '{}', 18, NULL, 'f', '{}', 't', '');
INSERT INTO "public"."payment_transaction" VALUES (35, '2020-11-27 08:05:12.491511+00', 'ddcf3f84-5bd7-47e5-9546-2233f1a266d7', 'refund', 't', NULL, 'USD', 52.650, '{}', 18, NULL, 'f', '{}', 't', '');
INSERT INTO "public"."payment_transaction" VALUES (36, '2020-11-27 08:05:12.550377+00', '1e22a42b-919b-4175-8060-74f11639fd8a', 'auth', 't', NULL, 'USD', 66.810, '{}', 19, NULL, 'f', '{}', 't', '');
INSERT INTO "public"."payment_transaction" VALUES (37, '2020-11-27 08:05:12.5622+00', '1e22a42b-919b-4175-8060-74f11639fd8a', 'capture', 't', NULL, 'USD', 66.810, '{}', 19, NULL, 'f', '{}', 't', '');
INSERT INTO "public"."payment_transaction" VALUES (38, '2020-11-27 08:05:12.644298+00', '47d48bda-66f3-42fa-8b37-153463d470fd', 'auth', 't', NULL, 'USD', 97.940, '{}', 20, NULL, 'f', '{}', 't', '');
INSERT INTO "public"."payment_transaction" VALUES (39, '2020-11-27 08:05:12.653757+00', '47d48bda-66f3-42fa-8b37-153463d470fd', 'void', 't', NULL, 'USD', 97.940, '{}', 20, NULL, 'f', '{}', 't', '');
COMMIT;

-- ----------------------------
-- Table structure for plugins_pluginconfiguration
-- ----------------------------
DROP TABLE IF EXISTS "public"."plugins_pluginconfiguration";
CREATE TABLE "public"."plugins_pluginconfiguration" (
  "id" int4 NOT NULL DEFAULT nextval('plugins_pluginconfiguration_id_seq'::regclass),
  "name" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "description" text COLLATE "pg_catalog"."default" NOT NULL,
  "active" bool NOT NULL,
  "configuration" jsonb,
  "identifier" varchar(128) COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."plugins_pluginconfiguration" OWNER TO "saleor";

-- ----------------------------
-- Records of plugins_pluginconfiguration
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for product_assignedproductattribute
-- ----------------------------
DROP TABLE IF EXISTS "public"."product_assignedproductattribute";
CREATE TABLE "public"."product_assignedproductattribute" (
  "id" int4 NOT NULL DEFAULT nextval('product_assignedproductattribute_id_seq'::regclass),
  "product_id" int4 NOT NULL,
  "assignment_id" int4 NOT NULL
)
;
ALTER TABLE "public"."product_assignedproductattribute" OWNER TO "saleor";

-- ----------------------------
-- Records of product_assignedproductattribute
-- ----------------------------
BEGIN;
INSERT INTO "public"."product_assignedproductattribute" VALUES (1, 72, 1);
INSERT INTO "public"."product_assignedproductattribute" VALUES (2, 74, 1);
INSERT INTO "public"."product_assignedproductattribute" VALUES (3, 79, 1);
INSERT INTO "public"."product_assignedproductattribute" VALUES (4, 115, 5);
INSERT INTO "public"."product_assignedproductattribute" VALUES (5, 116, 5);
INSERT INTO "public"."product_assignedproductattribute" VALUES (6, 73, 1);
INSERT INTO "public"."product_assignedproductattribute" VALUES (7, 76, 1);
INSERT INTO "public"."product_assignedproductattribute" VALUES (8, 89, 5);
INSERT INTO "public"."product_assignedproductattribute" VALUES (9, 85, 4);
INSERT INTO "public"."product_assignedproductattribute" VALUES (10, 78, 1);
INSERT INTO "public"."product_assignedproductattribute" VALUES (11, 117, 5);
INSERT INTO "public"."product_assignedproductattribute" VALUES (12, 71, 1);
INSERT INTO "public"."product_assignedproductattribute" VALUES (13, 75, 1);
INSERT INTO "public"."product_assignedproductattribute" VALUES (14, 107, 5);
INSERT INTO "public"."product_assignedproductattribute" VALUES (15, 110, 5);
INSERT INTO "public"."product_assignedproductattribute" VALUES (16, 109, 5);
INSERT INTO "public"."product_assignedproductattribute" VALUES (17, 108, 5);
INSERT INTO "public"."product_assignedproductattribute" VALUES (18, 77, 1);
INSERT INTO "public"."product_assignedproductattribute" VALUES (19, 81, 2);
INSERT INTO "public"."product_assignedproductattribute" VALUES (20, 84, 3);
INSERT INTO "public"."product_assignedproductattribute" VALUES (21, 83, 3);
INSERT INTO "public"."product_assignedproductattribute" VALUES (22, 114, 5);
INSERT INTO "public"."product_assignedproductattribute" VALUES (23, 111, 5);
INSERT INTO "public"."product_assignedproductattribute" VALUES (24, 112, 5);
INSERT INTO "public"."product_assignedproductattribute" VALUES (25, 113, 5);
INSERT INTO "public"."product_assignedproductattribute" VALUES (26, 118, 5);
INSERT INTO "public"."product_assignedproductattribute" VALUES (27, 86, 4);
INSERT INTO "public"."product_assignedproductattribute" VALUES (28, 82, 2);
INSERT INTO "public"."product_assignedproductattribute" VALUES (29, 119, 7);
INSERT INTO "public"."product_assignedproductattribute" VALUES (30, 120, 7);
INSERT INTO "public"."product_assignedproductattribute" VALUES (31, 121, 7);
INSERT INTO "public"."product_assignedproductattribute" VALUES (32, 122, 7);
INSERT INTO "public"."product_assignedproductattribute" VALUES (33, 123, 7);
INSERT INTO "public"."product_assignedproductattribute" VALUES (34, 124, 7);
COMMIT;

-- ----------------------------
-- Table structure for product_assignedproductattribute_values
-- ----------------------------
DROP TABLE IF EXISTS "public"."product_assignedproductattribute_values";
CREATE TABLE "public"."product_assignedproductattribute_values" (
  "id" int4 NOT NULL DEFAULT nextval('product_assignedproductattribute_values_id_seq'::regclass),
  "assignedproductattribute_id" int4 NOT NULL,
  "attributevalue_id" int4 NOT NULL
)
;
ALTER TABLE "public"."product_assignedproductattribute_values" OWNER TO "saleor";

-- ----------------------------
-- Records of product_assignedproductattribute_values
-- ----------------------------
BEGIN;
INSERT INTO "public"."product_assignedproductattribute_values" VALUES (1, 1, 3);
INSERT INTO "public"."product_assignedproductattribute_values" VALUES (2, 2, 50);
INSERT INTO "public"."product_assignedproductattribute_values" VALUES (3, 3, 51);
INSERT INTO "public"."product_assignedproductattribute_values" VALUES (4, 4, 72);
INSERT INTO "public"."product_assignedproductattribute_values" VALUES (5, 5, 72);
INSERT INTO "public"."product_assignedproductattribute_values" VALUES (6, 6, 52);
INSERT INTO "public"."product_assignedproductattribute_values" VALUES (7, 7, 2);
INSERT INTO "public"."product_assignedproductattribute_values" VALUES (8, 8, 72);
INSERT INTO "public"."product_assignedproductattribute_values" VALUES (9, 9, 72);
INSERT INTO "public"."product_assignedproductattribute_values" VALUES (10, 10, 53);
INSERT INTO "public"."product_assignedproductattribute_values" VALUES (11, 11, 72);
INSERT INTO "public"."product_assignedproductattribute_values" VALUES (12, 12, 49);
INSERT INTO "public"."product_assignedproductattribute_values" VALUES (13, 13, 1);
INSERT INTO "public"."product_assignedproductattribute_values" VALUES (14, 14, 72);
INSERT INTO "public"."product_assignedproductattribute_values" VALUES (15, 15, 72);
INSERT INTO "public"."product_assignedproductattribute_values" VALUES (16, 16, 72);
INSERT INTO "public"."product_assignedproductattribute_values" VALUES (17, 17, 72);
INSERT INTO "public"."product_assignedproductattribute_values" VALUES (18, 18, 54);
INSERT INTO "public"."product_assignedproductattribute_values" VALUES (19, 19, 67);
INSERT INTO "public"."product_assignedproductattribute_values" VALUES (20, 20, 69);
INSERT INTO "public"."product_assignedproductattribute_values" VALUES (21, 21, 68);
INSERT INTO "public"."product_assignedproductattribute_values" VALUES (22, 22, 72);
INSERT INTO "public"."product_assignedproductattribute_values" VALUES (23, 23, 72);
INSERT INTO "public"."product_assignedproductattribute_values" VALUES (24, 24, 72);
INSERT INTO "public"."product_assignedproductattribute_values" VALUES (25, 25, 72);
INSERT INTO "public"."product_assignedproductattribute_values" VALUES (26, 26, 72);
INSERT INTO "public"."product_assignedproductattribute_values" VALUES (27, 27, 72);
INSERT INTO "public"."product_assignedproductattribute_values" VALUES (28, 28, 67);
INSERT INTO "public"."product_assignedproductattribute_values" VALUES (29, 29, 86);
INSERT INTO "public"."product_assignedproductattribute_values" VALUES (30, 30, 86);
INSERT INTO "public"."product_assignedproductattribute_values" VALUES (31, 31, 86);
INSERT INTO "public"."product_assignedproductattribute_values" VALUES (32, 32, 86);
INSERT INTO "public"."product_assignedproductattribute_values" VALUES (33, 33, 86);
INSERT INTO "public"."product_assignedproductattribute_values" VALUES (34, 34, 86);
COMMIT;

-- ----------------------------
-- Table structure for product_assignedvariantattribute
-- ----------------------------
DROP TABLE IF EXISTS "public"."product_assignedvariantattribute";
CREATE TABLE "public"."product_assignedvariantattribute" (
  "id" int4 NOT NULL DEFAULT nextval('product_assignedvariantattribute_id_seq'::regclass),
  "variant_id" int4 NOT NULL,
  "assignment_id" int4 NOT NULL
)
;
ALTER TABLE "public"."product_assignedvariantattribute" OWNER TO "saleor";

-- ----------------------------
-- Records of product_assignedvariantattribute
-- ----------------------------
BEGIN;
INSERT INTO "public"."product_assignedvariantattribute" VALUES (1, 172, 3);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (2, 173, 3);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (3, 174, 3);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (4, 175, 3);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (5, 176, 3);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (6, 177, 3);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (7, 178, 3);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (8, 179, 3);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (9, 181, 3);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (10, 183, 3);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (11, 184, 3);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (12, 190, 2);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (13, 191, 2);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (14, 192, 2);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (15, 197, 5);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (16, 198, 5);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (17, 199, 5);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (18, 200, 5);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (19, 205, 2);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (20, 206, 2);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (21, 207, 2);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (22, 208, 2);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (23, 209, 2);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (24, 210, 2);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (25, 211, 2);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (26, 213, 2);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (27, 214, 2);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (28, 216, 2);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (29, 217, 2);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (30, 218, 2);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (31, 220, 2);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (32, 221, 2);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (33, 223, 2);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (34, 224, 2);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (35, 225, 2);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (36, 242, 6);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (37, 243, 6);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (38, 248, 6);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (39, 249, 6);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (40, 251, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (41, 252, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (42, 253, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (43, 180, 3);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (44, 202, 2);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (45, 250, 6);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (46, 212, 2);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (47, 244, 6);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (48, 204, 2);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (49, 215, 2);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (50, 171, 3);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (51, 245, 6);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (52, 247, 6);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (53, 203, 2);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (54, 219, 2);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (55, 255, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (56, 256, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (57, 259, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (58, 261, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (59, 263, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (60, 264, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (61, 265, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (62, 266, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (63, 267, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (64, 270, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (65, 271, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (66, 272, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (67, 273, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (68, 275, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (69, 277, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (70, 278, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (71, 280, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (72, 281, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (73, 282, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (74, 283, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (75, 284, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (76, 286, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (77, 287, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (78, 288, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (79, 290, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (80, 291, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (81, 292, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (82, 293, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (83, 296, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (84, 297, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (85, 299, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (86, 302, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (87, 305, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (88, 306, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (89, 308, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (90, 309, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (91, 311, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (92, 312, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (93, 313, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (94, 314, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (95, 315, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (96, 185, 3);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (97, 254, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (98, 260, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (99, 274, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (100, 262, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (101, 310, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (102, 289, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (103, 304, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (104, 268, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (105, 301, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (106, 269, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (107, 303, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (108, 279, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (109, 294, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (110, 300, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (111, 257, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (112, 276, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (113, 298, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (114, 307, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (115, 258, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (116, 285, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (117, 295, 1);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (118, 246, 6);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (119, 222, 2);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (120, 182, 3);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (121, 316, 8);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (122, 317, 8);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (123, 318, 8);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (124, 319, 8);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (125, 320, 8);
INSERT INTO "public"."product_assignedvariantattribute" VALUES (126, 321, 8);
COMMIT;

-- ----------------------------
-- Table structure for product_assignedvariantattribute_values
-- ----------------------------
DROP TABLE IF EXISTS "public"."product_assignedvariantattribute_values";
CREATE TABLE "public"."product_assignedvariantattribute_values" (
  "id" int4 NOT NULL DEFAULT nextval('product_assignedvariantattribute_values_id_seq'::regclass),
  "assignedvariantattribute_id" int4 NOT NULL,
  "attributevalue_id" int4 NOT NULL
)
;
ALTER TABLE "public"."product_assignedvariantattribute_values" OWNER TO "saleor";

-- ----------------------------
-- Records of product_assignedvariantattribute_values
-- ----------------------------
BEGIN;
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (1, 1, 61);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (2, 2, 62);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (3, 3, 60);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (4, 4, 61);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (5, 5, 62);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (6, 6, 60);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (7, 7, 61);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (8, 8, 62);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (9, 9, 61);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (10, 10, 60);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (11, 11, 61);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (12, 12, 46);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (13, 13, 47);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (14, 14, 48);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (15, 15, 70);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (16, 16, 71);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (17, 17, 70);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (18, 18, 71);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (19, 19, 46);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (20, 20, 47);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (21, 21, 48);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (22, 22, 46);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (23, 23, 47);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (24, 24, 48);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (25, 25, 46);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (26, 26, 48);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (27, 27, 46);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (28, 28, 48);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (29, 29, 46);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (30, 30, 47);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (31, 31, 46);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (32, 32, 47);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (33, 33, 46);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (34, 34, 47);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (35, 35, 48);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (36, 36, 75);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (37, 37, 76);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (38, 38, 77);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (39, 39, 76);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (40, 40, 36);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (41, 41, 37);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (42, 42, 38);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (43, 43, 60);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (44, 44, 46);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (45, 45, 81);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (46, 46, 47);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (47, 47, 77);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (48, 48, 48);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (49, 49, 47);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (50, 50, 60);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (51, 51, 78);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (52, 52, 76);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (53, 53, 47);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (54, 54, 48);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (55, 55, 40);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (56, 56, 36);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (57, 57, 39);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (58, 58, 36);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (59, 59, 38);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (60, 60, 39);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (61, 61, 40);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (62, 62, 36);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (63, 63, 37);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (64, 64, 40);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (65, 65, 36);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (66, 66, 37);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (67, 67, 38);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (68, 68, 40);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (69, 69, 37);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (70, 70, 38);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (71, 71, 40);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (72, 72, 36);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (73, 73, 37);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (74, 74, 38);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (75, 75, 39);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (76, 76, 36);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (77, 77, 37);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (78, 78, 38);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (79, 79, 40);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (80, 80, 36);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (81, 81, 37);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (82, 82, 38);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (83, 83, 36);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (84, 84, 37);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (85, 85, 39);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (86, 86, 37);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (87, 87, 40);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (88, 88, 36);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (89, 89, 38);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (90, 90, 39);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (91, 91, 36);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (92, 92, 37);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (93, 93, 38);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (94, 94, 39);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (95, 95, 40);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (96, 96, 62);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (97, 97, 39);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (98, 98, 40);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (99, 99, 39);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (100, 100, 37);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (101, 101, 40);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (102, 102, 39);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (103, 103, 39);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (104, 104, 38);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (105, 105, 36);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (106, 106, 39);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (107, 107, 38);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (108, 108, 39);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (109, 109, 39);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (110, 110, 40);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (111, 111, 37);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (112, 112, 36);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (113, 113, 38);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (114, 114, 37);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (115, 115, 38);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (116, 116, 40);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (117, 117, 40);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (118, 118, 79);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (119, 119, 48);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (120, 120, 62);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (121, 121, 85);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (122, 122, 85);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (123, 123, 85);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (124, 124, 85);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (125, 125, 85);
INSERT INTO "public"."product_assignedvariantattribute_values" VALUES (126, 126, 85);
COMMIT;

-- ----------------------------
-- Table structure for product_attribute
-- ----------------------------
DROP TABLE IF EXISTS "public"."product_attribute";
CREATE TABLE "public"."product_attribute" (
  "id" int4 NOT NULL DEFAULT nextval('product_productattribute_id_seq'::regclass),
  "slug" varchar(250) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "metadata" jsonb,
  "private_metadata" jsonb,
  "input_type" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "available_in_grid" bool NOT NULL,
  "visible_in_storefront" bool NOT NULL,
  "filterable_in_dashboard" bool NOT NULL,
  "filterable_in_storefront" bool NOT NULL,
  "value_required" bool NOT NULL,
  "storefront_search_position" int4 NOT NULL,
  "is_variant_only" bool NOT NULL
)
;
ALTER TABLE "public"."product_attribute" OWNER TO "saleor";

-- ----------------------------
-- Records of product_attribute
-- ----------------------------
BEGIN;
INSERT INTO "public"."product_attribute" VALUES (13, 'size', 'Size', '{}', '{}', 'dropdown', 't', 't', 'f', 't', 'f', 0, 'f');
INSERT INTO "public"."product_attribute" VALUES (14, 'color', 'Color', '{}', '{}', 'dropdown', 't', 't', 'f', 't', 'f', 0, 'f');
INSERT INTO "public"."product_attribute" VALUES (15, 'bottle-size', 'Bottle Size', '{}', '{}', 'dropdown', 't', 't', 't', 't', 'f', 0, 'f');
INSERT INTO "public"."product_attribute" VALUES (16, 'flavor', 'Flavor', '{}', '{}', 'dropdown', 't', 't', 'f', 't', 'f', 0, 'f');
INSERT INTO "public"."product_attribute" VALUES (18, 'bucket-size', 'Bucket Size', '{}', '{}', 'dropdown', 't', 't', 'f', 't', 'f', 0, 'f');
INSERT INTO "public"."product_attribute" VALUES (19, 'medium', 'Medium', '{}', '{}', 'dropdown', 't', 't', 'f', 't', 'f', 0, 'f');
INSERT INTO "public"."product_attribute" VALUES (20, 'volume', 'Volume', '{}', '{}', 'dropdown', 't', 't', 'f', 't', 'f', 0, 'f');
INSERT INTO "public"."product_attribute" VALUES (21, 'abv', 'ABV', '{}', '{}', 'dropdown', 't', 't', 'f', 't', 'f', 0, 'f');
INSERT INTO "public"."product_attribute" VALUES (22, 'cushion-size', 'Cushion Size', '{}', '{}', 'dropdown', 't', 't', 'f', 't', 'f', 0, 'f');
INSERT INTO "public"."product_attribute" VALUES (23, 'material', 'Material', '{}', '{}', 'dropdown', 't', 't', 't', 't', 'f', 0, 'f');
INSERT INTO "public"."product_attribute" VALUES (24, 'shoe-size', 'Shoe size', '{}', '{}', 'dropdown', 't', 't', 'f', 't', 'f', 0, 'f');
INSERT INTO "public"."product_attribute" VALUES (25, 'ebook-format', 'Format', '{}', '{}', 'dropdown', 't', 't', 't', 't', 't', 0, 'f');
INSERT INTO "public"."product_attribute" VALUES (26, 'publisher', 'Publisher', '{}', '{}', 'dropdown', 't', 't', 't', 't', 'f', 0, 'f');
COMMIT;

-- ----------------------------
-- Table structure for product_attributeproduct
-- ----------------------------
DROP TABLE IF EXISTS "public"."product_attributeproduct";
CREATE TABLE "public"."product_attributeproduct" (
  "id" int4 NOT NULL DEFAULT nextval('product_attributeproduct_id_seq'::regclass),
  "attribute_id" int4 NOT NULL,
  "product_type_id" int4 NOT NULL,
  "sort_order" int4
)
;
ALTER TABLE "public"."product_attributeproduct" OWNER TO "saleor";

-- ----------------------------
-- Records of product_attributeproduct
-- ----------------------------
BEGIN;
INSERT INTO "public"."product_attributeproduct" VALUES (1, 16, 9, NULL);
INSERT INTO "public"."product_attributeproduct" VALUES (2, 20, 10, NULL);
INSERT INTO "public"."product_attributeproduct" VALUES (3, 21, 11, NULL);
INSERT INTO "public"."product_attributeproduct" VALUES (4, 23, 12, NULL);
INSERT INTO "public"."product_attributeproduct" VALUES (5, 23, 14, NULL);
INSERT INTO "public"."product_attributeproduct" VALUES (7, 26, 15, 1);
COMMIT;

-- ----------------------------
-- Table structure for product_attributetranslation
-- ----------------------------
DROP TABLE IF EXISTS "public"."product_attributetranslation";
CREATE TABLE "public"."product_attributetranslation" (
  "id" int4 NOT NULL DEFAULT nextval('product_productattributetranslation_id_seq'::regclass),
  "language_code" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "attribute_id" int4 NOT NULL
)
;
ALTER TABLE "public"."product_attributetranslation" OWNER TO "saleor";

-- ----------------------------
-- Records of product_attributetranslation
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for product_attributevalue
-- ----------------------------
DROP TABLE IF EXISTS "public"."product_attributevalue";
CREATE TABLE "public"."product_attributevalue" (
  "id" int4 NOT NULL DEFAULT nextval('product_attributechoicevalue_id_seq'::regclass),
  "name" varchar(250) COLLATE "pg_catalog"."default" NOT NULL,
  "attribute_id" int4 NOT NULL,
  "slug" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "sort_order" int4,
  "value" varchar(100) COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."product_attributevalue" OWNER TO "saleor";

-- ----------------------------
-- Records of product_attributevalue
-- ----------------------------
BEGIN;
INSERT INTO "public"."product_attributevalue" VALUES (1, 'Pineapple', 16, 'pineapple', 6, '');
INSERT INTO "public"."product_attributevalue" VALUES (2, 'Coconut', 16, 'coconut', 7, '');
INSERT INTO "public"."product_attributevalue" VALUES (3, 'Apple', 16, 'apple', 8, '');
INSERT INTO "public"."product_attributevalue" VALUES (36, 'S', 13, 's', 0, '');
INSERT INTO "public"."product_attributevalue" VALUES (37, 'M', 13, 'm', 1, '');
INSERT INTO "public"."product_attributevalue" VALUES (38, 'L', 13, 'l', 2, '');
INSERT INTO "public"."product_attributevalue" VALUES (39, 'XL', 13, 'xl', 3, '');
INSERT INTO "public"."product_attributevalue" VALUES (40, 'XXL', 13, 'xxl', 4, '');
INSERT INTO "public"."product_attributevalue" VALUES (41, 'White', 14, 'white', 0, '');
INSERT INTO "public"."product_attributevalue" VALUES (42, 'Blue', 14, 'blue', 1, '');
INSERT INTO "public"."product_attributevalue" VALUES (43, 'Orange', 14, 'orange', 2, '');
INSERT INTO "public"."product_attributevalue" VALUES (44, 'Black', 14, 'black', 3, '');
INSERT INTO "public"."product_attributevalue" VALUES (45, 'Cyan', 14, 'cyan', 4, '');
INSERT INTO "public"."product_attributevalue" VALUES (46, '500ml', 15, '500ml', 0, '');
INSERT INTO "public"."product_attributevalue" VALUES (47, '1l', 15, '1l', 1, '');
INSERT INTO "public"."product_attributevalue" VALUES (48, '2l', 15, '2l', 2, '');
INSERT INTO "public"."product_attributevalue" VALUES (49, 'Orange', 16, 'orange', 0, '');
INSERT INTO "public"."product_attributevalue" VALUES (50, 'Banana', 16, 'banana', 1, '');
INSERT INTO "public"."product_attributevalue" VALUES (51, 'Bean', 16, 'bean', 2, '');
INSERT INTO "public"."product_attributevalue" VALUES (52, 'Carrot', 16, 'carrot', 3, '');
INSERT INTO "public"."product_attributevalue" VALUES (53, 'Sprouty', 16, 'sprouty', 4, '');
INSERT INTO "public"."product_attributevalue" VALUES (54, 'Salty, like the tears of your enemy', 16, 'salty-like-the-tears-of-your-enemy', 5, '');
INSERT INTO "public"."product_attributevalue" VALUES (60, '1l', 18, '1l', 0, '');
INSERT INTO "public"."product_attributevalue" VALUES (61, '2.5l', 18, '25l', 1, '');
INSERT INTO "public"."product_attributevalue" VALUES (62, '5l', 18, '5l', 2, '');
INSERT INTO "public"."product_attributevalue" VALUES (63, 'Vinyl', 19, 'vinyl', 0, '');
INSERT INTO "public"."product_attributevalue" VALUES (64, 'DVD', 19, 'dvd', 1, '');
INSERT INTO "public"."product_attributevalue" VALUES (65, 'VHS', 19, 'vhs', 2, '');
INSERT INTO "public"."product_attributevalue" VALUES (66, 'iTunes', 19, 'itunes', 3, '');
INSERT INTO "public"."product_attributevalue" VALUES (67, '700ml', 20, '700ml', 0, '');
INSERT INTO "public"."product_attributevalue" VALUES (68, '5.1%', 21, '51', 0, '');
INSERT INTO "public"."product_attributevalue" VALUES (69, '6.7%', 21, '67', 1, '');
INSERT INTO "public"."product_attributevalue" VALUES (70, '45cm x 45cm', 22, '45cm-x-45cm', 0, '');
INSERT INTO "public"."product_attributevalue" VALUES (71, '55cm x 55cm', 22, '55cm-x-55cm', 1, '');
INSERT INTO "public"."product_attributevalue" VALUES (72, 'Cotton', 23, 'cotton', 0, '');
INSERT INTO "public"."product_attributevalue" VALUES (73, 'Elastane', 23, 'elastane', 1, '');
INSERT INTO "public"."product_attributevalue" VALUES (74, 'Polyester', 23, 'polyester', 2, '');
INSERT INTO "public"."product_attributevalue" VALUES (75, '39', 24, '39', 0, '');
INSERT INTO "public"."product_attributevalue" VALUES (76, '40', 24, '40', 1, '');
INSERT INTO "public"."product_attributevalue" VALUES (77, '41', 24, '41', 2, '');
INSERT INTO "public"."product_attributevalue" VALUES (78, '42', 24, '42', 3, '');
INSERT INTO "public"."product_attributevalue" VALUES (79, '43', 24, '43', 4, '');
INSERT INTO "public"."product_attributevalue" VALUES (80, '44', 24, '44', 5, '');
INSERT INTO "public"."product_attributevalue" VALUES (81, '45', 24, '45', 6, '');
INSERT INTO "public"."product_attributevalue" VALUES (82, 'EPUB', 25, 'epub', 0, '');
INSERT INTO "public"."product_attributevalue" VALUES (83, 'MOBI', 25, 'mobi', 1, '');
INSERT INTO "public"."product_attributevalue" VALUES (84, 'CD', 19, 'cd', 4, '');
INSERT INTO "public"."product_attributevalue" VALUES (85, 'MP3', 19, 'mp3', 5, '');
INSERT INTO "public"."product_attributevalue" VALUES (86, 'Digital Audio', 26, 'digital-audio', 0, '');
COMMIT;

-- ----------------------------
-- Table structure for product_attributevaluetranslation
-- ----------------------------
DROP TABLE IF EXISTS "public"."product_attributevaluetranslation";
CREATE TABLE "public"."product_attributevaluetranslation" (
  "id" int4 NOT NULL DEFAULT nextval('product_attributechoicevaluetranslation_id_seq'::regclass),
  "language_code" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "attribute_value_id" int4 NOT NULL
)
;
ALTER TABLE "public"."product_attributevaluetranslation" OWNER TO "saleor";

-- ----------------------------
-- Records of product_attributevaluetranslation
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for product_attributevariant
-- ----------------------------
DROP TABLE IF EXISTS "public"."product_attributevariant";
CREATE TABLE "public"."product_attributevariant" (
  "id" int4 NOT NULL DEFAULT nextval('product_attributevariant_id_seq'::regclass),
  "attribute_id" int4 NOT NULL,
  "product_type_id" int4 NOT NULL,
  "sort_order" int4
)
;
ALTER TABLE "public"."product_attributevariant" OWNER TO "saleor";

-- ----------------------------
-- Records of product_attributevariant
-- ----------------------------
BEGIN;
INSERT INTO "public"."product_attributevariant" VALUES (1, 13, 14, NULL);
INSERT INTO "public"."product_attributevariant" VALUES (2, 15, 9, NULL);
INSERT INTO "public"."product_attributevariant" VALUES (3, 18, 7, NULL);
INSERT INTO "public"."product_attributevariant" VALUES (4, 19, 8, NULL);
INSERT INTO "public"."product_attributevariant" VALUES (5, 22, 12, NULL);
INSERT INTO "public"."product_attributevariant" VALUES (6, 24, 13, NULL);
INSERT INTO "public"."product_attributevariant" VALUES (8, 19, 15, 0);
COMMIT;

-- ----------------------------
-- Table structure for product_category
-- ----------------------------
DROP TABLE IF EXISTS "public"."product_category";
CREATE TABLE "public"."product_category" (
  "id" int4 NOT NULL DEFAULT nextval('product_category_id_seq'::regclass),
  "name" varchar(250) COLLATE "pg_catalog"."default" NOT NULL,
  "slug" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "description" text COLLATE "pg_catalog"."default" NOT NULL,
  "lft" int4 NOT NULL,
  "rght" int4 NOT NULL,
  "tree_id" int4 NOT NULL,
  "level" int4 NOT NULL,
  "parent_id" int4,
  "background_image" varchar(100) COLLATE "pg_catalog"."default",
  "seo_description" varchar(300) COLLATE "pg_catalog"."default",
  "seo_title" varchar(70) COLLATE "pg_catalog"."default",
  "background_image_alt" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "description_json" jsonb NOT NULL,
  "metadata" jsonb,
  "private_metadata" jsonb
)
;
ALTER TABLE "public"."product_category" OWNER TO "saleor";

-- ----------------------------
-- Records of product_category
-- ----------------------------
BEGIN;
INSERT INTO "public"."product_category" VALUES (7, 'Accessories', 'accessories', '', 1, 8, 1, 0, NULL, 'category-backgrounds/accessories.jpg', '', '', '', '{"blocks": [{"key": "", "data": {}, "text": "", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{}', '{}');
INSERT INTO "public"."product_category" VALUES (8, 'Groceries', 'groceries', '', 1, 6, 2, 0, NULL, 'category-backgrounds/groceries.jpg', '', '', '', '{"blocks": [{"key": "", "data": {}, "text": "", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{}', '{}');
INSERT INTO "public"."product_category" VALUES (9, 'Apparel', 'apparel', '', 1, 10, 3, 0, NULL, 'category-backgrounds/apparel.jpg', '', '', '', '{"blocks": [{"key": "", "data": {}, "text": "", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{}', '{}');
INSERT INTO "public"."product_category" VALUES (10, 'T-shirts', 't-shirts', '', 2, 3, 3, 1, 9, 'category-backgrounds/apparel_vH6J7i4.jpg', '', '', '', '{}', '{}', '{}');
INSERT INTO "public"."product_category" VALUES (11, 'Polo Shirts', 'polo-shirts', '', 4, 5, 3, 1, 9, 'category-backgrounds/apparel_hJqrii4.jpg', '', '', '', '{}', '{}', '{}');
INSERT INTO "public"."product_category" VALUES (12, 'Hoodies', 'hoodies', '', 6, 7, 3, 1, 9, 'category-backgrounds/apparel_k9k6rE7.jpg', '', '', '', '{}', '{}', '{}');
INSERT INTO "public"."product_category" VALUES (13, 'Footwear', 'footwear', '', 8, 9, 3, 1, 9, 'category-backgrounds/apparel_zcbSzQD.jpg', '', '', '', '{}', '{}', '{}');
INSERT INTO "public"."product_category" VALUES (14, 'Juices', 'juices', '', 2, 3, 2, 1, 8, 'category-backgrounds/groceries_F3LOJp4.jpg', '', '', '', '{}', '{}', '{}');
INSERT INTO "public"."product_category" VALUES (15, 'Alcohol', 'alcohol', '', 4, 5, 2, 1, 8, 'category-backgrounds/groceries_Zl0Bkz8.jpg', '', '', '', '{}', '{}', '{}');
INSERT INTO "public"."product_category" VALUES (20, 'Paints', 'paints', '', 2, 3, 1, 1, 7, 'category-backgrounds/accessories_Px6Vcql.jpg', '', '', '', '{}', '{}', '{}');
INSERT INTO "public"."product_category" VALUES (22, 'Homewares', 'homewares', '', 4, 5, 1, 1, 7, 'category-backgrounds/accessories_SquY1st.jpg', '', '', '', '{}', '{}', '{}');
INSERT INTO "public"."product_category" VALUES (23, 'Audiobooks', 'ebooks', '', 6, 7, 1, 1, 7, 'category-backgrounds/accessories_5JeBaPh.jpg', '', '', '', '{"blocks": [{"key": "89slb", "data": {}, "text": "", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{}', '{}');
COMMIT;

-- ----------------------------
-- Table structure for product_categorytranslation
-- ----------------------------
DROP TABLE IF EXISTS "public"."product_categorytranslation";
CREATE TABLE "public"."product_categorytranslation" (
  "id" int4 NOT NULL DEFAULT nextval('product_categorytranslation_id_seq'::regclass),
  "seo_title" varchar(70) COLLATE "pg_catalog"."default",
  "seo_description" varchar(300) COLLATE "pg_catalog"."default",
  "language_code" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "description" text COLLATE "pg_catalog"."default" NOT NULL,
  "category_id" int4 NOT NULL,
  "description_json" jsonb NOT NULL
)
;
ALTER TABLE "public"."product_categorytranslation" OWNER TO "saleor";

-- ----------------------------
-- Records of product_categorytranslation
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for product_collection
-- ----------------------------
DROP TABLE IF EXISTS "public"."product_collection";
CREATE TABLE "public"."product_collection" (
  "id" int4 NOT NULL DEFAULT nextval('product_collection_id_seq'::regclass),
  "name" varchar(250) COLLATE "pg_catalog"."default" NOT NULL,
  "slug" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "background_image" varchar(100) COLLATE "pg_catalog"."default",
  "seo_description" varchar(300) COLLATE "pg_catalog"."default",
  "seo_title" varchar(70) COLLATE "pg_catalog"."default",
  "is_published" bool NOT NULL,
  "description" text COLLATE "pg_catalog"."default" NOT NULL,
  "publication_date" date,
  "background_image_alt" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "description_json" jsonb NOT NULL,
  "metadata" jsonb,
  "private_metadata" jsonb
)
;
ALTER TABLE "public"."product_collection" OWNER TO "saleor";

-- ----------------------------
-- Records of product_collection
-- ----------------------------
BEGIN;
INSERT INTO "public"."product_collection" VALUES (1, 'Summer collection', 'summer-collection', 'collection-backgrounds/summer.jpg', NULL, NULL, 't', 'The Saleor Summer Collection features a range of products that feel the heat of the market. A demo store for all seasons. Saleor captures the open source, e-commerce sun.', '2020-01-01', '', '{"blocks": [{"key": "", "data": {}, "text": "The Saleor Summer Collection features a range of products that feel the heat of the market. A demo store for all seasons. Saleor captures the open source, e-commerce sun.", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{}', '{}');
INSERT INTO "public"."product_collection" VALUES (2, 'Winter sale', 'winter-sale', 'collection-backgrounds/clothing.jpg', NULL, NULL, 't', 'The Saleor Winter Sale is snowed under with seasonal offers. Unreal products at unreal prices. Literally, they are not real products, but the Saleor demo store is a genuine e-commerce leader.', '2020-01-01', '', '{"blocks": [{"key": "", "data": {}, "text": "The Saleor Winter Sale is snowed under with seasonal offers. Unreal products at unreal prices. Literally, they are not real products, but the Saleor demo store is a genuine e-commerce leader.", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{}', '{}');
COMMIT;

-- ----------------------------
-- Table structure for product_collectionproduct
-- ----------------------------
DROP TABLE IF EXISTS "public"."product_collectionproduct";
CREATE TABLE "public"."product_collectionproduct" (
  "id" int4 NOT NULL DEFAULT nextval('product_collection_products_id_seq'::regclass),
  "collection_id" int4 NOT NULL,
  "product_id" int4 NOT NULL,
  "sort_order" int4
)
;
ALTER TABLE "public"."product_collectionproduct" OWNER TO "saleor";

-- ----------------------------
-- Records of product_collectionproduct
-- ----------------------------
BEGIN;
INSERT INTO "public"."product_collectionproduct" VALUES (1, 1, 73, NULL);
INSERT INTO "public"."product_collectionproduct" VALUES (2, 1, 83, NULL);
INSERT INTO "public"."product_collectionproduct" VALUES (3, 1, 110, NULL);
INSERT INTO "public"."product_collectionproduct" VALUES (4, 1, 86, NULL);
INSERT INTO "public"."product_collectionproduct" VALUES (5, 2, 83, NULL);
INSERT INTO "public"."product_collectionproduct" VALUES (6, 2, 84, NULL);
INSERT INTO "public"."product_collectionproduct" VALUES (7, 2, 61, NULL);
INSERT INTO "public"."product_collectionproduct" VALUES (8, 2, 110, NULL);
COMMIT;

-- ----------------------------
-- Table structure for product_collectiontranslation
-- ----------------------------
DROP TABLE IF EXISTS "public"."product_collectiontranslation";
CREATE TABLE "public"."product_collectiontranslation" (
  "id" int4 NOT NULL DEFAULT nextval('product_collectiontranslation_id_seq'::regclass),
  "seo_title" varchar(70) COLLATE "pg_catalog"."default",
  "seo_description" varchar(300) COLLATE "pg_catalog"."default",
  "language_code" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "collection_id" int4 NOT NULL,
  "description" text COLLATE "pg_catalog"."default" NOT NULL,
  "description_json" jsonb NOT NULL
)
;
ALTER TABLE "public"."product_collectiontranslation" OWNER TO "saleor";

-- ----------------------------
-- Records of product_collectiontranslation
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for product_digitalcontent
-- ----------------------------
DROP TABLE IF EXISTS "public"."product_digitalcontent";
CREATE TABLE "public"."product_digitalcontent" (
  "id" int4 NOT NULL DEFAULT nextval('product_digitalcontent_id_seq'::regclass),
  "use_default_settings" bool NOT NULL,
  "automatic_fulfillment" bool NOT NULL,
  "content_type" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "content_file" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "max_downloads" int4,
  "url_valid_days" int4,
  "product_variant_id" int4 NOT NULL,
  "metadata" jsonb,
  "private_metadata" jsonb
)
;
ALTER TABLE "public"."product_digitalcontent" OWNER TO "saleor";

-- ----------------------------
-- Records of product_digitalcontent
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for product_digitalcontenturl
-- ----------------------------
DROP TABLE IF EXISTS "public"."product_digitalcontenturl";
CREATE TABLE "public"."product_digitalcontenturl" (
  "id" int4 NOT NULL DEFAULT nextval('product_digitalcontenturl_id_seq'::regclass),
  "token" uuid NOT NULL,
  "created" timestamptz(6) NOT NULL,
  "download_num" int4 NOT NULL,
  "content_id" int4 NOT NULL,
  "line_id" int4
)
;
ALTER TABLE "public"."product_digitalcontenturl" OWNER TO "saleor";

-- ----------------------------
-- Records of product_digitalcontenturl
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for product_product
-- ----------------------------
DROP TABLE IF EXISTS "public"."product_product";
CREATE TABLE "public"."product_product" (
  "id" int4 NOT NULL DEFAULT nextval('product_product_id_seq'::regclass),
  "name" varchar(250) COLLATE "pg_catalog"."default" NOT NULL,
  "description" text COLLATE "pg_catalog"."default" NOT NULL,
  "publication_date" date,
  "updated_at" timestamptz(6),
  "product_type_id" int4 NOT NULL,
  "is_published" bool NOT NULL,
  "category_id" int4,
  "seo_description" varchar(300) COLLATE "pg_catalog"."default",
  "seo_title" varchar(70) COLLATE "pg_catalog"."default",
  "charge_taxes" bool NOT NULL,
  "weight" float8,
  "description_json" jsonb NOT NULL,
  "metadata" jsonb,
  "private_metadata" jsonb,
  "minimal_variant_price_amount" numeric(12,3),
  "currency" varchar(3) COLLATE "pg_catalog"."default" NOT NULL,
  "slug" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "available_for_purchase" date,
  "visible_in_listings" bool NOT NULL,
  "default_variant_id" int4
)
;
ALTER TABLE "public"."product_product" OWNER TO "saleor";

-- ----------------------------
-- Records of product_product
-- ----------------------------
BEGIN;
INSERT INTO "public"."product_product" VALUES (62, 'Space Dust Navy Paint', 'The rich, deep hue of space dust. Vacuum packed and airlocked for long-lasting freshness of color.', '2020-01-01', '2020-11-27 08:05:06.835806+00', 7, 't', 20, 'The rich, deep hue of space dust. Vacuum packed and airlocked for long-lasting freshness of color.', '', 't', 1000, '{"blocks": [{"key": "", "data": {}, "text": "The rich, deep hue of space dust. Vacuum packed and airlocked for long-lasting freshness of color.", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{"vatlayer.code": "standard", "vatlayer.description": "standard"}', '{}', 15.000, 'USD', 'space-dust-navy-paint', '2021-02-26', 't', 174);
INSERT INTO "public"."product_product" VALUES (72, 'Apple Juice', 'Fell straight from the tree, on to Newton’s head, then into the bottle. The autumn taste of English apples. Brought to you by gravity.', '2020-01-01', '2020-11-27 08:05:07.342844+00', 9, 't', 14, 'Fell straight from the tree, on to Newton’s head, then into the bottle. The autumn taste of English apples. Brought to you by gravity.', '', 't', 1000, '{"blocks": [{"key": "", "data": {}, "text": "Fell straight from the tree, on to Newton’s head, then into the bottle. The autumn taste of English apples. Brought to you by gravity.", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{"vatlayer.code": "standard", "vatlayer.description": "standard"}', '{}', 5.000, 'USD', 'apple-juice', '2020-08-31', 't', 202);
INSERT INTO "public"."product_product" VALUES (73, 'Carrot Juice', 'Improve your eyesight the natural way with 100% pure, squeezed carrot juice. The sweet, orange nectar of Mother Earth.', '2020-01-01', '2020-11-27 08:05:07.405886+00', 9, 't', 14, 'Improve your eyesight the natural way with 100% pure, squeezed carrot juice. The sweet, orange nectar of Mother Earth.', '', 't', 1000, '{"blocks": [{"key": "", "data": {}, "text": "Improve your eyesight the natural way with 100% pure, squeezed carrot juice. The sweet, orange nectar of Mother Earth.", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{"vatlayer.code": "standard", "vatlayer.description": "standard"}', '{}', 5.000, 'USD', 'carrot-juice', '2020-08-31', 't', 205);
INSERT INTO "public"."product_product" VALUES (63, 'Red Dwarf Red Paint', 'We are all connected to the universe, because every cell in our bodies was cooked in the hearts of dying stars. Red Dwarf Paint: the color of Carl Sagan’s dreams.', '2020-01-01', '2020-11-27 08:06:18.176996+00', 7, 't', 20, '', '', 't', 0, '{"blocks": [{"key": "", "data": {}, "text": "We are all connected to the universe, because every cell in our bodies was cooked in the hearts of dying stars. Red Dwarf Paint: the color of Carl Sagan’s dreams.", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{"vatlayer.code": "standard", "vatlayer.description": "standard"}', '{}', 7.500, 'USD', 'red-dwarf-red-paint', '2021-08-06', 't', 177);
INSERT INTO "public"."product_product" VALUES (64, 'Light Speed Yellow Paint', 'There is life in outer space. This vibrant light speed yellow paint brings life to any surface. Goes on easy and dries at light speed.', '2020-01-01', '2020-11-27 08:06:18.232352+00', 7, 't', 20, 'There is life in outer space. This vibrant light speed yellow paint brings life to any surface. Goes on easy and dries at light speed.', '', 't', 0, '{"blocks": [{"key": "", "data": {}, "text": "There is life in outer space. This vibrant light speed yellow paint brings life to any surface. Goes on easy and dries at light speed.", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{"vatlayer.code": "standard", "vatlayer.description": "standard"}', '{}', 15.000, 'USD', 'light-speed-yellow-paint', '2021-01-26', 't', 180);
INSERT INTO "public"."product_product" VALUES (65, 'Hyperspace Turquoise Paint', 'Turquoise is the new black. No more gloomy night skies, brighten up your evenings with hyperspace paint.', '2020-01-01', '2020-11-27 08:06:18.274783+00', 7, 't', 20, 'Turquoise is the new black. No more gloomy night skies, brighten up your evenings with hyperspace paint.', '', 't', 1000, '{"blocks": [{"key": "", "data": {}, "text": "Turquoise is the new black. No more gloomy night skies, brighten up your evenings with hyperspace paint.", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{"vatlayer.code": "standard", "vatlayer.description": "standard"}', '{}', 15.000, 'USD', 'hyperspace-turquoise-paint', '2021-01-26', 't', 183);
INSERT INTO "public"."product_product" VALUES (71, 'Orange Juice', 'Fell from a tree straight into the bottle. No additives, no preservatives, just the refreshing taste of pure sun-kissed Californian oranges.', '2020-01-01', '2020-11-27 08:06:18.31438+00', 9, 't', 14, 'Fell from a tree straight into the bottle. No additives, no preservatives, just the refreshing taste of pure sun-kissed Californian oranges.', '', 't', 1000, '{"blocks": [{"key": "", "data": {}, "text": "Fell from a tree straight into the bottle. No additives, no preservatives, just the refreshing taste of pure sun-kissed Californian oranges.", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{"vatlayer.code": "standard", "vatlayer.description": "standard"}', '{}', 2.500, 'USD', 'orange-juice', '2020-08-31', 't', 190);
INSERT INTO "public"."product_product" VALUES (74, 'Banana Juice', 'Build your protein the natural way, with exotic banana juice made from ripe fruit and packed with all the goodness of the tropical sun.', '2020-01-01', '2020-11-27 08:06:18.524509+00', 9, 't', 14, 'Build your protein the natural way, with exotic banana juice made from ripe fruit and packed with all the goodness of the tropical sun.', '', 't', 1000, '{"blocks": [{"key": "", "data": {}, "text": "Build your protein the natural way, with exotic banana juice made from ripe fruit and packed with all the goodness of the tropical sun.", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{"vatlayer.code": "standard", "vatlayer.description": "standard"}', '{}', 4.000, 'USD', 'banana-juice', '2020-08-31', 't', 208);
INSERT INTO "public"."product_product" VALUES (75, 'Pineapple Juice', 'I can’t stand pineapples, so this one is not for me. They have a weird, fluffy, tangy taste. But if it is your kind of thing, then knock yourself out.', '2020-01-01', '2020-11-27 08:06:18.564728+00', 9, 't', 14, 'I can’t stand pineapples, so this one is not for me. They have a weird, fluffy, tangy taste. But if it is your kind of thing, then knock yourself out.', '', 't', 1000, '{"blocks": [{"key": "", "data": {}, "text": "I can’t stand pineapples, so this one is not for me. They have a weird, fluffy, tangy taste. But if it is your kind of thing, then knock yourself out.", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{"vatlayer.code": "standard", "vatlayer.description": "standard"}', '{}', 5.000, 'USD', 'pineapple-juice', '2020-08-31', 't', 211);
INSERT INTO "public"."product_product" VALUES (82, 'White Wine', 'Watch the slow setting sun of a wild summer evening sink into the horizon as you sip white wine that tastes like bittersweet memories of halcyon days.', '2020-01-01', '2020-11-27 08:05:07.186387+00', 10, 't', 15, 'Watch the slow setting sun of a wild summer evening sink into the horizon as you sip white wine that tastes like bittersweet memories of halcyon days.', '', 't', 0, '{"blocks": [{"key": "", "data": {}, "text": "Watch the slow setting sun of a wild summer evening sink into the horizon as you sip white wine that tastes like bittersweet memories of halcyon days.", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{"vatlayer.code": "standard", "vatlayer.description": "standard"}', '{}', 5.000, 'USD', 'white-wine', '2020-08-31', 't', 194);
INSERT INTO "public"."product_product" VALUES (83, 'Seaman Lager', 'Find your sea legs and then lose the power to use them with extra strong seaman’s lager. Don’t drink and sail, me hearties!', '2020-01-01', '2020-11-27 08:05:07.208986+00', 11, 't', 15, 'Find your sea legs and then lose the power to use them with extra strong seaman’s lager. Don’t drink and sail, me hearties!', '', 't', 1000, '{"blocks": [{"key": "", "data": {}, "text": "Find your sea legs and then lose the power to use them with extra strong seaman’s lager. Don’t drink and sail, me hearties!", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{"vatlayer.code": "standard", "vatlayer.description": "standard"}', '{}', 5.000, 'USD', 'seaman-lager', '2020-08-31', 't', 195);
INSERT INTO "public"."product_product" VALUES (85, 'Colored Parrot Cushion', 'Add a little color to your life with a Saleor parrot cushion. Turns any old sofa into a rainbow of classy interior design.', '2020-01-01', '2020-11-27 08:05:07.255801+00', 12, 't', 22, 'Add a little color to your life with a Saleor parrot cushion. Turns any old sofa into a rainbow of classy interior design.', '', 't', 0, '{"blocks": [{"key": "", "data": {}, "text": "Add a little color to your life with a Saleor parrot cushion. Turns any old sofa into a rainbow of classy interior design.", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{"vatlayer.code": "standard", "vatlayer.description": "standard"}', '{}', 5.000, 'USD', 'colored-parrot-cushion', '2020-08-31', 't', 197);
INSERT INTO "public"."product_product" VALUES (76, 'Coconut Juice', 'Did you know falling coconuts kill 150 people a year? But did you know that coconut juice is the new superfood? You win some, you lose some.', '2020-01-01', '2020-11-27 08:05:07.593831+00', 9, 't', 14, 'Did you know falling coconuts kill 150 people a year? But did you know that coconut juice is the new superfood? You win some, you lose some.', '', 't', 1000, '{"blocks": [{"key": "", "data": {}, "text": "Did you know falling coconuts kill 150 people a year? But did you know that coconut juice is the new superfood? You win some, you lose some.", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{"vatlayer.code": "standard", "vatlayer.description": "standard"}', '{}', 5.000, 'USD', 'coconut-juice', '2020-08-31', 't', 214);
INSERT INTO "public"."product_product" VALUES (84, 'Seaman Beer', 'Best beer on the seven seas. A dark ale for when the dark clouds gather overhead. The nutty nautical taste that sailors love.', '2020-01-01', '2020-11-27 08:06:18.383155+00', 11, 't', 15, 'Best beer on the seven seas. A dark ale for when the dark clouds gather overhead. The nutty nautical taste that sailors love.', '', 't', 1000, '{"blocks": [{"key": "", "data": {}, "text": "Best beer on the seven seas. A dark ale for when the dark clouds gather overhead. The nutty nautical taste that sailors love.", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{"vatlayer.code": "standard", "vatlayer.description": "standard"}', '{}', 5.000, 'USD', 'seaman-beer', '2020-08-31', 't', 196);
INSERT INTO "public"."product_product" VALUES (77, 'Power Juice', 'Is it a bird? Is a plane? No! It’s some jacked dude who just sucked down a bottle of our brand new power juice! Look at him go!', '2020-01-01', '2020-11-27 08:06:18.648488+00', 9, 't', 14, 'Is it a bird? Is it a plane? No! It’s some jacked dude who just sucked down a bottle of our brand new power juice! Look at him go!', '', 't', 1000, '{"blocks": [{"key": "", "data": {}, "text": "Is it a bird? Is a plane? No! It’s some jacked dude who just sucked down a bottle of our brand new power juice! Look at him go!", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{"vatlayer.code": "standard", "vatlayer.description": "standard"}', '{}', 2.500, 'USD', 'power-juice', '2020-08-31', 't', 217);
INSERT INTO "public"."product_product" VALUES (79, 'Bean Juice', 'Bean there, drunk that! The energy drink for the health-conscious. Brand new bean juice; from allotment to bottle in under 8 hours.', '2020-01-01', '2020-11-27 08:06:18.767984+00', 9, 't', 14, 'Bean there, drunk that! The energy drink for the health-conscious. Brand new bean juice; from allotment to bottle in under 8 hours.', '', 't', 1000, '{"blocks": [{"key": "", "data": {}, "text": "Bean there, drunk that! The energy drink for the health-conscious. Brand new bean juice; from allotment to bottle in under 8 hours.", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{"vatlayer.code": "standard", "vatlayer.description": "standard"}', '{}', 3.500, 'USD', 'bean-juice', '2020-08-31', 't', 223);
INSERT INTO "public"."product_product" VALUES (89, 'Code Division T-shirt', 'Pay homage to the music and art of a Joy Division and Peter Saville, but with a Mirumee twist. Perfect live transmission apparel for dead souls.', '2020-01-01', '2020-11-27 08:05:08.032665+00', 14, 't', 10, 'Pay homage to the music and art of Joy Division and Peter Saville, but with a Mirumee twist. Perfect live transmission apparel for dead souls.', '', 't', 0, '{"blocks": [{"key": "", "data": {}, "text": "Pay homage to the music and art of a Joy Division and Peter Saville, but with a Mirumee twist. Perfect live transmission apparel for dead souls.", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{"vatlayer.code": "standard", "vatlayer.description": "standard"}', '{}', 5.000, 'USD', 'code-division-t-shirt', '2020-08-31', 't', 251);
INSERT INTO "public"."product_product" VALUES (107, 'Polo Shirt', 'Ever have those days where you feel a bit geometric? Can''t quite shape yourself up right? Show your different sides with a Saleor styles.', '2020-01-01', '2020-11-27 08:05:08.137641+00', 14, 't', 11, 'Ever have those days where you feel a bit geometric? Can''t quite shape yourself up right? Show your different sides with a Saleor styles.', '', 't', 0, '{"blocks": [{"key": "", "data": {}, "text": "Ever have those days where you feel a bit geometric? Can''t quite shape yourself up right? Show your different sides with a Saleor styles.", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{"vatlayer.code": "standard", "vatlayer.description": "standard"}', '{}', 5.000, 'USD', 'polo-shirt', '2020-08-31', 't', 256);
INSERT INTO "public"."product_product" VALUES (88, 'White Plimsolls', 'PE at school wouldn’t have been such a drag with these on your feet. Slip on the style and stride tall with Saleor branded plimsolls. PE now stands for pretty elegant.', '2020-01-01', '2020-11-27 08:06:18.922772+00', 13, 't', 13, 'PE at school wouldn’t have been such a drag with these on your feet. Slip on the style and stride tall with Saleor branded plimsolls. PE now stands for pretty elegant.', '', 't', 1000, '{"blocks": [{"key": "", "data": {}, "text": "PE at school wouldn’t have been such a drag with these on your feet. Slip on the style and stride tall with Saleor branded plimsolls. PE now stands for pretty elegant.", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{"vatlayer.code": "standard", "vatlayer.description": "standard"}', '{}', 5.000, 'USD', 'white-plimsolls', '2020-08-31', 't', 247);
INSERT INTO "public"."product_product" VALUES (108, 'Polo Shirt', 'Polo? Yolo… so don’t waste time on the wrong apparel. Choose a polo shirt that looks as good as you feel.', '2020-01-01', '2020-11-27 08:06:19.18336+00', 14, 't', 11, 'Polo? Yolo… so don’t waste time on the wrong apparel. Choose a polo shirt that looks as good as you feel.', '', 't', 0, '{"blocks": [{"key": "", "data": {}, "text": "Polo? Yolo… so don’t waste time on the wrong apparel. Choose a polo shirt that looks as good as you feel.", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{"vatlayer.code": "standard", "vatlayer.description": "standard"}', '{}', 2.500, 'USD', 'polo-shirt-2', '2020-08-31', 't', 261);
INSERT INTO "public"."product_product" VALUES (109, 'Polo Shirt', 'Wondering if this will look as good on you as it does on the screen? The answer is yes. A quality polo with smart styling.', '2020-01-01', '2020-11-27 08:06:19.283697+00', 14, 't', 11, 'Wondering if this will look as good on you as it does on the screen? The answer is yes. A quality polo with smart styling.', '', 't', 0, '{"blocks": [{"key": "", "data": {}, "text": "Wondering if this will look as good on you as it does on the screen? The answer is yes. A quality polo with smart styling.", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{"vatlayer.code": "standard", "vatlayer.description": "standard"}', '{}', 3.500, 'USD', 'polo-shirt-3', '2020-08-31', 't', 266);
INSERT INTO "public"."product_product" VALUES (110, 'Polo Shirt', 'They say polo is the sport of kings. Or was that stamp collecting? Either way, this shirt is fit for a king of Saturday night.', '2020-01-01', '2020-11-27 08:06:19.366392+00', 14, 't', 11, 'They say polo is the sport of kings. Or was that stamp collecting? Either way, this shirt is fit for a king of Saturday night.', '', 't', 0, '{"blocks": [{"key": "", "data": {}, "text": "They say polo is the sport of kings. Or was that stamp collecting? Either way, this shirt is fit for a king of Saturday night.", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{"vatlayer.code": "standard", "vatlayer.description": "standard"}', '{}', 5.000, 'USD', 'polo-shirt-4', '2020-08-31', 't', 271);
INSERT INTO "public"."product_product" VALUES (111, 'T-shirt', 'One style fits all. Get a look that works even when you are taking it easy. Relaxed wear for the masses.', '2020-01-01', '2020-11-27 08:06:19.453706+00', 14, 't', 10, 'One style fits all. Get a look that works even when you are taking it easy. Relaxed wear for the masses.', '', 't', 0, '{"blocks": [{"key": "", "data": {}, "text": "One style fits all. Get a look that works even when you are taking it easy. Relaxed wear for the masses.", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{"vatlayer.code": "standard", "vatlayer.description": "standard"}', '{}', 5.000, 'USD', 't-shirt-2', '2020-08-31', 't', 276);
INSERT INTO "public"."product_product" VALUES (112, 'T-shirt', 'A classic tee for a timeless look, at a great price. Feel like a million bucks without breaking the bank.', '2020-01-01', '2020-11-27 08:06:19.53886+00', 14, 't', 10, 'A classic tee for a timeless look, at a great price. Feel like a million bucks without breaking the bank.', '', 't', 0, '{"blocks": [{"key": "", "data": {}, "text": "A classic tee for a timeless look, at a great price. Feel like a million bucks without breaking the bank.", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{"vatlayer.code": "standard", "vatlayer.description": "standard"}', '{}', 5.000, 'USD', 't-shirt', '2020-08-31', 't', 281);
INSERT INTO "public"."product_product" VALUES (113, 'T-shirt', 'Want to look like you just fell out of bed? Sometimes style can be effortless. Throw it on get on with having a good day.', '2020-01-01', '2020-11-27 08:06:19.597783+00', 14, 't', 10, 'Want to look like you just fell out of bed? Sometimes style can be effortless. Throw it on get on with having a good day.', '', 't', 0, '{"blocks": [{"key": "", "data": {}, "text": "Want to look like you just fell out of bed? Sometimes style can be effortless. Throw it on get on with having a good day.", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{"vatlayer.code": "standard", "vatlayer.description": "standard"}', '{}', 5.000, 'USD', 't-shirt-4', '2020-08-31', 't', 286);
INSERT INTO "public"."product_product" VALUES (116, 'Blue Hoodie', 'Special offer. Buy a superhero blue sweater and get a free hood attached. Ideal for when you are out saving the world.', '2020-01-01', '2020-11-27 08:05:09.069925+00', 14, 't', 12, 'Special offer. Buy a superhero blue sweater and get a free hood attached. Ideal for when you are out saving the world.', '', 't', 0, '{"blocks": [{"key": "", "data": {}, "text": "Special offer. Buy a superhero blue sweater and get a free hood attached. Ideal for when you are out saving the world.", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{"vatlayer.code": "standard", "vatlayer.description": "standard"}', '{}', 5.000, 'USD', 'blue-hoodie', '2020-08-31', 't', 301);
INSERT INTO "public"."product_product" VALUES (121, 'Ocean Poems', '', '2020-01-01', '2020-11-27 08:05:09.420733+00', 15, 't', 23, '', '', 'f', 0, '{"blocks": [{"key": "5gh2n", "data": {}, "text": "Ocean Poems by Digital Audio.", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{}', '{}', 9.990, 'USD', 'ocean-poems', '2020-08-31', 'f', 318);
INSERT INTO "public"."product_product" VALUES (123, 'Lagoon Chants', '', '2020-01-01', '2020-11-27 08:05:09.465619+00', 15, 't', 23, '', '', 'f', 0, '{"blocks": [{"key": "675on", "data": {}, "text": "Lagoon Chants by Digital Audio.", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{}', '{}', 9.990, 'USD', 'lagoon-chants', '2020-08-31', 'f', 320);
INSERT INTO "public"."product_product" VALUES (61, 'Nebula Night Sky Paint', 'Tonight, my love, let us take fat brushes and paint the skies with the shades of nebula tides. Get the dark, moody shades of the ether.', '2020-01-01', '2020-11-27 08:06:18.053749+00', 7, 't', 20, 'Tonight, my love, let us take fat brushes and paint the skies with the shades of nebula tides. Get the dark, moody shades of the ether.', '', 't', 0, '{"blocks": [{"key": "", "data": {}, "text": "Tonight, my love, let us take fat brushes and paint the skies with the shades of nebula tides. Get the dark, moody shades of the ether.", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{"taxes": {"vatlayer": {"code": "standard", "description": "standard"}}}', '{}', 10.500, 'USD', 'nebula-night-sky-paint', '2020-10-08', 't', 171);
INSERT INTO "public"."product_product" VALUES (81, 'Red Wine', 'A fine, mature red with a hint of blackberry, an undertone of the alkaline Burgundy soil, a delicate aftertaste of burnt garlic, and a whole lot of grapes.', '2020-01-01', '2020-11-27 08:06:18.350329+00', 10, 't', 15, 'A fine, mature red with a hint of blackberry, an undertone of the alkaline Burgundy soil, a delicate aftertaste of burnt garlic, and a whole lot of grapes.', '', 't', 0, '{"blocks": [{"key": "", "data": {}, "text": "A fine, mature red with a hint of blackberry, an undertone of the alkaline Burgundy soil, a delicate aftertaste of burnt garlic, and a whole lot of grapes.", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{"vatlayer.code": "standard", "vatlayer.description": "standard"}', '{}', 4.000, 'USD', 'red-wine', '2020-08-31', 't', 193);
INSERT INTO "public"."product_product" VALUES (115, 'Black Hoodie', 'Special offer. Buy a hood and get a free jet black sweater attached. Perfect for when you are up to no good.', '2020-01-01', '2020-11-27 08:06:19.779271+00', 14, 't', 12, 'Special offer. Buy a hood and get a free jet black sweater attached. Perfect for when you are up to no good.', '', 't', 0, '{"blocks": [{"key": "", "data": {}, "text": "Special offer. Buy a hood and get a free jet black sweater attached. Perfect for when you are up to no good.", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{"vatlayer.code": "standard", "vatlayer.description": "standard"}', '{}', 5.000, 'USD', 'black-hoodie', '2020-08-31', 't', 296);
INSERT INTO "public"."product_product" VALUES (117, 'Mustard Hoodie', 'Who dunnit? It was Colonel Mustard, in the dining room, with the lead piping, wearing this hot as mustard hoodie.', '2020-01-01', '2020-11-27 08:06:20.030571+00', 14, 't', 12, 'Who dunnit? It was Colonel Mustard, in the dining room, with the lead piping, wearing this hot as mustard hoodie.', '', 't', 0, '{"blocks": [{"key": "", "data": {}, "text": "Who dunnit? It was Colonel Mustard, in the dining room, with the lead piping, wearing this hot as mustard hoodie.", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{"vatlayer.code": "standard", "vatlayer.description": "standard"}', '{}', 5.000, 'USD', 'mustard-hoodie', '2020-08-31', 't', 306);
INSERT INTO "public"."product_product" VALUES (118, 'White Hoodie', 'Get your slouch on and be seen with a whiter than white hoodie straight from the streets. Relaxed stylin’ and profilin’ with flair.', '2020-01-01', '2020-11-27 08:06:20.119358+00', 14, 't', 12, 'Get your slouch on and be seen with a whiter than white hoodie straight from the streets. Relaxed stylin’ and profilin’ with flair.', '', 't', 0, '{"blocks": [{"key": "", "data": {}, "text": "Get your slouch on and be seen with a whiter than white hoodie straight from the streets. Relaxed stylin’ and profilin’ with flair.", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{"vatlayer.code": "standard", "vatlayer.description": "standard"}', '{}', 2.500, 'USD', 'white-hoodie', '2020-08-31', 't', 311);
INSERT INTO "public"."product_product" VALUES (119, 'Sea Lullabies', '', '2020-01-01', '2020-11-27 08:06:20.205232+00', 15, 't', 23, '', '', 'f', 0, '{"blocks": [{"key": "cjb65", "data": {}, "text": "Sea Lullabies by Digital Audio.", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{}', '{}', 9.000, 'USD', 'sea-lullabies', '2020-08-31', 't', 316);
INSERT INTO "public"."product_product" VALUES (120, 'Lake Tunes', '', '2020-01-01', '2020-11-27 08:06:20.218805+00', 15, 't', 23, '', '', 'f', 0, '{"blocks": [{"key": "c6n3e", "data": {}, "text": "Lake Tunes by Digital Audio.", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{}', '{}', 9.000, 'USD', 'lake-tunes', '2020-08-31', 't', 317);
INSERT INTO "public"."product_product" VALUES (122, 'Bathroom Songs', '', '2020-01-01', '2020-11-27 08:06:20.249195+00', 15, 't', 23, '', '', 'f', 0, '{"blocks": [{"key": "buneo", "data": {}, "text": "Bathroom Songs by Digital Audio.", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{}', '{}', 5.000, 'USD', 'bathroom-songs', '2020-08-31', 'f', 319);
INSERT INTO "public"."product_product" VALUES (124, 'Waterfall Ballads', '', '2020-01-01', '2020-11-27 08:06:20.274776+00', 15, 't', 23, '', '', 'f', 0, '{"blocks": [{"key": "bbp2o", "data": {}, "text": "Waterfall Ballads by Digital Audio.", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{}', '{}', 9.990, 'USD', 'waterfall-ballads', '2021-08-31', 'f', 321);
INSERT INTO "public"."product_product" VALUES (86, 'White Parrot Cushion', 'Minimalist interiors need simple, sleek soft furnishings. Don’t parrot what others do, set your own monochrome trends with Saleor designs.', '2020-01-01', '2020-11-27 08:05:07.299016+00', 12, 't', 22, 'Minimalist interiors need simple, sleek soft furnishings. Don’t parrot what others do, set your own monochrome trends with Saleor designs.', '', 't', 0, '{"blocks": [{"key": "", "data": {}, "text": "Minimalist interiors need simple, sleek soft furnishings. Don’t parrot what others do, set your own monochrome trends with Saleor designs.", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{"vatlayer.code": "standard", "vatlayer.description": "standard"}', '{}', 5.000, 'USD', 'white-parrot-cushion', '2020-08-31', 't', 199);
INSERT INTO "public"."product_product" VALUES (87, 'Yellow Plimsolls', 'Mellow yellow. Step into summer with Saleor. Every time your head goes down, you see these beauties, and your mood bounces right back up.', '2020-01-01', '2020-11-27 08:05:07.845846+00', 13, 't', 13, 'Mellow yellow. Step into summer with Saleor. Every time your head goes down, you see these beauties, and your mood bounces right back up.', '', 't', 0, '{"blocks": [{"key": "", "data": {}, "text": "Mellow yellow. Step into summer with Saleor. Every time your head goes down, you see these beauties, and your mood bounces right back up.", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{"vatlayer.code": "standard", "vatlayer.description": "standard"}', '{}', 5.000, 'USD', 'yellow-plimsolls', '2020-08-31', 't', 242);
INSERT INTO "public"."product_product" VALUES (78, 'Green Juice', 'Brussel sprouts, spinach, peas, kale, lettuce, cabbage, zucchini, more brussel sprouts. All the greens you’ll ever need in one delicious juice.', '2020-01-01', '2020-11-27 08:06:18.709964+00', 9, 't', 14, 'Brussel sprouts, spinach, peas, kale, lettuce, cabbage, zucchini, more brussel sprouts. All the greens you’ll ever need in one delicious juice.', '', 't', 1000, '{"blocks": [{"key": "", "data": {}, "text": "Brussel sprouts, spinach, peas, kale, lettuce, cabbage, zucchini, more brussel sprouts. All the greens you’ll ever need in one delicious juice.", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{"vatlayer.code": "standard", "vatlayer.description": "standard"}', '{}', 4.500, 'USD', 'green-juice', '2020-08-31', 't', 220);
INSERT INTO "public"."product_product" VALUES (114, 'T-shirt', 'Your t-shirt is your second skin. It’s the version of you that you show to the world. Wear one that flows with your movements and is built to last.', '2020-01-01', '2020-11-27 08:06:19.685348+00', 14, 't', 10, 'Your t-shirt is your second skin. It’s the version of you that you show to the world. Wear one that flows with your movements and is built to last.', '', 't', 0, '{"blocks": [{"key": "", "data": {}, "text": "Your t-shirt is your second skin. It’s the version of you that you show to the world. Wear one that flows with your movements and is built to last.", "type": "unstyled", "depth": 0, "entityRanges": [], "inlineStyleRanges": []}], "entityMap": {}}', '{"vatlayer.code": "standard", "vatlayer.description": "standard"}', '{}', 2.500, 'USD', 't-shirt-3', '2020-08-31', 't', 291);
COMMIT;

-- ----------------------------
-- Table structure for product_productimage
-- ----------------------------
DROP TABLE IF EXISTS "public"."product_productimage";
CREATE TABLE "public"."product_productimage" (
  "id" int4 NOT NULL DEFAULT nextval('product_productimage_id_seq'::regclass),
  "image" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "ppoi" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "alt" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "sort_order" int4,
  "product_id" int4 NOT NULL
)
;
ALTER TABLE "public"."product_productimage" OWNER TO "saleor";

-- ----------------------------
-- Records of product_productimage
-- ----------------------------
BEGIN;
INSERT INTO "public"."product_productimage" VALUES (1, 'products/saleordemoproduct_paints_01.png', '0.5x0.5', '', 0, 61);
INSERT INTO "public"."product_productimage" VALUES (2, 'products/saleordemoproduct_paints_02.png', '0.5x0.5', '', 0, 62);
INSERT INTO "public"."product_productimage" VALUES (3, 'products/saleordemoproduct_paints_03.png', '0.5x0.5', '', 0, 63);
INSERT INTO "public"."product_productimage" VALUES (4, 'products/saleordemoproduct_paints_04.png', '0.5x0.5', '', 0, 64);
INSERT INTO "public"."product_productimage" VALUES (5, 'products/saleordemoproduct_paints_05.png', '0.5x0.5', '', 0, 65);
INSERT INTO "public"."product_productimage" VALUES (6, 'products/saleordemoproduct_fd_juice_06.png', '0.5x0.5', '', 0, 71);
INSERT INTO "public"."product_productimage" VALUES (7, 'products/saleordemoproduct_fd_juice_06_bgrAKuT.png', '0.5x0.5', '', 0, 72);
INSERT INTO "public"."product_productimage" VALUES (8, 'products/saleordemoproduct_fd_juice_05.png', '0.5x0.5', '', 0, 73);
INSERT INTO "public"."product_productimage" VALUES (9, 'products/saleordemoproduct_fd_juice_01.png', '0.5x0.5', '', 0, 74);
INSERT INTO "public"."product_productimage" VALUES (10, 'products/saleordemoproduct_fd_juice_03.png', '0.5x0.5', '', 0, 75);
INSERT INTO "public"."product_productimage" VALUES (11, 'products/saleordemoproduct_fd_juice_02.png', '0.5x0.5', '', 0, 76);
INSERT INTO "public"."product_productimage" VALUES (12, 'products/saleordemoproduct_fd_juice_03_ByLxZSi.png', '0.5x0.5', '', 0, 77);
INSERT INTO "public"."product_productimage" VALUES (13, 'products/saleordemoproduct_fd_juice_04.png', '0.5x0.5', '', 0, 78);
INSERT INTO "public"."product_productimage" VALUES (14, 'products/saleordemoproduct_fd_juice_02_1A8gTuE.png', '0.5x0.5', '', 0, 79);
INSERT INTO "public"."product_productimage" VALUES (15, 'products/saleordemoproduct_wine-red.png', '0.5x0.5', '', 0, 81);
INSERT INTO "public"."product_productimage" VALUES (16, 'products/saleordemoproduct_wine-white.png', '0.5x0.5', '', 0, 82);
INSERT INTO "public"."product_productimage" VALUES (17, 'products/saleordemoproduct_beer-02_1.png', '0.5x0.5', '', 0, 83);
INSERT INTO "public"."product_productimage" VALUES (18, 'products/saleordemoproduct_beer-02_2.png', '0.5x0.5', '', 1, 83);
INSERT INTO "public"."product_productimage" VALUES (19, 'products/saleordemoproduct_beer-01_1.png', '0.5x0.5', '', 0, 84);
INSERT INTO "public"."product_productimage" VALUES (20, 'products/saleordemoproduct_beer-01_2.png', '0.5x0.5', '', 1, 84);
INSERT INTO "public"."product_productimage" VALUES (21, 'products/saleordemoproduct_cuschion01.png', '0.5x0.5', '', 0, 85);
INSERT INTO "public"."product_productimage" VALUES (22, 'products/saleordemoproduct_cuschion02.png', '0.5x0.5', '', 0, 86);
INSERT INTO "public"."product_productimage" VALUES (23, 'products/saleordemoproduct_sneakers_01_1.png', '0.5x0.5', '', 0, 87);
INSERT INTO "public"."product_productimage" VALUES (24, 'products/saleordemoproduct_sneakers_01_2.png', '0.5x0.5', '', 1, 87);
INSERT INTO "public"."product_productimage" VALUES (25, 'products/saleordemoproduct_sneakers_01_3.png', '0.5x0.5', '', 2, 87);
INSERT INTO "public"."product_productimage" VALUES (26, 'products/saleordemoproduct_sneakers_01_4.png', '0.5x0.5', '', 3, 87);
INSERT INTO "public"."product_productimage" VALUES (27, 'products/saleordemoproduct_sneakers_02_1.png', '0.5x0.5', '', 0, 88);
INSERT INTO "public"."product_productimage" VALUES (28, 'products/saleordemoproduct_sneakers_02_2.png', '0.5x0.5', '', 1, 88);
INSERT INTO "public"."product_productimage" VALUES (29, 'products/saleordemoproduct_sneakers_02_3.png', '0.5x0.5', '', 2, 88);
INSERT INTO "public"."product_productimage" VALUES (30, 'products/saleordemoproduct_sneakers_02_4.png', '0.5x0.5', '', 3, 88);
INSERT INTO "public"."product_productimage" VALUES (31, 'products/saleordemoproduct_cl_boot07_1.png', '0.5x0.5', '', 0, 89);
INSERT INTO "public"."product_productimage" VALUES (32, 'products/saleordemoproduct_cl_boot07_2.png', '0.5x0.5', '', 1, 89);
INSERT INTO "public"."product_productimage" VALUES (33, 'products/saleordemoproduct_cl_polo01.png', '0.5x0.5', '', 0, 107);
INSERT INTO "public"."product_productimage" VALUES (34, 'products/saleordemoproduct_cl_polo02.png', '0.5x0.5', '', 0, 108);
INSERT INTO "public"."product_productimage" VALUES (35, 'products/saleordemoproduct_cl_polo03-woman.png', '0.5x0.5', '', 0, 109);
INSERT INTO "public"."product_productimage" VALUES (36, 'products/saleordemoproduct_cl_polo04-woman.png', '0.5x0.5', '', 0, 110);
INSERT INTO "public"."product_productimage" VALUES (37, 'products/saleordemoproduct_cl_boot01_1.png', '0.5x0.5', '', 0, 111);
INSERT INTO "public"."product_productimage" VALUES (38, 'products/saleordemoproduct_cl_boot01_2.png', '0.5x0.5', '', 1, 111);
INSERT INTO "public"."product_productimage" VALUES (39, 'products/saleordemoproduct_cl_boot01_3.png', '0.5x0.5', '', 2, 111);
INSERT INTO "public"."product_productimage" VALUES (40, 'products/saleordemoproduct_cl_boot03_1.png', '0.5x0.5', '', 0, 112);
INSERT INTO "public"."product_productimage" VALUES (41, 'products/saleordemoproduct_cl_boot03_2.png', '0.5x0.5', '', 1, 112);
INSERT INTO "public"."product_productimage" VALUES (42, 'products/saleordemoproduct_cl_boot06_1.png', '0.5x0.5', '', 0, 113);
INSERT INTO "public"."product_productimage" VALUES (43, 'products/saleordemoproduct_cl_boot06_2.png', '0.5x0.5', '', 1, 113);
INSERT INTO "public"."product_productimage" VALUES (44, 'products/saleordemoproduct_cl_boot06_1_fT2Eq7u.png', '0.5x0.5', '', 0, 114);
INSERT INTO "public"."product_productimage" VALUES (45, 'products/saleordemoproduct_cl_boot06_2_qRpfKvv.png', '0.5x0.5', '', 1, 114);
INSERT INTO "public"."product_productimage" VALUES (46, 'products/saleordemoproduct_cl_bogo01_1.png', '0.5x0.5', '', 0, 115);
INSERT INTO "public"."product_productimage" VALUES (47, 'products/saleordemoproduct_cl_bogo02_1.png', '0.5x0.5', '', 0, 116);
INSERT INTO "public"."product_productimage" VALUES (48, 'products/saleordemoproduct_cl_bogo03_1.png', '0.5x0.5', '', 0, 117);
INSERT INTO "public"."product_productimage" VALUES (49, 'products/saleordemoproduct_cl_bogo04_1.png', '0.5x0.5', '', 0, 118);
INSERT INTO "public"."product_productimage" VALUES (50, 'products/saleordemoproduct_cl_bogo04_2.png', '0.5x0.5', '', 1, 118);
INSERT INTO "public"."product_productimage" VALUES (51, 'products/saleor-digital-03_1.png', '0.5x0.5', '', 0, 119);
INSERT INTO "public"."product_productimage" VALUES (52, 'products/saleor-digital-03_2.png', '0.5x0.5', '', 0, 120);
INSERT INTO "public"."product_productimage" VALUES (53, 'products/saleor-digital-03_3.png', '0.5x0.5', '', 0, 121);
INSERT INTO "public"."product_productimage" VALUES (54, 'products/saleor-digital-03_4.png', '0.5x0.5', '', 0, 122);
INSERT INTO "public"."product_productimage" VALUES (55, 'products/saleor-digital-03_5.png', '0.5x0.5', '', 0, 123);
INSERT INTO "public"."product_productimage" VALUES (56, 'products/saleor-digital-03_6.png', '0.5x0.5', '', 0, 124);
COMMIT;

-- ----------------------------
-- Table structure for product_producttranslation
-- ----------------------------
DROP TABLE IF EXISTS "public"."product_producttranslation";
CREATE TABLE "public"."product_producttranslation" (
  "id" int4 NOT NULL DEFAULT nextval('product_producttranslation_id_seq'::regclass),
  "seo_title" varchar(70) COLLATE "pg_catalog"."default",
  "seo_description" varchar(300) COLLATE "pg_catalog"."default",
  "language_code" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(250) COLLATE "pg_catalog"."default" NOT NULL,
  "description" text COLLATE "pg_catalog"."default" NOT NULL,
  "product_id" int4 NOT NULL,
  "description_json" jsonb NOT NULL
)
;
ALTER TABLE "public"."product_producttranslation" OWNER TO "saleor";

-- ----------------------------
-- Records of product_producttranslation
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for product_producttype
-- ----------------------------
DROP TABLE IF EXISTS "public"."product_producttype";
CREATE TABLE "public"."product_producttype" (
  "id" int4 NOT NULL DEFAULT nextval('product_productclass_id_seq'::regclass),
  "name" varchar(250) COLLATE "pg_catalog"."default" NOT NULL,
  "has_variants" bool NOT NULL,
  "is_shipping_required" bool NOT NULL,
  "weight" float8 NOT NULL,
  "is_digital" bool NOT NULL,
  "metadata" jsonb,
  "private_metadata" jsonb,
  "slug" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."product_producttype" OWNER TO "saleor";

-- ----------------------------
-- Records of product_producttype
-- ----------------------------
BEGIN;
INSERT INTO "public"."product_producttype" VALUES (7, 'Paint', 't', 't', 1000, 'f', '{"vatlayer.code": "standard", "vatlayer.description": "standard"}', '{}', 'paint');
INSERT INTO "public"."product_producttype" VALUES (8, 'Music', 't', 't', 200, 'f', '{"vatlayer.code": "standard", "vatlayer.description": "standard"}', '{}', 'music');
INSERT INTO "public"."product_producttype" VALUES (9, 'Juice', 't', 't', 1000, 'f', '{"vatlayer.code": "standard", "vatlayer.description": "standard"}', '{}', 'juice');
INSERT INTO "public"."product_producttype" VALUES (10, 'Wine', 'f', 't', 1000, 'f', '{"vatlayer.code": "standard", "vatlayer.description": "standard"}', '{}', 'wine');
INSERT INTO "public"."product_producttype" VALUES (11, 'Beer', 'f', 't', 1000, 'f', '{"vatlayer.code": "standard", "vatlayer.description": "standard"}', '{}', 'beer');
INSERT INTO "public"."product_producttype" VALUES (12, 'Cushion', 't', 't', 500, 'f', '{"vatlayer.code": "standard", "vatlayer.description": "standard"}', '{}', 'cushion');
INSERT INTO "public"."product_producttype" VALUES (13, 'Shoe', 't', 't', 1000, 'f', '{"vatlayer.code": "standard", "vatlayer.description": "standard"}', '{}', 'shoe');
INSERT INTO "public"."product_producttype" VALUES (14, 'Top (clothing)', 't', 't', 1000, 'f', '{"vatlayer.code": "standard", "vatlayer.description": "standard"}', '{}', 'top-clothing');
INSERT INTO "public"."product_producttype" VALUES (15, 'Audiobook', 't', 'f', 0, 't', '{}', '{}', 'e-book');
COMMIT;

-- ----------------------------
-- Table structure for product_productvariant
-- ----------------------------
DROP TABLE IF EXISTS "public"."product_productvariant";
CREATE TABLE "public"."product_productvariant" (
  "id" int4 NOT NULL DEFAULT nextval('product_productvariant_id_seq'::regclass),
  "sku" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "product_id" int4 NOT NULL,
  "cost_price_amount" numeric(12,3),
  "track_inventory" bool NOT NULL,
  "weight" float8,
  "metadata" jsonb,
  "private_metadata" jsonb,
  "currency" varchar(3) COLLATE "pg_catalog"."default",
  "price_amount" numeric(12,3) NOT NULL,
  "sort_order" int4
)
;
ALTER TABLE "public"."product_productvariant" OWNER TO "saleor";

-- ----------------------------
-- Records of product_productvariant
-- ----------------------------
BEGIN;
INSERT INTO "public"."product_productvariant" VALUES (171, '546451996', '1l', 61, 5.000, 't', 1000, '{}', '{}', 'USD', 15.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (172, '546451997', '2.5l', 61, 10.000, 't', 2500, '{}', '{}', 'USD', 35.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (173, '546451999', '5l', 61, 20.000, 't', 5000, '{}', '{}', 'USD', 49.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (174, '998223591', '1l', 62, 5.000, 't', 1000, '{}', '{}', 'USD', 15.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (175, '998223599', '2.5l', 62, 10.000, 't', 0, '{}', '{}', 'USD', 25.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (176, '998223594', '5l', 62, 25.000, 't', 0, '{}', '{}', 'USD', 49.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (177, '998223582', '1l', 63, 5.000, 't', 1000, '{}', '{}', 'USD', 15.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (178, '998223583', '2.5l', 63, 10.000, 't', 2500, '{}', '{}', 'USD', 25.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (179, '998223584', '5l', 63, 20.000, 't', 5000, '{}', '{}', 'USD', 49.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (180, '998323582', '1l', 64, 5.000, 't', 1000, '{}', '{}', 'USD', 15.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (181, '998323583', '2.5l', 64, 10.000, 't', 2500, '{}', '{}', 'USD', 30.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (182, '998323584', '5l', 64, 15.000, 't', 5000, '{}', '{}', 'USD', 49.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (183, '998423582', '1l', 65, 5.000, 't', 1000, '{}', '{}', 'USD', 15.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (184, '998423583', '2.5l', 65, 10.000, 't', 2500, '{}', '{}', 'USD', 30.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (185, '998423585', '5l', 65, 15.000, 't', 5000, '{}', '{}', 'USD', 49.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (190, '988323582', '500ml', 71, 1.000, 't', 1000, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (191, '938323582', '1l', 71, 1.500, 't', 1000, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (192, '988323522', '2l', 71, 2.000, 't', 2000, '{}', '{}', 'USD', 7.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (193, '12312312321', '', 81, NULL, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (194, '1231998121', '', 82, NULL, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (195, '98616712', '', 83, NULL, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (196, '98616713', '', 84, NULL, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (197, '698223582', '45cm x 45cm', 85, 11.000, 't', 0, '{}', '{}', 'USD', 20.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (198, '698223581', '55cm x 55cm', 85, 12.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (199, '987126191', '45cm x 45cm', 86, 13.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (200, '998223590', '55cm x 55cm', 86, 13.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (202, '93855755', '500ml', 72, 1.000, 't', 1000, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (203, '43226647', '1l', 72, 1.500, 't', 1000, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (204, '80884671', '2l', 72, 2.000, 't', 2000, '{}', '{}', 'USD', 7.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (205, '67882967', '500ml', 73, 1.000, 't', 1000, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (206, '14925419', '1l', 73, 1.500, 't', 1000, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (207, '62426105', '2l', 73, 2.000, 't', 2000, '{}', '{}', 'USD', 7.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (208, '45328412', '500ml', 74, 1.000, 't', 1000, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (209, '27512590', '1l', 74, 1.500, 't', 1000, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (210, '40636347', '2l', 74, 2.000, 't', 2000, '{}', '{}', 'USD', 7.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (211, '43200242', '500ml', 75, 1.000, 't', 1000, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (212, '79129513', '1l', 75, 1.500, 't', 1000, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (213, '75799450', '2l', 75, 2.000, 't', 2000, '{}', '{}', 'USD', 7.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (214, '3944859', '500ml', 76, 1.000, 't', 1000, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (215, '5829405', '1l', 76, 1.500, 't', 1000, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (216, '84725784', '2l', 76, 2.000, 't', 2000, '{}', '{}', 'USD', 7.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (217, '70058446', '500ml', 77, 1.000, 't', 1000, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (218, '94044081', '1l', 77, 1.500, 't', 1000, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (219, '80696397', '2l', 77, 2.000, 't', 2000, '{}', '{}', 'USD', 7.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (220, '60752428', '500ml', 78, 1.000, 't', 1000, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (221, '81470859', '1l', 78, 1.500, 't', 1000, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (222, '30635751', '2l', 78, 2.000, 't', 2000, '{}', '{}', 'USD', 7.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (223, '57211177', '500ml', 79, 1.000, 't', 1000, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (224, '57423879', '1l', 79, 1.500, 't', 1000, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (225, '21438542', '2l', 79, 2.000, 't', 2000, '{}', '{}', 'USD', 7.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (242, '398323583', '39', 87, 20.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (243, '398323584', '40', 87, 20.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (244, '398323585', '41', 87, 20.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (245, '398323586', '42', 87, 20.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (246, '398323588', '43', 87, 20.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (247, '993223583', '40', 88, 10.000, 't', 1000, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (248, '978223582', '41', 88, 20.000, 't', 1000, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (249, '918323583', '40', 88, NULL, 't', 2000, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (250, '918223582', '45', 88, 20.000, 't', 2000, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (251, '988323583', 'S', 89, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (252, '338223582', 'M', 89, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (253, '118223591', 'L', 89, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (254, '448323583', 'XL', 89, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (255, '3128223583', 'XXL', 89, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (256, '29716755', 'S', 107, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (257, '66594736', 'M', 107, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (258, '50269944', 'L', 107, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (259, '31352185', 'XL', 107, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (260, '85364796', 'XXL', 107, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (261, '44026421', 'S', 108, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (262, '90892602', 'M', 108, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (263, '59014392', 'L', 108, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (264, '43659438', 'XL', 108, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (265, '60597697', 'XXL', 108, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (266, '26592266', 'S', 109, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (267, '36260498', 'M', 109, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (268, '37558859', 'L', 109, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (269, '19402012', 'XL', 109, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (270, '17570141', 'XXL', 109, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (271, '98530976', 'S', 110, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (272, '46806935', 'M', 110, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (273, '71103052', 'L', 110, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (274, '84812015', 'XL', 110, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (275, '89820261', 'XXL', 110, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (276, '81115323', 'S', 111, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (277, '38254631', 'M', 111, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (278, '11511539', 'L', 111, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (279, '84192227', 'XL', 111, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (280, '91642659', 'XXL', 111, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (281, '76491340', 'S', 112, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (282, '55101176', 'M', 112, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (283, '28094954', 'L', 112, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (284, '40232182', 'XL', 112, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (285, '21522631', 'XXL', 112, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (286, '29810068', 'S', 113, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (287, '57917658', 'M', 113, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (288, '42680611', 'L', 113, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (289, '72289815', 'XL', 113, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (290, '98653891', 'XXL', 113, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (291, '77306807', 'S', 114, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (292, '68848129', 'M', 114, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (293, '35342696', 'L', 114, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (294, '98935349', 'XL', 114, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (295, '45179543', 'XXL', 114, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (296, '62783187', 'S', 115, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (297, '91406604', 'M', 115, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (298, '22119503', 'L', 115, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (299, '19230637', 'XL', 115, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (300, '61630747', 'XXL', 115, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (301, '15744278', 'S', 116, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (302, '21599567', 'M', 116, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (303, '65363253', 'L', 116, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (304, '51987722', 'XL', 116, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (305, '43313080', 'XXL', 116, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (306, '33963052', 'S', 117, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (307, '66846240', 'M', 117, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (308, '55365141', 'L', 117, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (309, '73186143', 'XL', 117, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (310, '42651772', 'XXL', 117, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (311, '70760297', 'S', 118, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (312, '36334412', 'M', 118, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (313, '35994675', 'L', 118, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (314, '10404946', 'XL', 118, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (315, '45507483', 'XXL', 118, 10.000, 't', 0, '{}', '{}', 'USD', 5.000, NULL);
INSERT INTO "public"."product_productvariant" VALUES (316, 'sea-lullabies-mp3', 'MP3', 119, NULL, 't', 0, '{}', '{}', 'USD', 9.990, NULL);
INSERT INTO "public"."product_productvariant" VALUES (317, 'lake-tunes-mp3', 'MP3', 120, NULL, 't', 0, '{}', '{}', 'USD', 9.990, NULL);
INSERT INTO "public"."product_productvariant" VALUES (318, 'ocean-poems-mp3', 'MP3', 121, NULL, 't', 0, '{}', '{}', 'USD', 9.990, NULL);
INSERT INTO "public"."product_productvariant" VALUES (319, 'bathroom-songs-mp3', 'MP3', 122, NULL, 't', 0, '{}', '{}', 'USD', 9.990, NULL);
INSERT INTO "public"."product_productvariant" VALUES (320, 'lagoon-chants-mp3', 'MP3', 123, NULL, 't', 0, '{}', '{}', 'USD', 9.990, NULL);
INSERT INTO "public"."product_productvariant" VALUES (321, 'waterfall-ballads-mp3', 'MP3', 124, NULL, 't', 0, '{}', '{}', 'USD', 9.990, NULL);
COMMIT;

-- ----------------------------
-- Table structure for product_productvarianttranslation
-- ----------------------------
DROP TABLE IF EXISTS "public"."product_productvarianttranslation";
CREATE TABLE "public"."product_productvarianttranslation" (
  "id" int4 NOT NULL DEFAULT nextval('product_productvarianttranslation_id_seq'::regclass),
  "language_code" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "product_variant_id" int4 NOT NULL
)
;
ALTER TABLE "public"."product_productvarianttranslation" OWNER TO "saleor";

-- ----------------------------
-- Records of product_productvarianttranslation
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for product_variantimage
-- ----------------------------
DROP TABLE IF EXISTS "public"."product_variantimage";
CREATE TABLE "public"."product_variantimage" (
  "id" int4 NOT NULL DEFAULT nextval('product_variantimage_id_seq'::regclass),
  "image_id" int4 NOT NULL,
  "variant_id" int4 NOT NULL
)
;
ALTER TABLE "public"."product_variantimage" OWNER TO "saleor";

-- ----------------------------
-- Records of product_variantimage
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for shipping_shippingmethod
-- ----------------------------
DROP TABLE IF EXISTS "public"."shipping_shippingmethod";
CREATE TABLE "public"."shipping_shippingmethod" (
  "id" int4 NOT NULL DEFAULT nextval('shipping_shippingmethod_id_seq'::regclass),
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "maximum_order_price_amount" numeric(12,3),
  "maximum_order_weight" float8,
  "minimum_order_price_amount" numeric(12,3),
  "minimum_order_weight" float8,
  "price_amount" numeric(12,3) NOT NULL,
  "type" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "shipping_zone_id" int4 NOT NULL,
  "currency" varchar(3) COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."shipping_shippingmethod" OWNER TO "saleor";

-- ----------------------------
-- Records of shipping_shippingmethod
-- ----------------------------
BEGIN;
INSERT INTO "public"."shipping_shippingmethod" VALUES (1, 'DHL', NULL, NULL, 0.000, 0, 10.420, 'price', 1, 'USD');
INSERT INTO "public"."shipping_shippingmethod" VALUES (2, 'UPS', NULL, NULL, 0.000, 0, 38.380, 'price', 1, 'USD');
INSERT INTO "public"."shipping_shippingmethod" VALUES (3, 'Registered priority', NULL, NULL, 0.000, 0, 88.520, 'weight', 1, 'USD');
INSERT INTO "public"."shipping_shippingmethod" VALUES (4, 'DB Schenker', NULL, NULL, 0.000, 0, 22.830, 'price', 1, 'USD');
INSERT INTO "public"."shipping_shippingmethod" VALUES (5, 'FBA', NULL, NULL, 0.000, 0, 52.610, 'price', 2, 'USD');
INSERT INTO "public"."shipping_shippingmethod" VALUES (6, 'FedEx Express', NULL, NULL, 0.000, 0, 4.470, 'weight', 2, 'USD');
INSERT INTO "public"."shipping_shippingmethod" VALUES (7, 'Oceania Air Mail', NULL, NULL, 0.000, 0, 5.170, 'weight', 2, 'USD');
INSERT INTO "public"."shipping_shippingmethod" VALUES (8, 'China Post', NULL, NULL, 0.000, 0, 44.700, 'price', 3, 'USD');
INSERT INTO "public"."shipping_shippingmethod" VALUES (9, 'TNT', NULL, NULL, 0.000, 0, 83.690, 'price', 3, 'USD');
INSERT INTO "public"."shipping_shippingmethod" VALUES (10, 'Aramex', NULL, NULL, 0.000, 0, 34.150, 'price', 3, 'USD');
INSERT INTO "public"."shipping_shippingmethod" VALUES (11, 'EMS', NULL, NULL, 0.000, 0, 57.940, 'price', 3, 'USD');
INSERT INTO "public"."shipping_shippingmethod" VALUES (12, 'DHL', NULL, NULL, 0.000, 0, 87.660, 'price', 4, 'USD');
INSERT INTO "public"."shipping_shippingmethod" VALUES (13, 'UPS', NULL, NULL, 0.000, 0, 52.810, 'price', 4, 'USD');
INSERT INTO "public"."shipping_shippingmethod" VALUES (14, 'FedEx', NULL, NULL, 0.000, 0, 23.830, 'price', 4, 'USD');
INSERT INTO "public"."shipping_shippingmethod" VALUES (15, 'EMS', NULL, NULL, 0.000, 0, 46.710, 'price', 4, 'USD');
INSERT INTO "public"."shipping_shippingmethod" VALUES (16, 'Royale International', NULL, NULL, 0.000, 0, 2.510, 'weight', 5, 'USD');
INSERT INTO "public"."shipping_shippingmethod" VALUES (17, 'ACE', NULL, NULL, 0.000, 0, 31.160, 'weight', 5, 'USD');
INSERT INTO "public"."shipping_shippingmethod" VALUES (18, 'fastway couriers', NULL, NULL, 0.000, 0, 63.910, 'weight', 5, 'USD');
INSERT INTO "public"."shipping_shippingmethod" VALUES (19, 'Post Office', NULL, NULL, 0.000, 0, 88.840, 'price', 5, 'USD');
COMMIT;

-- ----------------------------
-- Table structure for shipping_shippingmethodtranslation
-- ----------------------------
DROP TABLE IF EXISTS "public"."shipping_shippingmethodtranslation";
CREATE TABLE "public"."shipping_shippingmethodtranslation" (
  "id" int4 NOT NULL DEFAULT nextval('shipping_shippingmethodtranslation_id_seq'::regclass),
  "language_code" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "shipping_method_id" int4 NOT NULL
)
;
ALTER TABLE "public"."shipping_shippingmethodtranslation" OWNER TO "saleor";

-- ----------------------------
-- Records of shipping_shippingmethodtranslation
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for shipping_shippingzone
-- ----------------------------
DROP TABLE IF EXISTS "public"."shipping_shippingzone";
CREATE TABLE "public"."shipping_shippingzone" (
  "id" int4 NOT NULL DEFAULT nextval('shipping_shippingzone_id_seq'::regclass),
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "countries" varchar(749) COLLATE "pg_catalog"."default" NOT NULL,
  "default" bool NOT NULL
)
;
ALTER TABLE "public"."shipping_shippingzone" OWNER TO "saleor";

-- ----------------------------
-- Records of shipping_shippingzone
-- ----------------------------
BEGIN;
INSERT INTO "public"."shipping_shippingzone" VALUES (1, 'Europe', 'AX,AL,AD,AT,BY,BE,BA,BG,HR,CZ,DK,EE,FO,FI,FR,DE,GI,GR,GG,VA,HU,IS,IE,IM,IT,JE,LV,LI,LT,LU,MK,MT,MD,MC,ME,NL,NO,PL,PT,RO,RU,SM,RS,SK,SI,ES,SJ,SE,CH,UA,GB', 'f');
INSERT INTO "public"."shipping_shippingzone" VALUES (2, 'Oceania', 'AS,AU,CX,CC,CK,FJ,PF,GU,HM,KI,MH,FM,NR,NC,NZ,NU,NF,MP,PW,PG,PN,WS,SB,TK,TO,TV,UM,VU,WF', 'f');
INSERT INTO "public"."shipping_shippingzone" VALUES (3, 'Asia', 'AF,AM,AZ,BH,BD,BT,BN,KH,CN,CY,GE,HK,IN,ID,IR,IQ,IL,JP,JO,KZ,KP,KR,KW,KG,LA,LB,MO,MY,MV,MN,MM,NP,OM,PK,PS,PH,QA,SA,SG,LK,SY,TW,TJ,TH,TL,TR,TM,AE,UZ,VN,YE', 'f');
INSERT INTO "public"."shipping_shippingzone" VALUES (4, 'Americas', 'AI,AG,AR,AW,BS,BB,BZ,BM,BO,BQ,BV,BR,CA,KY,CL,CO,CR,CU,CW,DM,DO,EC,SV,FK,GF,GL,GD,GP,GT,GY,HT,HN,JM,MQ,MX,MS,NI,PA,PY,PE,PR,BL,KN,LC,MF,PM,VC,SX,GS,SR,TT,TC,US,UY,VE,VG,VI', 'f');
INSERT INTO "public"."shipping_shippingzone" VALUES (5, 'Africa', 'DZ,AO,BJ,BW,IO,BF,BI,CV,CM,CF,TD,KM,CG,CD,CI,DJ,EG,GQ,ER,SZ,ET,TF,GA,GM,GH,GN,GW,KE,LS,LR,LY,MG,MW,ML,MR,MU,YT,MA,MZ,NA,NE,NG,RE,RW,SH,ST,SN,SC,SL,SO,ZA,SS,SD,TZ,TG,TN,UG,EH,ZM,ZW', 'f');
COMMIT;

-- ----------------------------
-- Table structure for site_authorizationkey
-- ----------------------------
DROP TABLE IF EXISTS "public"."site_authorizationkey";
CREATE TABLE "public"."site_authorizationkey" (
  "id" int4 NOT NULL DEFAULT nextval('site_authorizationkey_id_seq'::regclass),
  "name" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "key" text COLLATE "pg_catalog"."default" NOT NULL,
  "password" text COLLATE "pg_catalog"."default" NOT NULL,
  "site_settings_id" int4 NOT NULL
)
;
ALTER TABLE "public"."site_authorizationkey" OWNER TO "saleor";

-- ----------------------------
-- Records of site_authorizationkey
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for site_sitesettings
-- ----------------------------
DROP TABLE IF EXISTS "public"."site_sitesettings";
CREATE TABLE "public"."site_sitesettings" (
  "id" int4 NOT NULL DEFAULT nextval('site_sitesettings_id_seq'::regclass),
  "header_text" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(500) COLLATE "pg_catalog"."default" NOT NULL,
  "site_id" int4 NOT NULL,
  "bottom_menu_id" int4,
  "top_menu_id" int4,
  "display_gross_prices" bool NOT NULL,
  "include_taxes_in_prices" bool NOT NULL,
  "charge_taxes_on_shipping" bool NOT NULL,
  "track_inventory_by_default" bool NOT NULL,
  "homepage_collection_id" int4,
  "default_weight_unit" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "automatic_fulfillment_digital_products" bool NOT NULL,
  "default_digital_max_downloads" int4,
  "default_digital_url_valid_days" int4,
  "company_address_id" int4,
  "default_mail_sender_address" varchar(254) COLLATE "pg_catalog"."default",
  "default_mail_sender_name" varchar(78) COLLATE "pg_catalog"."default" NOT NULL,
  "customer_set_password_url" varchar(255) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."site_sitesettings" OWNER TO "saleor";

-- ----------------------------
-- Records of site_sitesettings
-- ----------------------------
BEGIN;
INSERT INTO "public"."site_sitesettings" VALUES (1, 'Test Saleor - a sample shop!', '', 1, 2, 1, 't', 't', 't', 't', 1, 'kg', 'f', NULL, NULL, NULL, NULL, '', NULL);
COMMIT;

-- ----------------------------
-- Table structure for site_sitesettingstranslation
-- ----------------------------
DROP TABLE IF EXISTS "public"."site_sitesettingstranslation";
CREATE TABLE "public"."site_sitesettingstranslation" (
  "id" int4 NOT NULL DEFAULT nextval('site_sitesettingstranslation_id_seq'::regclass),
  "language_code" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "header_text" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(500) COLLATE "pg_catalog"."default" NOT NULL,
  "site_settings_id" int4 NOT NULL
)
;
ALTER TABLE "public"."site_sitesettingstranslation" OWNER TO "saleor";

-- ----------------------------
-- Records of site_sitesettingstranslation
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for warehouse_allocation
-- ----------------------------
DROP TABLE IF EXISTS "public"."warehouse_allocation";
CREATE TABLE "public"."warehouse_allocation" (
  "id" int4 NOT NULL DEFAULT nextval('warehouse_allocation_id_seq'::regclass),
  "quantity_allocated" int4 NOT NULL,
  "order_line_id" int4 NOT NULL,
  "stock_id" int4 NOT NULL
)
;
ALTER TABLE "public"."warehouse_allocation" OWNER TO "saleor";

-- ----------------------------
-- Records of warehouse_allocation
-- ----------------------------
BEGIN;
INSERT INTO "public"."warehouse_allocation" VALUES (1, 1, 1, 644);
INSERT INTO "public"."warehouse_allocation" VALUES (2, 1, 2, 494);
INSERT INTO "public"."warehouse_allocation" VALUES (3, 1, 3, 164);
INSERT INTO "public"."warehouse_allocation" VALUES (4, 1, 4, 489);
INSERT INTO "public"."warehouse_allocation" VALUES (5, 2, 5, 69);
INSERT INTO "public"."warehouse_allocation" VALUES (6, 4, 6, 544);
INSERT INTO "public"."warehouse_allocation" VALUES (7, 4, 7, 104);
INSERT INTO "public"."warehouse_allocation" VALUES (8, 1, 8, 353);
INSERT INTO "public"."warehouse_allocation" VALUES (9, 1, 9, 378);
INSERT INTO "public"."warehouse_allocation" VALUES (11, 4, 11, 573);
INSERT INTO "public"."warehouse_allocation" VALUES (10, 2, 10, 523);
INSERT INTO "public"."warehouse_allocation" VALUES (12, 2, 12, 128);
INSERT INTO "public"."warehouse_allocation" VALUES (13, 1, 13, 310);
INSERT INTO "public"."warehouse_allocation" VALUES (14, 4, 14, 317);
INSERT INTO "public"."warehouse_allocation" VALUES (15, 1, 15, 217);
INSERT INTO "public"."warehouse_allocation" VALUES (18, 2, 18, 303);
INSERT INTO "public"."warehouse_allocation" VALUES (16, 0, 16, 113);
INSERT INTO "public"."warehouse_allocation" VALUES (17, 0, 17, 368);
INSERT INTO "public"."warehouse_allocation" VALUES (19, 4, 19, 240);
INSERT INTO "public"."warehouse_allocation" VALUES (21, 1, 21, 555);
INSERT INTO "public"."warehouse_allocation" VALUES (20, 1, 20, 210);
INSERT INTO "public"."warehouse_allocation" VALUES (22, 0, 22, 430);
INSERT INTO "public"."warehouse_allocation" VALUES (23, 0, 23, 505);
INSERT INTO "public"."warehouse_allocation" VALUES (24, 2, 24, 645);
INSERT INTO "public"."warehouse_allocation" VALUES (26, 3, 26, 231);
INSERT INTO "public"."warehouse_allocation" VALUES (25, 2, 25, 116);
INSERT INTO "public"."warehouse_allocation" VALUES (28, 3, 28, 105);
INSERT INTO "public"."warehouse_allocation" VALUES (27, 2, 27, 50);
INSERT INTO "public"."warehouse_allocation" VALUES (30, 4, 30, 586);
INSERT INTO "public"."warehouse_allocation" VALUES (29, 0, 29, 276);
INSERT INTO "public"."warehouse_allocation" VALUES (31, 0, 31, 519);
INSERT INTO "public"."warehouse_allocation" VALUES (32, 0, 32, 170);
INSERT INTO "public"."warehouse_allocation" VALUES (33, 3, 33, 83);
INSERT INTO "public"."warehouse_allocation" VALUES (34, 1, 34, 408);
INSERT INTO "public"."warehouse_allocation" VALUES (35, 4, 35, 128);
INSERT INTO "public"."warehouse_allocation" VALUES (36, 0, 36, 203);
INSERT INTO "public"."warehouse_allocation" VALUES (38, 3, 38, 278);
INSERT INTO "public"."warehouse_allocation" VALUES (37, 0, 37, 273);
INSERT INTO "public"."warehouse_allocation" VALUES (39, 1, 39, 628);
INSERT INTO "public"."warehouse_allocation" VALUES (40, 0, 40, 249);
INSERT INTO "public"."warehouse_allocation" VALUES (41, 0, 41, 319);
INSERT INTO "public"."warehouse_allocation" VALUES (42, 0, 42, 154);
INSERT INTO "public"."warehouse_allocation" VALUES (43, 0, 43, 539);
INSERT INTO "public"."warehouse_allocation" VALUES (44, 1, 44, 63);
INSERT INTO "public"."warehouse_allocation" VALUES (45, 0, 45, 243);
INSERT INTO "public"."warehouse_allocation" VALUES (46, 1, 46, 89);
INSERT INTO "public"."warehouse_allocation" VALUES (49, 3, 49, 403);
INSERT INTO "public"."warehouse_allocation" VALUES (47, 2, 47, 588);
INSERT INTO "public"."warehouse_allocation" VALUES (48, 0, 48, 153);
COMMIT;

-- ----------------------------
-- Table structure for warehouse_stock
-- ----------------------------
DROP TABLE IF EXISTS "public"."warehouse_stock";
CREATE TABLE "public"."warehouse_stock" (
  "id" int4 NOT NULL DEFAULT nextval('warehouse_stock_id_seq'::regclass),
  "quantity" int4 NOT NULL,
  "product_variant_id" int4 NOT NULL,
  "warehouse_id" uuid NOT NULL
)
;
ALTER TABLE "public"."warehouse_stock" OWNER TO "saleor";

-- ----------------------------
-- Records of warehouse_stock
-- ----------------------------
BEGIN;
INSERT INTO "public"."warehouse_stock" VALUES (1, 412, 171, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (2, 412, 171, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (3, 412, 171, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (4, 412, 171, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (5, 412, 171, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (6, 207, 172, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (7, 207, 172, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (8, 207, 172, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (9, 207, 172, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (10, 207, 172, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (11, 188, 173, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (12, 188, 173, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (13, 188, 173, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (14, 188, 173, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (15, 188, 173, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (16, 128, 174, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (17, 128, 174, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (18, 128, 174, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (19, 128, 174, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (20, 128, 174, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (21, 375, 175, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (22, 375, 175, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (23, 375, 175, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (24, 375, 175, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (25, 375, 175, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (26, 353, 176, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (27, 353, 176, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (28, 353, 176, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (29, 353, 176, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (30, 353, 176, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (31, 298, 177, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (32, 298, 177, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (33, 298, 177, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (34, 298, 177, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (35, 298, 177, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (36, 435, 178, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (37, 435, 178, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (38, 435, 178, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (39, 435, 178, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (40, 435, 178, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (41, 370, 179, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (42, 370, 179, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (43, 370, 179, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (44, 370, 179, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (45, 370, 179, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (46, 111, 180, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (47, 111, 180, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (48, 111, 180, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (49, 111, 180, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (51, 440, 181, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (52, 440, 181, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (53, 440, 181, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (54, 440, 181, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (55, 440, 181, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (56, 477, 182, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (57, 477, 182, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (58, 477, 182, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (59, 477, 182, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (60, 477, 182, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (61, 379, 183, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (62, 379, 183, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (64, 379, 183, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (65, 379, 183, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (66, 153, 184, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (67, 153, 184, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (68, 153, 184, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (70, 153, 184, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (71, 222, 185, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (72, 222, 185, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (73, 222, 185, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (74, 222, 185, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (75, 222, 185, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (76, 152, 190, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (77, 152, 190, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (78, 152, 190, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (79, 152, 190, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (80, 152, 190, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (81, 450, 191, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (82, 450, 191, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (84, 450, 191, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (85, 450, 191, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (86, 307, 192, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (87, 307, 192, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (88, 307, 192, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (90, 307, 192, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (91, 191, 193, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (92, 191, 193, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (93, 191, 193, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (94, 191, 193, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (95, 191, 193, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (96, 289, 194, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (97, 289, 194, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (98, 289, 194, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (99, 289, 194, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (100, 289, 194, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (101, 231, 195, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (102, 231, 195, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (103, 231, 195, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (106, 472, 196, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (107, 472, 196, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (108, 472, 196, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (109, 472, 196, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (110, 472, 196, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (111, 119, 197, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (112, 119, 197, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (114, 119, 197, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (115, 119, 197, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (117, 241, 198, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (118, 241, 198, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (119, 241, 198, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (120, 241, 198, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (121, 270, 199, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (122, 270, 199, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (123, 270, 199, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (124, 270, 199, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (125, 270, 199, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (126, 116, 200, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (127, 116, 200, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (129, 116, 200, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (130, 116, 200, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (131, 352, 202, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (132, 352, 202, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (133, 352, 202, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (134, 352, 202, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (135, 352, 202, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (136, 162, 203, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (104, 235, 195, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (63, 380, 183, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (116, 244, 198, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (50, 115, 180, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (105, 234, 195, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (83, 453, 191, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (128, 123, 200, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (89, 311, 192, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (137, 162, 203, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (138, 162, 203, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (139, 162, 203, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (140, 162, 203, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (141, 116, 204, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (142, 116, 204, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (143, 116, 204, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (144, 116, 204, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (145, 116, 204, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (146, 402, 205, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (147, 402, 205, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (148, 402, 205, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (149, 402, 205, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (150, 402, 205, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (151, 294, 206, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (152, 294, 206, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (155, 294, 206, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (156, 139, 207, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (157, 139, 207, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (158, 139, 207, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (159, 139, 207, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (160, 139, 207, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (161, 189, 208, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (162, 189, 208, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (163, 189, 208, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (165, 189, 208, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (166, 134, 209, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (167, 134, 209, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (168, 134, 209, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (169, 134, 209, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (171, 409, 210, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (172, 409, 210, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (173, 409, 210, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (174, 409, 210, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (175, 409, 210, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (176, 211, 211, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (177, 211, 211, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (178, 211, 211, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (179, 211, 211, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (180, 211, 211, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (181, 500, 212, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (182, 500, 212, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (183, 500, 212, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (184, 500, 212, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (185, 500, 212, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (186, 116, 213, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (187, 116, 213, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (188, 116, 213, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (189, 116, 213, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (190, 116, 213, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (191, 136, 214, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (192, 136, 214, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (193, 136, 214, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (194, 136, 214, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (195, 136, 214, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (196, 457, 215, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (197, 457, 215, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (198, 457, 215, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (199, 457, 215, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (200, 457, 215, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (201, 373, 216, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (202, 373, 216, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (204, 373, 216, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (205, 373, 216, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (206, 292, 217, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (207, 292, 217, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (208, 292, 217, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (209, 292, 217, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (211, 408, 218, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (212, 408, 218, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (213, 408, 218, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (214, 408, 218, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (215, 408, 218, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (216, 160, 219, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (218, 160, 219, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (219, 160, 219, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (220, 160, 219, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (221, 358, 220, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (222, 358, 220, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (223, 358, 220, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (224, 358, 220, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (225, 358, 220, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (226, 376, 221, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (227, 376, 221, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (228, 376, 221, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (229, 376, 221, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (230, 376, 221, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (232, 442, 222, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (233, 442, 222, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (234, 442, 222, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (235, 442, 222, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (236, 299, 223, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (237, 299, 223, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (238, 299, 223, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (239, 299, 223, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (241, 164, 224, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (242, 164, 224, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (244, 164, 224, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (245, 164, 224, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (246, 379, 225, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (247, 379, 225, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (248, 379, 225, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (250, 379, 225, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (251, 264, 242, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (252, 264, 242, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (253, 264, 242, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (254, 264, 242, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (255, 264, 242, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (256, 360, 243, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (257, 360, 243, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (258, 360, 243, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (259, 360, 243, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (260, 360, 243, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (261, 416, 244, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (262, 416, 244, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (263, 416, 244, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (264, 416, 244, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (265, 416, 244, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (266, 395, 245, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (267, 395, 245, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (268, 395, 245, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (269, 395, 245, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (270, 395, 245, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (271, 211, 246, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (272, 211, 246, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (217, 161, 219, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (240, 303, 223, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (231, 445, 222, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (170, 136, 209, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (203, 375, 216, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (249, 380, 225, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (154, 295, 206, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (243, 165, 224, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (153, 296, 206, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (274, 211, 246, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (275, 211, 246, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (277, 279, 247, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (279, 279, 247, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (280, 279, 247, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (281, 378, 248, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (282, 378, 248, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (283, 378, 248, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (284, 378, 248, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (285, 378, 248, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (286, 497, 249, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (287, 497, 249, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (288, 497, 249, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (289, 497, 249, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (290, 497, 249, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (291, 402, 250, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (292, 402, 250, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (293, 402, 250, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (294, 402, 250, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (295, 402, 250, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (296, 189, 251, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (297, 189, 251, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (298, 189, 251, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (299, 189, 251, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (300, 189, 251, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (301, 403, 252, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (302, 403, 252, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (304, 403, 252, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (305, 403, 252, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (306, 179, 253, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (307, 179, 253, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (308, 179, 253, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (309, 179, 253, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (311, 301, 254, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (312, 301, 254, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (313, 301, 254, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (314, 301, 254, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (315, 301, 254, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (316, 251, 255, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (318, 251, 255, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (320, 251, 255, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (321, 209, 256, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (322, 209, 256, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (323, 209, 256, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (324, 209, 256, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (325, 209, 256, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (326, 215, 257, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (327, 215, 257, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (328, 215, 257, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (329, 215, 257, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (330, 215, 257, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (331, 142, 258, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (332, 142, 258, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (333, 142, 258, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (334, 142, 258, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (335, 142, 258, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (336, 295, 259, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (337, 295, 259, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (338, 295, 259, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (339, 295, 259, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (340, 295, 259, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (341, 142, 260, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (342, 142, 260, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (343, 142, 260, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (344, 142, 260, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (345, 142, 260, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (346, 206, 261, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (347, 206, 261, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (348, 206, 261, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (349, 206, 261, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (350, 206, 261, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (351, 280, 262, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (352, 280, 262, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (354, 280, 262, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (355, 280, 262, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (356, 228, 263, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (357, 228, 263, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (358, 228, 263, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (359, 228, 263, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (360, 228, 263, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (361, 370, 264, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (362, 370, 264, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (363, 370, 264, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (364, 370, 264, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (365, 370, 264, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (366, 308, 265, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (367, 308, 265, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (369, 308, 265, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (370, 308, 265, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (371, 407, 266, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (372, 407, 266, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (373, 407, 266, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (374, 407, 266, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (375, 407, 266, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (376, 183, 267, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (377, 183, 267, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (379, 183, 267, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (380, 183, 267, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (381, 377, 268, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (382, 377, 268, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (383, 377, 268, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (384, 377, 268, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (385, 377, 268, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (386, 369, 269, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (387, 369, 269, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (388, 369, 269, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (389, 369, 269, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (390, 369, 269, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (391, 121, 270, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (392, 121, 270, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (393, 121, 270, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (394, 121, 270, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (395, 121, 270, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (396, 469, 271, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (397, 469, 271, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (398, 469, 271, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (399, 469, 271, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (400, 469, 271, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (401, 484, 272, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (402, 484, 272, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (404, 484, 272, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (405, 484, 272, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (406, 289, 273, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (407, 289, 273, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (378, 184, 267, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (310, 182, 253, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (368, 310, 265, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (303, 405, 252, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (276, 280, 247, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (408, 290, 273, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (273, 213, 246, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (278, 282, 247, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (319, 254, 255, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (403, 487, 272, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (409, 289, 273, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (410, 289, 273, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (411, 145, 274, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (412, 145, 274, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (413, 145, 274, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (414, 145, 274, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (415, 145, 274, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (416, 371, 275, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (417, 371, 275, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (418, 371, 275, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (419, 371, 275, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (420, 371, 275, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (421, 453, 276, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (422, 453, 276, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (423, 453, 276, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (424, 453, 276, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (425, 453, 276, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (426, 373, 277, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (427, 373, 277, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (428, 373, 277, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (429, 373, 277, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (431, 447, 278, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (432, 447, 278, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (433, 447, 278, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (434, 447, 278, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (435, 447, 278, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (436, 335, 279, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (437, 335, 279, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (438, 335, 279, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (439, 335, 279, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (440, 335, 279, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (441, 302, 280, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (442, 302, 280, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (443, 302, 280, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (444, 302, 280, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (445, 302, 280, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (446, 184, 281, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (447, 184, 281, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (448, 184, 281, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (449, 184, 281, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (450, 184, 281, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (451, 178, 282, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (452, 178, 282, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (453, 178, 282, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (454, 178, 282, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (455, 178, 282, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (456, 428, 283, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (457, 428, 283, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (458, 428, 283, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (459, 428, 283, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (460, 428, 283, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (461, 419, 284, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (462, 419, 284, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (463, 419, 284, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (464, 419, 284, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (465, 419, 284, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (466, 495, 285, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (467, 495, 285, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (468, 495, 285, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (469, 495, 285, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (470, 495, 285, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (471, 229, 286, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (472, 229, 286, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (473, 229, 286, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (474, 229, 286, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (475, 229, 286, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (476, 271, 287, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (477, 271, 287, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (478, 271, 287, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (479, 271, 287, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (480, 271, 287, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (481, 205, 288, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (482, 205, 288, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (483, 205, 288, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (484, 205, 288, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (485, 205, 288, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (486, 303, 289, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (487, 303, 289, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (488, 303, 289, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (490, 303, 289, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (491, 441, 290, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (492, 441, 290, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (493, 441, 290, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (495, 441, 290, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (496, 346, 291, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (497, 346, 291, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (498, 346, 291, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (499, 346, 291, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (500, 346, 291, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (501, 220, 292, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (502, 220, 292, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (503, 220, 292, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (504, 220, 292, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (506, 335, 293, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (507, 335, 293, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (508, 335, 293, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (509, 335, 293, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (510, 335, 293, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (511, 442, 294, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (512, 442, 294, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (513, 442, 294, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (514, 442, 294, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (515, 442, 294, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (516, 120, 295, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (517, 120, 295, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (518, 120, 295, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (520, 120, 295, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (521, 445, 296, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (522, 445, 296, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (524, 445, 296, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (525, 445, 296, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (526, 375, 297, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (527, 375, 297, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (528, 375, 297, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (529, 375, 297, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (530, 375, 297, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (531, 340, 298, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (532, 340, 298, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (533, 340, 298, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (534, 340, 298, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (535, 340, 298, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (536, 443, 299, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (537, 443, 299, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (538, 443, 299, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (540, 443, 299, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (541, 415, 300, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (542, 415, 300, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (543, 415, 300, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (489, 304, 289, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (544, 419, 300, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (430, 375, 277, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (505, 223, 292, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (519, 122, 295, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (539, 444, 299, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (545, 415, 300, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (546, 318, 301, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (547, 318, 301, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (548, 318, 301, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (549, 318, 301, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (550, 318, 301, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (551, 464, 302, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (552, 464, 302, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (553, 464, 302, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (554, 464, 302, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (556, 159, 303, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (557, 159, 303, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (558, 159, 303, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (559, 159, 303, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (560, 159, 303, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (561, 334, 304, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (562, 334, 304, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (563, 334, 304, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (564, 334, 304, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (565, 334, 304, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (566, 464, 305, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (567, 464, 305, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (568, 464, 305, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (569, 464, 305, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (570, 464, 305, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (571, 348, 306, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (572, 348, 306, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (574, 348, 306, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (575, 348, 306, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (576, 363, 307, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (577, 363, 307, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (578, 363, 307, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (579, 363, 307, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (580, 363, 307, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (581, 140, 308, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (582, 140, 308, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (583, 140, 308, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (584, 140, 308, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (585, 140, 308, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (587, 408, 309, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (589, 408, 309, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (590, 408, 309, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (591, 446, 310, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (592, 446, 310, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (593, 446, 310, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (594, 446, 310, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (595, 446, 310, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (596, 451, 311, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (597, 451, 311, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (598, 451, 311, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (599, 451, 311, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (600, 451, 311, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (601, 424, 312, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (602, 424, 312, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (603, 424, 312, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (604, 424, 312, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (605, 424, 312, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (606, 332, 313, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (607, 332, 313, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (608, 332, 313, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (609, 332, 313, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (610, 332, 313, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (611, 413, 314, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (612, 413, 314, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (613, 413, 314, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (614, 413, 314, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (615, 413, 314, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (616, 491, 315, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (617, 491, 315, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (618, 491, 315, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (619, 491, 315, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (620, 491, 315, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (621, 291, 316, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (622, 291, 316, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (623, 291, 316, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (624, 291, 316, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (625, 291, 316, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (626, 498, 317, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (627, 498, 317, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (629, 498, 317, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (630, 498, 317, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (631, 367, 318, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (632, 367, 318, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (633, 367, 318, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (634, 367, 318, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (635, 367, 318, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (636, 386, 319, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (637, 386, 319, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (638, 386, 319, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (639, 386, 319, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (640, 386, 319, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (641, 353, 320, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (642, 353, 320, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (643, 353, 320, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (646, 190, 321, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (647, 190, 321, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (648, 190, 321, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (649, 190, 321, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (650, 190, 321, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (644, 356, 320, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (494, 444, 290, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (164, 191, 208, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (69, 155, 184, '09543311-5323-4e75-b67c-74e214f78b15');
INSERT INTO "public"."warehouse_stock" VALUES (353, 281, 262, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (523, 449, 296, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (573, 352, 306, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (317, 255, 255, '5b107f38-3023-40bd-8207-dbf57a03cc96');
INSERT INTO "public"."warehouse_stock" VALUES (113, 120, 197, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (210, 296, 217, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (555, 465, 302, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (645, 357, 320, '243018dd-91d0-4be1-830e-39246158e023');
INSERT INTO "public"."warehouse_stock" VALUES (586, 412, 309, 'f8b95c17-008b-4131-9b91-c240aef1cb05');
INSERT INTO "public"."warehouse_stock" VALUES (628, 501, 317, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
INSERT INTO "public"."warehouse_stock" VALUES (588, 411, 309, 'a805eb06-0e72-4d60-892a-cd149ddf42de');
COMMIT;

-- ----------------------------
-- Table structure for warehouse_warehouse
-- ----------------------------
DROP TABLE IF EXISTS "public"."warehouse_warehouse";
CREATE TABLE "public"."warehouse_warehouse" (
  "id" uuid NOT NULL,
  "name" varchar(250) COLLATE "pg_catalog"."default" NOT NULL,
  "company_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "email" varchar(254) COLLATE "pg_catalog"."default" NOT NULL,
  "address_id" int4 NOT NULL,
  "slug" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."warehouse_warehouse" OWNER TO "saleor";

-- ----------------------------
-- Records of warehouse_warehouse
-- ----------------------------
BEGIN;
INSERT INTO "public"."warehouse_warehouse" VALUES ('5b107f38-3023-40bd-8207-dbf57a03cc96', 'Europe', 'Robinson, Soto and Edwards', '', 1, 'europe');
INSERT INTO "public"."warehouse_warehouse" VALUES ('f8b95c17-008b-4131-9b91-c240aef1cb05', 'Oceania', 'Hunter, Hart and Gray', '', 2, 'oceania');
INSERT INTO "public"."warehouse_warehouse" VALUES ('a805eb06-0e72-4d60-892a-cd149ddf42de', 'Asia', 'Guzman-Miller', '', 3, 'asia');
INSERT INTO "public"."warehouse_warehouse" VALUES ('09543311-5323-4e75-b67c-74e214f78b15', 'Americas', 'Freeman-Hess', '', 4, 'americas');
INSERT INTO "public"."warehouse_warehouse" VALUES ('243018dd-91d0-4be1-830e-39246158e023', 'Africa', 'Harvey-Everett', '', 5, 'africa');
COMMIT;

-- ----------------------------
-- Table structure for warehouse_warehouse_shipping_zones
-- ----------------------------
DROP TABLE IF EXISTS "public"."warehouse_warehouse_shipping_zones";
CREATE TABLE "public"."warehouse_warehouse_shipping_zones" (
  "id" int4 NOT NULL DEFAULT nextval('warehouse_warehouse_shipping_zones_id_seq'::regclass),
  "warehouse_id" uuid NOT NULL,
  "shippingzone_id" int4 NOT NULL
)
;
ALTER TABLE "public"."warehouse_warehouse_shipping_zones" OWNER TO "saleor";

-- ----------------------------
-- Records of warehouse_warehouse_shipping_zones
-- ----------------------------
BEGIN;
INSERT INTO "public"."warehouse_warehouse_shipping_zones" VALUES (1, '5b107f38-3023-40bd-8207-dbf57a03cc96', 1);
INSERT INTO "public"."warehouse_warehouse_shipping_zones" VALUES (2, 'f8b95c17-008b-4131-9b91-c240aef1cb05', 2);
INSERT INTO "public"."warehouse_warehouse_shipping_zones" VALUES (3, 'a805eb06-0e72-4d60-892a-cd149ddf42de', 3);
INSERT INTO "public"."warehouse_warehouse_shipping_zones" VALUES (4, '09543311-5323-4e75-b67c-74e214f78b15', 4);
INSERT INTO "public"."warehouse_warehouse_shipping_zones" VALUES (5, '243018dd-91d0-4be1-830e-39246158e023', 5);
COMMIT;

-- ----------------------------
-- Table structure for webhook_webhook
-- ----------------------------
DROP TABLE IF EXISTS "public"."webhook_webhook";
CREATE TABLE "public"."webhook_webhook" (
  "id" int4 NOT NULL DEFAULT nextval('webhook_webhook_id_seq'::regclass),
  "target_url" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "is_active" bool NOT NULL,
  "secret_key" varchar(255) COLLATE "pg_catalog"."default",
  "app_id" int4 NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."webhook_webhook" OWNER TO "saleor";

-- ----------------------------
-- Records of webhook_webhook
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for webhook_webhookevent
-- ----------------------------
DROP TABLE IF EXISTS "public"."webhook_webhookevent";
CREATE TABLE "public"."webhook_webhookevent" (
  "id" int4 NOT NULL DEFAULT nextval('webhook_webhookevent_id_seq'::regclass),
  "event_type" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "webhook_id" int4 NOT NULL
)
;
ALTER TABLE "public"."webhook_webhookevent" OWNER TO "saleor";

-- ----------------------------
-- Records of webhook_webhookevent
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wishlist_wishlist
-- ----------------------------
DROP TABLE IF EXISTS "public"."wishlist_wishlist";
CREATE TABLE "public"."wishlist_wishlist" (
  "id" int4 NOT NULL DEFAULT nextval('wishlist_wishlist_id_seq'::regclass),
  "created_at" timestamptz(6) NOT NULL,
  "token" uuid NOT NULL,
  "user_id" int4
)
;
ALTER TABLE "public"."wishlist_wishlist" OWNER TO "saleor";

-- ----------------------------
-- Records of wishlist_wishlist
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wishlist_wishlistitem
-- ----------------------------
DROP TABLE IF EXISTS "public"."wishlist_wishlistitem";
CREATE TABLE "public"."wishlist_wishlistitem" (
  "id" int4 NOT NULL DEFAULT nextval('wishlist_wishlistitem_id_seq'::regclass),
  "created_at" timestamptz(6) NOT NULL,
  "product_id" int4 NOT NULL,
  "wishlist_id" int4 NOT NULL
)
;
ALTER TABLE "public"."wishlist_wishlistitem" OWNER TO "saleor";

-- ----------------------------
-- Records of wishlist_wishlistitem
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wishlist_wishlistitem_variants
-- ----------------------------
DROP TABLE IF EXISTS "public"."wishlist_wishlistitem_variants";
CREATE TABLE "public"."wishlist_wishlistitem_variants" (
  "id" int4 NOT NULL DEFAULT nextval('wishlist_wishlistitem_variants_id_seq'::regclass),
  "wishlistitem_id" int4 NOT NULL,
  "productvariant_id" int4 NOT NULL
)
;
ALTER TABLE "public"."wishlist_wishlistitem_variants" OWNER TO "saleor";

-- ----------------------------
-- Records of wishlist_wishlistitem_variants
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Function structure for akeys
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."akeys"("public"."hstore");
CREATE OR REPLACE FUNCTION "public"."akeys"("public"."hstore")
  RETURNS "pg_catalog"."_text" AS '$libdir/hstore', 'hstore_akeys'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."akeys"("public"."hstore") OWNER TO "saleor";

-- ----------------------------
-- Function structure for avals
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."avals"("public"."hstore");
CREATE OR REPLACE FUNCTION "public"."avals"("public"."hstore")
  RETURNS "pg_catalog"."_text" AS '$libdir/hstore', 'hstore_avals'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."avals"("public"."hstore") OWNER TO "saleor";

-- ----------------------------
-- Function structure for defined
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."defined"("public"."hstore", text);
CREATE OR REPLACE FUNCTION "public"."defined"("public"."hstore", text)
  RETURNS "pg_catalog"."bool" AS '$libdir/hstore', 'hstore_defined'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."defined"("public"."hstore", text) OWNER TO "saleor";

-- ----------------------------
-- Function structure for delete
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."delete"("public"."hstore", "public"."hstore");
CREATE OR REPLACE FUNCTION "public"."delete"("public"."hstore", "public"."hstore")
  RETURNS "public"."hstore" AS '$libdir/hstore', 'hstore_delete_hstore'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."delete"("public"."hstore", "public"."hstore") OWNER TO "saleor";

-- ----------------------------
-- Function structure for delete
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."delete"("public"."hstore", text);
CREATE OR REPLACE FUNCTION "public"."delete"("public"."hstore", text)
  RETURNS "public"."hstore" AS '$libdir/hstore', 'hstore_delete'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."delete"("public"."hstore", text) OWNER TO "saleor";

-- ----------------------------
-- Function structure for delete
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."delete"("public"."hstore", _text);
CREATE OR REPLACE FUNCTION "public"."delete"("public"."hstore", _text)
  RETURNS "public"."hstore" AS '$libdir/hstore', 'hstore_delete_array'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."delete"("public"."hstore", _text) OWNER TO "saleor";

-- ----------------------------
-- Function structure for each
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."each"("hs" "public"."hstore", OUT "key" text, OUT "value" text);
CREATE OR REPLACE FUNCTION "public"."each"(IN "hs" "public"."hstore", OUT "key" text, OUT "value" text)
  RETURNS SETOF "pg_catalog"."record" AS '$libdir/hstore', 'hstore_each'
  LANGUAGE c IMMUTABLE STRICT
  COST 1
  ROWS 1000;
ALTER FUNCTION "public"."each"("hs" "public"."hstore", OUT "key" text, OUT "value" text) OWNER TO "saleor";

-- ----------------------------
-- Function structure for exist
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."exist"("public"."hstore", text);
CREATE OR REPLACE FUNCTION "public"."exist"("public"."hstore", text)
  RETURNS "pg_catalog"."bool" AS '$libdir/hstore', 'hstore_exists'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."exist"("public"."hstore", text) OWNER TO "saleor";

-- ----------------------------
-- Function structure for exists_all
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."exists_all"("public"."hstore", _text);
CREATE OR REPLACE FUNCTION "public"."exists_all"("public"."hstore", _text)
  RETURNS "pg_catalog"."bool" AS '$libdir/hstore', 'hstore_exists_all'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."exists_all"("public"."hstore", _text) OWNER TO "saleor";

-- ----------------------------
-- Function structure for exists_any
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."exists_any"("public"."hstore", _text);
CREATE OR REPLACE FUNCTION "public"."exists_any"("public"."hstore", _text)
  RETURNS "pg_catalog"."bool" AS '$libdir/hstore', 'hstore_exists_any'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."exists_any"("public"."hstore", _text) OWNER TO "saleor";

-- ----------------------------
-- Function structure for fetchval
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."fetchval"("public"."hstore", text);
CREATE OR REPLACE FUNCTION "public"."fetchval"("public"."hstore", text)
  RETURNS "pg_catalog"."text" AS '$libdir/hstore', 'hstore_fetchval'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."fetchval"("public"."hstore", text) OWNER TO "saleor";

-- ----------------------------
-- Function structure for ghstore_compress
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ghstore_compress"(internal);
CREATE OR REPLACE FUNCTION "public"."ghstore_compress"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/hstore', 'ghstore_compress'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."ghstore_compress"(internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for ghstore_consistent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ghstore_consistent"(internal, "public"."hstore", int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."ghstore_consistent"(internal, "public"."hstore", int2, oid, internal)
  RETURNS "pg_catalog"."bool" AS '$libdir/hstore', 'ghstore_consistent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."ghstore_consistent"(internal, "public"."hstore", int2, oid, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for ghstore_decompress
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ghstore_decompress"(internal);
CREATE OR REPLACE FUNCTION "public"."ghstore_decompress"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/hstore', 'ghstore_decompress'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."ghstore_decompress"(internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for ghstore_in
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ghstore_in"(cstring);
CREATE OR REPLACE FUNCTION "public"."ghstore_in"(cstring)
  RETURNS "public"."ghstore" AS '$libdir/hstore', 'ghstore_in'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."ghstore_in"(cstring) OWNER TO "saleor";

-- ----------------------------
-- Function structure for ghstore_out
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ghstore_out"("public"."ghstore");
CREATE OR REPLACE FUNCTION "public"."ghstore_out"("public"."ghstore")
  RETURNS "pg_catalog"."cstring" AS '$libdir/hstore', 'ghstore_out'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."ghstore_out"("public"."ghstore") OWNER TO "saleor";

-- ----------------------------
-- Function structure for ghstore_penalty
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ghstore_penalty"(internal, internal, internal);
CREATE OR REPLACE FUNCTION "public"."ghstore_penalty"(internal, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/hstore', 'ghstore_penalty'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."ghstore_penalty"(internal, internal, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for ghstore_picksplit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ghstore_picksplit"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."ghstore_picksplit"(internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/hstore', 'ghstore_picksplit'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."ghstore_picksplit"(internal, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for ghstore_same
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ghstore_same"("public"."ghstore", "public"."ghstore", internal);
CREATE OR REPLACE FUNCTION "public"."ghstore_same"("public"."ghstore", "public"."ghstore", internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/hstore', 'ghstore_same'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."ghstore_same"("public"."ghstore", "public"."ghstore", internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for ghstore_union
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ghstore_union"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."ghstore_union"(internal, internal)
  RETURNS "public"."ghstore" AS '$libdir/hstore', 'ghstore_union'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."ghstore_union"(internal, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_btree_consistent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_btree_consistent"(internal, int2, anyelement, int4, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_btree_consistent"(internal, int2, anyelement, int4, internal, internal)
  RETURNS "pg_catalog"."bool" AS '$libdir/btree_gin', 'gin_btree_consistent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_btree_consistent"(internal, int2, anyelement, int4, internal, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_compare_prefix_anyenum
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_anyenum"(anyenum, anyenum, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_anyenum"(anyenum, anyenum, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_anyenum'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_compare_prefix_anyenum"(anyenum, anyenum, int2, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_compare_prefix_bit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_bit"(bit, bit, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_bit"(bit, bit, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_bit'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_compare_prefix_bit"(bit, bit, int2, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_compare_prefix_bool
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_bool"(bool, bool, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_bool"(bool, bool, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_bool'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_compare_prefix_bool"(bool, bool, int2, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_compare_prefix_bpchar
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_bpchar"(bpchar, bpchar, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_bpchar"(bpchar, bpchar, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_bpchar'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_compare_prefix_bpchar"(bpchar, bpchar, int2, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_compare_prefix_bytea
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_bytea"(bytea, bytea, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_bytea"(bytea, bytea, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_bytea'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_compare_prefix_bytea"(bytea, bytea, int2, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_compare_prefix_char
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_char"(char, char, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_char"(char, char, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_char'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_compare_prefix_char"(char, char, int2, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_compare_prefix_cidr
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_cidr"(cidr, cidr, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_cidr"(cidr, cidr, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_cidr'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_compare_prefix_cidr"(cidr, cidr, int2, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_compare_prefix_date
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_date"(date, date, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_date"(date, date, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_date'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_compare_prefix_date"(date, date, int2, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_compare_prefix_float4
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_float4"(float4, float4, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_float4"(float4, float4, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_float4'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_compare_prefix_float4"(float4, float4, int2, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_compare_prefix_float8
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_float8"(float8, float8, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_float8"(float8, float8, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_float8'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_compare_prefix_float8"(float8, float8, int2, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_compare_prefix_inet
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_inet"(inet, inet, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_inet"(inet, inet, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_inet'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_compare_prefix_inet"(inet, inet, int2, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_compare_prefix_int2
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_int2"(int2, int2, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_int2"(int2, int2, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_int2'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_compare_prefix_int2"(int2, int2, int2, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_compare_prefix_int4
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_int4"(int4, int4, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_int4"(int4, int4, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_int4'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_compare_prefix_int4"(int4, int4, int2, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_compare_prefix_int8
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_int8"(int8, int8, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_int8"(int8, int8, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_int8'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_compare_prefix_int8"(int8, int8, int2, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_compare_prefix_interval
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_interval"(interval, interval, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_interval"(interval, interval, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_interval'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_compare_prefix_interval"(interval, interval, int2, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_compare_prefix_macaddr
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_macaddr"(macaddr, macaddr, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_macaddr"(macaddr, macaddr, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_macaddr'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_compare_prefix_macaddr"(macaddr, macaddr, int2, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_compare_prefix_macaddr8
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_macaddr8"(macaddr8, macaddr8, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_macaddr8"(macaddr8, macaddr8, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_macaddr8'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_compare_prefix_macaddr8"(macaddr8, macaddr8, int2, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_compare_prefix_money
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_money"(money, money, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_money"(money, money, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_money'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_compare_prefix_money"(money, money, int2, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_compare_prefix_name
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_name"(name, name, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_name"(name, name, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_name'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_compare_prefix_name"(name, name, int2, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_compare_prefix_numeric
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_numeric"(numeric, numeric, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_numeric"(numeric, numeric, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_numeric'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_compare_prefix_numeric"(numeric, numeric, int2, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_compare_prefix_oid
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_oid"(oid, oid, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_oid"(oid, oid, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_oid'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_compare_prefix_oid"(oid, oid, int2, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_compare_prefix_text
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_text"(text, text, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_text"(text, text, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_text'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_compare_prefix_text"(text, text, int2, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_compare_prefix_time
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_time"(time, time, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_time"(time, time, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_time'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_compare_prefix_time"(time, time, int2, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_compare_prefix_timestamp
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_timestamp"(timestamp, timestamp, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_timestamp"(timestamp, timestamp, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_timestamp'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_compare_prefix_timestamp"(timestamp, timestamp, int2, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_compare_prefix_timestamptz
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_timestamptz"(timestamptz, timestamptz, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_timestamptz"(timestamptz, timestamptz, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_timestamptz'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_compare_prefix_timestamptz"(timestamptz, timestamptz, int2, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_compare_prefix_timetz
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_timetz"(timetz, timetz, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_timetz"(timetz, timetz, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_timetz'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_compare_prefix_timetz"(timetz, timetz, int2, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_compare_prefix_uuid
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_uuid"(uuid, uuid, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_uuid"(uuid, uuid, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_uuid'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_compare_prefix_uuid"(uuid, uuid, int2, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_compare_prefix_varbit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_varbit"(varbit, varbit, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_varbit"(varbit, varbit, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_varbit'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_compare_prefix_varbit"(varbit, varbit, int2, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_consistent_hstore
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_consistent_hstore"(internal, int2, "public"."hstore", int4, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_consistent_hstore"(internal, int2, "public"."hstore", int4, internal, internal)
  RETURNS "pg_catalog"."bool" AS '$libdir/hstore', 'gin_consistent_hstore'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_consistent_hstore"(internal, int2, "public"."hstore", int4, internal, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_enum_cmp
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_enum_cmp"(anyenum, anyenum);
CREATE OR REPLACE FUNCTION "public"."gin_enum_cmp"(anyenum, anyenum)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_enum_cmp'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_enum_cmp"(anyenum, anyenum) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_hstore
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_hstore"("public"."hstore", internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_hstore"("public"."hstore", internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/hstore', 'gin_extract_hstore'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_hstore"("public"."hstore", internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_hstore_query
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_hstore_query"("public"."hstore", internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_hstore_query"("public"."hstore", internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/hstore', 'gin_extract_hstore_query'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_hstore_query"("public"."hstore", internal, int2, internal, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_query_anyenum
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_anyenum"(anyenum, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_anyenum"(anyenum, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_anyenum'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_query_anyenum"(anyenum, internal, int2, internal, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_query_bit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_bit"(bit, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_bit"(bit, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_bit'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_query_bit"(bit, internal, int2, internal, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_query_bool
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_bool"(bool, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_bool"(bool, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_bool'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_query_bool"(bool, internal, int2, internal, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_query_bpchar
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_bpchar"(bpchar, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_bpchar"(bpchar, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_bpchar'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_query_bpchar"(bpchar, internal, int2, internal, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_query_bytea
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_bytea"(bytea, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_bytea"(bytea, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_bytea'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_query_bytea"(bytea, internal, int2, internal, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_query_char
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_char"(char, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_char"(char, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_char'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_query_char"(char, internal, int2, internal, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_query_cidr
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_cidr"(cidr, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_cidr"(cidr, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_cidr'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_query_cidr"(cidr, internal, int2, internal, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_query_date
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_date"(date, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_date"(date, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_date'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_query_date"(date, internal, int2, internal, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_query_float4
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_float4"(float4, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_float4"(float4, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_float4'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_query_float4"(float4, internal, int2, internal, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_query_float8
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_float8"(float8, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_float8"(float8, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_float8'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_query_float8"(float8, internal, int2, internal, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_query_inet
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_inet"(inet, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_inet"(inet, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_inet'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_query_inet"(inet, internal, int2, internal, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_query_int2
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_int2"(int2, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_int2"(int2, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_int2'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_query_int2"(int2, internal, int2, internal, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_query_int4
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_int4"(int4, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_int4"(int4, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_int4'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_query_int4"(int4, internal, int2, internal, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_query_int8
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_int8"(int8, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_int8"(int8, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_int8'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_query_int8"(int8, internal, int2, internal, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_query_interval
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_interval"(interval, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_interval"(interval, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_interval'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_query_interval"(interval, internal, int2, internal, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_query_macaddr
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_macaddr"(macaddr, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_macaddr"(macaddr, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_macaddr'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_query_macaddr"(macaddr, internal, int2, internal, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_query_macaddr8
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_macaddr8"(macaddr8, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_macaddr8"(macaddr8, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_macaddr8'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_query_macaddr8"(macaddr8, internal, int2, internal, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_query_money
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_money"(money, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_money"(money, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_money'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_query_money"(money, internal, int2, internal, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_query_name
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_name"(name, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_name"(name, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_name'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_query_name"(name, internal, int2, internal, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_query_numeric
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_numeric"(numeric, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_numeric"(numeric, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_numeric'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_query_numeric"(numeric, internal, int2, internal, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_query_oid
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_oid"(oid, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_oid"(oid, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_oid'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_query_oid"(oid, internal, int2, internal, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_query_text
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_text"(text, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_text"(text, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_text'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_query_text"(text, internal, int2, internal, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_query_time
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_time"(time, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_time"(time, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_time'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_query_time"(time, internal, int2, internal, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_query_timestamp
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_timestamp"(timestamp, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_timestamp"(timestamp, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_timestamp'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_query_timestamp"(timestamp, internal, int2, internal, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_query_timestamptz
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_timestamptz"(timestamptz, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_timestamptz"(timestamptz, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_timestamptz'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_query_timestamptz"(timestamptz, internal, int2, internal, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_query_timetz
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_timetz"(timetz, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_timetz"(timetz, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_timetz'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_query_timetz"(timetz, internal, int2, internal, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_query_trgm
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_trgm"(text, internal, int2, internal, internal, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_trgm"(text, internal, int2, internal, internal, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/pg_trgm', 'gin_extract_query_trgm'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_query_trgm"(text, internal, int2, internal, internal, internal, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_query_uuid
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_uuid"(uuid, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_uuid"(uuid, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_uuid'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_query_uuid"(uuid, internal, int2, internal, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_query_varbit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_varbit"(varbit, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_varbit"(varbit, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_varbit'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_query_varbit"(varbit, internal, int2, internal, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_value_anyenum
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_anyenum"(anyenum, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_anyenum"(anyenum, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_anyenum'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_value_anyenum"(anyenum, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_value_bit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_bit"(bit, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_bit"(bit, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_bit'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_value_bit"(bit, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_value_bool
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_bool"(bool, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_bool"(bool, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_bool'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_value_bool"(bool, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_value_bpchar
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_bpchar"(bpchar, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_bpchar"(bpchar, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_bpchar'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_value_bpchar"(bpchar, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_value_bytea
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_bytea"(bytea, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_bytea"(bytea, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_bytea'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_value_bytea"(bytea, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_value_char
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_char"(char, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_char"(char, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_char'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_value_char"(char, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_value_cidr
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_cidr"(cidr, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_cidr"(cidr, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_cidr'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_value_cidr"(cidr, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_value_date
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_date"(date, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_date"(date, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_date'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_value_date"(date, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_value_float4
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_float4"(float4, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_float4"(float4, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_float4'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_value_float4"(float4, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_value_float8
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_float8"(float8, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_float8"(float8, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_float8'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_value_float8"(float8, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_value_inet
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_inet"(inet, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_inet"(inet, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_inet'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_value_inet"(inet, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_value_int2
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_int2"(int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_int2"(int2, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_int2'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_value_int2"(int2, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_value_int4
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_int4"(int4, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_int4"(int4, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_int4'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_value_int4"(int4, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_value_int8
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_int8"(int8, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_int8"(int8, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_int8'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_value_int8"(int8, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_value_interval
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_interval"(interval, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_interval"(interval, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_interval'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_value_interval"(interval, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_value_macaddr
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_macaddr"(macaddr, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_macaddr"(macaddr, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_macaddr'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_value_macaddr"(macaddr, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_value_macaddr8
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_macaddr8"(macaddr8, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_macaddr8"(macaddr8, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_macaddr8'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_value_macaddr8"(macaddr8, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_value_money
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_money"(money, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_money"(money, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_money'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_value_money"(money, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_value_name
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_name"(name, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_name"(name, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_name'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_value_name"(name, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_value_numeric
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_numeric"(numeric, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_numeric"(numeric, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_numeric'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_value_numeric"(numeric, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_value_oid
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_oid"(oid, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_oid"(oid, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_oid'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_value_oid"(oid, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_value_text
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_text"(text, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_text"(text, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_text'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_value_text"(text, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_value_time
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_time"(time, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_time"(time, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_time'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_value_time"(time, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_value_timestamp
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_timestamp"(timestamp, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_timestamp"(timestamp, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_timestamp'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_value_timestamp"(timestamp, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_value_timestamptz
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_timestamptz"(timestamptz, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_timestamptz"(timestamptz, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_timestamptz'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_value_timestamptz"(timestamptz, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_value_timetz
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_timetz"(timetz, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_timetz"(timetz, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_timetz'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_value_timetz"(timetz, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_value_trgm
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_trgm"(text, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_trgm"(text, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/pg_trgm', 'gin_extract_value_trgm'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_value_trgm"(text, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_value_uuid
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_uuid"(uuid, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_uuid"(uuid, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_uuid'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_value_uuid"(uuid, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_extract_value_varbit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_varbit"(varbit, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_varbit"(varbit, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_varbit'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_extract_value_varbit"(varbit, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_numeric_cmp
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_numeric_cmp"(numeric, numeric);
CREATE OR REPLACE FUNCTION "public"."gin_numeric_cmp"(numeric, numeric)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_numeric_cmp'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_numeric_cmp"(numeric, numeric) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_trgm_consistent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_trgm_consistent"(internal, int2, text, int4, internal, internal, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_trgm_consistent"(internal, int2, text, int4, internal, internal, internal, internal)
  RETURNS "pg_catalog"."bool" AS '$libdir/pg_trgm', 'gin_trgm_consistent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_trgm_consistent"(internal, int2, text, int4, internal, internal, internal, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gin_trgm_triconsistent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_trgm_triconsistent"(internal, int2, text, int4, internal, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_trgm_triconsistent"(internal, int2, text, int4, internal, internal, internal)
  RETURNS "pg_catalog"."char" AS '$libdir/pg_trgm', 'gin_trgm_triconsistent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gin_trgm_triconsistent"(internal, int2, text, int4, internal, internal, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gtrgm_compress
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gtrgm_compress"(internal);
CREATE OR REPLACE FUNCTION "public"."gtrgm_compress"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/pg_trgm', 'gtrgm_compress'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gtrgm_compress"(internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gtrgm_consistent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gtrgm_consistent"(internal, text, int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."gtrgm_consistent"(internal, text, int2, oid, internal)
  RETURNS "pg_catalog"."bool" AS '$libdir/pg_trgm', 'gtrgm_consistent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gtrgm_consistent"(internal, text, int2, oid, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gtrgm_decompress
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gtrgm_decompress"(internal);
CREATE OR REPLACE FUNCTION "public"."gtrgm_decompress"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/pg_trgm', 'gtrgm_decompress'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gtrgm_decompress"(internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gtrgm_distance
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gtrgm_distance"(internal, text, int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."gtrgm_distance"(internal, text, int2, oid, internal)
  RETURNS "pg_catalog"."float8" AS '$libdir/pg_trgm', 'gtrgm_distance'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gtrgm_distance"(internal, text, int2, oid, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gtrgm_in
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gtrgm_in"(cstring);
CREATE OR REPLACE FUNCTION "public"."gtrgm_in"(cstring)
  RETURNS "public"."gtrgm" AS '$libdir/pg_trgm', 'gtrgm_in'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gtrgm_in"(cstring) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gtrgm_out
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gtrgm_out"("public"."gtrgm");
CREATE OR REPLACE FUNCTION "public"."gtrgm_out"("public"."gtrgm")
  RETURNS "pg_catalog"."cstring" AS '$libdir/pg_trgm', 'gtrgm_out'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gtrgm_out"("public"."gtrgm") OWNER TO "saleor";

-- ----------------------------
-- Function structure for gtrgm_penalty
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gtrgm_penalty"(internal, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gtrgm_penalty"(internal, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/pg_trgm', 'gtrgm_penalty'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gtrgm_penalty"(internal, internal, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gtrgm_picksplit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gtrgm_picksplit"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."gtrgm_picksplit"(internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/pg_trgm', 'gtrgm_picksplit'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gtrgm_picksplit"(internal, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gtrgm_same
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gtrgm_same"("public"."gtrgm", "public"."gtrgm", internal);
CREATE OR REPLACE FUNCTION "public"."gtrgm_same"("public"."gtrgm", "public"."gtrgm", internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/pg_trgm', 'gtrgm_same'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gtrgm_same"("public"."gtrgm", "public"."gtrgm", internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for gtrgm_union
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gtrgm_union"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."gtrgm_union"(internal, internal)
  RETURNS "public"."gtrgm" AS '$libdir/pg_trgm', 'gtrgm_union'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."gtrgm_union"(internal, internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for hs_concat
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hs_concat"("public"."hstore", "public"."hstore");
CREATE OR REPLACE FUNCTION "public"."hs_concat"("public"."hstore", "public"."hstore")
  RETURNS "public"."hstore" AS '$libdir/hstore', 'hstore_concat'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."hs_concat"("public"."hstore", "public"."hstore") OWNER TO "saleor";

-- ----------------------------
-- Function structure for hs_contained
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hs_contained"("public"."hstore", "public"."hstore");
CREATE OR REPLACE FUNCTION "public"."hs_contained"("public"."hstore", "public"."hstore")
  RETURNS "pg_catalog"."bool" AS '$libdir/hstore', 'hstore_contained'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."hs_contained"("public"."hstore", "public"."hstore") OWNER TO "saleor";

-- ----------------------------
-- Function structure for hs_contains
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hs_contains"("public"."hstore", "public"."hstore");
CREATE OR REPLACE FUNCTION "public"."hs_contains"("public"."hstore", "public"."hstore")
  RETURNS "pg_catalog"."bool" AS '$libdir/hstore', 'hstore_contains'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."hs_contains"("public"."hstore", "public"."hstore") OWNER TO "saleor";

-- ----------------------------
-- Function structure for hstore
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hstore"(record);
CREATE OR REPLACE FUNCTION "public"."hstore"(record)
  RETURNS "public"."hstore" AS '$libdir/hstore', 'hstore_from_record'
  LANGUAGE c IMMUTABLE
  COST 1;
ALTER FUNCTION "public"."hstore"(record) OWNER TO "saleor";

-- ----------------------------
-- Function structure for hstore
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hstore"(text, text);
CREATE OR REPLACE FUNCTION "public"."hstore"(text, text)
  RETURNS "public"."hstore" AS '$libdir/hstore', 'hstore_from_text'
  LANGUAGE c IMMUTABLE
  COST 1;
ALTER FUNCTION "public"."hstore"(text, text) OWNER TO "saleor";

-- ----------------------------
-- Function structure for hstore
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hstore"(_text, _text);
CREATE OR REPLACE FUNCTION "public"."hstore"(_text, _text)
  RETURNS "public"."hstore" AS '$libdir/hstore', 'hstore_from_arrays'
  LANGUAGE c IMMUTABLE
  COST 1;
ALTER FUNCTION "public"."hstore"(_text, _text) OWNER TO "saleor";

-- ----------------------------
-- Function structure for hstore
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hstore"(_text);
CREATE OR REPLACE FUNCTION "public"."hstore"(_text)
  RETURNS "public"."hstore" AS '$libdir/hstore', 'hstore_from_array'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."hstore"(_text) OWNER TO "saleor";

-- ----------------------------
-- Function structure for hstore_cmp
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hstore_cmp"("public"."hstore", "public"."hstore");
CREATE OR REPLACE FUNCTION "public"."hstore_cmp"("public"."hstore", "public"."hstore")
  RETURNS "pg_catalog"."int4" AS '$libdir/hstore', 'hstore_cmp'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."hstore_cmp"("public"."hstore", "public"."hstore") OWNER TO "saleor";

-- ----------------------------
-- Function structure for hstore_eq
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hstore_eq"("public"."hstore", "public"."hstore");
CREATE OR REPLACE FUNCTION "public"."hstore_eq"("public"."hstore", "public"."hstore")
  RETURNS "pg_catalog"."bool" AS '$libdir/hstore', 'hstore_eq'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."hstore_eq"("public"."hstore", "public"."hstore") OWNER TO "saleor";

-- ----------------------------
-- Function structure for hstore_ge
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hstore_ge"("public"."hstore", "public"."hstore");
CREATE OR REPLACE FUNCTION "public"."hstore_ge"("public"."hstore", "public"."hstore")
  RETURNS "pg_catalog"."bool" AS '$libdir/hstore', 'hstore_ge'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."hstore_ge"("public"."hstore", "public"."hstore") OWNER TO "saleor";

-- ----------------------------
-- Function structure for hstore_gt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hstore_gt"("public"."hstore", "public"."hstore");
CREATE OR REPLACE FUNCTION "public"."hstore_gt"("public"."hstore", "public"."hstore")
  RETURNS "pg_catalog"."bool" AS '$libdir/hstore', 'hstore_gt'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."hstore_gt"("public"."hstore", "public"."hstore") OWNER TO "saleor";

-- ----------------------------
-- Function structure for hstore_hash
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hstore_hash"("public"."hstore");
CREATE OR REPLACE FUNCTION "public"."hstore_hash"("public"."hstore")
  RETURNS "pg_catalog"."int4" AS '$libdir/hstore', 'hstore_hash'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."hstore_hash"("public"."hstore") OWNER TO "saleor";

-- ----------------------------
-- Function structure for hstore_in
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hstore_in"(cstring);
CREATE OR REPLACE FUNCTION "public"."hstore_in"(cstring)
  RETURNS "public"."hstore" AS '$libdir/hstore', 'hstore_in'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."hstore_in"(cstring) OWNER TO "saleor";

-- ----------------------------
-- Function structure for hstore_le
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hstore_le"("public"."hstore", "public"."hstore");
CREATE OR REPLACE FUNCTION "public"."hstore_le"("public"."hstore", "public"."hstore")
  RETURNS "pg_catalog"."bool" AS '$libdir/hstore', 'hstore_le'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."hstore_le"("public"."hstore", "public"."hstore") OWNER TO "saleor";

-- ----------------------------
-- Function structure for hstore_lt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hstore_lt"("public"."hstore", "public"."hstore");
CREATE OR REPLACE FUNCTION "public"."hstore_lt"("public"."hstore", "public"."hstore")
  RETURNS "pg_catalog"."bool" AS '$libdir/hstore', 'hstore_lt'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."hstore_lt"("public"."hstore", "public"."hstore") OWNER TO "saleor";

-- ----------------------------
-- Function structure for hstore_ne
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hstore_ne"("public"."hstore", "public"."hstore");
CREATE OR REPLACE FUNCTION "public"."hstore_ne"("public"."hstore", "public"."hstore")
  RETURNS "pg_catalog"."bool" AS '$libdir/hstore', 'hstore_ne'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."hstore_ne"("public"."hstore", "public"."hstore") OWNER TO "saleor";

-- ----------------------------
-- Function structure for hstore_out
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hstore_out"("public"."hstore");
CREATE OR REPLACE FUNCTION "public"."hstore_out"("public"."hstore")
  RETURNS "pg_catalog"."cstring" AS '$libdir/hstore', 'hstore_out'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."hstore_out"("public"."hstore") OWNER TO "saleor";

-- ----------------------------
-- Function structure for hstore_recv
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hstore_recv"(internal);
CREATE OR REPLACE FUNCTION "public"."hstore_recv"(internal)
  RETURNS "public"."hstore" AS '$libdir/hstore', 'hstore_recv'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."hstore_recv"(internal) OWNER TO "saleor";

-- ----------------------------
-- Function structure for hstore_send
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hstore_send"("public"."hstore");
CREATE OR REPLACE FUNCTION "public"."hstore_send"("public"."hstore")
  RETURNS "pg_catalog"."bytea" AS '$libdir/hstore', 'hstore_send'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."hstore_send"("public"."hstore") OWNER TO "saleor";

-- ----------------------------
-- Function structure for hstore_to_array
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hstore_to_array"("public"."hstore");
CREATE OR REPLACE FUNCTION "public"."hstore_to_array"("public"."hstore")
  RETURNS "pg_catalog"."_text" AS '$libdir/hstore', 'hstore_to_array'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."hstore_to_array"("public"."hstore") OWNER TO "saleor";

-- ----------------------------
-- Function structure for hstore_to_json
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hstore_to_json"("public"."hstore");
CREATE OR REPLACE FUNCTION "public"."hstore_to_json"("public"."hstore")
  RETURNS "pg_catalog"."json" AS '$libdir/hstore', 'hstore_to_json'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."hstore_to_json"("public"."hstore") OWNER TO "saleor";

-- ----------------------------
-- Function structure for hstore_to_json_loose
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hstore_to_json_loose"("public"."hstore");
CREATE OR REPLACE FUNCTION "public"."hstore_to_json_loose"("public"."hstore")
  RETURNS "pg_catalog"."json" AS '$libdir/hstore', 'hstore_to_json_loose'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."hstore_to_json_loose"("public"."hstore") OWNER TO "saleor";

-- ----------------------------
-- Function structure for hstore_to_jsonb
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hstore_to_jsonb"("public"."hstore");
CREATE OR REPLACE FUNCTION "public"."hstore_to_jsonb"("public"."hstore")
  RETURNS "pg_catalog"."jsonb" AS '$libdir/hstore', 'hstore_to_jsonb'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."hstore_to_jsonb"("public"."hstore") OWNER TO "saleor";

-- ----------------------------
-- Function structure for hstore_to_jsonb_loose
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hstore_to_jsonb_loose"("public"."hstore");
CREATE OR REPLACE FUNCTION "public"."hstore_to_jsonb_loose"("public"."hstore")
  RETURNS "pg_catalog"."jsonb" AS '$libdir/hstore', 'hstore_to_jsonb_loose'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."hstore_to_jsonb_loose"("public"."hstore") OWNER TO "saleor";

-- ----------------------------
-- Function structure for hstore_to_matrix
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hstore_to_matrix"("public"."hstore");
CREATE OR REPLACE FUNCTION "public"."hstore_to_matrix"("public"."hstore")
  RETURNS "pg_catalog"."_text" AS '$libdir/hstore', 'hstore_to_matrix'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."hstore_to_matrix"("public"."hstore") OWNER TO "saleor";

-- ----------------------------
-- Function structure for hstore_version_diag
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hstore_version_diag"("public"."hstore");
CREATE OR REPLACE FUNCTION "public"."hstore_version_diag"("public"."hstore")
  RETURNS "pg_catalog"."int4" AS '$libdir/hstore', 'hstore_version_diag'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."hstore_version_diag"("public"."hstore") OWNER TO "saleor";

-- ----------------------------
-- Function structure for isdefined
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."isdefined"("public"."hstore", text);
CREATE OR REPLACE FUNCTION "public"."isdefined"("public"."hstore", text)
  RETURNS "pg_catalog"."bool" AS '$libdir/hstore', 'hstore_defined'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."isdefined"("public"."hstore", text) OWNER TO "saleor";

-- ----------------------------
-- Function structure for isexists
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."isexists"("public"."hstore", text);
CREATE OR REPLACE FUNCTION "public"."isexists"("public"."hstore", text)
  RETURNS "pg_catalog"."bool" AS '$libdir/hstore', 'hstore_exists'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."isexists"("public"."hstore", text) OWNER TO "saleor";

-- ----------------------------
-- Function structure for populate_record
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."populate_record"(anyelement, "public"."hstore");
CREATE OR REPLACE FUNCTION "public"."populate_record"(anyelement, "public"."hstore")
  RETURNS "pg_catalog"."anyelement" AS '$libdir/hstore', 'hstore_populate_record'
  LANGUAGE c IMMUTABLE
  COST 1;
ALTER FUNCTION "public"."populate_record"(anyelement, "public"."hstore") OWNER TO "saleor";

-- ----------------------------
-- Function structure for set_limit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."set_limit"(float4);
CREATE OR REPLACE FUNCTION "public"."set_limit"(float4)
  RETURNS "pg_catalog"."float4" AS '$libdir/pg_trgm', 'set_limit'
  LANGUAGE c VOLATILE STRICT
  COST 1;
ALTER FUNCTION "public"."set_limit"(float4) OWNER TO "saleor";

-- ----------------------------
-- Function structure for show_limit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."show_limit"();
CREATE OR REPLACE FUNCTION "public"."show_limit"()
  RETURNS "pg_catalog"."float4" AS '$libdir/pg_trgm', 'show_limit'
  LANGUAGE c STABLE STRICT
  COST 1;
ALTER FUNCTION "public"."show_limit"() OWNER TO "saleor";

-- ----------------------------
-- Function structure for show_trgm
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."show_trgm"(text);
CREATE OR REPLACE FUNCTION "public"."show_trgm"(text)
  RETURNS "pg_catalog"."_text" AS '$libdir/pg_trgm', 'show_trgm'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."show_trgm"(text) OWNER TO "saleor";

-- ----------------------------
-- Function structure for similarity
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."similarity"(text, text);
CREATE OR REPLACE FUNCTION "public"."similarity"(text, text)
  RETURNS "pg_catalog"."float4" AS '$libdir/pg_trgm', 'similarity'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."similarity"(text, text) OWNER TO "saleor";

-- ----------------------------
-- Function structure for similarity_dist
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."similarity_dist"(text, text);
CREATE OR REPLACE FUNCTION "public"."similarity_dist"(text, text)
  RETURNS "pg_catalog"."float4" AS '$libdir/pg_trgm', 'similarity_dist'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."similarity_dist"(text, text) OWNER TO "saleor";

-- ----------------------------
-- Function structure for similarity_op
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."similarity_op"(text, text);
CREATE OR REPLACE FUNCTION "public"."similarity_op"(text, text)
  RETURNS "pg_catalog"."bool" AS '$libdir/pg_trgm', 'similarity_op'
  LANGUAGE c STABLE STRICT
  COST 1;
ALTER FUNCTION "public"."similarity_op"(text, text) OWNER TO "saleor";

-- ----------------------------
-- Function structure for skeys
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."skeys"("public"."hstore");
CREATE OR REPLACE FUNCTION "public"."skeys"("public"."hstore")
  RETURNS SETOF "pg_catalog"."text" AS '$libdir/hstore', 'hstore_skeys'
  LANGUAGE c IMMUTABLE STRICT
  COST 1
  ROWS 1000;
ALTER FUNCTION "public"."skeys"("public"."hstore") OWNER TO "saleor";

-- ----------------------------
-- Function structure for slice
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."slice"("public"."hstore", _text);
CREATE OR REPLACE FUNCTION "public"."slice"("public"."hstore", _text)
  RETURNS "public"."hstore" AS '$libdir/hstore', 'hstore_slice_to_hstore'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."slice"("public"."hstore", _text) OWNER TO "saleor";

-- ----------------------------
-- Function structure for slice_array
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."slice_array"("public"."hstore", _text);
CREATE OR REPLACE FUNCTION "public"."slice_array"("public"."hstore", _text)
  RETURNS "pg_catalog"."_text" AS '$libdir/hstore', 'hstore_slice_to_array'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."slice_array"("public"."hstore", _text) OWNER TO "saleor";

-- ----------------------------
-- Function structure for strict_word_similarity
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."strict_word_similarity"(text, text);
CREATE OR REPLACE FUNCTION "public"."strict_word_similarity"(text, text)
  RETURNS "pg_catalog"."float4" AS '$libdir/pg_trgm', 'strict_word_similarity'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."strict_word_similarity"(text, text) OWNER TO "saleor";

-- ----------------------------
-- Function structure for strict_word_similarity_commutator_op
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."strict_word_similarity_commutator_op"(text, text);
CREATE OR REPLACE FUNCTION "public"."strict_word_similarity_commutator_op"(text, text)
  RETURNS "pg_catalog"."bool" AS '$libdir/pg_trgm', 'strict_word_similarity_commutator_op'
  LANGUAGE c STABLE STRICT
  COST 1;
ALTER FUNCTION "public"."strict_word_similarity_commutator_op"(text, text) OWNER TO "saleor";

-- ----------------------------
-- Function structure for strict_word_similarity_dist_commutator_op
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."strict_word_similarity_dist_commutator_op"(text, text);
CREATE OR REPLACE FUNCTION "public"."strict_word_similarity_dist_commutator_op"(text, text)
  RETURNS "pg_catalog"."float4" AS '$libdir/pg_trgm', 'strict_word_similarity_dist_commutator_op'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."strict_word_similarity_dist_commutator_op"(text, text) OWNER TO "saleor";

-- ----------------------------
-- Function structure for strict_word_similarity_dist_op
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."strict_word_similarity_dist_op"(text, text);
CREATE OR REPLACE FUNCTION "public"."strict_word_similarity_dist_op"(text, text)
  RETURNS "pg_catalog"."float4" AS '$libdir/pg_trgm', 'strict_word_similarity_dist_op'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."strict_word_similarity_dist_op"(text, text) OWNER TO "saleor";

-- ----------------------------
-- Function structure for strict_word_similarity_op
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."strict_word_similarity_op"(text, text);
CREATE OR REPLACE FUNCTION "public"."strict_word_similarity_op"(text, text)
  RETURNS "pg_catalog"."bool" AS '$libdir/pg_trgm', 'strict_word_similarity_op'
  LANGUAGE c STABLE STRICT
  COST 1;
ALTER FUNCTION "public"."strict_word_similarity_op"(text, text) OWNER TO "saleor";

-- ----------------------------
-- Function structure for svals
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."svals"("public"."hstore");
CREATE OR REPLACE FUNCTION "public"."svals"("public"."hstore")
  RETURNS SETOF "pg_catalog"."text" AS '$libdir/hstore', 'hstore_svals'
  LANGUAGE c IMMUTABLE STRICT
  COST 1
  ROWS 1000;
ALTER FUNCTION "public"."svals"("public"."hstore") OWNER TO "saleor";

-- ----------------------------
-- Function structure for tconvert
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."tconvert"(text, text);
CREATE OR REPLACE FUNCTION "public"."tconvert"(text, text)
  RETURNS "public"."hstore" AS '$libdir/hstore', 'hstore_from_text'
  LANGUAGE c IMMUTABLE
  COST 1;
ALTER FUNCTION "public"."tconvert"(text, text) OWNER TO "saleor";

-- ----------------------------
-- Function structure for word_similarity
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."word_similarity"(text, text);
CREATE OR REPLACE FUNCTION "public"."word_similarity"(text, text)
  RETURNS "pg_catalog"."float4" AS '$libdir/pg_trgm', 'word_similarity'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."word_similarity"(text, text) OWNER TO "saleor";

-- ----------------------------
-- Function structure for word_similarity_commutator_op
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."word_similarity_commutator_op"(text, text);
CREATE OR REPLACE FUNCTION "public"."word_similarity_commutator_op"(text, text)
  RETURNS "pg_catalog"."bool" AS '$libdir/pg_trgm', 'word_similarity_commutator_op'
  LANGUAGE c STABLE STRICT
  COST 1;
ALTER FUNCTION "public"."word_similarity_commutator_op"(text, text) OWNER TO "saleor";

-- ----------------------------
-- Function structure for word_similarity_dist_commutator_op
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."word_similarity_dist_commutator_op"(text, text);
CREATE OR REPLACE FUNCTION "public"."word_similarity_dist_commutator_op"(text, text)
  RETURNS "pg_catalog"."float4" AS '$libdir/pg_trgm', 'word_similarity_dist_commutator_op'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."word_similarity_dist_commutator_op"(text, text) OWNER TO "saleor";

-- ----------------------------
-- Function structure for word_similarity_dist_op
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."word_similarity_dist_op"(text, text);
CREATE OR REPLACE FUNCTION "public"."word_similarity_dist_op"(text, text)
  RETURNS "pg_catalog"."float4" AS '$libdir/pg_trgm', 'word_similarity_dist_op'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION "public"."word_similarity_dist_op"(text, text) OWNER TO "saleor";

-- ----------------------------
-- Function structure for word_similarity_op
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."word_similarity_op"(text, text);
CREATE OR REPLACE FUNCTION "public"."word_similarity_op"(text, text)
  RETURNS "pg_catalog"."bool" AS '$libdir/pg_trgm', 'word_similarity_op'
  LANGUAGE c STABLE STRICT
  COST 1;
ALTER FUNCTION "public"."word_similarity_op"(text, text) OWNER TO "saleor";

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."account_customerevent_id_seq"
OWNED BY "public"."account_customerevent"."id";
SELECT setval('"public"."account_customerevent_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."account_customernote_id_seq"
OWNED BY "public"."account_customernote"."id";
SELECT setval('"public"."account_customernote_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."account_serviceaccount_id_seq"
OWNED BY "public"."app_app"."id";
SELECT setval('"public"."account_serviceaccount_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."account_serviceaccount_permissions_id_seq"
OWNED BY "public"."app_app_permissions"."id";
SELECT setval('"public"."account_serviceaccount_permissions_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."account_serviceaccounttoken_id_seq"
OWNED BY "public"."app_apptoken"."id";
SELECT setval('"public"."account_serviceaccounttoken_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."account_staffnotificationrecipient_id_seq"
OWNED BY "public"."account_staffnotificationrecipient"."id";
SELECT setval('"public"."account_staffnotificationrecipient_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."app_appinstallation_id_seq"
OWNED BY "public"."app_appinstallation"."id";
SELECT setval('"public"."app_appinstallation_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."app_appinstallation_permissions_id_seq"
OWNED BY "public"."app_appinstallation_permissions"."id";
SELECT setval('"public"."app_appinstallation_permissions_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."auth_group_id_seq"
OWNED BY "public"."auth_group"."id";
SELECT setval('"public"."auth_group_id_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."auth_group_permissions_id_seq"
OWNED BY "public"."auth_group_permissions"."id";
SELECT setval('"public"."auth_group_permissions_id_seq"', 20, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."auth_permission_id_seq"
OWNED BY "public"."auth_permission"."id";
SELECT setval('"public"."auth_permission_id_seq"', 316, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."cart_cartline_id_seq"
OWNED BY "public"."checkout_checkoutline"."id";
SELECT setval('"public"."cart_cartline_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."checkout_checkout_gift_cards_id_seq"
OWNED BY "public"."checkout_checkout_gift_cards"."id";
SELECT setval('"public"."checkout_checkout_gift_cards_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."csv_exportevent_id_seq"
OWNED BY "public"."csv_exportevent"."id";
SELECT setval('"public"."csv_exportevent_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."csv_exportfile_id_seq"
OWNED BY "public"."csv_exportfile"."id";
SELECT setval('"public"."csv_exportfile_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."discount_sale_categories_id_seq"
OWNED BY "public"."discount_sale_categories"."id";
SELECT setval('"public"."discount_sale_categories_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."discount_sale_collections_id_seq"
OWNED BY "public"."discount_sale_collections"."id";
SELECT setval('"public"."discount_sale_collections_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."discount_sale_id_seq"
OWNED BY "public"."discount_sale"."id";
SELECT setval('"public"."discount_sale_id_seq"', 6, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."discount_sale_products_id_seq"
OWNED BY "public"."discount_sale_products"."id";
SELECT setval('"public"."discount_sale_products_id_seq"', 21, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."discount_saletranslation_id_seq"
OWNED BY "public"."discount_saletranslation"."id";
SELECT setval('"public"."discount_saletranslation_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."discount_voucher_categories_id_seq"
OWNED BY "public"."discount_voucher_categories"."id";
SELECT setval('"public"."discount_voucher_categories_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."discount_voucher_collections_id_seq"
OWNED BY "public"."discount_voucher_collections"."id";
SELECT setval('"public"."discount_voucher_collections_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."discount_voucher_id_seq"
OWNED BY "public"."discount_voucher"."id";
SELECT setval('"public"."discount_voucher_id_seq"', 4, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."discount_voucher_products_id_seq"
OWNED BY "public"."discount_voucher_products"."id";
SELECT setval('"public"."discount_voucher_products_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."discount_vouchercustomer_id_seq"
OWNED BY "public"."discount_vouchercustomer"."id";
SELECT setval('"public"."discount_vouchercustomer_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."discount_vouchertranslation_id_seq"
OWNED BY "public"."discount_vouchertranslation"."id";
SELECT setval('"public"."discount_vouchertranslation_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."django_content_type_id_seq"
OWNED BY "public"."django_content_type"."id";
SELECT setval('"public"."django_content_type_id_seq"', 76, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."django_migrations_id_seq"
OWNED BY "public"."django_migrations"."id";
SELECT setval('"public"."django_migrations_id_seq"', 525, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."django_prices_openexchangerates_conversionrate_id_seq"
OWNED BY "public"."django_prices_openexchangerates_conversionrate"."id";
SELECT setval('"public"."django_prices_openexchangerates_conversionrate_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."django_prices_vatlayer_ratetypes_id_seq"
OWNED BY "public"."django_prices_vatlayer_ratetypes"."id";
SELECT setval('"public"."django_prices_vatlayer_ratetypes_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."django_prices_vatlayer_vat_id_seq"
OWNED BY "public"."django_prices_vatlayer_vat"."id";
SELECT setval('"public"."django_prices_vatlayer_vat_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."django_site_id_seq"
OWNED BY "public"."django_site"."id";
SELECT setval('"public"."django_site_id_seq"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."giftcard_giftcard_id_seq"
OWNED BY "public"."giftcard_giftcard"."id";
SELECT setval('"public"."giftcard_giftcard_id_seq"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."invoice_invoice_id_seq"
OWNED BY "public"."invoice_invoice"."id";
SELECT setval('"public"."invoice_invoice_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."invoice_invoiceevent_id_seq"
OWNED BY "public"."invoice_invoiceevent"."id";
SELECT setval('"public"."invoice_invoiceevent_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."menu_menu_id_seq"
OWNED BY "public"."menu_menu"."id";
SELECT setval('"public"."menu_menu_id_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."menu_menuitem_id_seq"
OWNED BY "public"."menu_menuitem"."id";
SELECT setval('"public"."menu_menuitem_id_seq"', 19, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."menu_menuitemtranslation_id_seq"
OWNED BY "public"."menu_menuitemtranslation"."id";
SELECT setval('"public"."menu_menuitemtranslation_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."order_fulfillment_id_seq"
OWNED BY "public"."order_fulfillment"."id";
SELECT setval('"public"."order_fulfillment_id_seq"', 19, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."order_fulfillmentline_id_seq"
OWNED BY "public"."order_fulfillmentline"."id";
SELECT setval('"public"."order_fulfillmentline_id_seq"', 29, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."order_order_gift_cards_id_seq"
OWNED BY "public"."order_order_gift_cards"."id";
SELECT setval('"public"."order_order_gift_cards_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."order_order_id_seq"
OWNED BY "public"."order_order"."id";
SELECT setval('"public"."order_order_id_seq"', 21, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."order_ordereditem_id_seq"
OWNED BY "public"."order_orderline"."id";
SELECT setval('"public"."order_ordereditem_id_seq"', 50, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."order_orderevent_id_seq"
OWNED BY "public"."order_orderevent"."id";
SELECT setval('"public"."order_orderevent_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."page_page_id_seq"
OWNED BY "public"."page_page"."id";
SELECT setval('"public"."page_page_id_seq"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."page_pagetranslation_id_seq"
OWNED BY "public"."page_pagetranslation"."id";
SELECT setval('"public"."page_pagetranslation_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."payment_paymentmethod_id_seq"
OWNED BY "public"."payment_payment"."id";
SELECT setval('"public"."payment_paymentmethod_id_seq"', 21, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."payment_transaction_id_seq"
OWNED BY "public"."payment_transaction"."id";
SELECT setval('"public"."payment_transaction_id_seq"', 40, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."plugins_pluginconfiguration_id_seq"
OWNED BY "public"."plugins_pluginconfiguration"."id";
SELECT setval('"public"."plugins_pluginconfiguration_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."product_assignedproductattribute_id_seq"
OWNED BY "public"."product_assignedproductattribute"."id";
SELECT setval('"public"."product_assignedproductattribute_id_seq"', 35, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."product_assignedproductattribute_values_id_seq"
OWNED BY "public"."product_assignedproductattribute_values"."id";
SELECT setval('"public"."product_assignedproductattribute_values_id_seq"', 35, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."product_assignedvariantattribute_id_seq"
OWNED BY "public"."product_assignedvariantattribute"."id";
SELECT setval('"public"."product_assignedvariantattribute_id_seq"', 127, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."product_assignedvariantattribute_values_id_seq"
OWNED BY "public"."product_assignedvariantattribute_values"."id";
SELECT setval('"public"."product_assignedvariantattribute_values_id_seq"', 127, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."product_attributechoicevalue_id_seq"
OWNED BY "public"."product_attributevalue"."id";
SELECT setval('"public"."product_attributechoicevalue_id_seq"', 87, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."product_attributechoicevaluetranslation_id_seq"
OWNED BY "public"."product_attributevaluetranslation"."id";
SELECT setval('"public"."product_attributechoicevaluetranslation_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."product_attributeproduct_id_seq"
OWNED BY "public"."product_attributeproduct"."id";
SELECT setval('"public"."product_attributeproduct_id_seq"', 8, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."product_attributevariant_id_seq"
OWNED BY "public"."product_attributevariant"."id";
SELECT setval('"public"."product_attributevariant_id_seq"', 9, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."product_category_id_seq"
OWNED BY "public"."product_category"."id";
SELECT setval('"public"."product_category_id_seq"', 24, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."product_categorytranslation_id_seq"
OWNED BY "public"."product_categorytranslation"."id";
SELECT setval('"public"."product_categorytranslation_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."product_collection_id_seq"
OWNED BY "public"."product_collection"."id";
SELECT setval('"public"."product_collection_id_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."product_collection_products_id_seq"
OWNED BY "public"."product_collectionproduct"."id";
SELECT setval('"public"."product_collection_products_id_seq"', 9, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."product_collectiontranslation_id_seq"
OWNED BY "public"."product_collectiontranslation"."id";
SELECT setval('"public"."product_collectiontranslation_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."product_digitalcontent_id_seq"
OWNED BY "public"."product_digitalcontent"."id";
SELECT setval('"public"."product_digitalcontent_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."product_digitalcontenturl_id_seq"
OWNED BY "public"."product_digitalcontenturl"."id";
SELECT setval('"public"."product_digitalcontenturl_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."product_product_id_seq"
OWNED BY "public"."product_product"."id";
SELECT setval('"public"."product_product_id_seq"', 125, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."product_productattribute_id_seq"
OWNED BY "public"."product_attribute"."id";
SELECT setval('"public"."product_productattribute_id_seq"', 27, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."product_productattributetranslation_id_seq"
OWNED BY "public"."product_attributetranslation"."id";
SELECT setval('"public"."product_productattributetranslation_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."product_productclass_id_seq"
OWNED BY "public"."product_producttype"."id";
SELECT setval('"public"."product_productclass_id_seq"', 16, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."product_productimage_id_seq"
OWNED BY "public"."product_productimage"."id";
SELECT setval('"public"."product_productimage_id_seq"', 57, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."product_producttranslation_id_seq"
OWNED BY "public"."product_producttranslation"."id";
SELECT setval('"public"."product_producttranslation_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."product_productvariant_id_seq"
OWNED BY "public"."product_productvariant"."id";
SELECT setval('"public"."product_productvariant_id_seq"', 322, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."product_productvarianttranslation_id_seq"
OWNED BY "public"."product_productvarianttranslation"."id";
SELECT setval('"public"."product_productvarianttranslation_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."product_variantimage_id_seq"
OWNED BY "public"."product_variantimage"."id";
SELECT setval('"public"."product_variantimage_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."shipping_shippingmethod_id_seq"
OWNED BY "public"."shipping_shippingmethod"."id";
SELECT setval('"public"."shipping_shippingmethod_id_seq"', 20, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."shipping_shippingmethodtranslation_id_seq"
OWNED BY "public"."shipping_shippingmethodtranslation"."id";
SELECT setval('"public"."shipping_shippingmethodtranslation_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."shipping_shippingzone_id_seq"
OWNED BY "public"."shipping_shippingzone"."id";
SELECT setval('"public"."shipping_shippingzone_id_seq"', 6, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."site_authorizationkey_id_seq"
OWNED BY "public"."site_authorizationkey"."id";
SELECT setval('"public"."site_authorizationkey_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."site_sitesettings_id_seq"
OWNED BY "public"."site_sitesettings"."id";
SELECT setval('"public"."site_sitesettings_id_seq"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."site_sitesettingstranslation_id_seq"
OWNED BY "public"."site_sitesettingstranslation"."id";
SELECT setval('"public"."site_sitesettingstranslation_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."userprofile_address_id_seq"
OWNED BY "public"."account_address"."id";
SELECT setval('"public"."userprofile_address_id_seq"', 42, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."userprofile_user_addresses_id_seq"
OWNED BY "public"."account_user_addresses"."id";
SELECT setval('"public"."userprofile_user_addresses_id_seq"', 22, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."userprofile_user_groups_id_seq"
OWNED BY "public"."account_user_groups"."id";
SELECT setval('"public"."userprofile_user_groups_id_seq"', 4, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."userprofile_user_id_seq"
OWNED BY "public"."account_user"."id";
SELECT setval('"public"."userprofile_user_id_seq"', 24, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."userprofile_user_user_permissions_id_seq"
OWNED BY "public"."account_user_user_permissions"."id";
SELECT setval('"public"."userprofile_user_user_permissions_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."warehouse_allocation_id_seq"
OWNED BY "public"."warehouse_allocation"."id";
SELECT setval('"public"."warehouse_allocation_id_seq"', 50, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."warehouse_stock_id_seq"
OWNED BY "public"."warehouse_stock"."id";
SELECT setval('"public"."warehouse_stock_id_seq"', 651, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."warehouse_warehouse_shipping_zones_id_seq"
OWNED BY "public"."warehouse_warehouse_shipping_zones"."id";
SELECT setval('"public"."warehouse_warehouse_shipping_zones_id_seq"', 6, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."webhook_webhook_id_seq"
OWNED BY "public"."webhook_webhook"."id";
SELECT setval('"public"."webhook_webhook_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."webhook_webhookevent_id_seq"
OWNED BY "public"."webhook_webhookevent"."id";
SELECT setval('"public"."webhook_webhookevent_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."wishlist_wishlist_id_seq"
OWNED BY "public"."wishlist_wishlist"."id";
SELECT setval('"public"."wishlist_wishlist_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."wishlist_wishlistitem_id_seq"
OWNED BY "public"."wishlist_wishlistitem"."id";
SELECT setval('"public"."wishlist_wishlistitem_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."wishlist_wishlistitem_variants_id_seq"
OWNED BY "public"."wishlist_wishlistitem_variants"."id";
SELECT setval('"public"."wishlist_wishlistitem_variants_id_seq"', 2, false);

-- ----------------------------
-- Primary Key structure for table account_address
-- ----------------------------
ALTER TABLE "public"."account_address" ADD CONSTRAINT "userprofile_address_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table account_customerevent
-- ----------------------------
CREATE INDEX "account_customerevent_order_id_2d6e2d20" ON "public"."account_customerevent" USING btree (
  "order_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "account_customerevent_user_id_b3d6ec36" ON "public"."account_customerevent" USING btree (
  "user_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table account_customerevent
-- ----------------------------
ALTER TABLE "public"."account_customerevent" ADD CONSTRAINT "account_customerevent_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table account_customernote
-- ----------------------------
CREATE INDEX "account_customernote_customer_id_ec50cbf6" ON "public"."account_customernote" USING btree (
  "customer_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "account_customernote_date_231c3474" ON "public"."account_customernote" USING btree (
  "date" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);
CREATE INDEX "account_customernote_user_id_b10a6c14" ON "public"."account_customernote" USING btree (
  "user_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table account_customernote
-- ----------------------------
ALTER TABLE "public"."account_customernote" ADD CONSTRAINT "account_customernote_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table account_staffnotificationrecipient
-- ----------------------------
CREATE INDEX "account_staffnotificationrecipient_staff_email_a309b82e_like" ON "public"."account_staffnotificationrecipient" USING btree (
  "staff_email" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table account_staffnotificationrecipient
-- ----------------------------
ALTER TABLE "public"."account_staffnotificationrecipient" ADD CONSTRAINT "account_staffnotificationrecipient_staff_email_key" UNIQUE ("staff_email");
ALTER TABLE "public"."account_staffnotificationrecipient" ADD CONSTRAINT "account_staffnotificationrecipient_user_id_key" UNIQUE ("user_id");

-- ----------------------------
-- Primary Key structure for table account_staffnotificationrecipient
-- ----------------------------
ALTER TABLE "public"."account_staffnotificationrecipient" ADD CONSTRAINT "account_staffnotificationrecipient_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table account_user
-- ----------------------------
CREATE INDEX "userprofile_user_default_billing_address_id_0489abf1" ON "public"."account_user" USING btree (
  "default_billing_address_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "userprofile_user_default_shipping_address_id_aae7a203" ON "public"."account_user" USING btree (
  "default_shipping_address_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "userprofile_user_email_b0fb0137_like" ON "public"."account_user" USING btree (
  "email" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table account_user
-- ----------------------------
ALTER TABLE "public"."account_user" ADD CONSTRAINT "userprofile_user_email_key" UNIQUE ("email");

-- ----------------------------
-- Primary Key structure for table account_user
-- ----------------------------
ALTER TABLE "public"."account_user" ADD CONSTRAINT "userprofile_user_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table account_user_addresses
-- ----------------------------
CREATE INDEX "userprofile_user_addresses_address_id_ad7646b4" ON "public"."account_user_addresses" USING btree (
  "address_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "userprofile_user_addresses_user_id_bb5aa55e" ON "public"."account_user_addresses" USING btree (
  "user_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table account_user_addresses
-- ----------------------------
ALTER TABLE "public"."account_user_addresses" ADD CONSTRAINT "userprofile_user_addresses_user_id_address_id_6cb87bcc_uniq" UNIQUE ("user_id", "address_id");

-- ----------------------------
-- Primary Key structure for table account_user_addresses
-- ----------------------------
ALTER TABLE "public"."account_user_addresses" ADD CONSTRAINT "userprofile_user_addresses_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table account_user_groups
-- ----------------------------
CREATE INDEX "userprofile_user_groups_group_id_c7eec74e" ON "public"."account_user_groups" USING btree (
  "group_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "userprofile_user_groups_user_id_5e712a24" ON "public"."account_user_groups" USING btree (
  "user_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table account_user_groups
-- ----------------------------
ALTER TABLE "public"."account_user_groups" ADD CONSTRAINT "userprofile_user_groups_user_id_group_id_90ce1781_uniq" UNIQUE ("user_id", "group_id");

-- ----------------------------
-- Primary Key structure for table account_user_groups
-- ----------------------------
ALTER TABLE "public"."account_user_groups" ADD CONSTRAINT "userprofile_user_groups_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table account_user_user_permissions
-- ----------------------------
CREATE INDEX "userprofile_user_user_permissions_permission_id_1caa8a71" ON "public"."account_user_user_permissions" USING btree (
  "permission_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "userprofile_user_user_permissions_user_id_6d654469" ON "public"."account_user_user_permissions" USING btree (
  "user_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table account_user_user_permissions
-- ----------------------------
ALTER TABLE "public"."account_user_user_permissions" ADD CONSTRAINT "userprofile_user_user_pe_user_id_permission_id_706d65c8_uniq" UNIQUE ("user_id", "permission_id");

-- ----------------------------
-- Primary Key structure for table account_user_user_permissions
-- ----------------------------
ALTER TABLE "public"."account_user_user_permissions" ADD CONSTRAINT "userprofile_user_user_permissions_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table app_app
-- ----------------------------
ALTER TABLE "public"."app_app" ADD CONSTRAINT "account_serviceaccount_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table app_app_permissions
-- ----------------------------
CREATE INDEX "account_serviceaccount_permissions_permission_id_449791f0" ON "public"."app_app_permissions" USING btree (
  "permission_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "account_serviceaccount_permissions_serviceaccount_id_ec78f497" ON "public"."app_app_permissions" USING btree (
  "app_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table app_app_permissions
-- ----------------------------
ALTER TABLE "public"."app_app_permissions" ADD CONSTRAINT "account_serviceaccount_p_serviceaccount_id_permis_1686b2ab_uniq" UNIQUE ("app_id", "permission_id");

-- ----------------------------
-- Primary Key structure for table app_app_permissions
-- ----------------------------
ALTER TABLE "public"."app_app_permissions" ADD CONSTRAINT "account_serviceaccount_permissions_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table app_appinstallation
-- ----------------------------
ALTER TABLE "public"."app_appinstallation" ADD CONSTRAINT "app_appinstallation_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table app_appinstallation_permissions
-- ----------------------------
CREATE INDEX "app_appinstallation_permissions_appinstallation_id_f7fe0271" ON "public"."app_appinstallation_permissions" USING btree (
  "appinstallation_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "app_appinstallation_permissions_permission_id_4ee9f6c8" ON "public"."app_appinstallation_permissions" USING btree (
  "permission_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table app_appinstallation_permissions
-- ----------------------------
ALTER TABLE "public"."app_appinstallation_permissions" ADD CONSTRAINT "app_appinstallation_perm_appinstallation_id_permi_7b7e0448_uniq" UNIQUE ("appinstallation_id", "permission_id");

-- ----------------------------
-- Primary Key structure for table app_appinstallation_permissions
-- ----------------------------
ALTER TABLE "public"."app_appinstallation_permissions" ADD CONSTRAINT "app_appinstallation_permissions_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table app_apptoken
-- ----------------------------
CREATE INDEX "account_serviceaccounttoken_auth_token_e4c38601_like" ON "public"."app_apptoken" USING btree (
  "auth_token" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);
CREATE INDEX "account_serviceaccounttoken_service_account_id_a8e6dee8" ON "public"."app_apptoken" USING btree (
  "app_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table app_apptoken
-- ----------------------------
ALTER TABLE "public"."app_apptoken" ADD CONSTRAINT "account_serviceaccounttoken_auth_token_key" UNIQUE ("auth_token");

-- ----------------------------
-- Primary Key structure for table app_apptoken
-- ----------------------------
ALTER TABLE "public"."app_apptoken" ADD CONSTRAINT "account_serviceaccounttoken_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_group
-- ----------------------------
CREATE INDEX "auth_group_name_a6ea08ec_like" ON "public"."auth_group" USING btree (
  "name" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table auth_group
-- ----------------------------
ALTER TABLE "public"."auth_group" ADD CONSTRAINT "auth_group_name_key" UNIQUE ("name");

-- ----------------------------
-- Primary Key structure for table auth_group
-- ----------------------------
ALTER TABLE "public"."auth_group" ADD CONSTRAINT "auth_group_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_group_permissions
-- ----------------------------
CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "public"."auth_group_permissions" USING btree (
  "group_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "public"."auth_group_permissions" USING btree (
  "permission_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table auth_group_permissions
-- ----------------------------
ALTER TABLE "public"."auth_group_permissions" ADD CONSTRAINT "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" UNIQUE ("group_id", "permission_id");

-- ----------------------------
-- Primary Key structure for table auth_group_permissions
-- ----------------------------
ALTER TABLE "public"."auth_group_permissions" ADD CONSTRAINT "auth_group_permissions_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_permission
-- ----------------------------
CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "public"."auth_permission" USING btree (
  "content_type_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table auth_permission
-- ----------------------------
ALTER TABLE "public"."auth_permission" ADD CONSTRAINT "auth_permission_content_type_id_codename_01ab375a_uniq" UNIQUE ("content_type_id", "codename");

-- ----------------------------
-- Primary Key structure for table auth_permission
-- ----------------------------
ALTER TABLE "public"."auth_permission" ADD CONSTRAINT "auth_permission_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table checkout_checkout
-- ----------------------------
CREATE INDEX "cart_cart_billing_address_id_9eb62ddd" ON "public"."checkout_checkout" USING btree (
  "billing_address_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "cart_cart_shipping_address_id_adfddaf9" ON "public"."checkout_checkout" USING btree (
  "shipping_address_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "cart_cart_shipping_method_id_835c02e0" ON "public"."checkout_checkout" USING btree (
  "shipping_method_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "cart_cart_user_id_9b4220b9" ON "public"."checkout_checkout" USING btree (
  "user_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Checks structure for table checkout_checkout
-- ----------------------------
ALTER TABLE "public"."checkout_checkout" ADD CONSTRAINT "cart_cart_quantity_check" CHECK ((quantity >= 0));

-- ----------------------------
-- Primary Key structure for table checkout_checkout
-- ----------------------------
ALTER TABLE "public"."checkout_checkout" ADD CONSTRAINT "cart_cart_pkey" PRIMARY KEY ("token");

-- ----------------------------
-- Indexes structure for table checkout_checkout_gift_cards
-- ----------------------------
CREATE INDEX "checkout_checkout_gift_cards_checkout_id_e314728d" ON "public"."checkout_checkout_gift_cards" USING btree (
  "checkout_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);
CREATE INDEX "checkout_checkout_gift_cards_giftcard_id_f5994462" ON "public"."checkout_checkout_gift_cards" USING btree (
  "giftcard_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table checkout_checkout_gift_cards
-- ----------------------------
ALTER TABLE "public"."checkout_checkout_gift_cards" ADD CONSTRAINT "checkout_checkout_gift_c_checkout_id_giftcard_id_401ba79e_uniq" UNIQUE ("checkout_id", "giftcard_id");

-- ----------------------------
-- Primary Key structure for table checkout_checkout_gift_cards
-- ----------------------------
ALTER TABLE "public"."checkout_checkout_gift_cards" ADD CONSTRAINT "checkout_checkout_gift_cards_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table checkout_checkoutline
-- ----------------------------
CREATE INDEX "cart_cartline_cart_id_c7b9981e" ON "public"."checkout_checkoutline" USING btree (
  "checkout_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);
CREATE INDEX "cart_cartline_product_id_1a54130f" ON "public"."checkout_checkoutline" USING btree (
  "variant_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table checkout_checkoutline
-- ----------------------------
ALTER TABLE "public"."checkout_checkoutline" ADD CONSTRAINT "checkout_cartline_cart_id_variant_id_data_new_de3d8fca_uniq" UNIQUE ("checkout_id", "variant_id", "data");

-- ----------------------------
-- Checks structure for table checkout_checkoutline
-- ----------------------------
ALTER TABLE "public"."checkout_checkoutline" ADD CONSTRAINT "cart_cartline_quantity_check" CHECK ((quantity >= 0));

-- ----------------------------
-- Primary Key structure for table checkout_checkoutline
-- ----------------------------
ALTER TABLE "public"."checkout_checkoutline" ADD CONSTRAINT "cart_cartline_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table csv_exportevent
-- ----------------------------
CREATE INDEX "csv_exportevent_app_id_8637fcc5" ON "public"."csv_exportevent" USING btree (
  "app_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "csv_exportevent_export_file_id_35f6c448" ON "public"."csv_exportevent" USING btree (
  "export_file_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "csv_exportevent_user_id_6111f193" ON "public"."csv_exportevent" USING btree (
  "user_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table csv_exportevent
-- ----------------------------
ALTER TABLE "public"."csv_exportevent" ADD CONSTRAINT "csv_exportevent_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table csv_exportfile
-- ----------------------------
CREATE INDEX "csv_exportfile_app_id_bc900999" ON "public"."csv_exportfile" USING btree (
  "app_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "csv_exportfile_user_id_2c9071e6" ON "public"."csv_exportfile" USING btree (
  "user_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table csv_exportfile
-- ----------------------------
ALTER TABLE "public"."csv_exportfile" ADD CONSTRAINT "csv_exportfile_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table discount_sale
-- ----------------------------
ALTER TABLE "public"."discount_sale" ADD CONSTRAINT "discount_sale_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table discount_sale_categories
-- ----------------------------
CREATE INDEX "discount_sale_categories_category_id_64e132af" ON "public"."discount_sale_categories" USING btree (
  "category_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "discount_sale_categories_sale_id_2aeee4a7" ON "public"."discount_sale_categories" USING btree (
  "sale_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table discount_sale_categories
-- ----------------------------
ALTER TABLE "public"."discount_sale_categories" ADD CONSTRAINT "discount_sale_categories_sale_id_category_id_be438401_uniq" UNIQUE ("sale_id", "category_id");

-- ----------------------------
-- Primary Key structure for table discount_sale_categories
-- ----------------------------
ALTER TABLE "public"."discount_sale_categories" ADD CONSTRAINT "discount_sale_categories_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table discount_sale_collections
-- ----------------------------
CREATE INDEX "discount_sale_collections_collection_id_f66df9d7" ON "public"."discount_sale_collections" USING btree (
  "collection_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "discount_sale_collections_sale_id_a912da4a" ON "public"."discount_sale_collections" USING btree (
  "sale_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table discount_sale_collections
-- ----------------------------
ALTER TABLE "public"."discount_sale_collections" ADD CONSTRAINT "discount_sale_collections_sale_id_collection_id_01b57fc3_uniq" UNIQUE ("sale_id", "collection_id");

-- ----------------------------
-- Primary Key structure for table discount_sale_collections
-- ----------------------------
ALTER TABLE "public"."discount_sale_collections" ADD CONSTRAINT "discount_sale_collections_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table discount_sale_products
-- ----------------------------
CREATE INDEX "discount_sale_products_product_id_d42c9636" ON "public"."discount_sale_products" USING btree (
  "product_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "discount_sale_products_sale_id_10e3a20f" ON "public"."discount_sale_products" USING btree (
  "sale_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table discount_sale_products
-- ----------------------------
ALTER TABLE "public"."discount_sale_products" ADD CONSTRAINT "discount_sale_products_sale_id_product_id_1c2df1f8_uniq" UNIQUE ("sale_id", "product_id");

-- ----------------------------
-- Primary Key structure for table discount_sale_products
-- ----------------------------
ALTER TABLE "public"."discount_sale_products" ADD CONSTRAINT "discount_sale_products_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table discount_saletranslation
-- ----------------------------
CREATE INDEX "discount_saletranslation_sale_id_36a69b0a" ON "public"."discount_saletranslation" USING btree (
  "sale_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table discount_saletranslation
-- ----------------------------
ALTER TABLE "public"."discount_saletranslation" ADD CONSTRAINT "discount_saletranslation_language_code_sale_id_e956163f_uniq" UNIQUE ("language_code", "sale_id");

-- ----------------------------
-- Primary Key structure for table discount_saletranslation
-- ----------------------------
ALTER TABLE "public"."discount_saletranslation" ADD CONSTRAINT "discount_saletranslation_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table discount_voucher
-- ----------------------------
CREATE INDEX "discount_voucher_code_ff8dc52c_like" ON "public"."discount_voucher" USING btree (
  "code" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table discount_voucher
-- ----------------------------
ALTER TABLE "public"."discount_voucher" ADD CONSTRAINT "discount_voucher_code_key" UNIQUE ("code");

-- ----------------------------
-- Checks structure for table discount_voucher
-- ----------------------------
ALTER TABLE "public"."discount_voucher" ADD CONSTRAINT "discount_voucher_usage_limit_check" CHECK ((usage_limit >= 0));
ALTER TABLE "public"."discount_voucher" ADD CONSTRAINT "discount_voucher_used_check" CHECK ((used >= 0));
ALTER TABLE "public"."discount_voucher" ADD CONSTRAINT "discount_voucher_min_checkout_items_quantity_check" CHECK ((min_checkout_items_quantity >= 0));

-- ----------------------------
-- Primary Key structure for table discount_voucher
-- ----------------------------
ALTER TABLE "public"."discount_voucher" ADD CONSTRAINT "discount_voucher_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table discount_voucher_categories
-- ----------------------------
CREATE INDEX "discount_voucher_categories_category_id_fc9d044a" ON "public"."discount_voucher_categories" USING btree (
  "category_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "discount_voucher_categories_voucher_id_19a56338" ON "public"."discount_voucher_categories" USING btree (
  "voucher_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table discount_voucher_categories
-- ----------------------------
ALTER TABLE "public"."discount_voucher_categories" ADD CONSTRAINT "discount_voucher_categor_voucher_id_category_id_bb5f8954_uniq" UNIQUE ("voucher_id", "category_id");

-- ----------------------------
-- Primary Key structure for table discount_voucher_categories
-- ----------------------------
ALTER TABLE "public"."discount_voucher_categories" ADD CONSTRAINT "discount_voucher_categories_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table discount_voucher_collections
-- ----------------------------
CREATE INDEX "discount_voucher_collections_collection_id_b9de6b54" ON "public"."discount_voucher_collections" USING btree (
  "collection_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "discount_voucher_collections_voucher_id_4ce1fde3" ON "public"."discount_voucher_collections" USING btree (
  "voucher_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table discount_voucher_collections
-- ----------------------------
ALTER TABLE "public"."discount_voucher_collections" ADD CONSTRAINT "discount_voucher_collect_voucher_id_collection_id_736b8f24_uniq" UNIQUE ("voucher_id", "collection_id");

-- ----------------------------
-- Primary Key structure for table discount_voucher_collections
-- ----------------------------
ALTER TABLE "public"."discount_voucher_collections" ADD CONSTRAINT "discount_voucher_collections_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table discount_voucher_products
-- ----------------------------
CREATE INDEX "discount_voucher_products_product_id_4a3131ff" ON "public"."discount_voucher_products" USING btree (
  "product_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "discount_voucher_products_voucher_id_8a2e6c3a" ON "public"."discount_voucher_products" USING btree (
  "voucher_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table discount_voucher_products
-- ----------------------------
ALTER TABLE "public"."discount_voucher_products" ADD CONSTRAINT "discount_voucher_products_voucher_id_product_id_2b092ec4_uniq" UNIQUE ("voucher_id", "product_id");

-- ----------------------------
-- Primary Key structure for table discount_voucher_products
-- ----------------------------
ALTER TABLE "public"."discount_voucher_products" ADD CONSTRAINT "discount_voucher_products_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table discount_vouchercustomer
-- ----------------------------
CREATE INDEX "discount_vouchercustomer_voucher_id_bb55c04f" ON "public"."discount_vouchercustomer" USING btree (
  "voucher_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table discount_vouchercustomer
-- ----------------------------
ALTER TABLE "public"."discount_vouchercustomer" ADD CONSTRAINT "discount_vouchercustomer_voucher_id_customer_emai_b7b1d6a1_uniq" UNIQUE ("voucher_id", "customer_email");

-- ----------------------------
-- Primary Key structure for table discount_vouchercustomer
-- ----------------------------
ALTER TABLE "public"."discount_vouchercustomer" ADD CONSTRAINT "discount_vouchercustomer_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table discount_vouchertranslation
-- ----------------------------
CREATE INDEX "discount_vouchertranslation_voucher_id_288246a9" ON "public"."discount_vouchertranslation" USING btree (
  "voucher_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table discount_vouchertranslation
-- ----------------------------
ALTER TABLE "public"."discount_vouchertranslation" ADD CONSTRAINT "discount_vouchertranslat_language_code_voucher_id_af4428b5_uniq" UNIQUE ("language_code", "voucher_id");

-- ----------------------------
-- Primary Key structure for table discount_vouchertranslation
-- ----------------------------
ALTER TABLE "public"."discount_vouchertranslation" ADD CONSTRAINT "discount_vouchertranslation_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table django_content_type
-- ----------------------------
ALTER TABLE "public"."django_content_type" ADD CONSTRAINT "django_content_type_app_label_model_76bd3d3b_uniq" UNIQUE ("app_label", "model");

-- ----------------------------
-- Primary Key structure for table django_content_type
-- ----------------------------
ALTER TABLE "public"."django_content_type" ADD CONSTRAINT "django_content_type_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table django_migrations
-- ----------------------------
ALTER TABLE "public"."django_migrations" ADD CONSTRAINT "django_migrations_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table django_prices_openexchangerates_conversionrate
-- ----------------------------
CREATE INDEX "django_prices_openexchan_to_currency_92c4a4e1_like" ON "public"."django_prices_openexchangerates_conversionrate" USING btree (
  "to_currency" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table django_prices_openexchangerates_conversionrate
-- ----------------------------
ALTER TABLE "public"."django_prices_openexchangerates_conversionrate" ADD CONSTRAINT "django_prices_openexchangerates_conversionrate_to_currency_key" UNIQUE ("to_currency");

-- ----------------------------
-- Primary Key structure for table django_prices_openexchangerates_conversionrate
-- ----------------------------
ALTER TABLE "public"."django_prices_openexchangerates_conversionrate" ADD CONSTRAINT "django_prices_openexchangerates_conversionrate_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table django_prices_vatlayer_ratetypes
-- ----------------------------
ALTER TABLE "public"."django_prices_vatlayer_ratetypes" ADD CONSTRAINT "django_prices_vatlayer_ratetypes_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table django_prices_vatlayer_vat
-- ----------------------------
CREATE INDEX "django_prices_vatlayer_vat_country_code_858b2cc4" ON "public"."django_prices_vatlayer_vat" USING btree (
  "country_code" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "django_prices_vatlayer_vat_country_code_858b2cc4_like" ON "public"."django_prices_vatlayer_vat" USING btree (
  "country_code" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table django_prices_vatlayer_vat
-- ----------------------------
ALTER TABLE "public"."django_prices_vatlayer_vat" ADD CONSTRAINT "django_prices_vatlayer_vat_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table django_site
-- ----------------------------
CREATE INDEX "django_site_domain_a2e37b91_like" ON "public"."django_site" USING btree (
  "domain" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table django_site
-- ----------------------------
ALTER TABLE "public"."django_site" ADD CONSTRAINT "django_site_domain_a2e37b91_uniq" UNIQUE ("domain");

-- ----------------------------
-- Primary Key structure for table django_site
-- ----------------------------
ALTER TABLE "public"."django_site" ADD CONSTRAINT "django_site_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table giftcard_giftcard
-- ----------------------------
CREATE INDEX "giftcard_giftcard_code_f6fb6be8_like" ON "public"."giftcard_giftcard" USING btree (
  "code" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);
CREATE INDEX "giftcard_giftcard_user_id_ce2401b5" ON "public"."giftcard_giftcard" USING btree (
  "user_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table giftcard_giftcard
-- ----------------------------
ALTER TABLE "public"."giftcard_giftcard" ADD CONSTRAINT "giftcard_giftcard_code_key" UNIQUE ("code");

-- ----------------------------
-- Primary Key structure for table giftcard_giftcard
-- ----------------------------
ALTER TABLE "public"."giftcard_giftcard" ADD CONSTRAINT "giftcard_giftcard_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table invoice_invoice
-- ----------------------------
CREATE INDEX "invoice_invoice_order_id_c5fc9ae9" ON "public"."invoice_invoice" USING btree (
  "order_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table invoice_invoice
-- ----------------------------
ALTER TABLE "public"."invoice_invoice" ADD CONSTRAINT "invoice_invoice_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table invoice_invoiceevent
-- ----------------------------
CREATE INDEX "invoice_invoiceevent_invoice_id_de0632ca" ON "public"."invoice_invoiceevent" USING btree (
  "invoice_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "invoice_invoiceevent_order_id_5a337f7a" ON "public"."invoice_invoiceevent" USING btree (
  "order_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "invoice_invoiceevent_user_id_cd599b8d" ON "public"."invoice_invoiceevent" USING btree (
  "user_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table invoice_invoiceevent
-- ----------------------------
ALTER TABLE "public"."invoice_invoiceevent" ADD CONSTRAINT "invoice_invoiceevent_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table menu_menu
-- ----------------------------
CREATE INDEX "menu_menu_slug_98939c4e_like" ON "public"."menu_menu" USING btree (
  "slug" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table menu_menu
-- ----------------------------
ALTER TABLE "public"."menu_menu" ADD CONSTRAINT "menu_menu_slug_key" UNIQUE ("slug");

-- ----------------------------
-- Primary Key structure for table menu_menu
-- ----------------------------
ALTER TABLE "public"."menu_menu" ADD CONSTRAINT "menu_menu_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table menu_menuitem
-- ----------------------------
CREATE INDEX "menu_menuitem_category_id_af353a3b" ON "public"."menu_menuitem" USING btree (
  "category_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "menu_menuitem_collection_id_b913b19e" ON "public"."menu_menuitem" USING btree (
  "collection_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "menu_menuitem_menu_id_f466b139" ON "public"."menu_menuitem" USING btree (
  "menu_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "menu_menuitem_page_id_a0c8f92d" ON "public"."menu_menuitem" USING btree (
  "page_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "menu_menuitem_parent_id_439f55a5" ON "public"."menu_menuitem" USING btree (
  "parent_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "menu_menuitem_sort_order_f96ed184" ON "public"."menu_menuitem" USING btree (
  "sort_order" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "menu_menuitem_tree_id_0d2e9c9a" ON "public"."menu_menuitem" USING btree (
  "tree_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Checks structure for table menu_menuitem
-- ----------------------------
ALTER TABLE "public"."menu_menuitem" ADD CONSTRAINT "menu_menuitem_rght_check" CHECK ((rght >= 0));
ALTER TABLE "public"."menu_menuitem" ADD CONSTRAINT "menu_menuitem_tree_id_check" CHECK ((tree_id >= 0));
ALTER TABLE "public"."menu_menuitem" ADD CONSTRAINT "menu_menuitem_level_check" CHECK ((level >= 0));
ALTER TABLE "public"."menu_menuitem" ADD CONSTRAINT "menu_menuitem_lft_check" CHECK ((lft >= 0));

-- ----------------------------
-- Primary Key structure for table menu_menuitem
-- ----------------------------
ALTER TABLE "public"."menu_menuitem" ADD CONSTRAINT "menu_menuitem_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table menu_menuitemtranslation
-- ----------------------------
CREATE INDEX "menu_menuitemtranslation_menu_item_id_3445926c" ON "public"."menu_menuitemtranslation" USING btree (
  "menu_item_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table menu_menuitemtranslation
-- ----------------------------
ALTER TABLE "public"."menu_menuitemtranslation" ADD CONSTRAINT "menu_menuitemtranslation_language_code_menu_item__508dcdd8_uniq" UNIQUE ("language_code", "menu_item_id");

-- ----------------------------
-- Primary Key structure for table menu_menuitemtranslation
-- ----------------------------
ALTER TABLE "public"."menu_menuitemtranslation" ADD CONSTRAINT "menu_menuitemtranslation_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table order_fulfillment
-- ----------------------------
CREATE INDEX "order_fulfillment_order_id_02695111" ON "public"."order_fulfillment" USING btree (
  "order_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Checks structure for table order_fulfillment
-- ----------------------------
ALTER TABLE "public"."order_fulfillment" ADD CONSTRAINT "order_fulfillment_fulfillment_order_check" CHECK ((fulfillment_order >= 0));

-- ----------------------------
-- Primary Key structure for table order_fulfillment
-- ----------------------------
ALTER TABLE "public"."order_fulfillment" ADD CONSTRAINT "order_fulfillment_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table order_fulfillmentline
-- ----------------------------
CREATE INDEX "order_fulfillmentline_fulfillment_id_68f3291d" ON "public"."order_fulfillmentline" USING btree (
  "fulfillment_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "order_fulfillmentline_order_line_id_7d40e054" ON "public"."order_fulfillmentline" USING btree (
  "order_line_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "order_fulfillmentline_stock_id_da5a99fe" ON "public"."order_fulfillmentline" USING btree (
  "stock_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Checks structure for table order_fulfillmentline
-- ----------------------------
ALTER TABLE "public"."order_fulfillmentline" ADD CONSTRAINT "order_fulfillmentline_quantity_81b787d3_check" CHECK ((quantity >= 0));

-- ----------------------------
-- Primary Key structure for table order_fulfillmentline
-- ----------------------------
ALTER TABLE "public"."order_fulfillmentline" ADD CONSTRAINT "order_fulfillmentline_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table order_order
-- ----------------------------
CREATE INDEX "order_order_billing_address_id_8fe537cf" ON "public"."order_order" USING btree (
  "billing_address_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "order_order_shipping_address_id_57e64931" ON "public"."order_order" USING btree (
  "shipping_address_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "order_order_shipping_method_id_2a742834" ON "public"."order_order" USING btree (
  "shipping_method_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "order_order_token_ddb7fb7b_like" ON "public"."order_order" USING btree (
  "token" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);
CREATE INDEX "order_order_user_id_7cf9bc2b" ON "public"."order_order" USING btree (
  "user_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "order_order_voucher_id_0748ca22" ON "public"."order_order" USING btree (
  "voucher_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table order_order
-- ----------------------------
ALTER TABLE "public"."order_order" ADD CONSTRAINT "order_order_token_key" UNIQUE ("token");

-- ----------------------------
-- Primary Key structure for table order_order
-- ----------------------------
ALTER TABLE "public"."order_order" ADD CONSTRAINT "order_order_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table order_order_gift_cards
-- ----------------------------
CREATE INDEX "order_order_gift_cards_giftcard_id_f6844926" ON "public"."order_order_gift_cards" USING btree (
  "giftcard_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "order_order_gift_cards_order_id_ce5608c4" ON "public"."order_order_gift_cards" USING btree (
  "order_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table order_order_gift_cards
-- ----------------------------
ALTER TABLE "public"."order_order_gift_cards" ADD CONSTRAINT "order_order_gift_cards_order_id_giftcard_id_f58e7356_uniq" UNIQUE ("order_id", "giftcard_id");

-- ----------------------------
-- Primary Key structure for table order_order_gift_cards
-- ----------------------------
ALTER TABLE "public"."order_order_gift_cards" ADD CONSTRAINT "order_order_gift_cards_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table order_orderevent
-- ----------------------------
CREATE INDEX "order_orderevent_order_id_09aa7ccd" ON "public"."order_orderevent" USING btree (
  "order_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "order_orderevent_user_id_1056ac9c" ON "public"."order_orderevent" USING btree (
  "user_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table order_orderevent
-- ----------------------------
ALTER TABLE "public"."order_orderevent" ADD CONSTRAINT "order_orderevent_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table order_orderline
-- ----------------------------
CREATE INDEX "order_orderline_order_id_eb04ec2d" ON "public"."order_orderline" USING btree (
  "order_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "order_orderline_variant_id_866774cb" ON "public"."order_orderline" USING btree (
  "variant_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table order_orderline
-- ----------------------------
ALTER TABLE "public"."order_orderline" ADD CONSTRAINT "order_ordereditem_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table page_page
-- ----------------------------
CREATE INDEX "page_page_slug_d6b7c8ed_like" ON "public"."page_page" USING btree (
  "slug" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table page_page
-- ----------------------------
ALTER TABLE "public"."page_page" ADD CONSTRAINT "page_page_slug_key" UNIQUE ("slug");

-- ----------------------------
-- Primary Key structure for table page_page
-- ----------------------------
ALTER TABLE "public"."page_page" ADD CONSTRAINT "page_page_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table page_pagetranslation
-- ----------------------------
CREATE INDEX "page_pagetranslation_page_id_60216ef5" ON "public"."page_pagetranslation" USING btree (
  "page_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table page_pagetranslation
-- ----------------------------
ALTER TABLE "public"."page_pagetranslation" ADD CONSTRAINT "page_pagetranslation_language_code_page_id_35685962_uniq" UNIQUE ("language_code", "page_id");

-- ----------------------------
-- Primary Key structure for table page_pagetranslation
-- ----------------------------
ALTER TABLE "public"."page_pagetranslation" ADD CONSTRAINT "page_pagetranslation_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table payment_payment
-- ----------------------------
CREATE INDEX "payment_paymentmethod_checkout_id_5c0aae3d" ON "public"."payment_payment" USING btree (
  "checkout_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);
CREATE INDEX "payment_paymentmethod_order_id_58acb979" ON "public"."payment_payment" USING btree (
  "order_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Checks structure for table payment_payment
-- ----------------------------
ALTER TABLE "public"."payment_payment" ADD CONSTRAINT "payment_paymentmethod_cc_exp_month_check" CHECK ((cc_exp_month >= 0));
ALTER TABLE "public"."payment_payment" ADD CONSTRAINT "payment_paymentmethod_cc_exp_year_check" CHECK ((cc_exp_year >= 0));

-- ----------------------------
-- Primary Key structure for table payment_payment
-- ----------------------------
ALTER TABLE "public"."payment_payment" ADD CONSTRAINT "payment_paymentmethod_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table payment_transaction
-- ----------------------------
CREATE INDEX "payment_transaction_payment_method_id_d35e75c1" ON "public"."payment_transaction" USING btree (
  "payment_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table payment_transaction
-- ----------------------------
ALTER TABLE "public"."payment_transaction" ADD CONSTRAINT "payment_transaction_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table plugins_pluginconfiguration
-- ----------------------------
CREATE INDEX "plugins_pluginconfiguration_identifier_3d7349fe_like" ON "public"."plugins_pluginconfiguration" USING btree (
  "identifier" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table plugins_pluginconfiguration
-- ----------------------------
ALTER TABLE "public"."plugins_pluginconfiguration" ADD CONSTRAINT "plugins_pluginconfiguration_identifier_3d7349fe_uniq" UNIQUE ("identifier");

-- ----------------------------
-- Primary Key structure for table plugins_pluginconfiguration
-- ----------------------------
ALTER TABLE "public"."plugins_pluginconfiguration" ADD CONSTRAINT "plugins_pluginconfiguration_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table product_assignedproductattribute
-- ----------------------------
CREATE INDEX "product_assignedproductattribute_assignment_id_eb2f81a4" ON "public"."product_assignedproductattribute" USING btree (
  "assignment_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "product_assignedproductattribute_product_id_68be10a3" ON "public"."product_assignedproductattribute" USING btree (
  "product_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table product_assignedproductattribute
-- ----------------------------
ALTER TABLE "public"."product_assignedproductattribute" ADD CONSTRAINT "product_assignedproducta_product_id_assignment_id_d7f5aab5_uniq" UNIQUE ("product_id", "assignment_id");

-- ----------------------------
-- Primary Key structure for table product_assignedproductattribute
-- ----------------------------
ALTER TABLE "public"."product_assignedproductattribute" ADD CONSTRAINT "product_assignedproductattribute_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table product_assignedproductattribute_values
-- ----------------------------
CREATE INDEX "product_assignedproductatt_assignedproductattribute_i_6d497dfa" ON "public"."product_assignedproductattribute_values" USING btree (
  "assignedproductattribute_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "product_assignedproductatt_attributevalue_id_5bd29b24" ON "public"."product_assignedproductattribute_values" USING btree (
  "attributevalue_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table product_assignedproductattribute_values
-- ----------------------------
ALTER TABLE "public"."product_assignedproductattribute_values" ADD CONSTRAINT "product_assignedproducta_assignedproductattribute_ee1fc0ab_uniq" UNIQUE ("assignedproductattribute_id", "attributevalue_id");

-- ----------------------------
-- Primary Key structure for table product_assignedproductattribute_values
-- ----------------------------
ALTER TABLE "public"."product_assignedproductattribute_values" ADD CONSTRAINT "product_assignedproductattribute_values_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table product_assignedvariantattribute
-- ----------------------------
CREATE INDEX "product_assignedvariantattribute_assignment_id_8fdbffe8" ON "public"."product_assignedvariantattribute" USING btree (
  "assignment_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "product_assignedvariantattribute_variant_id_27483e6a" ON "public"."product_assignedvariantattribute" USING btree (
  "variant_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table product_assignedvariantattribute
-- ----------------------------
ALTER TABLE "public"."product_assignedvariantattribute" ADD CONSTRAINT "product_assignedvarianta_variant_id_assignment_id_16584418_uniq" UNIQUE ("variant_id", "assignment_id");

-- ----------------------------
-- Primary Key structure for table product_assignedvariantattribute
-- ----------------------------
ALTER TABLE "public"."product_assignedvariantattribute" ADD CONSTRAINT "product_assignedvariantattribute_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table product_assignedvariantattribute_values
-- ----------------------------
CREATE INDEX "product_assignedvariantatt_assignedvariantattribute_i_8d6d62ef" ON "public"."product_assignedvariantattribute_values" USING btree (
  "assignedvariantattribute_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "product_assignedvariantatt_attributevalue_id_41cc2454" ON "public"."product_assignedvariantattribute_values" USING btree (
  "attributevalue_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table product_assignedvariantattribute_values
-- ----------------------------
ALTER TABLE "public"."product_assignedvariantattribute_values" ADD CONSTRAINT "product_assignedvarianta_assignedvariantattribute_8ffaee19_uniq" UNIQUE ("assignedvariantattribute_id", "attributevalue_id");

-- ----------------------------
-- Primary Key structure for table product_assignedvariantattribute_values
-- ----------------------------
ALTER TABLE "public"."product_assignedvariantattribute_values" ADD CONSTRAINT "product_assignedvariantattribute_values_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table product_attribute
-- ----------------------------
CREATE INDEX "product_attribute_slug_a2ba35f2_like" ON "public"."product_attribute" USING btree (
  "slug" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table product_attribute
-- ----------------------------
ALTER TABLE "public"."product_attribute" ADD CONSTRAINT "product_attribute_slug_a2ba35f2_uniq" UNIQUE ("slug");

-- ----------------------------
-- Primary Key structure for table product_attribute
-- ----------------------------
ALTER TABLE "public"."product_attribute" ADD CONSTRAINT "product_productattribute_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table product_attributeproduct
-- ----------------------------
CREATE INDEX "product_attributeproduct_attribute_id_0051c706" ON "public"."product_attributeproduct" USING btree (
  "attribute_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "product_attributeproduct_product_type_id_54357b3b" ON "public"."product_attributeproduct" USING btree (
  "product_type_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "product_attributeproduct_sort_order_cec8a8e2" ON "public"."product_attributeproduct" USING btree (
  "sort_order" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table product_attributeproduct
-- ----------------------------
ALTER TABLE "public"."product_attributeproduct" ADD CONSTRAINT "product_attributeproduct_attribute_id_product_typ_85ea87be_uniq" UNIQUE ("attribute_id", "product_type_id");

-- ----------------------------
-- Primary Key structure for table product_attributeproduct
-- ----------------------------
ALTER TABLE "public"."product_attributeproduct" ADD CONSTRAINT "product_attributeproduct_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table product_attributetranslation
-- ----------------------------
CREATE INDEX "product_productattributetr_product_attribute_id_56b48511" ON "public"."product_attributetranslation" USING btree (
  "attribute_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table product_attributetranslation
-- ----------------------------
ALTER TABLE "public"."product_attributetranslation" ADD CONSTRAINT "product_productattribute_language_code_product_at_58451db2_uniq" UNIQUE ("language_code", "attribute_id");

-- ----------------------------
-- Primary Key structure for table product_attributetranslation
-- ----------------------------
ALTER TABLE "public"."product_attributetranslation" ADD CONSTRAINT "product_productattributetranslation_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table product_attributevalue
-- ----------------------------
CREATE INDEX "product_attributechoicevalue_attribute_id_c28c6c92" ON "public"."product_attributevalue" USING btree (
  "attribute_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "product_attributechoicevalue_slug_e0d2d25b" ON "public"."product_attributevalue" USING btree (
  "slug" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "product_attributechoicevalue_slug_e0d2d25b_like" ON "public"."product_attributevalue" USING btree (
  "slug" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);
CREATE INDEX "product_attributechoicevalue_sort_order_c4c071c4" ON "public"."product_attributevalue" USING btree (
  "sort_order" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table product_attributevalue
-- ----------------------------
ALTER TABLE "public"."product_attributevalue" ADD CONSTRAINT "product_attributevalue_slug_attribute_id_a9b19472_uniq" UNIQUE ("slug", "attribute_id");

-- ----------------------------
-- Primary Key structure for table product_attributevalue
-- ----------------------------
ALTER TABLE "public"."product_attributevalue" ADD CONSTRAINT "product_attributechoicevalue_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table product_attributevaluetranslation
-- ----------------------------
CREATE INDEX "product_attributechoiceval_attribute_choice_value_id_71c4c0a7" ON "public"."product_attributevaluetranslation" USING btree (
  "attribute_value_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table product_attributevaluetranslation
-- ----------------------------
ALTER TABLE "public"."product_attributevaluetranslation" ADD CONSTRAINT "product_attributechoicev_language_code_attribute__9b58af18_uniq" UNIQUE ("language_code", "attribute_value_id");

-- ----------------------------
-- Primary Key structure for table product_attributevaluetranslation
-- ----------------------------
ALTER TABLE "public"."product_attributevaluetranslation" ADD CONSTRAINT "product_attributechoicevaluetranslation_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table product_attributevariant
-- ----------------------------
CREATE INDEX "product_attributevariant_attribute_id_e47d3bc3" ON "public"."product_attributevariant" USING btree (
  "attribute_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "product_attributevariant_product_type_id_ba95c6dd" ON "public"."product_attributevariant" USING btree (
  "product_type_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "product_attributevariant_sort_order_cf4b00ef" ON "public"."product_attributevariant" USING btree (
  "sort_order" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table product_attributevariant
-- ----------------------------
ALTER TABLE "public"."product_attributevariant" ADD CONSTRAINT "product_attributevariant_attribute_id_product_typ_304d6c95_uniq" UNIQUE ("attribute_id", "product_type_id");

-- ----------------------------
-- Primary Key structure for table product_attributevariant
-- ----------------------------
ALTER TABLE "public"."product_attributevariant" ADD CONSTRAINT "product_attributevariant_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table product_category
-- ----------------------------
CREATE INDEX "product_category_parent_id_f6860923" ON "public"."product_category" USING btree (
  "parent_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "product_category_slug_e1f8ccc4_like" ON "public"."product_category" USING btree (
  "slug" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);
CREATE INDEX "product_category_tree_id_f3c46461" ON "public"."product_category" USING btree (
  "tree_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table product_category
-- ----------------------------
ALTER TABLE "public"."product_category" ADD CONSTRAINT "product_category_slug_e1f8ccc4_uniq" UNIQUE ("slug");

-- ----------------------------
-- Checks structure for table product_category
-- ----------------------------
ALTER TABLE "public"."product_category" ADD CONSTRAINT "product_category_tree_id_check" CHECK ((tree_id >= 0));
ALTER TABLE "public"."product_category" ADD CONSTRAINT "product_category_lft_check" CHECK ((lft >= 0));
ALTER TABLE "public"."product_category" ADD CONSTRAINT "product_category_level_check" CHECK ((level >= 0));
ALTER TABLE "public"."product_category" ADD CONSTRAINT "product_category_rght_check" CHECK ((rght >= 0));

-- ----------------------------
-- Primary Key structure for table product_category
-- ----------------------------
ALTER TABLE "public"."product_category" ADD CONSTRAINT "product_category_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table product_categorytranslation
-- ----------------------------
CREATE INDEX "product_categorytranslation_category_id_aa8d0917" ON "public"."product_categorytranslation" USING btree (
  "category_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table product_categorytranslation
-- ----------------------------
ALTER TABLE "public"."product_categorytranslation" ADD CONSTRAINT "product_categorytranslat_language_code_category_i_f71fd11d_uniq" UNIQUE ("language_code", "category_id");

-- ----------------------------
-- Primary Key structure for table product_categorytranslation
-- ----------------------------
ALTER TABLE "public"."product_categorytranslation" ADD CONSTRAINT "product_categorytranslation_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table product_collection
-- ----------------------------
CREATE INDEX "product_collection_name_03bb818b_like" ON "public"."product_collection" USING btree (
  "name" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);
CREATE INDEX "product_collection_slug_ec186116_like" ON "public"."product_collection" USING btree (
  "slug" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table product_collection
-- ----------------------------
ALTER TABLE "public"."product_collection" ADD CONSTRAINT "product_collection_name_key" UNIQUE ("name");
ALTER TABLE "public"."product_collection" ADD CONSTRAINT "product_collection_slug_ec186116_uniq" UNIQUE ("slug");

-- ----------------------------
-- Primary Key structure for table product_collection
-- ----------------------------
ALTER TABLE "public"."product_collection" ADD CONSTRAINT "product_collection_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table product_collectionproduct
-- ----------------------------
CREATE INDEX "product_collection_products_collection_id_0bc817dc" ON "public"."product_collectionproduct" USING btree (
  "collection_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "product_collection_products_product_id_a45a5b06" ON "public"."product_collectionproduct" USING btree (
  "product_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "product_collectionproduct_sort_order_5e7b55bb" ON "public"."product_collectionproduct" USING btree (
  "sort_order" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table product_collectionproduct
-- ----------------------------
ALTER TABLE "public"."product_collectionproduct" ADD CONSTRAINT "product_collectionproduc_collection_id_product_id_e582d799_uniq" UNIQUE ("collection_id", "product_id");

-- ----------------------------
-- Primary Key structure for table product_collectionproduct
-- ----------------------------
ALTER TABLE "public"."product_collectionproduct" ADD CONSTRAINT "product_collection_products_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table product_collectiontranslation
-- ----------------------------
CREATE INDEX "product_collectiontranslation_collection_id_cfbbd453" ON "public"."product_collectiontranslation" USING btree (
  "collection_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table product_collectiontranslation
-- ----------------------------
ALTER TABLE "public"."product_collectiontranslation" ADD CONSTRAINT "product_collectiontransl_language_code_collection_b1200cd5_uniq" UNIQUE ("language_code", "collection_id");

-- ----------------------------
-- Primary Key structure for table product_collectiontranslation
-- ----------------------------
ALTER TABLE "public"."product_collectiontranslation" ADD CONSTRAINT "product_collectiontranslation_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table product_digitalcontent
-- ----------------------------
ALTER TABLE "public"."product_digitalcontent" ADD CONSTRAINT "product_digitalcontent_product_variant_id_key" UNIQUE ("product_variant_id");

-- ----------------------------
-- Primary Key structure for table product_digitalcontent
-- ----------------------------
ALTER TABLE "public"."product_digitalcontent" ADD CONSTRAINT "product_digitalcontent_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table product_digitalcontenturl
-- ----------------------------
CREATE INDEX "product_digitalcontenturl_content_id_654197bd" ON "public"."product_digitalcontenturl" USING btree (
  "content_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table product_digitalcontenturl
-- ----------------------------
ALTER TABLE "public"."product_digitalcontenturl" ADD CONSTRAINT "product_digitalcontenturl_token_key" UNIQUE ("token");
ALTER TABLE "public"."product_digitalcontenturl" ADD CONSTRAINT "product_digitalcontenturl_line_id_key" UNIQUE ("line_id");

-- ----------------------------
-- Primary Key structure for table product_digitalcontenturl
-- ----------------------------
ALTER TABLE "public"."product_digitalcontenturl" ADD CONSTRAINT "product_digitalcontenturl_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table product_product
-- ----------------------------
CREATE INDEX "product_product_category_id_0c725779" ON "public"."product_product" USING btree (
  "category_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "product_product_product_class_id_0547c998" ON "public"."product_product" USING btree (
  "product_type_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "product_product_slug_76cde0ae_like" ON "public"."product_product" USING btree (
  "slug" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table product_product
-- ----------------------------
ALTER TABLE "public"."product_product" ADD CONSTRAINT "product_product_slug_key" UNIQUE ("slug");
ALTER TABLE "public"."product_product" ADD CONSTRAINT "product_product_default_variant_id_key" UNIQUE ("default_variant_id");

-- ----------------------------
-- Primary Key structure for table product_product
-- ----------------------------
ALTER TABLE "public"."product_product" ADD CONSTRAINT "product_product_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table product_productimage
-- ----------------------------
CREATE INDEX "product_productimage_product_id_544084bb" ON "public"."product_productimage" USING btree (
  "product_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "product_productimage_sort_order_dfda9c19" ON "public"."product_productimage" USING btree (
  "sort_order" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table product_productimage
-- ----------------------------
ALTER TABLE "public"."product_productimage" ADD CONSTRAINT "product_productimage_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table product_producttranslation
-- ----------------------------
CREATE INDEX "product_producttranslation_product_id_2c2c7532" ON "public"."product_producttranslation" USING btree (
  "product_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table product_producttranslation
-- ----------------------------
ALTER TABLE "public"."product_producttranslation" ADD CONSTRAINT "product_producttranslati_language_code_product_id_b06ba774_uniq" UNIQUE ("language_code", "product_id");

-- ----------------------------
-- Primary Key structure for table product_producttranslation
-- ----------------------------
ALTER TABLE "public"."product_producttranslation" ADD CONSTRAINT "product_producttranslation_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table product_producttype
-- ----------------------------
CREATE INDEX "product_producttype_slug_6871faf2_like" ON "public"."product_producttype" USING btree (
  "slug" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table product_producttype
-- ----------------------------
ALTER TABLE "public"."product_producttype" ADD CONSTRAINT "product_producttype_slug_key" UNIQUE ("slug");

-- ----------------------------
-- Primary Key structure for table product_producttype
-- ----------------------------
ALTER TABLE "public"."product_producttype" ADD CONSTRAINT "product_productclass_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table product_productvariant
-- ----------------------------
CREATE INDEX "product_productvariant_product_id_43c5a310" ON "public"."product_productvariant" USING btree (
  "product_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "product_productvariant_sku_50706818_like" ON "public"."product_productvariant" USING btree (
  "sku" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);
CREATE INDEX "product_productvariant_sort_order_d4acf89b" ON "public"."product_productvariant" USING btree (
  "sort_order" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table product_productvariant
-- ----------------------------
ALTER TABLE "public"."product_productvariant" ADD CONSTRAINT "product_productvariant_sku_key" UNIQUE ("sku");

-- ----------------------------
-- Primary Key structure for table product_productvariant
-- ----------------------------
ALTER TABLE "public"."product_productvariant" ADD CONSTRAINT "product_productvariant_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table product_productvarianttranslation
-- ----------------------------
CREATE INDEX "product_productvarianttranslation_product_variant_id_1b144a85" ON "public"."product_productvarianttranslation" USING btree (
  "product_variant_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table product_productvarianttranslation
-- ----------------------------
ALTER TABLE "public"."product_productvarianttranslation" ADD CONSTRAINT "product_productvarianttr_language_code_product_va_cf16d8d0_uniq" UNIQUE ("language_code", "product_variant_id");

-- ----------------------------
-- Primary Key structure for table product_productvarianttranslation
-- ----------------------------
ALTER TABLE "public"."product_productvarianttranslation" ADD CONSTRAINT "product_productvarianttranslation_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table product_variantimage
-- ----------------------------
CREATE INDEX "product_variantimage_image_id_bef14106" ON "public"."product_variantimage" USING btree (
  "image_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "product_variantimage_variant_id_81123814" ON "public"."product_variantimage" USING btree (
  "variant_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table product_variantimage
-- ----------------------------
ALTER TABLE "public"."product_variantimage" ADD CONSTRAINT "product_variantimage_variant_id_image_id_b19f327c_uniq" UNIQUE ("variant_id", "image_id");

-- ----------------------------
-- Primary Key structure for table product_variantimage
-- ----------------------------
ALTER TABLE "public"."product_variantimage" ADD CONSTRAINT "product_variantimage_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table shipping_shippingmethod
-- ----------------------------
CREATE INDEX "shipping_shippingmethod_shipping_zone_id_265b7413" ON "public"."shipping_shippingmethod" USING btree (
  "shipping_zone_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table shipping_shippingmethod
-- ----------------------------
ALTER TABLE "public"."shipping_shippingmethod" ADD CONSTRAINT "shipping_shippingmethod_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table shipping_shippingmethodtranslation
-- ----------------------------
CREATE INDEX "shipping_shippingmethodtranslation_shipping_method_id_31d925d2" ON "public"."shipping_shippingmethodtranslation" USING btree (
  "shipping_method_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table shipping_shippingmethodtranslation
-- ----------------------------
ALTER TABLE "public"."shipping_shippingmethodtranslation" ADD CONSTRAINT "shipping_shippingmethodt_language_code_shipping_m_70e4f786_uniq" UNIQUE ("language_code", "shipping_method_id");

-- ----------------------------
-- Primary Key structure for table shipping_shippingmethodtranslation
-- ----------------------------
ALTER TABLE "public"."shipping_shippingmethodtranslation" ADD CONSTRAINT "shipping_shippingmethodtranslation_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table shipping_shippingzone
-- ----------------------------
ALTER TABLE "public"."shipping_shippingzone" ADD CONSTRAINT "shipping_shippingzone_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table site_authorizationkey
-- ----------------------------
CREATE INDEX "site_authorizationkey_site_settings_id_d8397c0f" ON "public"."site_authorizationkey" USING btree (
  "site_settings_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table site_authorizationkey
-- ----------------------------
ALTER TABLE "public"."site_authorizationkey" ADD CONSTRAINT "site_authorizationkey_site_settings_id_name_c5f8d1e6_uniq" UNIQUE ("site_settings_id", "name");

-- ----------------------------
-- Primary Key structure for table site_authorizationkey
-- ----------------------------
ALTER TABLE "public"."site_authorizationkey" ADD CONSTRAINT "site_authorizationkey_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table site_sitesettings
-- ----------------------------
CREATE INDEX "site_sitesettings_bottom_menu_id_e2a78098" ON "public"."site_sitesettings" USING btree (
  "bottom_menu_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "site_sitesettings_company_address_id_f0825427" ON "public"."site_sitesettings" USING btree (
  "company_address_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "site_sitesettings_homepage_collection_id_82f45d33" ON "public"."site_sitesettings" USING btree (
  "homepage_collection_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "site_sitesettings_top_menu_id_ab6f8c46" ON "public"."site_sitesettings" USING btree (
  "top_menu_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table site_sitesettings
-- ----------------------------
ALTER TABLE "public"."site_sitesettings" ADD CONSTRAINT "site_sitesettings_site_id_key" UNIQUE ("site_id");

-- ----------------------------
-- Primary Key structure for table site_sitesettings
-- ----------------------------
ALTER TABLE "public"."site_sitesettings" ADD CONSTRAINT "site_sitesettings_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table site_sitesettingstranslation
-- ----------------------------
CREATE INDEX "site_sitesettingstranslation_site_settings_id_ca085ff6" ON "public"."site_sitesettingstranslation" USING btree (
  "site_settings_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table site_sitesettingstranslation
-- ----------------------------
ALTER TABLE "public"."site_sitesettingstranslation" ADD CONSTRAINT "site_sitesettingstransla_language_code_site_setti_e767d9e7_uniq" UNIQUE ("language_code", "site_settings_id");

-- ----------------------------
-- Primary Key structure for table site_sitesettingstranslation
-- ----------------------------
ALTER TABLE "public"."site_sitesettingstranslation" ADD CONSTRAINT "site_sitesettingstranslation_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table warehouse_allocation
-- ----------------------------
CREATE INDEX "warehouse_allocation_order_line_id_693dcb84" ON "public"."warehouse_allocation" USING btree (
  "order_line_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "warehouse_allocation_stock_id_73541542" ON "public"."warehouse_allocation" USING btree (
  "stock_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table warehouse_allocation
-- ----------------------------
ALTER TABLE "public"."warehouse_allocation" ADD CONSTRAINT "warehouse_allocation_order_line_id_stock_id_aa103861_uniq" UNIQUE ("order_line_id", "stock_id");

-- ----------------------------
-- Checks structure for table warehouse_allocation
-- ----------------------------
ALTER TABLE "public"."warehouse_allocation" ADD CONSTRAINT "warehouse_allocation_quantity_allocated_check" CHECK ((quantity_allocated >= 0));

-- ----------------------------
-- Primary Key structure for table warehouse_allocation
-- ----------------------------
ALTER TABLE "public"."warehouse_allocation" ADD CONSTRAINT "warehouse_allocation_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table warehouse_stock
-- ----------------------------
CREATE INDEX "warehouse_stock_product_variant_id_bea58a82" ON "public"."warehouse_stock" USING btree (
  "product_variant_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "warehouse_stock_warehouse_id_cc9d4e5d" ON "public"."warehouse_stock" USING btree (
  "warehouse_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table warehouse_stock
-- ----------------------------
ALTER TABLE "public"."warehouse_stock" ADD CONSTRAINT "warehouse_stock_warehouse_id_product_variant_id_b04a0a40_uniq" UNIQUE ("warehouse_id", "product_variant_id");

-- ----------------------------
-- Checks structure for table warehouse_stock
-- ----------------------------
ALTER TABLE "public"."warehouse_stock" ADD CONSTRAINT "warehouse_stock_quantity_check" CHECK ((quantity >= 0));

-- ----------------------------
-- Primary Key structure for table warehouse_stock
-- ----------------------------
ALTER TABLE "public"."warehouse_stock" ADD CONSTRAINT "warehouse_stock_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table warehouse_warehouse
-- ----------------------------
CREATE INDEX "warehouse_warehouse_address_id_d46e1096" ON "public"."warehouse_warehouse" USING btree (
  "address_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "warehouse_warehouse_slug_5ca9c575_like" ON "public"."warehouse_warehouse" USING btree (
  "slug" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table warehouse_warehouse
-- ----------------------------
ALTER TABLE "public"."warehouse_warehouse" ADD CONSTRAINT "warehouse_warehouse_slug_key" UNIQUE ("slug");

-- ----------------------------
-- Primary Key structure for table warehouse_warehouse
-- ----------------------------
ALTER TABLE "public"."warehouse_warehouse" ADD CONSTRAINT "warehouse_warehouse_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table warehouse_warehouse_shipping_zones
-- ----------------------------
CREATE INDEX "warehouse_warehouse_shipping_zones_shippingzone_id_aeee255b" ON "public"."warehouse_warehouse_shipping_zones" USING btree (
  "shippingzone_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "warehouse_warehouse_shipping_zones_warehouse_id_fccd6647" ON "public"."warehouse_warehouse_shipping_zones" USING btree (
  "warehouse_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table warehouse_warehouse_shipping_zones
-- ----------------------------
ALTER TABLE "public"."warehouse_warehouse_shipping_zones" ADD CONSTRAINT "warehouse_warehouse_ship_warehouse_id_shippingzon_e18400fa_uniq" UNIQUE ("warehouse_id", "shippingzone_id");

-- ----------------------------
-- Primary Key structure for table warehouse_warehouse_shipping_zones
-- ----------------------------
ALTER TABLE "public"."warehouse_warehouse_shipping_zones" ADD CONSTRAINT "warehouse_warehouse_shipping_zones_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table webhook_webhook
-- ----------------------------
CREATE INDEX "webhook_webhook_service_account_id_1073b057" ON "public"."webhook_webhook" USING btree (
  "app_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table webhook_webhook
-- ----------------------------
ALTER TABLE "public"."webhook_webhook" ADD CONSTRAINT "webhook_webhook_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table webhook_webhookevent
-- ----------------------------
CREATE INDEX "webhook_webhookevent_event_type_cd6b8c13" ON "public"."webhook_webhookevent" USING btree (
  "event_type" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "webhook_webhookevent_event_type_cd6b8c13_like" ON "public"."webhook_webhookevent" USING btree (
  "event_type" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);
CREATE INDEX "webhook_webhookevent_webhook_id_73b5c9e1" ON "public"."webhook_webhookevent" USING btree (
  "webhook_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table webhook_webhookevent
-- ----------------------------
ALTER TABLE "public"."webhook_webhookevent" ADD CONSTRAINT "webhook_webhookevent_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table wishlist_wishlist
-- ----------------------------
ALTER TABLE "public"."wishlist_wishlist" ADD CONSTRAINT "wishlist_wishlist_token_key" UNIQUE ("token");
ALTER TABLE "public"."wishlist_wishlist" ADD CONSTRAINT "wishlist_wishlist_user_id_key" UNIQUE ("user_id");

-- ----------------------------
-- Primary Key structure for table wishlist_wishlist
-- ----------------------------
ALTER TABLE "public"."wishlist_wishlist" ADD CONSTRAINT "wishlist_wishlist_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table wishlist_wishlistitem
-- ----------------------------
CREATE INDEX "wishlist_wishlistitem_product_id_8309716a" ON "public"."wishlist_wishlistitem" USING btree (
  "product_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "wishlist_wishlistitem_wishlist_id_a052b63d" ON "public"."wishlist_wishlistitem" USING btree (
  "wishlist_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table wishlist_wishlistitem
-- ----------------------------
ALTER TABLE "public"."wishlist_wishlistitem" ADD CONSTRAINT "wishlist_wishlistitem_wishlist_id_product_id_3b73b644_uniq" UNIQUE ("wishlist_id", "product_id");

-- ----------------------------
-- Primary Key structure for table wishlist_wishlistitem
-- ----------------------------
ALTER TABLE "public"."wishlist_wishlistitem" ADD CONSTRAINT "wishlist_wishlistitem_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table wishlist_wishlistitem_variants
-- ----------------------------
CREATE INDEX "wishlist_wishlistitem_variants_productvariant_id_819ee66b" ON "public"."wishlist_wishlistitem_variants" USING btree (
  "productvariant_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "wishlist_wishlistitem_variants_wishlistitem_id_ee616761" ON "public"."wishlist_wishlistitem_variants" USING btree (
  "wishlistitem_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table wishlist_wishlistitem_variants
-- ----------------------------
ALTER TABLE "public"."wishlist_wishlistitem_variants" ADD CONSTRAINT "wishlist_wishlistitem_va_wishlistitem_id_productv_33a1ed29_uniq" UNIQUE ("wishlistitem_id", "productvariant_id");

-- ----------------------------
-- Primary Key structure for table wishlist_wishlistitem_variants
-- ----------------------------
ALTER TABLE "public"."wishlist_wishlistitem_variants" ADD CONSTRAINT "wishlist_wishlistitem_variants_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Keys structure for table account_customerevent
-- ----------------------------
ALTER TABLE "public"."account_customerevent" ADD CONSTRAINT "account_customerevent_order_id_2d6e2d20_fk_order_order_id" FOREIGN KEY ("order_id") REFERENCES "public"."order_order" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."account_customerevent" ADD CONSTRAINT "account_customerevent_user_id_b3d6ec36_fk_account_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."account_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table account_customernote
-- ----------------------------
ALTER TABLE "public"."account_customernote" ADD CONSTRAINT "account_customernote_customer_id_ec50cbf6_fk_account_user_id" FOREIGN KEY ("customer_id") REFERENCES "public"."account_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."account_customernote" ADD CONSTRAINT "account_customernote_user_id_b10a6c14_fk_account_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."account_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table account_staffnotificationrecipient
-- ----------------------------
ALTER TABLE "public"."account_staffnotificationrecipient" ADD CONSTRAINT "account_staffnotific_user_id_538fa3a4_fk_account_u" FOREIGN KEY ("user_id") REFERENCES "public"."account_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table account_user
-- ----------------------------
ALTER TABLE "public"."account_user" ADD CONSTRAINT "userprofile_user_default_billing_addr_0489abf1_fk_userprofi" FOREIGN KEY ("default_billing_address_id") REFERENCES "public"."account_address" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."account_user" ADD CONSTRAINT "userprofile_user_default_shipping_add_aae7a203_fk_userprofi" FOREIGN KEY ("default_shipping_address_id") REFERENCES "public"."account_address" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table account_user_addresses
-- ----------------------------
ALTER TABLE "public"."account_user_addresses" ADD CONSTRAINT "account_user_address_address_id_d218822a_fk_account_a" FOREIGN KEY ("address_id") REFERENCES "public"."account_address" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."account_user_addresses" ADD CONSTRAINT "account_user_addresses_user_id_2fcc8301_fk_account_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."account_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table account_user_groups
-- ----------------------------
ALTER TABLE "public"."account_user_groups" ADD CONSTRAINT "userprofile_user_groups_group_id_c7eec74e_fk_auth_group_id" FOREIGN KEY ("group_id") REFERENCES "public"."auth_group" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."account_user_groups" ADD CONSTRAINT "userprofile_user_groups_user_id_5e712a24_fk_userprofile_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."account_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table account_user_user_permissions
-- ----------------------------
ALTER TABLE "public"."account_user_user_permissions" ADD CONSTRAINT "userprofile_user_use_permission_id_1caa8a71_fk_auth_perm" FOREIGN KEY ("permission_id") REFERENCES "public"."auth_permission" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."account_user_user_permissions" ADD CONSTRAINT "userprofile_user_use_user_id_6d654469_fk_userprofi" FOREIGN KEY ("user_id") REFERENCES "public"."account_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table app_app_permissions
-- ----------------------------
ALTER TABLE "public"."app_app_permissions" ADD CONSTRAINT "app_app_permissions_app_id_5941597d_fk_app_app_id" FOREIGN KEY ("app_id") REFERENCES "public"."app_app" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."app_app_permissions" ADD CONSTRAINT "app_app_permissions_permission_id_defe4a88_fk_auth_perm" FOREIGN KEY ("permission_id") REFERENCES "public"."auth_permission" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table app_appinstallation_permissions
-- ----------------------------
ALTER TABLE "public"."app_appinstallation_permissions" ADD CONSTRAINT "app_appinstallation__appinstallation_id_f7fe0271_fk_app_appin" FOREIGN KEY ("appinstallation_id") REFERENCES "public"."app_appinstallation" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."app_appinstallation_permissions" ADD CONSTRAINT "app_appinstallation__permission_id_4ee9f6c8_fk_auth_perm" FOREIGN KEY ("permission_id") REFERENCES "public"."auth_permission" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table app_apptoken
-- ----------------------------
ALTER TABLE "public"."app_apptoken" ADD CONSTRAINT "app_apptoken_app_id_68561141_fk_app_app_id" FOREIGN KEY ("app_id") REFERENCES "public"."app_app" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table auth_group_permissions
-- ----------------------------
ALTER TABLE "public"."auth_group_permissions" ADD CONSTRAINT "auth_group_permissio_permission_id_84c5c92e_fk_auth_perm" FOREIGN KEY ("permission_id") REFERENCES "public"."auth_permission" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."auth_group_permissions" ADD CONSTRAINT "auth_group_permissions_group_id_b120cbf9_fk_auth_group_id" FOREIGN KEY ("group_id") REFERENCES "public"."auth_group" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table auth_permission
-- ----------------------------
ALTER TABLE "public"."auth_permission" ADD CONSTRAINT "auth_permission_content_type_id_2f476e4b_fk_django_co" FOREIGN KEY ("content_type_id") REFERENCES "public"."django_content_type" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table checkout_checkout
-- ----------------------------
ALTER TABLE "public"."checkout_checkout" ADD CONSTRAINT "cart_cart_billing_address_id_9eb62ddd_fk_account_address_id" FOREIGN KEY ("billing_address_id") REFERENCES "public"."account_address" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."checkout_checkout" ADD CONSTRAINT "cart_cart_shipping_address_id_adfddaf9_fk_account_address_id" FOREIGN KEY ("shipping_address_id") REFERENCES "public"."account_address" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."checkout_checkout" ADD CONSTRAINT "checkout_checkout_shipping_method_id_8796abd0_fk_shipping_" FOREIGN KEY ("shipping_method_id") REFERENCES "public"."shipping_shippingmethod" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."checkout_checkout" ADD CONSTRAINT "checkout_checkout_user_id_8b2fe298_fk_account_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."account_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table checkout_checkout_gift_cards
-- ----------------------------
ALTER TABLE "public"."checkout_checkout_gift_cards" ADD CONSTRAINT "checkout_checkout_gi_checkout_id_e314728d_fk_checkout_" FOREIGN KEY ("checkout_id") REFERENCES "public"."checkout_checkout" ("token") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."checkout_checkout_gift_cards" ADD CONSTRAINT "checkout_checkout_gi_giftcard_id_f5994462_fk_giftcard_" FOREIGN KEY ("giftcard_id") REFERENCES "public"."giftcard_giftcard" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table checkout_checkoutline
-- ----------------------------
ALTER TABLE "public"."checkout_checkoutline" ADD CONSTRAINT "cart_cartline_variant_id_dbca56c9_fk_product_productvariant_id" FOREIGN KEY ("variant_id") REFERENCES "public"."product_productvariant" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."checkout_checkoutline" ADD CONSTRAINT "checkout_cartline_checkout_id_41d95a5d_fk_checkout_" FOREIGN KEY ("checkout_id") REFERENCES "public"."checkout_checkout" ("token") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table csv_exportevent
-- ----------------------------
ALTER TABLE "public"."csv_exportevent" ADD CONSTRAINT "csv_exportevent_app_id_8637fcc5_fk_app_app_id" FOREIGN KEY ("app_id") REFERENCES "public"."app_app" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."csv_exportevent" ADD CONSTRAINT "csv_exportevent_export_file_id_35f6c448_fk_csv_exportfile_id" FOREIGN KEY ("export_file_id") REFERENCES "public"."csv_exportfile" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."csv_exportevent" ADD CONSTRAINT "csv_exportevent_user_id_6111f193_fk_account_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."account_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table csv_exportfile
-- ----------------------------
ALTER TABLE "public"."csv_exportfile" ADD CONSTRAINT "csv_exportfile_app_id_bc900999_fk_app_app_id" FOREIGN KEY ("app_id") REFERENCES "public"."app_app" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."csv_exportfile" ADD CONSTRAINT "csv_exportfile_user_id_2c9071e6_fk_account_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."account_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table discount_sale_categories
-- ----------------------------
ALTER TABLE "public"."discount_sale_categories" ADD CONSTRAINT "discount_sale_catego_category_id_64e132af_fk_product_c" FOREIGN KEY ("category_id") REFERENCES "public"."product_category" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."discount_sale_categories" ADD CONSTRAINT "discount_sale_categories_sale_id_2aeee4a7_fk_discount_sale_id" FOREIGN KEY ("sale_id") REFERENCES "public"."discount_sale" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table discount_sale_collections
-- ----------------------------
ALTER TABLE "public"."discount_sale_collections" ADD CONSTRAINT "discount_sale_collec_collection_id_f66df9d7_fk_product_c" FOREIGN KEY ("collection_id") REFERENCES "public"."product_collection" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."discount_sale_collections" ADD CONSTRAINT "discount_sale_collections_sale_id_a912da4a_fk_discount_sale_id" FOREIGN KEY ("sale_id") REFERENCES "public"."discount_sale" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table discount_sale_products
-- ----------------------------
ALTER TABLE "public"."discount_sale_products" ADD CONSTRAINT "discount_sale_produc_product_id_d42c9636_fk_product_p" FOREIGN KEY ("product_id") REFERENCES "public"."product_product" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."discount_sale_products" ADD CONSTRAINT "discount_sale_products_sale_id_10e3a20f_fk_discount_sale_id" FOREIGN KEY ("sale_id") REFERENCES "public"."discount_sale" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table discount_saletranslation
-- ----------------------------
ALTER TABLE "public"."discount_saletranslation" ADD CONSTRAINT "discount_saletranslation_sale_id_36a69b0a_fk_discount_sale_id" FOREIGN KEY ("sale_id") REFERENCES "public"."discount_sale" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table discount_voucher_categories
-- ----------------------------
ALTER TABLE "public"."discount_voucher_categories" ADD CONSTRAINT "discount_voucher_cat_category_id_fc9d044a_fk_product_c" FOREIGN KEY ("category_id") REFERENCES "public"."product_category" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."discount_voucher_categories" ADD CONSTRAINT "discount_voucher_cat_voucher_id_19a56338_fk_discount_" FOREIGN KEY ("voucher_id") REFERENCES "public"."discount_voucher" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table discount_voucher_collections
-- ----------------------------
ALTER TABLE "public"."discount_voucher_collections" ADD CONSTRAINT "discount_voucher_col_collection_id_b9de6b54_fk_product_c" FOREIGN KEY ("collection_id") REFERENCES "public"."product_collection" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."discount_voucher_collections" ADD CONSTRAINT "discount_voucher_col_voucher_id_4ce1fde3_fk_discount_" FOREIGN KEY ("voucher_id") REFERENCES "public"."discount_voucher" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table discount_voucher_products
-- ----------------------------
ALTER TABLE "public"."discount_voucher_products" ADD CONSTRAINT "discount_voucher_pro_product_id_4a3131ff_fk_product_p" FOREIGN KEY ("product_id") REFERENCES "public"."product_product" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."discount_voucher_products" ADD CONSTRAINT "discount_voucher_pro_voucher_id_8a2e6c3a_fk_discount_" FOREIGN KEY ("voucher_id") REFERENCES "public"."discount_voucher" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table discount_vouchercustomer
-- ----------------------------
ALTER TABLE "public"."discount_vouchercustomer" ADD CONSTRAINT "discount_vouchercust_voucher_id_bb55c04f_fk_discount_" FOREIGN KEY ("voucher_id") REFERENCES "public"."discount_voucher" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table discount_vouchertranslation
-- ----------------------------
ALTER TABLE "public"."discount_vouchertranslation" ADD CONSTRAINT "discount_vouchertran_voucher_id_288246a9_fk_discount_" FOREIGN KEY ("voucher_id") REFERENCES "public"."discount_voucher" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table giftcard_giftcard
-- ----------------------------
ALTER TABLE "public"."giftcard_giftcard" ADD CONSTRAINT "giftcard_giftcard_user_id_ce2401b5_fk_account_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."account_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table invoice_invoice
-- ----------------------------
ALTER TABLE "public"."invoice_invoice" ADD CONSTRAINT "invoice_invoice_order_id_c5fc9ae9_fk_order_order_id" FOREIGN KEY ("order_id") REFERENCES "public"."order_order" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table invoice_invoiceevent
-- ----------------------------
ALTER TABLE "public"."invoice_invoiceevent" ADD CONSTRAINT "invoice_invoiceevent_invoice_id_de0632ca_fk_invoice_invoice_id" FOREIGN KEY ("invoice_id") REFERENCES "public"."invoice_invoice" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."invoice_invoiceevent" ADD CONSTRAINT "invoice_invoiceevent_order_id_5a337f7a_fk_order_order_id" FOREIGN KEY ("order_id") REFERENCES "public"."order_order" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."invoice_invoiceevent" ADD CONSTRAINT "invoice_invoiceevent_user_id_cd599b8d_fk_account_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."account_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table menu_menuitem
-- ----------------------------
ALTER TABLE "public"."menu_menuitem" ADD CONSTRAINT "menu_menuitem_category_id_af353a3b_fk_product_category_id" FOREIGN KEY ("category_id") REFERENCES "public"."product_category" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."menu_menuitem" ADD CONSTRAINT "menu_menuitem_collection_id_b913b19e_fk_product_collection_id" FOREIGN KEY ("collection_id") REFERENCES "public"."product_collection" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."menu_menuitem" ADD CONSTRAINT "menu_menuitem_menu_id_f466b139_fk_menu_menu_id" FOREIGN KEY ("menu_id") REFERENCES "public"."menu_menu" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."menu_menuitem" ADD CONSTRAINT "menu_menuitem_page_id_a0c8f92d_fk_page_page_id" FOREIGN KEY ("page_id") REFERENCES "public"."page_page" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."menu_menuitem" ADD CONSTRAINT "menu_menuitem_parent_id_439f55a5_fk_menu_menuitem_id" FOREIGN KEY ("parent_id") REFERENCES "public"."menu_menuitem" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table menu_menuitemtranslation
-- ----------------------------
ALTER TABLE "public"."menu_menuitemtranslation" ADD CONSTRAINT "menu_menuitemtransla_menu_item_id_3445926c_fk_menu_menu" FOREIGN KEY ("menu_item_id") REFERENCES "public"."menu_menuitem" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table order_fulfillment
-- ----------------------------
ALTER TABLE "public"."order_fulfillment" ADD CONSTRAINT "order_fulfillment_order_id_02695111_fk_order_order_id" FOREIGN KEY ("order_id") REFERENCES "public"."order_order" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table order_fulfillmentline
-- ----------------------------
ALTER TABLE "public"."order_fulfillmentline" ADD CONSTRAINT "order_fulfillmentlin_fulfillment_id_68f3291d_fk_order_ful" FOREIGN KEY ("fulfillment_id") REFERENCES "public"."order_fulfillment" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."order_fulfillmentline" ADD CONSTRAINT "order_fulfillmentlin_order_line_id_7d40e054_fk_order_ord" FOREIGN KEY ("order_line_id") REFERENCES "public"."order_orderline" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."order_fulfillmentline" ADD CONSTRAINT "order_fulfillmentline_stock_id_da5a99fe_fk_warehouse_stock_id" FOREIGN KEY ("stock_id") REFERENCES "public"."warehouse_stock" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table order_order
-- ----------------------------
ALTER TABLE "public"."order_order" ADD CONSTRAINT "order_order_billing_address_id_8fe537cf_fk_userprofi" FOREIGN KEY ("billing_address_id") REFERENCES "public"."account_address" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."order_order" ADD CONSTRAINT "order_order_shipping_address_id_57e64931_fk_userprofi" FOREIGN KEY ("shipping_address_id") REFERENCES "public"."account_address" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."order_order" ADD CONSTRAINT "order_order_shipping_method_id_2a742834_fk_shipping_" FOREIGN KEY ("shipping_method_id") REFERENCES "public"."shipping_shippingmethod" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."order_order" ADD CONSTRAINT "order_order_user_id_7cf9bc2b_fk_userprofile_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."account_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."order_order" ADD CONSTRAINT "order_order_voucher_id_0748ca22_fk_discount_voucher_id" FOREIGN KEY ("voucher_id") REFERENCES "public"."discount_voucher" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table order_order_gift_cards
-- ----------------------------
ALTER TABLE "public"."order_order_gift_cards" ADD CONSTRAINT "order_order_gift_car_giftcard_id_f6844926_fk_giftcard_" FOREIGN KEY ("giftcard_id") REFERENCES "public"."giftcard_giftcard" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."order_order_gift_cards" ADD CONSTRAINT "order_order_gift_cards_order_id_ce5608c4_fk_order_order_id" FOREIGN KEY ("order_id") REFERENCES "public"."order_order" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table order_orderevent
-- ----------------------------
ALTER TABLE "public"."order_orderevent" ADD CONSTRAINT "order_orderevent_order_id_09aa7ccd_fk_order_order_id" FOREIGN KEY ("order_id") REFERENCES "public"."order_order" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."order_orderevent" ADD CONSTRAINT "order_orderevent_user_id_1056ac9c_fk_userprofile_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."account_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table order_orderline
-- ----------------------------
ALTER TABLE "public"."order_orderline" ADD CONSTRAINT "order_orderline_order_id_eb04ec2d_fk_order_order_id" FOREIGN KEY ("order_id") REFERENCES "public"."order_order" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."order_orderline" ADD CONSTRAINT "order_orderline_variant_id_866774cb_fk_product_p" FOREIGN KEY ("variant_id") REFERENCES "public"."product_productvariant" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table page_pagetranslation
-- ----------------------------
ALTER TABLE "public"."page_pagetranslation" ADD CONSTRAINT "page_pagetranslation_page_id_60216ef5_fk_page_page_id" FOREIGN KEY ("page_id") REFERENCES "public"."page_page" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table payment_payment
-- ----------------------------
ALTER TABLE "public"."payment_payment" ADD CONSTRAINT "payment_payment_checkout_id_1f32e1ab_fk_checkout_checkout_token" FOREIGN KEY ("checkout_id") REFERENCES "public"."checkout_checkout" ("token") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."payment_payment" ADD CONSTRAINT "payment_payment_order_id_22b45881_fk_order_order_id" FOREIGN KEY ("order_id") REFERENCES "public"."order_order" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table payment_transaction
-- ----------------------------
ALTER TABLE "public"."payment_transaction" ADD CONSTRAINT "payment_transaction_payment_id_df9808d7_fk_payment_payment_id" FOREIGN KEY ("payment_id") REFERENCES "public"."payment_payment" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table product_assignedproductattribute
-- ----------------------------
ALTER TABLE "public"."product_assignedproductattribute" ADD CONSTRAINT "product_assignedprod_assignment_id_eb2f81a4_fk_product_a" FOREIGN KEY ("assignment_id") REFERENCES "public"."product_attributeproduct" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."product_assignedproductattribute" ADD CONSTRAINT "product_assignedprod_product_id_68be10a3_fk_product_p" FOREIGN KEY ("product_id") REFERENCES "public"."product_product" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table product_assignedproductattribute_values
-- ----------------------------
ALTER TABLE "public"."product_assignedproductattribute_values" ADD CONSTRAINT "product_assignedprod_assignedproductattri_6d497dfa_fk_product_a" FOREIGN KEY ("assignedproductattribute_id") REFERENCES "public"."product_assignedproductattribute" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."product_assignedproductattribute_values" ADD CONSTRAINT "product_assignedprod_attributevalue_id_5bd29b24_fk_product_a" FOREIGN KEY ("attributevalue_id") REFERENCES "public"."product_attributevalue" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table product_assignedvariantattribute
-- ----------------------------
ALTER TABLE "public"."product_assignedvariantattribute" ADD CONSTRAINT "product_assignedvari_assignment_id_8fdbffe8_fk_product_a" FOREIGN KEY ("assignment_id") REFERENCES "public"."product_attributevariant" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."product_assignedvariantattribute" ADD CONSTRAINT "product_assignedvari_variant_id_27483e6a_fk_product_p" FOREIGN KEY ("variant_id") REFERENCES "public"."product_productvariant" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table product_assignedvariantattribute_values
-- ----------------------------
ALTER TABLE "public"."product_assignedvariantattribute_values" ADD CONSTRAINT "product_assignedvari_assignedvariantattri_8d6d62ef_fk_product_a" FOREIGN KEY ("assignedvariantattribute_id") REFERENCES "public"."product_assignedvariantattribute" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."product_assignedvariantattribute_values" ADD CONSTRAINT "product_assignedvari_attributevalue_id_41cc2454_fk_product_a" FOREIGN KEY ("attributevalue_id") REFERENCES "public"."product_attributevalue" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table product_attributeproduct
-- ----------------------------
ALTER TABLE "public"."product_attributeproduct" ADD CONSTRAINT "product_attributepro_attribute_id_0051c706_fk_product_a" FOREIGN KEY ("attribute_id") REFERENCES "public"."product_attribute" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."product_attributeproduct" ADD CONSTRAINT "product_attributepro_product_type_id_54357b3b_fk_product_p" FOREIGN KEY ("product_type_id") REFERENCES "public"."product_producttype" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table product_attributetranslation
-- ----------------------------
ALTER TABLE "public"."product_attributetranslation" ADD CONSTRAINT "product_attributetra_attribute_id_238dabfc_fk_product_a" FOREIGN KEY ("attribute_id") REFERENCES "public"."product_attribute" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table product_attributevalue
-- ----------------------------
ALTER TABLE "public"."product_attributevalue" ADD CONSTRAINT "product_attributecho_attribute_id_c28c6c92_fk_product_a" FOREIGN KEY ("attribute_id") REFERENCES "public"."product_attribute" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table product_attributevaluetranslation
-- ----------------------------
ALTER TABLE "public"."product_attributevaluetranslation" ADD CONSTRAINT "product_attributeval_attribute_value_id_8b2cb275_fk_product_a" FOREIGN KEY ("attribute_value_id") REFERENCES "public"."product_attributevalue" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table product_attributevariant
-- ----------------------------
ALTER TABLE "public"."product_attributevariant" ADD CONSTRAINT "product_attributevar_attribute_id_e47d3bc3_fk_product_a" FOREIGN KEY ("attribute_id") REFERENCES "public"."product_attribute" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."product_attributevariant" ADD CONSTRAINT "product_attributevar_product_type_id_ba95c6dd_fk_product_p" FOREIGN KEY ("product_type_id") REFERENCES "public"."product_producttype" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table product_category
-- ----------------------------
ALTER TABLE "public"."product_category" ADD CONSTRAINT "product_category_parent_id_f6860923_fk_product_category_id" FOREIGN KEY ("parent_id") REFERENCES "public"."product_category" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table product_categorytranslation
-- ----------------------------
ALTER TABLE "public"."product_categorytranslation" ADD CONSTRAINT "product_categorytran_category_id_aa8d0917_fk_product_c" FOREIGN KEY ("category_id") REFERENCES "public"."product_category" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table product_collectionproduct
-- ----------------------------
ALTER TABLE "public"."product_collectionproduct" ADD CONSTRAINT "product_collection_p_collection_id_0bc817dc_fk_product_c" FOREIGN KEY ("collection_id") REFERENCES "public"."product_collection" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."product_collectionproduct" ADD CONSTRAINT "product_collection_p_product_id_a45a5b06_fk_product_p" FOREIGN KEY ("product_id") REFERENCES "public"."product_product" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table product_collectiontranslation
-- ----------------------------
ALTER TABLE "public"."product_collectiontranslation" ADD CONSTRAINT "product_collectiontr_collection_id_cfbbd453_fk_product_c" FOREIGN KEY ("collection_id") REFERENCES "public"."product_collection" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table product_digitalcontent
-- ----------------------------
ALTER TABLE "public"."product_digitalcontent" ADD CONSTRAINT "product_digitalconte_product_variant_id_211462a5_fk_product_p" FOREIGN KEY ("product_variant_id") REFERENCES "public"."product_productvariant" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table product_digitalcontenturl
-- ----------------------------
ALTER TABLE "public"."product_digitalcontenturl" ADD CONSTRAINT "product_digitalconte_content_id_654197bd_fk_product_d" FOREIGN KEY ("content_id") REFERENCES "public"."product_digitalcontent" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."product_digitalcontenturl" ADD CONSTRAINT "product_digitalconte_line_id_82056694_fk_order_ord" FOREIGN KEY ("line_id") REFERENCES "public"."order_orderline" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table product_product
-- ----------------------------
ALTER TABLE "public"."product_product" ADD CONSTRAINT "product_product_category_id_0c725779_fk_product_category_id" FOREIGN KEY ("category_id") REFERENCES "public"."product_category" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."product_product" ADD CONSTRAINT "product_product_default_variant_id_bce7dabb_fk_product_p" FOREIGN KEY ("default_variant_id") REFERENCES "public"."product_productvariant" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."product_product" ADD CONSTRAINT "product_product_product_type_id_4bfbbfda_fk_product_p" FOREIGN KEY ("product_type_id") REFERENCES "public"."product_producttype" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table product_productimage
-- ----------------------------
ALTER TABLE "public"."product_productimage" ADD CONSTRAINT "product_productimage_product_id_544084bb_fk_product_product_id" FOREIGN KEY ("product_id") REFERENCES "public"."product_product" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table product_producttranslation
-- ----------------------------
ALTER TABLE "public"."product_producttranslation" ADD CONSTRAINT "product_producttrans_product_id_2c2c7532_fk_product_p" FOREIGN KEY ("product_id") REFERENCES "public"."product_product" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table product_productvariant
-- ----------------------------
ALTER TABLE "public"."product_productvariant" ADD CONSTRAINT "product_productvaria_product_id_43c5a310_fk_product_p" FOREIGN KEY ("product_id") REFERENCES "public"."product_product" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table product_productvarianttranslation
-- ----------------------------
ALTER TABLE "public"."product_productvarianttranslation" ADD CONSTRAINT "product_productvaria_product_variant_id_1b144a85_fk_product_p" FOREIGN KEY ("product_variant_id") REFERENCES "public"."product_productvariant" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table product_variantimage
-- ----------------------------
ALTER TABLE "public"."product_variantimage" ADD CONSTRAINT "product_variantimage_image_id_bef14106_fk_product_p" FOREIGN KEY ("image_id") REFERENCES "public"."product_productimage" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."product_variantimage" ADD CONSTRAINT "product_variantimage_variant_id_81123814_fk_product_p" FOREIGN KEY ("variant_id") REFERENCES "public"."product_productvariant" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table shipping_shippingmethod
-- ----------------------------
ALTER TABLE "public"."shipping_shippingmethod" ADD CONSTRAINT "shipping_shippingmet_shipping_zone_id_265b7413_fk_shipping_" FOREIGN KEY ("shipping_zone_id") REFERENCES "public"."shipping_shippingzone" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table shipping_shippingmethodtranslation
-- ----------------------------
ALTER TABLE "public"."shipping_shippingmethodtranslation" ADD CONSTRAINT "shipping_shippingmet_shipping_method_id_31d925d2_fk_shipping_" FOREIGN KEY ("shipping_method_id") REFERENCES "public"."shipping_shippingmethod" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table site_authorizationkey
-- ----------------------------
ALTER TABLE "public"."site_authorizationkey" ADD CONSTRAINT "site_authorizationke_site_settings_id_d8397c0f_fk_site_site" FOREIGN KEY ("site_settings_id") REFERENCES "public"."site_sitesettings" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table site_sitesettings
-- ----------------------------
ALTER TABLE "public"."site_sitesettings" ADD CONSTRAINT "site_sitesettings_bottom_menu_id_e2a78098_fk_menu_menu_id" FOREIGN KEY ("bottom_menu_id") REFERENCES "public"."menu_menu" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."site_sitesettings" ADD CONSTRAINT "site_sitesettings_company_address_id_f0825427_fk_account_a" FOREIGN KEY ("company_address_id") REFERENCES "public"."account_address" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."site_sitesettings" ADD CONSTRAINT "site_sitesettings_homepage_collection__82f45d33_fk_product_c" FOREIGN KEY ("homepage_collection_id") REFERENCES "public"."product_collection" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."site_sitesettings" ADD CONSTRAINT "site_sitesettings_site_id_64dd8ff8_fk_django_site_id" FOREIGN KEY ("site_id") REFERENCES "public"."django_site" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."site_sitesettings" ADD CONSTRAINT "site_sitesettings_top_menu_id_ab6f8c46_fk_menu_menu_id" FOREIGN KEY ("top_menu_id") REFERENCES "public"."menu_menu" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table site_sitesettingstranslation
-- ----------------------------
ALTER TABLE "public"."site_sitesettingstranslation" ADD CONSTRAINT "site_sitesettingstra_site_settings_id_ca085ff6_fk_site_site" FOREIGN KEY ("site_settings_id") REFERENCES "public"."site_sitesettings" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table warehouse_allocation
-- ----------------------------
ALTER TABLE "public"."warehouse_allocation" ADD CONSTRAINT "warehouse_allocation_order_line_id_693dcb84_fk_order_ord" FOREIGN KEY ("order_line_id") REFERENCES "public"."order_orderline" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."warehouse_allocation" ADD CONSTRAINT "warehouse_allocation_stock_id_73541542_fk_warehouse_stock_id" FOREIGN KEY ("stock_id") REFERENCES "public"."warehouse_stock" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table warehouse_stock
-- ----------------------------
ALTER TABLE "public"."warehouse_stock" ADD CONSTRAINT "warehouse_stock_product_variant_id_bea58a82_fk_product_p" FOREIGN KEY ("product_variant_id") REFERENCES "public"."product_productvariant" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."warehouse_stock" ADD CONSTRAINT "warehouse_stock_warehouse_id_cc9d4e5d_fk_warehouse_warehouse_id" FOREIGN KEY ("warehouse_id") REFERENCES "public"."warehouse_warehouse" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table warehouse_warehouse
-- ----------------------------
ALTER TABLE "public"."warehouse_warehouse" ADD CONSTRAINT "warehouse_warehouse_address_id_d46e1096_fk_account_address_id" FOREIGN KEY ("address_id") REFERENCES "public"."account_address" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table warehouse_warehouse_shipping_zones
-- ----------------------------
ALTER TABLE "public"."warehouse_warehouse_shipping_zones" ADD CONSTRAINT "warehouse_warehouse__shippingzone_id_aeee255b_fk_shipping_" FOREIGN KEY ("shippingzone_id") REFERENCES "public"."shipping_shippingzone" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."warehouse_warehouse_shipping_zones" ADD CONSTRAINT "warehouse_warehouse__warehouse_id_fccd6647_fk_warehouse" FOREIGN KEY ("warehouse_id") REFERENCES "public"."warehouse_warehouse" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table webhook_webhook
-- ----------------------------
ALTER TABLE "public"."webhook_webhook" ADD CONSTRAINT "webhook_webhook_app_id_604d7610_fk_app_app_id" FOREIGN KEY ("app_id") REFERENCES "public"."app_app" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table webhook_webhookevent
-- ----------------------------
ALTER TABLE "public"."webhook_webhookevent" ADD CONSTRAINT "webhook_webhookevent_webhook_id_73b5c9e1_fk_webhook_webhook_id" FOREIGN KEY ("webhook_id") REFERENCES "public"."webhook_webhook" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table wishlist_wishlist
-- ----------------------------
ALTER TABLE "public"."wishlist_wishlist" ADD CONSTRAINT "wishlist_wishlist_user_id_13f28b16_fk_account_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."account_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table wishlist_wishlistitem
-- ----------------------------
ALTER TABLE "public"."wishlist_wishlistitem" ADD CONSTRAINT "wishlist_wishlistite_wishlist_id_a052b63d_fk_wishlist_" FOREIGN KEY ("wishlist_id") REFERENCES "public"."wishlist_wishlist" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."wishlist_wishlistitem" ADD CONSTRAINT "wishlist_wishlistitem_product_id_8309716a_fk_product_product_id" FOREIGN KEY ("product_id") REFERENCES "public"."product_product" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table wishlist_wishlistitem_variants
-- ----------------------------
ALTER TABLE "public"."wishlist_wishlistitem_variants" ADD CONSTRAINT "wishlist_wishlistite_productvariant_id_819ee66b_fk_product_p" FOREIGN KEY ("productvariant_id") REFERENCES "public"."product_productvariant" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."wishlist_wishlistitem_variants" ADD CONSTRAINT "wishlist_wishlistite_wishlistitem_id_ee616761_fk_wishlist_" FOREIGN KEY ("wishlistitem_id") REFERENCES "public"."wishlist_wishlistitem" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
