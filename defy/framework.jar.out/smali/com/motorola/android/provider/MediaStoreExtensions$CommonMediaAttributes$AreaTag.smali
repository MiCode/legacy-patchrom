.class public final Lcom/motorola/android/provider/MediaStoreExtensions$CommonMediaAttributes$AreaTag;
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
    name = "AreaTag"
.end annotation


# static fields
.field public static final AREA_KEYWORD:Ljava/lang/String; = "attribute_data1"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = null

.field public static final HEIGHT_FORAREA:Ljava/lang/String; = "attribute_data5"

.field public static final PERCENT_CENTER_X_FORAREA:Ljava/lang/String; = "attribute_data2"

.field public static final PERCENT_CENTER_Y_FORAREA:Ljava/lang/String; = "attribute_data3"

.field public static final REF_ID:Ljava/lang/String; = "attribute_data7"

.field public static final REF_TYPE:Ljava/lang/String; = "attribute_data6"

.field public static final REF_TYPE_FRIEND:I = 0x1

.field public static final WIDTH_FORAREA:Ljava/lang/String; = "attribute_data4"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/provider/MediaStoreExtensions$CommonMediaAttributes$AreaTag;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
