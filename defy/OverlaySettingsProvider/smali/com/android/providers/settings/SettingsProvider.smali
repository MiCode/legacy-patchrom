.class public Lcom/android/providers/settings/SettingsProvider;
.super Landroid/content/ContentProvider;
.source "SettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/settings/SettingsProvider$SettingsCache;,
        Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;,
        Lcom/android/providers/settings/SettingsProvider$SqlArguments;
    }
.end annotation


# static fields
.field private static final COLUMN_VALUE:[Ljava/lang/String; = null

.field private static final LOCAL_LOGV:Z = false

.field private static final MAX_CACHE_ENTRIES:I = 0xc8

.field private static final MAX_CACHE_ENTRY_SIZE:I = 0x1f4

.field private static final NULL_SETTING:Landroid/os/Bundle; = null

.field private static final TABLE_FAVORITES:Ljava/lang/String; = "favorites"

.field private static final TABLE_OLD_FAVORITES:Ljava/lang/String; = "old_favorites"

.field private static final TAG:Ljava/lang/String; = "SettingsProvider"

.field private static final TOO_LARGE_TO_CACHE_MARKER:Landroid/os/Bundle;

.field private static final sKnownMutationsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sObserverInstance:Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;

.field private static final sSecureCache:Lcom/android/providers/settings/SettingsProvider$SettingsCache;

.field private static final sSystemCache:Lcom/android/providers/settings/SettingsProvider$SettingsCache;


# instance fields
.field private mBackupManager:Landroid/app/backup/BackupManager;

.field protected mOpenHelper:Lcom/android/providers/settings/DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v4, "value"

    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "value"

    aput-object v4, v0, v2

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->COLUMN_VALUE:[Ljava/lang/String;

    .line 63
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    const-string v1, "system"

    invoke-direct {v0, v1}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemCache:Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    .line 64
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    const-string v1, "secure"

    invoke-direct {v0, v1}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSecureCache:Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 77
    const-string v0, "value"

    invoke-static {v4, v3}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->NULL_SETTING:Landroid/os/Bundle;

    .line 81
    const-string v0, "_dummy"

    invoke-static {v0, v3}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->TOO_LARGE_TO_CACHE_MARKER:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 742
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/providers/settings/SettingsProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->fullyPopulateCaches()V

    return-void
.end method

.method static synthetic access$200()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->NULL_SETTING:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$300()Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemCache:Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    return-object v0
.end method

.method static synthetic access$400()Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSecureCache:Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    return-object v0
.end method

.method static synthetic access$500()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->TOO_LARGE_TO_CACHE_MARKER:Landroid/os/Bundle;

    return-object v0
.end method

.method private checkWritePermissions(Lcom/android/providers/settings/SettingsProvider$SqlArguments;)V
    .locals 6
    .parameter "args"

    .prologue
    const-string v5, "android.permission.WRITE_SECURE_SETTINGS"

    .line 207
    const-string v0, "secure"

    iget-object v1, p1, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Permission denial: writing to secure settings requires %1$s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "android.permission.WRITE_SECURE_SETTINGS"

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    return-void
.end method

.method private ensureAndroidIdIsSet()Z
    .locals 15

    .prologue
    const/4 v5, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    const-string v3, "value"

    const-string v14, "android_id"

    .line 323
    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v13, [Ljava/lang/String;

    const-string v0, "value"

    aput-object v3, v2, v12

    const-string v3, "name=?"

    new-array v4, v13, [Ljava/lang/String;

    const-string v0, "android_id"

    aput-object v14, v4, v12

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/settings/SettingsProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 328
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 329
    .local v10, value:Ljava/lang/String;
    :goto_0
    if-nez v10, :cond_1

    .line 330
    new-instance v8, Ljava/security/SecureRandom;

    invoke-direct {v8}, Ljava/security/SecureRandom;-><init>()V

    .line 331
    .local v8, random:Ljava/security/SecureRandom;
    invoke-virtual {v8}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    .line 332
    .local v7, newAndroidIdValue:Ljava/lang/String;
    const-string v0, "SettingsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Generated and saved new ANDROID_ID ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 334
    .local v11, values:Landroid/content/ContentValues;
    const-string v0, "name"

    const-string v1, "android_id"

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v0, "value"

    invoke-virtual {v11, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    sget-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v11}, Lcom/android/providers/settings/SettingsProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 337
    .local v9, uri:Landroid/net/Uri;
    if-nez v9, :cond_1

    .line 343
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v12

    .end local v7           #newAndroidIdValue:Ljava/lang/String;
    .end local v8           #random:Ljava/security/SecureRandom;
    .end local v9           #uri:Landroid/net/Uri;
    .end local v11           #values:Landroid/content/ContentValues;
    :goto_1
    return v0

    .end local v10           #value:Ljava/lang/String;
    :cond_0
    move-object v10, v5

    .line 328
    goto :goto_0

    .line 343
    .restart local v10       #value:Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v13

    goto :goto_1

    .end local v10           #value:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private fullyPopulateCache(Ljava/lang/String;Lcom/android/providers/settings/SettingsProvider$SettingsCache;)V
    .locals 13
    .parameter "table"
    .parameter "cache"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v1, "SettingsProvider"

    .line 291
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mOpenHelper:Lcom/android/providers/settings/DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/settings/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 292
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v2, v4

    const-string v1, "value"

    aput-object v1, v2, v5

    const-string v8, "201"

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 298
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 299
    :try_start_1
    invoke-virtual {p2}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->clear()V

    .line 300
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->setFullyMatchesDisk(Z)V

    .line 301
    const/4 v11, 0x0

    .line 302
    .local v11, rows:I
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    add-int/lit8 v11, v11, 0x1

    .line 304
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 305
    .local v10, name:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 306
    .local v12, value:Ljava/lang/String;
    invoke-virtual {p2, v10, v12}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->populate(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 316
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #rows:I
    .end local v12           #value:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 318
    :catchall_1
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    .line 308
    .restart local v11       #rows:I
    :cond_0
    const/16 v1, 0xc8

    if-le v11, v1, :cond_1

    .line 311
    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p2, v1}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->setFullyMatchesDisk(Z)V

    .line 312
    const-string v1, "SettingsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "row count exceeds max cache entries for table "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_1
    const-string v1, "SettingsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cache for settings table \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' rows="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; fullycached="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->fullyMatchesDisk()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 318
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 320
    return-void
.end method

.method private fullyPopulateCaches()V
    .locals 2

    .prologue
    .line 285
    const-string v0, "secure"

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sSecureCache:Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    invoke-direct {p0, v0, v1}, Lcom/android/providers/settings/SettingsProvider;->fullyPopulateCache(Ljava/lang/String;Lcom/android/providers/settings/SettingsProvider$SettingsCache;)V

    .line 286
    const-string v0, "system"

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sSystemCache:Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    invoke-direct {p0, v0, v1}, Lcom/android/providers/settings/SettingsProvider;->fullyPopulateCache(Ljava/lang/String;Lcom/android/providers/settings/SettingsProvider$SettingsCache;)V

    .line 287
    return-void
.end method

.method private getUriFor(Landroid/net/Uri;Landroid/content/ContentValues;J)Landroid/net/Uri;
    .locals 5
    .parameter "tableUri"
    .parameter "values"
    .parameter "rowId"

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 147
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 149
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 150
    .local v1, table:Ljava/lang/String;
    const-string v2, "system"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "secure"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 151
    :cond_1
    const-string v2, "name"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, name:Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 154
    .end local v0           #name:Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_2
    invoke-static {p1, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method private lookupValue(Ljava/lang/String;Lcom/android/providers/settings/SettingsProvider$SettingsCache;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 12
    .parameter "table"
    .parameter "cache"
    .parameter "key"

    .prologue
    .line 364
    monitor-enter p2

    .line 365
    :try_start_0
    invoke-virtual {p2, p3}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 366
    invoke-virtual {p2, p3}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    .line 367
    .local v11, value:Landroid/os/Bundle;
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->TOO_LARGE_TO_CACHE_MARKER:Landroid/os/Bundle;

    if-eq v11, v1, :cond_2

    .line 368
    monitor-exit p2

    move-object v1, v11

    .line 398
    .end local v11           #value:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-object v1

    .line 371
    :cond_1
    invoke-virtual {p2}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->fullyMatchesDisk()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 378
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->NULL_SETTING:Landroid/os/Bundle;

    monitor-exit p2

    goto :goto_0

    .line 380
    :catchall_0
    move-exception v1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 382
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mOpenHelper:Lcom/android/providers/settings/DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/settings/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 383
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 385
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_2
    sget-object v2, Lcom/android/providers/settings/SettingsProvider;->COLUMN_VALUE:[Ljava/lang/String;

    const-string v3, "name=?"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 387
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 388
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 389
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->putIfAbsent(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    .line 395
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 397
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p2, p3, v1}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->putIfAbsent(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 398
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->NULL_SETTING:Landroid/os/Bundle;

    goto :goto_0

    .line 391
    :catch_0
    move-exception v1

    move-object v10, v1

    .line 392
    .local v10, e:Landroid/database/sqlite/SQLiteException;
    :try_start_3
    const-string v1, "SettingsProvider"

    const-string v2, "settings lookup error"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 393
    const/4 v1, 0x0

    .line 395
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v10           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_1
    move-exception v1

    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
.end method

.method private parseProviderList(Landroid/net/Uri;Landroid/content/ContentValues;)Z
    .locals 13
    .parameter "url"
    .parameter "initialValues"

    .prologue
    .line 484
    const-string v0, "value"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 485
    .local v12, value:Ljava/lang/String;
    const/4 v9, 0x0

    .line 486
    .local v9, newProviders:Ljava/lang/String;
    if-eqz v12, :cond_5

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    .line 487
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 488
    .local v10, prefix:C
    const/16 v0, 0x2b

    if-eq v10, v0, :cond_0

    const/16 v0, 0x2d

    if-ne v10, v0, :cond_5

    .line 490
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 493
    const-string v11, ""

    .line 494
    .local v11, providers:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "value"

    aput-object v1, v2, v0

    .line 495
    .local v2, columns:[Ljava/lang/String;
    const-string v3, "name=\'location_providers_allowed\'"

    .line 496
    .local v3, where:Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/settings/SettingsProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 497
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 499
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 500
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 502
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 506
    :cond_1
    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 507
    .local v8, index:I
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    add-int v7, v8, v0

    .line 509
    .local v7, end:I
    if-lez v8, :cond_2

    const/4 v0, 0x1

    sub-int v0, v8, v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_2

    const/4 v8, -0x1

    .line 510
    :cond_2
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v7, v0, :cond_3

    invoke-virtual {v11, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_3

    const/4 v8, -0x1

    .line 512
    :cond_3
    const/16 v0, 0x2b

    if-ne v10, v0, :cond_7

    if-gez v8, :cond_7

    .line 514
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    .line 515
    move-object v9, v12

    .line 548
    :cond_4
    :goto_0
    if-eqz v9, :cond_5

    .line 549
    const-string v0, "value"

    invoke-virtual {p2, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #end:I
    .end local v8           #index:I
    .end local v10           #prefix:C
    .end local v11           #providers:Ljava/lang/String;
    :cond_5
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 502
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v10       #prefix:C
    .restart local v11       #providers:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 517
    .restart local v7       #end:I
    .restart local v8       #index:I
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 519
    :cond_7
    const/16 v0, 0x2d

    if-ne v10, v0, :cond_b

    if-ltz v8, :cond_b

    .line 522
    if-lez v8, :cond_9

    .line 523
    add-int/lit8 v8, v8, -0x1

    .line 530
    :cond_8
    :goto_2
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v7, v0, :cond_a

    if-lez v8, :cond_a

    .line 532
    const/4 v0, 0x0

    add-int/lit8 v1, v8, 0x1

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 540
    :goto_3
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v7, v0, :cond_4

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 524
    :cond_9
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v7, v0, :cond_8

    .line 525
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 536
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {v11, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    .line 545
    :cond_b
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private sendNotify(Landroid/net/Uri;)V
    .locals 10
    .parameter "uri"

    .prologue
    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, backedUpDataChanged:Z
    const/4 v2, 0x0

    .local v2, property:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 172
    .local v3, table:Ljava/lang/String;
    const-string v6, "system"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 173
    const-string v2, "sys.settings_system_version"

    .line 174
    const/4 v0, 0x1

    .line 180
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 181
    const-wide/16 v6, 0x0

    invoke-static {v2, v6, v7}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/16 v8, 0x1

    add-long v4, v6, v8

    .line 183
    .local v4, version:J
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .end local v4           #version:J
    :cond_1
    if-eqz v0, :cond_2

    .line 188
    iget-object v6, p0, Lcom/android/providers/settings/SettingsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v6}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 192
    :cond_2
    const-string v6, "notify"

    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, notify:Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v6, "true"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 194
    :cond_3
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 199
    :cond_4
    return-void

    .line 175
    .end local v1           #notify:Ljava/lang/String;
    :cond_5
    const-string v6, "secure"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 176
    const-string v2, "sys.settings_secure_version"

    .line 177
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private startAsyncCachePopulation()V
    .locals 2

    .prologue
    .line 277
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$1;

    const-string v1, "populate-settings-caches"

    invoke-direct {v0, p0, v1}, Lcom/android/providers/settings/SettingsProvider$1;-><init>(Lcom/android/providers/settings/SettingsProvider;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/providers/settings/SettingsProvider$1;->start()V

    .line 282
    return-void
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 10
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v9, 0x0

    .line 447
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/android/providers/settings/SettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 448
    .local v0, args:Lcom/android/providers/settings/SettingsProvider$SqlArguments;
    const-string v5, "favorites"

    iget-object v6, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v9

    .line 471
    :goto_0
    return v5

    .line 451
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider;->checkWritePermissions(Lcom/android/providers/settings/SettingsProvider$SqlArguments;)V

    .line 452
    iget-object v5, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->forTable(Ljava/lang/String;)Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    move-result-object v1

    .line 454
    .local v1, cache:Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    sget-object v5, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 455
    iget-object v5, p0, Lcom/android/providers/settings/SettingsProvider;->mOpenHelper:Lcom/android/providers/settings/DatabaseHelper;

    invoke-virtual {v5}, Lcom/android/providers/settings/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 456
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 458
    :try_start_0
    array-length v4, p2

    .line 459
    .local v4, numValues:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_2

    .line 460
    iget-object v5, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v7, p2, v3

    invoke-virtual {v2, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    .line 466
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 467
    sget-object v5, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move v5, v9

    goto :goto_0

    .line 461
    :cond_1
    :try_start_1
    aget-object v5, p2, v3

    invoke-static {v1, v5}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->populate(Lcom/android/providers/settings/SettingsProvider$SettingsCache;Landroid/content/ContentValues;)V

    .line 459
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 464
    :cond_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 466
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 467
    sget-object v5, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 470
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->sendNotify(Landroid/net/Uri;)V

    .line 471
    array-length v5, p2

    goto :goto_0

    .line 466
    .end local v3           #i:I
    .end local v4           #numValues:I
    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 467
    sget-object v6, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v5
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .parameter "method"
    .parameter "request"
    .parameter "args"

    .prologue
    .line 352
    const-string v0, "GET_system"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    const-string v0, "system"

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sSystemCache:Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    invoke-direct {p0, v0, v1, p2}, Lcom/android/providers/settings/SettingsProvider;->lookupValue(Ljava/lang/String;Lcom/android/providers/settings/SettingsProvider$SettingsCache;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 358
    :goto_0
    return-object v0

    .line 355
    :cond_0
    const-string v0, "GET_secure"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    const-string v0, "secure"

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sSecureCache:Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    invoke-direct {p0, v0, v1, p2}, Lcom/android/providers/settings/SettingsProvider;->lookupValue(Ljava/lang/String;Lcom/android/providers/settings/SettingsProvider$SettingsCache;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 358
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    const-string v5, "favorites"

    .line 594
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/providers/settings/SettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 595
    .local v0, args:Lcom/android/providers/settings/SettingsProvider$SqlArguments;
    const-string v3, "favorites"

    iget-object v3, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 596
    const/4 v3, 0x0

    .line 612
    :goto_0
    return v3

    .line 597
    :cond_0
    const-string v3, "old_favorites"

    iget-object v4, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 598
    const-string v3, "favorites"

    iput-object v5, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    .line 600
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider;->checkWritePermissions(Lcom/android/providers/settings/SettingsProvider$SqlArguments;)V

    .line 602
    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 603
    iget-object v3, p0, Lcom/android/providers/settings/SettingsProvider;->mOpenHelper:Lcom/android/providers/settings/DatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/settings/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 604
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 605
    .local v1, count:I
    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 606
    if-lez v1, :cond_2

    .line 607
    iget-object v3, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->invalidate(Ljava/lang/String;)V

    .line 608
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->sendNotify(Landroid/net/Uri;)V

    .line 610
    :cond_2
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->startAsyncCachePopulation()V

    move v3, v1

    .line 612
    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    .line 437
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;

    invoke-direct {v0, p1, v1, v1}, Lcom/android/providers/settings/SettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 438
    .local v0, args:Lcom/android/providers/settings/SettingsProvider$SqlArguments;
    iget-object v1, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->where:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.dir/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 441
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.item/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 10
    .parameter "url"
    .parameter "initialValues"

    .prologue
    const/4 v9, 0x0

    .line 559
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/android/providers/settings/SettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 560
    .local v0, args:Lcom/android/providers/settings/SettingsProvider$SqlArguments;
    const-string v7, "favorites"

    iget-object v8, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v9

    .line 589
    :goto_0
    return-object v7

    .line 563
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider;->checkWritePermissions(Lcom/android/providers/settings/SettingsProvider$SqlArguments;)V

    .line 567
    const-string v7, "name"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 568
    .local v3, name:Ljava/lang/String;
    const-string v7, "location_providers_allowed"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 569
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->parseProviderList(Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v7

    if-nez v7, :cond_1

    move-object v7, v9

    goto :goto_0

    .line 572
    :cond_1
    iget-object v7, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->forTable(Ljava/lang/String;)Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    move-result-object v1

    .line 573
    .local v1, cache:Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    const-string v7, "value"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 574
    .local v6, value:Ljava/lang/String;
    invoke-static {v1, v3, v6}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->isRedundantSetValue(Lcom/android/providers/settings/SettingsProvider$SettingsCache;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 575
    invoke-static {p1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    goto :goto_0

    .line 578
    :cond_2
    sget-object v7, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 579
    iget-object v7, p0, Lcom/android/providers/settings/SettingsProvider;->mOpenHelper:Lcom/android/providers/settings/DatabaseHelper;

    invoke-virtual {v7}, Lcom/android/providers/settings/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 580
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v7, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v2, v7, v9, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 581
    .local v4, rowId:J
    sget-object v7, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 582
    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-gtz v7, :cond_3

    move-object v7, v9

    goto :goto_0

    .line 584
    :cond_3
    invoke-static {v1, p2}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->populate(Lcom/android/providers/settings/SettingsProvider$SettingsCache;Landroid/content/ContentValues;)V

    .line 587
    invoke-direct {p0, p1, p2, v4, v5}, Lcom/android/providers/settings/SettingsProvider;->getUriFor(Landroid/net/Uri;Landroid/content/ContentValues;J)Landroid/net/Uri;

    move-result-object p1

    .line 588
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->sendNotify(Landroid/net/Uri;)V

    move-object v7, p1

    .line 589
    goto :goto_0
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    .line 256
    new-instance v1, Lcom/android/providers/settings/DatabaseHelper;

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/providers/settings/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mOpenHelper:Lcom/android/providers/settings/DatabaseHelper;

    .line 257
    new-instance v1, Landroid/app/backup/BackupManager;

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 259
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->ensureAndroidIdIsSet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 260
    const/4 v1, 0x0

    .line 273
    :goto_0
    return v1

    .line 269
    :cond_0
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mOpenHelper:Lcom/android/providers/settings/DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/settings/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 270
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;-><init>(Lcom/android/providers/settings/SettingsProvider;Ljava/lang/String;)V

    sput-object v1, Lcom/android/providers/settings/SettingsProvider;->sObserverInstance:Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;

    .line 271
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sObserverInstance:Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;

    invoke-virtual {v1}, Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;->startWatching()V

    .line 272
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->startAsyncCachePopulation()V

    .line 273
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 13
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 685
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v11

    .line 687
    .local v11, ringtoneType:I
    const/4 v0, -0x1

    if-eq v11, v0, :cond_4

    .line 688
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 691
    .local v7, context:Landroid/content/Context;
    invoke-static {v7, v11}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v12

    .line 693
    .local v12, soundUri:Landroid/net/Uri;
    if-eqz v12, :cond_3

    .line 695
    invoke-virtual {v12}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .line 696
    .local v6, authority:Ljava/lang/String;
    const-string v0, "drm"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 697
    .local v10, isDrmAuthority:Z
    if-nez v10, :cond_0

    const-string v0, "media"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 699
    :cond_0
    if-eqz v10, :cond_1

    .line 704
    :try_start_0
    invoke-static {v7}, Landroid/provider/DrmStore;->enforceAccessDrmPermission(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    :cond_1
    const/4 v1, 0x0

    .line 712
    .local v1, pfd:Landroid/os/ParcelFileDescriptor;
    :try_start_1
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v12, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 713
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 734
    .end local v1           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v6           #authority:Ljava/lang/String;
    .end local v7           #context:Landroid/content/Context;
    .end local v10           #isDrmAuthority:Z
    .end local v12           #soundUri:Landroid/net/Uri;
    :goto_0
    return-object v0

    .line 705
    .restart local v6       #authority:Ljava/lang/String;
    .restart local v7       #context:Landroid/content/Context;
    .restart local v10       #isDrmAuthority:Z
    .restart local v12       #soundUri:Landroid/net/Uri;
    :catch_0
    move-exception v8

    .line 706
    .local v8, e:Ljava/lang/SecurityException;
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-virtual {v8}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 714
    .end local v8           #e:Ljava/lang/SecurityException;
    .restart local v1       #pfd:Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v0

    .line 720
    .end local v1           #pfd:Landroid/os/ParcelFileDescriptor;
    :cond_2
    :try_start_2
    invoke-super {p0, v12, p2}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto :goto_0

    .line 721
    :catch_2
    move-exception v9

    .line 724
    .local v9, ex:Ljava/io/FileNotFoundException;
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x10c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    goto :goto_0

    .line 730
    .end local v6           #authority:Ljava/lang/String;
    .end local v9           #ex:Ljava/io/FileNotFoundException;
    .end local v10           #isDrmAuthority:Z
    :cond_3
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 734
    .end local v7           #context:Landroid/content/Context;
    .end local v12           #soundUri:Landroid/net/Uri;
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    goto :goto_0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 8
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 644
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v4

    .line 646
    .local v4, ringtoneType:I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_2

    .line 647
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 650
    .local v1, context:Landroid/content/Context;
    invoke-static {v1, v4}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    .line 652
    .local v5, soundUri:Landroid/net/Uri;
    if-eqz v5, :cond_2

    .line 654
    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, authority:Ljava/lang/String;
    const-string v6, "drm"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 656
    .local v3, isDrmAuthority:Z
    if-nez v3, :cond_0

    const-string v6, "media"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 658
    :cond_0
    if-eqz v3, :cond_1

    .line 663
    :try_start_0
    invoke-static {v1}, Landroid/provider/DrmStore;->enforceAccessDrmPermission(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v5, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 674
    .end local v0           #authority:Ljava/lang/String;
    .end local v1           #context:Landroid/content/Context;
    .end local v3           #isDrmAuthority:Z
    .end local v5           #soundUri:Landroid/net/Uri;
    :goto_0
    return-object v6

    .line 664
    .restart local v0       #authority:Ljava/lang/String;
    .restart local v1       #context:Landroid/content/Context;
    .restart local v3       #isDrmAuthority:Z
    .restart local v5       #soundUri:Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 665
    .local v2, e:Ljava/lang/SecurityException;
    new-instance v6, Ljava/io/FileNotFoundException;

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 674
    .end local v0           #authority:Ljava/lang/String;
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #e:Ljava/lang/SecurityException;
    .end local v3           #isDrmAuthority:Z
    .end local v5           #soundUri:Landroid/net/Uri;
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 16
    .parameter "url"
    .parameter "select"
    .parameter "where"
    .parameter "whereArgs"
    .parameter "sort"

    .prologue
    .line 403
    new-instance v12, Lcom/android/providers/settings/SettingsProvider$SqlArguments;

    move-object v0, v12

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/SettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 404
    .local v12, args:Lcom/android/providers/settings/SettingsProvider$SqlArguments;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/SettingsProvider;->mOpenHelper:Lcom/android/providers/settings/DatabaseHelper;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/providers/settings/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 411
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v6, "favorites"

    iget-object v7, v12, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 412
    const/4 v6, 0x0

    .line 430
    :goto_0
    return-object v6

    .line 413
    :cond_0
    const-string v6, "old_favorites"

    iget-object v7, v12, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 414
    const-string v6, "favorites"

    iput-object v6, v12, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    .line 415
    const-string v6, "PRAGMA table_info(favorites);"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 416
    .local v13, cursor:Landroid/database/Cursor;
    if-eqz v13, :cond_2

    .line 417
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_1

    const/4 v6, 0x1

    move v14, v6

    .line 418
    .local v14, exists:Z
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 419
    if-nez v14, :cond_3

    const/4 v6, 0x0

    goto :goto_0

    .line 417
    .end local v14           #exists:Z
    :cond_1
    const/4 v6, 0x0

    move v14, v6

    goto :goto_1

    .line 421
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 425
    .end local v13           #cursor:Landroid/database/Cursor;
    :cond_3
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 426
    .local v4, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    iget-object v6, v12, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 428
    iget-object v7, v12, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v8, v12, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->args:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p2

    move-object/from16 v11, p5

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 429
    .local v15, ret:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object v0, v15

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object v6, v15

    .line 430
    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "url"
    .parameter "initialValues"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 617
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/android/providers/settings/SettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 618
    .local v0, args:Lcom/android/providers/settings/SettingsProvider$SqlArguments;
    const-string v3, "favorites"

    iget-object v4, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 619
    const/4 v3, 0x0

    .line 633
    :goto_0
    return v3

    .line 621
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider;->checkWritePermissions(Lcom/android/providers/settings/SettingsProvider$SqlArguments;)V

    .line 623
    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 624
    iget-object v3, p0, Lcom/android/providers/settings/SettingsProvider;->mOpenHelper:Lcom/android/providers/settings/DatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/settings/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 625
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 626
    .local v1, count:I
    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 627
    if-lez v1, :cond_1

    .line 628
    iget-object v3, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->invalidate(Ljava/lang/String;)V

    .line 629
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->sendNotify(Landroid/net/Uri;)V

    .line 631
    :cond_1
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->startAsyncCachePopulation()V

    move v3, v1

    .line 633
    goto :goto_0
.end method
