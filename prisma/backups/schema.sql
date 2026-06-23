


SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;




ALTER SCHEMA "public" OWNER TO "postgres";


CREATE EXTENSION IF NOT EXISTS "pg_stat_statements" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "pgcrypto" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "supabase_vault" WITH SCHEMA "vault";






CREATE EXTENSION IF NOT EXISTS "unaccent" WITH SCHEMA "public";






CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA "extensions";






CREATE TYPE "public"."ConsentType" AS ENUM (
    'PRIVACY_NOTICE',
    'EBOOK_IMMEDIATE_EXECUTION'
);


ALTER TYPE "public"."ConsentType" OWNER TO "postgres";


CREATE TYPE "public"."ContactReason" AS ENUM (
    'GENERAL',
    'LOGISTICS',
    'RETURNS',
    'CAREERS',
    'PRESS',
    'SELLER_SUPPORT',
    'GIFT_CARDS',
    'OTHER'
);


ALTER TYPE "public"."ContactReason" OWNER TO "postgres";


CREATE TYPE "public"."DsaNoticeStatus" AS ENUM (
    'RECEIVED',
    'UNDER_REVIEW',
    'ACTIONED',
    'REJECTED'
);


ALTER TYPE "public"."DsaNoticeStatus" OWNER TO "postgres";


CREATE TYPE "public"."DsaPriority" AS ENUM (
    'NORMAL',
    'PRODUCT_SAFETY',
    'AUTHORITY_ORDER'
);


ALTER TYPE "public"."DsaPriority" OWNER TO "postgres";


CREATE TYPE "public"."DsaTargetType" AS ENUM (
    'PRODUCT',
    'SELLER',
    'REVIEW'
);


ALTER TYPE "public"."DsaTargetType" OWNER TO "postgres";


CREATE TYPE "public"."FulfillmentStatus" AS ENUM (
    'UNFULFILLED',
    'SHIPPED',
    'DELIVERED',
    'CANCELLED'
);


ALTER TYPE "public"."FulfillmentStatus" OWNER TO "postgres";


CREATE TYPE "public"."InvoiceRecipientStatus" AS ENUM (
    'PENDING',
    'FULFILLED',
    'EXPIRED',
    'REJECTED'
);


ALTER TYPE "public"."InvoiceRecipientStatus" OWNER TO "postgres";


CREATE TYPE "public"."InvoiceRequestStatus" AS ENUM (
    'PENDING',
    'PARTIAL',
    'FULFILLED',
    'EXPIRED'
);


ALTER TYPE "public"."InvoiceRequestStatus" OWNER TO "postgres";


CREATE TYPE "public"."ModerationMeasure" AS ENUM (
    'REMOVE_LISTING',
    'RESTRICT',
    'SUSPEND',
    'TERMINATE',
    'REVIEW_REMOVAL'
);


ALTER TYPE "public"."ModerationMeasure" OWNER TO "postgres";


CREATE TYPE "public"."NotificationType" AS ENUM (
    'ORDER_CONFIRMED',
    'ORDER_SHIPPED',
    'ORDER_DELIVERED',
    'ORDER_CANCELLED',
    'ORDER_REFUNDED',
    'SELLER_NEW_ORDER',
    'SELLER_ORDER_REFUNDED',
    'SELLER_LABEL_READY',
    'SELLER_STATUS_CHANGED',
    'SELLER_PRODUCT_MODERATED',
    'SELLER_LOW_STOCK',
    'SELLER_NEW_REVIEW',
    'SELLER_COMMISSION_INVOICE',
    'SELLER_CATEGORY_POLICY_CHANGED',
    'SELLER_SHIPMENT_DELAYED',
    'ADMIN_NEW_USER',
    'ADMIN_NEW_SELLER',
    'ADMIN_NEW_ORDER',
    'ADMIN_NEW_PRODUCT',
    'ADMIN_NEW_SHIPPING_METHOD',
    'ADMIN_REFUND',
    'ADMIN_ACCOUNT_DELETED',
    'ADMIN_SELLER_DELETION_REQUESTED',
    'ADMIN_INVOICE_FAILED',
    'ADMIN_CONTACT_MESSAGE',
    'BUYER_RETURN_REQUESTED',
    'SELLER_RETURN_REQUESTED',
    'ADMIN_RETURN_REQUESTED',
    'ADMIN_RETURN_RECEIVED',
    'ADMIN_PRODUCT_FLAGGED',
    'SELLER_REVIEW_REMOVED',
    'BUYER_REVIEW_REMOVED',
    'DSA_NOTICE_ACK',
    'ADMIN_DSA_NOTICE',
    'ADMIN_DSA_PRIORITY'
);


ALTER TYPE "public"."NotificationType" OWNER TO "postgres";


CREATE TYPE "public"."OrderStatus" AS ENUM (
    'PENDING',
    'PAID',
    'SHIPPED',
    'DELIVERED',
    'CANCELLED'
);


ALTER TYPE "public"."OrderStatus" OWNER TO "postgres";


CREATE TYPE "public"."PaymentMethodType" AS ENUM (
    'CARD',
    'BIZUM',
    'SEPA_DEBIT',
    'OTHER'
);


ALTER TYPE "public"."PaymentMethodType" OWNER TO "postgres";


CREATE TYPE "public"."PaymentProviderType" AS ENUM (
    'MOCK',
    'STRIPE'
);


ALTER TYPE "public"."PaymentProviderType" OWNER TO "postgres";


CREATE TYPE "public"."PaymentStatus" AS ENUM (
    'REQUIRES_ACTION',
    'PENDING',
    'SUCCEEDED',
    'FAILED',
    'REFUNDED'
);


ALTER TYPE "public"."PaymentStatus" OWNER TO "postgres";


CREATE TYPE "public"."PlatformInvoiceConcept" AS ENUM (
    'COMMISSION',
    'SHIPPING',
    'COMMISSION_RECTIFY',
    'SHIPPING_RECTIFY'
);


ALTER TYPE "public"."PlatformInvoiceConcept" OWNER TO "postgres";


CREATE TYPE "public"."PlatformInvoiceStatus" AS ENUM (
    'DRAFT',
    'ISSUED',
    'FAILED'
);


ALTER TYPE "public"."PlatformInvoiceStatus" OWNER TO "postgres";


CREATE TYPE "public"."ProductCondition" AS ENUM (
    'NEW',
    'USED',
    'REFURBISHED'
);


ALTER TYPE "public"."ProductCondition" OWNER TO "postgres";


CREATE TYPE "public"."ProductOrigin" AS ENUM (
    'FET_A_CATALUNYA',
    'MARCA_CATALANA',
    'DISTRIBUIT'
);


ALTER TYPE "public"."ProductOrigin" OWNER TO "postgres";


CREATE TYPE "public"."ProductStatus" AS ENUM (
    'DRAFT',
    'ACTIVE',
    'OUT_OF_STOCK',
    'REMOVED'
);


ALTER TYPE "public"."ProductStatus" OWNER TO "postgres";


CREATE TYPE "public"."RectificationStatus" AS ENUM (
    'PENDING',
    'FULFILLED',
    'EXPIRED'
);


ALTER TYPE "public"."RectificationStatus" OWNER TO "postgres";


CREATE TYPE "public"."RefundExecutor" AS ENUM (
    'SELLER',
    'PLATFORM_SUBSIDIARY'
);


ALTER TYPE "public"."RefundExecutor" OWNER TO "postgres";


CREATE TYPE "public"."RefundStatus" AS ENUM (
    'PENDING',
    'SUCCEEDED',
    'FAILED'
);


ALTER TYPE "public"."RefundStatus" OWNER TO "postgres";


