.class public final Lcom/motorola/android/provider/MediaStoreExtensions$CommonMediaAttributes;
.super Ljava/lang/Object;
.source "MediaStoreExtensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/provider/MediaStoreExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommonMediaAttributes"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/provider/MediaStoreExtensions$CommonMediaAttributes$VideoAttribute;,
        Lcom/motorola/android/provider/MediaStoreExtensions$CommonMediaAttributes$MediaLyrics;,
        Lcom/motorola/android/provider/MediaStoreExtensions$CommonMediaAttributes$AudioAttribute;,
        Lcom/motorola/android/provider/MediaStoreExtensions$CommonMediaAttributes$CommonDlnaAttribute;,
        Lcom/motorola/android/provider/MediaStoreExtensions$CommonMediaAttributes$ImageAttribute;,
        Lcom/motorola/android/provider/MediaStoreExtensions$CommonMediaAttributes$LocationInformation;,
        Lcom/motorola/android/provider/MediaStoreExtensions$CommonMediaAttributes$AlbumAssociation;,
        Lcom/motorola/android/provider/MediaStoreExtensions$CommonMediaAttributes$AreaTag;,
        Lcom/motorola/android/provider/MediaStoreExtensions$CommonMediaAttributes$KeyWordTag;,
        Lcom/motorola/android/provider/MediaStoreExtensions$CommonMediaAttributes$Tag;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "common_media_attributes"

.field public static final sAlbumAssociation:I = 0x3

.field public static final sAreaTag:I = 0x2

.field public static final sKeywordTag:I = 0x1

.field public static final sLocation:I = 0x4

.field public static final sMediaLyrics:I = 0x5


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
