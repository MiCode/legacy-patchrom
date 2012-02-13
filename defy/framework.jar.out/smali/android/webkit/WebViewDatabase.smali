.class public Landroid/webkit/WebViewDatabase;
.super Ljava/lang/Object;
.source "WebViewDatabase.java"


# static fields
.field private static final CACHE_CONTENTDISPOSITION_COL:Ljava/lang/String; = "contentdisposition"

.field private static final CACHE_CONTENTLENGTH_COL:Ljava/lang/String; = "contentlength"

.field private static final CACHE_CROSSDOMAIN_COL:Ljava/lang/String; = "crossdomain"

.field private static final CACHE_DATABASE_FILE:Ljava/lang/String; = "webviewCache.db"

.field private static final CACHE_DATABASE_VERSION:I = 0x4

.field private static final CACHE_ENCODING_COL:Ljava/lang/String; = "encoding"

.field private static final CACHE_ETAG_COL:Ljava/lang/String; = "etag"

.field private static final CACHE_EXPIRES_COL:Ljava/lang/String; = "expires"

.field private static final CACHE_EXPIRES_STRING_COL:Ljava/lang/String; = "expiresstring"

.field private static final CACHE_FILE_PATH_COL:Ljava/lang/String; = "filepath"

.field private static final CACHE_HTTP_STATUS_COL:Ljava/lang/String; = "httpstatus"

.field private static final CACHE_LAST_MODIFY_COL:Ljava/lang/String; = "lastmodify"

.field private static final CACHE_LOCATION_COL:Ljava/lang/String; = "location"

.field private static final CACHE_MIMETYPE_COL:Ljava/lang/String; = "mimetype"

.field private static final CACHE_URL_COL:Ljava/lang/String; = "url"

.field private static final COOKIES_DOMAIN_COL:Ljava/lang/String; = "domain"

.field private static final COOKIES_EXPIRES_COL:Ljava/lang/String; = "expires"

.field private static final COOKIES_NAME_COL:Ljava/lang/String; = "name"

.field private static final COOKIES_PATH_COL:Ljava/lang/String; = "path"

.field private static final COOKIES_SECURE_COL:Ljava/lang/String; = "secure"

.field private static final COOKIES_VALUE_COL:Ljava/lang/String; = "value"

.field private static final DATABASE_FILE:Ljava/lang/String; = "webview.db"

.field private static final DATABASE_VERSION:I = 0xa

.field private static final FORMDATA_NAME_COL:Ljava/lang/String; = "name"

.field private static final FORMDATA_URLID_COL:Ljava/lang/String; = "urlid"

.field private static final FORMDATA_VALUE_COL:Ljava/lang/String; = "value"

.field private static final FORMURL_URL_COL:Ljava/lang/String; = "url"

.field private static final HTTPAUTH_HOST_COL:Ljava/lang/String; = "host"

.field private static final HTTPAUTH_PASSWORD_COL:Ljava/lang/String; = "password"

.field private static final HTTPAUTH_REALM_COL:Ljava/lang/String; = "realm"

.field private static final HTTPAUTH_USERNAME_COL:Ljava/lang/String; = "username"

.field private static final ID_COL:Ljava/lang/String; = "_id"

