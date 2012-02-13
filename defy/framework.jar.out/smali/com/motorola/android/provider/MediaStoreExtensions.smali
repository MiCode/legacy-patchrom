.class public Lcom/motorola/android/provider/MediaStoreExtensions;
.super Ljava/lang/Object;
.source "MediaStoreExtensions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/provider/MediaStoreExtensions$MediaExtensionSuggestion;,
        Lcom/motorola/android/provider/MediaStoreExtensions$MediaExtensionSuggestionColumns;,
        Lcom/motorola/android/provider/MediaStoreExtensions$MediaExtensionRecommendation;,
        Lcom/motorola/android/provider/MediaStoreExtensions$MediaExtensionRecommendationColumns;,
        Lcom/motorola/android/provider/MediaStoreExtensions$MediaExtensionAudioLibraryChanges;,
        Lcom/motorola/android/provider/MediaStoreExtensions$MediaExtensionAudioLibraryChangesColumns;,
        Lcom/motorola/android/provider/MediaStoreExtensions$MediaExtensionArtistsDetailedEvents;,
        Lcom/motorola/android/provider/MediaStoreExtensions$MediaExtensionArtistsDetailedEventsColumns;,
        Lcom/motorola/android/provider/MediaStoreExtensions$MediaExtensionArtistsNews;,
        Lcom/motorola/android/provider/MediaStoreExtensions$MediaExtensionArtistsNewsColumns;,
        Lcom/motorola/android/provider/MediaStoreExtensions$MediaExtensionArtists;,
        Lcom/motorola/android/provider/MediaStoreExtensions$MediaExtensionArtistColumns;,
        Lcom/motorola/android/provider/MediaStoreExtensions$MediaExtensionAlbums;,
        Lcom/motorola/android/provider/MediaStoreExtensions$MediaExtensionAlbumColumns;,
        Lcom/motorola/android/provider/MediaStoreExtensions$MediaExtensionAudioPlayLists;,
        Lcom/motorola/android/provider/MediaStoreExtensions$MediaExtensionAudioPlaylistColumns;,
        Lcom/motorola/android/provider/MediaStoreExtensions$MediaExtensionAudioAlbums;,
        Lcom/motorola/android/provider/MediaStoreExtensions$MediaExtensionAudioAlbumColumns;,
        Lcom/motorola/android/provider/MediaStoreExtensions$MediaExtensionThumbNails;,
        Lcom/motorola/android/provider/MediaStoreExtensions$MediaExtensionThumbnailColumns;,
        Lcom/motorola/android/provider/MediaStoreExtensions$CommonMediaAttributes;,
        Lcom/motorola/android/provider/MediaStoreExtensions$MediaExtensionAttributes;,
        Lcom/motorola/android/provider/MediaStoreExtensions$MediaExtensionAttributesWithJoins;,
        Lcom/motorola/android/provider/MediaStoreExtensions$MediaAttributeColumns;,
        Lcom/motorola/android/provider/MediaStoreExtensions$MediaExtensionColumns;,
        Lcom/motorola/android/provider/MediaStoreExtensions$Image;,
        Lcom/motorola/android/provider/MediaStoreExtensions$Video;,
        Lcom/motorola/android/provider/MediaStoreExtensions$Audio;,
        Lcom/motorola/android/provider/MediaStoreExtensions$MediaFolderAndAlbums;,
        Lcom/motorola/android/provider/MediaStoreExtensions$VisualMediaWithAttributes;,
        Lcom/motorola/android/provider/MediaStoreExtensions$VisualMedia;,
        Lcom/motorola/android/provider/MediaStoreExtensions$VisualFolder;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.motorola.media.extensions"

.field public static final AUTHORITY_EXTERNAL_URI:Landroid/net/Uri; = null

.field public static final AUTHORITY_INTERNAL_URI:Landroid/net/Uri; = null

.field public static final AUTHORITY_ONLINE_URI:Landroid/net/Uri; = null

.field private static final DIR_CURSOR_PREFIX:Ljava/lang/String; = "vnd.android.cursor.dir/"

.field private static final ITEM_CURSOR_PREFIX:Ljava/lang/String; = "vnd.android.cursor.item/"

.field public static final MEDIA_STORE_AUTHORITY_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "MediaStoreExtensions"

.field private static final sAudio:I = 0x64

.field private static final sImage:I = 0x1

.field private static final sVideo:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "content://com.motorola.media.extensions/internal"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/provider/MediaStoreExtensions;->AUTHORITY_INTERNAL_URI:Landroid/net/Uri;

    const-string v0, "content://com.motorola.media.extensions/external"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/provider/MediaStoreExtensions;->AUTHORITY_EXTERNAL_URI:Landroid/net/Uri;

    const-string v0, "content://com.motorola.media.extensions/online"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/provider/MediaStoreExtensions;->AUTHORITY_ONLINE_URI:Landroid/net/Uri;

    const-string v0, "content://media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/provider/MediaStoreExtensions;->MEDIA_STORE_AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
