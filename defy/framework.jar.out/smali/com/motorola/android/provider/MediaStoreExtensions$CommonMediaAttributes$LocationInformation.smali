.class public final Lcom/motorola/android/provider/MediaStoreExtensions$CommonMediaAttributes$LocationInformation;
.super Ljava/lang/Object;
.source "MediaStoreExtensions.java"

# interfaces
.implements Lcom/motorola/android/provider/MediaStoreExtensions$MediaExtensionAttributesWithJoins;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/provider/MediaStoreExtensions$CommonMediaAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationInformation"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = null

.field public static final LOCATION_CITY:Ljava/lang/String; = "attribute_data4"

.field public static final LOCATION_COUNTRY:Ljava/lang/String; = "attribute_data6"

.field public static final LOCATION_LATITUDE:Ljava/lang/String; = "attribute_data9"

.field public static final LOCATION_LONGITUDE:Ljava/lang/String; = "attribute_data8"

.field public static final LOCATION_NAME:Ljava/lang/String; = "attribute_data1"

.field public static final LOCATION_NEIGHBORHOOD:Ljava/lang/String; = "attribute_data3"

.field public static final LOCATION_STATE:Ljava/lang/String; = "attribute_data5"

.field public static final LOCATION_TIMEZONE:Ljava/lang/String; = "attribute_data7"

.field public static final STREET_ADDRESS:Ljava/lang/String; = "attribute_data2"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/provider/MediaStoreExtensions$CommonMediaAttributes$LocationInformation;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