.field private static final ID_PROJECTION:[Ljava/lang/String; = null

.field protected static final LOGTAG:Ljava/lang/String; = "webviewdatabase"

.field private static final PASSWORD_HOST_COL:Ljava/lang/String; = "host"

.field private static final PASSWORD_PASSWORD_COL:Ljava/lang/String; = "password"

.field private static final PASSWORD_USERNAME_COL:Ljava/lang/String; = "username"

.field private static final TABLE_COOKIES_ID:I = 0x0

.field private static final TABLE_FORMDATA_ID:I = 0x3

.field private static final TABLE_FORMURL_ID:I = 0x2

.field private static final TABLE_HTTPAUTH_ID:I = 0x4

.field private static final TABLE_PASSWORD_ID:I = 0x1

.field private static mCacheContentDispositionColIndex:I

.field private static mCacheContentLengthColIndex:I

.field private static mCacheCrossDomainColIndex:I

.field private static mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private static mCacheETagColIndex:I

.field private static mCacheEncodingColIndex:I

.field private static mCacheExpiresColIndex:I

.field private static mCacheExpiresStringColIndex:I

.field private static mCacheFilePathColIndex:I

.field private static mCacheHttpStatusColIndex:I

.field private static mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private static mCacheLastModifyColIndex:I

.field private static mCacheLocationColIndex:I

.field private static mCacheMimeTypeColIndex:I

.field private static mCacheTransactionRefcount:I

.field private static mCacheUrlColIndex:I

.field private static mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private static mInstance:Landroid/webkit/WebViewDatabase;

.field private static final mTableNames:[Ljava/lang/String;


# instance fields
.field private final mCookieLock:Ljava/lang/Object;

.field private final mFormLock:Ljava/lang/Object;

.field private final mHttpAuthLock:Ljava/lang/Object;

.field private final mPasswordLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/WebViewDatabase;->mInstance:Landroid/webkit/WebViewDatabase;

    sput-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sput-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "cookies"

    aput-object v1, v0, v3

    const-string v1, "password"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "formurl"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "formdata"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "httpauth"

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Landroid/webkit/WebViewDatabase;->ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewDatabase;->mCookieLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewDatabase;->mPasswordLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewDatabase;->mFormLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewDatabase;->mHttpAuthLock:Ljava/lang/Object;

    return-void
.end method

.method private static bootstrapCacheDatabase()V
    .locals 2

    .prologue
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE cache (_id INTEGER PRIMARY KEY, url TEXT, filepath TEXT, lastmodify TEXT, etag TEXT, expires INTEGER, expiresstring TEXT, mimetype TEXT, encoding TEXT,httpstatus INTEGER, location TEXT, contentlength INTEGER, contentdisposition TEXT, crossdomain TEXT, UNIQUE (url) ON CONFLICT REPLACE);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX cacheUrlIndex ON cache (url)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;
    .locals 5
    .parameter "context"

    .prologue
    const-string v1, "webviewCache.db"

    const-string v1, "webview.db"

    const-class v1, Landroid/webkit/WebViewDatabase;

    monitor-enter v1

    :try_start_0
    sget-object v2, Landroid/webkit/WebViewDatabase;->mInstance:Landroid/webkit/WebViewDatabase;

    if-nez v2, :cond_5

    new-instance v2, Landroid/webkit/WebViewDatabase;

    invoke-direct {v2}, Landroid/webkit/WebViewDatabase;-><init>()V

    sput-object v2, Landroid/webkit/WebViewDatabase;->mInstance:Landroid/webkit/WebViewDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "webview.db"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_1

    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Landroid/webkit/WebViewDatabase;->upgradeDatabase()V

    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_1
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_2

    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    :try_start_5
    const-string v2, "webviewCache.db"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    :goto_1
    :try_start_6
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_4

    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4

    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-static {}, Landroid/webkit/WebViewDatabase;->upgradeCacheDatabase()V

    invoke-static {}, Landroid/webkit/WebViewDatabase;->bootstrapCacheDatabase()V

    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-static {}, Landroid/webkit/CacheManager;->removeAllCacheFiles()Z

    :cond_4
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_5

    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "PRAGMA read_uncommitted = true;"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    new-instance v2, Landroid/database/DatabaseUtils$InsertHelper;

    sget-object v3, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "cache"

    invoke-direct {v2, v3, v4}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    sput-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "url"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheUrlColIndex:I

    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "filepath"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheFilePathColIndex:I

    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "lastmodify"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheLastModifyColIndex:I

    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "etag"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheETagColIndex:I

    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "expires"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheExpiresColIndex:I

    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "expiresstring"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheExpiresStringColIndex:I

    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "mimetype"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheMimeTypeColIndex:I

    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "encoding"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheEncodingColIndex:I

    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "httpstatus"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheHttpStatusColIndex:I

    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheLocationColIndex:I

    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "contentlength"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheContentLengthColIndex:I

    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "contentdisposition"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheContentDispositionColIndex:I

    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "crossdomain"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheCrossDomainColIndex:I

    :cond_5
    sget-object v2, Landroid/webkit/WebViewDatabase;->mInstance:Landroid/webkit/WebViewDatabase;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit v1

    return-object v2

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/database/sqlite/SQLiteException;
    :try_start_9
    const-string v2, "webview.db"

    invoke-virtual {p0, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "webview.db"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    :catchall_1
    move-exception v2

    :try_start_a
    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    :catch_1
    move-exception v2

    move-object v0, v2

    .restart local v0       #e:Landroid/database/sqlite/SQLiteException;
    const-string v2, "webviewCache.db"

    invoke-virtual {p0, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "webviewCache.db"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    goto/16 :goto_1

    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_2
    move-exception v2

    sget-object v3, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method

.method private hasEntries(I)Z
    .locals 13
    .parameter "tableId"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    move v0, v11

    :goto_0
    return v0

    :cond_0
    const/4 v8, 0x0

    .local v8, cursor:Landroid/database/Cursor;
    const/4 v10, 0x0

    .local v10, ret:Z
    :try_start_0
    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    sget-object v2, Landroid/webkit/WebViewDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v0, v12, :cond_2

    move v10, v12

    :goto_1
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_2
    move v0, v10

    goto :goto_0

    :cond_2
    move v10, v11

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v9, v0

    .local v9, e:Ljava/lang/IllegalStateException;
    :try_start_1
    const-string v0, "webviewdatabase"

    const-string v1, "hasEntries"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v9           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private static upgradeCacheDatabase()V
    .locals 4

    .prologue
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    .local v0, oldVersion:I
    if-eqz v0, :cond_0

    const-string v1, "webviewdatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upgrading cache database from version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", which will destroy all old data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DROP TABLE IF EXISTS cache"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    return-void
.end method

.method private static upgradeDatabase()V
    .locals 12

    .prologue
    const-string v11, "DROP TABLE IF EXISTS "

    const-string v10, "CREATE TABLE "

    const-string v9, " INTEGER PRIMARY KEY, "

    const-string v8, " ("

    const-string v7, " TEXT, "

    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    .local v2, oldVersion:I
    if-eqz v2, :cond_0

    const-string v3, "webviewdatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upgrading database from version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", which will destroy old data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v3, 0x8

    if-ne v3, v2, :cond_1

    :cond_1
    const/4 v1, 0x0

    .local v1, justPasswords:Z
    const/16 v3, 0x9

    if-ne v3, v2, :cond_2

    const/4 v3, 0x1

    move v0, v3

    .local v0, justAuth:Z
    :goto_0
    if-eqz v0, :cond_3

    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DROP TABLE IF EXISTS "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CREATE TABLE "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " INTEGER PRIMARY KEY, "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "host"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "realm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "username"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "password"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " UNIQUE ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "host"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "realm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") ON CONFLICT REPLACE);"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_1
    return-void

    .end local v0           #justAuth:Z
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0

    .restart local v0       #justAuth:Z
    :cond_3
    if-nez v1, :cond_4

    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DROP TABLE IF EXISTS "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "DROP TABLE IF EXISTS cache"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DROP TABLE IF EXISTS "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DROP TABLE IF EXISTS "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DROP TABLE IF EXISTS "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_4
    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DROP TABLE IF EXISTS "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    if-nez v1, :cond_5

    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CREATE TABLE "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " INTEGER PRIMARY KEY, "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "value"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "domain"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "path"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "expires"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " INTEGER, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "secure"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " INTEGER"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ");"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CREATE INDEX cookiesIndex ON "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (path)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CREATE TABLE "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " INTEGER PRIMARY KEY, "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "url"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ");"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CREATE TABLE "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " INTEGER PRIMARY KEY, "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "urlid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " INTEGER, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "value"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " UNIQUE ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "urlid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "value"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") ON CONFLICT IGNORE);"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CREATE TABLE "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " INTEGER PRIMARY KEY, "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "host"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "realm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "username"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "password"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " UNIQUE ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "host"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "realm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") ON CONFLICT REPLACE);"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_5
    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CREATE TABLE "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " INTEGER PRIMARY KEY, "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "host"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "username"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "password"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " UNIQUE ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "host"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "username"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") ON CONFLICT REPLACE);"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_1
