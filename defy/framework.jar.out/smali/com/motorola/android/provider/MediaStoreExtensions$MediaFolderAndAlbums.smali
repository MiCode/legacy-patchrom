.class public Lcom/motorola/android/provider/MediaStoreExtensions$MediaFolderAndAlbums;
.super Ljava/lang/Object;
.source "MediaStoreExtensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/provider/MediaStoreExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaFolderAndAlbums"
.end annotation


# static fields
.field public static final BUCKET_ALBUM_ID:Ljava/lang/String; = "bucket_album_id"

.field public static final BUCKET_COUNT_IMAGES:Ljava/lang/String; = "bucket_count_images"

.field public static final BUCKET_COUNT_VIDEOS:Ljava/lang/String; = "bucket_count_videos"

.field public static final BUCKET_DISPLAY_NAME:Ljava/lang/String; = "bucket_display_name"

.field public static final BUCKET_ID:Ljava/lang/String; = "bucket_id"

.field public static final BUCKET_LAST_MODFIED_DATE:Ljava/lang/String; = "bucket_last_modified_date"

.field public static final BUCKET_TYPE:Ljava/lang/String; = "bucket_type"

.field public static final BUCKET_TYPE_ALBUM:I = 0x2

.field public static final BUCKET_TYPE_FOLDER:I = 0x1

.field public static final CONTENT_EXTERNAL_URI:Landroid/net/Uri; = null

.field public static final CONTENT_INTERNAL_URI:Landroid/net/Uri; = null

.field public static final TYPE:Ljava/lang/String; = "media_folder_and_albums"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-string v2, "media_folder_and_albums"

    sget-object v0, Lcom/motorola/android/provider/MediaStoreExtensions;->AUTHORITY_EXTERNAL_URI:Landroid/net/Uri;

    const-string v1, "media_folder_and_albums"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/provider/MediaStoreExtensions$MediaFolderAndAlbums;->CONTENT_EXTERNAL_URI:Landroid/net/Uri;

    sget-object v0, Lcom/motorola/android/provider/MediaStoreExtensions;->AUTHORITY_INTERNAL_URI:Landroid/net/Uri;

    const-string v1, "media_folder_and_albums"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/provider/MediaStoreExtensions$MediaFolderAndAlbums;->CONTENT_INTERNAL_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
