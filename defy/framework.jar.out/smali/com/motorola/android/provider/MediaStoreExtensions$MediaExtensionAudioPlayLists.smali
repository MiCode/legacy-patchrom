.class public Lcom/motorola/android/provider/MediaStoreExtensions$MediaExtensionAudioPlayLists;
.super Ljava/lang/Object;
.source "MediaStoreExtensions.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/motorola/android/provider/MediaStoreExtensions$MediaExtensionAudioPlaylistColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/provider/MediaStoreExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaExtensionAudioPlayLists"
.end annotation


# static fields
.field public static final CONTENT_EXTERNAL_URI:Landroid/net/Uri; = null

.field public static final CONTENT_INTERNAL_URI:Landroid/net/Uri; = null

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/media_extension_audio_playlists"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/media_extension_audio_playlists"

.field public static final TYPE:Ljava/lang/String; = "media_extension_audio_playlists"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-string v2, "media_extension_audio_playlists"

    sget-object v0, Lcom/motorola/android/provider/MediaStoreExtensions;->AUTHORITY_EXTERNAL_URI:Landroid/net/Uri;

    const-string v1, "media_extension_audio_playlists"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/provider/MediaStoreExtensions$MediaExtensionAudioPlayLists;->CONTENT_EXTERNAL_URI:Landroid/net/Uri;

    sget-object v0, Lcom/motorola/android/provider/MediaStoreExtensions;->AUTHORITY_INTERNAL_URI:Landroid/net/Uri;

    const-string v1, "media_extension_audio_playlists"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/provider/MediaStoreExtensions$MediaExtensionAudioPlayLists;->CONTENT_INTERNAL_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
