.class public Landroid/app/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/DownloadManager$SecCursorTranslator;,
        Landroid/app/DownloadManager$CursorTranslator;,
        Landroid/app/DownloadManager$Query;,
        Landroid/app/DownloadManager$SecQuery;,
        Landroid/app/DownloadManager$Request;
    }
.end annotation


# static fields
.field public static final ACTION_DOWNLOAD_COMPLETE:Ljava/lang/String; = "android.intent.action.DOWNLOAD_COMPLETE"

.field public static final ACTION_NOTIFICATION_CLICKED:Ljava/lang/String; = "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

.field public static final ACTION_VIEW_DOWNLOADS:Ljava/lang/String; = "android.intent.action.VIEW_DOWNLOADS"

.field public static final ACTION_VIEW_SEC_DOWNLOADS:Ljava/lang/String; = "android.intent.action.VIEW_SEC_DOWNLOADS"

.field private static final COLUMNS:[Ljava/lang/String; = null

.field public static final COLUMN_BYTES_DOWNLOADED_SO_FAR:Ljava/lang/String; = "bytes_so_far"

.field public static final COLUMN_DD_CONTENT_SIZE:Ljava/lang/String; = "dd_contentSize"

.field public static final COLUMN_DD_FILE_DESCRIPTION:Ljava/lang/String; = "dd_description"

.field public static final COLUMN_DD_FILE_NAME:Ljava/lang/String; = "dd_fileName"

.field public static final COLUMN_DD_PRIMARY_MIMETYPE:Ljava/lang/String; = "dd_primaryMimeType"

.field public static final COLUMN_DD_VENDOR_NAME:Ljava/lang/String; = "dd_vendor"

.field public static final COLUMN_DD_VERSION_NUMBER:Ljava/lang/String; = "dd_majorVersion"

.field public static final COLUMN_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final COLUMN_DOWNLOAD_METHOD:Ljava/lang/String; = "downloadmethod"

.field public static final COLUMN_DOWNLOAD_STATE:Ljava/lang/String; = "state"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_LAST_MODIFIED_TIMESTAMP:Ljava/lang/String; = "last_modified_timestamp"

.field public static final COLUMN_LOCAL_URI:Ljava/lang/String; = "local_uri"

.field public static final COLUMN_MEDIAPROVIDER_URI:Ljava/lang/String; = "mediaprovider_uri"

.field public static final COLUMN_MEDIA_TYPE:Ljava/lang/String; = "media_type"

.field public static final COLUMN_REASON:Ljava/lang/String; = "reason"

.field public static final COLUMN_STATUS:Ljava/lang/String; = "status"

.field public static final COLUMN_TITLE:Ljava/lang/String; = "title"

.field public static final COLUMN_TOTAL_SIZE_BYTES:Ljava/lang/String; = "total_size"

.field public static final COLUMN_URI:Ljava/lang/String; = "uri"

.field public static final ERROR_CANNOT_RESUME:I = 0x3f0

.field public static final ERROR_DEVICE_NOT_FOUND:I = 0x3ef

.field public static final ERROR_FILE_ALREADY_EXISTS:I = 0x3f1

.field public static final ERROR_FILE_ERROR:I = 0x3e9

.field public static final ERROR_HTTP_DATA_ERROR:I = 0x3ec

.field public static final ERROR_INSUFFICIENT_SPACE:I = 0x3ee

.field public static final ERROR_TOO_MANY_REDIRECTS:I = 0x3ed

.field public static final ERROR_UNHANDLED_HTTP_CODE:I = 0x3ea

.field public static final ERROR_UNKNOWN:I = 0x3e8

.field public static final EXTRA_DOWNLOAD_ID:Ljava/lang/String; = "extra_download_id"

.field private static final LONG_COLUMNS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAUSED_QUEUED_FOR_WIFI:I = 0x3

.field public static final PAUSED_UNKNOWN:I = 0x4

.field public static final PAUSED_WAITING_FOR_NETWORK:I = 0x2

.field public static final PAUSED_WAITING_TO_RETRY:I = 0x1

.field private static final SEC_COLUMNS:[Ljava/lang/String; = null

.field private static final SEC_UNDERLYING_COLUMNS:[Ljava/lang/String; = null

.field public static final STATUS_FAILED:I = 0x10

.field public static final STATUS_OMA_PENDING:I = 0x40

.field public static final STATUS_PAUSED:I = 0x4

.field public static final STATUS_PENDING:I = 0x1

.field public static final STATUS_RUNNING:I = 0x2

.field public static final STATUS_SUCCESSFUL:I = 0x8

.field private static final TAG:Ljava/lang/String; = "DownloadManager"

.field static final UNDERLYING_COLUMNS:[Ljava/lang/String;


# instance fields
.field mBaseUri:Landroid/net/Uri;

.field private mPackageName:Ljava/lang/String;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSecBaseUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 298
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "mediaprovider_uri"

    aput-object v1, v0, v4

    const-string/jumbo v1, "title"

    aput-object v1, v0, v5

    const-string v1, "description"

    aput-object v1, v0, v6

    const-string/jumbo v1, "uri"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "media_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "total_size"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "local_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "reason"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "bytes_so_far"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "last_modified_timestamp"

    aput-object v2, v0, v1

    sput-object v0, Landroid/app/DownloadManager;->COLUMNS:[Ljava/lang/String;

    .line 316
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "mediaprovider_uri"

    aput-object v1, v0, v4

    const-string/jumbo v1, "title"

    aput-object v1, v0, v5

    const-string v1, "description"

    aput-object v1, v0, v6

    const-string/jumbo v1, "uri"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "media_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "total_size"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "local_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "reason"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "bytes_so_far"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "last_modified_timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "dd_fileName"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "dd_vendor"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "dd_description"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "dd_majorVersion"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "dd_primaryMimeType"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "dd_contentSize"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "state"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "downloadmethod"

    aput-object v2, v0, v1

    sput-object v0, Landroid/app/DownloadManager;->SEC_COLUMNS:[Ljava/lang/String;

    .line 340
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "mediaprovider_uri"

    aput-object v1, v0, v4

    const-string/jumbo v1, "title"

    aput-object v1, v0, v5

    const-string v1, "description"

    aput-object v1, v0, v6

    const-string/jumbo v1, "uri"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "mimetype"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "total_bytes"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "current_bytes"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lastmod"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "destination"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "hint"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Landroid/app/DownloadManager;->UNDERLYING_COLUMNS:[Ljava/lang/String;

    .line 358
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    const-string/jumbo v1, "status"

    aput-object v1, v0, v5

    const-string/jumbo v1, "state"

    aput-object v1, v0, v6

    const-string/jumbo v1, "total_bytes"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "current_bytes"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "description"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "mimetype"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lastmod"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "visibility"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "downloadmethod"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "uri"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "destination"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "dd_primaryMimeType"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "dd_SecondaryMimeType1"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "dd_SecondaryMimeType2"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "dd_fileName"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "dd_vendor"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "dd_description"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "dd_contentSize"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "dd_objUrl"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "dd_notifyurl"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "dd_majorVersion"

    aput-object v2, v0, v1

    sput-object v0, Landroid/app/DownloadManager;->SEC_UNDERLYING_COLUMNS:[Ljava/lang/String;

    .line 393
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v3

    const-string/jumbo v2, "total_size"

    aput-object v2, v1, v4

    const-string/jumbo v2, "status"

    aput-object v2, v1, v5

    const-string/jumbo v2, "reason"

    aput-object v2, v1, v6

    const-string v2, "bytes_so_far"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const-string v3, "last_modified_timestamp"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "dd_contentSize"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "state"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "downloadmethod"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/app/DownloadManager;->LONG_COLUMNS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 1
    .parameter "resolver"
    .parameter "packageName"

    .prologue
    .line 959
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 951
    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    .line 953
    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/DownloadManager;->mSecBaseUri:Landroid/net/Uri;

    .line 960
    iput-object p1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    .line 961
    iput-object p2, p0, Landroid/app/DownloadManager;->mPackageName:Ljava/lang/String;

    .line 962
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Landroid/app/DownloadManager;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Set;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Landroid/app/DownloadManager;->LONG_COLUMNS:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Landroid/app/DownloadManager;->SEC_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static getWhereArgsForIds([J)[Ljava/lang/String;
    .locals 4
    .parameter "ids"

    .prologue
    .line 1222
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/String;

    .line 1223
    .local v1, whereArgs:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 1224
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1223
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1226
    :cond_0
    return-object v1
.end method

.method static getWhereClauseForIds([J)Ljava/lang/String;
    .locals 3
    .parameter "ids"

    .prologue
    .line 1205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1206
    .local v1, whereClause:Ljava/lang/StringBuilder;
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1207
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 1208
    if-lez v0, :cond_0

    .line 1209
    const-string v2, "OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1211
    :cond_0
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1212
    const-string v2, " = ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1214
    :cond_1
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1215
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private joinStrings(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 5
    .parameter "joiner"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1058
    .local p2, parts:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1059
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 1060
    .local v1, first:Z
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1061
    .local v3, part:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1062
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1065
    const/4 v1, 0x0

    goto :goto_0

    .line 1067
    .end local v3           #part:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public enqueue(Landroid/app/DownloadManager$Request;)J
    .locals 6
    .parameter "request"

    .prologue
    .line 1000
    iget-object v4, p0, Landroid/app/DownloadManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/app/DownloadManager$Request;->toContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v3

    .line 1001
    .local v3, values:Landroid/content/ContentValues;
    iget-object v4, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1002
    .local v0, downloadUri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1003
    .local v1, id:J
    return-wide v1
.end method

.method getDownloadUri(J)Landroid/net/Uri;
    .locals 1
    .parameter "id"

    .prologue
    .line 1198
    iget-object v0, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public varargs markRowDeleted([J)I
    .locals 5
    .parameter "ids"

    .prologue
    .line 1016
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 1018
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "input param \'ids\' can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1020
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1021
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "deleted"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1022
    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public openDownloadedFile(J)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1128
    iget-object v0, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, p1, p2}, Landroid/app/DownloadManager;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "r"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;
    .locals 4
    .parameter "query"

    .prologue
    .line 1097
    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/app/DownloadManager;->UNDERLYING_COLUMNS:[Ljava/lang/String;

    iget-object v3, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {p1, v1, v2, v3}, Landroid/app/DownloadManager$Query;->runQuery(Landroid/content/ContentResolver;[Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 1098
    .local v0, underlyingCursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 1099
    const/4 v1, 0x0

    .line 1101
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/app/DownloadManager$CursorTranslator;

    iget-object v2, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-direct {v1, v0, v2}, Landroid/app/DownloadManager$CursorTranslator;-><init>(Landroid/database/Cursor;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public varargs remove([J)I
    .locals 4
    .parameter "ids"

    .prologue
    .line 1035
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 1037
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input param \'ids\' can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1039
    :cond_1
    iget-object v0, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public varargs restartDownload([J)V
    .locals 7
    .parameter "ids"

    .prologue
    const-string/jumbo v5, "status"

    .line 1138
    new-instance v3, Landroid/app/DownloadManager$Query;

    invoke-direct {v3}, Landroid/app/DownloadManager$Query;-><init>()V

    invoke-virtual {v3, p1}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 1140
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1141
    const-string/jumbo v3, "status"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1142
    .local v1, status:I
    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    const/16 v3, 0x10

    if-eq v1, v3, :cond_0

    .line 1143
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot restart incomplete download: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1148
    .end local v1           #status:I
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3

    .line 1140
    .restart local v1       #status:I
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1148
    .end local v1           #status:I
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1151
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1152
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "current_bytes"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1153
    const-string/jumbo v3, "total_bytes"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1154
    const-string v3, "_data"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1155
    const-string/jumbo v3, "status"

    const/16 v3, 0xbe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1156
    iget-object v3, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1157
    return-void
.end method

.method public varargs secmarkRowDeleted([J)I
    .locals 6
    .parameter "ids"

    .prologue
    const/4 v5, 0x0

    .line 1045
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 1047
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "input param \'ids\' can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1049
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1050
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "deleted"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1053
    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    const/4 v3, 0x0

    aget-wide v3, p1, v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public secquery(Landroid/app/DownloadManager$SecQuery;)Landroid/database/Cursor;
    .locals 4
    .parameter "query"

    .prologue
    .line 1113
    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/app/DownloadManager;->SEC_UNDERLYING_COLUMNS:[Ljava/lang/String;

    iget-object v3, p0, Landroid/app/DownloadManager;->mSecBaseUri:Landroid/net/Uri;

    invoke-virtual {p1, v1, v2, v3}, Landroid/app/DownloadManager$SecQuery;->runQuery(Landroid/content/ContentResolver;[Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 1114
    .local v0, underlyingCursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 1115
    const/4 v1, 0x0

    .line 1117
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/app/DownloadManager$SecCursorTranslator;

    iget-object v2, p0, Landroid/app/DownloadManager;->mSecBaseUri:Landroid/net/Uri;

    invoke-direct {v1, v0, v2}, Landroid/app/DownloadManager$SecCursorTranslator;-><init>(Landroid/database/Cursor;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public varargs secremove([J)I
    .locals 5
    .parameter "ids"

    .prologue
    .line 1071
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    .line 1073
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "input param \'ids\' can\'t be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1076
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1077
    .local v2, selectionParts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1080
    .local v1, selectionArgs:[Ljava/lang/String;
    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1081
    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v1

    .line 1082
    const-string v3, " AND "

    invoke-direct {p0, v3, v2}, Landroid/app/DownloadManager;->joinStrings(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 1085
    .local v0, selection:Ljava/lang/String;
    iget-object v3, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Landroid/app/DownloadManager;->mSecBaseUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public varargs secrestartDownload([J)Z
    .locals 8
    .parameter "ids"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const-string/jumbo v6, "status"

    .line 1167
    new-instance v3, Landroid/app/DownloadManager$SecQuery;

    invoke-direct {v3}, Landroid/app/DownloadManager$SecQuery;-><init>()V

    invoke-virtual {v3, p1}, Landroid/app/DownloadManager$SecQuery;->setFilterById([J)Landroid/app/DownloadManager$SecQuery;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/DownloadManager;->secquery(Landroid/app/DownloadManager$SecQuery;)Landroid/database/Cursor;

    move-result-object v0

    .line 1169
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1170
    const-string/jumbo v3, "status"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1171
    .local v1, status:I
    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    const/16 v3, 0x10

    if-eq v1, v3, :cond_0

    .line 1178
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v3, v5

    .line 1189
    .end local v1           #status:I
    :goto_1
    return v3

    .line 1169
    .restart local v1       #status:I
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1178
    .end local v1           #status:I
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1181
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1182
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "current_bytes"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1183
    const-string/jumbo v3, "total_bytes"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1184
    const-string v3, "_data"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1185
    const-string/jumbo v3, "state"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1186
    const-string/jumbo v3, "visibility"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1187
    const-string/jumbo v3, "status"

    const/16 v3, 0xbe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1188
    iget-object v3, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Landroid/app/DownloadManager;->mSecBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v3, v7

    .line 1189
    goto :goto_1
.end method

.method public setAccessAllDownloads(Z)V
    .locals 1
    .parameter "accessAllDownloads"

    .prologue
    .line 970
    if-eqz p1, :cond_0

    .line 971
    sget-object v0, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    .line 975
    :goto_0
    return-void

    .line 973
    :cond_0
    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public setSecDownloads(Z)V
    .locals 1
    .parameter "accessAllDownloads"

    .prologue
    .line 985
    if-eqz p1, :cond_0

    .line 986
    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    .line 989
    :cond_0
    return-void
.end method
