.class public Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;
.super Ljava/lang/Object;
.source "MediaStoreExtensionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Views;,
        Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Tables;
    }
.end annotation


# static fields
.field public static final ARTISTS:I = 0x384

.field public static final ARTISTS_ID:I = 0x385

.field public static final ARTIST_DETAILED_EVENT:I = 0x4b0

.field public static final ARTIST_DETAILED_EVENT_ID:I = 0x4b1

.field public static final ARTIST_NEWS:I = 0x3e8

.field public static final ARTIST_NEWS_ID:I = 0x3e9

.field private static final ASSOCIATION:I = 0x89a

.field private static final ASSOCIATION_ID:I = 0x89b

.field public static final ATTRIBUTES_WITH_VISUAL:I = 0x2be

.field public static final ATTRIBUTES_WITH_VISUAL_ID:I = 0x2bf

.field public static final AUDIO_ALBUM:I = 0x5dc

.field public static final AUDIO_ALBUM_ID:I = 0x5dd

.field private static final AUDIO_BUCKETS:I = 0x8a4

.field private static final AUDIO_BUCKETS_ID:I = 0x8a5

.field public static final AUDIO_LIBRARY_CHANGES:I = 0x7d0

.field public static final AUDIO_LIBRARY_CHANGES_ID:I = 0x7d1

.field private static final AUDIO_MEDIA:I = 0x64

.field private static final AUDIO_MEDIA_ID:I = 0x65

.field private static final AUDIO_MTPALBUMS:I = 0x66

.field private static final AUDIO_MTPALBUMS_ID:I = 0x67

.field public static final AUDIO_PLAYLIST:I = 0x5de

.field public static final AUDIO_PLAYLIST_ID:I = 0x5df

.field public static final AUDIO_RECOMMENDATION:I = 0x708

.field public static final AUDIO_RECOMMENDATION_ID:I = 0x709

.field public static final AUDIO_SEARCH:I = 0x6a5

.field public static final AUDIO_SUGGESTION:I = 0x76c

.field public static final AUDIO_SUGGESTION_ID:I = 0x76d