.end method


# virtual methods
.method addCache(Ljava/lang/String;Landroid/webkit/CacheManager$CacheResult;)V
    .locals 4
    .parameter "url"
    .parameter "c"

    .prologue
    if-eqz p1, :cond_0

    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0}, Landroid/database/DatabaseUtils$InsertHelper;->prepareForInsert()V

    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Landroid/webkit/WebViewDatabase;->mCacheUrlColIndex:I

    invoke-virtual {v0, v1, p1}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Landroid/webkit/WebViewDatabase;->mCacheFilePathColIndex:I

    iget-object v2, p2, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Landroid/webkit/WebViewDatabase;->mCacheLastModifyColIndex:I

    iget-object v2, p2, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Landroid/webkit/WebViewDatabase;->mCacheETagColIndex:I

    iget-object v2, p2, Landroid/webkit/CacheManager$CacheResult;->etag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Landroid/webkit/WebViewDatabase;->mCacheExpiresColIndex:I

    iget-wide v2, p2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IJ)V

    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Landroid/webkit/WebViewDatabase;->mCacheExpiresStringColIndex:I

    iget-object v2, p2, Landroid/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Landroid/webkit/WebViewDatabase;->mCacheMimeTypeColIndex:I

    iget-object v2, p2, Landroid/webkit/CacheManager$CacheResult;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Landroid/webkit/WebViewDatabase;->mCacheEncodingColIndex:I

    iget-object v2, p2, Landroid/webkit/CacheManager$CacheResult;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Landroid/webkit/WebViewDatabase;->mCacheHttpStatusColIndex:I

    iget v2, p2, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Landroid/webkit/WebViewDatabase;->mCacheLocationColIndex:I

    iget-object v2, p2, Landroid/webkit/CacheManager$CacheResult;->location:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Landroid/webkit/WebViewDatabase;->mCacheContentLengthColIndex:I

    iget-wide v2, p2, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IJ)V

    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Landroid/webkit/WebViewDatabase;->mCacheContentDispositionColIndex:I

    iget-object v2, p2, Landroid/webkit/CacheManager$CacheResult;->contentdisposition:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Landroid/webkit/WebViewDatabase;->mCacheCrossDomainColIndex:I

    iget-object v2, p2, Landroid/webkit/CacheManager$CacheResult;->crossDomain:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0}, Landroid/database/DatabaseUtils$InsertHelper;->execute()J

    goto :goto_0
.end method

