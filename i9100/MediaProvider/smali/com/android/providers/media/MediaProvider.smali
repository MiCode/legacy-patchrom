.class public Lcom/android/providers/media/MediaProvider;
.super Landroid/content/ContentProvider;
.source "MediaProvider.java"

# interfaces
.implements Landroid/content/IContentProviderDBAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;,
        Lcom/android/providers/media/MediaProvider$availMicroThumbId;,
        Lcom/android/providers/media/MediaProvider$ThumbData;,
        Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;,
        Lcom/android/providers/media/MediaProvider$AppSnippet;,
        Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final ALBUMART_URI:Landroid/net/Uri;

.field private static final EXTERNAL_DATABASE_TABLES:[Ljava/lang/String;

.field static final EXTERNAL_SD_ROOT:Ljava/lang/String;

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field static final INTERNAL_SD_ROOT:Ljava/lang/String;

.field private static final MEDIA_URI:Landroid/net/Uri;

.field private static final MIME_TYPE_PROJECTION:[Ljava/lang/String;

.field private static final READY_FLAG_PROJECTION:[Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static final URI_MATCHER:Landroid/content/UriMatcher;

.field private static bIsBadRemoved:Z

.field private static bIsShuttingDown:Z

.field private static bIsWaitingUnmountIntent:Z

.field private static final mSearchImagesColsBasic:[Ljava/lang/String;

.field private static final mSearchVideoColsBasic:[Ljava/lang/String;

.field private static mStorageDirectory:Ljava/lang/String;

.field private static mTrustedPackages:[Ljava/lang/String;

.field private static mTrustedPackagesSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final openFileColumns:[Ljava/lang/String;

.field private static final sArtistAlbumsMap:Ljava/util/HashMap;
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

.field private static final sFolderArtMap:Ljava/util/HashMap;
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

.field static final sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;


# instance fields
.field private final MediaScannerNotificationID:I

.field private final SEARCH_COLUMN_BASIC_TEXT2:I

.field private dbMediaTableName:[Ljava/lang/String;

.field private ignoreSuspender:Z

.field inDBTransactionFromOutside:Z

.field private mAlbumArtBaseUri:Landroid/net/Uri;

.field private mBulkInsertSync:I

.field private mBulkInsertSyncLock:Ljava/lang/Object;

.field private mBulkInsertSyncPrev:I

.field protected mCollator:Ljava/text/Collator;

.field private mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;

.field private mDatabases:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/providers/media/MediaProvider$DatabaseHelper;",
            ">;"
        }
    .end annotation
.end field

.field mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaScannerVolume:Ljava/lang/String;

.field private mMediaThumbQueue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/android/providers/media/MediaThumbRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingThumbs:Ljava/util/HashSet;

.field private mSdSerial:Ljava/lang/String;

.field private mSearchColsBasic:[Ljava/lang/String;

.field private mSearchColsFancy:[Ljava/lang/String;

.field private mSearchColsLegacy:[Ljava/lang/String;

.field private mShutdownReceiver:Landroid/content/BroadcastReceiver;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mThumbHandler:Landroid/os/Handler;

.field private mThumbRequestStack:Ljava/util/Stack;

.field private mThumbWorkerSuspender:Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;

.field private mVolumeId:I

.field needNotifyChange:[Z

.field private sExternalAvailMicroThumbId:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/providers/media/MediaProvider$availMicroThumbId;",
            ">;"
        }
    .end annotation
.end field

.field private sExternalSdAvailMicroThumbId:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/providers/media/MediaProvider$availMicroThumbId;",
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

    const/4 v4, 0x0

    const-string v3, "media"

    .line 140
    const-string v0, "content://media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/MediaProvider;->MEDIA_URI:Landroid/net/Uri;

    .line 141
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/MediaProvider;->ALBUMART_URI:Landroid/net/Uri;

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/media/MediaProvider;->sFolderArtMap:Ljava/util/HashMap;

    .line 169
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.sec.android.app.dlna"

    aput-object v1, v0, v4

    const-string v1, "com.ust.game.ladder"

    aput-object v1, v0, v5

    const-string v1, "com.sec.android.Twitter"

    aput-object v1, v0, v6

    const-string v1, "com.nhn.android.search"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "com.sec.android.Paint"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "skt.contact"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "basketrun.guyjin2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.btb.minihompy"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.nhn.android.me2day"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.sec.android.OCR"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.sec.android.LangLearn"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.nhn.android.nmap"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.sec.android.MetroMap"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.sec.android.docviewer"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.ubivelox.mc.activity"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "net.daum.android.tvpot"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "net.daum.android.map"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "net.daum.android.shoppinghow"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.stri.sng"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.samsung.sng"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.android.ahnmobilesecurity"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "com.hnbsec.nmoney"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "com.kyobo.ebook.ebookcase"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Iconon.App.OnNews"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "com.ATsolution.TStock"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "com.skt.skaf.A0000VS001"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Uxpp.UC"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/media/MediaProvider;->mTrustedPackages:[Ljava/lang/String;

    .line 199
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/providers/media/MediaProvider;->mTrustedPackagesSet:Ljava/util/Set;

    .line 252
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "mime_type"

    aput-object v1, v0, v5

    const-string v1, "title as suggest_text_1"

    aput-object v1, v0, v6

    const-string v1, "date_modified as suggest_text_2"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\'content://media/external/images/media/\' || _id as suggest_intent_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "_id as suggest_intent_data_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/media/MediaProvider;->mSearchImagesColsBasic:[Ljava/lang/String;

    .line 264
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "mime_type"

    aput-object v1, v0, v5

    const-string v1, "mini_thumb_magic as suggest_icon_1"

    aput-object v1, v0, v6

    const-string v1, "title as suggest_text_1"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "mini_thumb_data as suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\'file://\' || _data as suggest_intent_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/media/MediaProvider;->mSearchVideoColsBasic:[Ljava/lang/String;

    .line 428
    sput-boolean v4, Lcom/android/providers/media/MediaProvider;->bIsWaitingUnmountIntent:Z

    .line 429
    sput-boolean v4, Lcom/android/providers/media/MediaProvider;->bIsBadRemoved:Z

    .line 430
    sput-boolean v4, Lcom/android/providers/media/MediaProvider;->bIsShuttingDown:Z

    .line 905
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/MediaProvider;->mStorageDirectory:Ljava/lang/String;

    .line 4592
    new-instance v0, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;-><init>(Lcom/android/providers/media/MediaProvider$1;)V

    sput-object v0, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    .line 5166
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/media/MediaProvider;->openFileColumns:[Ljava/lang/String;

    .line 6892
    const-string v0, "MediaProvider"

    sput-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    .line 6937
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/MediaProvider;->EXTERNAL_SD_ROOT:Ljava/lang/String;

    .line 6938
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/MediaProvider;->INTERNAL_SD_ROOT:Ljava/lang/String;

    .line 7021
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 7024
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/media/MediaProvider;->ID_PROJECTION:[Ljava/lang/String;

    .line 7028
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "mime_type"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/providers/media/MediaProvider;->MIME_TYPE_PROJECTION:[Ljava/lang/String;

    .line 7033
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v5

    const-string v1, "mini_thumb_magic"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/providers/media/MediaProvider;->READY_FLAG_PROJECTION:[Ljava/lang/String;

    .line 7039
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "images"

    aput-object v1, v0, v4

    const-string v1, "thumbnails"

    aput-object v1, v0, v5

    const-string v1, "audio_meta"

    aput-object v1, v0, v6

    const-string v1, "artists"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "albums"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "audio_genres"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "audio_genres_map"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "audio_playlists"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "audio_playlists_map"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "video"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/media/MediaProvider;->EXTERNAL_DATABASE_TABLES:[Ljava/lang/String;

    .line 7054
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/images/media"

    invoke-virtual {v0, v3, v1, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7055
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/images/media/#"

    invoke-virtual {v0, v3, v1, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7056
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/images/thumbnails"

    invoke-virtual {v0, v3, v1, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7057
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/images/thumbnails/#"

    const/4 v2, 0x4

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7059
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/media"

    const/16 v2, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7060
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/media/#"

    const/16 v2, 0x65

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7061
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/media/#/genres"

    const/16 v2, 0x66

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7062
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/media/#/genres/#"

    const/16 v2, 0x67

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7063
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/media/#/playlists"

    const/16 v2, 0x68

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7064
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/media/#/playlists/#"

    const/16 v2, 0x69

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7065
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/genres"

    const/16 v2, 0x6a

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7066
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/genres/#"

    const/16 v2, 0x6b

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7067
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/genres/#/members"

    const/16 v2, 0x6c

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7068
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/genres/#/members/#"

    const/16 v2, 0x6d

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7069
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/playlists"

    const/16 v2, 0x6e

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7070
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/playlists/#"

    const/16 v2, 0x6f

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7071
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/playlists/#/members"

    const/16 v2, 0x70

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7072
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/playlists/#/members/#"

    const/16 v2, 0x71

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7073
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/artists"

    const/16 v2, 0x72

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7074
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/artists/#"

    const/16 v2, 0x73

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7075
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/artists/#/albums"

    const/16 v2, 0x76

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7076
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/albums"

    const/16 v2, 0x74

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7077
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/albums/#"

    const/16 v2, 0x75

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7078
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/albumart"

    const/16 v2, 0x77

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7079
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/albumart/#"

    const/16 v2, 0x78

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7080
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/media/#/albumart"

    const/16 v2, 0x79

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7083
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/music_quicklist"

    const/16 v2, 0x82

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7084
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/music_years"

    const/16 v2, 0x83

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7085
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/music_composers"

    const/16 v2, 0x84

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7086
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/music_genres"

    const/16 v2, 0x85

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7087
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/music_artists_album_id"

    const/16 v2, 0x86

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7088
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/music_albums"

    const/16 v2, 0x87

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7089
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/music_folders"

    const/16 v2, 0x88

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7091
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/music_playlists"

    const/16 v2, 0x8c

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7092
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/music_playlists/#"

    const/16 v2, 0x8d

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7093
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/music_playlists/#/members"

    const/16 v2, 0x8e

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7094
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/music_playlists/members"

    const/16 v2, 0x8f

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7095
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/music_playlists/#/members_from_default"

    const/16 v2, 0x90

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7098
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/video/media"

    const/16 v2, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7099
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/video/media/#"

    const/16 v2, 0xc9

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7100
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/video/thumbnails"

    const/16 v2, 0xca

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7101
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/video/thumbnails/#"

    const/16 v2, 0xcb

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7106
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/videocallimages/media"

    const/16 v2, 0x320

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7107
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/videocallimages/media/#"

    const/16 v2, 0x321

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7112
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/media_scanner"

    const/16 v2, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7114
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/fs_id"

    const/16 v2, 0x258

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7116
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*"

    const/16 v2, 0x12d

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7117
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const/4 v1, 0x0

    const/16 v2, 0x12c

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7122
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/search_suggest_query"

    const/16 v2, 0x190

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7124
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/search_suggest_query/*"

    const/16 v2, 0x190

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7128
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/search/search_suggest_query"

    const/16 v2, 0x191

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7130
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/search/search_suggest_query/*"

    const/16 v2, 0x191

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7135
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/images/search/search_suggest_query"

    const/16 v2, 0x193

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7137
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/images/search/search_suggest_query/*"

    const/16 v2, 0x193

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7140
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/video/search/search_suggest_query"

    const/16 v2, 0x194

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7142
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/video/search/search_suggest_query/*"

    const/16 v2, 0x194

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7147
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/search/fancy"

    const/16 v2, 0x192

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7148
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/search/fancy/*"

    const/16 v2, 0x192

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7150
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/apppackage/media"

    const/16 v2, 0x2bc

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7151
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/apppackage/media/#"

    const/16 v2, 0x2bd

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    move v0, v4

    .line 7153
    :goto_0
    sget-object v1, Lcom/android/providers/media/MediaProvider;->mTrustedPackages:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 7154
    sget-object v1, Lcom/android/providers/media/MediaProvider;->mTrustedPackagesSet:Ljava/util/Set;

    sget-object v2, Lcom/android/providers/media/MediaProvider;->mTrustedPackages:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7157
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 137
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 154
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mPendingThumbs:Ljava/util/HashSet;

    .line 157
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mThumbRequestStack:Ljava/util/Stack;

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;

    .line 161
    new-instance v0, Ljava/util/PriorityQueue;

    const/16 v1, 0xa

    invoke-static {}, Lcom/android/providers/media/MediaThumbRequest;->getComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;

    .line 206
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "mime_type"

    aput-object v1, v0, v4

    const-string v1, "(CASE WHEN grouporder=1 THEN 2130837505 ELSE CASE WHEN grouporder=2 THEN 2130837504 ELSE 2130837506 END END) AS suggest_icon_1"

    aput-object v1, v0, v5

    const-string v1, "0 AS suggest_icon_2"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "text1 AS suggest_text_1"

    aput-object v2, v0, v1

    const-string v1, "text1 AS suggest_intent_query"

    aput-object v1, v0, v6

    const/4 v1, 0x6

    const-string v2, "CASE when grouporder=1 THEN data1 ELSE artist END AS data1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CASE when grouporder=1 THEN data2 ELSE CASE WHEN grouporder=2 THEN NULL ELSE album END END AS data2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "match as ar"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "grouporder"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "NULL AS itemorder"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mSearchColsLegacy:[Ljava/lang/String;

    .line 225
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "mime_type"

    aput-object v1, v0, v4

    const-string v1, "artist"

    aput-object v1, v0, v5

    const-string v1, "album"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "title"

    aput-object v2, v0, v1

    const-string v1, "data1"

    aput-object v1, v0, v6

    const/4 v1, 0x6

    const-string v2, "data2"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mSearchColsFancy:[Ljava/lang/String;

    .line 235
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "mime_type"

    aput-object v1, v0, v4

    const-string v1, "(CASE WHEN grouporder=1 THEN 2130837505 ELSE CASE WHEN grouporder=2 THEN 2130837504 ELSE 2130837506 END END) AS suggest_icon_1"

    aput-object v1, v0, v5

    const-string v1, "text1 AS suggest_text_1"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "text1 AS suggest_intent_query"

    aput-object v2, v0, v1

    const-string v1, "(CASE WHEN grouporder=1 THEN \'%1\' ELSE CASE WHEN grouporder=3 THEN artist || \' - \' || album ELSE CASE WHEN text2!=\'<unknown>\' THEN text2 ELSE NULL END END END) AS suggest_text_2"

    aput-object v1, v0, v6

    const/4 v1, 0x6

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mSearchColsBasic:[Ljava/lang/String;

    .line 280
    iput v6, p0, Lcom/android/providers/media/MediaProvider;->SEARCH_COLUMN_BASIC_TEXT2:I

    .line 282
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mAlbumArtBaseUri:Landroid/net/Uri;

    .line 286
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "images"

    aput-object v1, v0, v3

    const-string v1, "thumbnails"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->dbMediaTableName:[Ljava/lang/String;

    .line 293
    new-array v0, v5, [Z

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->needNotifyChange:[Z

    .line 303
    iput v3, p0, Lcom/android/providers/media/MediaProvider;->mBulkInsertSync:I

    .line 304
    iput v3, p0, Lcom/android/providers/media/MediaProvider;->mBulkInsertSyncPrev:I

    .line 305
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mBulkInsertSyncLock:Ljava/lang/Object;

    .line 433
    new-instance v0, Lcom/android/providers/media/MediaProvider$1;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MediaProvider$1;-><init>(Lcom/android/providers/media/MediaProvider;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 446
    new-instance v0, Lcom/android/providers/media/MediaProvider$2;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MediaProvider$2;-><init>(Lcom/android/providers/media/MediaProvider;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 656
    new-instance v0, Lcom/android/providers/media/MediaProvider$3;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MediaProvider$3;-><init>(Lcom/android/providers/media/MediaProvider;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    .line 718
    iput v4, p0, Lcom/android/providers/media/MediaProvider;->MediaScannerNotificationID:I

    .line 871
    new-instance v0, Lcom/android/providers/media/MediaProvider$4;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MediaProvider$4;-><init>(Lcom/android/providers/media/MediaProvider;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 2743
    iput-boolean v3, p0, Lcom/android/providers/media/MediaProvider;->ignoreSuspender:Z

    .line 6070
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 6415
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->sExternalSdAvailMicroThumbId:Ljava/util/LinkedList;

    .line 6418
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->sExternalAvailMicroThumbId:Ljava/util/LinkedList;

    .line 6917
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/providers/media/MediaProvider;->mVolumeId:I

    .line 7161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mThumbWorkerSuspender:Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;

    .line 7201
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 137
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->bIsShuttingDown:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/providers/media/MediaProvider;ZIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 137
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/media/MediaProvider;->showNotification(ZIII)V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 137
    sput-boolean p0, Lcom/android/providers/media/MediaProvider;->bIsShuttingDown:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/providers/media/MediaProvider;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/database/sqlite/SQLiteDatabase;ZII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 137
    invoke-static {p0, p1, p2, p3}, Lcom/android/providers/media/MediaProvider;->updateDatabase(Landroid/database/sqlite/SQLiteDatabase;ZII)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/providers/media/MediaProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/providers/media/MediaProvider;->ignoreSuspender:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mThumbWorkerSuspender:Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/providers/media/MediaProvider;)Ljava/util/PriorityQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/MediaThumbRequest;)Lcom/android/providers/media/MediaThumbRequest;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/providers/media/MediaProvider;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->removeMediaThumbRequests(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/providers/media/MediaProvider;)Ljava/util/Stack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mThumbRequestStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/MediaProvider$ThumbData;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->makeThumbInternal(Lcom/android/providers/media/MediaProvider$ThumbData;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/providers/media/MediaProvider;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Lcom/android/providers/media/MediaProvider;->stopMediaScanner(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/providers/media/MediaProvider;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mPendingThumbs:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/providers/media/MediaProvider;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mThumbHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/providers/media/MediaProvider;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mSdSerial:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/providers/media/MediaProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider;->mSdSerial:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/providers/media/MediaProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/providers/media/MediaProvider;->isUsbMassStorageEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/providers/media/MediaProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/providers/media/MediaProvider;->removeMediaDBData()V

    return-void
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 137
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->bIsBadRemoved:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 137
    sput-boolean p0, Lcom/android/providers/media/MediaProvider;->bIsBadRemoved:Z

    return p0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 137
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->bIsWaitingUnmountIntent:Z

    return v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 137
    sput-boolean p0, Lcom/android/providers/media/MediaProvider;->bIsWaitingUnmountIntent:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/providers/media/MediaProvider;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->detachVolume(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$900()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/android/providers/media/MediaProvider;->sFolderArtMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private attachVolume(Ljava/lang/String;)Landroid/net/Uri;
    .locals 12
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v11, "content://media/"

    const-string v8, "external"

    .line 6659
    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 6660
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Opening and closing databases not allowed."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6682
    :cond_0
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    monitor-enter v1

    .line 6686
    :try_start_0
    const-string v0, "usb_otg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6687
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    const-string v2, "external"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    .line 6692
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6694
    if-eqz v0, :cond_3

    .line 6701
    const-string v0, "external"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6702
    const-string v0, "external"

    invoke-virtual {p0, v8}, Lcom/android/providers/media/MediaProvider;->restoreExternalSdDatabase(Ljava/lang/String;)V

    .line 6704
    const-string v0, "external"

    invoke-virtual {p0, v8, v9}, Lcom/android/providers/media/MediaProvider;->buildAvailMicroThumbIdList(Ljava/lang/String;Z)V

    .line 6705
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mSdSerial:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 6706
    const-string v0, "external"

    invoke-virtual {p0, v8, v10}, Lcom/android/providers/media/MediaProvider;->buildAvailMicroThumbIdList(Ljava/lang/String;Z)V

    .line 6710
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://media/"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 6789
    :goto_1
    return-object v0

    .line 6691
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    goto :goto_0

    .line 6692
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 6713
    :cond_3
    iget-object v6, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    monitor-enter v6

    .line 6714
    :try_start_2
    const-string v0, "internal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6715
    new-instance v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "internal.db"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 6737
    :goto_2
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6739
    iget-boolean v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    if-nez v0, :cond_b

    .line 6741
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Android/data/com.android.providers.media/albumthumbs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 6744
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    move v1, v9

    .line 6745
    :goto_3
    if-eqz v0, :cond_7

    array-length v2, v0

    if-ge v1, v2, :cond_7

    .line 6746
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6745
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 6716
    :cond_4
    const-string v0, "external"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6717
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 6718
    invoke-static {v0}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v1

    .line 6719
    sget-object v2, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " volume ID: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6722
    const/4 v0, -0x1

    if-ne v1, v0, :cond_5

    .line 6723
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Volume is unmounted. volumeID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6724
    monitor-exit v6

    move-object v0, v4

    goto/16 :goto_1

    .line 6730
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "external-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".db"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6731
    new-instance v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 6732
    iput v1, p0, Lcom/android/providers/media/MediaProvider;->mVolumeId:I

    move-object v0, v2

    .line 6733
    goto/16 :goto_2

    .line 6734
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is no volume named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6766
    :catchall_1
    move-exception v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 6749
    :cond_7
    :try_start_3
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "album_art"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/media/MediaProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 6752
    :goto_4
    if-eqz v0, :cond_9

    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 6753
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    .line 6756
    :catchall_2
    move-exception v1

    if-eqz v0, :cond_8

    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v1

    :cond_9
    if-eqz v0, :cond_a

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 6759
    :cond_a
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 6760
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 6761
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6762
    sget-object v2, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleting obsolete album art "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6763
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_5

    .line 6766
    :cond_b
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 6776
    const-string v0, "external"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 6777
    const-string v0, "external"

    invoke-virtual {p0, v8}, Lcom/android/providers/media/MediaProvider;->restoreExternalSdDatabase(Ljava/lang/String;)V

    .line 6779
    const-string v0, "external"

    invoke-virtual {p0, v8, v9}, Lcom/android/providers/media/MediaProvider;->buildAvailMicroThumbIdList(Ljava/lang/String;Z)V

    .line 6780
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mSdSerial:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 6781
    const-string v0, "external"

    invoke-virtual {p0, v8, v10}, Lcom/android/providers/media/MediaProvider;->buildAvailMicroThumbIdList(Ljava/lang/String;Z)V

    .line 6788
    :cond_c
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attached volume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://media/"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private cancelNotification()V
    .locals 2

    .prologue
    .line 721
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 722
    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 723
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 724
    return-void
.end method

.method private static computeBucketValues(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/16 v3, 0x2f

    const/4 v4, 0x0

    .line 2588
    .line 2593
    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 2594
    if-lez v0, :cond_4

    .line 2596
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 2598
    const/4 v2, 0x1

    sub-int v2, v0, v2

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    .line 2599
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move v2, v4

    .line 2600
    :cond_0
    add-int/lit8 v3, v2, 0x1

    if-ge v3, v0, :cond_3

    .line 2602
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2605
    :goto_0
    if-nez v1, :cond_1

    const-string v1, "/"

    .line 2606
    :cond_1
    if-nez v0, :cond_2

    const-string v0, ""

    .line 2613
    :cond_2
    const-string v2, "bucket_id"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2614
    const-string v1, "bucket_display_name"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2615
    return-void

    :cond_3
    move-object v0, v5

    goto :goto_0

    :cond_4
    move-object v0, v5

    move-object v1, v5

    goto :goto_0
.end method

.method private computeChineseSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter

    .prologue
    const/4 v9, 0x0

    const-string v10, " "

    const-string v8, "#"

    .line 3836
    invoke-static {}, Lcom/android/internal/util/HanziToPinyin;->getInstance()Lcom/android/internal/util/HanziToPinyin;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/util/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3837
    const-string v0, ""

    .line 3838
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 3839
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3840
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v4, v9

    .line 3841
    :goto_0
    if-ge v4, v2, :cond_3

    .line 3842
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/HanziToPinyin$Token;

    .line 3843
    iget v5, v0, Lcom/android/internal/util/HanziToPinyin$Token;->type:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 3844
    iget-object v5, v0, Lcom/android/internal/util/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 3845
    iget-object v0, v0, Lcom/android/internal/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    const-string v6, " "

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3846
    array-length v6, v5

    array-length v7, v0

    if-ge v6, v7, :cond_0

    array-length v5, v5

    :goto_1
    move v6, v9

    .line 3847
    :goto_2
    if-ge v6, v5, :cond_2

    .line 3848
    aget-object v7, v0, v6

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3847
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 3846
    :cond_0
    array-length v5, v0

    goto :goto_1

    .line 3854
    :cond_1
    iget-object v0, v0, Lcom/android/internal/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    const-string v5, " "

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move v5, v9

    .line 3855
    :goto_3
    array-length v6, v0

    if-ge v5, v6, :cond_2

    .line 3856
    aget-object v6, v0, v5

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3857
    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3855
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 3841
    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 3862
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 3863
    const/4 v1, 0x1

    invoke-virtual {v3, v9, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 3864
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/media/MediaProvider;->mCollator:Ljava/text/Collator;

    .line 3865
    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3867
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->mCollator:Ljava/text/Collator;

    const-string v4, "#"

    invoke-virtual {v3, v1, v8}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_5

    .line 3868
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3892
    :cond_4
    :goto_4
    return-object v0

    .line 3869
    :cond_5
    const-string v1, "%7C"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    .line 3870
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 3871
    :cond_6
    const-string v1, "%5B"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    .line 3872
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 3873
    :cond_7
    const-string v1, "~"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_8

    .line 3874
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 3875
    :cond_8
    const-string v1, "_"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_9

    .line 3876
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 3877
    :cond_9
    const-string v1, "%C2%A2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_a

    .line 3878
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 3879
    :cond_a
    const-string v1, "%C2%A3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_b

    .line 3880
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 3881
    :cond_b
    const-string v1, "%C2%A5"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_c

    .line 3882
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 3883
    :cond_c
    const-string v1, "%C3%97"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_d

    .line 3884
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 3885
    :cond_d
    const-string v1, "%C3%B7"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_e

    .line 3886
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 3887
    :cond_e
    const-string v1, "%E2%82%AC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 3888
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4
.end method

.method private static computeDisplayName(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 3
    .parameter "data"
    .parameter "values"

    .prologue
    .line 2624
    if-nez p0, :cond_1

    const-string v2, ""

    move-object v1, v2

    .line 2625
    .local v1, s:Ljava/lang/String;
    :goto_0
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 2626
    .local v0, idx:I
    if-ltz v0, :cond_0

    .line 2627
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2629
    :cond_0
    const-string v2, "_display_name"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2630
    return-void

    .end local v0           #idx:I
    .end local v1           #s:Ljava/lang/String;
    :cond_1
    move-object v1, p0

    .line 2624
    goto :goto_0
.end method

.method private static computeTakenTime(Landroid/content/ContentValues;)V
    .locals 6
    .parameter "values"

    .prologue
    const-string v5, "datetaken"

    .line 2639
    const-string v1, "datetaken"

    invoke-virtual {p0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2642
    const-string v1, "date_modified"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 2643
    .local v0, lastModified:Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 2644
    const-string v1, "datetaken"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2647
    .end local v0           #lastModified:Ljava/lang/Long;
    :cond_0
    return-void
.end method

.method private convertOrgin2PinyinForSort(Landroid/content/ContentValues;)V
    .locals 5
    .parameter

    .prologue
    const-string v4, "title_key"

    const-string v3, "title"

    .line 6837
    if-nez p1, :cond_0

    .line 6858
    :goto_0
    return-void

    .line 6841
    :cond_0
    const-string v0, "genre_name"

    const-string v1, "genre_name_pinyin"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/media/MediaProvider;->subConvertOrgin2PinyinForSort(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6842
    const-string v0, "composer"

    const-string v1, "composer_pinyin"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/media/MediaProvider;->subConvertOrgin2PinyinForSort(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6843
    const-string v0, "title"

    const-string v0, "title_pinyin"

    invoke-direct {p0, p1, v3, v0}, Lcom/android/providers/media/MediaProvider;->subConvertOrgin2PinyinForSort(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6844
    const-string v1, "_display_name"

    const-string v2, "_display_name_pinyin"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/providers/media/MediaProvider;->subConvertOrgin2PinyinForSort(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6845
    const-string v1, "bucket_display_name"

    const-string v2, "bucket_display_name_pinyin"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/providers/media/MediaProvider;->subConvertOrgin2PinyinForSort(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6847
    if-eqz v0, :cond_1

    .line 6848
    const-string v1, "title_key"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 6849
    invoke-static {v0}, Landroid/provider/MediaStore$Audio;->keyForChn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6850
    const-string v1, "title_key"

    invoke-virtual {p1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6855
    :cond_1
    const-string v0, "title"

    invoke-direct {p0, p1, v3}, Lcom/android/providers/media/MediaProvider;->subConvertOrgin2PinyinForSearch(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method private createDropImageCleanupTrigger(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1229
    if-nez p1, :cond_0

    .line 1242
    :goto_0
    return-void

    .line 1233
    :cond_0
    if-eqz p2, :cond_1

    .line 1234
    const-string v0, "CREATE TRIGGER IF NOT EXISTS images_cleanup DELETE ON images BEGIN DELETE FROM thumbnails WHERE image_id = old._id;SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 1240
    :cond_1
    const-string v0, "DROP TRIGGER IF EXISTS images_cleanup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createDropThumbnailCleanupTrigger(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1246
    if-nez p1, :cond_0

    .line 1258
    :goto_0
    return-void

    .line 1250
    :cond_0
    if-eqz p2, :cond_1

    .line 1251
    const-string v0, "CREATE TRIGGER IF NOT EXISTS thumbnails_cleanup DELETE ON thumbnails BEGIN SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 1256
    :cond_1
    const-string v0, "DROP TRIGGER IF EXISTS thumbnails_cleanup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private detachVolume(Landroid/net/Uri;)V
    .locals 6
    .parameter

    .prologue
    .line 6800
    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 6801
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Opening and closing databases not allowed."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6805
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6806
    const-string v1, "internal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6807
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Deleting the internal volume is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6809
    :cond_1
    const-string v1, "external"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6810
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no volume named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6814
    :cond_2
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    monitor-enter v2

    .line 6815
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    .line 6816
    if-nez v1, :cond_3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6832
    :goto_0
    return-void

    .line 6820
    :cond_3
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6821
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/File;->setLastModified(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 6826
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6827
    invoke-virtual {v1}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->close()V

    .line 6828
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6830
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 6831
    sget-object v1, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detached volume: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6822
    :catch_0
    move-exception v3

    .line 6823
    :try_start_3
    sget-object v4, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v5, "Can\'t touch database file"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 6828
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private doAudioSearch(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3317
    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    .line 3318
    :goto_0
    const-string v3, "  "

    const-string v4, " "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 3324
    sget-object v3, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doAudioSearch : mSearchString = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3325
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 3326
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    .line 3327
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 3328
    sget-object v6, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doAudioSearch : mSearchString["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] = 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3326
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3317
    :cond_0
    invoke-virtual {p3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 3334
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3336
    :goto_2
    array-length v3, v2

    new-array v6, v3, [Ljava/lang/String;

    .line 3337
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v3

    .line 3338
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/text/Collator;->setStrength(I)V

    .line 3339
    array-length v3, v2

    .line 3344
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_6

    .line 3350
    aget-object v5, v2, v4

    invoke-direct {p0, v5}, Lcom/android/providers/media/MediaProvider;->isCJKString(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3351
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x25

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v7, v2, v4

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v7, 0x25

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v4

    .line 3359
    :goto_4
    sget-object v5, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doAudioSearch : wildcardWords["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v6, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3344
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 3334
    :cond_2
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    goto :goto_2

    .line 3353
    :cond_3
    aget-object v5, v2, v4

    const-string v7, "a"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    aget-object v5, v2, v4

    const-string v7, "an"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    aget-object v5, v2, v4

    const-string v7, "the"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    const-string v5, "%"

    :goto_5
    aput-object v5, v6, v4

    goto :goto_4

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x25

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v7, v2, v4

    invoke-direct {p0, v7}, Lcom/android/providers/media/MediaProvider;->computeChineseSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v7, 0x25

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 3379
    :cond_6
    const-string v3, ""

    .line 3384
    const/4 v4, 0x0

    move-object v5, v3

    move v3, v4

    :goto_6
    array-length v4, v2

    if-ge v3, v4, :cond_a

    .line 3387
    if-nez v3, :cond_8

    .line 3388
    aget-object v4, v2, v3

    invoke-direct {p0, v4}, Lcom/android/providers/media/MediaProvider;->isCJKString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "matchCJK LIKE ?"

    .line 3384
    :goto_7
    add-int/lit8 v3, v3, 0x1

    move-object v5, v4

    goto :goto_6

    .line 3388
    :cond_7
    const-string v4, "match LIKE ?"

    goto :goto_7

    .line 3390
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v3

    invoke-direct {p0, v5}, Lcom/android/providers/media/MediaProvider;->isCJKString(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, " AND matchCJK LIKE ?"

    :goto_8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_9
    const-string v5, " AND match LIKE ?"

    goto :goto_8

    .line 3406
    :cond_a
    const-string v2, "search"

    invoke-virtual {p2, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3408
    const/16 v2, 0x192

    move/from16 v0, p8

    move v1, v2

    if-ne v0, v1, :cond_b

    .line 3409
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mSearchColsFancy:[Ljava/lang/String;

    move-object v4, v2

    .line 3415
    :goto_9
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p2

    move-object v3, p1

    move-object/from16 v10, p9

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2

    .line 3410
    :cond_b
    const/16 v2, 0x191

    move/from16 v0, p8

    move v1, v2

    if-ne v0, v1, :cond_c

    .line 3411
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mSearchColsBasic:[Ljava/lang/String;

    move-object v4, v2

    goto :goto_9

    .line 3413
    :cond_c
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mSearchColsLegacy:[Ljava/lang/String;

    move-object v4, v2

    goto :goto_9
.end method

.method private doImagesSearch(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3440
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v1, "doImagesSearch()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3441
    invoke-virtual {p3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 3446
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3448
    :goto_0
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    .line 3449
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    .line 3450
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/text/Collator;->setStrength(I)V

    .line 3451
    array-length v1, v0

    .line 3452
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 3453
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x25

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v5, v0, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x25

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    .line 3452
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3446
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0

    .line 3465
    :cond_1
    const-string v3, "title LIKE ? COLLATE LOCALIZED"

    .line 3468
    const-string v0, "images"

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3471
    sget-object v2, Lcom/android/providers/media/MediaProvider;->mSearchImagesColsBasic:[Ljava/lang/String;

    .line 3474
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    move-object v1, p1

    move-object/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private doVideoSearch(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3482
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doVideoSearch() uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " db : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3483
    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 3484
    :goto_0
    sget-object v1, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "proc String"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " getQuery(*)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3486
    const-string v1, "  "

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 3488
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3490
    :goto_1
    array-length v1, v0

    new-array v4, v1, [Ljava/lang/String;

    .line 3491
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    .line 3492
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/text/Collator;->setStrength(I)V

    .line 3493
    array-length v1, v0

    .line 3494
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_2

    .line 3495
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x25

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v5, v0, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x25

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    .line 3494
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3483
    :cond_0
    invoke-virtual {p3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3488
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_1

    .line 3498
    :cond_2
    const-string v1, ""

    .line 3499
    const/4 v2, 0x0

    move-object v3, v1

    move v1, v2

    :goto_3
    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 3500
    if-nez v1, :cond_3

    .line 3502
    const-string v2, "title LIKE ? COLLATE LOCALIZED"

    .line 3499
    :goto_4
    add-int/lit8 v1, v1, 0x1

    move-object v3, v2

    goto :goto_3

    .line 3504
    :cond_3
    const-string v2, " AND title LIKE ? COLLATE LOCALIZED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 3508
    :cond_4
    const-string v0, "video"

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3509
    sget-object v2, Lcom/android/providers/media/MediaProvider;->mSearchVideoColsBasic:[Ljava/lang/String;

    .line 3511
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    move-object v1, p1

    move-object/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private ensureFile(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3595
    const-string v0, "_data"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3596
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3607
    const/4 v6, 0x0

    .line 3608
    const-string v0, ".jpg"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez p1, :cond_6

    const-string v0, "image_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3609
    const-string v0, "image_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 3610
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-eqz v0, :cond_6

    .line 3611
    const/4 v9, 0x0

    .line 3613
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v0

    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/media/MediaProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3614
    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3615
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/providers/media/MediaProvider;->EXTERNAL_SD_ROOT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-eqz v1, :cond_8

    .line 3616
    const/4 v1, 0x1

    .line 3625
    :goto_0
    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    .line 3630
    :goto_1
    invoke-direct {p0, p1, p3, p4, v0}, Lcom/android/providers/media/MediaProvider;->generateFileName(ZLjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 3633
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 3634
    const-string v2, "_data"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3642
    :goto_2
    iget v2, p0, Lcom/android/providers/media/MediaProvider;->mBulkInsertSync:I

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/providers/media/MediaProvider;->EXTERNAL_SD_ROOT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_0
    move-object v0, v1

    .line 3652
    :goto_3
    return-object v0

    .line 3620
    :cond_1
    const/4 v1, 0x0

    .line 3625
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v1

    goto :goto_3

    .line 3622
    :catch_0
    move-exception v0

    move-object v1, v9

    .line 3623
    :goto_4
    :try_start_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 3625
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_5
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    move-object v1, p2

    .line 3636
    goto :goto_2

    .line 3649
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/providers/media/MediaProvider;->ensureFileExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3650
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create new file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3625
    :catchall_1
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_5

    .line 3622
    :catch_1
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_4

    :cond_6
    move v0, v6

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_1

    :cond_8
    move v1, v6

    goto :goto_0
.end method

.method private ensureFileExists(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "mounted"

    .line 4551
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4552
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    .line 4583
    :goto_0
    return v0

    .line 4557
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectoryUsbHost()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/Environment;->isUsbStorageConnected()Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v3

    .line 4558
    goto :goto_0

    .line 4560
    :cond_1
    if-eqz p1, :cond_2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageStateSd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    move v0, v3

    .line 4561
    goto :goto_0

    .line 4563
    :cond_2
    if-eqz p1, :cond_3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    move v0, v3

    .line 4564
    goto :goto_0

    .line 4571
    :cond_3
    const/16 v1, 0x2f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 4572
    if-ge v1, v2, :cond_4

    move v0, v3

    goto :goto_0

    .line 4573
    :cond_4
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 4574
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4575
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    move v0, v3

    .line 4576
    goto :goto_0

    .line 4577
    :cond_6
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 4579
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 4580
    :catch_0
    move-exception v0

    .line 4581
    sget-object v1, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v2, "File creation failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v3

    .line 4583
    goto/16 :goto_0
.end method

.method private extractAppPackageInfo(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const-string v6, "package"

    const-string v5, "is_trusted"

    const-string v4, "title"

    .line 2711
    const-string v0, "title"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2713
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2714
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 2716
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 2718
    if-eqz v1, :cond_0

    .line 2719
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0, v0, v2}, Lcom/android/providers/media/MediaProvider;->getAppSnippet(Landroid/content/ContentProvider;Landroid/content/pm/ApplicationInfo;Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$AppSnippet;

    move-result-object v0

    .line 2720
    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$AppSnippet;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2721
    const-string v2, "title"

    invoke-virtual {p2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2722
    const-string v0, "package"

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2723
    const-string v0, "is_trusted"

    sget-object v0, Lcom/android/providers/media/MediaProvider;->mTrustedPackagesSet:Ljava/util/Set;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2731
    :goto_0
    return-void

    .line 2726
    :cond_0
    sget-object v1, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extractAppPackageInfo - not trusted apk file : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2727
    const-string v1, "title"

    invoke-virtual {p2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2728
    const-string v0, "package"

    const-string v0, ""

    invoke-virtual {p2, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2729
    const-string v0, "is_trusted"

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private generateFileName(ZLjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-string v3, "/"

    .line 4528
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 4530
    if-eqz p1, :cond_0

    .line 4531
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Writing to internal storage is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4543
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p4, :cond_1

    sget-object v2, Lcom/android/providers/media/MediaProvider;->EXTERNAL_SD_ROOT:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v2, Lcom/android/providers/media/MediaProvider;->INTERNAL_SD_ROOT:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getAppSnippet(Landroid/content/ContentProvider;Landroid/content/pm/ApplicationInfo;Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$AppSnippet;
    .locals 9
    .parameter "pProvider"
    .parameter "appInfo"
    .parameter "packageURI"

    .prologue
    .line 2670
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 2671
    .local v0, archiveFilePath:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 2672
    .local v4, pContext:Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 2674
    .local v5, pRes:Landroid/content/res/Resources;
    new-instance v1, Landroid/content/res/AssetManager;

    invoke-direct {v1}, Landroid/content/res/AssetManager;-><init>()V

    .line 2675
    .local v1, assmgr:Landroid/content/res/AssetManager;
    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 2676
    new-instance v6, Landroid/content/res/Resources;

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-direct {v6, v1, v7, v8}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 2677
    .local v6, res:Landroid/content/res/Resources;
    const/4 v3, 0x0

    .line 2680
    .local v3, label:Ljava/lang/CharSequence;
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v7, :cond_0

    .line 2682
    :try_start_0
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 2686
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 2687
    iget-object v7, p1, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v7, :cond_3

    iget-object v7, p1, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object v3, v7

    .line 2690
    :cond_1
    :goto_1
    const/4 v2, 0x0

    .line 2693
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v7, :cond_2

    .line 2695
    :try_start_1
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 2702
    :cond_2
    :goto_2
    new-instance v7, Lcom/android/providers/media/MediaProvider$AppSnippet;

    invoke-direct {v7, v3, v2}, Lcom/android/providers/media/MediaProvider$AppSnippet;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    return-object v7

    .line 2687
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v7, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v3, v7

    goto :goto_1

    .line 2696
    .restart local v2       #icon:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v7

    goto :goto_2

    .line 2683
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v7

    goto :goto_0
.end method

.method private static getCompressedAlbumArt(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 5345
    const/4 v0, 0x0

    .line 5348
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5349
    const/high16 v2, 0x1000

    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 5352
    new-instance v2, Landroid/media/MediaScanner;

    invoke-direct {v2, p0}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V

    .line 5353
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/media/MediaScanner;->extractAlbumArt(Ljava/io/FileDescriptor;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 5354
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 5365
    if-nez v0, :cond_a

    if-eqz p1, :cond_a

    .line 5366
    const/16 p0, 0x2f

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    .line 5367
    if-lez p0, :cond_a

    .line 5369
    const/4 v1, 0x0

    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 5370
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 5371
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 5374
    const/4 v2, 0x0

    .line 5375
    sget-object v3, Lcom/android/providers/media/MediaProvider;->sFolderArtMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5376
    :try_start_2
    sget-object v4, Lcom/android/providers/media/MediaProvider;->sFolderArtMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5377
    sget-object p0, Lcom/android/providers/media/MediaProvider;->sFolderArtMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 5413
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5415
    if-eqz p0, :cond_a

    .line 5416
    :try_start_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5417
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_a

    .line 5418
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide p0

    long-to-int p0, p0

    new-array p0, p0, [B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 5419
    const/4 p1, 0x0

    .line 5421
    :try_start_4
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 5422
    :try_start_5
    invoke-virtual {v0, p0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 5426
    if-eqz v0, :cond_0

    .line 5427
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 5437
    :cond_0
    :goto_1
    return-object p0

    .line 5378
    :cond_1
    :try_start_7
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_c

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_c

    .line 5380
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5381
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p0

    .line 5382
    if-nez p0, :cond_2

    .line 5383
    const/4 p0, 0x0

    monitor-exit v3

    goto :goto_1

    .line 5413
    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 5434
    :catch_0
    move-exception p0

    move-object p0, v0

    goto :goto_1

    .line 5385
    :cond_2
    const/4 v1, 0x0

    .line 5386
    const/16 v2, 0x3e8

    .line 5387
    :try_start_9
    array-length v4, p0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move v7, v4

    move-object v4, v1

    move v1, v7

    :goto_2
    if-ltz v1, :cond_b

    .line 5388
    aget-object v5, p0, v1

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 5389
    const-string v6, "albumart.jpg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 5390
    aget-object p0, p0, v1

    .line 5411
    :goto_3
    sget-object v1, Lcom/android/providers/media/MediaProvider;->sFolderArtMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5392
    :cond_3
    const-string v6, "albumart"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "large.jpg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    if-le v2, v6, :cond_5

    .line 5395
    aget-object v2, p0, v1

    .line 5396
    const/4 v4, 0x1

    move v7, v4

    move-object v4, v2

    move v2, v7

    .line 5387
    :cond_4
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 5397
    :cond_5
    const-string v6, "albumart"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x2

    if-le v2, v6, :cond_6

    .line 5400
    aget-object v2, p0, v1

    .line 5401
    const/4 v4, 0x2

    move v7, v4

    move-object v4, v2

    move v2, v7

    goto :goto_4

    .line 5402
    :cond_6
    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, 0x3

    if-le v2, v6, :cond_7

    .line 5403
    aget-object v2, p0, v1

    .line 5404
    const/4 v4, 0x3

    move v7, v4

    move-object v4, v2

    move v2, v7

    goto :goto_4

    .line 5405
    :cond_7
    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x4

    if-le v2, v5, :cond_4

    .line 5406
    aget-object v2, p0, v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 5407
    const/4 v4, 0x4

    move v7, v4

    move-object v4, v2

    move v2, v7

    goto :goto_4

    .line 5423
    :catch_1
    move-exception p0

    move-object p0, p1

    .line 5424
    :goto_5
    const/4 p1, 0x0

    .line 5426
    if-eqz p0, :cond_9

    .line 5427
    :try_start_a
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    move-object p0, p1

    goto/16 :goto_1

    .line 5426
    :catchall_1
    move-exception v0

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    :goto_6
    if-eqz v0, :cond_8

    .line 5427
    :try_start_b
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :cond_8
    throw p1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    .line 5434
    :catch_2
    move-exception p1

    goto/16 :goto_1

    :catch_3
    move-exception p0

    move-object p0, v0

    goto/16 :goto_1

    :catch_4
    move-exception p0

    move-object p0, p1

    goto/16 :goto_1

    .line 5426
    :catchall_2
    move-exception p1

    goto :goto_6

    .line 5423
    :catch_5
    move-exception p0

    move-object p0, v0

    goto :goto_5

    :cond_9
    move-object p0, p1

    goto/16 :goto_1

    :cond_a
    move-object p0, v0

    goto/16 :goto_1

    :cond_b
    move-object p0, v4

    goto/16 :goto_3

    :cond_c
    move-object p0, v2

    goto/16 :goto_0
.end method

.method private getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .locals 4
    .parameter "uri"

    .prologue
    .line 5803
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    monitor-enter v0

    .line 5804
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 5805
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    monitor-exit v0

    move-object v0, p0

    .line 5808
    :goto_0
    return-object v0

    .line 5807
    .restart local p0
    :cond_0
    monitor-exit v0

    .line 5808
    const/4 v0, 0x0

    goto :goto_0

    .line 5807
    .end local p0
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getKeyIdForName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)J
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/net/Uri;",
            ")J"
        }
    .end annotation

    .prologue
    .line 5633
    if-eqz p5, :cond_0

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_8

    .line 5634
    :cond_0
    const-string v5, "<unknown>"

    move-object v13, v5

    .line 5642
    :goto_0
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/android/providers/media/MediaProvider;->computeChineseSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/provider/MediaStore$Audio;->keyForChn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5649
    if-nez v5, :cond_1

    .line 5651
    sget-object v5, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v6, "null key"

    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5652
    const-wide/16 v5, -0x1

    .line 5749
    :goto_1
    return-wide v5

    .line 5655
    :cond_1
    const-string v6, "albums"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 5656
    const-string v6, "<unknown>"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 5664
    if-eqz v14, :cond_7

    .line 5665
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5666
    if-eqz v15, :cond_7

    .line 5667
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v16, v5

    .line 5671
    :goto_2
    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v16, v9, v5

    .line 5672
    const/4 v7, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 5675
    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 5738
    sget-object v6, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Multiple entries in table "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for key "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5739
    const-wide/16 v6, -0x1

    .line 5743
    :cond_2
    :goto_3
    if-eqz v5, :cond_3

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 5746
    :cond_3
    if-eqz p10, :cond_4

    if-nez v15, :cond_4

    .line 5747
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p10

    move-object/from16 v1, p6

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-wide v5, v6

    .line 5749
    goto/16 :goto_1

    .line 5678
    :pswitch_0
    :try_start_1
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 5679
    move-object v0, v6

    move-object/from16 v1, p3

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5680
    move-object v0, v6

    move-object/from16 v1, p4

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5686
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v7

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_pinyin"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p4

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/media/MediaProvider;->subConvertOrgin2PinyinForSort(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5691
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/android/providers/media/MediaProvider;->subConvertOrgin2PinyinForSearch(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    .line 5696
    const-string v7, "duration"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v2, v7

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 5697
    if-eqz p7, :cond_5

    if-eqz v14, :cond_5

    if-nez v15, :cond_5

    .line 5699
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    move-wide v3, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/media/MediaProvider;->makeThumbAsync(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    .line 5701
    :cond_5
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_2

    .line 5702
    invoke-virtual/range {p11 .. p11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    const/16 v10, 0x18

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 5703
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "content://media/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/audio/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 5704
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v8, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 5743
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_6

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v6

    .line 5710
    :pswitch_1
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5711
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 5715
    const/4 v8, 0x2

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 5716
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/media/MediaProvider;->makeBestName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 5717
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 5719
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 5720
    move-object v0, v8

    move-object/from16 v1, p4

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5725
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v9

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_pinyin"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, p4

    move-object v3, v9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/media/MediaProvider;->subConvertOrgin2PinyinForSort(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5729
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "rowid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    long-to-int v10, v6

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5730
    invoke-virtual/range {p11 .. p11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    const/16 v10, 0x18

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 5731
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "content://media/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/audio/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 5732
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v8, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    :cond_7
    move-object/from16 v16, v5

    goto/16 :goto_2

    :cond_8
    move-object/from16 v13, p5

    goto/16 :goto_0

    .line 5675
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getTableAndWhere(Landroid/net/Uri;ILjava/lang/String;Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x5

    const/4 v2, 0x3

    const-string v6, "audio_id="

    const-string v4, "audio_genres"

    const-string v3, "_id="

    .line 4597
    const/4 v0, 0x0

    .line 4598
    sparse-switch p2, :sswitch_data_0

    .line 4757
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown or unsupported URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4600
    :sswitch_0
    const-string v1, "images"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 4762
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4763
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    .line 4771
    :goto_1
    return-void

    .line 4604
    :sswitch_1
    const-string v0, "images"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 4605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4609
    :sswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4611
    :sswitch_3
    const-string v1, "thumbnails"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto :goto_0

    .line 4615
    :sswitch_4
    const-string v1, "audio"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto :goto_0

    .line 4619
    :sswitch_5
    const-string v0, "audio"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 4620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4624
    :sswitch_6
    const-string v0, "audio_genres"

    iput-object v4, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 4625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio_id="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4629
    :sswitch_7
    const-string v0, "audio_genres"

    iput-object v4, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 4630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio_id="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND genre_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4635
    :sswitch_8
    const-string v0, "audio_playlists"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 4636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio_id="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4640
    :sswitch_9
    const-string v0, "audio_playlists"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 4641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio_id="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND playlists_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4646
    :sswitch_a
    const-string v1, "audio_genres"

    iput-object v4, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 4650
    :sswitch_b
    const-string v0, "audio_genres"

    iput-object v4, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 4651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4655
    :sswitch_c
    const-string v0, "audio_genres"

    iput-object v4, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 4656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "genre_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4660
    :sswitch_d
    const-string v0, "audio_genres"

    iput-object v4, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 4661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "genre_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND audio_id ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4666
    :sswitch_e
    const-string v1, "audio_playlists"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 4670
    :sswitch_f
    const-string v0, "audio_playlists"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 4671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4675
    :sswitch_10
    const-string v0, "audio_playlists_map"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 4676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playlist_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4680
    :sswitch_11
    const-string v0, "audio_playlists_map"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 4681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playlist_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND _id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4686
    :sswitch_12
    const-string v0, "album_art"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 4687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "album_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4692
    :sswitch_13
    const-string v1, "music_audio_playlists"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 4696
    :sswitch_14
    const-string v0, "music_audio_playlists"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 4697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4701
    :sswitch_15
    const-string v0, "music_audio_playlists_map"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 4702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playlist_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4706
    :sswitch_16
    const-string v1, "music_audio_playlists_map"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 4710
    :sswitch_17
    const-string v0, "music_audio_playlists_map"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 4711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playlist_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4714
    :sswitch_18
    const-string v1, "music_quick_list"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 4719
    :sswitch_19
    const-string v1, "video"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 4723
    :sswitch_1a
    const-string v0, "video"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 4724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4728
    :sswitch_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4730
    :sswitch_1c
    const-string v1, "videothumbnails"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 4737
    :sswitch_1d
    const-string v1, "videocall_images"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 4740
    :sswitch_1e
    const-string v0, "videocall_images"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 4741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4749
    :sswitch_1f
    const-string v1, "app_package"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 4752
    :sswitch_20
    const-string v0, "app_package"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 4753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4766
    :cond_0
    iput-object p3, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    goto/16 :goto_1

    .line 4769
    :cond_1
    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    goto/16 :goto_1

    .line 4598
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x64 -> :sswitch_4
        0x65 -> :sswitch_5
        0x66 -> :sswitch_6
        0x67 -> :sswitch_7
        0x68 -> :sswitch_8
        0x69 -> :sswitch_9
        0x6a -> :sswitch_a
        0x6b -> :sswitch_b
        0x6c -> :sswitch_c
        0x6d -> :sswitch_d
        0x6e -> :sswitch_e
        0x6f -> :sswitch_f
        0x70 -> :sswitch_10
        0x71 -> :sswitch_11
        0x78 -> :sswitch_12
        0x82 -> :sswitch_18
        0x8c -> :sswitch_13
        0x8d -> :sswitch_14
        0x8e -> :sswitch_15
        0x8f -> :sswitch_16
        0x90 -> :sswitch_17
        0xc8 -> :sswitch_19
        0xc9 -> :sswitch_1a
        0xca -> :sswitch_1c
        0xcb -> :sswitch_1b
        0x2bc -> :sswitch_1f
        0x2bd -> :sswitch_20
        0x320 -> :sswitch_1d
        0x321 -> :sswitch_1e
    .end sparse-switch
.end method

.method private getThumb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JLandroid/net/Uri;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .parameter "db"
    .parameter "path"
    .parameter "album_id"
    .parameter "albumart_uri"

    .prologue
    .line 5505
    new-instance v0, Lcom/android/providers/media/MediaProvider$ThumbData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/providers/media/MediaProvider$ThumbData;-><init>(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/MediaProvider$1;)V

    .line 5506
    .local v0, d:Lcom/android/providers/media/MediaProvider$ThumbData;
    iput-object p1, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 5507
    iput-object p2, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->path:Ljava/lang/String;

    .line 5508
    iput-wide p3, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->album_id:J

    .line 5509
    iput-object p5, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->albumart_uri:Landroid/net/Uri;

    .line 5510
    invoke-direct {p0, v0}, Lcom/android/providers/media/MediaProvider;->makeThumbInternal(Lcom/android/providers/media/MediaProvider$ThumbData;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1
.end method

.method private insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 30
    .parameter
    .parameter

    .prologue
    .line 3899
    sget-object v5, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    .line 3903
    const/16 v6, 0x1f4

    if-ne v5, v6, :cond_0

    .line 3904
    const-string v5, "volume"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    .line 3905
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v5

    .line 4449
    :goto_0
    return-object v5

    .line 3908
    :cond_0
    const/16 v25, 0x0

    .line 3909
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v17

    .line 3912
    if-nez v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider;->mSdSerial:Ljava/lang/String;

    move-object v6, v0

    if-nez v6, :cond_1

    const-string v6, "_data"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3913
    const-string v6, "_data"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3914
    if-eqz v6, :cond_1

    sget-object v7, Lcom/android/providers/media/MediaProvider;->EXTERNAL_SD_ROOT:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3915
    sget-object v5, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v6, "database is closed because of SD card removal"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3916
    const/4 v5, 0x0

    goto :goto_0

    .line 3922
    :cond_1
    if-nez v17, :cond_2

    const/16 v6, 0x12c

    if-eq v5, v6, :cond_2

    .line 3923
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3926
    :cond_2
    const/16 v6, 0x12c

    if-ne v5, v6, :cond_3

    const/4 v6, 0x0

    move-object/from16 v26, v6

    .line 3928
    :goto_1
    if-nez p2, :cond_1c

    .line 3929
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    move-object v8, v6

    .line 3932
    :goto_2
    sparse-switch v5, :sswitch_data_0

    .line 4446
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid URI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3926
    :cond_3
    invoke-virtual/range {v17 .. v17}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    move-object/from16 v26, v6

    goto :goto_1

    .line 3934
    :sswitch_0
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    move v5, v0

    const-string v6, ".jpg"

    const-string v7, "DCIM/Camera"

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v8

    move-object v3, v6

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/media/MediaProvider;->ensureFile(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v5

    .line 3936
    const-string v6, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3937
    const-string v6, "_data"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3938
    const-string v7, "_display_name"

    invoke-virtual {v5, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 3939
    invoke-static {v6, v5}, Lcom/android/providers/media/MediaProvider;->computeDisplayName(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 3941
    :cond_4
    invoke-static {v6, v5}, Lcom/android/providers/media/MediaProvider;->computeBucketValues(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 3942
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->computeTakenTime(Landroid/content/ContentValues;)V

    .line 3947
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    move v7, v0

    if-nez v7, :cond_6

    .line 3948
    const-string v7, "micro_thumb_id"

    const-string v9, "external"

    sget-object v10, Lcom/android/providers/media/MediaProvider;->EXTERNAL_SD_ROOT:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    move-object/from16 v0, p0

    move-object v1, v9

    move v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/media/MediaProvider;->getNextAvailMicroThumbId(Ljava/lang/String;Z)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3949
    sget-object v7, Lcom/android/providers/media/MediaProvider;->EXTERNAL_SD_ROOT:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3950
    const-string v7, "sd_serial"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "external_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider;->mSdSerial:Ljava/lang/String;

    move-object v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3960
    :goto_3
    const-string v7, "images"

    const-string v9, "name"

    move-object/from16 v0, v26

    move-object v1, v7

    move-object v2, v9

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v9

    .line 3962
    const-wide/16 v11, 0x0

    cmp-long v5, v9, v11

    if-lez v5, :cond_18

    .line 3963
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 3976
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    move v5, v0

    if-nez v5, :cond_19

    const-string v5, "_data"

    invoke-virtual {v8, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 3977
    const/16 v8, 0xa

    const-wide/16 v9, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/media/MediaProvider;->requestMediaThumbnail(Ljava/lang/String;Landroid/net/Uri;IJ)Lcom/android/providers/media/MediaThumbRequest;

    move-object v5, v7

    goto/16 :goto_0

    .line 3952
    :cond_5
    const-string v7, "sd_serial"

    const-string v9, "external_internal"

    invoke-virtual {v5, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 3955
    :cond_6
    const-string v7, "sd_serial"

    const-string v9, "internal"

    invoke-virtual {v5, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 3987
    :sswitch_1
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    move v5, v0

    const-string v6, ".jpg"

    const-string v7, "DCIM/.thumbnails"

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v8

    move-object v3, v6

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/media/MediaProvider;->ensureFile(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v5

    .line 4005
    if-eqz v5, :cond_18

    .line 4006
    const-string v6, "thumbnails"

    const-string v7, "name"

    move-object/from16 v0, v26

    move-object v1, v6

    move-object v2, v7

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 4007
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_18

    .line 4008
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Landroid/provider/MediaStore$Images$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    goto/16 :goto_0

    .line 4019
    :sswitch_2
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    move v5, v0

    const-string v6, ".jpg"

    const-string v7, "DCIM/.thumbnails"

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v8

    move-object v3, v6

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/media/MediaProvider;->ensureFile(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v5

    .line 4021
    const-string v6, "videothumbnails"

    const-string v7, "name"

    move-object/from16 v0, v26

    move-object v1, v6

    move-object v2, v7

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 4022
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_18

    .line 4023
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Landroid/provider/MediaStore$Video$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    goto/16 :goto_0

    .line 4035
    :sswitch_3
    new-instance v27, Landroid/content/ContentValues;

    move-object/from16 v0, v27

    move-object v1, v8

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 4040
    const-string v5, "album_artist"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 4041
    const-string v5, "album_artist"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4042
    const-string v5, "compilation"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 4043
    const-string v5, "compilation"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4047
    const-string v5, "artist"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 4048
    if-nez v5, :cond_7

    const-string v5, ""

    move-object v10, v5

    .line 4049
    :goto_4
    const-string v5, "artist"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4051
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mArtistCache:Ljava/util/HashMap;

    move-object v15, v0

    .line 4052
    const-string v5, "_data"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 4053
    monitor-enter v15

    .line 4054
    :try_start_0
    invoke-virtual {v15, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    .line 4055
    if-nez p2, :cond_8

    .line 4056
    const-string v7, "artists"

    const-string v8, "artist_key"

    const-string v9, "artist"

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, v26

    move-object v11, v10

    move-object/from16 v16, p1

    invoke-direct/range {v5 .. v16}, Lcom/android/providers/media/MediaProvider;->getKeyIdForName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)J

    move-result-wide v5

    .line 4061
    :goto_5
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4065
    const-string v7, "album"

    move-object/from16 v0, v27

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 4066
    if-nez v7, :cond_9

    const-string v7, ""

    move-object/from16 v18, v7

    .line 4067
    :goto_6
    const-string v7, "album"

    move-object/from16 v0, v27

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4069
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mAlbumCache:Ljava/util/HashMap;

    move-object/from16 v23, v0

    .line 4070
    monitor-enter v23

    .line 4071
    const/4 v7, 0x0

    .line 4072
    if-eqz v19, :cond_a

    .line 4073
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->hashCode()I

    move-result v7

    move/from16 v21, v7

    .line 4079
    :goto_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 4080
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    .line 4081
    if-nez p2, :cond_c

    .line 4082
    const-string v15, "albums"

    const-string v16, "album_key"

    const-string v17, "album"

    move-object/from16 v13, p0

    move-object/from16 v14, v26

    move-object/from16 v20, v12

    move-object/from16 v22, v10

    move-object/from16 v24, p1

    invoke-direct/range {v13 .. v24}, Lcom/android/providers/media/MediaProvider;->getKeyIdForName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)J

    move-result-wide v7

    .line 4087
    :goto_8
    monitor-exit v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4089
    const-string v9, "artist_id"

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    move-object v1, v9

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4090
    const-string v5, "album_id"

    long-to-int v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v27

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4091
    const-string v5, "title"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4092
    if-nez v5, :cond_d

    const-string v5, ""

    .line 4093
    :goto_9
    invoke-static {v5}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4094
    const-string v7, "title_key"

    move-object/from16 v0, v27

    move-object v1, v7

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4097
    const-string v6, "title"

    move-object/from16 v0, v27

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4098
    const-string v6, "title"

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    move-object v1, v6

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4100
    const-string v5, "_data"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4102
    move-object v0, v5

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/providers/media/MediaProvider;->computeDisplayName(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4104
    move-object v0, v5

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/providers/media/MediaProvider;->computeBucketValues(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4105
    const-string v6, "_data_hashcode"

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v27

    move-object v1, v6

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4110
    const-string v5, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v27

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4116
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/providers/media/MediaProvider;->convertOrgin2PinyinForSort(Landroid/content/ContentValues;)V

    .line 4121
    const-string v5, "audio_meta"

    const-string v6, "duration"

    move-object/from16 v0, v26

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 4122
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_18

    .line 4123
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    goto/16 :goto_0

    .line 4048
    :cond_7
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v10, v5

    goto/16 :goto_4

    .line 4059
    :cond_8
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto/16 :goto_5

    .line 4061
    :catchall_0
    move-exception v5

    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 4066
    :cond_9
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v18, v7

    goto/16 :goto_6

    .line 4074
    :cond_a
    if-eqz v20, :cond_b

    :try_start_3
    const-string v8, "1"

    move-object/from16 v0, v20

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    move/from16 v21, v7

    goto/16 :goto_7

    .line 4077
    :cond_b
    const/4 v7, 0x0

    const/16 v8, 0x2f

    invoke-virtual {v12, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    invoke-virtual {v12, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    move/from16 v21, v7

    goto/16 :goto_7

    .line 4085
    :cond_c
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto/16 :goto_8

    .line 4087
    :catchall_1
    move-exception v5

    monitor-exit v23
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .line 4092
    :cond_d
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_9

    .line 4129
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 4130
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6, v8}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 4131
    const-string v7, "audio_id"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4132
    const-string v5, "audio_genres_map"

    const-string v7, "genre_id"

    move-object/from16 v0, v26

    move-object v1, v5

    move-object v2, v7

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 4133
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_18

    .line 4134
    move-object/from16 v0, p1

    move-wide v1, v5

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    goto/16 :goto_0

    .line 4140
    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 4141
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6, v8}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 4142
    const-string v7, "audio_id"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4143
    const-string v5, "audio_playlists_map"

    const-string v7, "playlist_id"

    move-object/from16 v0, v26

    move-object v1, v5

    move-object v2, v7

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 4145
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_18

    .line 4146
    move-object/from16 v0, p1

    move-wide v1, v5

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    goto/16 :goto_0

    .line 4152
    :sswitch_6
    const-string v5, "audio_genres"

    const-string v6, "audio_id"

    move-object/from16 v0, v26

    move-object v1, v5

    move-object v2, v6

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 4153
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_18

    .line 4154
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Landroid/provider/MediaStore$Audio$Genres;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    goto/16 :goto_0

    .line 4160
    :sswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 4161
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6, v8}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 4162
    const-string v7, "genre_id"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4163
    const-string v5, "audio_genres_map"

    const-string v7, "genre_id"

    move-object/from16 v0, v26

    move-object v1, v5

    move-object v2, v7

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 4164
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_18

    .line 4165
    move-object/from16 v0, p1

    move-wide v1, v5

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    goto/16 :goto_0

    .line 4171
    :sswitch_8
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5, v8}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 4172
    const-string v6, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4173
    const-string v5, "audio_playlists"

    const-string v6, "name"

    move-object/from16 v0, v26

    move-object v1, v5

    move-object v2, v6

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 4174
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_18

    .line 4175
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    goto/16 :goto_0

    .line 4182
    :sswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 4183
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6, v8}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 4184
    const-string v7, "playlist_id"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4185
    const-string v5, "audio_playlists_map"

    const-string v7, "playlist_id"

    move-object/from16 v0, v26

    move-object v1, v5

    move-object v2, v7

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 4186
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_18

    .line 4187
    move-object/from16 v0, p1

    move-wide v1, v5

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    goto/16 :goto_0

    .line 4194
    :sswitch_a
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5, v8}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 4208
    const-string v6, "name"

    const-string v7, "name_pinyin"

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/media/MediaProvider;->subConvertOrgin2PinyinForSort(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4213
    const-string v6, "music_audio_playlists"

    const-string v7, "name"

    move-object/from16 v0, v26

    move-object v1, v6

    move-object v2, v7

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 4214
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_18

    .line 4216
    const-string v7, "content://media/external/audio/music_playlists"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    goto/16 :goto_0

    .line 4223
    :sswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 4224
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6, v8}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 4225
    const-string v7, "playlist_id"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4226
    const-string v5, "music_audio_playlists_map"

    const-string v7, "playlist_id"

    move-object/from16 v0, v26

    move-object v1, v5

    move-object v2, v7

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 4228
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_18

    .line 4229
    move-object/from16 v0, p1

    move-wide v1, v5

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    goto/16 :goto_0

    .line 4235
    :sswitch_c
    new-instance v5, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v5}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 4240
    const/16 v16, 0x0

    .line 4241
    const/16 v17, 0x0

    .line 4242
    const/16 v18, 0x0

    .line 4243
    const/16 v19, 0x0

    .line 4246
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    .line 4249
    const-string v6, "audio_playlists"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 4251
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4252
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "_data"

    aput-object v9, v6, v8

    const/4 v8, 0x1

    const-string v9, "name"

    aput-object v9, v6, v8

    const/4 v8, 0x2

    const-string v9, "date_added"

    aput-object v9, v6, v8

    const/4 v8, 0x3

    const-string v9, "date_modified"

    aput-object v9, v6, v8

    .line 4254
    sget-object v13, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "query = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4255
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v8, v5

    move-object/from16 v9, v26

    move-object v10, v6

    move-object v11, v7

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4256
    if-eqz v6, :cond_1b

    .line 4257
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 4258
    const-string v7, "_data"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 4259
    const-string v8, "name"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 4260
    const-string v9, "date_added"

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 4261
    const-string v10, "date_modified"

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move/from16 v28, v10

    move-object v10, v7

    move/from16 v7, v28

    move-object/from16 v29, v8

    move v8, v9

    move-object/from16 v9, v29

    .line 4263
    :goto_a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move/from16 v16, v7

    move/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    .line 4266
    :goto_b
    if-nez v19, :cond_e

    .line 4267
    sget-object v5, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v6, "insertInternal : AUDIO_MUSIC_PLAYLISTS_ID_MEMBERS_FROM_DEFAULT"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4268
    sget-object v5, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v6, "                 invaild _data of audio_playlists_map"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4269
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 4274
    :cond_e
    const-string v6, "music_audio_playlists"

    const-string v7, "_data = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v19, v8, v9

    move-object/from16 v0, v26

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4277
    const-string v6, "audio_playlists_map, audio_meta"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 4279
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "audio_meta._id = audio_id AND playlist_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4280
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "_data"

    aput-object v9, v6, v8

    const/4 v8, 0x1

    const-string v9, "_data_hashcode"

    aput-object v9, v6, v8

    const/4 v8, 0x2

    const-string v9, "play_order"

    aput-object v9, v6, v8

    .line 4282
    sget-object v13, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "query = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4283
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v8, v5

    move-object/from16 v9, v26

    move-object v10, v6

    move-object v11, v7

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 4285
    if-nez v13, :cond_f

    .line 4286
    sget-object v8, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v9, "insertInternal : AUDIO_MUSIC_PLAYLISTS_ID_MEMBERS_FROM_DEFAULT"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4287
    sget-object v13, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "                 query = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " return null "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4288
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 4290
    :cond_f
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-nez v8, :cond_10

    .line 4291
    sget-object v8, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v9, "insertInternal : AUDIO_MUSIC_PLAYLISTS_ID_MEMBERS_FROM_DEFAULT"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4292
    sget-object v14, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "                 query = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " return 0 count "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4293
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 4294
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 4298
    :cond_10
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 4299
    const-string v6, "_data"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4300
    const-string v6, "name"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4301
    const-string v6, "date_added"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4302
    const-string v6, "date_modified"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4304
    const-string v6, "music_audio_playlists"

    const-string v7, "_data"

    move-object/from16 v0, v26

    move-object v1, v6

    move-object v2, v7

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 4305
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_11

    .line 4306
    sget-object v6, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v7, "insertInternal : AUDIO_MUSIC_PLAYLISTS_ID_MEMBERS_FROM_DEFAULT"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4307
    sget-object v6, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "                 musicPlaylistId < 0 : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4308
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 4312
    :cond_11
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 4314
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4315
    new-array v7, v6, [Landroid/content/ContentValues;

    .line 4317
    const/4 v8, 0x0

    :goto_c
    if-ge v8, v6, :cond_13

    .line 4318
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    aput-object v9, v7, v8

    .line 4319
    aget-object v9, v7, v8

    const-string v10, "audio_data"

    const-string v11, "_data"

    invoke-interface {v13, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v13, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4320
    aget-object v9, v7, v8

    const-string v10, "audio_data_hashcode"

    const-string v11, "_data_hashcode"

    invoke-interface {v13, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v13, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4321
    aget-object v9, v7, v8

    const-string v10, "playlist_id"

    invoke-virtual {v9, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4323
    const-string v9, "play_order"

    invoke-interface {v13, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v13, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    sub-int v9, v6, v9

    .line 4324
    if-lez v9, :cond_12

    .line 4325
    :goto_d
    aget-object v10, v7, v8

    const-string v11, "play_order"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4326
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    .line 4317
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    .line 4324
    :cond_12
    const/4 v9, 0x0

    goto :goto_d

    .line 4328
    :cond_13
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 4330
    invoke-virtual/range {v26 .. v26}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 4332
    const/4 v5, 0x0

    :goto_e
    :try_start_4
    array-length v6, v7

    if-ge v5, v6, :cond_15

    .line 4333
    const-string v6, "music_audio_playlists_map"

    const-string v8, "audio_data"

    aget-object v9, v7, v5

    move-object/from16 v0, v26

    move-object v1, v6

    move-object v2, v8

    move-object v3, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-gez v6, :cond_14

    .line 4334
    sget-object v6, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "insertInternal : db.insert(music_audio_playlists_map, audio_data - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v7, v5

    const-string v10, "audio_data"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4332
    :cond_14
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 4337
    :cond_15
    invoke-virtual/range {v26 .. v26}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 4339
    invoke-virtual/range {v26 .. v26}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4343
    const/4 v5, 0x0

    .line 4345
    goto/16 :goto_0

    .line 4339
    :catchall_2
    move-exception v5

    invoke-virtual/range {v26 .. v26}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 4348
    :sswitch_d
    const-string v5, "music_quick_list"

    const-string v6, "audio_id"

    move-object/from16 v0, v26

    move-object v1, v5

    move-object v2, v6

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 4349
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_18

    .line 4350
    move-object/from16 v0, p1

    move-wide v1, v5

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    goto/16 :goto_0

    .line 4356
    :sswitch_e
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    move v5, v0

    const-string v6, ".3gp"

    const-string v7, "video"

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v8

    move-object v3, v6

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/media/MediaProvider;->ensureFile(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v5

    .line 4357
    const-string v6, "_data"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4358
    invoke-static {v6, v5}, Lcom/android/providers/media/MediaProvider;->computeDisplayName(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4359
    invoke-static {v6, v5}, Lcom/android/providers/media/MediaProvider;->computeBucketValues(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4360
    const-string v7, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4361
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->computeTakenTime(Landroid/content/ContentValues;)V

    .line 4367
    const-string v7, "_display_name"

    const-string v8, "title_pinyin"

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v7

    move-object v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/media/MediaProvider;->subConvertOrgin2PinyinForSort(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4372
    const-string v7, "video"

    const-string v8, "artist"

    move-object/from16 v0, v26

    move-object v1, v7

    move-object v2, v8

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v7

    .line 4373
    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-lez v5, :cond_18

    .line 4374
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v9, 0x0

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 4377
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    move v5, v0

    if-nez v5, :cond_19

    .line 4378
    const/16 v8, 0xa

    const-wide/16 v9, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/media/MediaProvider;->requestMediaThumbnail(Ljava/lang/String;Landroid/net/Uri;IJ)Lcom/android/providers/media/MediaThumbRequest;

    move-object v5, v7

    goto/16 :goto_0

    .line 4387
    :sswitch_f
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    move v5, v0

    const-string v6, ".jpg"

    const-string v7, "DCIM/VideoCall"

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v8

    move-object v3, v6

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/media/MediaProvider;->ensureFile(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v5

    .line 4389
    const-string v6, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4390
    const-string v6, "_data"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4391
    const-string v7, "_display_name"

    invoke-virtual {v5, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_16

    .line 4392
    invoke-static {v6, v5}, Lcom/android/providers/media/MediaProvider;->computeDisplayName(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4395
    :cond_16
    const-string v6, "videocall_images"

    const-string v7, "name"

    move-object/from16 v0, v26

    move-object v1, v6

    move-object v2, v7

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 4397
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_18

    .line 4398
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Landroid/provider/MediaStore$VideoCallImages$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    goto/16 :goto_0

    .line 4408
    :sswitch_10
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    move v5, v0

    if-eqz v5, :cond_17

    .line 4409
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string v6, "no internal album art allowed"

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4413
    :cond_17
    const/4 v5, 0x0

    :try_start_5
    const-string v6, ""

    const-string v7, "Android/data/com.android.providers.media/albumthumbs"

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v8

    move-object v3, v6

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/media/MediaProvider;->ensureFile(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v5

    .line 4418
    :goto_f
    const-string v6, "album_art"

    const-string v7, "_data"

    move-object/from16 v0, v26

    move-object v1, v6

    move-object v2, v7

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 4419
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_18

    .line 4420
    move-object/from16 v0, p1

    move-wide v1, v5

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    goto/16 :goto_0

    .line 4414
    :catch_0
    move-exception v5

    move-object v5, v8

    .line 4416
    goto :goto_f

    .line 4425
    :sswitch_11
    const-string v5, "name"

    invoke-virtual {v8, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/providers/media/MediaProvider;->attachVolume(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto/16 :goto_0

    .line 4429
    :sswitch_12
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5, v8}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 4430
    const-string v6, "_data"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4431
    invoke-static {v6, v5}, Lcom/android/providers/media/MediaProvider;->computeDisplayName(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4433
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/media/MediaProvider;->extractAppPackageInfo(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4435
    const-string v6, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4436
    const-string v6, "app_package"

    const-string v7, ""

    move-object/from16 v0, v26

    move-object v1, v6

    move-object v2, v7

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 4437
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_18

    .line 4438
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Landroid/provider/MediaStore$AppPackage$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    goto/16 :goto_0

    :cond_18
    move-object/from16 v5, v25

    goto/16 :goto_0

    :cond_19
    move-object v5, v7

    goto/16 :goto_0

    :cond_1a
    move/from16 v7, v19

    move/from16 v8, v18

    move-object/from16 v9, v17

    move-object/from16 v10, v16

    goto/16 :goto_a

    :cond_1b
    move/from16 v28, v19

    move-object/from16 v19, v16

    move/from16 v16, v28

    move-object/from16 v29, v17

    move/from16 v17, v18

    move-object/from16 v18, v29

    goto/16 :goto_b

    :cond_1c
    move-object/from16 v8, p2

    goto/16 :goto_2

    .line 3932
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x64 -> :sswitch_3
        0x66 -> :sswitch_4
        0x68 -> :sswitch_5
        0x6a -> :sswitch_6
        0x6c -> :sswitch_7
        0x6e -> :sswitch_8
        0x6f -> :sswitch_9
        0x70 -> :sswitch_9
        0x77 -> :sswitch_10
        0x82 -> :sswitch_d
        0x8c -> :sswitch_a
        0x8d -> :sswitch_b
        0x8e -> :sswitch_b
        0x90 -> :sswitch_c
        0xc8 -> :sswitch_e
        0xca -> :sswitch_2
        0x12c -> :sswitch_11
        0x2bc -> :sswitch_12
        0x320 -> :sswitch_f
    .end sparse-switch
.end method

.method private isCJKString(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 3422
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    move v1, v4

    .line 3423
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 3424
    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v2

    .line 3425
    const v3, 0xfa29

    if-gt v2, v3, :cond_0

    const/16 v3, 0x2e81

    if-lt v2, v3, :cond_0

    .line 3426
    const/4 v0, 0x1

    .line 3429
    :goto_1
    return v0

    .line 3423
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    .line 3429
    goto :goto_1
.end method

.method private isUsbMassStorageEnabled()Z
    .locals 2

    .prologue
    .line 612
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 613
    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    .line 614
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v0

    return v0
.end method

.method private makeThumbAsync(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V
    .locals 4
    .parameter "db"
    .parameter "path"
    .parameter "album_id"

    .prologue
    .line 5308
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mPendingThumbs:Ljava/util/HashSet;

    monitor-enter v2

    .line 5309
    :try_start_0
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->mPendingThumbs:Ljava/util/HashSet;

    invoke-virtual {v3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5312
    monitor-exit v2

    .line 5340
    :cond_0
    :goto_0
    return-void

    .line 5315
    :cond_1
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->mPendingThumbs:Ljava/util/HashSet;

    invoke-virtual {v3, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5316
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5319
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5322
    new-instance v0, Lcom/android/providers/media/MediaProvider$ThumbData;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/providers/media/MediaProvider$ThumbData;-><init>(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/MediaProvider$1;)V

    .line 5323
    .local v0, d:Lcom/android/providers/media/MediaProvider$ThumbData;
    iput-object p1, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 5324
    iput-object p2, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->path:Ljava/lang/String;

    .line 5325
    iput-wide p3, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->album_id:J

    .line 5326
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mAlbumArtBaseUri:Landroid/net/Uri;

    invoke-static {v2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->albumart_uri:Landroid/net/Uri;

    .line 5333
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mThumbRequestStack:Ljava/util/Stack;

    monitor-enter v2

    .line 5334
    :try_start_1
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->mThumbRequestStack:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5335
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5338
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mThumbHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 5339
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 5316
    .end local v0           #d:Lcom/android/providers/media/MediaProvider$ThumbData;
    .end local v1           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 5335
    .restart local v0       #d:Lcom/android/providers/media/MediaProvider$ThumbData;
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method private makeThumbInternal(Lcom/android/providers/media/MediaProvider$ThumbData;)Landroid/os/ParcelFileDescriptor;
    .locals 14
    .parameter "d"

    .prologue
    const/16 v12, 0x280

    const/4 v11, 0x1

    const/4 v13, 0x0

    .line 5514
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p1, Lcom/android/providers/media/MediaProvider$ThumbData;->path:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/android/providers/media/MediaProvider;->getCompressedAlbumArt(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    .line 5516
    .local v1, compressed:[B
    if-nez v1, :cond_0

    move-object v9, v13

    .line 5608
    :goto_0
    return-object v9

    .line 5520
    :cond_0
    const/4 v0, 0x0

    .line 5521
    .local v0, bm:Landroid/graphics/Bitmap;
    const/4 v5, 0x1

    .line 5525
    .local v5, need_to_recompress:Z
    :try_start_0
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 5526
    .local v6, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x1

    iput-boolean v9, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 5527
    const/4 v9, 0x1

    iput v9, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 5528
    const/4 v9, 0x0

    array-length v10, v1

    invoke-static {v1, v9, v10, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 5535
    :goto_1
    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v9, v12, :cond_1

    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v9, v12, :cond_3

    .line 5536
    :cond_1
    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/lit8 v9, v9, 0x2

    iput v9, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 5537
    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/lit8 v9, v9, 0x2

    iput v9, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 5538
    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v9, v9, 0x2

    iput v9, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    .line 5560
    .end local v6           #opts:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v9

    .line 5563
    :cond_2
    :goto_2
    if-eqz v5, :cond_5

    if-nez v0, :cond_5

    move-object v9, v13

    .line 5564
    goto :goto_0

    .line 5542
    .restart local v6       #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_3
    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ne v9, v11, :cond_4

    .line 5545
    const/4 v5, 0x0

    goto :goto_2

    .line 5548
    :cond_4
    const/4 v9, 0x0

    iput-boolean v9, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 5549
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v9, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 5550
    const/4 v9, 0x0

    array-length v10, v1

    invoke-static {v1, v9, v10, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5552
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v9

    if-nez v9, :cond_2

    .line 5553
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 5554
    .local v4, nbm:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_2

    if-eq v4, v0, :cond_2

    .line 5555
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5556
    move-object v0, v4

    goto :goto_2

    .line 5567
    .end local v4           #nbm:Landroid/graphics/Bitmap;
    .end local v6           #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_5
    iget-object v9, p1, Lcom/android/providers/media/MediaProvider$ThumbData;->albumart_uri:Landroid/net/Uri;

    if-nez v9, :cond_6

    .line 5571
    :try_start_1
    new-instance v3, Landroid/os/MemoryFile;

    const-string v9, "albumthumb"

    array-length v10, v1

    invoke-direct {v3, v9, v10}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    .line 5572
    .local v3, file:Landroid/os/MemoryFile;
    const/4 v9, 0x0

    const/4 v10, 0x0

    array-length v11, v1

    invoke-virtual {v3, v1, v9, v10, v11}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 5573
    invoke-virtual {v3}, Landroid/os/MemoryFile;->deactivate()V

    .line 5574
    invoke-virtual {v3}, Landroid/os/MemoryFile;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v9

    goto :goto_0

    .line 5583
    .end local v3           #file:Landroid/os/MemoryFile;
    :cond_6
    :try_start_2
    iget-object v9, p1, Lcom/android/providers/media/MediaProvider$ThumbData;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 5585
    :try_start_3
    iget-object v9, p1, Lcom/android/providers/media/MediaProvider$ThumbData;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-wide v10, p1, Lcom/android/providers/media/MediaProvider$ThumbData;->album_id:J

    iget-object v12, p1, Lcom/android/providers/media/MediaProvider$ThumbData;->albumart_uri:Landroid/net/Uri;

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/android/providers/media/MediaProvider;->getAlbumArtOutputUri(Landroid/database/sqlite/SQLiteDatabase;JLandroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    .line 5587
    .local v7, out:Landroid/net/Uri;
    if-eqz v7, :cond_8

    .line 5588
    invoke-direct {p0, v5, v7, v1, v0}, Lcom/android/providers/media/MediaProvider;->writeAlbumArt(ZLandroid/net/Uri;[BLandroid/graphics/Bitmap;)V

    .line 5589
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/android/providers/media/MediaProvider;->MEDIA_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 5590
    const-string v9, "r"

    invoke-virtual {p0, v7, v9}, Lcom/android/providers/media/MediaProvider;->openFileHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    .line 5591
    .local v8, pfd:Landroid/os/ParcelFileDescriptor;
    iget-object v9, p1, Lcom/android/providers/media/MediaProvider$ThumbData;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_3

    .line 5599
    :try_start_4
    iget-object v9, p1, Lcom/android/providers/media/MediaProvider$ThumbData;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 5600
    if-eqz v0, :cond_7

    .line 5601
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    move-object v9, v8

    goto/16 :goto_0

    .line 5599
    .end local v8           #pfd:Landroid/os/ParcelFileDescriptor;
    :cond_8
    iget-object v9, p1, Lcom/android/providers/media/MediaProvider$ThumbData;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 5600
    if-eqz v0, :cond_9

    .line 5601
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .end local v7           #out:Landroid/net/Uri;
    :cond_9
    :goto_3
    move-object v9, v13

    .line 5608
    goto/16 :goto_0

    .line 5594
    :catch_1
    move-exception v9

    .line 5599
    iget-object v9, p1, Lcom/android/providers/media/MediaProvider$ThumbData;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 5600
    if-eqz v0, :cond_9

    .line 5601
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 5604
    :catch_2
    move-exception v9

    move-object v2, v9

    .line 5605
    .local v2, ex:Ljava/lang/IllegalStateException;
    sget-object v9, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v10, "IllegalStateException in makeThumbInternal"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 5596
    .end local v2           #ex:Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v9

    .line 5599
    :try_start_5
    iget-object v9, p1, Lcom/android/providers/media/MediaProvider$ThumbData;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 5600
    if-eqz v0, :cond_9

    .line 5601
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_3

    .line 5599
    :catchall_0
    move-exception v9

    iget-object v10, p1, Lcom/android/providers/media/MediaProvider$ThumbData;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 5600
    if-eqz v0, :cond_a

    .line 5601
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_a
    throw v9
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_2

    .line 5575
    :catch_4
    move-exception v9

    goto :goto_3
.end method

.method private matchThumbRequest(Lcom/android/providers/media/MediaThumbRequest;I)Z
    .locals 2
    .parameter "req"
    .parameter "where"

    .prologue
    .line 2801
    const/4 v0, 0x0

    .line 2802
    .local v0, ret:Z
    packed-switch p2, :pswitch_data_0

    .line 2816
    :cond_0
    :goto_0
    return v0

    .line 2804
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/providers/media/MediaThumbRequest;->isRequestForExternalSD()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2805
    const/4 v0, 0x1

    goto :goto_0

    .line 2809
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/providers/media/MediaThumbRequest;->isRequestForInternalSD()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2810
    const/4 v0, 0x1

    goto :goto_0

    .line 2802
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private matchThumbRequest(Lcom/android/providers/media/MediaThumbRequest;IJJZ)Z
    .locals 8
    .parameter "req"
    .parameter "pid"
    .parameter "id"
    .parameter "gid"
    .parameter "isVideo"

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2823
    cmp-long v2, p3, v6

    if-nez v2, :cond_2

    move v1, v5

    .line 2824
    .local v1, cancelAllOrigId:Z
    :goto_0
    cmp-long v2, p5, v6

    if-nez v2, :cond_3

    move v0, v5

    .line 2825
    .local v0, cancelAllGroupId:Z
    :goto_1
    iget v2, p1, Lcom/android/providers/media/MediaThumbRequest;->mCallingPid:I

    if-ne v2, p2, :cond_4

    if-nez v0, :cond_0

    iget-wide v2, p1, Lcom/android/providers/media/MediaThumbRequest;->mGroupId:J

    cmp-long v2, v2, p5

    if-nez v2, :cond_4

    :cond_0
    if-nez v1, :cond_1

    iget-wide v2, p1, Lcom/android/providers/media/MediaThumbRequest;->mOrigId:J

    cmp-long v2, v2, p3

    if-nez v2, :cond_4

    :cond_1
    iget-boolean v2, p1, Lcom/android/providers/media/MediaThumbRequest;->mIsVideo:Z

    if-ne v2, p7, :cond_4

    move v2, v5

    :goto_2
    return v2

    .end local v0           #cancelAllGroupId:Z
    .end local v1           #cancelAllOrigId:Z
    :cond_2
    move v1, v4

    .line 2823
    goto :goto_0

    .restart local v1       #cancelAllOrigId:Z
    :cond_3
    move v0, v4

    .line 2824
    goto :goto_1

    .restart local v0       #cancelAllGroupId:Z
    :cond_4
    move v2, v4

    .line 2825
    goto :goto_2
.end method

.method private movePlaylistEntry(Landroid/database/sqlite/SQLiteDatabase;JII)I
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-string v0, " AND playlist_id="

    .line 5131
    if-ne p4, p5, :cond_0

    .line 5132
    const/4 v0, 0x0

    .line 5162
    :goto_0
    return v0

    .line 5134
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 5137
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE audio_playlists_map SET play_order=-1 WHERE play_order="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND playlist_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5143
    if-ge p4, p5, :cond_1

    .line 5144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE audio_playlists_map SET play_order=play_order-1 WHERE play_order<="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND play_order>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND playlist_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5147
    sub-int v0, p5, p4

    add-int/lit8 v0, v0, 0x1

    .line 5154
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE audio_playlists_map SET play_order="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE play_order=-1 AND playlist_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5156
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 5157
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 5159
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5162
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 5149
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE audio_playlists_map SET play_order=play_order+1 WHERE play_order>="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND play_order<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND playlist_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5152
    sub-int v0, p4, p5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5162
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private playlistBulkInsert(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 17
    .parameter "db"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 3795
    new-instance v6, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v15, "audio_playlists_map"

    move-object v0, v6

    move-object/from16 v1, p1

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 3797
    .local v6, helper:Landroid/database/DatabaseUtils$InsertHelper;
    const-string v15, "audio_id"

    invoke-virtual {v6, v15}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 3798
    .local v5, audioidcolidx:I
    const-string v15, "playlist_id"

    invoke-virtual {v6, v15}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 3799
    .local v12, playlistididx:I
    const-string v15, "play_order"

    invoke-virtual {v6, v15}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 3800
    .local v14, playorderidx:I
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x3

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 3802
    .local v10, playlistId:J
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3803
    const/4 v9, 0x0

    .line 3805
    .local v9, numInserted:I
    :try_start_0
    move-object/from16 v0, p3

    array-length v0, v0

    move v8, v0

    .line 3806
    .local v8, len:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 3807
    invoke-virtual {v6}, Landroid/database/DatabaseUtils$InsertHelper;->prepareForInsert()V

    .line 3811
    aget-object v15, p3, v7

    const-string v16, "audio_id"

    invoke-virtual/range {v15 .. v16}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    .line 3813
    .local v3, audioid:J
    invoke-virtual {v6, v5, v3, v4}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IJ)V

    .line 3814
    invoke-virtual {v6, v12, v10, v11}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IJ)V

    .line 3816
    aget-object v15, p3, v7

    const-string v16, "play_order"

    invoke-virtual/range {v15 .. v16}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #audioid:J
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v13

    .line 3818
    .local v13, playorder:I
    invoke-virtual {v6, v14, v13}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    .line 3819
    invoke-virtual {v6}, Landroid/database/DatabaseUtils$InsertHelper;->execute()J

    .line 3806
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3821
    .end local v13           #playorder:I
    :cond_0
    move v9, v8

    .line 3822
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3824
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3825
    invoke-virtual {v6}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    .line 3827
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const/16 v16, 0x0

    move-object v0, v15

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3828
    return v9

    .line 3824
    .end local v7           #i:I
    .end local v8           #len:I
    :catchall_0
    move-exception v15

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3825
    invoke-virtual {v6}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    throw v15
.end method

.method private queryThumbnail(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2833
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2834
    if-eqz p5, :cond_0

    .line 2837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2839
    const/4 v0, 0x1

    .line 2896
    :goto_0
    return v0

    .line 2841
    :cond_0
    const-string v0, "orig_id"

    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2843
    if-nez v8, :cond_1

    .line 2845
    const/4 v0, 0x1

    goto :goto_0

    .line 2848
    :cond_1
    const-string v0, "1"

    const-string v1, "blocking"

    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2849
    const-string v1, "1"

    const-string v2, "cancel"

    invoke-virtual {p2, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2850
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "thumbnails"

    const-string v5, "media"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 2854
    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, Lcom/android/providers/media/MediaProvider;->waitForThumbnailReady(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2855
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v1, "original media doesn\'t exist or it\'s canceled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2856
    const/4 v0, 0x0

    goto :goto_0

    .line 2857
    :cond_2
    if-eqz v1, :cond_6

    .line 2858
    const-string v0, "group_id"

    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2859
    const-string v1, "video"

    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 2860
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 2865
    :try_start_0
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2866
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    .line 2872
    iget-object v9, p0, Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;

    monitor-enter v9

    .line 2873
    :try_start_1
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/providers/media/MediaProvider;->matchThumbRequest(Lcom/android/providers/media/MediaThumbRequest;IJJZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2875
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2876
    :try_start_2
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;

    sget-object v10, Lcom/android/providers/media/MediaThumbRequest$State;->CANCEL:Lcom/android/providers/media/MediaThumbRequest$State;

    iput-object v10, v1, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    .line 2877
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2878
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2880
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/media/MediaThumbRequest;

    move-object v0, p0

    .line 2881
    invoke-direct/range {v0 .. v7}, Lcom/android/providers/media/MediaProvider;->matchThumbRequest(Lcom/android/providers/media/MediaThumbRequest;IJJZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2882
    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2883
    :try_start_4
    sget-object v0, Lcom/android/providers/media/MediaThumbRequest$State;->CANCEL:Lcom/android/providers/media/MediaThumbRequest$State;

    iput-object v0, v1, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    .line 2884
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2885
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2887
    :try_start_5
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2890
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 2867
    :catch_0
    move-exception v0

    .line 2869
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2878
    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2885
    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v0

    .line 2890
    :cond_5
    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2893
    :cond_6
    if-eqz v8, :cond_7

    .line 2894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2896
    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private static recreateAudioView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2474
    const-string v0, "DROP VIEW IF EXISTS audio"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2475
    const-string v0, "DROP TRIGGER IF EXISTS audio_delete"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2476
    const-string v0, "CREATE VIEW IF NOT EXISTS audio as SELECT * FROM audio_meta LEFT OUTER JOIN artists ON audio_meta.artist_id=artists.artist_id LEFT OUTER JOIN albums ON audio_meta.album_id=albums.album_id;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2480
    const-string v0, "CREATE TRIGGER IF NOT EXISTS audio_delete INSTEAD OF DELETE ON audio BEGIN DELETE from audio_meta where _id=old._id;DELETE from audio_playlists_map where audio_id=old._id;DELETE from audio_genres_map where audio_id=old._id;END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2488
    const-string v0, "DROP VIEW IF EXISTS music_audio_order_album_key"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2489
    const-string v0, "CREATE VIEW IF NOT EXISTS music_audio_order_album_key AS SELECT audio_meta.artist_id as artist_id, artist, artist_key, artist_focused_index, audio_meta.album_id as album_id, is_music, is_sound FROM audio_meta LEFT OUTER JOIN artists ON audio_meta.artist_id=artists.artist_id LEFT OUTER JOIN albums ON audio_meta.album_id=albums.album_id order by album_key desc;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2497
    return-void
.end method

.method private removeMediaDBData()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v5, "_data LIKE \'"

    .line 622
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v1, "removeMediaDBData called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    monitor-enter v1

    .line 626
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    const-string v2, "external"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    .line 627
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    if-eqz v0, :cond_0

    .line 629
    invoke-virtual {v0}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 631
    if-eqz v0, :cond_0

    .line 632
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "audio_meta"

    aput-object v2, v1, v4

    const-string v2, "video"

    aput-object v2, v1, v3

    .line 636
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_data LIKE \'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/providers/media/MediaProvider;->EXTERNAL_SD_ROOT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/%\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 639
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 640
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/SDremove/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/providers/media/MediaProvider;->mSdSerial:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 641
    const-string v5, "_data"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    const/4 v5, 0x0

    :try_start_1
    aget-object v5, v1, v5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 645
    const/4 v5, 0x1

    aget-object v5, v1, v5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v3, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 646
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/providers/media/MediaProvider;->modifyVideoCleanupTrigger(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 647
    const/4 v2, 0x1

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_data LIKE \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 648
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/providers/media/MediaProvider;->modifyVideoCleanupTrigger(Landroid/database/sqlite/SQLiteDatabase;Z)V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 654
    :cond_0
    :goto_0
    return-void

    .line 627
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 649
    :catch_0
    move-exception v0

    .line 650
    sget-object v1, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeSDCardVideoAudioRecordsFromDB - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeMediaThumbRequests(I)V
    .locals 5
    .parameter "where"

    .prologue
    .line 1022
    sget-object v2, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@!removeMediaThumbRequests is called. mMediaThumbQueue.size() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/media/MediaThumbRequest;

    .line 1025
    .local v1, mtq:Lcom/android/providers/media/MediaThumbRequest;
    invoke-direct {p0, v1, p1}, Lcom/android/providers/media/MediaProvider;->matchThumbRequest(Lcom/android/providers/media/MediaThumbRequest;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1026
    monitor-enter v1

    .line 1027
    :try_start_0
    sget-object v2, Lcom/android/providers/media/MediaThumbRequest$State;->DONE:Lcom/android/providers/media/MediaThumbRequest$State;

    iput-object v2, v1, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    .line 1028
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1029
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1037
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v2, v1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1029
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1040
    .end local v1           #mtq:Lcom/android/providers/media/MediaThumbRequest;
    :cond_1
    return-void
.end method

.method private requestMediaThumbnail(Ljava/lang/String;Landroid/net/Uri;IJ)Lcom/android/providers/media/MediaThumbRequest;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 4489
    iget-object v7, p0, Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;

    monitor-enter v7

    .line 4493
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 4494
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4495
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestMediaThumbnail: this file must not be requested thumbnail. - path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uri ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4496
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v8

    .line 4513
    :goto_0
    return-object v0

    .line 4500
    :cond_0
    :try_start_2
    new-instance v0, Lcom/android/providers/media/MediaThumbRequest;

    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/media/MediaThumbRequest;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;IJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 4502
    :try_start_3
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 4504
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mThumbWorkerSuspender:Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;

    invoke-virtual {v1}, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->getThumbWorkerSuspended()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result v1

    if-eqz v1, :cond_1

    .line 4505
    :try_start_4
    monitor-exit v7

    goto :goto_0

    .line 4514
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 4508
    :cond_1
    :try_start_5
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mThumbHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4509
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    .line 4513
    :goto_1
    :try_start_6
    monitor-exit v7

    goto :goto_0

    .line 4510
    :catch_0
    move-exception v0

    move-object v1, v8

    .line 4511
    :goto_2
    sget-object v2, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v0, v1

    goto :goto_1

    .line 4510
    :catch_1
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_2
.end method

.method private static sanityCheck(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    const-string v1, "audio_meta"

    .line 2453
    const-string v0, "audio_meta"

    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "count(*)"

    aput-object v0, v2, v9

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2455
    const-string v0, "audio_meta"

    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "count(distinct _data)"

    aput-object v0, v2, v9

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2457
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2458
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2459
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 2460
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 2461
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2462
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2463
    if-eq v1, v2, :cond_0

    .line 2464
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audio_meta._data column is not unique while upgrading from schema "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    const-string v0, "DELETE FROM audio_meta;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2469
    :cond_0
    return-void
.end method

.method private showNotification(ZIII)V
    .locals 18
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 782
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 785
    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 786
    const v6, 0x7f020003

    .line 787
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 791
    if-eqz p1, :cond_1

    .line 793
    const v9, 0x7f040003

    .line 799
    :goto_0
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 803
    const-string v10, ""

    .line 805
    if-nez p2, :cond_2

    .line 807
    const v10, 0x7f040009

    .line 808
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 809
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " ("

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ")"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v17, v10

    move-object v10, v9

    move-object/from16 v9, v17

    .line 825
    :goto_1
    const-string v11, ""

    .line 826
    if-ltz p4, :cond_6

    if-lez p3, :cond_6

    .line 828
    move/from16 v0, p4

    move/from16 v1, p3

    if-le v0, v1, :cond_5

    move/from16 v11, p3

    .line 829
    :goto_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 830
    mul-int/lit8 v13, v11, 0x64

    div-int v13, v13, p3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 831
    const/16 v13, 0x25

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 832
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v17, v12

    move v12, v11

    move-object/from16 v11, v17

    .line 836
    :goto_3
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f040005

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .line 842
    new-instance v14, Landroid/widget/RemoteViews;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const/high16 v16, 0x7f03

    invoke-direct/range {v14 .. v16}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 843
    const v15, 0x7f050001

    invoke-virtual {v14, v15, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 844
    const v13, 0x7f050002

    invoke-virtual {v14, v13, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 845
    const v9, 0x7f050004

    if-gtz p3, :cond_4

    const/4 v13, 0x1

    :goto_4
    move-object v0, v14

    move v1, v9

    move/from16 v2, p3

    move v3, v12

    move v4, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 846
    const v9, 0x7f050003

    invoke-virtual {v14, v9, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 847
    const/high16 v9, 0x7f05

    invoke-virtual {v14, v9, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 850
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 851
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v5, v11, v9, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 854
    new-instance v9, Landroid/app/Notification;

    invoke-direct {v9, v6, v10, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 855
    iget v7, v9, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x2

    iput v7, v9, Landroid/app/Notification;->flags:I

    .line 856
    iput v6, v9, Landroid/app/Notification;->icon:I

    .line 857
    iput-object v14, v9, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 858
    iput-object v5, v9, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 861
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 866
    if-nez p1, :cond_0

    .line 867
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 868
    :cond_0
    return-void

    .line 797
    :cond_1
    const v9, 0x7f040004

    goto/16 :goto_0

    .line 811
    :cond_2
    const/4 v11, 0x1

    move/from16 v0, p2

    move v1, v11

    if-ne v0, v1, :cond_3

    .line 813
    const v10, 0x7f040007

    .line 814
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 815
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " ("

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ")"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v17, v10

    move-object v10, v9

    move-object/from16 v9, v17

    goto/16 :goto_1

    .line 817
    :cond_3
    const/4 v11, 0x2

    move/from16 v0, p2

    move v1, v11

    if-ne v0, v1, :cond_7

    .line 819
    const v10, 0x7f040008

    .line 820
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 821
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " ("

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ")"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v17, v10

    move-object v10, v9

    move-object/from16 v9, v17

    goto/16 :goto_1

    .line 845
    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_4

    :cond_5
    move/from16 v11, p4

    goto/16 :goto_2

    :cond_6
    move/from16 v12, p4

    goto/16 :goto_3

    :cond_7
    move-object/from16 v17, v10

    move-object v10, v9

    move-object/from16 v9, v17

    goto/16 :goto_1
.end method

.method private stopMediaScanner(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const-string v2, "MediaScanner"

    .line 589
    invoke-static {p1}, Landroid/media/MediaScanner;->notifyUnmount(Ljava/lang/String;)V

    .line 592
    iget v0, p0, Lcom/android/providers/media/MediaProvider;->mBulkInsertSync:I

    if-lez v0, :cond_0

    .line 594
    const-string v0, "MediaScanner"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stopping DB operation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/providers/media/MediaProvider;->mBulkInsertSync:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/providers/media/MediaProvider;->mBulkInsertSync:I

    .line 596
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mBulkInsertSyncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 598
    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    const-string v0, "MediaScanner"

    const-string v0, "...Stopped"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :goto_0
    return-void

    .line 598
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 603
    :cond_0
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v1, "No DB operation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private subConvertOrgin2PinyinForSearch(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "values"
    .parameter "orginKey"

    .prologue
    .line 6882
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6883
    .local v0, orgin:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 6884
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_search_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/provider/MediaStore$Audio;->keyForChn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6887
    :cond_0
    return-object v0
.end method

.method private subConvertOrgin2PinyinForSort(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6861
    const/4 v0, 0x0

    .line 6862
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6863
    if-eqz v1, :cond_0

    .line 6864
    const-string v0, "<unknown>"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6865
    const-string v0, "\u0001"

    .line 6870
    :goto_0
    if-eqz v0, :cond_0

    .line 6871
    invoke-virtual {p1, p3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 6872
    invoke-virtual {p1, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6876
    :cond_0
    return-object v0

    .line 6868
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/providers/media/MediaProvider;->computeChineseSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static updateBucketNames(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const-string v0, "_id"

    const-string v0, "_data"

    .line 2507
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2509
    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 2510
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 2512
    :try_start_1
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 2513
    const-string v2, "_data"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 2514
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2515
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2516
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2517
    invoke-static {v3, v4}, Lcom/android/providers/media/MediaProvider;->computeBucketValues(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 2518
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 2519
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2522
    :catchall_0
    move-exception v1

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2526
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 2522
    :cond_0
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2524
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2526
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2528
    return-void
.end method

.method private static updateDatabase(Landroid/database/sqlite/SQLiteDatabase;ZII)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x3f

    const/16 v8, 0x5d

    const/16 v7, 0x59

    const-string v9, "DELETE from albums"

    const-string v6, "UPDATE audio_meta SET date_modified=0;"

    .line 1274
    if-eq p3, v8, :cond_0

    .line 1275
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal update request. Got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1278
    :cond_0
    if-le p2, p3, :cond_1

    .line 1279
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal update request: can\'t downgrade from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Did you forget to wipe data?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1288
    :cond_1
    if-lt p2, v3, :cond_2

    const/16 v0, 0x54

    if-lt p2, v0, :cond_1f

    if-gt p2, v7, :cond_1f

    .line 1291
    :cond_2
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading media database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    const-string v0, "DROP TABLE IF EXISTS images"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1294
    const-string v0, "DROP TRIGGER IF EXISTS images_cleanup"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1295
    const-string v0, "DROP TABLE IF EXISTS thumbnails"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1296
    const-string v0, "DROP TRIGGER IF EXISTS thumbnails_cleanup"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1297
    const-string v0, "DROP TABLE IF EXISTS audio_meta"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1298
    const-string v0, "DROP TABLE IF EXISTS artists"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1299
    const-string v0, "DROP TABLE IF EXISTS albums"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1300
    const-string v0, "DROP TABLE IF EXISTS album_art"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1301
    const-string v0, "DROP VIEW IF EXISTS artist_info"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1302
    const-string v0, "DROP VIEW IF EXISTS album_info"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1303
    const-string v0, "DROP VIEW IF EXISTS artists_albums_map"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1304
    const-string v0, "DROP TRIGGER IF EXISTS audio_meta_cleanup"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1305
    const-string v0, "DROP TABLE IF EXISTS audio_genres"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1306
    const-string v0, "DROP TABLE IF EXISTS audio_genres_map"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1307
    const-string v0, "DROP TRIGGER IF EXISTS audio_genres_cleanup"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1308
    const-string v0, "DROP TABLE IF EXISTS audio_playlists"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1309
    const-string v0, "DROP TABLE IF EXISTS audio_playlists_map"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1310
    const-string v0, "DROP TRIGGER IF EXISTS audio_playlists_cleanup"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1311
    const-string v0, "DROP TRIGGER IF EXISTS albumart_cleanup1"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1312
    const-string v0, "DROP TRIGGER IF EXISTS albumart_cleanup2"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1313
    const-string v0, "DROP TABLE IF EXISTS video"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1314
    const-string v0, "DROP TRIGGER IF EXISTS video_cleanup"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1317
    const-string v0, "DROP TABLE IF EXISTS music_quick_list"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1318
    const-string v0, "DROP VIEW IF EXISTS music_quick_list_view"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1319
    const-string v0, "DROP TRIGGER IF EXISTS music_quick_list_cleanup"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1321
    const-string v0, "DROP VIEW IF EXISTS music_years_view"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1322
    const-string v0, "DROP VIEW IF EXISTS music_composers_view"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1323
    const-string v0, "DROP VIEW IF EXISTS music_genres_view"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1324
    const-string v0, "DROP VIEW IF EXISTS music_audio_order_album_key"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1325
    const-string v0, "DROP VIEW IF EXISTS music_artist_info"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1326
    const-string v0, "DROP VIEW IF EXISTS music_artist_info_except_audio"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1327
    const-string v0, "DROP VIEW IF EXISTS music_album_info"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1329
    const-string v0, "DROP TABLE IF EXISTS music_audio_playlists"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1330
    const-string v0, "DROP TABLE IF EXISTS music_audio_playlists_map"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1331
    const-string v0, "DROP TRIGGER IF EXISTS music_audio_playlists_cleanup"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1333
    const-string v0, "CREATE TABLE IF NOT EXISTS images (_id INTEGER PRIMARY KEY,_data TEXT,_size INTEGER,_display_name TEXT,mime_type TEXT,title TEXT,date_added INTEGER,date_modified INTEGER,description TEXT,picasa_id TEXT,isprivate INTEGER,latitude DOUBLE,longitude DOUBLE,datetaken INTEGER,orientation INTEGER,mini_thumb_magic INTEGER,bucket_id TEXT,bucket_display_name TEXT);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1354
    const-string v0, "CREATE INDEX IF NOT EXISTS mini_thumb_magic_index on images(mini_thumb_magic);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1356
    const-string v0, "CREATE TRIGGER IF NOT EXISTS images_cleanup DELETE ON images BEGIN DELETE FROM thumbnails WHERE image_id = old._id;SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1363
    const-string v0, "CREATE TABLE IF NOT EXISTS thumbnails (_id INTEGER PRIMARY KEY,_data TEXT,image_id INTEGER,kind INTEGER,width INTEGER,height INTEGER);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1372
    const-string v0, "CREATE INDEX IF NOT EXISTS image_id_index on thumbnails(image_id);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1374
    const-string v0, "CREATE TRIGGER IF NOT EXISTS thumbnails_cleanup DELETE ON thumbnails BEGIN SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1382
    const-string v0, "CREATE TABLE IF NOT EXISTS audio_meta (_id INTEGER PRIMARY KEY,_data TEXT UNIQUE NOT NULL,_display_name TEXT,_size INTEGER,mime_type TEXT,date_added INTEGER,date_modified INTEGER,title TEXT NOT NULL,title_key TEXT NOT NULL,title_search_key TEXT NOT NULL,duration INTEGER,artist_id INTEGER,composer TEXT,album_id INTEGER,track INTEGER,year INTEGER CHECK(year!=0),is_ringtone INTEGER,is_music INTEGER,is_alarm INTEGER,is_notification INTEGER);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1410
    const-string v0, "CREATE TABLE IF NOT EXISTS artists (artist_id INTEGER PRIMARY KEY,artist_key TEXT NOT NULL UNIQUE,artist_search_key TEXT NOT NULL,artist TEXT NOT NULL);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1422
    const-string v0, "CREATE TABLE IF NOT EXISTS albums (album_id INTEGER PRIMARY KEY,album_key TEXT NOT NULL UNIQUE,album_search_key TEXT NOT NULL,album TEXT NOT NULL);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1472
    const-string v0, "CREATE TABLE IF NOT EXISTS album_art (album_id INTEGER PRIMARY KEY,_data TEXT);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1478
    const-string v0, "CREATE TABLE IF NOT EXISTS music_quick_list (_id INTEGER PRIMARY KEY,audio_id INTEGER NOT NULL UNIQUE);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1483
    const-string v0, "CREATE TRIGGER IF NOT EXISTS music_quick_list_cleanup DELETE ON audio_meta BEGIN DELETE FROM music_quick_list WHERE audio_id = old._id;END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1488
    const-string v0, "ALTER TABLE audio_meta ADD COLUMN _data_hashcode INTEGER;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1489
    const-string v0, "ALTER TABLE audio_meta ADD COLUMN is_sound INTEGER default 0;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1490
    const-string v0, "ALTER TABLE audio_meta ADD COLUMN year_name TEXT;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1491
    const-string v0, "ALTER TABLE audio_meta ADD COLUMN genre_name TEXT;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1493
    const-string v0, "CREATE INDEX IF NOT EXISTS audio_data_hashcode_index on audio_meta(_data_hashcode);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1496
    const-string v0, "ALTER TABLE audio_meta ADD COLUMN title_focused_index TEXT;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1497
    const-string v0, "ALTER TABLE audio_meta ADD COLUMN composer_focused_index TEXT;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1499
    const-string v0, "ALTER TABLE albums ADD COLUMN album_focused_index TEXT;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1500
    const-string v0, "ALTER TABLE artists ADD COLUMN artist_focused_index TEXT;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1502
    const-string v0, "CREATE VIEW IF NOT EXISTS music_years_view AS select year, year_name, count(_id) as count, album_id from (select * from audio_meta WHERE is_music=1 AND is_sound=0 order by title_key desc) group by year_name;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1504
    const-string v0, "CREATE VIEW IF NOT EXISTS music_composers_view AS select composer, count(_id) as count, composer_focused_index, album_id from (select * from audio_meta WHERE is_music=1 AND is_sound=0 order by title_key desc) group by composer;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1506
    const-string v0, "CREATE VIEW IF NOT EXISTS music_genres_view AS select genre_name, count(_id) as count, album_id from (select * from audio_meta WHERE is_music=1 AND is_sound=0 order by title_key desc) group by genre_name;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1510
    invoke-static {p0}, Lcom/android/providers/media/MediaProvider;->recreateAudioView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1515
    const-string v0, "CREATE VIEW IF NOT EXISTS artist_info AS SELECT artist_id AS _id, artist, artist_key, COUNT(DISTINCT album) AS number_of_albums, COUNT(*) AS number_of_tracks FROM audio WHERE is_music=1 GROUP BY artist_key;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1522
    const-string v0, "CREATE VIEW IF NOT EXISTS album_info AS SELECT audio.album_id AS _id, album, album_key, MIN(year) AS minyear, MAX(year) AS maxyear, artist, artist_id, artist_key, count(*) AS numsongs,album_art._data AS album_art FROM audio LEFT OUTER JOIN album_art ON audio.album_id=album_art.album_id WHERE is_music=1 GROUP BY audio.album_id;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1532
    const-string v0, "CREATE VIEW IF NOT EXISTS music_artist_info_except_audio AS SELECT artist_id AS _id, artist, artist_key, COUNT(DISTINCT album) AS number_of_albums, COUNT(*) AS number_of_tracks FROM audio WHERE is_music=1 AND is_sound=0 GROUP BY artist_key;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1539
    const-string v0, "CREATE VIEW IF NOT EXISTS music_artist_info AS SELECT artist_id AS _id, artist, artist_key, artist_focused_index, album_id FROM music_audio_order_album_key WHERE is_music=1 AND is_sound=0 GROUP BY artist_key;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1545
    const-string v0, "CREATE VIEW IF NOT EXISTS music_album_info AS SELECT audio.album_id AS _id, album, album_key, album_focused_index, MIN(year) AS minyear, MAX(year) AS maxyear, artist, artist_id, artist_key, count(*) AS numsongs,album_art._data AS album_art FROM audio LEFT OUTER JOIN album_art ON audio.album_id=album_art.album_id WHERE is_music=1 AND is_sound=0 GROUP BY audio.album_id;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1554
    const-string v0, "CREATE VIEW IF NOT EXISTS music_quick_list_view AS select music_quick_list._id as _id, audio._id as audio_id, title, album, artist, album_id, _data from music_quick_list LEFT OUTER JOIN audio ON music_quick_list.audio_id = audio._id;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1563
    const-string v0, "CREATE VIEW IF NOT EXISTS artists_albums_map AS SELECT DISTINCT artist_id, album_id FROM audio_meta;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1569
    if-nez p1, :cond_3

    .line 1571
    const-string v0, "CREATE TRIGGER IF NOT EXISTS audio_meta_cleanup DELETE ON audio_meta BEGIN DELETE FROM audio_genres_map WHERE audio_id = old._id;DELETE FROM audio_playlists_map WHERE audio_id = old._id;END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1578
    const-string v0, "CREATE TABLE IF NOT EXISTS audio_genres (_id INTEGER PRIMARY KEY,name TEXT NOT NULL);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1584
    const-string v0, "CREATE TABLE IF NOT EXISTS audio_genres_map (_id INTEGER PRIMARY KEY,audio_id INTEGER NOT NULL,genre_id INTEGER NOT NULL);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1591
    const-string v0, "CREATE TRIGGER IF NOT EXISTS audio_genres_cleanup DELETE ON audio_genres BEGIN DELETE FROM audio_genres_map WHERE genre_id = old._id;END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1597
    const-string v0, "CREATE TABLE IF NOT EXISTS audio_playlists (_id INTEGER PRIMARY KEY,_data TEXT,name TEXT NOT NULL,date_added INTEGER,date_modified INTEGER);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1607
    const-string v0, "ALTER TABLE audio_playlists ADD COLUMN images_id INTERGER;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1608
    const-string v0, "ALTER TABLE audio_playlists ADD COLUMN thumbnail_uri TEXT;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1609
    const-string v0, "ALTER TABLE audio_playlists ADD COLUMN playlist_focused_index TEXT;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1613
    const-string v0, "CREATE TABLE IF NOT EXISTS audio_playlists_map (_id INTEGER PRIMARY KEY,audio_id INTEGER NOT NULL,playlist_id INTEGER NOT NULL,play_order INTEGER NOT NULL);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1621
    const-string v0, "CREATE TRIGGER IF NOT EXISTS audio_playlists_cleanup DELETE ON audio_playlists BEGIN DELETE FROM audio_playlists_map WHERE playlist_id = old._id;SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1630
    const-string v0, "CREATE TABLE IF NOT EXISTS music_audio_playlists (_id INTEGER PRIMARY KEY,_data TEXT,name TEXT NOT NULL,date_added INTEGER,date_modified INTEGER, images_id INTERGER, thumbnail_uri TEXT, playlist_focused_index TEXT );"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1642
    const-string v0, "CREATE TABLE IF NOT EXISTS music_audio_playlists_map (_id INTEGER PRIMARY KEY,audio_data TEXT NOT NULL, audio_data_hashcode INTEGER NOT NULL,playlist_id INTEGER NOT NULL,play_order INTEGER NOT NULL);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1650
    const-string v0, "CREATE INDEX IF NOT EXISTS audio_data_hashcode_maps_index on music_audio_playlists_map(audio_data_hashcode);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1653
    const-string v0, "CREATE TRIGGER IF NOT EXISTS music_audio_playlists_cleanup DELETE ON music_audio_playlists BEGIN DELETE FROM music_audio_playlists_map WHERE playlist_id = old._id;SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1662
    const-string v0, "CREATE TRIGGER IF NOT EXISTS albumart_cleanup1 DELETE ON albums BEGIN DELETE FROM album_art WHERE album_id = old.album_id;END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1668
    const-string v0, "CREATE TRIGGER IF NOT EXISTS albumart_cleanup2 DELETE ON album_art BEGIN SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1675
    :cond_3
    const-string v0, "CREATE TABLE IF NOT EXISTS video (_id INTEGER PRIMARY KEY,_data TEXT NOT NULL,_display_name TEXT,_size INTEGER,mime_type TEXT,date_added INTEGER,date_modified INTEGER,title TEXT,duration INTEGER,artist TEXT,album TEXT,resolution TEXT,description TEXT,isprivate INTEGER,tags TEXT,category TEXT,language TEXT,mini_thumb_data TEXT,latitude DOUBLE,longitude DOUBLE,datetaken INTEGER,mini_thumb_magic INTEGER);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1701
    const-string v0, "ALTER TABLE video ADD COLUMN remove INTEGER default 0;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1704
    const-string v0, "CREATE TRIGGER IF NOT EXISTS video_cleanup DELETE ON video BEGIN SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1712
    const-string v0, "CREATE TABLE IF NOT EXISTS videocall_images (_id INTEGER PRIMARY KEY,_data TEXT NOT NULL,_display_name TEXT,_size INTEGER,mime_type TEXT,date_added INTEGER,date_modified INTEGER,title TEXT,datetaken INTEGER);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1724
    const-string v0, "CREATE TRIGGER IF NOT EXISTS doc_cleanup DELETE ON videocall_images BEGIN SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1733
    const-string v0, "CREATE TABLE IF NOT EXISTS app_package (_id INTEGER PRIMARY KEY,_data TEXT NOT NULL,_display_name TEXT,_size INTEGER,mime_type TEXT,date_added INTEGER,date_modified INTEGER,title TEXT,package TEST,is_trusted INTEGER);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1746
    const-string v0, "CREATE TRIGGER IF NOT EXISTS app_package_cleanup DELETE ON app_package BEGIN SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move v0, v3

    .line 1759
    :goto_0
    const/16 v1, 0x40

    if-ge v0, v1, :cond_4

    .line 1761
    const-string v1, "CREATE INDEX IF NOT EXISTS sort_index on images(datetaken ASC, _id ASC);"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1768
    :cond_4
    const/16 v1, 0x41

    if-ge v0, v1, :cond_5

    .line 1770
    const-string v1, "CREATE INDEX IF NOT EXISTS titlekey_index on audio_meta(title_key);"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1776
    :cond_5
    const/16 v1, 0x43

    if-ge v0, v1, :cond_6

    .line 1778
    const-string v1, "CREATE INDEX IF NOT EXISTS albumkey_index on albums(album_key);"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1779
    const-string v1, "CREATE INDEX IF NOT EXISTS artistkey_index on artists(artist_key);"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1782
    :cond_6
    const/16 v1, 0x44

    if-ge v0, v1, :cond_7

    .line 1784
    const-string v1, "ALTER TABLE video ADD COLUMN bucket_id TEXT;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1785
    const-string v1, "ALTER TABLE video ADD COLUMN bucket_display_name TEXT"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1791
    :cond_7
    const/16 v1, 0x45

    if-ge v0, v1, :cond_8

    .line 1792
    const-string v1, "images"

    invoke-static {p0, v1}, Lcom/android/providers/media/MediaProvider;->updateDisplayName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1795
    :cond_8
    const/16 v1, 0x46

    if-ge v0, v1, :cond_9

    .line 1797
    const-string v1, "ALTER TABLE video ADD COLUMN bookmark INTEGER;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1800
    :cond_9
    const/16 v1, 0x47

    if-ge v0, v1, :cond_a

    .line 1807
    const-string v1, "UPDATE audio_meta SET date_modified=0 WHERE _id IN (SELECT _id FROM audio where mime_type=\'audio/mp4\' AND artist=\'<unknown>\' AND album=\'<unknown>\');"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1814
    :cond_a
    const/16 v1, 0x48

    if-ge v0, v1, :cond_b

    .line 1816
    const-string v1, "ALTER TABLE audio_meta ADD COLUMN is_podcast INTEGER;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1817
    const-string v1, "UPDATE audio_meta SET is_podcast=1 WHERE _data LIKE \'%/podcasts/%\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1818
    const-string v1, "UPDATE audio_meta SET is_music=0 WHERE is_podcast=1 AND _data NOT LIKE \'%/music/%\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1820
    const-string v1, "ALTER TABLE audio_meta ADD COLUMN bookmark INTEGER;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1823
    const-string v1, "ALTER TABLE audio_meta ADD COLUMN podcast TEXT;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1824
    const-string v1, "ALTER TABLE audio_meta ADD COLUMN recently_played INTEGER default 0;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1825
    const-string v1, "ALTER TABLE audio_meta ADD COLUMN most_played INTEGER default 0;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1826
    const-string v1, "ALTER TABLE audio_meta ADD COLUMN recently_added_remove_flag INTEGER default 0;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1828
    const-string v1, "ALTER TABLE audio_meta ADD COLUMN bucket_id TEXT;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1829
    const-string v1, "ALTER TABLE audio_meta ADD COLUMN bucket_display_name TEXT"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1830
    const-string v1, "audio_meta"

    invoke-static {p0, v1}, Lcom/android/providers/media/MediaProvider;->updateBucketNames(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1836
    invoke-static {p0}, Lcom/android/providers/media/MediaProvider;->recreateAudioView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1843
    :cond_b
    const/16 v1, 0x49

    if-ge v0, v1, :cond_c

    .line 1847
    const-string v1, "UPDATE audio_meta SET is_music=1 WHERE is_music=0 AND _data LIKE \'%/music/%\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1849
    const-string v1, "UPDATE audio_meta SET is_ringtone=1 WHERE is_ringtone=0 AND _data LIKE \'%/ringtones/%\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1851
    const-string v1, "UPDATE audio_meta SET is_notification=1 WHERE is_notification=0 AND _data LIKE \'%/notifications/%\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1853
    const-string v1, "UPDATE audio_meta SET is_alarm=1 WHERE is_alarm=0 AND _data LIKE \'%/alarms/%\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1855
    const-string v1, "UPDATE audio_meta SET is_podcast=1 WHERE is_podcast=0 AND _data LIKE \'%/podcasts/%\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1859
    :cond_c
    const/16 v1, 0x4a

    if-ge v0, v1, :cond_d

    .line 1864
    const-string v1, "CREATE VIEW IF NOT EXISTS searchhelpertitle AS SELECT * FROM audio ORDER BY title_key;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1867
    const-string v1, "CREATE VIEW IF NOT EXISTS search AS SELECT _id,\'artist\' AS mime_type,artist,NULL AS album,NULL AS title,artist AS text1,NULL AS text2,number_of_albums AS data1,number_of_tracks AS data2,artist_key AS match,\'content://media/external/audio/artists/\'||_id AS suggest_intent_data,1 AS grouporder FROM music_artist_info_except_audio WHERE (artist!=\'<unknown>\') UNION ALL SELECT _id,\'album\' AS mime_type,artist,album,NULL AS title,album AS text1,artist AS text2,NULL AS data1,NULL AS data2,artist_key||\' \'||album_key AS match,\'content://media/external/audio/albums/\'||_id AS suggest_intent_data,2 AS grouporder FROM music_album_info WHERE (album!=\'<unknown>\') UNION ALL SELECT searchhelpertitle._id AS _id,mime_type,artist,album,title,title AS text1,artist AS text2,NULL AS data1,NULL AS data2,artist_key||\' \'||album_key||\' \'||title_key AS match,\'content://media/external/audio/media/\'||searchhelpertitle._id AS suggest_intent_data,3 AS grouporder FROM searchhelpertitle WHERE (title != \'\' AND is_sound = 0) "

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1922
    :cond_d
    const/16 v1, 0x4b

    if-ge v0, v1, :cond_e

    .line 1925
    const-string v1, "UPDATE audio_meta SET date_modified=0;"

    invoke-virtual {p0, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1926
    const-string v1, "DELETE FROM albums"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1929
    :cond_e
    const/16 v1, 0x4c

    if-ge v0, v1, :cond_f

    .line 1932
    const-string v1, "UPDATE audio_meta SET title_key=REPLACE(title_key,x\'081D08C29F081D\',x\'081D\') WHERE title_key LIKE \'%\'||x\'081D08C29F081D\'||\'%\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1935
    const-string v1, "UPDATE albums SET album_key=REPLACE(album_key,x\'081D08C29F081D\',x\'081D\') WHERE album_key LIKE \'%\'||x\'081D08C29F081D\'||\'%\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1938
    const-string v1, "UPDATE artists SET artist_key=REPLACE(artist_key,x\'081D08C29F081D\',x\'081D\') WHERE artist_key LIKE \'%\'||x\'081D08C29F081D\'||\'%\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1946
    const-string v1, "UPDATE audio_meta SET title_search_key=REPLACE(title_search_key,x\'081D08C29F081D\',x\'081D\') WHERE title_search_key LIKE \'%\'||x\'081D08C29F081D\'||\'%\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1949
    const-string v1, "UPDATE albums SET album_search_key=REPLACE(album_search_key,x\'081D08C29F081D\',x\'081D\') WHERE album_search_key LIKE \'%\'||x\'081D08C29F081D\'||\'%\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1952
    const-string v1, "UPDATE artists SET artist_search_key=REPLACE(artist_search_key,x\'081D08C29F081D\',x\'081D\') WHERE artist_search_key LIKE \'%\'||x\'081D08C29F081D\'||\'%\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1964
    :cond_f
    const/16 v1, 0x4d

    if-ge v0, v1, :cond_10

    .line 1966
    const-string v1, "CREATE TABLE IF NOT EXISTS videothumbnails (_id INTEGER PRIMARY KEY,_data TEXT,video_id INTEGER,kind INTEGER,width INTEGER,height INTEGER);"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1975
    const-string v1, "CREATE INDEX IF NOT EXISTS video_id_index on videothumbnails(video_id);"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1977
    const-string v1, "CREATE TRIGGER IF NOT EXISTS videothumbnails_cleanup DELETE ON videothumbnails BEGIN SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1987
    :cond_10
    const/16 v1, 0x4e

    if-ge v0, v1, :cond_11

    .line 1990
    const-string v1, "UPDATE video SET date_modified=0;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1997
    :cond_11
    const/16 v1, 0x4e

    if-ge v0, v1, :cond_13

    .line 1998
    const-string v1, "ALTER TABLE audio_meta ADD COLUMN title_pinyin TEXT;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1999
    const-string v1, "ALTER TABLE audio_meta ADD COLUMN composer_pinyin TEXT;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2000
    const-string v1, "ALTER TABLE audio_meta ADD COLUMN genre_name_pinyin TEXT;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2001
    const-string v1, "ALTER TABLE audio_meta ADD COLUMN _display_name_pinyin TEXT;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2002
    const-string v1, "ALTER TABLE audio_meta ADD COLUMN bucket_display_name_pinyin TEXT;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2003
    const-string v1, "ALTER TABLE albums ADD COLUMN album_pinyin TEXT;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2004
    const-string v1, "ALTER TABLE artists ADD COLUMN artist_pinyin TEXT;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2006
    if-nez p1, :cond_12

    .line 2007
    const-string v1, "ALTER TABLE music_audio_playlists ADD COLUMN name_pinyin TEXT;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2010
    :cond_12
    const-string v1, "ALTER TABLE video ADD COLUMN title_pinyin TEXT;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2020
    :cond_13
    const/16 v1, 0x4f

    if-ge v0, v1, :cond_14

    .line 2025
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 2026
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/albumthumbs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2027
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "Android/data/com.android.providers.media/albumthumbs"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2028
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2029
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 2031
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2032
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 2033
    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2035
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE album_art SET _data=REPLACE(_data, \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\',\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2041
    :cond_14
    const/16 v1, 0x50

    if-ge v0, v1, :cond_15

    .line 2043
    const-string v1, "UPDATE images SET date_modified=0;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2046
    :cond_15
    const/16 v1, 0x51

    if-ge v0, v1, :cond_16

    if-nez p1, :cond_16

    .line 2054
    const-string v1, "UPDATE audio_playlists SET _data=\'////\' WHERE _data LIKE \'/mnt/sdcard/%\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2056
    const-string v1, "UPDATE music_audio_playlists SET _data=\'////\' WHERE _data LIKE \'/mnt/sdcard/%\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2057
    const-string v1, "UPDATE music_audio_playlists SET thumbnail_uri=\'////\' WHERE thumbnail_uri LIKE \'/mnt/sdcard/%\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2058
    const-string v1, "UPDATE music_audio_playlists_map SET audio_data=\'////\' WHERE audio_data LIKE \'/mnt/sdcard/%\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2060
    const-string v1, "UPDATE images SET _data=\'////\' WHERE _data LIKE \'/mnt/sdcard/%\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2061
    const-string v1, "UPDATE video SET _data=\'////\' WHERE _data LIKE \'/mnt/sdcard/%\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2062
    const-string v1, "UPDATE videothumbnails SET _data=\'////\' WHERE _data LIKE \'/mnt/sdcard/%\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2063
    const-string v1, "UPDATE thumbnails SET _data=\'////\' WHERE _data LIKE \'/mnt/sdcard/%\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2064
    const-string v1, "UPDATE album_art SET _data=\'////\' WHERE _data LIKE \'/mnt/sdcard/%\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2065
    const-string v1, "UPDATE audio_meta SET _data=\'////\' WHERE _data LIKE \'/mnt/sdcard/%\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2067
    const-string v1, "DELETE FROM audio_playlists WHERE _data IS \'////\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2069
    const-string v1, "DELETE FROM music_audio_playlists WHERE _data IS \'////\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2070
    const-string v1, "DELETE FROM music_audio_playlists WHERE thumbnail_uri IS \'////\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2071
    const-string v1, "DELETE FROM music_audio_playlists_map WHERE audio_data IS \'////\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2073
    const-string v1, "DELETE FROM images WHERE _data IS \'////\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2074
    const-string v1, "DELETE FROM video WHERE _data IS \'////\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2075
    const-string v1, "DELETE FROM videothumbnails WHERE _data IS \'////\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2076
    const-string v1, "DELETE FROM thumbnails WHERE _data IS \'////\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2077
    const-string v1, "DELETE FROM audio_meta WHERE _data  IS \'////\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2078
    const-string v1, "DELETE FROM album_art WHERE _data  IS \'////\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2082
    const-string v1, "UPDATE audio_meta SET _data=\'/sdcard/external_sd\'||SUBSTR(_data,11) WHERE _data LIKE \'/sdcard/sd/%\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2084
    const-string v1, "UPDATE audio_playlists SET _data=\'/sdcard/external_sd\'||SUBSTR(_data,11) WHERE _data LIKE \'/sdcard/sd/%\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2086
    const-string v1, "UPDATE music_audio_playlists SET _data=\'/sdcard/external_sd\'||SUBSTR(_data,11) WHERE _data LIKE \'/sdcard/sd/%\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2088
    const-string v1, "UPDATE music_audio_playlists SET thumbnail_uri=\'/sdcard/external_sd\'||SUBSTR(thumbnail_uri,11) WHERE thumbnail_uri LIKE \'/sdcard/sd/%\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2090
    const-string v1, "UPDATE music_audio_playlists_map SET audio_data=\'/sdcard/external_sd\'||SUBSTR(audio_data,11) WHERE audio_data LIKE \'/sdcard/sd/%\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2092
    const-string v1, "UPDATE images SET _data=\'/sdcard/external_sd\'||SUBSTR(_data,11) WHERE _data LIKE \'/sdcard/sd/%\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2094
    const-string v1, "UPDATE video SET _data=\'/sdcard/external_sd\'||SUBSTR(_data,11) WHERE _data LIKE \'/sdcard/sd/%\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2096
    const-string v1, "UPDATE videothumbnails SET _data=\'/sdcard/external_sd\'||SUBSTR(_data,11) WHERE _data LIKE \'/sdcard/sd/%\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2098
    const-string v1, "UPDATE thumbnails SET _data=\'/sdcard/external_sd\'||SUBSTR(_data,11) WHERE _data LIKE \'/sdcard/sd/%\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2100
    const-string v1, "UPDATE album_art SET _data=\'/sdcard/external_sd\'||SUBSTR(_data,11) WHERE _data LIKE \'/sdcard/sd/%\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2105
    const-string v1, "UPDATE audio_meta SET _data=\'/mnt/sdcard\'||SUBSTR(_data,8) WHERE _data LIKE \'/sdcard/%\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2107
    const-string v1, "UPDATE audio_playlists SET _data=\'/mnt/sdcard\'||SUBSTR(_data,8) WHERE _data LIKE \'/sdcard/%\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2110
    const-string v1, "UPDATE music_audio_playlists SET _data=\'/mnt/sdcard\'||SUBSTR(_data,8) WHERE _data LIKE \'/sdcard/%\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2112
    const-string v1, "UPDATE music_audio_playlists SET thumbnail_uri=\'/mnt/sdcard\'||SUBSTR(thumbnail_uri,8) WHERE thumbnail_uri LIKE \'/sdcard/%\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2114
    const-string v1, "UPDATE music_audio_playlists_map SET audio_data=\'/mnt/sdcard\'||SUBSTR(audio_data,8) WHERE audio_data LIKE \'/sdcard/%\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2117
    const-string v1, "UPDATE images SET _data=\'/mnt/sdcard\'||SUBSTR(_data,8) WHERE _data LIKE \'/sdcard/%\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2119
    const-string v1, "UPDATE video SET _data=\'/mnt/sdcard\'||SUBSTR(_data,8) WHERE _data LIKE \'/sdcard/%\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2121
    const-string v1, "UPDATE videothumbnails SET _data=\'/mnt/sdcard\'||SUBSTR(_data,8) WHERE _data LIKE \'/sdcard/%\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2123
    const-string v1, "UPDATE thumbnails SET _data=\'/mnt/sdcard\'||SUBSTR(_data,8) WHERE _data LIKE \'/sdcard/%\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2125
    const-string v1, "UPDATE album_art SET _data=\'/mnt/sdcard\'||SUBSTR(_data,8) WHERE _data LIKE \'/sdcard/%\';"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2133
    const-string v1, "DELETE from albums"

    invoke-virtual {p0, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2134
    const-string v1, "DELETE from artists"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2135
    const-string v1, "UPDATE audio_meta SET date_modified=0;"

    invoke-virtual {p0, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2138
    :cond_16
    const/16 v1, 0x52

    if-ge v0, v1, :cond_17

    .line 2140
    const-string v1, "DROP VIEW IF EXISTS artist_info"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2141
    const-string v1, "CREATE VIEW IF NOT EXISTS artist_info AS SELECT artist_id AS _id, artist, artist_key, COUNT(DISTINCT album_key) AS number_of_albums, COUNT(*) AS number_of_tracks FROM audio WHERE is_music=1 GROUP BY artist_key;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2150
    :cond_17
    const/16 v1, 0x57

    if-ge v0, v1, :cond_18

    .line 2154
    const-string v1, "CREATE INDEX IF NOT EXISTS title_idx on audio_meta(title);"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2155
    const-string v1, "CREATE INDEX IF NOT EXISTS artist_idx on artists(artist);"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2156
    const-string v1, "CREATE INDEX IF NOT EXISTS album_idx on albums(album);"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2159
    :cond_18
    const/16 v1, 0x58

    if-ge v0, v1, :cond_19

    .line 2162
    const-string v1, "DROP TRIGGER IF EXISTS albums_update1;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2163
    const-string v1, "DROP TRIGGER IF EXISTS albums_update2;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2164
    const-string v1, "DROP TRIGGER IF EXISTS albums_update3;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2165
    const-string v1, "DROP TRIGGER IF EXISTS albums_update4;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2166
    const-string v1, "DROP TRIGGER IF EXISTS artist_update1;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2167
    const-string v1, "DROP TRIGGER IF EXISTS artist_update2;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2168
    const-string v1, "DROP TRIGGER IF EXISTS artist_update3;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2169
    const-string v1, "DROP TRIGGER IF EXISTS artist_update4;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2170
    const-string v1, "DROP VIEw IF EXISTS album_artists;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2171
    const-string v1, "CREATE INDEX IF NOT EXISTS album_id_idx on audio_meta(album_id);"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2172
    const-string v1, "CREATE INDEX IF NOT EXISTS artist_id_idx on audio_meta(artist_id);"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2175
    const-string v1, "CREATE VIEW IF NOT EXISTS artists_albums_map AS SELECT DISTINCT artist_id, album_id FROM audio_meta;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2179
    :cond_19
    if-ge v0, v7, :cond_1a

    .line 2181
    const-string v1, "ALTER TABLE images ADD COLUMN micro_thumb_id INTEGER;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2182
    const-string v1, "ALTER TABLE images ADD COLUMN sd_serial TEXT;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2185
    const-string v1, "images"

    invoke-static {p0, v1}, Lcom/android/providers/media/MediaProvider;->updateBucketNames(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2186
    const-string v1, "video"

    invoke-static {p0, v1}, Lcom/android/providers/media/MediaProvider;->updateBucketNames(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2190
    const-string v1, "ALTER TABLE audio_meta ADD COLUMN bucket_display_name_focused_index TEXT;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2191
    invoke-static {p0}, Lcom/android/providers/media/MediaProvider;->recreateAudioView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2193
    const-string v1, "DROP VIEW IF EXISTS music_folders_view"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2194
    const-string v1, "CREATE VIEW IF NOT EXISTS music_folders_view AS SELECT bucket_id, bucket_display_name, album_id, bucket_display_name_focused_index FROM (SELECT bucket_id, bucket_display_name, album_id, bucket_display_name_focused_index, title_key FROM audio_meta WHERE is_music=1 AND is_sound=0 ORDER BY title_key desc) GROUP BY bucket_id;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2200
    if-nez p1, :cond_1a

    .line 2202
    const-string v1, "music_audio_playlists_map"

    const-string v2, "audio_data"

    const-string v3, "audio_data_hashcode"

    invoke-static {p0, v1, v2, v3}, Lcom/android/providers/media/MediaProvider;->updateHashcode(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2209
    :cond_1a
    if-ge v0, v7, :cond_1b

    .line 2213
    const-string v1, "DROP VIEW IF EXISTS music_artist_info_except_audio"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2214
    const-string v1, "DROP VIEW IF EXISTS music_audio_order_album_key"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2215
    const-string v1, "DROP VIEW IF EXISTS music_artist_info"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2217
    const-string v1, "CREATE VIEW IF NOT EXISTS music_artist_info_except_audio AS SELECT artist_id AS _id, artist, artist_key, artist_search_key,COUNT(DISTINCT album) AS number_of_albums, COUNT(*) AS number_of_tracks FROM audio WHERE is_music=1 AND is_sound=0 GROUP BY artist_key;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2228
    const-string v1, "CREATE VIEW IF NOT EXISTS music_audio_order_album_key AS SELECT audio_meta.artist_id as artist_id, artist, artist_key, artist_focused_index, artist_search_key,artist_pinyin,audio_meta.album_id as album_id, is_music, is_sound FROM audio_meta LEFT OUTER JOIN artists ON audio_meta.artist_id=artists.artist_id LEFT OUTER JOIN albums ON audio_meta.album_id=albums.album_id order by album_key desc;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2242
    const-string v1, "CREATE VIEW IF NOT EXISTS music_artist_info AS SELECT artist_id AS _id, artist, artist_key, artist_focused_index, artist_search_key,artist_pinyin,album_id FROM music_audio_order_album_key WHERE is_music=1 AND is_sound=0 GROUP BY artist_key;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2256
    const-string v1, "DROP VIEW IF EXISTS music_album_info"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2257
    const-string v1, "CREATE VIEW IF NOT EXISTS music_album_info AS SELECT audio.album_id AS _id, album, album_key, album_focused_index, album_search_key,album_pinyin,MIN(year) AS minyear, MAX(year) AS maxyear, artist, artist_id, artist_key, artist_search_key,count(*) AS numsongs,album_art._data AS album_art FROM audio LEFT OUTER JOIN album_art ON audio.album_id=album_art.album_id WHERE is_music=1 AND is_sound=0 GROUP BY audio.album_id;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2273
    const-string v1, "DROP VIEW IF EXISTS searchhelpertitle"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2274
    const-string v1, "DROP VIEW IF EXISTS search"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2276
    const-string v1, "CREATE VIEW IF NOT EXISTS searchhelpertitle AS SELECT * FROM audio ORDER BY title_search_key;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2284
    const-string v1, "CREATE VIEW IF NOT EXISTS search AS SELECT _id,\'artist\' AS mime_type,artist,NULL AS album,NULL AS title,artist AS text1,NULL AS text2,number_of_albums AS data1,number_of_tracks AS data2,artist_search_key AS matchCJK,artist_key AS match,\'content://media/external/audio/artists/\'||_id AS suggest_intent_data,1 AS grouporder FROM music_artist_info_except_audio WHERE (artist!=\'<unknown>\') UNION ALL SELECT _id,\'album\' AS mime_type,artist,album,NULL AS title,album AS text1,artist AS text2,NULL AS data1,NULL AS data2,artist_search_key||\' \'||album_search_key AS matchCJK,artist_key||\' \'||album_key AS match,\'content://media/external/audio/albums/\'||_id AS suggest_intent_data,2 AS grouporder FROM music_album_info WHERE (album!=\'<unknown>\') UNION ALL SELECT searchhelpertitle._id AS _id,mime_type,artist,album,title,title AS text1,artist AS text2,NULL AS data1,NULL AS data2,artist_search_key||\' \'||album_search_key||\' \'||title_search_key AS matchCJK,artist_key||\' \'||album_key||\' \'||title_key AS match,\'content://media/external/audio/media/\'||searchhelpertitle._id AS suggest_intent_data,3 AS grouporder FROM searchhelpertitle WHERE (title != \'\' AND is_sound = 0) "

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2354
    const-string v1, "DROP VIEW IF EXISTS music_folders_view"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2355
    const-string v1, "CREATE VIEW IF NOT EXISTS music_folders_view AS SELECT bucket_id, bucket_display_name, bucket_display_name_pinyin, album_id, bucket_display_name_focused_index FROM (SELECT bucket_id, bucket_display_name, bucket_display_name_pinyin, album_id, bucket_display_name_focused_index, _display_name FROM audio_meta WHERE is_music=1 AND is_sound=0 ORDER BY title_key desc) GROUP BY bucket_id;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2367
    const-string v1, "DROP VIEW IF EXISTS music_years_view"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2368
    const-string v1, "DROP VIEW IF EXISTS music_composers_view"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2369
    const-string v1, "DROP VIEW IF EXISTS music_genres_view"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2371
    const-string v1, "CREATE VIEW IF NOT EXISTS music_years_view AS select year, year_name, count(_id) AS count, album_id FROM (select * from audio_meta where is_music=1 AND is_sound=0 order by title_key desc) group by year_name;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2375
    const-string v1, "CREATE VIEW IF NOT EXISTS music_composers_view AS select composer, composer_pinyin, count(_id) as count, composer_focused_index, album_id from (select * from audio_meta WHERE is_music=1 AND is_sound=0 order by title_key desc) group by composer;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2377
    const-string v1, "CREATE VIEW IF NOT EXISTS music_genres_view AS select genre_name, genre_name_pinyin, count(_id) as count, album_id from (select * from audio_meta WHERE is_music=1 AND is_sound=0 order by title_key desc) group by genre_name;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2384
    :cond_1b
    const/16 v1, 0x5b

    if-ge v0, v1, :cond_1c

    .line 2386
    const-string v1, "DROP INDEX IF EXISTS mini_thumb_magic_index"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2389
    const-string v1, "CREATE INDEX IF NOT EXISTS image_bucket_index ON images(bucket_id, datetaken)"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2390
    const-string v1, "CREATE INDEX IF NOT EXISTS video_bucket_index ON video(bucket_id, datetaken)"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2393
    :cond_1c
    const/16 v1, 0x5c

    if-ge v0, v1, :cond_1e

    .line 2399
    const-string v1, "DELETE from albums"

    invoke-virtual {p0, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2400
    const-string v1, "DELETE from artists"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2401
    const-string v1, "UPDATE audio_meta SET date_modified=0;"

    invoke-virtual {p0, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2404
    const-string v1, "ALTER TABLE video ADD COLUMN resume_pos INTEGER default 0;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2405
    const-string v1, "ALTER TABLE video ADD COLUMN sync_time INTEGER default 0;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2406
    const-string v1, "ALTER TABLE video ADD COLUMN subtitle_lan TEXT;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2413
    :cond_1d
    :goto_1
    invoke-static {p0, v0}, Lcom/android/providers/media/MediaProvider;->sanityCheck(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 2414
    return-void

    .line 2407
    :cond_1e
    if-ge v0, v8, :cond_1d

    .line 2410
    const-string v1, "DELETE from albums"

    invoke-virtual {p0, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2411
    const-string v1, "UPDATE audio_meta SET date_modified=0;"

    invoke-virtual {p0, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    :cond_1f
    move v0, p2

    goto/16 :goto_0
.end method

.method private static updateDisplayName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const-string v0, "_id"

    const-string v0, "_display_name"

    const-string v0, "_data"

    .line 2538
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2540
    const/4 v0, 0x3

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "_display_name"

    aput-object v1, v2, v0

    .line 2541
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 2543
    :try_start_1
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 2544
    const-string v2, "_data"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 2545
    const-string v3, "_display_name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 2546
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2547
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2548
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2549
    if-nez v5, :cond_0

    .line 2550
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2551
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 2552
    invoke-static {v5, v4}, Lcom/android/providers/media/MediaProvider;->computeDisplayName(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 2553
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 2554
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0, p1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2558
    :catchall_0
    move-exception v1

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2562
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 2558
    :cond_1
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2560
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2562
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2564
    return-void
.end method

.method private static updateHashcode(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-string v0, "_id"

    .line 2418
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2420
    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    aput-object p2, v2, v0

    .line 2421
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 2423
    :try_start_1
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 2424
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 2425
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2426
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2427
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2430
    const-string v5, "audio_meta"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2431
    invoke-static {v3, v4}, Lcom/android/providers/media/MediaProvider;->computeBucketValues(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 2432
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, p3, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2434
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 2435
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2438
    :catchall_0
    move-exception v1

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2442
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 2438
    :cond_1
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2440
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2442
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2444
    return-void
.end method

.method private waitForThumbnailReady(Landroid/net/Uri;)Z
    .locals 11
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2745
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    const-string v0, "_data"

    aput-object v0, v2, v10

    const-string v0, "mini_thumb_magic"

    aput-object v0, v2, v7

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/media/MediaProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2747
    if-nez v6, :cond_0

    move v0, v9

    .line 2795
    :goto_0
    return v0

    .line 2751
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2752
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2753
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2754
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 2758
    const-wide/16 v7, 0x0

    cmp-long v0, v4, v7

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/media/MiniThumbFile;->instance(Landroid/net/Uri;)Landroid/media/MiniThumbFile;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v0, v2, v3, v7}, Landroid/media/MiniThumbFile;->getMagic(JLandroid/content/ContentResolver;)J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    .line 2762
    :cond_1
    iput-boolean v10, p0, Lcom/android/providers/media/MediaProvider;->ignoreSuspender:Z

    .line 2765
    const/4 v3, 0x5

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/media/MediaProvider;->requestMediaThumbnail(Ljava/lang/String;Landroid/net/Uri;IJ)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v0

    .line 2767
    if-nez v0, :cond_2

    move v0, v9

    .line 2768
    goto :goto_0

    .line 2770
    :cond_2
    monitor-enter v0

    .line 2772
    :goto_1
    :try_start_0
    iget-object v1, v0, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    sget-object v2, Lcom/android/providers/media/MediaThumbRequest$State;->WAIT:Lcom/android/providers/media/MediaThumbRequest$State;

    if-ne v1, v2, :cond_3

    .line 2773
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2775
    :catch_0
    move-exception v1

    .line 2776
    :try_start_1
    sget-object v2, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2778
    :cond_3
    iget-object v1, v0, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    sget-object v2, Lcom/android/providers/media/MediaThumbRequest$State;->DONE:Lcom/android/providers/media/MediaThumbRequest$State;

    if-ne v1, v2, :cond_5

    move v1, v10

    .line 2781
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2783
    iput-boolean v9, p0, Lcom/android/providers/media/MediaProvider;->ignoreSuspender:Z

    move v0, v1

    .line 2793
    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2781
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_4
    move v0, v10

    .line 2788
    goto :goto_3

    :cond_5
    move v1, v9

    goto :goto_2

    :cond_6
    move v0, v9

    goto :goto_3
.end method

.method private writeAlbumArt(ZLandroid/net/Uri;[BLandroid/graphics/Bitmap;)V
    .locals 7
    .parameter "need_to_recompress"
    .parameter "out"
    .parameter "compressed"
    .parameter "bm"

    .prologue
    const/4 v5, 0x0

    const-string v6, "error creating file"

    .line 5478
    const/4 v2, 0x0

    .line 5480
    .local v2, success:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 5482
    .local v1, outstream:Ljava/io/OutputStream;
    if-nez p1, :cond_1

    .line 5485
    invoke-virtual {v1, p3}, Ljava/io/OutputStream;->write([B)V

    .line 5486
    const/4 v2, 0x1

    .line 5491
    :goto_0
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5497
    .end local v1           #outstream:Ljava/io/OutputStream;
    :goto_1
    if-nez v2, :cond_0

    .line 5499
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p2, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5501
    :cond_0
    return-void

    .line 5488
    .restart local v1       #outstream:Ljava/io/OutputStream;
    :cond_1
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x4b

    invoke-virtual {p4, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    .line 5492
    .end local v1           #outstream:Ljava/io/OutputStream;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 5493
    .local v0, ex:Ljava/io/FileNotFoundException;
    sget-object v3, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v4, "error creating file"

    invoke-static {v3, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 5494
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 5495
    .local v0, ex:Ljava/io/IOException;
    sget-object v3, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v4, "error creating file"

    invoke-static {v3, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 4458
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v6}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v3

    .line 4459
    .local v3, ihelper:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v6}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v1

    .line 4460
    .local v1, ehelper:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    invoke-virtual {v3}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 4461
    .local v2, idb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 4462
    const/4 v0, 0x0

    .line 4463
    .local v0, edb:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v1, :cond_0

    .line 4464
    invoke-virtual {v1}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4465
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 4468
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v5

    .line 4469
    .local v5, result:[Landroid/content/ContentProviderResult;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 4470
    if-eqz v0, :cond_1

    .line 4471
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 4476
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 4477
    .local v4, res:Landroid/content/ContentResolver;
    const-string v6, "content://media/"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4480
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4481
    if-eqz v0, :cond_2

    .line 4482
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_2
    return-object v5

    .line 4480
    .end local v4           #res:Landroid/content/ContentResolver;
    .end local v5           #result:[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v6

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4481
    if-eqz v0, :cond_3

    .line 4482
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_3
    throw v6
.end method

.method public beginDBTransaction(Ljava/lang/String;)V
    .locals 7
    .parameter "volume"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 312
    const/4 v1, 0x0

    .line 313
    .local v1, database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    monitor-enter v4

    .line 314
    :try_start_0
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-object v1, v0

    .line 315
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    if-eqz v1, :cond_0

    .line 318
    invoke-virtual {v1}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 319
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    iput-object v2, p0, Lcom/android/providers/media/MediaProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 320
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 321
    iput-boolean v6, p0, Lcom/android/providers/media/MediaProvider;->inDBTransactionFromOutside:Z

    .line 322
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->needNotifyChange:[Z

    aput-boolean v5, v3, v5

    .line 323
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->needNotifyChange:[Z

    aput-boolean v5, v3, v6

    .line 325
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    return-void

    .line 315
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method buildAvailMicroThumbIdList(Ljava/lang/String;Z)V
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v2, "external"

    const-string v4, "/%\'"

    .line 6426
    .line 6427
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    monitor-enter v1

    .line 6428
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    .line 6429
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6432
    const-string v1, "external"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    .line 6433
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->sExternalSdAvailMicroThumbId:Ljava/util/LinkedList;

    .line 6434
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_data LIKE \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/providers/media/MediaProvider;->EXTERNAL_SD_ROOT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/%\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    move-object v8, v1

    .line 6446
    :goto_0
    monitor-enter v8

    .line 6447
    :try_start_1
    invoke-virtual {v8}, Ljava/util/LinkedList;->clear()V

    .line 6448
    if-eqz v0, :cond_a

    .line 6449
    invoke-virtual {v0}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 6456
    :try_start_2
    const-string v1, "images"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "micro_thumb_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "micro_thumb_id ASC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 6457
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5

    .line 6458
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6459
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v1

    .line 6461
    if-le v1, v10, :cond_0

    .line 6462
    :try_start_4
    new-instance v2, Lcom/android/providers/media/MediaProvider$availMicroThumbId;

    const/4 v3, 0x1

    sub-int v4, v1, v10

    invoke-direct {v2, p0, v3, v4}, Lcom/android/providers/media/MediaProvider$availMicroThumbId;-><init>(Lcom/android/providers/media/MediaProvider;II)V

    invoke-virtual {v8, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 6464
    :cond_0
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 6465
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 6466
    sub-int v3, v2, v1

    .line 6467
    if-le v3, v10, :cond_1

    .line 6468
    new-instance v4, Lcom/android/providers/media/MediaProvider$availMicroThumbId;

    add-int/lit8 v5, v1, 0x1

    sub-int/2addr v3, v10

    invoke-direct {v4, p0, v5, v3}, Lcom/android/providers/media/MediaProvider$availMicroThumbId;-><init>(Lcom/android/providers/media/MediaProvider;II)V

    invoke-virtual {v8, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    move v1, v2

    .line 6471
    goto :goto_1

    .line 6429
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 6435
    :cond_2
    const-string v1, "external"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6436
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->sExternalAvailMicroThumbId:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 6485
    :goto_2
    return-void

    .line 6439
    :cond_3
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->sExternalAvailMicroThumbId:Ljava/util/LinkedList;

    .line 6440
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_data NOT LIKE \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/providers/media/MediaProvider;->EXTERNAL_SD_ROOT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/%\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    move-object v8, v1

    goto/16 :goto_0

    .line 6442
    :cond_4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " ====> not implemented for internal database"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move v1, v9

    .line 6476
    :cond_6
    if-eqz v0, :cond_7

    .line 6477
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 6479
    :cond_7
    new-instance v0, Lcom/android/providers/media/MediaProvider$availMicroThumbId;

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/providers/media/MediaProvider$availMicroThumbId;-><init>(Lcom/android/providers/media/MediaProvider;II)V

    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 6484
    :goto_3
    monitor-exit v8

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 6473
    :catch_0
    move-exception v0

    move v1, v9

    move-object v2, v11

    .line 6474
    :goto_4
    :try_start_7
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " buildAvailMicroThumbIdList(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 6476
    if-eqz v2, :cond_8

    .line 6477
    :try_start_8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 6479
    :cond_8
    new-instance v0, Lcom/android/providers/media/MediaProvider$availMicroThumbId;

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/providers/media/MediaProvider$availMicroThumbId;-><init>(Lcom/android/providers/media/MediaProvider;II)V

    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 6476
    :catchall_2
    move-exception v0

    move v1, v9

    move-object v2, v11

    :goto_5
    if-eqz v2, :cond_9

    .line 6477
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 6479
    :cond_9
    new-instance v2, Lcom/android/providers/media/MediaProvider$availMicroThumbId;

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3}, Lcom/android/providers/media/MediaProvider$availMicroThumbId;-><init>(Lcom/android/providers/media/MediaProvider;II)V

    invoke-virtual {v8, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    throw v0

    .line 6482
    :cond_a
    new-instance v0, Lcom/android/providers/media/MediaProvider$availMicroThumbId;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/providers/media/MediaProvider$availMicroThumbId;-><init>(Lcom/android/providers/media/MediaProvider;II)V

    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3

    .line 6476
    :catchall_3
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move v1, v9

    goto :goto_5

    :catchall_4
    move-exception v2

    move-object v12, v2

    move-object v2, v0

    move-object v0, v12

    goto :goto_5

    :catchall_5
    move-exception v0

    goto :goto_5

    .line 6473
    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move v1, v9

    goto :goto_4

    :catch_2
    move-exception v2

    move-object v12, v2

    move-object v2, v0

    move-object v0, v12

    goto :goto_4
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 9
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 3657
    sget-object v6, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 3658
    .local v4, match:I
    const/16 v6, 0x12c

    if-ne v4, v6, :cond_0

    .line 3659
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v6

    .line 3685
    :goto_0
    return v6

    .line 3661
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v0

    .line 3662
    .local v0, database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    if-nez v0, :cond_1

    .line 3663
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown URI: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3666
    :cond_1
    invoke-virtual {v0}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3668
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v6, 0x6f

    if-eq v4, v6, :cond_2

    const/16 v6, 0x70

    if-ne v4, v6, :cond_3

    .line 3669
    :cond_2
    invoke-direct {p0, v1, p1, p2}, Lcom/android/providers/media/MediaProvider;->playlistBulkInsert(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v6

    goto :goto_0

    .line 3672
    :cond_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3673
    const/4 v5, 0x0

    .line 3675
    .local v5, numInserted:I
    :try_start_0
    array-length v3, p2

    .line 3676
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 3677
    aget-object v6, p2, v2

    invoke-direct {p0, p1, v6}, Lcom/android/providers/media/MediaProvider;->insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 3676
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3679
    :cond_4
    move v5, v3

    .line 3680
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3682
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3684
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move v6, v5

    .line 3685
    goto :goto_0

    .line 3682
    .end local v2           #i:I
    .end local v3           #len:I
    :catchall_0
    move-exception v6

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v6
.end method

.method public bulkInsert_GetUris(Landroid/net/Uri;[Landroid/content/ContentValues;[Landroid/net/Uri;)I
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const-string v1, "MediaScanner"

    .line 3692
    if-nez p1, :cond_0

    .line 3694
    const-string v0, "MediaScanner"

    const-string v0, "DB insert table is null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 3779
    :goto_0
    return v0

    .line 3697
    :cond_0
    if-eqz p2, :cond_1

    aget-object v0, p2, v6

    if-nez v0, :cond_2

    .line 3699
    :cond_1
    const-string v0, "MediaScanner"

    const-string v0, "No DB insert item"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 3700
    goto :goto_0

    .line 3703
    :cond_2
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 3704
    const/16 v1, 0x12c

    if-ne v0, v1, :cond_3

    .line 3705
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    goto :goto_0

    .line 3707
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v0

    .line 3708
    if-nez v0, :cond_4

    .line 3709
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3713
    :cond_4
    array-length v1, p2

    .line 3716
    if-eqz p3, :cond_d

    array-length v2, p3

    .line 3719
    :goto_1
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->mBulkInsertSyncLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3721
    :try_start_0
    invoke-virtual {v0}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3722
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3724
    const/4 v4, 0x0

    aget-object v4, p2, v4

    const-string v5, "_data"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3725
    if-eqz v4, :cond_a

    .line 3727
    sget-object v5, Lcom/android/providers/media/MediaProvider;->EXTERNAL_SD_ROOT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3729
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/providers/media/MediaProvider;->mBulkInsertSync:I

    .line 3730
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/providers/media/MediaProvider;->mBulkInsertSyncPrev:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    move v4, v6

    move v5, v6

    .line 3752
    :goto_3
    if-ge v4, v1, :cond_5

    .line 3753
    :try_start_1
    aget-object v6, p2, v4

    if-nez v6, :cond_b

    .line 3763
    :cond_5
    iget v1, p0, Lcom/android/providers/media/MediaProvider;->mBulkInsertSync:I

    if-lez v1, :cond_6

    .line 3765
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3768
    :cond_6
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3772
    iget v0, p0, Lcom/android/providers/media/MediaProvider;->mBulkInsertSync:I

    if-lez v0, :cond_7

    .line 3774
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3777
    :cond_7
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/media/MediaProvider;->mBulkInsertSync:I

    .line 3778
    monitor-exit v3

    move v0, v5

    .line 3779
    goto/16 :goto_0

    .line 3733
    :cond_8
    sget-object v5, Lcom/android/providers/media/MediaProvider;->INTERNAL_SD_ROOT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 3735
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/providers/media/MediaProvider;->mBulkInsertSync:I

    .line 3736
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/providers/media/MediaProvider;->mBulkInsertSyncPrev:I

    goto :goto_2

    .line 3778
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 3741
    :cond_9
    const/4 v4, 0x3

    :try_start_3
    iput v4, p0, Lcom/android/providers/media/MediaProvider;->mBulkInsertSync:I

    .line 3742
    const-string v4, "MediaScanner"

    const-string v5, "DB operation to unknown"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3747
    :cond_a
    iget v4, p0, Lcom/android/providers/media/MediaProvider;->mBulkInsertSyncPrev:I

    iput v4, p0, Lcom/android/providers/media/MediaProvider;->mBulkInsertSync:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 3754
    :cond_b
    :try_start_4
    iget v6, p0, Lcom/android/providers/media/MediaProvider;->mBulkInsertSync:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5

    .line 3756
    aget-object v6, p2, v4

    invoke-direct {p0, p1, v6}, Lcom/android/providers/media/MediaProvider;->insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 3757
    add-int/lit8 v5, v5, 0x1

    .line 3759
    if-eqz v6, :cond_c

    if-ge v4, v2, :cond_c

    .line 3760
    aput-object v6, p3, v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3752
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 3768
    :catchall_1
    move-exception v1

    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_d
    move v2, v6

    goto/16 :goto_1
.end method

.method public checkLowStorageSDforMedia()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 5278
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5280
    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 5282
    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    .line 5284
    :goto_0
    const-wide/32 v3, 0x500000

    cmp-long v3, v1, v3

    if-gez v3, :cond_1

    .line 5286
    sget-object v3, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Low Storage on external SD for thumbnail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x400

    div-long/2addr v1, v5

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "k"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 5295
    :goto_1
    return v0

    .line 5282
    :cond_0
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    int-to-long v4, v1

    mul-long v1, v2, v4

    goto :goto_0

    .line 5291
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 5293
    :catch_0
    move-exception v1

    .line 5294
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " checkLowStorageSDforMedia() for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v7

    .line 5295
    goto :goto_1
.end method

.method public checkLowStorageforMedia()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 5256
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    sget-object v1, Lcom/android/providers/media/MediaProvider;->mStorageDirectory:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 5257
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v3, v0

    mul-long v0, v1, v3

    .line 5259
    const-wide/32 v2, 0x500000

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 5261
    sget-object v2, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Low Storage for thumbnail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x400

    div-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "k"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v6

    .line 5270
    :goto_0
    return v0

    .line 5266
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 5268
    :catch_0
    move-exception v0

    .line 5269
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " checkLowStorageforMedia() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/providers/media/MediaProvider;->mStorageDirectory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v6

    .line 5270
    goto :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 19
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4776
    sget-object v5, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v11

    .line 4779
    const/16 v5, 0x1f4

    if-ne v11, v5, :cond_1

    .line 4780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    move-object v5, v0

    if-nez v5, :cond_0

    .line 4781
    const/4 v5, 0x0

    .line 4870
    :goto_0
    return v5

    .line 4783
    :cond_0
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    .line 4784
    const/4 v5, 0x1

    goto :goto_0

    .line 4787
    :cond_1
    sget-object v12, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    monitor-enter v12

    .line 4790
    const/16 v5, 0x12d

    if-eq v11, v5, :cond_b

    .line 4791
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v5

    .line 4792
    if-nez v5, :cond_2

    .line 4793
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4868
    :catchall_0
    move-exception v5

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 4796
    :cond_2
    :try_start_1
    invoke-virtual {v5}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    .line 4799
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move-object/from16 v3, p2

    move-object v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/media/MediaProvider;->getTableAndWhere(Landroid/net/Uri;ILjava/lang/String;Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;)V

    .line 4800
    sparse-switch v11, :sswitch_data_0

    .line 4844
    :cond_3
    :goto_1
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v5, v5, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v6, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v6, v6, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object v0, v13

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 4855
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/media/MediaProvider;->inDBTransactionFromOutside:Z

    move v6, v0

    if-eqz v6, :cond_4

    const/4 v6, 0x2

    if-eq v11, v6, :cond_9

    .line 4856
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, v6

    move-object/from16 v1, p1

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 4868
    :goto_3
    monitor-exit v12

    goto :goto_0

    .line 4803
    :sswitch_0
    const-string v5, "audio_meta"

    sget-object v6, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v6, v6, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object v0, v13

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    goto :goto_2

    .line 4809
    :sswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/media/MediaProvider;->inDBTransactionFromOutside:Z

    move v5, v0

    if-nez v5, :cond_3

    .line 4812
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 4813
    const-string v5, "external"

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4814
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v14

    .line 4815
    const/16 v16, 0x0

    .line 4818
    const/16 v17, 0x0

    .line 4820
    :try_start_2
    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "_data"

    aput-object v8, v7, v5

    const/4 v5, 0x1

    const-string v8, "micro_thumb_id"

    aput-object v8, v7, v5

    const-string v8, "_id=?"

    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/providers/media/MediaProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v5

    .line 4821
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    .line 4822
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4823
    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 4824
    const/4 v7, 0x0

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 4825
    sget-object v8, Lcom/android/providers/media/MediaProvider;->EXTERNAL_SD_ROOT:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 4826
    sget-object v7, Lcom/android/providers/media/MediaProvider;->EXTERNAL_SD_ROOT:Ljava/lang/String;

    invoke-static {v7}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v7

    sget-object v8, Lcom/android/providers/media/MediaProvider;->INTERNAL_SD_ROOT:Ljava/lang/String;

    invoke-static {v8}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v8

    if-ne v7, v8, :cond_6

    .line 4827
    const/4 v6, 0x0

    .line 4837
    if-eqz v5, :cond_5

    :try_start_4
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_5
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v5, v6

    goto/16 :goto_0

    .line 4829
    :cond_6
    const/4 v7, 0x1

    .line 4832
    :goto_4
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v7

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/media/MediaProvider;->updateAvailMicroThumbIdList(Ljava/lang/String;ZI)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_1

    .line 4837
    :cond_7
    if-eqz v5, :cond_3

    :try_start_6
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 4834
    :catch_0
    move-exception v5

    move-object/from16 v6, v16

    .line 4835
    :goto_5
    :try_start_7
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 4837
    if-eqz v6, :cond_3

    :try_start_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_1
    move-exception v5

    move-object/from16 v6, v16

    :goto_6
    if-eqz v6, :cond_8

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v5

    .line 4858
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 4859
    const-string v6, "external"

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v6, 0x1

    .line 4860
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider;->needNotifyChange:[Z

    move-object v7, v0

    const/4 v8, 0x1

    aput-boolean v8, v7, v6

    goto/16 :goto_3

    .line 4859
    :cond_a
    const/4 v6, 0x0

    goto :goto_7

    .line 4865
    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->detachVolume(Landroid/net/Uri;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 4866
    const/4 v5, 0x1

    goto/16 :goto_3

    .line 4837
    :catchall_2
    move-exception v6

    move-object/from16 v18, v6

    move-object v6, v5

    move-object/from16 v5, v18

    goto :goto_6

    :catchall_3
    move-exception v5

    goto :goto_6

    .line 4834
    :catch_1
    move-exception v6

    move-object/from16 v18, v6

    move-object v6, v5

    move-object/from16 v5, v18

    goto :goto_5

    :cond_c
    move/from16 v7, v17

    goto :goto_4

    .line 4800
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
    .end sparse-switch
.end method

.method public endDBTransaction()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v5, "external"

    .line 328
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 330
    iput-object v4, p0, Lcom/android/providers/media/MediaProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 333
    :cond_0
    iget-boolean v0, p0, Lcom/android/providers/media/MediaProvider;->inDBTransactionFromOutside:Z

    if-eqz v0, :cond_3

    .line 334
    iput-boolean v2, p0, Lcom/android/providers/media/MediaProvider;->inDBTransactionFromOutside:Z

    .line 336
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->needNotifyChange:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1

    .line 337
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "internal"

    invoke-static {v1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 338
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->needNotifyChange:[Z

    aput-boolean v2, v0, v2

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->needNotifyChange:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_2

    .line 341
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "external"

    invoke-static {v5}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 342
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->needNotifyChange:[Z

    aput-boolean v2, v0, v3

    .line 345
    :cond_2
    const-string v0, "external"

    invoke-virtual {p0, v5, v2}, Lcom/android/providers/media/MediaProvider;->buildAvailMicroThumbIdList(Ljava/lang/String;Z)V

    .line 346
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mSdSerial:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 347
    const-string v0, "external"

    invoke-virtual {p0, v5, v3}, Lcom/android/providers/media/MediaProvider;->buildAvailMicroThumbIdList(Ljava/lang/String;Z)V

    .line 350
    :cond_3
    return-void
.end method

.method findInsertPlaceInList(Ljava/util/LinkedList;I)I
    .locals 7
    .parameter
    .parameter "deleted_micro_thumb_id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/providers/media/MediaProvider$availMicroThumbId;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .local p1, AvailMicroThumbIdList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/providers/media/MediaProvider$availMicroThumbId;>;"
    const/4 v6, 0x1

    .line 6490
    const/4 v4, 0x0

    .line 6492
    .local v4, u:I
    :try_start_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v5

    sub-int v4, v5, v6

    .line 6493
    shr-int/lit8 v3, v4, 0x1

    .line 6495
    .local v3, s:I
    :cond_0
    if-gez v4, :cond_1

    const/4 v4, 0x0

    .line 6496
    :cond_1
    invoke-virtual {p1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/media/MediaProvider$availMicroThumbId;

    .line 6497
    .local v0, amt:Lcom/android/providers/media/MediaProvider$availMicroThumbId;
    invoke-virtual {v0}, Lcom/android/providers/media/MediaProvider$availMicroThumbId;->getAvailStart()I

    move-result v2

    .line 6498
    .local v2, idx:I
    if-le v2, p2, :cond_3

    .line 6499
    sub-int/2addr v4, v3

    .line 6504
    :cond_2
    :goto_0
    if-nez v3, :cond_0

    .line 6505
    sub-int v5, v4, v6

    .line 6507
    .end local v0           #amt:Lcom/android/providers/media/MediaProvider$availMicroThumbId;
    .end local v2           #idx:I
    .end local v3           #s:I
    :goto_1
    return v5

    .line 6500
    .restart local v0       #amt:Lcom/android/providers/media/MediaProvider$availMicroThumbId;
    .restart local v2       #idx:I
    .restart local v3       #s:I
    :cond_3
    if-ge v2, p2, :cond_2

    .line 6501
    add-int/2addr v4, v3

    .line 6502
    div-int/lit8 v3, v3, 0x2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6506
    .end local v0           #amt:Lcom/android/providers/media/MediaProvider$availMicroThumbId;
    .end local v2           #idx:I
    .end local v3           #s:I
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 6507
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const/4 v5, -0x1

    goto :goto_1
.end method

.method getAlbumArtOutputUri(Landroid/database/sqlite/SQLiteDatabase;JLandroid/net/Uri;)Landroid/net/Uri;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    const-string v1, "_data"

    .line 5442
    .line 5445
    if-eqz p4, :cond_3

    .line 5446
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v1, v2, v6

    move-object v0, p0

    move-object v1, p4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/media/MediaProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 5448
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5449
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5450
    invoke-direct {p0, v1}, Lcom/android/providers/media/MediaProvider;->ensureFileExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p4

    :goto_0
    move-object v2, p4

    .line 5456
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    move-object v1, v2

    .line 5458
    :goto_2
    if-nez v1, :cond_0

    .line 5459
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 5460
    const-string v2, "album_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5462
    const/4 v2, 0x0

    :try_start_0
    const-string v3, ""

    const-string v4, "Android/data/com.android.providers.media/albumthumbs"

    invoke-direct {p0, v2, v1, v3, v4}, Lcom/android/providers/media/MediaProvider;->ensureFile(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 5463
    const-string v2, "album_art"

    const-string v3, "_data"

    invoke-virtual {p1, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 5464
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 5465
    sget-object v3, Lcom/android/providers/media/MediaProvider;->ALBUMART_URI:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 5471
    :cond_0
    :goto_3
    return-object v0

    :cond_1
    move-object v1, v3

    move-object v2, v3

    .line 5454
    goto :goto_1

    .line 5467
    :catch_0
    move-exception v1

    .line 5468
    sget-object v1, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v2, "error creating album thumb file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    move-object v1, v3

    goto :goto_0

    :cond_3
    move-object v0, v3

    move-object v1, p4

    goto :goto_2
.end method

.method getNextAvailMicroThumbId(Ljava/lang/String;Z)I
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const-string v2, "external"

    .line 6595
    const-string v0, "external"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 6596
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->sExternalSdAvailMicroThumbId:Ljava/util/LinkedList;

    .line 6603
    :goto_0
    monitor-enter v0

    .line 6605
    :try_start_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 6606
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/media/MediaProvider;->buildAvailMicroThumbIdList(Ljava/lang/String;Z)V

    .line 6609
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/providers/media/MediaProvider$availMicroThumbId;

    .line 6610
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider$availMicroThumbId;->getAvailStart()I

    move-result v1

    .line 6611
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider$availMicroThumbId;->getAvailNextN()I

    move-result v2

    .line 6612
    if-nez v2, :cond_3

    .line 6613
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Lcom/android/providers/media/MediaProvider$availMicroThumbId;->setAvailStart(I)V

    .line 6620
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    :goto_2
    return v0

    .line 6597
    :cond_1
    const-string v0, "external"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6598
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->sExternalAvailMicroThumbId:Ljava/util/LinkedList;

    goto :goto_0

    :cond_2
    move v0, v1

    .line 6600
    goto :goto_2

    .line 6614
    :cond_3
    if-ne v2, v4, :cond_4

    .line 6615
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 6621
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 6617
    :cond_4
    add-int/lit8 v3, v1, 0x1

    :try_start_2
    invoke-virtual {p0, v3}, Lcom/android/providers/media/MediaProvider$availMicroThumbId;->setAvailStart(I)V

    .line 6618
    sub-int/2addr v2, v4

    invoke-virtual {p0, v2}, Lcom/android/providers/media/MediaProvider$availMicroThumbId;->setAvailNextN(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public getSdSerial()Ljava/lang/String;
    .locals 4

    .prologue
    .line 5844
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 5845
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 5848
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5849
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->getStorageSerialNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5851
    sget-object v1, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MountService returned externalSd Serial Number : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5853
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5854
    const/4 v0, 0x0

    .line 5856
    :cond_1
    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .parameter "url"

    .prologue
    const/4 v8, 0x1

    .line 3518
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 3582
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3524
    :sswitch_0
    const/4 v6, 0x0

    .line 3526
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcom/android/providers/media/MediaProvider;->MIME_TYPE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/media/MediaProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3527
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_2

    .line 3528
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3529
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3530
    .local v7, mimeType:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->deactivate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3534
    if-eqz v6, :cond_1

    .line 3535
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v7

    .line 3578
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #mimeType:Ljava/lang/String;
    :goto_1
    return-object v0

    .line 3534
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_2
    if-eqz v6, :cond_0

    .line 3535
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3534
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 3535
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 3542
    .end local v6           #c:Landroid/database/Cursor;
    :sswitch_1
    const-string v0, "vnd.android.cursor.dir/image"

    goto :goto_1

    .line 3544
    :sswitch_2
    const-string v0, "image/jpeg"

    goto :goto_1

    .line 3549
    :sswitch_3
    const-string v0, "vnd.android.cursor.dir/audio"

    goto :goto_1

    .line 3553
    :sswitch_4
    const-string v0, "vnd.android.cursor.dir/genre"

    goto :goto_1

    .line 3556
    :sswitch_5
    const-string v0, "vnd.android.cursor.item/genre"

    goto :goto_1

    .line 3559
    :sswitch_6
    const-string v0, "vnd.android.cursor.dir/playlist"

    goto :goto_1

    .line 3562
    :sswitch_7
    const-string v0, "vnd.android.cursor.item/playlist"

    goto :goto_1

    .line 3565
    :sswitch_8
    const-string v0, "vnd.android.cursor.dir/video"

    goto :goto_1

    .line 3571
    :sswitch_9
    const-string v0, "vnd.android.cursor.dir/videocallimages"

    goto :goto_1

    .line 3578
    :sswitch_a
    const-string v0, "vnd.android.cursor.dir/apppackage"

    goto :goto_1

    .line 3518
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x64 -> :sswitch_3
        0x65 -> :sswitch_0
        0x66 -> :sswitch_4
        0x67 -> :sswitch_5
        0x68 -> :sswitch_6
        0x69 -> :sswitch_7
        0x6a -> :sswitch_4
        0x6b -> :sswitch_5
        0x6c -> :sswitch_3
        0x6d -> :sswitch_0
        0x6e -> :sswitch_6
        0x6f -> :sswitch_7
        0x70 -> :sswitch_3
        0x71 -> :sswitch_0
        0xc8 -> :sswitch_8
        0xc9 -> :sswitch_0
        0x2bc -> :sswitch_a
        0x320 -> :sswitch_9
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    .line 3787
    invoke-direct {p0, p1, p2}, Lcom/android/providers/media/MediaProvider;->insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 3788
    .local v0, newUri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 3789
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3791
    :cond_0
    return-object v0
.end method

.method public lastSdCardRemovedAfterPowerOff()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 6248
    .line 6249
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    monitor-enter v0

    .line 6250
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    const-string v2, "external"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    .line 6251
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6252
    if-eqz p0, :cond_4

    .line 6253
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6256
    const/4 v1, 0x1

    :try_start_1
    const-string v2, "images"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "sd_serial"

    aput-object v5, v3, v4

    const-string v4, "sd_serial LIKE \'external_0x%\'"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 6257
    if-eqz v0, :cond_1

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 6258
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6259
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    .line 6267
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v1

    .line 6270
    :goto_0
    return-object v0

    .line 6251
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 6267
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v10

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    move-object v0, v10

    .line 6270
    goto :goto_0

    .line 6264
    :catch_0
    move-exception v0

    move-object v1, v10

    .line 6265
    :goto_2
    :try_start_4
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " lastSdCardRemovedAfterPowerOff(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 6267
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v10

    :goto_3
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :catchall_2
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_3

    .line 6264
    :catch_1
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_2
.end method

.method makeBestName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x2c

    .line 5772
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_2

    move-object v0, p1

    .line 5784
    :goto_0
    const-string v1, ", the"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ",the"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ", an"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ",an"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ", a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ",a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5787
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 5788
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5792
    :cond_1
    return-object v0

    .line 5776
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    move-object v0, p1

    .line 5777
    goto :goto_0

    :cond_3
    move-object v0, p2

    .line 5779
    goto :goto_0
.end method

.method public modifyDBCleanupTrigger(IZ)V
    .locals 0
    .parameter "table"
    .parameter "isOriginal"

    .prologue
    .line 359
    packed-switch p1, :pswitch_data_0

    .line 377
    :goto_0
    return-void

    .line 361
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/android/providers/media/MediaProvider;->modifyImageCleanupTrigger(Z)V

    goto :goto_0

    .line 364
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/android/providers/media/MediaProvider;->modifyThumbnailCleanupTrigger(Z)V

    goto :goto_0

    .line 367
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/android/providers/media/MediaProvider;->modifyVideoCleanupTrigger(Z)V

    goto :goto_0

    .line 370
    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/android/providers/media/MediaProvider;->modifyImageCleanupTrigger(Z)V

    .line 371
    invoke-virtual {p0, p2}, Lcom/android/providers/media/MediaProvider;->modifyThumbnailCleanupTrigger(Z)V

    .line 372
    invoke-virtual {p0, p2}, Lcom/android/providers/media/MediaProvider;->modifyVideoCleanupTrigger(Z)V

    goto :goto_0

    .line 359
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public modifyImageCleanupTrigger(Z)V
    .locals 2
    .parameter

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 420
    :goto_0
    return-void

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TRIGGER IF EXISTS images_cleanup"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 408
    if-eqz p1, :cond_1

    .line 409
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TRIGGER IF NOT EXISTS images_cleanup DELETE ON images BEGIN DELETE FROM thumbnails WHERE image_id = old._id;SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TRIGGER IF NOT EXISTS images_cleanup DELETE ON images BEGIN DELETE FROM thumbnails WHERE image_id = old._id;END"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public modifyThumbnailCleanupTrigger(Z)V
    .locals 1
    .parameter "isOriginal"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v0, p1}, Lcom/android/providers/media/MediaProvider;->createDropThumbnailCleanupTrigger(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 424
    return-void
.end method

.method public modifyVideoCleanupTrigger(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 384
    if-nez p1, :cond_0

    .line 400
    :goto_0
    return-void

    .line 388
    :cond_0
    const-string v0, "DROP TRIGGER IF EXISTS video_cleanup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 389
    if-eqz p2, :cond_1

    .line 390
    const-string v0, "CREATE TRIGGER IF NOT EXISTS video_cleanup DELETE ON video BEGIN SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 395
    :cond_1
    const-string v0, "CREATE TRIGGER IF NOT EXISTS video_cleanup DELETE ON video BEGIN DELETE FROM videothumbnails WHERE video_id = old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public modifyVideoCleanupTrigger(Z)V
    .locals 1
    .parameter "isOriginal"

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v0, p1}, Lcom/android/providers/media/MediaProvider;->modifyVideoCleanupTrigger(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 381
    return-void
.end method

.method public onCreate()Z
    .locals 8

    .prologue
    const/4 v5, 0x5

    const-string v7, "artist_key"

    const-string v6, "album_key"

    const-string v4, "album"

    const-string v3, "artist"

    .line 1045
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v1, "MediaProvider onCreate called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    sget-object v0, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "audio.album_id AS _id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    sget-object v0, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v1, "album"

    const-string v1, "album"

    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    sget-object v0, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v1, "album_key"

    const-string v1, "album_key"

    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    sget-object v0, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v1, "minyear"

    const-string v2, "MIN(year) AS minyear"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    sget-object v0, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v1, "maxyear"

    const-string v2, "MAX(year) AS maxyear"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    sget-object v0, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v1, "artist"

    const-string v1, "artist"

    invoke-virtual {v0, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    sget-object v0, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v1, "artist_id"

    const-string v2, "artist"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    sget-object v0, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v1, "artist_key"

    const-string v1, "artist_key"

    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    sget-object v0, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v1, "numsongs"

    const-string v2, "count(*) AS numsongs"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    sget-object v0, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v1, "album_art"

    const-string v2, "album_art._data AS album_art"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mSearchColsBasic:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mSearchColsBasic:[Ljava/lang/String;

    aget-object v1, v1, v5

    const-string v2, "%1"

    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f040002

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 1066
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    .line 1067
    const-string v0, "internal"

    invoke-direct {p0, v0}, Lcom/android/providers/media/MediaProvider;->attachVolume(Ljava/lang/String;)Landroid/net/Uri;

    .line 1069
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1070
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1072
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1073
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1074
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1076
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1077
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1079
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1080
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1081
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1082
    const-string v1, "android.intent.action.ACTION_MEDIA_SCANNER_PROGRESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1083
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1084
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1087
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1088
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1089
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1093
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 1094
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1096
    :cond_0
    const-string v0, "external"

    invoke-direct {p0, v0}, Lcom/android/providers/media/MediaProvider;->attachVolume(Ljava/lang/String;)Landroid/net/Uri;

    .line 1100
    :cond_1
    new-instance v0, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;-><init>(Lcom/android/providers/media/MediaProvider;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mThumbWorkerSuspender:Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;

    .line 1102
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "thumbs thread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 1103
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1104
    new-instance v1, Lcom/android/providers/media/MediaProvider$5;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/providers/media/MediaProvider$5;-><init>(Lcom/android/providers/media/MediaProvider;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/providers/media/MediaProvider;->mThumbHandler:Landroid/os/Handler;

    .line 1221
    invoke-direct {p0}, Lcom/android/providers/media/MediaProvider;->cancelNotification()V

    .line 1223
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    const-string v5, "  "

    .line 5174
    .line 5176
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x79

    if-ne v0, v1, :cond_2

    .line 5178
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v0

    .line 5179
    if-nez v0, :cond_0

    .line 5180
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t open database for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5182
    :cond_0
    invoke-virtual {v0}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 5183
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 5184
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 5185
    const-string v4, "audio_meta"

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 5186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 5187
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v2, v10

    const-string v4, "album_id"

    aput-object v4, v2, v11

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 5192
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5193
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 5194
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 5198
    sget-object v4, Lcom/android/providers/media/MediaProvider;->ALBUMART_URI:Landroid/net/Uri;

    int-to-long v7, v2

    invoke-static {v4, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 5200
    :try_start_0
    invoke-virtual {p0, v4, p2}, Lcom/android/providers/media/MediaProvider;->openFileHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 5206
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 5250
    :cond_1
    :goto_1
    return-object v0

    .line 5201
    :catch_0
    move-exception v4

    .line 5203
    int-to-long v7, v2

    move-object v4, p0

    move-object v5, v1

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/providers/media/MediaProvider;->getThumb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JLandroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    goto :goto_0

    .line 5211
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/media/MediaProvider;->openFileHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    goto :goto_1

    .line 5214
    :catch_1
    move-exception v0

    .line 5215
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQL exception during opening file  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=> FileNotFoundException will be thrown "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5216
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQL exception during opening file  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5219
    :catch_2
    move-exception v8

    .line 5220
    const-string v0, "w"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5222
    throw v8

    .line 5225
    :cond_3
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x78

    if-ne v0, v1, :cond_6

    .line 5227
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v0

    .line 5228
    if-nez v0, :cond_4

    .line 5229
    throw v8

    .line 5231
    :cond_4
    invoke-virtual {v0}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 5232
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 5233
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 5234
    const-string v2, "audio_meta"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 5235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "album_id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 5236
    new-array v2, v11, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5240
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5241
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5242
    int-to-long v3, v9

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/media/MediaProvider;->getThumb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JLandroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 5244
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5246
    :goto_3
    if-nez v0, :cond_1

    .line 5247
    throw v8

    :cond_5
    move-object v0, v3

    goto :goto_2

    :cond_6
    move-object v0, v3

    goto :goto_3

    :cond_7
    move-object v1, v3

    goto/16 :goto_0
.end method

.method putContentValues(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;II)V
    .locals 2
    .parameter "cv"
    .parameter "key"
    .parameter "c"
    .parameter "inx"
    .parameter "choice"

    .prologue
    .line 5862
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/4 v0, -0x1

    if-ne p4, v0, :cond_1

    .line 5882
    :cond_0
    :goto_0
    return-void

    .line 5866
    :cond_1
    packed-switch p5, :pswitch_data_0

    goto :goto_0

    .line 5868
    :pswitch_0
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5871
    :pswitch_1
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 5874
    :pswitch_2
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 5877
    :pswitch_3
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_0

    .line 5866
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2902
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v10

    .line 2906
    const/16 v0, 0x1f4

    if-ne v10, v0, :cond_2

    .line 2907
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2908
    const/4 v0, 0x0

    .line 3309
    :cond_0
    :goto_0
    return-object v0

    .line 2911
    :cond_1
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "volume"

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2912
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 2920
    :cond_2
    const/16 v0, 0x258

    if-ne v10, v0, :cond_3

    .line 2921
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "fsid"

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2922
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/providers/media/MediaProvider;->mVolumeId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 2928
    :cond_3
    const-string v0, "groupBy"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2930
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v0

    .line 2931
    if-nez v0, :cond_4

    .line 2932
    const/4 v0, 0x0

    goto :goto_0

    .line 2934
    :cond_4
    invoke-virtual {v0}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 2935
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2936
    const-string v0, "limit"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2937
    const-string v0, "filter"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2938
    const/4 v2, 0x0

    .line 2939
    if-eqz v0, :cond_5

    .line 2940
    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2941
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2942
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2943
    array-length v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 2944
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v3

    .line 2945
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/text/Collator;->setStrength(I)V

    .line 2946
    const/4 v3, 0x0

    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_5

    .line 2947
    aget-object v4, v0, v3

    invoke-static {v4}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2948
    const-string v5, "\\"

    const-string v7, "\\\\"

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 2949
    const-string v5, "%"

    const-string v7, "\\%"

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 2950
    const-string v5, "_"

    const-string v7, "\\_"

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 2951
    aput-object v4, v2, v3

    .line 2946
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2956
    :cond_5
    const/4 v0, 0x0

    .line 2958
    sparse-switch v10, :sswitch_data_0

    .line 3298
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2960
    :sswitch_0
    const-string v0, "images"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2961
    const-string v0, "distinct"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2962
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 3302
    :cond_6
    :goto_2
    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p5

    move-object v9, v11

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3305
    if-eqz v0, :cond_0

    .line 3306
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 2969
    :sswitch_1
    const-string v0, "images"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2970
    const-string v0, "distinct"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2971
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 2975
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 2979
    :sswitch_2
    const/4 v0, 0x1

    move v5, v0

    .line 2981
    :goto_3
    const-string v3, "thumbnails"

    const-string v4, "image_id"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/media/MediaProvider;->queryThumbnail(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2982
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2987
    :sswitch_3
    if-eqz p2, :cond_9

    array-length v0, p2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_9

    if-nez p4, :cond_9

    if-eqz p3, :cond_8

    const-string v0, "is_music=1"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "is_podcast=1"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    const/4 v0, 0x0

    aget-object v0, p2, v0

    const-string v3, "count(*)"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v2, :cond_9

    .line 2993
    const-string v0, "audio_meta"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2995
    :cond_9
    const-string v0, "audio"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2996
    const/4 v0, 0x0

    :goto_4
    if-eqz v2, :cond_6

    array-length v3, v2

    if-ge v0, v3, :cond_6

    .line 2997
    if-lez v0, :cond_a

    .line 2998
    const-string v3, " AND "

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3000
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "artist_key||album_key||title_key LIKE \'%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\' ESCAPE \'\\\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2996
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3009
    :sswitch_4
    const-string v0, "audio"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3010
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 3014
    :sswitch_5
    const-string v0, "audio_genres"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id IN (SELECT genre_id FROM audio_genres_map WHERE audio_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 3021
    :sswitch_6
    const-string v0, "audio_genres"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 3026
    :sswitch_7
    const-string v0, "audio_playlists"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id IN (SELECT playlist_id FROM audio_playlists_map WHERE audio_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 3033
    :sswitch_8
    const-string v0, "audio_playlists"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3034
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 3038
    :sswitch_9
    const-string v0, "audio_genres"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3042
    :sswitch_a
    const-string v0, "audio_genres"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3043
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 3047
    :sswitch_b
    const-string v0, "audio"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3048
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id IN (SELECT audio_id FROM audio_genres_map WHERE genre_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 3054
    :sswitch_c
    const-string v0, "audio"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3055
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 3059
    :sswitch_d
    const-string v0, "audio_playlists"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3063
    :sswitch_e
    const-string v0, "audio_playlists"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 3068
    :sswitch_f
    if-eqz p2, :cond_c

    .line 3069
    const/4 v0, 0x0

    :goto_5
    array-length v3, p2

    if-ge v0, v3, :cond_c

    .line 3070
    aget-object v3, p2, v0

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3071
    const-string v3, "audio_playlists_map._id AS _id"

    aput-object v3, p2, v0

    .line 3069
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3075
    :cond_c
    const-string v0, "audio_playlists_map, audio"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3076
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio._id = audio_id AND playlist_id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3078
    const/4 v0, 0x0

    :goto_6
    if-eqz v2, :cond_6

    array-length v3, v2

    if-ge v0, v3, :cond_6

    .line 3079
    const-string v3, " AND "

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3080
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "artist_key||album_key||title_key LIKE \'%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\' ESCAPE \'\\\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3078
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 3088
    :sswitch_10
    const-string v0, "audio"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 3094
    :sswitch_11
    const-string v0, "music_audio_playlists"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3098
    :sswitch_12
    const-string v0, "music_audio_playlists"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3099
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 3103
    :sswitch_13
    if-eqz p2, :cond_11

    .line 3104
    const/4 v0, 0x0

    :goto_7
    array-length v2, p2

    if-ge v0, v2, :cond_11

    .line 3105
    aget-object v2, p2, v0

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3106
    const-string v2, "music_audio_playlists_map._id AS _id"

    aput-object v2, p2, v0

    .line 3104
    :cond_d
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3107
    :cond_e
    aget-object v2, p2, v0

    const-string v3, "audio_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3108
    const-string v2, "audio_meta._id AS audio_id"

    aput-object v2, p2, v0

    goto :goto_8

    .line 3109
    :cond_f
    aget-object v2, p2, v0

    const-string v3, "_data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 3110
    const-string v2, "music_audio_playlists_map.audio_data AS _data"

    aput-object v2, p2, v0

    goto :goto_8

    .line 3111
    :cond_10
    aget-object v2, p2, v0

    const-string v3, "album_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3112
    const-string v2, "audio_meta.album_id AS album_id"

    aput-object v2, p2, v0

    goto :goto_8

    .line 3120
    :cond_11
    const-string v0, "music_audio_playlists_map LEFT OUTER JOIN audio_meta ON music_audio_playlists_map.audio_data_hashcode = audio_meta._data_hashcode LEFT OUTER JOIN artists ON audio_meta.artist_id=artists.artist_id LEFT OUTER JOIN albums ON audio_meta.album_id=albums.album_id"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playlist_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 3128
    :sswitch_14
    const-string v0, "music_quick_list_view"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3132
    :sswitch_15
    const-string v0, "music_years_view"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3136
    :sswitch_16
    const-string v0, "music_composers_view"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3140
    :sswitch_17
    const-string v0, "music_genres_view"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3144
    :sswitch_18
    const-string v0, "music_artist_info"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3148
    :sswitch_19
    const-string v0, "music_album_info"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3152
    :sswitch_1a
    const-string v0, "music_folders_view"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3156
    :sswitch_1b
    const-string v0, "video"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3157
    const-string v0, "distinct"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3158
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    goto/16 :goto_2

    .line 3162
    :sswitch_1c
    const-string v0, "video"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3163
    const-string v0, "distinct"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 3164
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 3166
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 3170
    :sswitch_1d
    const/4 v0, 0x1

    move v5, v0

    .line 3172
    :goto_9
    const-string v3, "videothumbnails"

    const-string v4, "video_id"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/media/MediaProvider;->queryThumbnail(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    .line 3173
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 3181
    :sswitch_1e
    const-string v0, "videocall_images"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3184
    :sswitch_1f
    const-string v0, "videocall_images"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 3193
    :sswitch_20
    if-eqz p2, :cond_14

    array-length v0, p2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_14

    if-nez p4, :cond_14

    if-eqz p3, :cond_13

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_14

    :cond_13
    const/4 v0, 0x0

    aget-object v0, p2, v0

    const-string v3, "count(*)"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    if-eqz v2, :cond_14

    .line 3198
    const-string v0, "audio_meta"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3199
    const/4 v0, 0x0

    const-string v2, "count(distinct artist_id)"

    aput-object v2, p2, v0

    .line 3200
    const-string v0, "is_music=1"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 3202
    :cond_14
    const-string v0, "artist_info"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3203
    const/4 v0, 0x0

    :goto_a
    if-eqz v2, :cond_6

    array-length v3, v2

    if-ge v0, v3, :cond_6

    .line 3204
    if-lez v0, :cond_15

    .line 3205
    const-string v3, " AND "

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3207
    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "artist_key LIKE \'%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\' ESCAPE \'\\\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3203
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 3214
    :sswitch_21
    const-string v0, "artist_info"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 3219
    :sswitch_22
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3220
    const-string v3, "audio LEFT OUTER JOIN album_art ON audio.album_id=album_art.album_id"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is_music=1 AND audio.album_id IN (SELECT album_id FROM artists_albums_map WHERE artist_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3225
    const/4 v3, 0x0

    :goto_b
    if-eqz v2, :cond_16

    array-length v4, v2

    if-ge v3, v4, :cond_16

    .line 3226
    const-string v4, " AND "

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3227
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "artist_key||album_key LIKE \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\' ESCAPE \'\\\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3225
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 3231
    :cond_16
    const-string v2, "audio.album_id"

    .line 3232
    sget-object v3, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v4, "numsongs_by_artist"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "count(CASE WHEN artist_id=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " THEN \'foo\' ELSE NULL END) AS "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "numsongs_by_artist"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3235
    sget-object v0, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object v6, v2

    .line 3236
    goto/16 :goto_2

    .line 3239
    :sswitch_23
    if-eqz p2, :cond_18

    array-length v0, p2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_18

    if-nez p4, :cond_18

    if-eqz p3, :cond_17

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_18

    :cond_17
    const/4 v0, 0x0

    aget-object v0, p2, v0

    const-string v3, "count(*)"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    if-eqz v2, :cond_18

    .line 3244
    const-string v0, "audio_meta"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3245
    const/4 v0, 0x0

    const-string v2, "count(distinct album_id)"

    aput-object v2, p2, v0

    .line 3246
    const-string v0, "is_music=1"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 3248
    :cond_18
    const-string v0, "album_info"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3249
    const/4 v0, 0x0

    :goto_c
    if-eqz v2, :cond_6

    array-length v3, v2

    if-ge v0, v3, :cond_6

    .line 3250
    if-lez v0, :cond_19

    .line 3251
    const-string v3, " AND "

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3253
    :cond_19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "artist_key||album_key LIKE \'%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\' ESCAPE \'\\\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3249
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 3261
    :sswitch_24
    const-string v0, "album_info"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 3266
    :sswitch_25
    const-string v0, "album_art"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "album_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 3271
    :sswitch_26
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v2, "Legacy media search Uri used. Please update your code."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :sswitch_27
    move-object v2, p0

    move-object v3, v8

    move-object v4, v1

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 3275
    invoke-direct/range {v2 .. v11}, Lcom/android/providers/media/MediaProvider;->doAudioSearch(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_0

    .line 3280
    :sswitch_28
    const-string v0, "app_package"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3283
    :sswitch_29
    const-string v0, "app_package"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :sswitch_2a
    move-object v2, p0

    move-object v3, v8

    move-object v4, v1

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 3290
    invoke-direct/range {v2 .. v11}, Lcom/android/providers/media/MediaProvider;->doImagesSearch(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_2b
    move-object v2, p0

    move-object v3, v8

    move-object v4, v1

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 3293
    invoke-direct/range {v2 .. v11}, Lcom/android/providers/media/MediaProvider;->doVideoSearch(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_2c
    move v5, v0

    goto/16 :goto_3

    :sswitch_2d
    move v5, v0

    goto/16 :goto_9

    .line 2958
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2c
        0x4 -> :sswitch_2
        0x64 -> :sswitch_3
        0x65 -> :sswitch_4
        0x66 -> :sswitch_5
        0x67 -> :sswitch_6
        0x68 -> :sswitch_7
        0x69 -> :sswitch_8
        0x6a -> :sswitch_9
        0x6b -> :sswitch_a
        0x6c -> :sswitch_b
        0x6d -> :sswitch_c
        0x6e -> :sswitch_d
        0x6f -> :sswitch_e
        0x70 -> :sswitch_f
        0x71 -> :sswitch_10
        0x72 -> :sswitch_20
        0x73 -> :sswitch_21
        0x74 -> :sswitch_23
        0x75 -> :sswitch_24
        0x76 -> :sswitch_22
        0x78 -> :sswitch_25
        0x82 -> :sswitch_14
        0x83 -> :sswitch_15
        0x84 -> :sswitch_16
        0x85 -> :sswitch_17
        0x86 -> :sswitch_18
        0x87 -> :sswitch_19
        0x88 -> :sswitch_1a
        0x8c -> :sswitch_11
        0x8d -> :sswitch_12
        0x8e -> :sswitch_13
        0xc8 -> :sswitch_1b
        0xc9 -> :sswitch_1c
        0xca -> :sswitch_2d
        0xcb -> :sswitch_1d
        0x190 -> :sswitch_26
        0x191 -> :sswitch_27
        0x192 -> :sswitch_27
        0x193 -> :sswitch_2a
        0x194 -> :sswitch_2b
        0x2bc -> :sswitch_28
        0x2bd -> :sswitch_29
        0x320 -> :sswitch_1e
        0x321 -> :sswitch_1f
    .end sparse-switch
.end method

.method removeDbEntryFromImageTable(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 6627
    const-string v1, "images"

    .line 6628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_data LIKE \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/android/providers/media/MediaProvider;->EXTERNAL_SD_ROOT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/%\' AND mini_thumb_magic=0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6630
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    monitor-enter v3

    .line 6631
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    .line 6632
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6633
    invoke-virtual {v0}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 6634
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 6636
    const/4 v0, 0x1

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, v0, v3}, Lcom/android/providers/media/MediaProvider;->modifyDBCleanupTrigger(IZ)V

    .line 6637
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6638
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/providers/media/MediaProvider;->modifyDBCleanupTrigger(IZ)V

    .line 6639
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 6643
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 6644
    iput-object v4, p0, Lcom/android/providers/media/MediaProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 6646
    :goto_0
    return-void

    .line 6632
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 6640
    :catch_0
    move-exception v0

    .line 6641
    :try_start_3
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " removeDbEntryFromImageTable(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 6643
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 6644
    iput-object v4, p0, Lcom/android/providers/media/MediaProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 6643
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 6644
    iput-object v4, p0, Lcom/android/providers/media/MediaProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    throw v0
.end method

.method public restoreExternalSdDatabase(Ljava/lang/String;)V
    .locals 14
    .parameter

    .prologue
    const/4 v8, 0x0

    const-string v0, "DROP TABLE IF EXISTS "

    const-string v13, "external"

    .line 6294
    const-string v0, "external"

    invoke-virtual {v13, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6371
    :cond_0
    :goto_0
    return-void

    .line 6298
    :cond_1
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 6299
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getSdSerial()Ljava/lang/String;

    move-result-object v2

    .line 6301
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->lastSdCardRemovedAfterPowerOff()Ljava/lang/String;

    move-result-object v0

    .line 6302
    if-eqz v0, :cond_2

    .line 6303
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 6304
    const-string v1, "external"

    invoke-virtual {p0, v13, v0}, Lcom/android/providers/media/MediaProvider;->saveExternalSdDatabase(Ljava/lang/String;Ljava/lang/String;)V

    .line 6311
    :cond_2
    if-nez v2, :cond_4

    .line 6312
    const-string v0, "external"

    invoke-virtual {p0, v13}, Lcom/android/providers/media/MediaProvider;->removeDbEntryFromImageTable(Ljava/lang/String;)V

    .line 6313
    invoke-direct {p0}, Lcom/android/providers/media/MediaProvider;->removeMediaDBData()V

    goto :goto_0

    .line 6306
    :cond_3
    iput-object v2, p0, Lcom/android/providers/media/MediaProvider;->mSdSerial:Ljava/lang/String;

    goto :goto_0

    .line 6316
    :cond_4
    iput-object v2, p0, Lcom/android/providers/media/MediaProvider;->mSdSerial:Ljava/lang/String;

    .line 6319
    invoke-static {}, Landroid/os/Environment;->getExternalMemoryStatus()Z

    move-result v0

    if-nez v0, :cond_5

    .line 6320
    invoke-direct {p0}, Lcom/android/providers/media/MediaProvider;->removeMediaDBData()V

    goto :goto_0

    .line 6325
    :cond_5
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    monitor-enter v1

    .line 6326
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    .line 6327
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6328
    if-eqz v0, :cond_0

    .line 6329
    invoke-virtual {v0}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6331
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 6333
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->dbMediaTableName:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6334
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/providers/media/MediaProvider;->dbMediaTableName:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 6336
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 6337
    if-eqz v4, :cond_6

    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-lez v2, :cond_6

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_6

    .line 6339
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->dbMediaTableName:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v5, v2, v3

    move-object v2, p0

    move-object v3, v0

    move-object v6, v1

    move-object v7, v10

    invoke-virtual/range {v2 .. v7}, Lcom/android/providers/media/MediaProvider;->updateDBforImage(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 6341
    :cond_6
    if-eqz v4, :cond_a

    .line 6342
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v12, v8

    .line 6345
    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    move-object v3, v11

    :try_start_3
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v2

    .line 6346
    if-eqz v2, :cond_7

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    if-lez v3, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_7

    .line 6348
    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 6349
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->dbMediaTableName:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {p0, v0, v2, v3, v10}, Lcom/android/providers/media/MediaProvider;->updateDBforThumbnail(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 6354
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DROP TABLE IF EXISTS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROP TABLE IF EXISTS "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6357
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_3

    .line 6362
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 6364
    if-eqz v2, :cond_8

    .line 6365
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 6369
    :cond_8
    const-string v0, "external"

    invoke-virtual {p0, v13}, Lcom/android/providers/media/MediaProvider;->removeDbEntryFromImageTable(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6327
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 6358
    :catch_0
    move-exception v1

    move-object v2, v8

    .line 6359
    :goto_2
    :try_start_6
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " restoreExternalSdDatabase(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 6362
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 6364
    if-eqz v2, :cond_0

    .line 6365
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 6362
    :catchall_1
    move-exception v1

    move-object v2, v8

    :goto_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 6364
    if-eqz v2, :cond_9

    .line 6365
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 6366
    :cond_9
    throw v1

    .line 6362
    :catchall_2
    move-exception v1

    move-object v2, v4

    goto :goto_3

    :catchall_3
    move-exception v1

    move-object v2, v12

    goto :goto_3

    :catchall_4
    move-exception v1

    goto :goto_3

    .line 6358
    :catch_1
    move-exception v1

    move-object v2, v4

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v2, v12

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_2

    :cond_a
    move-object v12, v4

    goto/16 :goto_1
.end method

.method saveExternalSdDatabase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x0

    const-string v0, ");"

    const-string v0, " ("

    .line 6111
    const-string v0, "external"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6194
    :cond_0
    :goto_0
    return-void

    .line 6115
    :cond_1
    if-eqz p2, :cond_0

    .line 6118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6120
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    monitor-enter v1

    .line 6121
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    .line 6122
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6123
    if-eqz v0, :cond_0

    .line 6124
    invoke-virtual {v0}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6126
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 6128
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_data LIKE \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/providers/media/MediaProvider;->EXTERNAL_SD_ROOT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/%\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 6129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->dbMediaTableName:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 6130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->dbMediaTableName:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 6131
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/providers/media/MediaProvider;->createDropImageCleanupTrigger(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 6132
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/providers/media/MediaProvider;->createDropThumbnailCleanupTrigger(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 6134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DROP TABLE IF EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id INTEGER PRIMARY KEY,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_data TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_size INTEGER,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_display_name TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mime_type TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "title TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "date_added INTEGER,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "date_modified INTEGER,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "description TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "picasa_id TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isprivate INTEGER,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "latitude DOUBLE,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "longitude DOUBLE,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "datetaken INTEGER,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "orientation INTEGER,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mini_thumb_magic INTEGER,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bucket_id TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bucket_display_name TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "micro_thumb_id INTEGER,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sd_serial TEXT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DROP TABLE IF EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id INTEGER PRIMARY KEY,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_data TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "image_id INTEGER,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "kind INTEGER,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "width INTEGER,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height INTEGER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6170
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->dbMediaTableName:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND mini_thumb_magic!=0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 6172
    :try_start_2
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->dbMediaTableName:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v5, v1, v2

    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->dbMediaTableName:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v7, v1, v2

    move-object v1, p0

    move-object v2, v0

    move-object v4, v9

    move-object v6, v10

    invoke-virtual/range {v1 .. v7}, Lcom/android/providers/media/MediaProvider;->updateDBforImagesAndThumbnails(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6173
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->dbMediaTableName:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v8, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6174
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->dbMediaTableName:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v8, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6175
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/providers/media/MediaProvider;->createDropThumbnailCleanupTrigger(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 6176
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/providers/media/MediaProvider;->createDropImageCleanupTrigger(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 6177
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->sExternalSdAvailMicroThumbId:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 6180
    invoke-virtual {p0, v0, p2}, Lcom/android/providers/media/MediaProvider;->updateLastModifiedTimeForSDCard(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 6181
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 6186
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 6188
    if-eqz v3, :cond_0

    .line 6189
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 6122
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 6182
    :catch_0
    move-exception v1

    move-object v2, v11

    .line 6183
    :goto_1
    :try_start_4
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " saveExternalSdDatabase(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 6186
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 6188
    if-eqz v2, :cond_0

    .line 6189
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 6186
    :catchall_1
    move-exception v1

    move-object v2, v11

    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 6188
    if-eqz v2, :cond_2

    .line 6189
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 6190
    :cond_2
    throw v1

    .line 6186
    :catchall_2
    move-exception v1

    move-object v2, v3

    goto :goto_2

    :catchall_3
    move-exception v1

    goto :goto_2

    .line 6182
    :catch_1
    move-exception v1

    move-object v2, v3

    goto :goto_1
.end method

.method public setDBTransactionSuccessful()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 356
    :cond_0
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 25
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4879
    sget-object v23, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    monitor-enter v23

    .line 4882
    :try_start_0
    sget-object v5, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    .line 4884
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v17

    .line 4885
    if-nez v17, :cond_0

    .line 4886
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 5126
    :catchall_0
    move-exception v5

    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 4889
    :cond_0
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 4892
    sget-object v7, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move-object/from16 v3, p3

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/media/MediaProvider;->getTableAndWhere(Landroid/net/Uri;ILjava/lang/String;Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;)V

    .line 4894
    sparse-switch v5, :sswitch_data_0

    .line 5116
    :cond_1
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v5, v5, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v7, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v7, v7, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object v0, v6

    move-object v1, v5

    move-object/from16 v2, p2

    move-object v3, v7

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 5123
    :cond_2
    :goto_0
    if-lez v5, :cond_3

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v6

    if-nez v6, :cond_3

    .line 5124
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, v6

    move-object/from16 v1, p1

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 5126
    :cond_3
    monitor-exit v23

    .line 5127
    :goto_1
    return v5

    .line 4898
    :sswitch_0
    new-instance v24, Landroid/content/ContentValues;

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 4902
    const-string v5, "album_artist"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 4903
    const-string v5, "album_artist"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4904
    const-string v5, "compilation"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 4905
    const-string v5, "compilation"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4909
    const-string v5, "artist"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4910
    const-string v5, "artist"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4911
    if-eqz v10, :cond_4

    .line 4913
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mArtistCache:Ljava/util/HashMap;

    move-object v15, v0

    .line 4914
    monitor-enter v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4915
    :try_start_2
    invoke-virtual {v15, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    .line 4916
    if-nez p2, :cond_8

    .line 4917
    const-string v7, "artists"

    const-string v8, "artist_key"

    const-string v9, "artist"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v5, p0

    move-object v11, v10

    move-object/from16 v16, p1

    invoke-direct/range {v5 .. v16}, Lcom/android/providers/media/MediaProvider;->getKeyIdForName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)J

    move-result-wide v7

    .line 4922
    :goto_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4923
    :try_start_3
    const-string v5, "artist_id"

    long-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4927
    :cond_4
    const-string v5, "album"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 4928
    const-string v5, "album"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4929
    if-eqz v16, :cond_5

    .line 4930
    const-string v5, "_data"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 4931
    const/4 v5, 0x0

    .line 4932
    if-eqz v19, :cond_9

    .line 4933
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->hashCode()I

    move-result v5

    move/from16 v19, v5

    .line 4945
    :goto_3
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mAlbumCache:Ljava/util/HashMap;

    move-object/from16 v21, v0

    .line 4946
    monitor-enter v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4947
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 4948
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    .line 4949
    if-nez p2, :cond_c

    .line 4950
    const-string v13, "albums"

    const-string v14, "album_key"

    const-string v15, "album"

    move-object/from16 v11, p0

    move-object v12, v6

    move-object/from16 v20, v10

    move-object/from16 v22, p1

    invoke-direct/range {v11 .. v22}, Lcom/android/providers/media/MediaProvider;->getKeyIdForName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)J

    move-result-wide v7

    .line 4955
    :goto_4
    monitor-exit v21
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 4956
    :try_start_5
    const-string v5, "album_id"

    long-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4960
    :cond_5
    const-string v5, "title_key"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4962
    const-string v5, "title"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4963
    if-eqz v5, :cond_6

    .line 4966
    invoke-static {v5}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4967
    const-string v8, "title_key"

    move-object/from16 v0, v24

    move-object v1, v8

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4970
    const-string v7, "title"

    move-object/from16 v0, v24

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4971
    const-string v7, "title"

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v7

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4975
    :cond_6
    const-string v5, "_data"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4976
    if-eqz v5, :cond_7

    .line 4977
    const-string v7, "_data_hashcode"

    move-object/from16 v0, v24

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4978
    const-string v7, "_data_hashcode"

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v24

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4984
    const-string v7, "bucket_id"

    move-object/from16 v0, v24

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4985
    const-string v7, "bucket_display_name"

    move-object/from16 v0, v24

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4986
    move-object v0, v5

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/providers/media/MediaProvider;->computeBucketValues(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4994
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/providers/media/MediaProvider;->convertOrgin2PinyinForSort(Landroid/content/ContentValues;)V

    .line 4999
    const-string v5, "audio_meta"

    sget-object v7, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v7, v7, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object v0, v6

    move-object v1, v5

    move-object/from16 v2, v24

    move-object v3, v7

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v5

    goto/16 :goto_0

    .line 4920
    :cond_8
    :try_start_6
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto/16 :goto_2

    .line 4922
    :catchall_1
    move-exception v5

    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v5

    .line 4934
    :cond_9
    if-eqz v20, :cond_a

    const-string v7, "1"

    move-object/from16 v0, v20

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    move/from16 v19, v5

    goto/16 :goto_3

    .line 4936
    :cond_a
    if-nez v18, :cond_b

    .line 4938
    sget-object v7, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v8, "Update without specified path."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v19, v5

    goto/16 :goto_3

    .line 4940
    :cond_b
    const/4 v5, 0x0

    const/16 v7, 0x2f

    move-object/from16 v0, v18

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    move-object/from16 v0, v18

    move v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v5

    move/from16 v19, v5

    goto/16 :goto_3

    .line 4953
    :cond_c
    :try_start_8
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto/16 :goto_4

    .line 4955
    :catchall_2
    move-exception v5

    monitor-exit v21
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v5

    .line 5008
    :sswitch_1
    new-instance v7, Landroid/content/ContentValues;

    move-object v0, v7

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 5012
    const-string v8, "bucket_id"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 5013
    const-string v8, "bucket_display_name"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 5015
    const-string v8, "_data"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 5016
    if-eqz v8, :cond_d

    .line 5017
    invoke-static {v8, v7}, Lcom/android/providers/media/MediaProvider;->computeBucketValues(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 5024
    :cond_d
    const/16 v8, 0xc8

    if-eq v5, v8, :cond_e

    const/16 v8, 0xc9

    if-ne v5, v8, :cond_f

    .line 5025
    :cond_e
    const-string v5, "_display_name"

    const-string v8, "title_pinyin"

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v5

    move-object v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/media/MediaProvider;->subConvertOrgin2PinyinForSort(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5031
    :cond_f
    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->computeTakenTime(Landroid/content/ContentValues;)V

    .line 5032
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v5, v5, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v8, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v8, v8, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object v0, v6

    move-object v1, v5

    move-object v2, v7

    move-object v3, v8

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 5037
    if-lez v5, :cond_2

    const-string v8, "_data"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 5038
    sget-object v7, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v7, v7, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v8, Lcom/android/providers/media/MediaProvider;->READY_FLAG_PROJECTION:[Ljava/lang/String;

    sget-object v9, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v9, v9, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v10, p4

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v13

    .line 5041
    if-eqz v13, :cond_2

    .line 5043
    :cond_10
    :goto_5
    :try_start_a
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 5044
    const/4 v7, 0x2

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 5046
    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_10

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    move v7, v0

    if-nez v7, :cond_10

    .line 5047
    const/4 v7, 0x1

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v10, 0xa

    const-wide/16 v11, 0x0

    move-object/from16 v7, p0

    move-object/from16 v9, p1

    invoke-direct/range {v7 .. v12}, Lcom/android/providers/media/MediaProvider;->requestMediaThumbnail(Ljava/lang/String;Landroid/net/Uri;IJ)Lcom/android/providers/media/MediaThumbRequest;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_5

    .line 5052
    :catchall_3
    move-exception v5

    :try_start_b
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v5

    :cond_11
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 5064
    :sswitch_2
    new-instance v5, Landroid/content/ContentValues;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 5065
    const-string v7, "name"

    const-string v8, "name_pinyin"

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v7

    move-object v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/media/MediaProvider;->subConvertOrgin2PinyinForSort(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5066
    sget-object v7, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v7, v7, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v8, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v8, v8, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object v0, v6

    move-object v1, v7

    move-object v2, v5

    move-object v3, v8

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    .line 5081
    :sswitch_3
    new-instance v5, Landroid/content/ContentValues;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 5082
    sget-object v7, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v7, v7, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v8, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v8, v8, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object v0, v6

    move-object v1, v7

    move-object v2, v5

    move-object v3, v8

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    .line 5094
    :sswitch_4
    new-instance v5, Landroid/content/ContentValues;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 5095
    sget-object v7, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v7, v7, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v8, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v8, v8, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object v0, v6

    move-object v1, v7

    move-object v2, v5

    move-object v3, v8

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    .line 5101
    :sswitch_5
    const-string v5, "move"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5102
    if-eqz v5, :cond_1

    .line 5103
    const-string v5, "play_order"

    .line 5104
    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 5105
    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 5106
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    .line 5107
    const/4 v7, 0x3

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 5108
    const/4 v9, 0x5

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object/from16 v5, p0

    .line 5109
    invoke-direct/range {v5 .. v10}, Lcom/android/providers/media/MediaProvider;->movePlaylistEntry(Landroid/database/sqlite/SQLiteDatabase;JII)I

    move-result v5

    monitor-exit v23

    goto/16 :goto_1

    .line 5111
    :cond_12
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Need to specify "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " when using \'move\' parameter"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 4894
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x71 -> :sswitch_5
        0x8c -> :sswitch_2
        0xc8 -> :sswitch_1
        0xc9 -> :sswitch_1
        0x2bc -> :sswitch_4
        0x2bd -> :sswitch_4
        0x320 -> :sswitch_3
        0x321 -> :sswitch_3
    .end sparse-switch
.end method

.method updateAvailMicroThumbIdList(Ljava/lang/String;ZI)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const-string v1, "external"

    .line 6520
    const-string v0, "external"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 6521
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->sExternalSdAvailMicroThumbId:Ljava/util/LinkedList;

    move-object v2, v0

    .line 6528
    :goto_0
    monitor-enter v2

    .line 6531
    :try_start_0
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 6532
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/media/MediaProvider;->buildAvailMicroThumbIdList(Ljava/lang/String;Z)V

    .line 6534
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/media/MediaProvider$availMicroThumbId;

    .line 6535
    invoke-virtual {v0}, Lcom/android/providers/media/MediaProvider$availMicroThumbId;->getAvailStart()I

    move-result v1

    .line 6536
    invoke-virtual {v0}, Lcom/android/providers/media/MediaProvider$availMicroThumbId;->getAvailNextN()I

    move-result v3

    .line 6537
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ne v4, v5, :cond_5

    .line 6538
    add-int/lit8 v3, p3, 0x1

    if-ne v3, v1, :cond_3

    .line 6539
    invoke-virtual {v0, p3}, Lcom/android/providers/media/MediaProvider$availMicroThumbId;->setAvailStart(I)V

    .line 6545
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6586
    :cond_1
    :goto_2
    return-void

    .line 6522
    :cond_2
    const-string v0, "external"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6523
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->sExternalAvailMicroThumbId:Ljava/util/LinkedList;

    move-object v2, v0

    goto :goto_0

    .line 6540
    :cond_3
    if-lt p3, v1, :cond_4

    .line 6541
    :try_start_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " ====> Error: updateAvailMicroThumbIdList() impossible case"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 6585
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 6543
    :cond_4
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Lcom/android/providers/media/MediaProvider$availMicroThumbId;

    const/4 v3, 0x1

    invoke-direct {v1, p0, p3, v3}, Lcom/android/providers/media/MediaProvider$availMicroThumbId;-><init>(Lcom/android/providers/media/MediaProvider;II)V

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 6546
    :cond_5
    add-int v4, v1, v3

    if-ne v4, p3, :cond_6

    .line 6547
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Lcom/android/providers/media/MediaProvider$availMicroThumbId;->setAvailNextN(I)V

    .line 6548
    monitor-exit v2

    goto :goto_2

    .line 6549
    :cond_6
    add-int/lit8 v3, p3, 0x1

    if-ne v3, v1, :cond_7

    .line 6550
    invoke-virtual {v0, p3}, Lcom/android/providers/media/MediaProvider$availMicroThumbId;->setAvailStart(I)V

    .line 6551
    monitor-exit v2

    goto :goto_2

    .line 6552
    :cond_7
    if-ge p3, v1, :cond_8

    .line 6553
    const/4 v0, 0x0

    new-instance v1, Lcom/android/providers/media/MediaProvider$availMicroThumbId;

    const/4 v3, 0x1

    invoke-direct {v1, p0, p3, v3}, Lcom/android/providers/media/MediaProvider$availMicroThumbId;-><init>(Lcom/android/providers/media/MediaProvider;II)V

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 6554
    monitor-exit v2

    goto :goto_2

    .line 6558
    :cond_8
    invoke-virtual {p0, v2, p3}, Lcom/android/providers/media/MediaProvider;->findInsertPlaceInList(Ljava/util/LinkedList;I)I

    move-result v3

    .line 6559
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/media/MediaProvider$availMicroThumbId;

    .line 6560
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/media/MediaProvider$availMicroThumbId;

    .line 6562
    invoke-virtual {v0}, Lcom/android/providers/media/MediaProvider$availMicroThumbId;->getAvailStart()I

    move-result v4

    .line 6563
    invoke-virtual {v1}, Lcom/android/providers/media/MediaProvider$availMicroThumbId;->getAvailStart()I

    move-result v5

    .line 6564
    invoke-virtual {v0}, Lcom/android/providers/media/MediaProvider$availMicroThumbId;->getAvailNextN()I

    move-result v6

    .line 6565
    invoke-virtual {v1}, Lcom/android/providers/media/MediaProvider$availMicroThumbId;->getAvailNextN()I

    move-result v7

    .line 6567
    add-int v8, v4, v6

    if-ne v8, p3, :cond_b

    add-int/lit8 v8, p3, 0x1

    if-ne v8, v5, :cond_b

    .line 6568
    if-nez v7, :cond_a

    .line 6569
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/providers/media/MediaProvider$availMicroThumbId;->setAvailNextN(I)V

    .line 6570
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 6585
    :cond_9
    :goto_3
    monitor-exit v2

    goto :goto_2

    .line 6572
    :cond_a
    add-int v1, v6, v7

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/providers/media/MediaProvider$availMicroThumbId;->setAvailNextN(I)V

    .line 6573
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 6575
    :cond_b
    add-int/2addr v4, v6

    if-ne v4, p3, :cond_c

    .line 6576
    add-int/lit8 v1, v6, 0x1

    invoke-virtual {v0, v1}, Lcom/android/providers/media/MediaProvider$availMicroThumbId;->setAvailNextN(I)V

    goto :goto_3

    .line 6577
    :cond_c
    add-int/lit8 v0, p3, 0x1

    if-ne v0, v5, :cond_d

    .line 6578
    invoke-virtual {v1, p3}, Lcom/android/providers/media/MediaProvider$availMicroThumbId;->setAvailStart(I)V

    .line 6579
    if-eqz v7, :cond_9

    .line 6580
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v1, v0}, Lcom/android/providers/media/MediaProvider$availMicroThumbId;->setAvailNextN(I)V

    goto :goto_3

    .line 6583
    :cond_d
    add-int/lit8 v0, v3, 0x1

    new-instance v1, Lcom/android/providers/media/MediaProvider$availMicroThumbId;

    const/4 v3, 0x1

    invoke-direct {v1, p0, p3, v3}, Lcom/android/providers/media/MediaProvider$availMicroThumbId;-><init>(Lcom/android/providers/media/MediaProvider;II)V

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method updateDBforImage(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-string v0, "_data, _size, _display_name, mime_type, title, date_added, date_modified, description, picasa_id, isprivate, latitude, longitude, datetaken, orientation, mini_thumb_magic, bucket_id, bucket_display_name, micro_thumb_id, sd_serial"

    .line 5935
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 5965
    :cond_0
    :goto_0
    return-void

    .line 5938
    :cond_1
    const/4 v0, 0x0

    .line 5940
    :try_start_0
    const-string v1, "_id"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 5942
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INSERT INTO "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_data, _size, _display_name, mime_type, title, date_added, date_modified, description, picasa_id, isprivate, latitude, longitude, datetaken, orientation, mini_thumb_magic, bucket_id, bucket_display_name, micro_thumb_id, sd_serial"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") select "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_data, _size, _display_name, mime_type, title, date_added, date_modified, description, picasa_id, isprivate, latitude, longitude, datetaken, orientation, mini_thumb_magic, bucket_id, bucket_display_name, micro_thumb_id, sd_serial"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " where _id=?;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5944
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 5945
    if-nez v0, :cond_2

    .line 5961
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 5963
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_0

    .line 5949
    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5950
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 5951
    const/4 v3, 0x1

    int-to-long v4, v2

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5952
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v3

    .line 5953
    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-eqz v5, :cond_3

    .line 5954
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p5, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5956
    :cond_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 5958
    :catch_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 5959
    :goto_2
    :try_start_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " updateDBforImage(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 5961
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 5963
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto/16 :goto_0

    .line 5961
    :cond_4
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 5963
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto/16 :goto_0

    .line 5961
    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_3
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 5963
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_5
    throw v0

    .line 5961
    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 5958
    :catch_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2
.end method

.method updateDBforImagesAndThumbnails(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const-string v0, "_data, _size, _display_name, mime_type, title, date_added, date_modified, description, picasa_id, isprivate, latitude, longitude, datetaken, orientation, mini_thumb_magic, bucket_id, bucket_display_name, micro_thumb_id, sd_serial"

    const-string v0, "INSERT INTO "

    const-string v0, " ("

    .line 5886
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    if-nez p6, :cond_1

    .line 5926
    :cond_0
    :goto_0
    return-void

    .line 5893
    :cond_1
    :try_start_0
    const-string v0, "_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 5895
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_data, _size, _display_name, mime_type, title, date_added, date_modified, description, picasa_id, isprivate, latitude, longitude, datetaken, orientation, mini_thumb_magic, bucket_id, bucket_display_name, micro_thumb_id, sd_serial"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") select "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_data, _size, _display_name, mime_type, title, date_added, date_modified, description, picasa_id, isprivate, latitude, longitude, datetaken, orientation, mini_thumb_magic, bucket_id, bucket_display_name, micro_thumb_id, sd_serial"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " where _id=?;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5897
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 5901
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INSERT INTO "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_data, image_id, kind, width, height"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") select _data, ? AS image_id, kind, width, height from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " where image_id=?;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5903
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 5904
    if-eqz v1, :cond_2

    if-nez v2, :cond_4

    .line 5921
    :cond_2
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 5923
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 5924
    :cond_3
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto/16 :goto_0

    .line 5908
    :cond_4
    :goto_1
    :try_start_2
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 5909
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 5910
    const/4 v4, 0x1

    int-to-long v5, v3

    invoke-virtual {v1, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5911
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v4

    .line 5912
    const/4 v6, 0x1

    invoke-virtual {v2, v6, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5913
    const/4 v4, 0x2

    int-to-long v5, v3

    invoke-virtual {v2, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5914
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 5915
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 5916
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 5918
    :catch_0
    move-exception v0

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    .line 5919
    :goto_2
    :try_start_3
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " updateDBforImagesAndThumbnails(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 5921
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 5923
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 5924
    :cond_5
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto/16 :goto_0

    .line 5921
    :cond_6
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 5923
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 5924
    :cond_7
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto/16 :goto_0

    .line 5921
    :catchall_0
    move-exception v0

    move-object v1, v4

    move-object v2, v4

    :goto_3
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 5923
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 5924
    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_9
    throw v0

    .line 5921
    :catchall_1
    move-exception v0

    move-object v2, v1

    move-object v1, v4

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_3

    .line 5918
    :catch_1
    move-exception v0

    move-object v1, v4

    move-object v2, v4

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v2, v1

    move-object v1, v4

    goto :goto_2
.end method

.method updateDBforThumbnail(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 26
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6036
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 6067
    :cond_0
    :goto_0
    return-void

    .line 6040
    :cond_1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 6043
    :try_start_0
    const-string v4, "_data"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 6044
    const-string v4, "kind"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 6045
    const-string v4, "image_id"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 6046
    const-string v4, "width"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 6047
    const-string v4, "height"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 6048
    :cond_2
    :goto_1
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6049
    const-string v6, "kind"

    const/4 v9, 0x2

    move-object/from16 v4, p0

    move-object/from16 v7, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/providers/media/MediaProvider;->putContentValues(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;II)V

    .line 6050
    new-instance v4, Ljava/lang/Integer;

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, p4

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 6051
    if-eqz v4, :cond_2

    .line 6052
    const-string v6, "image_id"

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6056
    const-string v11, "height"

    const/4 v14, 0x2

    move-object/from16 v9, p0

    move-object v10, v5

    move-object/from16 v12, p2

    invoke-virtual/range {v9 .. v14}, Lcom/android/providers/media/MediaProvider;->putContentValues(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;II)V

    .line 6057
    const-string v16, "width"

    const/16 v19, 0x2

    move-object/from16 v14, p0

    move-object v15, v5

    move-object/from16 v17, p2

    invoke-virtual/range {v14 .. v19}, Lcom/android/providers/media/MediaProvider;->putContentValues(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;II)V

    .line 6058
    const-string v21, "_data"

    const/16 v24, 0x0

    move-object/from16 v19, p0

    move-object/from16 v20, v5

    move-object/from16 v22, p2

    invoke-virtual/range {v19 .. v24}, Lcom/android/providers/media/MediaProvider;->putContentValues(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;II)V

    .line 6059
    const-string v4, "name"

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object v2, v4

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 6061
    :catch_0
    move-exception v4

    .line 6062
    :try_start_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " updateDBforThumbnail(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6064
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_3
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    .line 6065
    throw v4
.end method

.method updateLastModifiedTimeForSDCard(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const-string v0, "serial"

    const-string v0, "sdcards"

    .line 6198
    .line 6199
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 6201
    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS sdcards (_id INTEGER PRIMARY KEY,serial TEXT,date_modified INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6207
    const-string v1, "sdcards"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "serial"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "date_modified desc"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 6208
    :try_start_1
    const-string v1, "serial"

    invoke-virtual {v8, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6209
    const-string v1, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6211
    if-eqz v0, :cond_3

    move v1, v9

    .line 6212
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 6213
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 6214
    add-int/lit8 v1, v1, 0x1

    .line 6215
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6216
    const-string v1, "sdcards"

    const-string v2, "serial=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {p1, v1, v8, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 6234
    if-eqz v0, :cond_1

    .line 6235
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 6239
    :cond_1
    :goto_0
    return-void

    .line 6221
    :cond_2
    const/4 v2, 0x5

    if-ge v1, v2, :cond_4

    .line 6222
    :try_start_2
    const-string v1, "sdcards"

    const-string v2, "serial"

    invoke-virtual {p1, v1, v2, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 6234
    :cond_3
    :goto_1
    if-eqz v0, :cond_1

    .line 6235
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 6225
    :cond_4
    :try_start_3
    const-string v1, "serial"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROP TABLE IF EXISTS images_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROP TABLE IF EXISTS thumbnails_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6228
    const-string v2, "sdcards"

    const-string v3, "serial=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {p1, v2, v8, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 6231
    :catch_0
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    .line 6232
    :goto_2
    :try_start_4
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " updateLastModifiedTimeForSDCard(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 6234
    if-eqz v1, :cond_1

    .line 6235
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 6234
    :catchall_0
    move-exception v0

    move-object v1, v10

    :goto_3
    if-eqz v1, :cond_5

    .line 6235
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 6236
    :cond_5
    throw v0

    .line 6234
    :catchall_1
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 6231
    :catch_1
    move-exception v0

    move-object v1, v10

    goto :goto_2
.end method
