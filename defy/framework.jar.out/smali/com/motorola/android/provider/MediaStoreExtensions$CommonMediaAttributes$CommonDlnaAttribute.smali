.class public final Lcom/motorola/android/provider/MediaStoreExtensions$CommonMediaAttributes$CommonDlnaAttribute;
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
    name = "CommonDlnaAttribute"
.end annotation


# static fields
.field public static final DATE_USED:Ljava/lang/String; = "date_used"

.field public static final DLNA_PROFILE:Ljava/lang/String; = "dlna_profile"

.field public static final DLNA_SHARE:Ljava/lang/String; = "dlna_share"

.field public static final FILE_TYPE:Ljava/lang/String; = "file_type"

.field public static final PROTECT_STATUS:Ljava/lang/String; = "protect_status"

.field public static final PUID:Ljava/lang/String; = "puid"

.field public static final RATING:Ljava/lang/String; = "rating"

.field public static final USE_COUNT:Ljava/lang/String; = "use_count"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