.method addCookie(Landroid/webkit/CookieManager$Cookie;)V
    .locals 6
    .parameter "cookie"

    .prologue
    iget-object v1, p1, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/webkit/CookieManager$Cookie;->path:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/webkit/CookieManager$Cookie;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/webkit/WebViewDatabase;->mCookieLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, cookieVal:Landroid/content/ContentValues;
    const-string v2, "domain"

    iget-object v3, p1, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "path"

    iget-object v3, p1, Landroid/webkit/CookieManager$Cookie;->path:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "name"

    iget-object v3, p1, Landroid/webkit/CookieManager$Cookie;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "value"

    iget-object v3, p1, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p1, Landroid/webkit/CookieManager$Cookie;->expires:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const-string v2, "expires"

    iget-wide v3, p1, Landroid/webkit/CookieManager$Cookie;->expires:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_2
    const-string v2, "secure"

    iget-boolean v3, p1, Landroid/webkit/CookieManager$Cookie;->secure:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    monitor-exit v1

    goto :goto_0

    .end local v0           #cookieVal:Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method clearCache()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cache"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method clearCookies()V
    .locals 5

    .prologue
    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewDatabase;->mCookieLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method clearExpiredCookies(J)V
    .locals 8
    .parameter "now"

    .prologue
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "expires <= ?"

    .local v0, expires:Ljava/lang/String;
    iget-object v1, p0, Landroid/webkit/WebViewDatabase;->mCookieLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const-string v4, "expires <= ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public clearFormData()V
    .locals 5

    .prologue
    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewDatabase;->mFormLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearHttpAuthUsernamePassword()V
    .locals 5

    .prologue
    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewDatabase;->mHttpAuthLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method clearSessionCookies()V
    .locals 6

    .prologue
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "expires ISNULL"

    .local v0, sessionExpired:Ljava/lang/String;
    iget-object v1, p0, Landroid/webkit/WebViewDatabase;->mCookieLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const-string v4, "expires ISNULL"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public clearUsernamePassword()V
    .locals 5

    .prologue
    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewDatabase;->mPasswordLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method deleteCookies(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "domain"
    .parameter "path"
    .parameter "name"

    .prologue
    if-eqz p1, :cond_0

    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/webkit/WebViewDatabase;->mCookieLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "(domain == ?) AND (path == ?) AND (name == ?)"

    .local v0, where:Ljava/lang/String;
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const-string v4, "(domain == ?) AND (path == ?) AND (name == ?)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    monitor-exit v1

    goto :goto_0

    .end local v0           #where:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method endCacheTransaction()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const-string v6, "Error executing end transaction"

    const-string v4, "webviewdatabase"

    sget v1, Landroid/webkit/WebViewDatabase;->mCacheTransactionRefcount:I

    sub-int/2addr v1, v5

    sput v1, Landroid/webkit/WebViewDatabase;->mCacheTransactionRefcount:I

    if-nez v1, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebViewWorker;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "webviewdatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endCacheTransaction should be called from WebViewWorkerThread instead of from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v5

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, sqle:Landroid/database/sqlite/SQLiteException;
    const-string v1, "webviewdatabase"

    const-string v1, "Error executing end transaction"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    goto :goto_0

    .end local v0           #sqle:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    :try_start_2
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    throw v1

    :catch_1
    move-exception v1

    move-object v0, v1

    .restart local v0       #sqle:Landroid/database/sqlite/SQLiteException;
    const-string v1, "webviewdatabase"

    const-string v1, "Error executing end transaction"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    goto :goto_0

    .end local v0           #sqle:Landroid/database/sqlite/SQLiteException;
    :cond_1
    move v1, v3

    goto :goto_0
.end method

.method getAllCacheFileNames()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .local v2, pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v4, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "SELECT filepath FROM cache"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v3, pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-nez v4, :cond_0

    move-object v2, v3

    .end local v3           #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    return-object v2

    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, e:Ljava/lang/IllegalStateException;
    :goto_1
    :try_start_2
    const-string v4, "webviewdatabase"

    const-string v5, "getAllCacheFileNames"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v4

    .end local v2           #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_2

    .end local v2           #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_1
    move-exception v4

    move-object v1, v4

    move-object v2, v3

    .end local v3           #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1
.end method

.method getCache(Ljava/lang/String;)Landroid/webkit/CacheManager$CacheResult;
    .locals 9
    .parameter "url"

    .prologue
    const/4 v8, 0x0

    if-eqz p1, :cond_0

    sget-object v4, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_1

    :cond_0
    move-object v4, v8

    :goto_0
    return-object v4

    :cond_1
    const/4 v0, 0x0

    .local v0, cursor:Landroid/database/Cursor;
    const-string v2, "SELECT filepath, lastmodify, etag, expires, expiresstring, mimetype, encoding, httpstatus, location, contentlength, contentdisposition, crossdomain FROM cache WHERE url = ?"

    .local v2, query:Ljava/lang/String;
    :try_start_0
    sget-object v4, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "SELECT filepath, lastmodify, etag, expires, expiresstring, mimetype, encoding, httpstatus, location, contentlength, contentdisposition, crossdomain FROM cache WHERE url = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v3, Landroid/webkit/CacheManager$CacheResult;

    invoke-direct {v3}, Landroid/webkit/CacheManager$CacheResult;-><init>()V

    .local v3, ret:Landroid/webkit/CacheManager$CacheResult;
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->etag:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/webkit/CacheManager$CacheResult;->expires:J

    const/4 v4, 0x4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    const/4 v4, 0x5

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->mimeType:Ljava/lang/String;

    const/4 v4, 0x6

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->encoding:Ljava/lang/String;

    const/4 v4, 0x7

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    const/16 v4, 0x8

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->location:Ljava/lang/String;

    const/16 v4, 0x9

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    const/16 v4, 0xa

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->contentdisposition:Ljava/lang/String;

    const/16 v4, 0xb

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->crossDomain:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v4, v3

    goto :goto_0

    .end local v3           #ret:Landroid/webkit/CacheManager$CacheResult;
    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    move-object v4, v8

    goto/16 :goto_0

    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, e:Ljava/lang/IllegalStateException;
    :try_start_1
    const-string v4, "webviewdatabase"

    const-string v5, "getCache"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v4
.end method

.method getCacheTotalSize()J
    .locals 8

    .prologue
    sget-object v5, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_0

    const-wide/16 v5, 0x0

    :goto_0
    return-wide v5

    :cond_0
    const-wide/16 v3, 0x0

    .local v3, size:J
    const/4 v0, 0x0

    .local v0, cursor:Landroid/database/Cursor;
    const-string v2, "SELECT SUM(contentlength) as sum FROM cache"

    .local v2, query:Ljava/lang/String;
    :try_start_0
    sget-object v5, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "SELECT SUM(contentlength) as sum FROM cache"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move-wide v5, v3

    goto :goto_0

    :catch_0
    move-exception v5

    move-object v1, v5

    .local v1, e:Ljava/lang/IllegalStateException;
    :try_start_1
    const-string v5, "webviewdatabase"

    const-string v6, "getCacheTotalSize"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v5
.end method

.method getCookiesForDomain(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 22
    .parameter "domain"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/CookieManager$Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .local v15, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    if-eqz p1, :cond_0

    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v15

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewDatabase;->mCookieLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    const/4 v2, 0x7

    :try_start_0
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "domain"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "path"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "name"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "value"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "expires"

    aput-object v3, v4, v2

    const/4 v2, 0x6

    const-string v3, "secure"

    aput-object v3, v4, v2

    .local v4, columns:[Ljava/lang/String;
    const-string v19, "(domain GLOB \'*\' || ?)"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v19, selection:Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, cursor:Landroid/database/Cursor;
    :try_start_1
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    const-string v5, "(domain GLOB \'*\' || ?)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "domain"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .local v12, domainCol:I
    const-string v2, "path"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .local v17, pathCol:I
    const-string v2, "name"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .local v16, nameCol:I
    const-string v2, "value"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .local v20, valueCol:I
    const-string v2, "expires"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .local v14, expiresCol:I
    const-string v2, "secure"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .local v18, secureCol:I
    :cond_2
    new-instance v10, Landroid/webkit/CookieManager$Cookie;

    invoke-direct {v10}, Landroid/webkit/CookieManager$Cookie;-><init>()V

    .local v10, cookie:Landroid/webkit/CookieManager$Cookie;
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    move-object v0, v11

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Landroid/webkit/CookieManager$Cookie;->path:Ljava/lang/String;

    move-object v0, v11

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Landroid/webkit/CookieManager$Cookie;->name:Ljava/lang/String;

    move-object v0, v11

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    invoke-interface {v11, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const-wide/16 v2, -0x1

    iput-wide v2, v10, Landroid/webkit/CookieManager$Cookie;->expires:J

    :goto_1
    move-object v0, v11

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    :goto_2
    iput-boolean v2, v10, Landroid/webkit/CookieManager$Cookie;->secure:Z

    const/4 v2, 0x1

    iput-byte v2, v10, Landroid/webkit/CookieManager$Cookie;->mode:B

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-nez v2, :cond_2

    .end local v10           #cookie:Landroid/webkit/CookieManager$Cookie;
    .end local v12           #domainCol:I
    .end local v14           #expiresCol:I
    .end local v16           #nameCol:I
    .end local v17           #pathCol:I
    .end local v18           #secureCol:I
    .end local v20           #valueCol:I
    :cond_3
    if-eqz v11, :cond_4

    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_3
    monitor-exit v21

    goto/16 :goto_0

    .end local v4           #columns:[Ljava/lang/String;
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v19           #selection:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .restart local v4       #columns:[Ljava/lang/String;
    .restart local v10       #cookie:Landroid/webkit/CookieManager$Cookie;
    .restart local v11       #cursor:Landroid/database/Cursor;
    .restart local v12       #domainCol:I
    .restart local v14       #expiresCol:I
    .restart local v16       #nameCol:I
    .restart local v17       #pathCol:I
    .restart local v18       #secureCol:I
    .restart local v19       #selection:Ljava/lang/String;
    .restart local v20       #valueCol:I
    :cond_5
    :try_start_3
    invoke-interface {v11, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v10, Landroid/webkit/CookieManager$Cookie;->expires:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .end local v10           #cookie:Landroid/webkit/CookieManager$Cookie;
    .end local v12           #domainCol:I
    .end local v14           #expiresCol:I
    .end local v16           #nameCol:I
    .end local v17           #pathCol:I
    .end local v18           #secureCol:I
    .end local v20           #valueCol:I
    :catch_0
    move-exception v2

    move-object v13, v2

    .local v13, e:Ljava/lang/IllegalStateException;
    :try_start_4
    const-string v2, "webviewdatabase"

    const-string v3, "getCookiesForDomain"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v11, :cond_4

    :try_start_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .end local v13           #e:Ljava/lang/IllegalStateException;
    .restart local v10       #cookie:Landroid/webkit/CookieManager$Cookie;
    .restart local v12       #domainCol:I
    .restart local v14       #expiresCol:I
    .restart local v16       #nameCol:I
    .restart local v17       #pathCol:I
    .restart local v18       #secureCol:I
    .restart local v20       #valueCol:I
    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .end local v10           #cookie:Landroid/webkit/CookieManager$Cookie;
    .end local v12           #domainCol:I
    .end local v14           #expiresCol:I
    .end local v16           #nameCol:I
    .end local v17           #pathCol:I
    .end local v18           #secureCol:I
    .end local v20           #valueCol:I
    :catchall_1
    move-exception v2

    if-eqz v11, :cond_7

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method getFormData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 19
    .parameter "url"
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .local v18, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v18

    :cond_1
    const-string v14, "(url == ?)"

    .local v14, urlSelection:Ljava/lang/String;
    const-string v12, "(urlid == ?) AND (name == ?)"

    .local v12, dataSelection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewDatabase;->mFormLock:Ljava/lang/Object;

    move-object v12, v0

    .end local v12           #dataSelection:Ljava/lang/String;
    monitor-enter v12

    const/4 v10, 0x0

    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    sget-object v4, Landroid/webkit/WebViewDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const-string v5, "(url == ?)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v15

    .local v15, urlid:J
    const/4 v11, 0x0

    .local v11, dataCursor:Landroid/database/Cursor;
    :try_start_1
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "value"

    aput-object v6, v4, v5

    const-string v5, "(urlid == ?) AND (name == ?)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "value"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .local v17, valueCol:I
    :cond_2
    move-object v0, v11

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-nez v2, :cond_2

    .end local v17           #valueCol:I
    :cond_3
    if-eqz v11, :cond_4

    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v11           #dataCursor:Landroid/database/Cursor;
    .end local v15           #urlid:J
    :cond_4
    :goto_1
    if-eqz v10, :cond_5

    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_2
    monitor-exit v12

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .restart local v11       #dataCursor:Landroid/database/Cursor;
    .restart local v15       #urlid:J
    :catch_0
    move-exception v2

    move-object v13, v2

    .local v13, e:Ljava/lang/IllegalStateException;
    :try_start_4
    const-string v2, "webviewdatabase"

    const-string v3, "getFormData dataCursor"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v11, :cond_4

    :try_start_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .end local v11           #dataCursor:Landroid/database/Cursor;
    .end local v13           #e:Ljava/lang/IllegalStateException;
    .end local v15           #urlid:J
    :catch_1
    move-exception v2

    move-object v13, v2

    .restart local v13       #e:Ljava/lang/IllegalStateException;
    :try_start_6
    const-string v2, "webviewdatabase"

    const-string v3, "getFormData cursor"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v10, :cond_5

    :try_start_7
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .end local v13           #e:Ljava/lang/IllegalStateException;
    .restart local v11       #dataCursor:Landroid/database/Cursor;
    .restart local v15       #urlid:J
    :catchall_1
    move-exception v2

    if-eqz v11, :cond_6

    :try_start_8
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_1

    .end local v11           #dataCursor:Landroid/database/Cursor;
    .end local v15           #urlid:J
    :catchall_2
    move-exception v2

    if-eqz v10, :cond_7

    :try_start_9
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 13
    .parameter "host"
    .parameter "realm"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    const-string v6, "password"

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "username"

    aput-object v0, v2, v3

    const-string v0, "password"

    aput-object v6, v2, v4

    .local v2, columns:[Ljava/lang/String;
    const-string v11, "(host == ?) AND (realm == ?)"

    .local v11, selection:Ljava/lang/String;
    iget-object v12, p0, Landroid/webkit/WebViewDatabase;->mHttpAuthLock:Ljava/lang/Object;

    monitor-enter v12

    const/4 v10, 0x0

    .local v10, ret:[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v1, v1, v3

    const-string v3, "(host == ?) AND (realm == ?)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    new-array v10, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "username"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0

    const/4 v0, 0x1

    const-string v1, "password"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    if-eqz v8, :cond_3

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v10

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v9, v0

    .local v9, e:Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v0, "webviewdatabase"

    const-string v1, "getHttpAuthUsernamePassword"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v8, :cond_3

    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v9           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    if-eqz v8, :cond_4

    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method getUsernamePassword(Ljava/lang/String;)[Ljava/lang/String;
    .locals 13
    .parameter "schemePlusHost"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    const-string v6, "password"

    if-eqz p1, :cond_0

    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v3

    :goto_0
    return-object v0

    :cond_1
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "username"

    aput-object v0, v2, v4

    const-string v0, "password"

    aput-object v6, v2, v1

    .local v2, columns:[Ljava/lang/String;
    const-string v11, "(host == ?)"

    .local v11, selection:Ljava/lang/String;
    iget-object v12, p0, Landroid/webkit/WebViewDatabase;->mPasswordLock:Ljava/lang/Object;

    monitor-enter v12

    const/4 v10, 0x0

    .local v10, ret:[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    const-string v3, "(host == ?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    new-array v10, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "username"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0

    const/4 v0, 0x1

    const-string v1, "password"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    if-eqz v8, :cond_3

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v10

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v9, v0

    .local v9, e:Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v0, "webviewdatabase"

    const-string v1, "getUsernamePassword"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v8, :cond_3

    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v9           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    if-eqz v8, :cond_4

    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method hasCache()Z
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    move v0, v11

    :goto_0
    return v0

    :cond_0
    const/4 v8, 0x0

    .local v8, cursor:Landroid/database/Cursor;
    const/4 v10, 0x0

    .local v10, ret:Z
    :try_start_0
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cache"

    sget-object v2, Landroid/webkit/WebViewDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v0, v12, :cond_2

    move v10, v12

    :goto_1
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_2
    move v0, v10

    goto :goto_0

    :cond_2
    move v10, v11

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v9, v0

    .local v9, e:Ljava/lang/IllegalStateException;
    :try_start_1
    const-string v0, "webviewdatabase"

    const-string v1, "hasCache"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v9           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method hasCookies()Z
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/WebViewDatabase;->mCookieLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Landroid/webkit/WebViewDatabase;->hasEntries(I)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasFormData()Z
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/WebViewDatabase;->mFormLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    :try_start_0
    invoke-direct {p0, v1}, Landroid/webkit/WebViewDatabase;->hasEntries(I)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasHttpAuthUsernamePassword()Z
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/WebViewDatabase;->mHttpAuthLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x4

    :try_start_0
    invoke-direct {p0, v1}, Landroid/webkit/WebViewDatabase;->hasEntries(I)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasUsernamePassword()Z
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/WebViewDatabase;->mPasswordLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Landroid/webkit/WebViewDatabase;->hasEntries(I)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeCache(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    if-eqz p1, :cond_0

    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DELETE FROM cache WHERE url = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method setFormData(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 22
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, formdata:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-object v4, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_1

    .end local p0
    :cond_0
    :goto_0
    return-void

    .restart local p0
    :cond_1
    const-string v18, "(url == ?)"

    .local v18, selection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewDatabase;->mFormLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    .end local v18           #selection:Ljava/lang/String;
    monitor-enter v18

    const-wide/16 v20, -0x1

    .local v20, urlid:J
    const/4 v13, 0x0

    .local v13, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v4, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    sget-object v6, Landroid/webkit/WebViewDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const-string v7, "(url == ?)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "_id"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v20

    :goto_1
    if-eqz v13, :cond_2

    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_2
    const-wide/16 v4, 0x0

    cmp-long v4, v20, v4

    if-ltz v4, :cond_5

    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v19

    .local v19, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .local v17, map:Landroid/content/ContentValues;
    const-string v4, "urlid"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .end local p0
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .local v15, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "name"

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object v1, v4

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "value"

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object v1, v4

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    const/4 v6, 0x0

    move-object v0, v4

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_3

    .end local v15           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v17           #map:Landroid/content/ContentValues;
    .end local v19           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catchall_0
    move-exception v4

    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .restart local p0
    :cond_3
    :try_start_2
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .local v12, c:Landroid/content/ContentValues;
    const-string v4, "url"

    move-object v0, v12

    move-object v1, v4

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v20

    goto/16 :goto_1

    .end local v12           #c:Landroid/content/ContentValues;
    :catch_0
    move-exception v4

    move-object v14, v4

    .local v14, e:Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v4, "webviewdatabase"

    const-string v5, "setFormData"

    invoke-static {v4, v5, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v13, :cond_2

    :try_start_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .end local v14           #e:Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception v4

    if-eqz v13, :cond_4

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v4

    .end local p0
    :cond_5
    monitor-exit v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "host"
    .parameter "realm"
    .parameter "username"
    .parameter "password"

    .prologue
    const-string v1, "host"

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/webkit/WebViewDatabase;->mHttpAuthLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, c:Landroid/content/ContentValues;
    const-string v2, "host"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "realm"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "username"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "password"

    invoke-virtual {v0, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    const-string v4, "host"

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    monitor-exit v1

    goto :goto_0

    .end local v0           #c:Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "schemePlusHost"
    .parameter "username"
    .parameter "password"

    .prologue
    const-string v1, "host"

    if-eqz p1, :cond_0

    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/webkit/WebViewDatabase;->mPasswordLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, c:Landroid/content/ContentValues;
    const-string v2, "host"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "username"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "password"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const-string v4, "host"

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    monitor-exit v1

    goto :goto_0

    .end local v0           #c:Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method startCacheTransaction()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget v0, Landroid/webkit/WebViewDatabase;->mCacheTransactionRefcount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/webkit/WebViewDatabase;->mCacheTransactionRefcount:I

    if-ne v0, v3, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebViewWorker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "webviewdatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCacheTransaction should be called from WebViewWorkerThread instead of from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move v0, v3

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method trimCache(J)Ljava/util/List;
    .locals 16
    .parameter "amount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v9, Ljava/util/ArrayList;

    const/16 v13, 0x64

    invoke-direct {v9, v13}, Ljava/util/ArrayList;-><init>(I)V

    .local v9, pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, cursor:Landroid/database/Cursor;
    const-string v11, "SELECT contentlength, filepath FROM cache ORDER BY expires ASC"

    .local v11, query:Ljava/lang/String;
    :try_start_0
    sget-object v13, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v14, "SELECT contentlength, filepath FROM cache ORDER BY expires ASC"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_4

    const/16 v0, 0x64

    .local v0, batchSize:I
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v13, 0x14

    mul-int/lit8 v14, v0, 0x10

    add-int/lit16 v13, v13, 0x640

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v10, pathStr:Ljava/lang/StringBuilder;
    const-string v13, "DELETE FROM cache WHERE filepath IN (?"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_0

    const-string v13, ", ?"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string v13, ")"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v12, 0x0

    .local v12, statement:Landroid/database/sqlite/SQLiteStatement;
    :try_start_1
    sget-object v13, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v12

    const/4 v5, 0x1

    .local v5, index:I
    move v6, v5

    .end local v5           #index:I
    .local v6, index:I
    :goto_1
    const/4 v13, 0x0

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .local v7, length:J
    const-wide/16 v13, 0x0

    cmp-long v13, v7, v13

    if-nez v13, :cond_6

    move v5, v6

    .end local v6           #index:I
    .restart local v5       #index:I
    :cond_1
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_2

    const-wide/16 v13, 0x0

    cmp-long v13, p1, v13

    if-gtz v13, :cond_9

    :cond_2
    const/4 v13, 0x1

    if-le v5, v13, :cond_3

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    if-eqz v12, :cond_4

    :try_start_2
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v0           #batchSize:I
    .end local v4           #i:I
    .end local v5           #index:I
    .end local v7           #length:J
    .end local v10           #pathStr:Ljava/lang/StringBuilder;
    .end local v12           #statement:Landroid/database/sqlite/SQLiteStatement;
    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_4
    return-object v9

    .restart local v0       #batchSize:I
    .restart local v4       #i:I
    .restart local v6       #index:I
    .restart local v7       #length:J
    .restart local v10       #pathStr:Ljava/lang/StringBuilder;
    .restart local v12       #statement:Landroid/database/sqlite/SQLiteStatement;
    :cond_6
    sub-long p1, p1, v7

    const/4 v13, 0x1

    :try_start_3
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, filePath:Ljava/lang/String;
    invoke-virtual {v12, v6, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v6, 0x1

    .end local v6           #index:I
    .restart local v5       #index:I
    if-ne v6, v0, :cond_1

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v5, 0x1

    goto :goto_2

    .end local v3           #filePath:Ljava/lang/String;
    .end local v5           #index:I
    .end local v7           #length:J
    :catch_0
    move-exception v13

    move-object v2, v13

    .local v2, e:Ljava/lang/IllegalStateException;
    :try_start_4
    const-string v13, "webviewdatabase"

    const-string v14, "trimCache SQLiteStatement"

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v12, :cond_4

    :try_start_5
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .end local v0           #batchSize:I
    .end local v2           #e:Ljava/lang/IllegalStateException;
    .end local v4           #i:I
    .end local v10           #pathStr:Ljava/lang/StringBuilder;
    .end local v12           #statement:Landroid/database/sqlite/SQLiteStatement;
    :catch_1
    move-exception v13

    move-object v2, v13

    .restart local v2       #e:Ljava/lang/IllegalStateException;
    :try_start_6
    const-string v13, "webviewdatabase"

    const-string v14, "trimCache Cursor"

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .end local v2           #e:Ljava/lang/IllegalStateException;
    .restart local v0       #batchSize:I
    .restart local v4       #i:I
    .restart local v10       #pathStr:Ljava/lang/StringBuilder;
    .restart local v12       #statement:Landroid/database/sqlite/SQLiteStatement;
    :catchall_0
    move-exception v13

    if-eqz v12, :cond_7

    :try_start_7
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_7
    throw v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1

    .end local v0           #batchSize:I
    .end local v4           #i:I
    .end local v10           #pathStr:Ljava/lang/StringBuilder;
    .end local v12           #statement:Landroid/database/sqlite/SQLiteStatement;
    :catchall_1
    move-exception v13

    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v13

    .restart local v0       #batchSize:I
    .restart local v4       #i:I
    .restart local v5       #index:I
    .restart local v7       #length:J
    .restart local v10       #pathStr:Ljava/lang/StringBuilder;
    .restart local v12       #statement:Landroid/database/sqlite/SQLiteStatement;
    :cond_9
    move v6, v5

    .end local v5           #index:I
    .restart local v6       #index:I
    goto :goto_1
.end method