CREATE TYPE "public"."ReturnStatus" AS ENUM (
    'REQUESTED',
    'RECEIVED',
    'REFUNDED',
    'REJECTED'
);


ALTER TYPE "public"."ReturnStatus" OWNER TO "postgres";


CREATE TYPE "public"."ReviewModerationStatus" AS ENUM (
    'PUBLISHED',
    'REMOVED'
);


ALTER TYPE "public"."ReviewModerationStatus" OWNER TO "postgres";


CREATE TYPE "public"."Role" AS ENUM (
    'BUYER',
    'SELLER',
    'ADMIN'
);


ALTER TYPE "public"."Role" OWNER TO "postgres";


CREATE TYPE "public"."SaleInvoiceKind" AS ENUM (
    'SALE',
    'RECTIFICATION'
);


ALTER TYPE "public"."SaleInvoiceKind" OWNER TO "postgres";


CREATE TYPE "public"."SaleInvoiceStatus" AS ENUM (
    'PENDING_PDF',
    'ISSUED',
    'RECTIFIED',
    'FAILED'
);


ALTER TYPE "public"."SaleInvoiceStatus" OWNER TO "postgres";


CREATE TYPE "public"."SaleInvoiceType" AS ENUM (
    'SIMPLIFIED',
    'FULL'
);


ALTER TYPE "public"."SaleInvoiceType" OWNER TO "postgres";


CREATE TYPE "public"."SellerStatus" AS ENUM (
    'PENDING',
    'APPROVED',
    'REJECTED',
    'SUSPENDED'
);


ALTER TYPE "public"."SellerStatus" OWNER TO "postgres";


CREATE TYPE "public"."VatRegime" AS ENUM (
    'GENERAL',
    'EQUIVALENCE_SURCHARGE',
    'FRANCHISE',
    'AGRICULTURE',
    'NONE_ESTABLISHED'
);


ALTER TYPE "public"."VatRegime" OWNER TO "postgres";

SET default_tablespace = '';

SET default_table_access_method = "heap";