.field private static final COLUMNS:[Ljava/lang/String; = null

.field public static final COMMON_ATTRIBUTE_TAGGED_MEDIA:I = 0x641

.field public static final COMMON_ATTRIBUTE_TAGS:I = 0x640

.field private static final IMAGES_MEDIA:I = 0x1

.field private static final IMAGES_MEDIA_ID:I = 0x2

.field private static final IMAGES_MTPTHUMBNAILS:I = 0x5

.field private static final IMAGES_MTPTHUMBNAILS_ID:I = 0x6

.field private static final IMAGES_SPEEDDATA:I = 0x7

.field private static final IMAGES_SPEEDDATA_ID:I = 0x8

.field private static final IMAGES_THUMBNAIL:I = 0x3

.field private static final IMAGES_THUMBNAIL_ID:I = 0x4

.field private static final KEYWORDS:I = 0x898

.field private static final KEYWORDS_ID:I = 0x899

.field public static final MEDIA_ALBUMS:I = 0x320

.field public static final MEDIA_ALBUMS_ID:I = 0x322

.field public static final MEDIA_ALBUMS_WITH_MEDIA:I = 0x321

.field public static final MEDIA_ALBUMS_WITH_MEDIA_ID:I = 0x323

.field public static final MEDIA_ATTRIBUTES:I = 0x2bc

.field public static final MEDIA_ATTRIBUTES_ID:I = 0x2bd

.field public static MEDIA_STORE_EXTENSIONS_DATABASE_VERSION:I = 0x0

.field public static final PLAY_HISTORY:I = 0x834

.field public static final PLAY_HISTORY_ID:I = 0x835

.field private static final SUGGEST_COLUMNS:[Ljava/lang/String; = null

.field private static final TAG_IMAGE_INFO:I = 0x89e

.field private static final TAG_IMAGE_INFO_ID:I = 0x89f

.field private static final TAG_VIDEO_INFO:I = 0x89c

.field private static final TAG_VIDEO_INFO_ID:I = 0x89d

.field private static final TAG_VISUAL_INFO:I = 0x8a2

.field private static final TAG_VISUAL_INFO_ID:I = 0x8a3

.field public static final UNKNOWN_STRING:Ljava/lang/String; = "<unknown>"

.field private static final URI_MATCHER:Landroid/content/UriMatcher; = null

.field private static final VIDEO_MEDIA:I = 0xc8

.field private static final VIDEO_MEDIA_ID:I = 0xc9

.field public static final VISUAL_FOLDER:I = 0x514

.field private static final VISUAL_INFO:I = 0x8a0

.field private static final VISUAL_INFO_ID:I = 0x8a1

.field public static final VISUAL_MEDIA:I = 0x44c

.field private static final VISUAL_MEDIA_FOLDERS_AND_ALBUMS:I = 0x258

.field public static final VISUAL_MEDIA_LOCATION:I = 0x44d

.field public static final VISUAL_SEARCH:I = 0x6a4

.field private static final audioAlbumKeyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final audioAlbumMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final audioArtistMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final audioAttributesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final audioPlaylistMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final dlnaAttributesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final imageAttributesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final imagethumbnailsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sProvider:Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;

.field private static final videoAttributesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const-string v4, "puid"

    const-string v3, "com.motorola.media.extensions"

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->sProvider:Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;

    .line 44
    const/4 v0, 0x5

    sput v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->MEDIA_STORE_EXTENSIONS_DATABASE_VERSION:I

    .line 2691
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const-string v1, "suggest_text_1"

    aput-object v1, v0, v5

    const-string v1, "suggest_intent_data"

    aput-object v1, v0, v6

    const-string v1, "suggest_icon_1"

    aput-object v1, v0, v7

    sput-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->SUGGEST_COLUMNS:[Ljava/lang/String;

    .line 2697
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const-string v1, "suggest_text_1"

    aput-object v1, v0, v5

    const-string v1, "suggest_text_2"

    aput-object v1, v0, v6

    const-string v1, "suggest_intent_data"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->COLUMNS:[Ljava/lang/String;

    .line 2707
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->dlnaAttributesMap:Ljava/util/HashMap;

    .line 2708
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->audioAttributesMap:Ljava/util/HashMap;

    .line 2709
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->videoAttributesMap:Ljava/util/HashMap;

    .line 2710
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->imageAttributesMap:Ljava/util/HashMap;

    .line 2711
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->audioAlbumMap:Ljava/util/HashMap;

    .line 2712
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->audioAlbumKeyMap:Ljava/util/HashMap;

    .line 2714
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->audioPlaylistMap:Ljava/util/HashMap;

    .line 2715
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->audioArtistMap:Ljava/util/HashMap;

    .line 2716
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->imagethumbnailsMap:Ljava/util/HashMap;

    .line 2719
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 2726
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->audioAlbumKeyMap:Ljava/util/HashMap;

    const-string v1, "artist"

    const-string v2, "artist"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2727
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->audioAlbumMap:Ljava/util/HashMap;

    const-string v1, "puid"

    const-string v1, "puid"

    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2728
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->audioAlbumMap:Ljava/util/HashMap;

    const-string v1, "date_modified"

    const-string v2, "date_modified"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2729
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->audioAlbumMap:Ljava/util/HashMap;

    const-string v1, "rating"

    const-string v2, "rating"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2730
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->audioAlbumMap:Ljava/util/HashMap;

    const-string v1, "buy_flag"

    const-string v2, "buy_flag"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2731
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->audioAlbumMap:Ljava/util/HashMap;

    const-string v1, "genre"

    const-string v2, "genre"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2732
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->audioAlbumMap:Ljava/util/HashMap;

    const-string v1, "album_art_width"

    const-string v2, "album_art_width"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2733
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->audioAlbumMap:Ljava/util/HashMap;

    const-string v1, "album_art_height"

    const-string v2, "album_art_height"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2734
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->audioAlbumMap:Ljava/util/HashMap;

    const-string v1, "album_art_format"

    const-string v2, "album_art_format"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2735
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->audioAlbumMap:Ljava/util/HashMap;

    const-string v1, "_data"

    const-string v2, "_data"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2737
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->audioPlaylistMap:Ljava/util/HashMap;

    const-string v1, "puid"

    const-string v1, "puid"

    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2739
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->imagethumbnailsMap:Ljava/util/HashMap;

    const-string v1, "format"

    const-string v2, "format"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2741
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/image/media"

    invoke-virtual {v0, v3, v1, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2742
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/playhistory"

    const/16 v2, 0x834

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2743
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/playhistory/#"

    const/16 v2, 0x835

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2744
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/image/media/#"

    invoke-virtual {v0, v3, v1, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2745
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/media_extension_thumbnails"

    invoke-virtual {v0, v3, v1, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2746
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/media_extension_thumbnails/#"

    const/4 v2, 0x4

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2748
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/audio/media"

    const/16 v2, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2749
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/audio/media/#"

    const/16 v2, 0x65

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2751
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/video/media"

    const/16 v2, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2752
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/video/media/#"

    const/16 v2, 0xc9

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2754
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/media_folder_and_albums"

    const/16 v2, 0x258

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2756
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/media_attribute"

    const/16 v2, 0x2bc

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2757
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/media_attribute/#"

    const/16 v2, 0x2bd

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2758
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/visual_media_attributes"

    const/16 v2, 0x2be

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2759
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/visual_media_attributes/#"

    const/16 v2, 0x2bf

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2761
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/media_extension_albums"

    const/16 v2, 0x320

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2762
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/media_extension_albums/#"

    const/16 v2, 0x322

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2763
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/media_extension_albums/media"

    const/16 v2, 0x321

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2764
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/media_extension_albums/media/#"

    const/16 v2, 0x323

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2767
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/media_extension_artists"

    const/16 v2, 0x384

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2768
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/media_extension_artists/#"

    const/16 v2, 0x385

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2771
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/media_extension_artists_news"

    const/16 v2, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2772
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/media_extension_artists_news/#"

    const/16 v2, 0x3e9

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2774
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/visual_folder"

    const/16 v2, 0x514

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2775
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/visual_media"

    const/16 v2, 0x44c

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2776
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/visual_media/location/*"

    const/16 v2, 0x44d

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2779
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/media_extension_artists_detailed_events"

    const/16 v2, 0x4b0

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2780
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/media_extension_artists_detailed_events/#"

    const/16 v2, 0x4b1

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2782
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/media_extension_audio_albums"

    const/16 v2, 0x5dc

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2783
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/media_extension_audio_albums/#"

    const/16 v2, 0x5dd

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2785
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/common_media_attributes/tags"

    const/16 v2, 0x640

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2786
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/common_media_attributes/tags/*"

    const/16 v2, 0x641

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2789
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/visual_search/search_suggest_query"

    const/16 v2, 0x6a4

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2790
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/visual_search/search_suggest_query/*"

    const/16 v2, 0x6a4

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2792
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/media_extension_recommendation"

    const/16 v2, 0x708

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2793
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/media_extension_recommendation/#"

    const/16 v2, 0x709

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2796
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/media_extension_suggestion"

    const/16 v2, 0x76c

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2797
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/media_extension_suggestion/#"

    const/16 v2, 0x76d

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2798
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/media_extension_audio_library_changes"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2799
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/media_extension_audio_library_changes/#"

    const/16 v2, 0x7d1

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2801
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/audio/search_suggest_query"

    const/16 v2, 0x6a5

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2802
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/audio/search_suggest_query/*"

    const/16 v2, 0x6a5

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2805
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/images/mtpthumbnails"

    const/4 v2, 0x5

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2806
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/images/mtpthumbnails/#"

    const/4 v2, 0x6

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2807
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/images/speed_data"

    const/4 v2, 0x7

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2808
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/images/speed_data/#"

    const/16 v2, 0x8

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2810
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/audio/mtpalbums"

    const/16 v2, 0x66

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2811
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/audio/mtpalbums/#"

    const/16 v2, 0x67

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2814
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/audio/buckets"

    const/16 v2, 0x8a4

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2815
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/audio/buckets/#"

    const/16 v2, 0x8a5

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2816
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/tag"

    const/16 v2, 0x898

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2817
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/tag/#"

    const/16 v2, 0x899

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2818
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/association"

    const/16 v2, 0x89a

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2819
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/association/#"

    const/16 v2, 0x89b

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2820
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/taginfo_image"

    const/16 v2, 0x89e

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2821
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/taginfo_image/#"

    const/16 v2, 0x89f

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2822
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/taginfo_video"

    const/16 v2, 0x89c

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2823
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/taginfo_video/#"

    const/16 v2, 0x89d

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2824
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/visual"

    const/16 v2, 0x8a0

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2825
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/visual/#"

    const/16 v2, 0x8a1

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2826
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/taginfo_visual"

    const/16 v2, 0x8a2

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2827
    sget-object v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.media.extensions"

    const-string v1, "*/taginfo_visual/#"

    const/16 v2, 0x8a3

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2831
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doAudioSearch(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;
    .locals 58
    .parameter "context"
    .parameter "db"
    .parameter "qb"
    .parameter "uri"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"
    .parameter "mode"
    .parameter "limit"

    .prologue
    .line 1750
    const-string v3, "motorola_view_audio_search"

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1751
    const-string v3, "artist like ? or album like ? or title like ?"

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1752
    const/4 v7, 0x0

    .line 1753
    .local v7, whereArgs:[Ljava/lang/String;
    const/16 v34, 0x0

    .line 1756
    .local v34, isSuggest:Z
    const/4 v3, 0x3

    new-array v7, v3, [Ljava/lang/String;

    .line 1757
    if-eqz p7, :cond_4

    const/4 v3, 0x0

    aget-object v3, p7, v3

    if-eqz v3, :cond_4

    .line 1759
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v8, 0x0

    aget-object v8, p7, v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "%"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v5

    aput-object v6, v7, v4

    aput-object v6, v7, v3

    .line 1761
    const/16 v34, 0x1

    .line 1769
    :goto_0
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    move-object/from16 v11, p10

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 1770
    .local v21, c:Landroid/database/Cursor;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, v21

    move-object v1, v3

    move-object/from16 v2, p4

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1772
    const/4 v3, 0x1

    move/from16 v0, v34

    move v1, v3

    if-ne v0, v1, :cond_17

    .line 1774
    const/16 v32, 0x0

    .line 1775
    .local v32, isArtist:Z
    const/16 v46, 0x0

    .line 1776
    .local v46, todisplay_artiststr:Ljava/lang/String;
    const/16 v49, 0x0

    .line 1777
    .local v49, todisplay_suggestdata_body:Ljava/lang/String;
    const/16 v50, 0x0

    .line 1778
    .local v50, todisplay_text:Ljava/lang/String;
    const/16 v51, 0x0

    .line 1779
    .local v51, todisplay_text2:Ljava/lang/String;
    const/16 v47, 0x0

    .line 1780
    .local v47, todisplay_data1:Ljava/lang/String;
    const/16 v45, 0x0

    .line 1781
    .local v45, todisplay_artist_text2:Ljava/lang/String;
    const/16 v48, 0x0

    .line 1782
    .local v48, todisplay_icon:I
    const/16 v27, 0x0

    .line 1783
    .local v27, found_grouporder:I
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v23

    .line 1785
    .local v23, count:I
    new-instance v24, Landroid/database/MatrixCursor;

    sget-object v3, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->COLUMNS:[Ljava/lang/String;

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1786
    .local v24, cursor:Landroid/database/MatrixCursor;
    const/4 v3, 0x0

    aget-object v3, v7, v3

    const-string v4, "%"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 1787
    .local v54, where_sp:Ljava/lang/String;
    const-string v3, " "

    const-string v4, ""

    move-object/from16 v0, v54

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 1788
    .local v56, where_trim_replace:Ljava/lang/String;
    invoke-virtual/range {v56 .. v56}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v55

    .line 1789
    .local v55, where_trim:Ljava/lang/String;
    const/16 v17, 0x3

    .line 1790
    .local v17, MAX_RESULT_LIMIT:I
    const/16 v20, 0x0

    .line 1791
    .local v20, artist_search_count:I
    const/16 v18, 0x0

    .line 1792
    .local v18, album_search_count:I
    const/16 v52, 0x0

    .line 1793
    .local v52, track_search_count:I
    const/16 v28, 0x0

    .line 1794
    .local v28, genre_search_count:I
    const/16 v36, 0x0

    .line 1796
    .local v36, playlist_search_count:I
    if-lez v23, :cond_16

    .line 1798
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1801
    :cond_0
    const/16 v33, 0x0

    .line 1803
    .local v33, isFound:Z
    const/4 v3, 0x0

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1804
    .local v19, artistStr:Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v57

    .line 1805
    .local v57, zeroColName:Ljava/lang/String;
    const-string v3, "text1"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    .line 1806
    .local v40, text1body:Ljava/lang/String;
    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v41

    .line 1807
    .local v41, text1body_lowercase:Ljava/lang/String;
    const-string v3, " "

    const-string v4, ""

    move-object/from16 v0, v41

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v39

    .line 1809
    .local v39, text1_trim:Ljava/lang/String;
    const-string v3, "grouporder"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 1810
    .local v29, grouporder:I
    const-string v3, "suggest_intent_data"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 1811
    .local v38, suggestdata_body:Ljava/lang/String;
    const-string v3, "text2"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v44

    .line 1812
    .local v44, text2body:Ljava/lang/String;
    const-string v3, "data1"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 1814
    .local v26, data1body:Ljava/lang/String;
    move-object/from16 v0, v39

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1816
    const/16 v33, 0x1

    .line 1817
    move-object/from16 v46, v19

    .line 1818
    move-object/from16 v50, v40

    .line 1819
    move-object/from16 v49, v38

    .line 1820
    move-object/from16 v51, v44

    .line 1821
    move-object/from16 v47, v26

    .line 1822
    move/from16 v27, v29

    .line 1825
    :cond_1
    if-eqz v19, :cond_2

    const/4 v3, 0x1

    move/from16 v0, v33

    move v1, v3

    if-ne v0, v1, :cond_2

    .line 1827
    const/4 v3, 0x1

    move/from16 v0, v27

    move v1, v3

    if-ne v0, v1, :cond_6

    move/from16 v0, v20

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    .line 1829
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_5

    .line 1830
    const-string v3, " albums"

    move-object/from16 v0, v47

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 1834
    :goto_1
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v46, v3, v4

    const/4 v4, 0x1

    aput-object v50, v3, v4

    const/4 v4, 0x2

    aput-object v45, v3, v4

    const/4 v4, 0x3

    aput-object v49, v3, v4

    const/4 v4, 0x4

    const v5, 0x7f02000a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1841
    add-int/lit8 v20, v20, 0x1

    .line 1958
    :cond_2
    :goto_2
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1960
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Search "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in Music Store"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, ""

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SearchMusicStoreKeyword="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const v5, 0x7f020003

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2004
    .end local v19           #artistStr:Ljava/lang/String;
    .end local v26           #data1body:Ljava/lang/String;
    .end local v29           #grouporder:I
    .end local v33           #isFound:Z
    .end local v38           #suggestdata_body:Ljava/lang/String;
    .end local v39           #text1_trim:Ljava/lang/String;
    .end local v40           #text1body:Ljava/lang/String;
    .end local v41           #text1body_lowercase:Ljava/lang/String;
    .end local v44           #text2body:Ljava/lang/String;
    .end local v57           #zeroColName:Ljava/lang/String;
    :goto_3
    if-eqz v21, :cond_3

    .line 2005
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object/from16 v3, v24

    .line 2009
    .end local v17           #MAX_RESULT_LIMIT:I
    .end local v18           #album_search_count:I
    .end local v20           #artist_search_count:I
    .end local v23           #count:I
    .end local v24           #cursor:Landroid/database/MatrixCursor;
    .end local v27           #found_grouporder:I
    .end local v28           #genre_search_count:I
    .end local v32           #isArtist:Z
    .end local v36           #playlist_search_count:I
    .end local v45           #todisplay_artist_text2:Ljava/lang/String;
    .end local v46           #todisplay_artiststr:Ljava/lang/String;
    .end local v47           #todisplay_data1:Ljava/lang/String;
    .end local v48           #todisplay_icon:I
    .end local v49           #todisplay_suggestdata_body:Ljava/lang/String;
    .end local v50           #todisplay_text:Ljava/lang/String;
    .end local v51           #todisplay_text2:Ljava/lang/String;
    .end local v52           #track_search_count:I
    .end local v54           #where_sp:Ljava/lang/String;
    .end local v55           #where_trim:Ljava/lang/String;
    .end local v56           #where_trim_replace:Ljava/lang/String;
    :goto_4
    return-object v3

    .line 1765
    .end local v21           #c:Landroid/database/Cursor;
    :cond_4
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p4 .. p4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "%"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v5

    aput-object v6, v7, v4

    aput-object v6, v7, v3

    goto/16 :goto_0

    .line 1832
    .restart local v17       #MAX_RESULT_LIMIT:I
    .restart local v18       #album_search_count:I
    .restart local v19       #artistStr:Ljava/lang/String;
    .restart local v20       #artist_search_count:I
    .restart local v21       #c:Landroid/database/Cursor;
    .restart local v23       #count:I
    .restart local v24       #cursor:Landroid/database/MatrixCursor;
    .restart local v26       #data1body:Ljava/lang/String;
    .restart local v27       #found_grouporder:I
    .restart local v28       #genre_search_count:I
    .restart local v29       #grouporder:I
    .restart local v32       #isArtist:Z
    .restart local v33       #isFound:Z
    .restart local v36       #playlist_search_count:I
    .restart local v38       #suggestdata_body:Ljava/lang/String;
    .restart local v39       #text1_trim:Ljava/lang/String;
    .restart local v40       #text1body:Ljava/lang/String;
    .restart local v41       #text1body_lowercase:Ljava/lang/String;
    .restart local v44       #text2body:Ljava/lang/String;
    .restart local v45       #todisplay_artist_text2:Ljava/lang/String;
    .restart local v46       #todisplay_artiststr:Ljava/lang/String;
    .restart local v47       #todisplay_data1:Ljava/lang/String;
    .restart local v48       #todisplay_icon:I
    .restart local v49       #todisplay_suggestdata_body:Ljava/lang/String;
    .restart local v50       #todisplay_text:Ljava/lang/String;
    .restart local v51       #todisplay_text2:Ljava/lang/String;
    .restart local v52       #track_search_count:I
    .restart local v54       #where_sp:Ljava/lang/String;
    .restart local v55       #where_trim:Ljava/lang/String;
    .restart local v56       #where_trim_replace:Ljava/lang/String;
    .restart local v57       #zeroColName:Ljava/lang/String;
    :cond_5
    const-string v3, " album"

    move-object/from16 v0, v47

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    goto/16 :goto_1

    .line 1843
    :cond_6
    const/4 v3, 0x2

    move/from16 v0, v27

    move v1, v3

    if-ne v0, v1, :cond_a

    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_a

    .line 1845
    const/16 v30, 0x0

    .line 1846
    .local v30, id:Ljava/lang/Long;
    const/4 v3, 0x3

    new-array v10, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v10, v3

    const/4 v3, 0x1

    const-string v4, "album"

    aput-object v4, v10, v3

    const/4 v3, 0x2

    const-string v4, "numsongs"

    aput-object v4, v10, v3

    .line 1849
    .local v10, cols:[Ljava/lang/String;
    sget-object v9, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1851
    .local v9, uri1:Landroid/net/Uri;
    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    .line 1852
    .local v53, where:Ljava/lang/StringBuilder;
    const-string v3, "_id"

    move-object/from16 v0, v53

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1853
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 1855
    .local v22, c1:Landroid/database/Cursor;
    if-eqz v22, :cond_7

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_7

    .line 1856
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1857
    const/4 v3, 0x2

    move-object/from16 v0, v22

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    .line 1859
    .local v37, songCount:I
    const/4 v3, 0x1

    move/from16 v0, v37

    move v1, v3

    if-le v0, v1, :cond_9

    .line 1860
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, " songs"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 1864
    .end local v37           #songCount:I
    :cond_7
    :goto_5
    if-eqz v22, :cond_8

    .line 1865
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 1867
    :cond_8
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v46, v3, v4

    const/4 v4, 0x1

    aput-object v50, v3, v4

    const/4 v4, 0x2

    aput-object v51, v3, v4

    const/4 v4, 0x3

    aput-object v49, v3, v4

    const/4 v4, 0x4

    const v5, 0x7f02000d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1874
    add-int/lit8 v18, v18, 0x1

    .line 1875
    goto/16 :goto_2

    .line 1862
    .restart local v37       #songCount:I
    :cond_9
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, " song"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    goto :goto_5

    .line 1876
    .end local v9           #uri1:Landroid/net/Uri;
    .end local v10           #cols:[Ljava/lang/String;
    .end local v22           #c1:Landroid/database/Cursor;
    .end local v30           #id:Ljava/lang/Long;
    .end local v37           #songCount:I
    .end local v53           #where:Ljava/lang/StringBuilder;
    :cond_a
    const/4 v3, 0x3

    move/from16 v0, v27

    move v1, v3

    if-ne v0, v1, :cond_b

    move/from16 v0, v52

    move/from16 v1, v17

    if-ge v0, v1, :cond_b

    .line 1878
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v46, v3, v4

    const/4 v4, 0x1

    aput-object v50, v3, v4

    const/4 v4, 0x2

    aput-object v51, v3, v4

    const/4 v4, 0x3

    aput-object v49, v3, v4

    const/4 v4, 0x4

    const v5, 0x7f02000d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1885
    add-int/lit8 v52, v52, 0x1

    goto/16 :goto_2

    .line 1887
    :cond_b
    const/4 v3, 0x4

    move/from16 v0, v27

    move v1, v3

    if-ne v0, v1, :cond_11

    move/from16 v0, v28

    move/from16 v1, v17

    if-ge v0, v1, :cond_11

    .line 1889
    const/16 v30, 0x0

    .line 1891
    .restart local v30       #id:Ljava/lang/Long;
    sget-object v3, Lcom/motorola/android/provider/MediaStoreExtensions$Audio$Media;->CONTENT_EXTERNAL_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "distinct"

    const-string v5, "true"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    .line 1893
    .restart local v9       #uri1:Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/4 v3, 0x1

    new-array v13, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "artist_id"

    aput-object v4, v13, v3

    const-string v14, "_id in (Select audio_id from audio_genres_map where genre_id=?)"

    const/4 v3, 0x1

    new-array v15, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v46, v15, v3

    const/16 v16, 0x0

    move-object v12, v9

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 1897
    .restart local v22       #c1:Landroid/database/Cursor;
    const/16 v42, 0x0

    .line 1899
    .local v42, text2_Count:I
    if-eqz v22, :cond_c

    .line 1900
    :try_start_0
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v42

    .line 1902
    :cond_c
    if-eqz v22, :cond_d

    .line 1903
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 1906
    :cond_d
    invoke-static/range {v42 .. v42}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v43

    .line 1907
    .local v43, text2_CountStr:Ljava/lang/String;
    const/4 v3, 0x1

    move/from16 v0, v42

    move v1, v3

    if-ne v0, v1, :cond_10

    .line 1908
    const-string v3, " Artist"

    move-object/from16 v0, v43

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 1912
    :cond_e
    :goto_6
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v46, v3, v4

    const/4 v4, 0x1

    aput-object v50, v3, v4

    const/4 v4, 0x2

    aput-object v51, v3, v4

    const/4 v4, 0x3

    aput-object v49, v3, v4

    const/4 v4, 0x4

    const v5, 0x7f02000b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1919
    add-int/lit8 v28, v28, 0x1

    .line 1920
    goto/16 :goto_2

    .line 1902
    .end local v43           #text2_CountStr:Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v22, :cond_f

    .line 1903
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    :cond_f
    throw v3

    .line 1909
    .restart local v43       #text2_CountStr:Ljava/lang/String;
    :cond_10
    const/4 v3, 0x1

    move/from16 v0, v42

    move v1, v3

    if-le v0, v1, :cond_e

    .line 1910
    const-string v3, " Artists"

    move-object/from16 v0, v43

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    goto :goto_6

    .line 1921
    .end local v9           #uri1:Landroid/net/Uri;
    .end local v22           #c1:Landroid/database/Cursor;
    .end local v30           #id:Ljava/lang/Long;
    .end local v42           #text2_Count:I
    .end local v43           #text2_CountStr:Ljava/lang/String;
    :cond_11
    const/4 v3, 0x5

    move/from16 v0, v27

    move v1, v3

    if-ne v0, v1, :cond_2

    move/from16 v0, v36

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    .line 1923
    const/16 v35, 0x0

    .line 1925
    .local v35, num_songs_playlist:I
    const/4 v3, 0x1

    new-array v13, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v13, v3

    .line 1929
    .local v13, PlaylistMemberCols:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v3, "external"

    invoke-static/range {v46 .. v46}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 1934
    .local v25, cursor1:Landroid/database/Cursor;
    if-eqz v25, :cond_12

    .line 1935
    :try_start_1
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v35

    .line 1936
    const/4 v3, 0x1

    move/from16 v0, v35

    move v1, v3

    if-le v0, v1, :cond_14

    .line 1937
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, " songs"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v51

    .line 1942
    :cond_12
    :goto_7
    if-eqz v25, :cond_13

    .line 1943
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 1947
    :cond_13
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v46, v3, v4

    const/4 v4, 0x1

    aput-object v50, v3, v4

    const/4 v4, 0x2

    aput-object v51, v3, v4

    const/4 v4, 0x3

    aput-object v49, v3, v4

    const/4 v4, 0x4

    const v5, 0x7f02000e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1954
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_2

    .line 1939
    :cond_14
    :try_start_2
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, " song"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v51

    goto :goto_7

    .line 1942
    :catchall_1
    move-exception v3

    if-eqz v25, :cond_15

    .line 1943
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    :cond_15
    throw v3

    .line 1970
    .end local v13           #PlaylistMemberCols:[Ljava/lang/String;
    .end local v19           #artistStr:Ljava/lang/String;
    .end local v25           #cursor1:Landroid/database/Cursor;
    .end local v26           #data1body:Ljava/lang/String;
    .end local v29           #grouporder:I
    .end local v33           #isFound:Z
    .end local v35           #num_songs_playlist:I
    .end local v38           #suggestdata_body:Ljava/lang/String;
    .end local v39           #text1_trim:Ljava/lang/String;
    .end local v40           #text1body:Ljava/lang/String;
    .end local v41           #text1body_lowercase:Ljava/lang/String;
    .end local v44           #text2body:Ljava/lang/String;
    .end local v57           #zeroColName:Ljava/lang/String;
    :cond_16
    const-string v31, "Music Store"

    .line 1978
    .local v31, idStr:Ljava/lang/String;
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Search "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in Music Store"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, ""

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SearchMusicStoreKeyword="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const v5, 0x7f020003

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1985
    const-string v31, "Podcasts"

    .line 1986
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Search "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in Podcasts"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, ""

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SearchPodcasts="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const v5, 0x7f02000f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1993
    const-string v31, "Internet Radio"

    .line 1994
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Search "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in Internet Radio"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, ""

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SearchInternetRadio="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const v5, 0x7f02000c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .end local v17           #MAX_RESULT_LIMIT:I
    .end local v18           #album_search_count:I
    .end local v20           #artist_search_count:I
    .end local v23           #count:I
    .end local v24           #cursor:Landroid/database/MatrixCursor;
    .end local v27           #found_grouporder:I
    .end local v28           #genre_search_count:I
    .end local v31           #idStr:Ljava/lang/String;
    .end local v32           #isArtist:Z
    .end local v36           #playlist_search_count:I
    .end local v45           #todisplay_artist_text2:Ljava/lang/String;
    .end local v46           #todisplay_artiststr:Ljava/lang/String;
    .end local v47           #todisplay_data1:Ljava/lang/String;
    .end local v48           #todisplay_icon:I
    .end local v49           #todisplay_suggestdata_body:Ljava/lang/String;
    .end local v50           #todisplay_text:Ljava/lang/String;
    .end local v51           #todisplay_text2:Ljava/lang/String;
    .end local v52           #track_search_count:I
    .end local v54           #where_sp:Ljava/lang/String;
    .end local v55           #where_trim:Ljava/lang/String;
    .end local v56           #where_trim_replace:Ljava/lang/String;
    :cond_17
    move-object/from16 v3, v21

    .line 2009
    goto/16 :goto_4
.end method

.method private removeAndCreateValuesFromMap(Landroid/content/ContentValues;Ljava/util/HashMap;)Landroid/content/ContentValues;
    .locals 7
    .parameter "initialValues"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .prologue
    .line 2402
    .local p2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 2403
    .local v4, substituteEntries:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2404
    .local v3, newValues:Landroid/content/ContentValues;
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0
    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2405
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2406
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 2407
    .local v5, value:Ljava/lang/Object;
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2408
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2409
    if-eqz v5, :cond_1

    .line 2410
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2412
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v3, p0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_0

    .line 2416
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #key:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/Object;
    :cond_2
    return-object v3
.end method

.method public static declared-synchronized singleton()Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;
    .locals 2

    .prologue
    .line 49
    const-class v0, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->sProvider:Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;

    invoke-direct {v1}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;-><init>()V

    sput-object v1, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->sProvider:Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;

    .line 52
    :cond_0
    sget-object v1, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->sProvider:Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 49
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private substituteAttributes(Ljava/util/HashMap;Landroid/content/ContentValues;)V
    .locals 8
    .parameter
    .parameter "initialValues"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/ContentValues;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "DEBUG"

    .line 2381
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 2382
    .local v3, substituteEntries:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0
    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2383
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2384
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 2385
    .local v4, value:Ljava/lang/Object;
    const-string v5, "DEBUG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Testing key-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2387
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2388
    if-eqz v4, :cond_1

    .line 2389
    const-string v5, "DEBUG"

    const-string v5, "Value is not null"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, p0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2392
    :cond_1
    const-string v5, "DEBUG"

    const-string v5, "Value is  null"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2393
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_0

    .line 2398
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #value:Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method private upgradeExtensionSchema(Landroid/database/sqlite/SQLiteDatabase;ZII)V
    .locals 2
    .parameter "db"
    .parameter "internal"
    .parameter "version"
    .parameter "media_store_extensions_database_version2"

    .prologue
    const/4 v1, 0x3

    .line 1348
    if-nez p2, :cond_4

    .line 1349
    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    .line 1350
    #calls: Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Views;->createAttributesWithVisualMediaView(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p1}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Views;->access$000(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1351
    #calls: Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Views;->createVisualMediaView(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p1}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Views;->access$100(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1352
    #calls: Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Views;->createMediaInAlbumView(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p1}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Views;->access$200(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1354
    :cond_0
    if-ge p3, v1, :cond_1

    .line 1355
    #calls: Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Views;->createAudioAlbumView(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p1}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Views;->access$300(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1357
    :cond_1
    const/4 v0, 0x5

    if-ge p3, v0, :cond_2

    .line 1358
    #calls: Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Views;->createArtists(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p1}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Views;->access$400(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1369
    :cond_2
    :goto_0
    const/4 v0, 0x4

    if-ge p3, v0, :cond_3

    .line 1370
    const-string v0, "DROP TRIGGER IF EXISTS motorola_library_change_add1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1371
    const-string v0, "DROP TRIGGER IF EXISTS motorola_library_change_remove1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1372
    const-string v0, "DROP TRIGGER IF EXISTS library_change_remove2"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1373
    #calls: Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Tables;->createLibraryChangesTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p1}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Tables;->access$500(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1374
    if-nez p2, :cond_3

    .line 1375
    #calls: Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Tables;->createCleanupTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p1}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Tables;->access$600(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1378
    :cond_3
    return-void

    .line 1362
    :cond_4
    if-ge p3, v1, :cond_2

    .line 1363
    const-string v0, "DROP VIEW IF EXISTS motorola_view_attributes_visual_media;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1364
    const-string v0, "DROP VIEW IF EXISTS motorola_view_visual_media;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1365
    const-string v0, "DROP VIEW IF EXISTS motorola_view_media_in_album;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public delete(Lcom/android/providers/media/MediaProvider;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 26
    .parameter "mp"
    .parameter "context"
    .parameter "db"
    .parameter "uri"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    .line 2017
    sget-object v23, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, v23

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v14

    .line 2018
    .local v14, match:I
    const/4 v15, 0x0

    .line 2019
    .local v15, numDelete:I
    const/16 v22, 0x0

    .line 2020
    .local v22, where:Ljava/lang/String;
    sparse-switch v14, :sswitch_data_0

    .line 2174
    new-instance v23, Ljava/lang/UnsupportedOperationException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Unknown URI: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 2022
    :sswitch_0
    const-string v23, "blur_playhistory"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 2178
    :goto_0
    const-string v23, "DEBUG"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Deleting ...."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p4 .. p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " Deleted : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    return v15

    .line 2025
    :sswitch_1
    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v16

    .line 2026
    .local v16, playHistoryId:J
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "_id="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2027
    if-eqz p5, :cond_0

    .line 2028
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " AND "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2030
    :cond_0
    const-string v23, "blur_playhistory"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 2031
    goto :goto_0

    .line 2033
    .end local v16           #playHistoryId:J
    :sswitch_2
    const-string v23, "DEBUG"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Deleting Suggestions"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p4 .. p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " Selection : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    const-string v23, "motorola_suggestions"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 2035
    goto/16 :goto_0

    .line 2037
    :sswitch_3
    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v20

    .line 2038
    .local v20, suggestionId:J
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "_id="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2039
    if-eqz p5, :cond_1

    .line 2040
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " AND "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2042
    :cond_1
    const-string v23, "motorola_suggestions"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 2043
    goto/16 :goto_0

    .line 2045
    .end local v20           #suggestionId:J
    :sswitch_4
    const-string v23, "motorola_mediaAttributes"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 2046
    goto/16 :goto_0

    .line 2048
    :sswitch_5
    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    .line 2049
    .local v10, attributeId:J
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "_id="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide v1, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2050
    if-eqz p5, :cond_2

    .line 2051
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " AND "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2053
    :cond_2
    const-string v23, "motorola_mediaAttributes"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 2054
    goto/16 :goto_0

    .line 2056
    .end local v10           #attributeId:J
    :sswitch_6
    const-string v23, "motorola_media_albums"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 2057
    goto/16 :goto_0

    .line 2059
    :sswitch_7
    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 2060
    .local v4, albumId:J
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "_id="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2061
    if-eqz p5, :cond_3

    .line 2062
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " AND "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2064
    :cond_3
    const-string v23, "motorola_media_albums"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 2065
    goto/16 :goto_0

    .line 2067
    .end local v4           #albumId:J
    :sswitch_8
    const-string v23, "motorola_library_changes"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 2068
    goto/16 :goto_0

    .line 2070
    :sswitch_9
    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v12

    .line 2071
    .local v12, library_changeId:J
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "_id="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide v1, v12

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2072
    if-eqz p5, :cond_4

    .line 2073
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " AND "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2075
    :cond_4
    const-string v23, "motorola_library_changes"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 2076
    goto/16 :goto_0

    .line 2078
    .end local v12           #library_changeId:J
    :sswitch_a
    const-string v23, "blur_recommendation"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 2079
    goto/16 :goto_0

    .line 2081
    :sswitch_b
    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v18

    .line 2082
    .local v18, recom_id:J
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "_id="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2083
    if-eqz p5, :cond_5

    .line 2084
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " AND "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2086
    :cond_5
    const-string v23, "blur_recommendation"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 2087
    goto/16 :goto_0

    .line 2089
    .end local v18           #recom_id:J
    :sswitch_c
    const-string v23, "motorola_artist_detailed_events"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 2090
    goto/16 :goto_0

    .line 2092
    :sswitch_d
    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 2093
    .local v6, artist_detailed_event_id:J
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "_id="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide v1, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2094
    if-eqz p5, :cond_6

    .line 2095
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " AND "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2097
    :cond_6
    const-string v23, "motorola_artist_detailed_events"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 2098
    goto/16 :goto_0

    .line 2100
    .end local v6           #artist_detailed_event_id:J
    :sswitch_e
    const-string v23, "blur_news"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 2101
    goto/16 :goto_0

    .line 2103
    :sswitch_f
    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 2104
    .local v8, artist_news_id:J
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "_id="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide v1, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2105
    if-eqz p5, :cond_7

    .line 2106
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " AND "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2108
    :cond_7
    const-string v23, "blur_news"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 2109
    goto/16 :goto_0

    .line 2112
    .end local v8           #artist_news_id:J
    :sswitch_10
    const-string v23, "thumbnails"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 2113
    goto/16 :goto_0

    .line 2116
    :sswitch_11
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "_id = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    if-nez p5, :cond_8

    const-string v24, ""

    :goto_1
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2118
    const-string v23, "thumbnails"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 2119
    goto/16 :goto_0

    .line 2116
    :cond_8
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " AND "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto :goto_1

    .line 2123
    :sswitch_12
    const-string v23, "speed_data"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 2124
    goto/16 :goto_0

    .line 2127
    :sswitch_13
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "_id = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    if-nez p5, :cond_9

    const-string v24, ""

    :goto_2
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2129
    const-string v23, "speed_data"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 2130
    goto/16 :goto_0

    .line 2127
    :cond_9
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " AND "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto :goto_2

    .line 2133
    :sswitch_14
    const-string v23, "albums"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 2134
    goto/16 :goto_0

    .line 2137
    :sswitch_15
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "_id = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    if-nez p5, :cond_a

    const-string v24, ""

    :goto_3
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2139
    const-string v23, "albums"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 2140
    goto/16 :goto_0

    .line 2137
    :cond_a
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " AND "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto :goto_3

    .line 2143
    :sswitch_16
    const-string v23, "keywords"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 2144
    goto/16 :goto_0

    .line 2147
    :sswitch_17
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "_id = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    if-nez p5, :cond_b

    const-string v24, ""

    :goto_4
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2149
    const-string v23, "keywords"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 2150
    goto/16 :goto_0

    .line 2147
    :cond_b
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " AND "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto :goto_4

    .line 2154
    :sswitch_18
    const-string v23, "buckets"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 2155
    goto/16 :goto_0

    .line 2158
    :sswitch_19
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "_id = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    if-nez p5, :cond_c

    const-string v24, ""

    :goto_5
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2160
    const-string v23, "buckets"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 2161
    goto/16 :goto_0

    .line 2158
    :cond_c
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " AND "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto :goto_5

    .line 2163
    :sswitch_1a
    const-string v23, "association"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 2164
    goto/16 :goto_0

    .line 2167
    :sswitch_1b
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "_id = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    if-nez p5, :cond_d

    const-string v24, ""

    :goto_6
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2169
    const-string v23, "association"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 2170
    goto/16 :goto_0

    .line 2167
    :cond_d
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " AND "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto :goto_6

    .line 2020
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_10
        0x6 -> :sswitch_11
        0x7 -> :sswitch_12
        0x8 -> :sswitch_13
        0x66 -> :sswitch_14
        0x67 -> :sswitch_15
        0x2bc -> :sswitch_4
        0x2bd -> :sswitch_5
        0x320 -> :sswitch_6
        0x322 -> :sswitch_7
        0x3e8 -> :sswitch_e
        0x3e9 -> :sswitch_f
        0x4b0 -> :sswitch_c
        0x4b1 -> :sswitch_d
        0x708 -> :sswitch_a
        0x709 -> :sswitch_b
        0x76c -> :sswitch_2
        0x76d -> :sswitch_3
        0x7d0 -> :sswitch_8
        0x7d1 -> :sswitch_9
        0x834 -> :sswitch_0
        0x835 -> :sswitch_1
        0x898 -> :sswitch_16
        0x899 -> :sswitch_17
        0x89a -> :sswitch_1a
        0x89b -> :sswitch_1b
        0x8a4 -> :sswitch_18
        0x8a5 -> :sswitch_19
    .end sparse-switch
.end method

.method public insert(Lcom/android/providers/media/MediaProvider;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 21
    .parameter "mp"
    .parameter "context"
    .parameter "db"
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    .line 2186
    const-wide/16 v13, -0x1

    .line 2187
    .local v13, rowId:J
    const/4 v11, 0x0

    .line 2188
    .local v11, newUri:Landroid/net/Uri;
    sget-object v18, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 2189
    .local v9, match:I
    if-nez p5, :cond_0

    .line 2190
    new-instance p5, Landroid/content/ContentValues;

    .end local p5
    invoke-direct/range {p5 .. p5}, Landroid/content/ContentValues;-><init>()V

    .line 2193
    .restart local p5
    :cond_0
    sparse-switch v9, :sswitch_data_0

    .line 2341
    new-instance v18, Ljava/lang/UnsupportedOperationException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unknown URI: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 2195
    :sswitch_0
    invoke-virtual/range {p4 .. p4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 2196
    .local v10, mpUri:Landroid/net/Uri;
    move-object/from16 v0, p1

    move-object v1, v10

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/media/MediaProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v18

    .line 2349
    .end local v10           #mpUri:Landroid/net/Uri;
    :goto_0
    return-object v18

    .line 2200
    .restart local p0
    :sswitch_1
    invoke-virtual/range {p4 .. p4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 2201
    .restart local v10       #mpUri:Landroid/net/Uri;
    move-object/from16 v0, p1

    move-object v1, v10

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/media/MediaProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v18

    goto :goto_0

    .line 2204
    .end local v10           #mpUri:Landroid/net/Uri;
    .restart local p0
    :sswitch_2
    invoke-virtual/range {p4 .. p4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 2205
    .restart local v10       #mpUri:Landroid/net/Uri;
    move-object/from16 v0, p1

    move-object v1, v10

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/media/MediaProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v18

    goto :goto_0

    .line 2208
    .end local v10           #mpUri:Landroid/net/Uri;
    .restart local p0
    :sswitch_3
    const-string v18, "motorola_mediaAttributes"

    const-string v19, "media_type_uri"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v13

    .line 2345
    .end local p0
    :cond_1
    :goto_1
    :sswitch_4
    const-wide/16 v18, 0x0

    cmp-long v18, v13, v18

    if-lez v18, :cond_2

    .line 2346
    move-object/from16 v0, p4

    move-wide v1, v13

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    :cond_2
    move-object/from16 v18, v11

    .line 2349
    goto :goto_0

    .line 2211
    .restart local p0
    :sswitch_5
    const-string v18, "blur_playhistory"

    const-string v19, "_id"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v13

    .line 2212
    goto :goto_1

    .line 2214
    :sswitch_6
    const-string v18, "motorola_media_albums"

    const-string v19, "_id"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v13

    .line 2215
    goto :goto_1

    .line 2218
    :sswitch_7
    const-string v18, "blur_news"

    const-string v19, "_id"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v13

    .line 2219
    goto :goto_1

    .line 2221
    :sswitch_8
    const-string v18, "blur_recommendation"

    const-string v19, "_id"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v13

    .line 2222
    goto :goto_1

    .line 2225
    :sswitch_9
    const-string v18, "motorola_artist_detailed_events"

    const-string v19, "_id"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v13

    .line 2226
    goto :goto_1

    .line 2228
    :sswitch_a
    const-string v18, "blur_album"

    const-string v19, "_id"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v13

    .line 2229
    goto :goto_1

    .line 2231
    :sswitch_b
    const-string v18, "_data"

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 2232
    const-string v18, "_data"

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 2233
    .local v5, dataValue:Ljava/lang/Object;
    const-string v18, "_data"

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2234
    const-string v18, "_data"

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .end local p0
    :goto_2
    move-object/from16 v0, p5

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2236
    .end local v5           #dataValue:Ljava/lang/Object;
    :cond_3
    const-string v18, "blur_artist"

    const-string v19, "_id"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v13

    .line 2237
    goto/16 :goto_1

    .line 2234
    .restart local v5       #dataValue:Ljava/lang/Object;
    .restart local p0
    :cond_4
    const/16 p0, 0x0

    check-cast p0, Ljava/lang/String;

    .end local p0
    move-object/from16 v19, p0

    goto :goto_2

    .line 2241
    .end local v5           #dataValue:Ljava/lang/Object;
    .restart local p0
    :sswitch_c
    const-string v18, "motorola_suggestions"

    const-string v19, "_id"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v13

    .line 2242
    goto/16 :goto_1

    .line 2244
    :sswitch_d
    invoke-virtual/range {p3 .. p3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2246
    :try_start_0
    const-string v18, "thumbnails"

    const-string v19, "_id"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v13

    .line 2247
    invoke-virtual/range {p3 .. p3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2249
    invoke-virtual/range {p3 .. p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_1

    :catchall_0
    move-exception v18

    invoke-virtual/range {p3 .. p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v18

    .line 2254
    :sswitch_e
    new-instance v17, Landroid/content/ContentValues;

    move-object/from16 v0, v17

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 2255
    .local v17, values:Landroid/content/ContentValues;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 2257
    .local v12, otherValues:Landroid/content/ContentValues;
    const-string v18, "_data"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    .line 2258
    .local v16, so:Ljava/lang/Object;
    if-eqz v16, :cond_5

    .line 2260
    const-string v18, "_data"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    move-object v0, v12

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2262
    :cond_5
    const-string v18, "_data"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2264
    const-string v18, "format"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    .line 2265
    if-eqz v16, :cond_6

    .line 2267
    const-string v18, "format"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    move-object v0, v12

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2269
    :cond_6
    const-string v18, "format"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2271
    const-string v18, "width"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 2272
    .local v6, io:Ljava/lang/Integer;
    if-eqz v6, :cond_7

    .line 2274
    const-string v18, "width"

    move-object v0, v12

    move-object/from16 v1, v18

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2276
    :cond_7
    const-string v18, "width"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2279
    const-string v18, "height"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 2280
    if-eqz v6, :cond_8

    .line 2282
    const-string v18, "height"

    move-object v0, v12

    move-object/from16 v1, v18

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2284
    :cond_8
    const-string v18, "height"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2286
    const-string v18, "album"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    .line 2287
    if-nez v16, :cond_9

    const-string v18, ""

    move-object/from16 v15, v18

    .line 2288
    .local v15, s:Ljava/lang/String;
    :goto_3
    const-string v18, "album_key"

    invoke-static {v15}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2290
    const-string v18, "albums"

    const-string v19, "duration"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v13

    .line 2291
    const-wide/16 v18, 0x0

    cmp-long v18, v13, v18

    if-lez v18, :cond_1

    .line 2293
    const-string v18, "album_id"

    move-wide v0, v13

    long-to-int v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    move-object v0, v12

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2294
    const-string v18, "album_art"

    const-string v19, "duration"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object v3, v12

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_1

    .line 2287
    .end local v15           #s:Ljava/lang/String;
    :cond_9
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v15, v18

    goto :goto_3

    .line 2300
    .end local v6           #io:Ljava/lang/Integer;
    .end local v12           #otherValues:Landroid/content/ContentValues;
    .end local v16           #so:Ljava/lang/Object;
    .end local v17           #values:Landroid/content/ContentValues;
    :sswitch_f
    const-string v18, "_data"

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2301
    .restart local v15       #s:Ljava/lang/String;
    const-string v18, "_data"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move-object v2, v15

    move-object/from16 v3, p4

    move-object/from16 v4, p1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/motorola/android/media/MediaUtil;->getTagIdForName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentProvider;)J

    move-result-wide v13

    .line 2303
    goto/16 :goto_1

    .line 2307
    .end local v15           #s:Ljava/lang/String;
    :sswitch_10
    new-instance v17, Landroid/content/ContentValues;

    move-object/from16 v0, v17

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 2312
    .restart local v17       #values:Landroid/content/ContentValues;
    const-string v18, "_data"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    .line 2313
    .restart local v16       #so:Ljava/lang/Object;
    if-eqz v16, :cond_a

    .line 2315
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2316
    .restart local v15       #s:Ljava/lang/String;
    const-string v18, "_data"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2318
    const-string v18, "_data"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move-object v2, v15

    move-object/from16 v3, p4

    move-object/from16 v4, p1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/motorola/android/media/MediaUtil;->getTagIdForName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentProvider;)J

    move-result-wide v7

    .line 2320
    .local v7, keywordsRowId:J
    const-string v18, "keyword_id"

    move-wide v0, v7

    long-to-int v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2324
    .end local v7           #keywordsRowId:J
    .end local v15           #s:Ljava/lang/String;
    :cond_a
    const-string v18, "association"

    const-string v19, "dummy"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v13

    .line 2325
    goto/16 :goto_1

    .line 2329
    .end local v16           #so:Ljava/lang/Object;
    .end local v17           #values:Landroid/content/ContentValues;
    :sswitch_11
    const/16 v18, 0x0

    const-string v19, ".spm"

    const-string v20, "DCIM/.speeddata"

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, p5

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/media/MediaProvider;->ensureFileExt(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v17

    .line 2330
    .restart local v17       #values:Landroid/content/ContentValues;
    const-string v18, "speed_data"

    const-string v19, "name"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v13

    .line 2331
    goto/16 :goto_1

    .line 2335
    .end local v17           #values:Landroid/content/ContentValues;
    :sswitch_12
    const-string v18, "motorola_library_changes"

    const-string v19, "_id"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v13

    .line 2336
    goto/16 :goto_1

    .line 2193
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_d
        0x7 -> :sswitch_11
        0x64 -> :sswitch_1
        0x66 -> :sswitch_e
        0xc8 -> :sswitch_2
        0x2bc -> :sswitch_3
        0x320 -> :sswitch_6
        0x384 -> :sswitch_b
        0x3e8 -> :sswitch_7
        0x4b0 -> :sswitch_9
        0x5dc -> :sswitch_a
        0x5de -> :sswitch_4
        0x708 -> :sswitch_8
        0x76c -> :sswitch_c
        0x7d0 -> :sswitch_12
        0x834 -> :sswitch_5
        0x898 -> :sswitch_f
        0x89a -> :sswitch_10
    .end sparse-switch
.end method

.method public isExtensionUri(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 1395
    if-eqz p1, :cond_0

    .line 1396
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 1397
    .local v0, authority:Ljava/lang/String;
    const-string v1, "com.motorola.media.extensions"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1399
    .end local v0           #authority:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 2
    .parameter "db"
    .parameter "internal"

    .prologue
    const-string v1, "DEBUG"

    .line 1385
    const-string v0, "DEBUG"

    const-string v0, "Creating Tables ..."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    invoke-static {p1, p2}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Tables;->createTables(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1387
    const-string v0, "DEBUG"

    const-string v0, "Creating Triggers ..."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    invoke-static {p1, p2}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Tables;->createTriggers(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1389
    const-string v0, "DEBUG"

    const-string v0, "Creating Views ..."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    invoke-static {p1, p2}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Views;->createViews(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1392
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 1381
    #calls: Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Tables;->create_motorola_artist_detailed_event_cleanup_trigger(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p1}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider$Tables;->access$700(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1383
    return-void
.end method

.method public openDbForExtensions(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 7
    .parameter "db"
    .parameter "internal"

    .prologue
    const/4 v5, 0x0

    const-string v6, "select version from motorola_mediaExtensions_meta_info"

    .line 1308
    const/4 v2, 0x0

    .line 1310
    .local v2, version:I
    :try_start_0
    const-string v3, "select version from motorola_mediaExtensions_meta_info"

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    long-to-int v2, v3

    .line 1327
    :goto_0
    sget v3, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->MEDIA_STORE_EXTENSIONS_DATABASE_VERSION:I

    if-eq v2, v3, :cond_0

    .line 1329
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1332
    :try_start_1
    sget v3, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->MEDIA_STORE_EXTENSIONS_DATABASE_VERSION:I

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->upgradeExtensionSchema(Landroid/database/sqlite/SQLiteDatabase;ZII)V

    .line 1335
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1336
    .local v0, cv:Landroid/content/ContentValues;
    const-string v3, "version"

    sget v4, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->MEDIA_STORE_EXTENSIONS_DATABASE_VERSION:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1337
    const-string v3, "motorola_mediaExtensions_meta_info"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1338
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1340
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1343
    .end local v0           #cv:Landroid/content/ContentValues;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1344
    return-void

    .line 1312
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1314
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1316
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->onCreate(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1317
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1319
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1322
    const-string v3, "select version from motorola_mediaExtensions_meta_info"

    invoke-static {p1, v6, v5}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v3

    long-to-int v2, v3

    goto :goto_0

    .line 1319
    :catchall_0
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 1340
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_1
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method public query(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 39
    .parameter "context"
    .parameter "db"
    .parameter "uri"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 1406
    sget-object v4, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object v0, v4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v13

    .line 1407
    .local v13, table:I
    const/4 v7, 0x0

    .line 1408
    .local v7, groupBy:Ljava/lang/String;
    const-string v4, "group_by"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1409
    const-string v4, "group_by"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1414
    :cond_0
    :goto_0
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1416
    .local v3, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v4, "distinct"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1417
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1419
    :cond_1
    const-string v4, "limit"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1421
    .local v10, limit:Ljava/lang/String;
    const-string v4, "MediaStoreExtension"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "query()::uri ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " table="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    sparse-switch v13, :sswitch_data_0

    .line 1728
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1410
    .end local v3           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v10           #limit:Ljava/lang/String;
    :cond_2
    const-string v4, "groupby"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1411
    const-string v4, "groupby"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 1425
    .restart local v3       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v10       #limit:Ljava/lang/String;
    :sswitch_0
    const-string v4, "blur_playhistory"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1734
    .end local p0
    :cond_3
    :goto_1
    const-string v11, "DEBUG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v8, 0x0

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    const/16 v20, 0x0

    move-object v14, v3

    move-object/from16 v15, p2

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    move-object/from16 v18, p6

    move-object/from16 v19, v7

    move-object/from16 v21, p7

    move-object/from16 v22, v10

    invoke-virtual/range {v14 .. v22}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 1738
    .local v27, c:Landroid/database/Cursor;
    if-eqz v27, :cond_4

    .line 1739
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v27

    move-object v1, v4

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_4
    move-object/from16 v4, v27

    .line 1742
    .end local v7           #groupBy:Ljava/lang/String;
    .end local v10           #limit:Ljava/lang/String;
    .end local v27           #c:Landroid/database/Cursor;
    :cond_5
    :goto_2
    return-object v4

    .line 1428
    .restart local v7       #groupBy:Ljava/lang/String;
    .restart local v10       #limit:Ljava/lang/String;
    .restart local p0
    :sswitch_1
    invoke-static/range {p3 .. p3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v32

    .line 1429
    .local v32, playHistoryId:J
    const-string v4, "blur_playhistory"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1430
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1433
    .end local v32           #playHistoryId:J
    :sswitch_2
    const-string v4, "images"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_1

    .line 1440
    :sswitch_3
    const-string v4, "images"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1441
    invoke-static/range {p3 .. p3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v29

    .line 1444
    .local v29, imageId:J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1448
    .end local v29           #imageId:J
    :sswitch_4
    const-string v4, "motorola_audio"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1452
    :sswitch_5
    invoke-static/range {p3 .. p3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v23

    .line 1453
    .local v23, audioId:J
    const-string v4, "motorola_audio"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1454
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1458
    .end local v23           #audioId:J
    :sswitch_6
    const-string v4, "video"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1462
    :sswitch_7
    invoke-static/range {p3 .. p3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v37

    .line 1463
    .local v37, videoId:J
    const-string v4, "video"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1464
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, v37

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1468
    .end local v37           #videoId:J
    :sswitch_8
    const-string v4, "motorola_view_visial_media_albums_folders"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1471
    :sswitch_9
    const-string v4, "motorola_view_visual_media"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1472
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "location="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1478
    .restart local p0
    :sswitch_a
    const-string v4, "motorola_mediaAttributes"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1482
    :sswitch_b
    const-string v4, "motorola_mediaAttributes"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1483
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1487
    .restart local p0
    :sswitch_c
    const-string v4, "motorola_view_attributes_visual_media"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1491
    :sswitch_d
    const-string v4, "motorola_view_attributes_visual_media"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1492
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1496
    .restart local p0
    :sswitch_e
    const-string v4, "motorola_media_albums"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1500
    :sswitch_f
    const-string v4, "motorola_media_albums"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1501
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1504
    .restart local p0
    :sswitch_10
    const-string v4, "motorola_view_media_in_album"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1508
    :sswitch_11
    const-string v4, "motorola_view_media_in_album"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1509
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1513
    .restart local p0
    :sswitch_12
    const-string v4, "motorola_view_visual_folders"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1517
    :sswitch_13
    const-string v4, "motorola_view_visual_media"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1520
    :sswitch_14
    const-string v4, "motorola_artist_detailed_events"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1523
    :sswitch_15
    const-string v4, "motorola_view_artists"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1524
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " _id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1527
    .restart local p0
    :sswitch_16
    const-string v4, "motorola_view_artists"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1530
    :sswitch_17
    const-string v4, "motorola_view_audio_album"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1533
    :sswitch_18
    const-string v4, "motorola_view_audio_album"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1534
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " _id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1537
    .restart local p0
    :sswitch_19
    const-string v4, "audio_playlists"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1540
    :sswitch_1a
    const-string v4, "audio_playlists"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1541
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " _id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1544
    .restart local p0
    :sswitch_1b
    const-string v4, "blur_recommendation"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1547
    :sswitch_1c
    const-string v4, "motorola_suggestions"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1548
    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    .line 1549
    .local v26, audio_suggestionType:Ljava/lang/String;
    const-string v4, "suggestionType"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1550
    .local v25, audio_overideSuggestionType:Ljava/lang/String;
    if-eqz v25, :cond_6

    .line 1551
    move-object/from16 v26, v25

    .line 1553
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1557
    .end local v25           #audio_overideSuggestionType:Ljava/lang/String;
    .end local v26           #audio_suggestionType:Ljava/lang/String;
    :sswitch_1d
    const-string v4, "motorola_suggestions"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1558
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1561
    .restart local p0
    :sswitch_1e
    const-string v4, "motorola_view_audio_library_changes"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1564
    :sswitch_1f
    const-string v4, "thumbnails"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1567
    :sswitch_20
    const-string v4, "thumbnails"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1568
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "image_thumbnail_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1572
    .restart local p0
    :sswitch_21
    const-string v4, "motorola_view_tags"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1575
    :sswitch_22
    const-string v4, "motorola_view_visual_tag_search"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1576
    if-eqz p6, :cond_7

    const/4 v4, 0x0

    aget-object v4, p6, v4

    if-eqz v4, :cond_7

    .line 1577
    const/4 v4, 0x0

    aget-object v34, p6, v4

    .line 1578
    .local v34, searchClause:Ljava/lang/String;
    const/4 v4, 0x1

    move v0, v4

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 p6, v0

    .line 1579
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x25

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p6, v4

    .line 1580
    const-string v4, "suggest_text_1 like ?"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1581
    const/16 p5, 0x0

    .line 1583
    goto/16 :goto_1

    .end local v34           #searchClause:Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_8

    .line 1584
    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v34

    .line 1585
    .restart local v34       #searchClause:Ljava/lang/String;
    const/4 v4, 0x1

    move v0, v4

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 p6, v0

    .line 1586
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x25

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p6, v4

    .line 1587
    const-string v4, "suggest_text_1 like ?"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1588
    const/16 p5, 0x0

    .line 1589
    goto/16 :goto_1

    .line 1590
    .end local v34           #searchClause:Ljava/lang/String;
    :cond_8
    const-string v4, "0"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1591
    const/16 p5, 0x0

    .line 1592
    const/16 p6, 0x0

    .line 1594
    goto/16 :goto_1

    .line 1596
    :sswitch_23
    if-eqz p6, :cond_e

    const/4 v4, 0x0

    aget-object v4, p6, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1597
    const-string v4, "motorola_suggestions"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1598
    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v36

    .line 1599
    .local v36, suggestionType:Ljava/lang/String;
    const-string v4, "suggestionType"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 1600
    .local v31, overideSuggestionType:Ljava/lang/String;
    if-eqz v31, :cond_9

    .line 1601
    move-object/from16 v36, v31

    .line 1603
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1604
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "date DESC"

    .end local v7           #groupBy:Ljava/lang/String;
    .end local v10           #limit:Ljava/lang/String;
    const/4 v11, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v28

    .line 1607
    .local v28, cSuggest:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v28

    move-object v1, v4

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1608
    new-instance v35, Landroid/database/MatrixCursor;

    sget-object v4, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->SUGGEST_COLUMNS:[Ljava/lang/String;

    move-object/from16 v0, v35

    move-object v1, v4

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1609
    .local v35, suggestCursor:Landroid/database/MatrixCursor;
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_c

    .line 1610
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1612
    :cond_a
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v28

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, v28

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "musicsuggest="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    move-object/from16 v0, v28

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const v6, 0x7f020006

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, v35

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1617
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_a

    .line 1622
    if-eqz v28, :cond_b

    .line 1623
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    :cond_b
    move-object/from16 v4, v35

    goto/16 :goto_2

    .line 1620
    :cond_c
    const/4 v4, 0x0

    .line 1622
    if-eqz v28, :cond_5

    .line 1623
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 1622
    .end local v35           #suggestCursor:Landroid/database/MatrixCursor;
    :catchall_0
    move-exception v4

    if-eqz v28, :cond_d

    .line 1623
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v4

    .line 1627
    .end local v28           #cSuggest:Landroid/database/Cursor;
    .end local v31           #overideSuggestionType:Ljava/lang/String;
    .end local v36           #suggestionType:Ljava/lang/String;
    .restart local v7       #groupBy:Ljava/lang/String;
    .restart local v10       #limit:Ljava/lang/String;
    :cond_e
    const/4 v14, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object v7, v3

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    invoke-direct/range {v4 .. v14}, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->doAudioSearch(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;

    .end local v7           #groupBy:Ljava/lang/String;
    .end local v10           #limit:Ljava/lang/String;
    move-result-object v4

    goto/16 :goto_2

    .line 1632
    .restart local v7       #groupBy:Ljava/lang/String;
    .restart local v10       #limit:Ljava/lang/String;
    :sswitch_24
    const-string v4, "speed_data"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1636
    :sswitch_25
    const-string v4, "speed_data"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1637
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1641
    .restart local p0
    :sswitch_26
    const-string v4, "albums"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1645
    :sswitch_27
    const-string v4, "albums"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1646
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1651
    .restart local p0
    :sswitch_28
    const-string v4, "MediaStoreExtensionsProvider"

    const-string v5, "query(). call qb.setTables for buckets "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    const-string v4, "buckets"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1656
    :sswitch_29
    const-string v4, "MediaStoreExtensionsProvider"

    const-string v5, "query(). call qb.setTables for buckets ID"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    const-string v4, "buckets"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1658
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1661
    .restart local p0
    :sswitch_2a
    const-string v4, "keywords"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1665
    :sswitch_2b
    const-string v4, "keywords"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1666
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1670
    .restart local p0
    :sswitch_2c
    const-string v4, "association"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1671
    const-string v4, "distinct"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1672
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    goto/16 :goto_1

    .line 1676
    :sswitch_2d
    const-string v4, "association"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1677
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1681
    .restart local p0
    :sswitch_2e
    const-string v4, "taginfo_video"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1682
    const-string v4, "distinct"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1683
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    goto/16 :goto_1

    .line 1686
    :sswitch_2f
    const-string v4, "taginfo_video"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1687
    const-string v4, "distinct"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 1688
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1689
    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1692
    .restart local p0
    :sswitch_30
    const-string v4, "taginfo_image"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1693
    const-string v4, "distinct"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1694
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    goto/16 :goto_1

    .line 1697
    :sswitch_31
    const-string v4, "taginfo_image"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1698
    const-string v4, "distinct"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 1699
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1700
    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1703
    .restart local p0
    :sswitch_32
    const-string v4, "visual_info"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1704
    const-string v4, "distinct"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1705
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    goto/16 :goto_1

    .line 1708
    :sswitch_33
    const-string v4, "visual_info"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1709
    const-string v4, "distinct"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 1710
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1711
    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1714
    .restart local p0
    :sswitch_34
    const-string v4, "taginfo_visual"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1715
    const-string v4, "distinct"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1716
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    goto/16 :goto_1

    .line 1719
    :sswitch_35
    const-string v4, "taginfo_visual"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1720
    const-string v4, "distinct"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 1721
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1722
    :cond_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1423
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_1f
        0x4 -> :sswitch_20
        0x7 -> :sswitch_24
        0x8 -> :sswitch_25
        0x64 -> :sswitch_4
        0x65 -> :sswitch_5
        0x66 -> :sswitch_26
        0x67 -> :sswitch_27
        0xc8 -> :sswitch_6
        0xc9 -> :sswitch_7
        0x258 -> :sswitch_8
        0x2bc -> :sswitch_a
        0x2bd -> :sswitch_b
        0x2be -> :sswitch_c
        0x2bf -> :sswitch_d
        0x320 -> :sswitch_e
        0x321 -> :sswitch_10
        0x322 -> :sswitch_f
        0x323 -> :sswitch_11
        0x384 -> :sswitch_16
        0x385 -> :sswitch_15
        0x44c -> :sswitch_13
        0x44d -> :sswitch_9
        0x4b0 -> :sswitch_14
        0x514 -> :sswitch_12
        0x5dc -> :sswitch_17
        0x5dd -> :sswitch_18
        0x5de -> :sswitch_19
        0x5df -> :sswitch_1a
        0x640 -> :sswitch_21
        0x6a4 -> :sswitch_22
        0x6a5 -> :sswitch_23
        0x708 -> :sswitch_1b
        0x76c -> :sswitch_1c
        0x76d -> :sswitch_1d
        0x7d0 -> :sswitch_1e
        0x834 -> :sswitch_0
        0x835 -> :sswitch_1
        0x898 -> :sswitch_2a
        0x899 -> :sswitch_2b
        0x89a -> :sswitch_2c
        0x89b -> :sswitch_2d
        0x89c -> :sswitch_2e
        0x89d -> :sswitch_2f
        0x89e -> :sswitch_30
        0x89f -> :sswitch_31
        0x8a0 -> :sswitch_32
        0x8a1 -> :sswitch_33
        0x8a2 -> :sswitch_34
        0x8a3 -> :sswitch_35
        0x8a4 -> :sswitch_28
        0x8a5 -> :sswitch_29
    .end sparse-switch
.end method

.method public update(Lcom/android/providers/media/MediaProvider;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 33
    .parameter "mp"
    .parameter "context"
    .parameter "db"
    .parameter "uri"
    .parameter "initialValues"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    .line 2423
    const/4 v14, -0x1

    .line 2424
    .local v14, count:I
    const/16 v28, 0x0

    .line 2427
    .local v28, where:Ljava/lang/String;
    sget-object v30, Lcom/motorola/providers/mediaextensions/MediaStoreExtensionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, v30

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v18

    .line 2428
    .local v18, match:I
    sparse-switch v18, :sswitch_data_0

    .line 2591
    .end local p0
    :goto_0
    if-gez v14, :cond_10

    .line 2592
    new-instance v30, Ljava/lang/UnsupportedOperationException;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Unknown URI: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v30

    .line 2430
    .restart local p0
    :sswitch_0
    const-string v30, "blur_playhistory"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 2431
    goto :goto_0

    .line 2434
    :sswitch_1
    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v20

    .line 2435
    .local v20, playHistoryId:J
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "_id = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    if-nez p6, :cond_0

    const-string v31, ""

    :goto_1
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 2437
    .local v25, selectionWithId:Ljava/lang/String;
    const-string v30, "blur_playhistory"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, p5

    move-object/from16 v3, v25

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 2438
    goto :goto_0

    .line 2435
    .end local v25           #selectionWithId:Ljava/lang/String;
    :cond_0
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, " AND "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    goto :goto_1

    .line 2441
    .end local v20           #playHistoryId:J
    :sswitch_2
    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v16

    .line 2442
    .local v16, imageId:J
    invoke-virtual/range {p4 .. p4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v30

    const/16 v31, 0x0

    invoke-interface/range {v30 .. v31}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v30

    move-object/from16 v0, v30

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 2443
    .local v19, mpUri:Landroid/net/Uri;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/media/MediaProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v30

    .line 2596
    .end local v16           #imageId:J
    .end local v19           #mpUri:Landroid/net/Uri;
    :goto_2
    return v30

    .line 2446
    .restart local p0
    :sswitch_3
    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v26

    .line 2447
    .local v26, videoId:J
    invoke-virtual/range {p4 .. p4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v30

    const/16 v31, 0x0

    invoke-interface/range {v30 .. v31}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v30

    move-object/from16 v0, v30

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 2449
    .restart local v19       #mpUri:Landroid/net/Uri;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/media/MediaProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v30

    goto :goto_2

    .line 2453
    .end local v19           #mpUri:Landroid/net/Uri;
    .end local v26           #videoId:J
    .restart local p0
    :sswitch_4
    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v12

    .line 2454
    .local v12, audioId:J
    invoke-virtual/range {p4 .. p4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v30

    const/16 v31, 0x0

    invoke-interface/range {v30 .. v31}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v30

    move-object/from16 v0, v30

    move-wide v1, v12

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 2460
    .restart local v19       #mpUri:Landroid/net/Uri;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/media/MediaProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v30

    goto :goto_2

    .line 2463
    .end local v12           #audioId:J
    .end local v19           #mpUri:Landroid/net/Uri;
    .restart local p0
    :sswitch_5
    const-string v30, "motorola_mediaAttributes"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 2464
    goto/16 :goto_0

    .line 2466
    :sswitch_6
    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    .line 2467
    .local v10, attributeId:J
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "_id = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-wide v1, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    if-nez p6, :cond_1

    const-string v31, ""

    :goto_3
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 2469
    .restart local v25       #selectionWithId:Ljava/lang/String;
    const-string v30, "motorola_mediaAttributes"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, p5

    move-object/from16 v3, v25

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 2470
    goto/16 :goto_0

    .line 2467
    .end local v25           #selectionWithId:Ljava/lang/String;
    :cond_1
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, " AND "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    goto :goto_3

    .line 2472
    .end local v10           #attributeId:J
    :sswitch_7
    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    .line 2473
    .local v5, albumId:J
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "_id = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    if-nez p6, :cond_2

    const-string v31, ""

    :goto_4
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2475
    .local v7, albumSelectionWithId:Ljava/lang/String;
    const-string v30, "motorola_media_albums"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, p5

    move-object v3, v7

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 2476
    goto/16 :goto_0

    .line 2473
    .end local v7           #albumSelectionWithId:Ljava/lang/String;
    :cond_2
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, " AND "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    goto :goto_4

    .line 2478
    .end local v5           #albumId:J
    :sswitch_8
    const-string v30, "motorola_media_albums"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 2479
    goto/16 :goto_0

    .line 2482
    :sswitch_9
    const-string v30, "_data"

    move-object/from16 v0, p5

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_3

    .line 2483
    const-string v30, "_data"

    move-object/from16 v0, p5

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 2484
    .local v15, dataValue:Ljava/lang/Object;
    const-string v30, "_data"

    move-object/from16 v0, p5

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2485
    const-string v30, "_data"

    if-eqz v15, :cond_5

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v31

    .end local p0
    :goto_5
    move-object/from16 v0, p5

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2487
    .end local v15           #dataValue:Ljava/lang/Object;
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v30, "artist_id"

    move-object v0, v9

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2488
    .local v9, artistsWhere:Ljava/lang/StringBuilder;
    const-string v30, "="

    move-object v0, v9

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {p4 .. p4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v31

    const/16 v32, 0x2

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2489
    if-eqz p6, :cond_4

    .line 2490
    const-string v30, " AND "

    move-object v0, v9

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2492
    :cond_4
    const-string v30, "blur_artist"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, p5

    move-object/from16 v3, v31

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 2493
    goto/16 :goto_0

    .line 2485
    .end local v9           #artistsWhere:Ljava/lang/StringBuilder;
    .restart local v15       #dataValue:Ljava/lang/Object;
    .restart local p0
    :cond_5
    const/16 p0, 0x0

    check-cast p0, Ljava/lang/String;

    .end local p0
    move-object/from16 v31, p0

    goto :goto_5

    .line 2496
    .end local v15           #dataValue:Ljava/lang/Object;
    .restart local p0
    :sswitch_a
    const-string v30, "_data"

    move-object/from16 v0, p5

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_6

    .line 2497
    const-string v30, "_data"

    move-object/from16 v0, p5

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 2498
    .restart local v15       #dataValue:Ljava/lang/Object;
    const-string v30, "_data"

    move-object/from16 v0, p5

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2499
    const-string v30, "_data"

    if-eqz v15, :cond_7

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v31

    .end local p0
    :goto_6
    move-object/from16 v0, p5

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2501
    .end local v15           #dataValue:Ljava/lang/Object;
    :cond_6
    const-string v30, "blur_artist"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 2502
    goto/16 :goto_0

    .line 2499
    .restart local v15       #dataValue:Ljava/lang/Object;
    .restart local p0
    :cond_7
    const/16 p0, 0x0

    check-cast p0, Ljava/lang/String;

    .end local p0
    move-object/from16 v31, p0

    goto :goto_6

    .line 2504
    .end local v15           #dataValue:Ljava/lang/Object;
    .restart local p0
    :sswitch_b
    const-string v30, "blur_news"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 2505
    goto/16 :goto_0

    .line 2507
    :sswitch_c
    const-string v30, "motorola_artist_detailed_events"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 2508
    goto/16 :goto_0

    .line 2510
    :sswitch_d
    const-string v30, "blur_album"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 2511
    goto/16 :goto_0

    .line 2514
    :sswitch_e
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, " _id = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v31

    invoke-virtual/range {v30 .. v32}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    if-nez p6, :cond_8

    const-string v31, " "

    :goto_7
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2516
    .local v8, albumWithId:Ljava/lang/String;
    const-string v30, "blur_album"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, p5

    move-object v3, v8

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 2517
    goto/16 :goto_0

    .line 2514
    .end local v8           #albumWithId:Ljava/lang/String;
    :cond_8
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, " AND "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    goto :goto_7

    .line 2519
    :sswitch_f
    const-string v30, "blur_recommendation"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 2520
    goto/16 :goto_0

    .line 2522
    :sswitch_10
    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v22

    .line 2523
    .local v22, recomId:J
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "_id = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    if-nez p6, :cond_9

    const-string v31, ""

    :goto_8
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 2525
    .local v24, recomSelectionWithId:Ljava/lang/String;
    const-string v30, "motorola_media_albums"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, p5

    move-object/from16 v3, v24

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 2527
    goto/16 :goto_0

    .line 2523
    .end local v24           #recomSelectionWithId:Ljava/lang/String;
    :cond_9
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, " AND "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    goto :goto_8

    .line 2529
    .end local v22           #recomId:J
    :sswitch_11
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "_id = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v31

    invoke-virtual/range {v30 .. v32}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    if-nez p6, :cond_a

    const-string v31, ""

    :goto_9
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 2531
    .local v29, withId:Ljava/lang/String;
    const-string v30, "motorola_suggestions"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, p5

    move-object/from16 v3, v29

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 2532
    goto/16 :goto_0

    .line 2529
    .end local v29           #withId:Ljava/lang/String;
    :cond_a
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, " AND "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    goto :goto_9

    .line 2534
    :sswitch_12
    const-string v30, "motorola_suggestions"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 2535
    goto/16 :goto_0

    .line 2538
    :sswitch_13
    const-string v30, "thumbnails"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 2539
    goto/16 :goto_0

    .line 2542
    :sswitch_14
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "_id = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v31

    invoke-virtual/range {v30 .. v32}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    if-nez p6, :cond_b

    const-string v31, ""

    :goto_a
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 2544
    const-string v30, "thumbnails"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, p5

    move-object/from16 v3, v28

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 2545
    goto/16 :goto_0

    .line 2542
    :cond_b
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, " AND "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    goto :goto_a

    .line 2549
    :sswitch_15
    const-string v30, "speed_data"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 2550
    goto/16 :goto_0

    .line 2553
    :sswitch_16
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "_id = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v31

    invoke-virtual/range {v30 .. v32}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    if-nez p6, :cond_c

    const-string v31, ""

    :goto_b
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 2555
    const-string v30, "speed_data"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, p5

    move-object/from16 v3, v28

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 2556
    goto/16 :goto_0

    .line 2553
    :cond_c
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, " AND "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    goto :goto_b

    .line 2559
    :sswitch_17
    const-string v30, "albums"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 2560
    goto/16 :goto_0

    .line 2563
    :sswitch_18
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "_id = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v31

    invoke-virtual/range {v30 .. v32}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    if-nez p6, :cond_d

    const-string v31, ""

    :goto_c
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 2565
    const-string v30, "albums"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, p5

    move-object/from16 v3, v28

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 2566
    goto/16 :goto_0

    .line 2563
    :cond_d
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, " AND "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    goto :goto_c

    .line 2569
    :sswitch_19
    const-string v30, "keywords"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 2570
    goto/16 :goto_0

    .line 2573
    :sswitch_1a
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "_id = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v31

    invoke-virtual/range {v30 .. v32}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    if-nez p6, :cond_e

    const-string v31, ""

    :goto_d
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 2575
    const-string v30, "keywords"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, p5

    move-object/from16 v3, v28

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 2576
    goto/16 :goto_0

    .line 2573
    :cond_e
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, " AND "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    goto :goto_d

    .line 2579
    :sswitch_1b
    const-string v30, "association"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 2580
    goto/16 :goto_0

    .line 2583
    :sswitch_1c
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "_id = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static/range {p4 .. p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v31

    invoke-virtual/range {v30 .. v32}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    if-nez p6, :cond_f

    const-string v31, ""

    :goto_e
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 2585
    const-string v30, "association"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, p5

    move-object/from16 v3, v28

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    goto/16 :goto_0

    .line 2583
    :cond_f
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, " AND "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    goto :goto_e

    .end local p0
    :cond_10
    move/from16 v30, v14

    .line 2596
    goto/16 :goto_2

    .line 2428
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x5 -> :sswitch_13
        0x6 -> :sswitch_14
        0x7 -> :sswitch_15
        0x8 -> :sswitch_16
        0x64 -> :sswitch_4
        0x65 -> :sswitch_4
        0x66 -> :sswitch_17
        0x67 -> :sswitch_18
        0xc9 -> :sswitch_3
        0x2bc -> :sswitch_5
        0x2bd -> :sswitch_6
        0x320 -> :sswitch_8
        0x322 -> :sswitch_7
        0x384 -> :sswitch_a
        0x385 -> :sswitch_9
        0x3e8 -> :sswitch_b
        0x4b0 -> :sswitch_c
        0x5dc -> :sswitch_d
        0x5dd -> :sswitch_e
        0x708 -> :sswitch_f
        0x709 -> :sswitch_10
        0x76c -> :sswitch_12
        0x76d -> :sswitch_11
        0x834 -> :sswitch_0
        0x835 -> :sswitch_1
        0x898 -> :sswitch_19
        0x899 -> :sswitch_1a
        0x89a -> :sswitch_1b
        0x89b -> :sswitch_1c
    .end sparse-switch
.end method
