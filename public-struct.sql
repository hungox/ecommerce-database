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

 Date: 27/11/2020 15:53:38
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
SELECT setval('"public"."cart_cartline_id_seq"', 2, true);

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
SELECT setval('"public"."order_order_id_seq"', 22, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."order_ordereditem_id_seq"
OWNED BY "public"."order_orderline"."id";
SELECT setval('"public"."order_ordereditem_id_seq"', 51, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."order_orderevent_id_seq"
OWNED BY "public"."order_orderevent"."id";
SELECT setval('"public"."order_orderevent_id_seq"', 6, true);

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
SELECT setval('"public"."payment_paymentmethod_id_seq"', 22, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."payment_transaction_id_seq"
OWNED BY "public"."payment_transaction"."id";
SELECT setval('"public"."payment_transaction_id_seq"', 41, true);

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
SELECT setval('"public"."userprofile_address_id_seq"', 45, true);

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
SELECT setval('"public"."warehouse_allocation_id_seq"', 51, true);

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