CREATE TABLE IF NOT EXISTS "public"."Address" (
    "id" "text" NOT NULL,
    "userId" "text" NOT NULL,
    "recipient" "text" NOT NULL,
    "street" "text" NOT NULL,
    "city" "text" NOT NULL,
    "postalCode" "text" NOT NULL,
    "province" "text" NOT NULL,
    "country" "text" DEFAULT 'ES'::"text" NOT NULL,
    "phone" "text",
    "isDefault" boolean DEFAULT false NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE "public"."Address" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."BillingMandate" (
    "id" "text" NOT NULL,
    "sellerId" "text" NOT NULL,
    "documentVersion" "text" NOT NULL,
    "documentText" "text" NOT NULL,
    "signedAt" timestamp(3) without time zone NOT NULL,
    "signerUserId" "text" NOT NULL,
    "signerName" "text" NOT NULL,
    "signerIp" "text",
    "acceptanceMethod" "text" DEFAULT 'PLATFORM_CLICK'::"text" NOT NULL,
    "revokedAt" timestamp(3) without time zone,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE "public"."BillingMandate" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."CartItem" (
    "id" "text" NOT NULL,
    "userId" "text",
    "sessionId" "text",
    "productId" "text" NOT NULL,
    "quantity" integer DEFAULT 1 NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    "savedForLater" boolean DEFAULT false NOT NULL,
    "variantId" "text"
);


ALTER TABLE "public"."CartItem" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."Category" (
    "id" "text" NOT NULL,
    "parentId" "text",
    "nameCa" "text" NOT NULL,
    "nameEs" "text" NOT NULL,
    "nameEn" "text" NOT NULL,
    "slug" "text" NOT NULL,
    "iconName" "text",
    "imageUrl" "text",
    "sortOrder" integer DEFAULT 0 NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    "sendcloudEnabled" boolean DEFAULT true NOT NULL,
    "ageRestricted" boolean DEFAULT false NOT NULL,
    "withdrawalExcludedDefault" boolean DEFAULT false NOT NULL
);


ALTER TABLE "public"."Category" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."ConsentRecord" (
    "id" "text" NOT NULL,
    "userId" "text" NOT NULL,
    "type" "public"."ConsentType" NOT NULL,
    "granted" boolean NOT NULL,
    "textShown" "text" NOT NULL,
    "locale" "text" NOT NULL,
    "ip" "text",
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."ConsentRecord" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."ContactMessage" (
    "id" "text" NOT NULL,
    "reason" "public"."ContactReason" NOT NULL,
    "name" "text" NOT NULL,
    "email" "text" NOT NULL,
    "subject" "text" NOT NULL,
    "body" "text" NOT NULL,
    "locale" "text" DEFAULT 'ca'::"text" NOT NULL,
    "userId" "text",
    "handled" boolean DEFAULT false NOT NULL,
    "handledAt" timestamp(3) without time zone,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."ContactMessage" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."DsaNotice" (
    "id" "text" NOT NULL,
    "targetType" "public"."DsaTargetType" NOT NULL,
    "targetId" "text" NOT NULL,
    "targetUrl" "text" NOT NULL,
    "reporterName" "text",
    "reporterEmail" "text",
    "reporterUserId" "text",
    "motivation" "text" NOT NULL,
    "category" "text" NOT NULL,
    "goodFaith" boolean DEFAULT false NOT NULL,
    "status" "public"."DsaNoticeStatus" DEFAULT 'RECEIVED'::"public"."DsaNoticeStatus" NOT NULL,
    "priority" "public"."DsaPriority" DEFAULT 'NORMAL'::"public"."DsaPriority" NOT NULL,
    "decision" "text",
    "statementOfReasons" "text",
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "resolvedAt" timestamp(3) without time zone
);


ALTER TABLE "public"."DsaNotice" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."InvoiceDocument" (
    "id" "text" NOT NULL,
    "invoiceRecipientId" "text" NOT NULL,
    "cloudinaryPublicId" "text" NOT NULL,
    "pdfUrl" "text" NOT NULL,
    "invoiceNumber" "text" NOT NULL,
    "issueDate" timestamp(3) without time zone NOT NULL,
    "uploadedByUserId" "text" NOT NULL,
    "uploadedAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."InvoiceDocument" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."InvoiceRecipient" (
    "id" "text" NOT NULL,
    "invoiceRequestId" "text" NOT NULL,
    "sellerId" "text" NOT NULL,
    "status" "public"."InvoiceRecipientStatus" DEFAULT 'PENDING'::"public"."InvoiceRecipientStatus" NOT NULL,
    "notifiedAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "fulfilledAt" timestamp(3) without time zone
);


ALTER TABLE "public"."InvoiceRecipient" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."InvoiceRequest" (
    "id" "text" NOT NULL,
    "orderId" "text" NOT NULL,
    "buyerId" "text" NOT NULL,
    "taxProfileSnapshot" "jsonb" NOT NULL,
    "status" "public"."InvoiceRequestStatus" DEFAULT 'PENDING'::"public"."InvoiceRequestStatus" NOT NULL,
    "requestedAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "expiresAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE "public"."InvoiceRequest" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."ModerationAction" (
    "id" "text" NOT NULL,
    "measure" "public"."ModerationMeasure" NOT NULL,
    "sellerId" "text",
    "productId" "text",
    "reviewId" "text",
    "statementOfReasons" "text" NOT NULL,
    "actorId" "text",
    "appealStatus" "text",
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."ModerationAction" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."Notification" (
    "id" "text" NOT NULL,
    "userId" "text" NOT NULL,
    "type" "public"."NotificationType" NOT NULL,
    "payload" "jsonb" DEFAULT '{}'::"jsonb" NOT NULL,
    "readAt" timestamp(3) without time zone,
    "emailedAt" timestamp(3) without time zone,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."Notification" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."NotificationPreference" (
    "id" "text" NOT NULL,
    "userId" "text" NOT NULL,
    "type" "public"."NotificationType" NOT NULL,
    "inApp" boolean DEFAULT true NOT NULL,
    "email" boolean DEFAULT true NOT NULL,
    "whatsapp" boolean DEFAULT false NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE "public"."NotificationPreference" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."Order" (
    "id" "text" NOT NULL,
    "orderNumber" "text" NOT NULL,
    "buyerId" "text" NOT NULL,
    "status" "public"."OrderStatus" DEFAULT 'PENDING'::"public"."OrderStatus" NOT NULL,
    "subtotal" numeric(10,2) NOT NULL,
    "shippingTotal" numeric(10,2) DEFAULT 0 NOT NULL,
    "grandTotal" numeric(10,2) NOT NULL,
    "currency" "text" DEFAULT 'EUR'::"text" NOT NULL,
    "shippingAddress" "jsonb" NOT NULL,
    "stripePaymentIntentId" "text",
    "paidAt" timestamp(3) without time zone,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    "shippingMarginDelta" numeric(10,2) DEFAULT 0 NOT NULL,
    "shippingRealCost" numeric(10,2) DEFAULT 0 NOT NULL,
    "shippingService" "text" DEFAULT 'standard'::"text" NOT NULL,
    "shippingVatBreakdown" "jsonb" DEFAULT '{}'::"jsonb" NOT NULL,
    "vatBreakdown" "jsonb" DEFAULT '[]'::"jsonb" NOT NULL,
    "ebookConsentAt" timestamp(3) without time zone
);


ALTER TABLE "public"."Order" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."OrderItem" (
    "id" "text" NOT NULL,
    "orderId" "text" NOT NULL,
    "productId" "text",
    "sellerId" "text" NOT NULL,
    "productTitle" "text" NOT NULL,
    "productImageUrl" "text",
    "unitPrice" numeric(10,2) NOT NULL,
    "quantity" integer NOT NULL,
    "lineTotal" numeric(10,2) NOT NULL,
    "platformFee" numeric(10,2) DEFAULT 0 NOT NULL,
    "sellerEarnings" numeric(10,2) DEFAULT 0 NOT NULL,
    "stripeTransferId" "text",
    "fulfillmentStatus" "public"."FulfillmentStatus" DEFAULT 'UNFULFILLED'::"public"."FulfillmentStatus" NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    "shipmentId" "text",
    "variantId" "text",
    "variantLabel" "text",
    "baseAmount" numeric(10,2) DEFAULT 0 NOT NULL,
    "vatAmount" numeric(10,2) DEFAULT 0 NOT NULL,
    "vatRate" numeric(5,2) DEFAULT 21 NOT NULL
);


ALTER TABLE "public"."OrderItem" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."Payment" (
    "id" "text" NOT NULL,
    "orderId" "text" NOT NULL,
    "provider" "public"."PaymentProviderType" NOT NULL,
    "method" "public"."PaymentMethodType",
    "status" "public"."PaymentStatus" DEFAULT 'PENDING'::"public"."PaymentStatus" NOT NULL,
    "amount" numeric(10,2) NOT NULL,
    "currency" "text" DEFAULT 'EUR'::"text" NOT NULL,
    "stripePaymentIntentId" "text",
    "stripeChargeId" "text",
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    "stripeBalanceTxId" "text",
    "stripeFeeAmount" numeric(10,2)
);


ALTER TABLE "public"."Payment" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."PlatformInvoice" (
    "id" "text" NOT NULL,
    "concept" "public"."PlatformInvoiceConcept" NOT NULL,
    "status" "public"."PlatformInvoiceStatus" DEFAULT 'DRAFT'::"public"."PlatformInvoiceStatus" NOT NULL,
    "sellerId" "text",
    "buyerId" "text",
    "orderId" "text",
    "period" "text",
    "baseAmount" numeric(10,2) NOT NULL,
    "vatRate" numeric(5,2) DEFAULT 21.00 NOT NULL,
    "vatAmount" numeric(10,2) NOT NULL,
    "totalAmount" numeric(10,2) NOT NULL,
    "holdedInvoiceId" "text",
    "holdedInvoiceNum" "text",
    "holdedSeries" "text",
    "pdfUrl" "text",
    "rectifiesId" "text",
    "lastError" "text",
    "attemptedAt" timestamp(3) without time zone,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    "sourceOrderId" "text",
    "orderKey" "text",
    "pdfPublicId" "text"
);


ALTER TABLE "public"."PlatformInvoice" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."Product" (
    "id" "text" NOT NULL,
    "sellerId" "text" NOT NULL,
    "categoryId" "text" NOT NULL,
    "titleCa" "text" NOT NULL,
    "titleEs" "text" NOT NULL,
    "titleEn" "text" NOT NULL,
    "slug" "text" NOT NULL,
    "descriptionCa" "text" NOT NULL,
    "descriptionEs" "text" NOT NULL,
    "descriptionEn" "text" NOT NULL,
    "brand" "text",
    "basePrice" numeric(10,2) NOT NULL,
    "originalPrice" numeric(10,2),
    "vatRate" numeric(5,2) DEFAULT 21.0 NOT NULL,
    "totalPrice" numeric(10,2) NOT NULL,
    "currency" "text" DEFAULT 'EUR'::"text" NOT NULL,
    "stock" integer DEFAULT 0 NOT NULL,
    "condition" "public"."ProductCondition" DEFAULT 'NEW'::"public"."ProductCondition" NOT NULL,
    "status" "public"."ProductStatus" DEFAULT 'DRAFT'::"public"."ProductStatus" NOT NULL,
    "attributes" "jsonb" DEFAULT '{}'::"jsonb" NOT NULL,
    "ratingAvg" double precision DEFAULT 0 NOT NULL,
    "ratingCount" integer DEFAULT 0 NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    "heightCm" integer DEFAULT 10 NOT NULL,
    "lengthCm" integer DEFAULT 20 NOT NULL,
    "weightGrams" integer DEFAULT 500 NOT NULL,
    "widthCm" integer DEFAULT 15 NOT NULL,
    "origin" "public"."ProductOrigin",
    "originVerifiedAt" timestamp(3) without time zone,
    "unlimitedStock" boolean DEFAULT false NOT NULL,
    "netContentUnit" "text",
    "netContentValue" numeric(10,3),
    "salesCount" integer DEFAULT 0 NOT NULL,
    "withdrawalEligible" boolean DEFAULT true NOT NULL,
    "age18Plus" boolean DEFAULT false NOT NULL,
    "bookFixedPrice" numeric(10,2),
    "euResponsibleContact" "text",
    "euResponsibleName" "text",
    "foodInfo" "jsonb",
    "manufacturerAddress" "text",
    "manufacturerName" "text",
    "safetyWarningsEs" "text",
    "digitalDownloadUrl" "text",
    "isDigital" boolean DEFAULT false NOT NULL
);


ALTER TABLE "public"."Product" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."ProductImage" (
    "id" "text" NOT NULL,
    "productId" "text" NOT NULL,
    "url" "text" NOT NULL,
    "alt" "text" NOT NULL,
    "sortOrder" integer DEFAULT 0 NOT NULL
);


ALTER TABLE "public"."ProductImage" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."ProductSlugHistory" (
    "id" "text" NOT NULL,
    "slug" "text" NOT NULL,
    "productId" "text" NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."ProductSlugHistory" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."ProductVariant" (
    "id" "text" NOT NULL,
    "productId" "text" NOT NULL,
    "labelCa" "text" NOT NULL,
    "labelEs" "text" NOT NULL,
    "labelEn" "text" NOT NULL,
    "basePrice" numeric(10,2) NOT NULL,
    "totalPrice" numeric(10,2) NOT NULL,
    "originalPrice" numeric(10,2),
    "stock" integer DEFAULT 0 NOT NULL,
    "weightGrams" integer DEFAULT 500 NOT NULL,
    "lengthCm" integer DEFAULT 20 NOT NULL,
    "widthCm" integer DEFAULT 15 NOT NULL,
    "heightCm" integer DEFAULT 10 NOT NULL,
    "imageUrl" "text",
    "sortOrder" integer DEFAULT 0 NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    "netContentUnit" "text",
    "netContentValue" numeric(10,3)
);


ALTER TABLE "public"."ProductVariant" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."RectificationRequest" (
    "id" "text" NOT NULL,
    "invoiceRecipientId" "text" NOT NULL,
    "status" "public"."RectificationStatus" DEFAULT 'PENDING'::"public"."RectificationStatus" NOT NULL,
    "reason" "text",
    "notifiedAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "expiresAt" timestamp(3) without time zone NOT NULL,
    "fulfilledAt" timestamp(3) without time zone,
    "cloudinaryPublicId" "text",
    "pdfUrl" "text",
    "invoiceNumber" "text",
    "issueDate" timestamp(3) without time zone,
    "uploadedByUserId" "text",
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE "public"."RectificationRequest" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."Refund" (
    "id" "text" NOT NULL,
    "paymentId" "text" NOT NULL,
    "orderItemId" "text",
    "amount" numeric(10,2) NOT NULL,
    "reason" "text",
    "status" "public"."RefundStatus" DEFAULT 'PENDING'::"public"."RefundStatus" NOT NULL,
    "stripeRefundId" "text",
    "stripeTransferReversalId" "text",
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE "public"."Refund" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."ReturnItem" (
    "id" "text" NOT NULL,
    "returnRequestId" "text" NOT NULL,
    "orderItemId" "text" NOT NULL,
    "quantity" integer NOT NULL
);


ALTER TABLE "public"."ReturnItem" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."ReturnRequest" (
    "id" "text" NOT NULL,
    "orderId" "text" NOT NULL,
    "sellerId" "text" NOT NULL,
    "buyerId" "text" NOT NULL,
    "status" "public"."ReturnStatus" DEFAULT 'REQUESTED'::"public"."ReturnStatus" NOT NULL,
    "reason" "text",
    "refundAmount" numeric(10,2),
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "receivedAt" timestamp(3) without time zone,
    "refundedAt" timestamp(3) without time zone,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    "refundExecutedBy" "public"."RefundExecutor",
    "shipmentProofAt" timestamp(3) without time zone,
    "shipmentProofUrl" "text"
);


ALTER TABLE "public"."ReturnRequest" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."Review" (
    "id" "text" NOT NULL,
    "productId" "text" NOT NULL,
    "userId" "text" NOT NULL,
    "rating" integer NOT NULL,
    "title" "text" NOT NULL,
    "body" "text" NOT NULL,
    "verifiedPurchase" boolean DEFAULT false NOT NULL,
    "helpfulCount" integer DEFAULT 0 NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    "moderationStatus" "public"."ReviewModerationStatus" DEFAULT 'PUBLISHED'::"public"."ReviewModerationStatus" NOT NULL,
    "orderId" "text",
    "removalReason" "text",
    "removedAt" timestamp(3) without time zone
);


ALTER TABLE "public"."Review" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."SearchQuery" (
    "id" "text" NOT NULL,
    "query" "text" NOT NULL,
    "queryNormalized" "text" NOT NULL,
    "locale" "text" NOT NULL,
    "resultCount" integer NOT NULL,
    "userId" "text",
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."SearchQuery" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."SellerProfile" (
    "id" "text" NOT NULL,
    "userId" "text" NOT NULL,
    "storeName" "text" NOT NULL,
    "slug" "text" NOT NULL,
    "bioCa" "text",
    "bioEs" "text",
    "bioEn" "text",
    "logoUrl" "text",
    "region" "text",
    "status" "public"."SellerStatus" DEFAULT 'PENDING'::"public"."SellerStatus" NOT NULL,
    "rejectionReason" "text",
    "commissionRate" numeric(5,2) DEFAULT 10.0 NOT NULL,
    "stripeAccountId" "text",
    "stripeChargesEnabled" boolean DEFAULT false NOT NULL,
    "stripePayoutsEnabled" boolean DEFAULT false NOT NULL,
    "stripeDetailsSubmitted" boolean DEFAULT false NOT NULL,
    "stripeOnboardingComplete" boolean DEFAULT false NOT NULL,
    "approvedAt" timestamp(3) without time zone,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    "originCity" "text",
    "originCountry" "text" DEFAULT 'ES'::"text" NOT NULL,
    "originPostalCode" "text",
    "originProvince" "text",
    "originStreet" "text",
    "fiscalAddressLine1" "text",
    "fiscalAddressLine2" "text",
    "fiscalCity" "text",
    "fiscalCountry" "text" DEFAULT 'ES'::"text" NOT NULL,
    "fiscalPostalCode" "text",
    "fiscalProvince" "text",
    "fiscalResidenceCountry" "text" DEFAULT 'ES'::"text" NOT NULL,
    "holdedContactId" "text",
    "legalName" "text",
    "payoutIban" "text",
    "taxId" "text",
    "vatExemptionLegalBasis" "text",
    "vatRegime" "public"."VatRegime" DEFAULT 'GENERAL'::"public"."VatRegime" NOT NULL,
    "phone" "text",
    "fiscalEmail" "text",
    "saleInvoiceNextNumber" integer DEFAULT 1 NOT NULL,
    "saleInvoiceSeriesPrefix" "text",
    "rgseaa" "text",
    "sellerTermsAcceptedAt" timestamp(3) without time zone,
    "sellerTermsVersion" "text"
);


ALTER TABLE "public"."SellerProfile" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."SellerSaleInvoice" (
    "id" "text" NOT NULL,
    "orderId" "text" NOT NULL,
    "sellerId" "text" NOT NULL,
    "buyerId" "text" NOT NULL,
    "kind" "public"."SaleInvoiceKind" DEFAULT 'SALE'::"public"."SaleInvoiceKind" NOT NULL,
    "type" "public"."SaleInvoiceType" DEFAULT 'SIMPLIFIED'::"public"."SaleInvoiceType" NOT NULL,
    "status" "public"."SaleInvoiceStatus" DEFAULT 'PENDING_PDF'::"public"."SaleInvoiceStatus" NOT NULL,
    "series" "text" NOT NULL,
    "number" integer NOT NULL,
    "invoiceNumber" "text" NOT NULL,
    "issueDate" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "issuerSnapshot" "jsonb" NOT NULL,
    "recipientSnapshot" "jsonb",
    "lineItems" "jsonb" NOT NULL,
    "baseAmount" numeric(10,2) NOT NULL,
    "vatBreakdown" "jsonb" NOT NULL,
    "vatAmount" numeric(10,2) NOT NULL,
    "totalAmount" numeric(10,2) NOT NULL,
    "legalMention" "text" NOT NULL,
    "pdfPublicId" "text",
    "pdfUrl" "text",
    "rectifiesId" "text",
    "lastError" "text",
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    "saleIdempotencyKey" "text"
);


ALTER TABLE "public"."SellerSaleInvoice" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."SellerShippingMethod" (
    "id" "text" NOT NULL,
    "sellerId" "text" NOT NULL,
    "nameCa" "text" NOT NULL,
    "nameEs" "text" NOT NULL,
    "nameEn" "text" NOT NULL,
    "price" numeric(10,2) NOT NULL,
    "currency" "text" DEFAULT 'EUR'::"text" NOT NULL,
    "leadTimeDays" "text",
    "active" boolean DEFAULT true NOT NULL,
    "sortOrder" integer DEFAULT 0 NOT NULL,
    "minWeightGrams" integer,
    "maxWeightGrams" integer,
    "minOrderAmount" numeric(10,2),
    "maxOrderAmount" numeric(10,2),
    "maxLengthCm" integer,
    "maxWidthCm" integer,
    "maxHeightCm" integer,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE "public"."SellerShippingMethod" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."Setting" (
    "key" "text" NOT NULL,
    "value" "text" NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE "public"."Setting" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."Shipment" (
    "id" "text" NOT NULL,
    "orderId" "text" NOT NULL,
    "sellerId" "text" NOT NULL,
    "service" "text" NOT NULL,
    "realCost" numeric(10,2) DEFAULT 0 NOT NULL,
    "sendcloudParcelId" "text",
    "labelUrl" "text",
    "trackingNumber" "text",
    "trackingStatus" "text" DEFAULT 'pending'::"text" NOT NULL,
    "carrier" "text",
    "idempotencyKey" "text" NOT NULL,
    "labelSentToVendorAt" timestamp(3) without time zone,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    "methodName" "text",
    "sellerShippingMethodId" "text"
);


ALTER TABLE "public"."Shipment" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."TaxProfile" (
    "id" "text" NOT NULL,
    "userId" "text" NOT NULL,
    "legalName" "text" NOT NULL,
    "taxId" "text" NOT NULL,
    "fiscalAddressLine1" "text" NOT NULL,
    "fiscalAddressLine2" "text",
    "fiscalCity" "text" NOT NULL,
    "fiscalPostalCode" "text" NOT NULL,
    "fiscalProvince" "text" NOT NULL,
    "fiscalCountry" "text" DEFAULT 'ES'::"text" NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    "holdedContactId" "text"
);


ALTER TABLE "public"."TaxProfile" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."User" (
    "id" "text" NOT NULL,
    "email" "text" NOT NULL,
    "passwordHash" "text" NOT NULL,
    "name" "text" NOT NULL,
    "role" "public"."Role" DEFAULT 'BUYER'::"public"."Role" NOT NULL,
    "preferredLocale" "text" DEFAULT 'ca'::"text" NOT NULL,
    "emailVerified" timestamp(3) without time zone,
    "emailVerifyToken" "text",
    "passwordResetToken" "text",
    "passwordResetExpires" timestamp(3) without time zone,
    "suspended" boolean DEFAULT false NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    "deletedAt" timestamp(3) without time zone,
    "dateOfBirth" timestamp(3) without time zone,
    "displayAlias" "text"
);


ALTER TABLE "public"."User" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."VerifactuEvent" (
    "id" "text" NOT NULL,
    "type" "text" NOT NULL,
    "payload" "jsonb" DEFAULT '{}'::"jsonb" NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."VerifactuEvent" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."VerifactuRecord" (
    "id" "text" NOT NULL,
    "invoiceId" "text" NOT NULL,
    "sellerId" "text" NOT NULL,
    "recordType" "text" DEFAULT 'ALTA'::"text" NOT NULL,
    "previousHash" "text",
    "recordHash" "text" NOT NULL,
    "payloadXml" "text" NOT NULL,
    "qrPayload" "text",
    "aeatStatus" "text" DEFAULT 'NOT_SENT'::"text" NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."VerifactuRecord" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."Wishlist" (
    "id" "text" NOT NULL,
    "userId" "text" NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."Wishlist" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."WishlistItem" (
    "id" "text" NOT NULL,
    "wishlistId" "text" NOT NULL,
    "productId" "text" NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."WishlistItem" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."_prisma_migrations" (
    "id" character varying(36) NOT NULL,
    "checksum" character varying(64) NOT NULL,
    "finished_at" timestamp with time zone,
    "migration_name" character varying(255) NOT NULL,
    "logs" "text",
    "rolled_back_at" timestamp with time zone,
    "started_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "applied_steps_count" integer DEFAULT 0 NOT NULL
);


ALTER TABLE "public"."_prisma_migrations" OWNER TO "postgres";


ALTER TABLE ONLY "public"."Address"
    ADD CONSTRAINT "Address_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."BillingMandate"
    ADD CONSTRAINT "BillingMandate_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."CartItem"
    ADD CONSTRAINT "CartItem_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."Category"
    ADD CONSTRAINT "Category_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."ConsentRecord"
    ADD CONSTRAINT "ConsentRecord_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."ContactMessage"
    ADD CONSTRAINT "ContactMessage_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."DsaNotice"
    ADD CONSTRAINT "DsaNotice_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."InvoiceDocument"
    ADD CONSTRAINT "InvoiceDocument_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."InvoiceRecipient"
    ADD CONSTRAINT "InvoiceRecipient_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."InvoiceRequest"
    ADD CONSTRAINT "InvoiceRequest_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."ModerationAction"
    ADD CONSTRAINT "ModerationAction_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."NotificationPreference"
    ADD CONSTRAINT "NotificationPreference_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."Notification"
    ADD CONSTRAINT "Notification_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."OrderItem"
    ADD CONSTRAINT "OrderItem_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."Order"
    ADD CONSTRAINT "Order_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."Payment"
    ADD CONSTRAINT "Payment_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."PlatformInvoice"
    ADD CONSTRAINT "PlatformInvoice_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."ProductImage"
    ADD CONSTRAINT "ProductImage_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."ProductSlugHistory"
    ADD CONSTRAINT "ProductSlugHistory_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."ProductVariant"
    ADD CONSTRAINT "ProductVariant_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."Product"
    ADD CONSTRAINT "Product_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."RectificationRequest"
    ADD CONSTRAINT "RectificationRequest_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."Refund"
    ADD CONSTRAINT "Refund_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."ReturnItem"
    ADD CONSTRAINT "ReturnItem_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."ReturnRequest"
    ADD CONSTRAINT "ReturnRequest_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."Review"
    ADD CONSTRAINT "Review_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."SearchQuery"
    ADD CONSTRAINT "SearchQuery_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."SellerProfile"
    ADD CONSTRAINT "SellerProfile_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."SellerSaleInvoice"
    ADD CONSTRAINT "SellerSaleInvoice_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."SellerShippingMethod"
    ADD CONSTRAINT "SellerShippingMethod_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."Setting"
    ADD CONSTRAINT "Setting_pkey" PRIMARY KEY ("key");



ALTER TABLE ONLY "public"."Shipment"
    ADD CONSTRAINT "Shipment_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."TaxProfile"
    ADD CONSTRAINT "TaxProfile_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."VerifactuEvent"
    ADD CONSTRAINT "VerifactuEvent_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."VerifactuRecord"
    ADD CONSTRAINT "VerifactuRecord_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."WishlistItem"
    ADD CONSTRAINT "WishlistItem_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."Wishlist"
    ADD CONSTRAINT "Wishlist_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."_prisma_migrations"
    ADD CONSTRAINT "_prisma_migrations_pkey" PRIMARY KEY ("id");



CREATE INDEX "Address_userId_idx" ON "public"."Address" USING "btree" ("userId");



CREATE UNIQUE INDEX "BillingMandate_sellerId_key" ON "public"."BillingMandate" USING "btree" ("sellerId");



CREATE INDEX "CartItem_sessionId_idx" ON "public"."CartItem" USING "btree" ("sessionId");



CREATE INDEX "CartItem_userId_idx" ON "public"."CartItem" USING "btree" ("userId");



CREATE INDEX "CartItem_variantId_idx" ON "public"."CartItem" USING "btree" ("variantId");



CREATE INDEX "Category_parentId_idx" ON "public"."Category" USING "btree" ("parentId");



CREATE UNIQUE INDEX "Category_slug_key" ON "public"."Category" USING "btree" ("slug");



CREATE INDEX "Category_sortOrder_idx" ON "public"."Category" USING "btree" ("sortOrder");



CREATE INDEX "ConsentRecord_userId_type_idx" ON "public"."ConsentRecord" USING "btree" ("userId", "type");



CREATE INDEX "ContactMessage_handled_createdAt_idx" ON "public"."ContactMessage" USING "btree" ("handled", "createdAt");



CREATE INDEX "ContactMessage_reason_idx" ON "public"."ContactMessage" USING "btree" ("reason");



CREATE INDEX "DsaNotice_createdAt_idx" ON "public"."DsaNotice" USING "btree" ("createdAt");



CREATE INDEX "DsaNotice_status_priority_idx" ON "public"."DsaNotice" USING "btree" ("status", "priority");



CREATE INDEX "DsaNotice_targetType_targetId_idx" ON "public"."DsaNotice" USING "btree" ("targetType", "targetId");



CREATE UNIQUE INDEX "InvoiceDocument_invoiceRecipientId_key" ON "public"."InvoiceDocument" USING "btree" ("invoiceRecipientId");



CREATE UNIQUE INDEX "InvoiceRecipient_invoiceRequestId_sellerId_key" ON "public"."InvoiceRecipient" USING "btree" ("invoiceRequestId", "sellerId");



CREATE INDEX "InvoiceRecipient_sellerId_status_idx" ON "public"."InvoiceRecipient" USING "btree" ("sellerId", "status");



CREATE INDEX "InvoiceRequest_expiresAt_idx" ON "public"."InvoiceRequest" USING "btree" ("expiresAt");



CREATE UNIQUE INDEX "InvoiceRequest_orderId_buyerId_key" ON "public"."InvoiceRequest" USING "btree" ("orderId", "buyerId");



CREATE INDEX "InvoiceRequest_status_idx" ON "public"."InvoiceRequest" USING "btree" ("status");



CREATE INDEX "ModerationAction_createdAt_idx" ON "public"."ModerationAction" USING "btree" ("createdAt");



CREATE INDEX "ModerationAction_reviewId_idx" ON "public"."ModerationAction" USING "btree" ("reviewId");



CREATE INDEX "ModerationAction_sellerId_idx" ON "public"."ModerationAction" USING "btree" ("sellerId");



CREATE UNIQUE INDEX "NotificationPreference_userId_type_key" ON "public"."NotificationPreference" USING "btree" ("userId", "type");



CREATE INDEX "Notification_userId_createdAt_idx" ON "public"."Notification" USING "btree" ("userId", "createdAt");



CREATE INDEX "Notification_userId_readAt_idx" ON "public"."Notification" USING "btree" ("userId", "readAt");



CREATE INDEX "OrderItem_orderId_idx" ON "public"."OrderItem" USING "btree" ("orderId");



CREATE INDEX "OrderItem_productId_idx" ON "public"."OrderItem" USING "btree" ("productId");



CREATE INDEX "OrderItem_sellerId_idx" ON "public"."OrderItem" USING "btree" ("sellerId");



CREATE INDEX "OrderItem_shipmentId_idx" ON "public"."OrderItem" USING "btree" ("shipmentId");



CREATE INDEX "OrderItem_variantId_idx" ON "public"."OrderItem" USING "btree" ("variantId");



CREATE INDEX "Order_buyerId_idx" ON "public"."Order" USING "btree" ("buyerId");



CREATE INDEX "Order_createdAt_idx" ON "public"."Order" USING "btree" ("createdAt");



CREATE UNIQUE INDEX "Order_orderNumber_key" ON "public"."Order" USING "btree" ("orderNumber");



CREATE INDEX "Order_status_idx" ON "public"."Order" USING "btree" ("status");



CREATE UNIQUE INDEX "Payment_orderId_key" ON "public"."Payment" USING "btree" ("orderId");



CREATE INDEX "Payment_status_idx" ON "public"."Payment" USING "btree" ("status");



CREATE INDEX "PlatformInvoice_concept_period_idx" ON "public"."PlatformInvoice" USING "btree" ("concept", "period");



CREATE UNIQUE INDEX "PlatformInvoice_holdedInvoiceId_key" ON "public"."PlatformInvoice" USING "btree" ("holdedInvoiceId");



CREATE INDEX "PlatformInvoice_orderId_idx" ON "public"."PlatformInvoice" USING "btree" ("orderId");



CREATE UNIQUE INDEX "PlatformInvoice_orderKey_key" ON "public"."PlatformInvoice" USING "btree" ("orderKey");



CREATE UNIQUE INDEX "PlatformInvoice_rectifiesId_key" ON "public"."PlatformInvoice" USING "btree" ("rectifiesId");



CREATE UNIQUE INDEX "PlatformInvoice_sellerId_period_concept_key" ON "public"."PlatformInvoice" USING "btree" ("sellerId", "period", "concept");



CREATE INDEX "PlatformInvoice_sourceOrderId_idx" ON "public"."PlatformInvoice" USING "btree" ("sourceOrderId");



CREATE INDEX "PlatformInvoice_status_idx" ON "public"."PlatformInvoice" USING "btree" ("status");



CREATE INDEX "ProductImage_productId_idx" ON "public"."ProductImage" USING "btree" ("productId");



CREATE INDEX "ProductSlugHistory_productId_idx" ON "public"."ProductSlugHistory" USING "btree" ("productId");



CREATE UNIQUE INDEX "ProductSlugHistory_slug_key" ON "public"."ProductSlugHistory" USING "btree" ("slug");



CREATE INDEX "ProductVariant_productId_idx" ON "public"."ProductVariant" USING "btree" ("productId");



CREATE INDEX "Product_categoryId_idx" ON "public"."Product" USING "btree" ("categoryId");



CREATE INDEX "Product_createdAt_idx" ON "public"."Product" USING "btree" ("createdAt");



CREATE INDEX "Product_ratingAvg_idx" ON "public"."Product" USING "btree" ("ratingAvg");



CREATE INDEX "Product_sellerId_idx" ON "public"."Product" USING "btree" ("sellerId");



CREATE UNIQUE INDEX "Product_slug_key" ON "public"."Product" USING "btree" ("slug");



CREATE INDEX "Product_status_categoryId_idx" ON "public"."Product" USING "btree" ("status", "categoryId");



CREATE INDEX "Product_status_idx" ON "public"."Product" USING "btree" ("status");



CREATE INDEX "Product_status_origin_idx" ON "public"."Product" USING "btree" ("status", "origin");



CREATE INDEX "Product_totalPrice_idx" ON "public"."Product" USING "btree" ("totalPrice");



CREATE INDEX "RectificationRequest_invoiceRecipientId_idx" ON "public"."RectificationRequest" USING "btree" ("invoiceRecipientId");



CREATE INDEX "RectificationRequest_status_idx" ON "public"."RectificationRequest" USING "btree" ("status");



CREATE INDEX "Refund_orderItemId_idx" ON "public"."Refund" USING "btree" ("orderItemId");



CREATE INDEX "Refund_paymentId_idx" ON "public"."Refund" USING "btree" ("paymentId");



CREATE INDEX "ReturnItem_orderItemId_idx" ON "public"."ReturnItem" USING "btree" ("orderItemId");



CREATE INDEX "ReturnItem_returnRequestId_idx" ON "public"."ReturnItem" USING "btree" ("returnRequestId");



CREATE INDEX "ReturnRequest_buyerId_idx" ON "public"."ReturnRequest" USING "btree" ("buyerId");



CREATE INDEX "ReturnRequest_orderId_idx" ON "public"."ReturnRequest" USING "btree" ("orderId");



CREATE INDEX "ReturnRequest_sellerId_idx" ON "public"."ReturnRequest" USING "btree" ("sellerId");



CREATE INDEX "ReturnRequest_status_idx" ON "public"."ReturnRequest" USING "btree" ("status");



CREATE INDEX "Review_orderId_idx" ON "public"."Review" USING "btree" ("orderId");



CREATE INDEX "Review_productId_idx" ON "public"."Review" USING "btree" ("productId");



CREATE INDEX "Review_productId_moderationStatus_idx" ON "public"."Review" USING "btree" ("productId", "moderationStatus");



CREATE UNIQUE INDEX "Review_productId_userId_key" ON "public"."Review" USING "btree" ("productId", "userId");



CREATE INDEX "Review_userId_idx" ON "public"."Review" USING "btree" ("userId");



CREATE INDEX "SearchQuery_createdAt_idx" ON "public"."SearchQuery" USING "btree" ("createdAt");



CREATE INDEX "SearchQuery_queryNormalized_idx" ON "public"."SearchQuery" USING "btree" ("queryNormalized");



CREATE INDEX "SearchQuery_resultCount_createdAt_idx" ON "public"."SearchQuery" USING "btree" ("resultCount", "createdAt");



CREATE UNIQUE INDEX "SellerProfile_holdedContactId_key" ON "public"."SellerProfile" USING "btree" ("holdedContactId");



CREATE UNIQUE INDEX "SellerProfile_slug_key" ON "public"."SellerProfile" USING "btree" ("slug");



CREATE INDEX "SellerProfile_status_idx" ON "public"."SellerProfile" USING "btree" ("status");



CREATE UNIQUE INDEX "SellerProfile_stripeAccountId_key" ON "public"."SellerProfile" USING "btree" ("stripeAccountId");



CREATE UNIQUE INDEX "SellerProfile_userId_key" ON "public"."SellerProfile" USING "btree" ("userId");



CREATE INDEX "SellerSaleInvoice_buyerId_idx" ON "public"."SellerSaleInvoice" USING "btree" ("buyerId");



CREATE INDEX "SellerSaleInvoice_orderId_idx" ON "public"."SellerSaleInvoice" USING "btree" ("orderId");



CREATE UNIQUE INDEX "SellerSaleInvoice_rectifiesId_key" ON "public"."SellerSaleInvoice" USING "btree" ("rectifiesId");



CREATE UNIQUE INDEX "SellerSaleInvoice_saleIdempotencyKey_key" ON "public"."SellerSaleInvoice" USING "btree" ("saleIdempotencyKey");



CREATE UNIQUE INDEX "SellerSaleInvoice_sellerId_series_number_key" ON "public"."SellerSaleInvoice" USING "btree" ("sellerId", "series", "number");



CREATE INDEX "SellerSaleInvoice_sellerId_status_idx" ON "public"."SellerSaleInvoice" USING "btree" ("sellerId", "status");



CREATE INDEX "SellerShippingMethod_sellerId_idx" ON "public"."SellerShippingMethod" USING "btree" ("sellerId");



CREATE UNIQUE INDEX "Shipment_idempotencyKey_key" ON "public"."Shipment" USING "btree" ("idempotencyKey");



CREATE INDEX "Shipment_orderId_idx" ON "public"."Shipment" USING "btree" ("orderId");



CREATE INDEX "Shipment_sellerId_idx" ON "public"."Shipment" USING "btree" ("sellerId");



CREATE INDEX "Shipment_trackingNumber_idx" ON "public"."Shipment" USING "btree" ("trackingNumber");



CREATE UNIQUE INDEX "TaxProfile_holdedContactId_key" ON "public"."TaxProfile" USING "btree" ("holdedContactId");



CREATE UNIQUE INDEX "TaxProfile_userId_key" ON "public"."TaxProfile" USING "btree" ("userId");



CREATE UNIQUE INDEX "User_emailVerifyToken_key" ON "public"."User" USING "btree" ("emailVerifyToken");



CREATE UNIQUE INDEX "User_email_key" ON "public"."User" USING "btree" ("email");



CREATE UNIQUE INDEX "User_passwordResetToken_key" ON "public"."User" USING "btree" ("passwordResetToken");



CREATE INDEX "User_role_idx" ON "public"."User" USING "btree" ("role");



CREATE INDEX "VerifactuEvent_type_createdAt_idx" ON "public"."VerifactuEvent" USING "btree" ("type", "createdAt");



CREATE UNIQUE INDEX "VerifactuRecord_invoiceId_key" ON "public"."VerifactuRecord" USING "btree" ("invoiceId");



CREATE INDEX "VerifactuRecord_sellerId_createdAt_idx" ON "public"."VerifactuRecord" USING "btree" ("sellerId", "createdAt");



CREATE INDEX "WishlistItem_wishlistId_idx" ON "public"."WishlistItem" USING "btree" ("wishlistId");



CREATE UNIQUE INDEX "WishlistItem_wishlistId_productId_key" ON "public"."WishlistItem" USING "btree" ("wishlistId", "productId");



CREATE UNIQUE INDEX "Wishlist_userId_key" ON "public"."Wishlist" USING "btree" ("userId");



ALTER TABLE ONLY "public"."Address"
    ADD CONSTRAINT "Address_userId_fkey" FOREIGN KEY ("userId") REFERENCES "public"."User"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."BillingMandate"
    ADD CONSTRAINT "BillingMandate_sellerId_fkey" FOREIGN KEY ("sellerId") REFERENCES "public"."SellerProfile"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."CartItem"
    ADD CONSTRAINT "CartItem_productId_fkey" FOREIGN KEY ("productId") REFERENCES "public"."Product"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."CartItem"
    ADD CONSTRAINT "CartItem_userId_fkey" FOREIGN KEY ("userId") REFERENCES "public"."User"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."CartItem"
    ADD CONSTRAINT "CartItem_variantId_fkey" FOREIGN KEY ("variantId") REFERENCES "public"."ProductVariant"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."Category"
    ADD CONSTRAINT "Category_parentId_fkey" FOREIGN KEY ("parentId") REFERENCES "public"."Category"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."ConsentRecord"
    ADD CONSTRAINT "ConsentRecord_userId_fkey" FOREIGN KEY ("userId") REFERENCES "public"."User"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."InvoiceDocument"
    ADD CONSTRAINT "InvoiceDocument_invoiceRecipientId_fkey" FOREIGN KEY ("invoiceRecipientId") REFERENCES "public"."InvoiceRecipient"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."InvoiceDocument"
    ADD CONSTRAINT "InvoiceDocument_uploadedByUserId_fkey" FOREIGN KEY ("uploadedByUserId") REFERENCES "public"."User"("id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."InvoiceRecipient"
    ADD CONSTRAINT "InvoiceRecipient_invoiceRequestId_fkey" FOREIGN KEY ("invoiceRequestId") REFERENCES "public"."InvoiceRequest"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."InvoiceRecipient"
    ADD CONSTRAINT "InvoiceRecipient_sellerId_fkey" FOREIGN KEY ("sellerId") REFERENCES "public"."SellerProfile"("id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."InvoiceRequest"
    ADD CONSTRAINT "InvoiceRequest_buyerId_fkey" FOREIGN KEY ("buyerId") REFERENCES "public"."User"("id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."InvoiceRequest"
    ADD CONSTRAINT "InvoiceRequest_orderId_fkey" FOREIGN KEY ("orderId") REFERENCES "public"."Order"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."ModerationAction"
    ADD CONSTRAINT "ModerationAction_actorId_fkey" FOREIGN KEY ("actorId") REFERENCES "public"."User"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."ModerationAction"
    ADD CONSTRAINT "ModerationAction_sellerId_fkey" FOREIGN KEY ("sellerId") REFERENCES "public"."SellerProfile"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."NotificationPreference"
    ADD CONSTRAINT "NotificationPreference_userId_fkey" FOREIGN KEY ("userId") REFERENCES "public"."User"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."Notification"
    ADD CONSTRAINT "Notification_userId_fkey" FOREIGN KEY ("userId") REFERENCES "public"."User"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."OrderItem"
    ADD CONSTRAINT "OrderItem_orderId_fkey" FOREIGN KEY ("orderId") REFERENCES "public"."Order"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."OrderItem"
    ADD CONSTRAINT "OrderItem_productId_fkey" FOREIGN KEY ("productId") REFERENCES "public"."Product"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."OrderItem"
    ADD CONSTRAINT "OrderItem_sellerId_fkey" FOREIGN KEY ("sellerId") REFERENCES "public"."SellerProfile"("id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."OrderItem"
    ADD CONSTRAINT "OrderItem_shipmentId_fkey" FOREIGN KEY ("shipmentId") REFERENCES "public"."Shipment"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."OrderItem"
    ADD CONSTRAINT "OrderItem_variantId_fkey" FOREIGN KEY ("variantId") REFERENCES "public"."ProductVariant"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."Order"
    ADD CONSTRAINT "Order_buyerId_fkey" FOREIGN KEY ("buyerId") REFERENCES "public"."User"("id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."Payment"
    ADD CONSTRAINT "Payment_orderId_fkey" FOREIGN KEY ("orderId") REFERENCES "public"."Order"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."PlatformInvoice"
    ADD CONSTRAINT "PlatformInvoice_buyerId_fkey" FOREIGN KEY ("buyerId") REFERENCES "public"."User"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."PlatformInvoice"
    ADD CONSTRAINT "PlatformInvoice_orderId_fkey" FOREIGN KEY ("orderId") REFERENCES "public"."Order"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."PlatformInvoice"
    ADD CONSTRAINT "PlatformInvoice_rectifiesId_fkey" FOREIGN KEY ("rectifiesId") REFERENCES "public"."PlatformInvoice"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."PlatformInvoice"
    ADD CONSTRAINT "PlatformInvoice_sellerId_fkey" FOREIGN KEY ("sellerId") REFERENCES "public"."SellerProfile"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."ProductImage"
    ADD CONSTRAINT "ProductImage_productId_fkey" FOREIGN KEY ("productId") REFERENCES "public"."Product"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."ProductSlugHistory"
    ADD CONSTRAINT "ProductSlugHistory_productId_fkey" FOREIGN KEY ("productId") REFERENCES "public"."Product"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."ProductVariant"
    ADD CONSTRAINT "ProductVariant_productId_fkey" FOREIGN KEY ("productId") REFERENCES "public"."Product"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."Product"
    ADD CONSTRAINT "Product_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES "public"."Category"("id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."Product"
    ADD CONSTRAINT "Product_sellerId_fkey" FOREIGN KEY ("sellerId") REFERENCES "public"."SellerProfile"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."RectificationRequest"
    ADD CONSTRAINT "RectificationRequest_invoiceRecipientId_fkey" FOREIGN KEY ("invoiceRecipientId") REFERENCES "public"."InvoiceRecipient"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."Refund"
    ADD CONSTRAINT "Refund_orderItemId_fkey" FOREIGN KEY ("orderItemId") REFERENCES "public"."OrderItem"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."Refund"
    ADD CONSTRAINT "Refund_paymentId_fkey" FOREIGN KEY ("paymentId") REFERENCES "public"."Payment"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."ReturnItem"
    ADD CONSTRAINT "ReturnItem_orderItemId_fkey" FOREIGN KEY ("orderItemId") REFERENCES "public"."OrderItem"("id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."ReturnItem"
    ADD CONSTRAINT "ReturnItem_returnRequestId_fkey" FOREIGN KEY ("returnRequestId") REFERENCES "public"."ReturnRequest"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."ReturnRequest"
    ADD CONSTRAINT "ReturnRequest_buyerId_fkey" FOREIGN KEY ("buyerId") REFERENCES "public"."User"("id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."ReturnRequest"
    ADD CONSTRAINT "ReturnRequest_orderId_fkey" FOREIGN KEY ("orderId") REFERENCES "public"."Order"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."ReturnRequest"
    ADD CONSTRAINT "ReturnRequest_sellerId_fkey" FOREIGN KEY ("sellerId") REFERENCES "public"."SellerProfile"("id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."Review"
    ADD CONSTRAINT "Review_orderId_fkey" FOREIGN KEY ("orderId") REFERENCES "public"."Order"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."Review"
    ADD CONSTRAINT "Review_productId_fkey" FOREIGN KEY ("productId") REFERENCES "public"."Product"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."Review"
    ADD CONSTRAINT "Review_userId_fkey" FOREIGN KEY ("userId") REFERENCES "public"."User"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."SearchQuery"
    ADD CONSTRAINT "SearchQuery_userId_fkey" FOREIGN KEY ("userId") REFERENCES "public"."User"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."SellerProfile"
    ADD CONSTRAINT "SellerProfile_userId_fkey" FOREIGN KEY ("userId") REFERENCES "public"."User"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."SellerSaleInvoice"
    ADD CONSTRAINT "SellerSaleInvoice_buyerId_fkey" FOREIGN KEY ("buyerId") REFERENCES "public"."User"("id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."SellerSaleInvoice"
    ADD CONSTRAINT "SellerSaleInvoice_orderId_fkey" FOREIGN KEY ("orderId") REFERENCES "public"."Order"("id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."SellerSaleInvoice"
    ADD CONSTRAINT "SellerSaleInvoice_rectifiesId_fkey" FOREIGN KEY ("rectifiesId") REFERENCES "public"."SellerSaleInvoice"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."SellerSaleInvoice"
    ADD CONSTRAINT "SellerSaleInvoice_sellerId_fkey" FOREIGN KEY ("sellerId") REFERENCES "public"."SellerProfile"("id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."SellerShippingMethod"
    ADD CONSTRAINT "SellerShippingMethod_sellerId_fkey" FOREIGN KEY ("sellerId") REFERENCES "public"."SellerProfile"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."Shipment"
    ADD CONSTRAINT "Shipment_orderId_fkey" FOREIGN KEY ("orderId") REFERENCES "public"."Order"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."Shipment"
    ADD CONSTRAINT "Shipment_sellerId_fkey" FOREIGN KEY ("sellerId") REFERENCES "public"."SellerProfile"("id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."Shipment"
    ADD CONSTRAINT "Shipment_sellerShippingMethodId_fkey" FOREIGN KEY ("sellerShippingMethodId") REFERENCES "public"."SellerShippingMethod"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."TaxProfile"
    ADD CONSTRAINT "TaxProfile_userId_fkey" FOREIGN KEY ("userId") REFERENCES "public"."User"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."VerifactuRecord"
    ADD CONSTRAINT "VerifactuRecord_invoiceId_fkey" FOREIGN KEY ("invoiceId") REFERENCES "public"."SellerSaleInvoice"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."WishlistItem"
    ADD CONSTRAINT "WishlistItem_productId_fkey" FOREIGN KEY ("productId") REFERENCES "public"."Product"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."WishlistItem"
    ADD CONSTRAINT "WishlistItem_wishlistId_fkey" FOREIGN KEY ("wishlistId") REFERENCES "public"."Wishlist"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."Wishlist"
    ADD CONSTRAINT "Wishlist_userId_fkey" FOREIGN KEY ("userId") REFERENCES "public"."User"("id") ON UPDATE CASCADE ON DELETE CASCADE;





ALTER PUBLICATION "supabase_realtime" OWNER TO "postgres";


REVOKE USAGE ON SCHEMA "public" FROM PUBLIC;




































































































































































































