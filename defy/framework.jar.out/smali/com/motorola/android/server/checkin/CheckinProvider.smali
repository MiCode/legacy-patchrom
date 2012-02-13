.class public Lcom/motorola/android/server/checkin/CheckinProvider;
.super Landroid/content/ContentProvider;
.source "CheckinProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;,
        Lcom/motorola/android/server/checkin/CheckinProvider$OpenHelper;
    }
.end annotation


# static fields
.field private static final CHECKIN_INTENT:Ljava/lang/String; = "com.motorola.blur.service.blur.Actions.CHECKIN"

.field private static final CHECKIN_REQUEST_ID:Ljava/lang/String; = "com.motorola.blur.service.blur.checkin.request_id"

.field private static final CRASH_LIMIT:I = 0x19

.field private static final CRASH_SIZE:I = 0x4000

.field private static final DATABASE_FILENAME:Ljava/lang/String; = "checkin_mot.db"

.field private static final DATABASE_VERSION:I = 0x2

.field private static final DELETE_COUNT:I = 0x64

.field private static final EVENT_LIMIT:I = 0x3e8

.field private static final EVENT_SIZE:I = 0x2000

.field private static final PROPERTIES_PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_CHECKIN_PROPERTIES"

.field private static final TAG:Ljava/lang/String; = "CheckinProvider"


# instance fields
.field private _eventLimit:I

.field private final _eventLock:Ljava/lang/Object;

.field private _logLevel:I

.field private _requestedCheckin:Z

.field private _storedEvents:I

.field private mEventInsertThread:Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private final mStatsLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_requestedCheckin:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->mStatsLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_eventLock:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_eventLimit:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_logLevel:I

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/server/checkin/CheckinProvider;[Landroid/content/ContentValues;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/motorola/android/server/checkin/CheckinProvider;->insertEvents([Landroid/content/ContentValues;I)V

    return-void
.end method

.method private checkPermissions(Landroid/net/Uri;)V
    .locals 4
    .parameter "uri"

    .prologue
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid query URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, table:Ljava/lang/String;
    const-string v1, "properties"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_CHECKIN_PROPERTIES"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Cannot access checkin properties"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method

.method private deleteFromEvents(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter "uri"
    .parameter "where"
    .parameter "args"

    .prologue
    const/4 v6, 0x0

    iget-object v3, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_eventLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, count:I
    :try_start_0
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v4, "events"

    invoke-virtual {v1, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget v4, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    sub-int/2addr v4, v0

    iput v4, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    iget v4, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    if-gez v4, :cond_0

    invoke-direct {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getEventCount()I

    move-result v4

    iput v4, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    :cond_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_requestedCheckin:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v3, v0

    :goto_0
    return v3

    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v4

    move-object v2, v4

    .local v2, e:Ljava/lang/Exception;
    :try_start_6
    const-string v4, "CheckinProvider"

    const-string v5, "deleteFromEvents"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getEventCount()I

    move-result v4

    iput v4, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    monitor-exit v3

    move v3, v6

    goto :goto_0

    .end local v2           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v4
.end method

.method private getEventCount()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v3, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "SELECT COUNT (_id) FROM events"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v3

    move-object v2, v3

    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    const-string v3, "CheckinProvider"

    const-string v4, "getEventCount"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .end local v2           #e:Ljava/lang/Exception;
    :goto_1
    const/4 v0, 0x0

    :cond_1
    const/4 v3, -0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    :cond_2
    throw v3

    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_3
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private initEventCount()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_eventLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getEventCount()I

    move-result v1

    iput v1, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private insertCrash(Landroid/content/ContentValues;)J
    .locals 10
    .parameter "values"

    .prologue
    :try_start_0
    const-string v5, "data"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, crashSize:I
    const/16 v5, 0x4000

    if-le v0, v5, :cond_0

    invoke-virtual {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/motorola/android/provider/Checkin$Stats$Tag;->CRASHES_TRUNCATED:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/motorola/android/provider/Checkin;->updateStats(Landroid/content/ContentResolver;Lcom/motorola/android/provider/Checkin$Stats$Tag;ID)Landroid/net/Uri;

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Too big: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #crashSize:I
    :catch_0
    move-exception v5

    move-object v4, v5

    .local v4, t:Ljava/lang/Throwable;
    const-string v5, "CheckinProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error inserting crash: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v5, -0x1

    .end local v4           #t:Ljava/lang/Throwable;
    :goto_0
    return-wide v5

    .restart local v0       #crashSize:I
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/motorola/android/provider/Checkin$Stats$Tag;->CRASHES_REPORTED:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/motorola/android/provider/Checkin;->updateStats(Landroid/content/ContentResolver;Lcom/motorola/android/provider/Checkin$Stats$Tag;ID)Landroid/net/Uri;

    iget-object v5, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v2, -0x1

    .local v2, id:J
    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    const-string v5, "DELETE FROM crashes WHERE _id IN (SELECT _id FROM crashes ORDER BY _id DESC LIMIT -1 OFFSET 24)"

    invoke-virtual {v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v5, "crashes"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    monitor-exit v1

    move-wide v5, v2

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method private insertEvent(Landroid/content/ContentValues;)J
    .locals 4
    .parameter "values"

    .prologue
    const-string v3, "date"

    const-string v1, "value"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, value:Ljava/lang/String;
    const-string v1, "date"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    iget-object v1, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->mEventInsertThread:Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;

    invoke-virtual {v1, p1}, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->queueInsert(Landroid/content/ContentValues;)V

    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method private insertEvents([Landroid/content/ContentValues;I)V
    .locals 13
    .parameter "events"
    .parameter "numEvents"

    .prologue
    const/4 v12, 0x0

    const/4 v10, -0x1

    iget-object v6, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .local v0, askForCheckin:Z
    const/4 v4, 0x0

    .local v4, eventsDropped:I
    iget-object v6, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_eventLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget v7, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    if-eq v7, v10, :cond_0

    iget v7, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    iget v8, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_eventLimit:I

    if-lt v7, v8, :cond_2

    :cond_0
    iget v3, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    .local v3, eventsCurrent:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DELETE FROM events WHERE _id IN (SELECT _id FROM events ORDER BY date DESC LIMIT -1 OFFSET "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_eventLimit:I

    const/16 v9, 0x64

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getEventCount()I

    move-result v7

    iput v7, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    iget v7, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    if-eq v7, v10, :cond_1

    iget v7, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    sub-int v4, v3, v7

    :cond_1
    const/4 v0, 0x1

    const-string v7, "CheckinProvider"

    const-string v8, "insertEvents removed events %d left"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3           #eventsCurrent:I
    :cond_2
    iget v7, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, p2, :cond_3

    const-string v7, "events"

    const/4 v8, 0x0

    aget-object v9, p1, v5

    invoke-virtual {v1, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .end local v5           #i:I
    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/motorola/android/provider/Checkin$Stats$Tag;->EVENTS_DROPPED:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    int-to-double v8, v4

    invoke-static {v6, v7, v12, v8, v9}, Lcom/motorola/android/provider/Checkin;->updateStats(Landroid/content/ContentResolver;Lcom/motorola/android/provider/Checkin$Stats$Tag;ID)Landroid/net/Uri;

    :cond_4
    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->requestCheckin()V

    :cond_5
    return-void

    :catch_0
    move-exception v7

    move-object v2, v7

    .local v2, e:Ljava/lang/Exception;
    :try_start_5
    invoke-direct {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getEventCount()I

    move-result v7

    iput v7, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v7

    :catchall_1
    move-exception v7

    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v7

    :catchall_2
    move-exception v7

    :try_start_8
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method private insertStats(Landroid/content/ContentValues;)J
    .locals 24
    .parameter "values"

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->mStatsLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    :try_start_0
    const-string v5, "tag"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .local v22, tag:Ljava/lang/String;
    if-nez v22, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tag required:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v22           #tag:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v22       #tag:Ljava/lang/String;
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x0

    :try_start_2
    const-string v6, "stats"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "_id"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "count"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "sum"

    aput-object v9, v7, v8

    const-string v8, "tag=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v22, v9, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v4 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v16

    .local v16, cursor:Landroid/database/Cursor;
    if-eqz v16, :cond_1

    :try_start_3
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_1
    const-string v5, "stats"

    const/4 v6, 0x0

    move-object v0, v4

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v5

    if-eqz v16, :cond_2

    :try_start_4
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_2
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    monitor-exit v23
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_0
    return-wide v5

    :cond_3
    const/4 v5, 0x0

    :try_start_6
    move-object/from16 v0, v16

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .local v17, id:J
    const/4 v5, 0x1

    move-object/from16 v0, v16

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .local v14, count:I
    const/4 v5, 0x2

    move-object/from16 v0, v16

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v19

    .local v19, sum:D
    const-string v5, "count"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    .local v15, countAdd:Ljava/lang/Integer;
    if-eqz v15, :cond_4

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v14, v5

    :cond_4
    const-string v5, "sum"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v21

    .local v21, sumAdd:Ljava/lang/Double;
    if-eqz v21, :cond_5

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    add-double v19, v19, v5

    :cond_5
    if-gtz v14, :cond_7

    const-wide/16 v5, 0x0

    cmpl-double v5, v19, v5

    if-nez v5, :cond_7

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->deleteRow()Z

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/motorola/android/provider/Checkin$Stats;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v6

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const-wide/16 v5, -0x1

    if-eqz v16, :cond_6

    :try_start_7
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_6
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    monitor-exit v23
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    :cond_7
    if-eqz v15, :cond_8

    const/4 v5, 0x1

    :try_start_9
    move-object/from16 v0, v16

    move v1, v5

    move v2, v14

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->updateInt(II)Z

    :cond_8
    if-eqz v21, :cond_9

    const/4 v5, 0x2

    move-object/from16 v0, v16

    move v1, v5

    move-wide/from16 v2, v19

    invoke-interface {v0, v1, v2, v3}, Landroid/database/Cursor;->updateDouble(ID)Z

    :cond_9
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->commitUpdates()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v16, :cond_a

    :try_start_a
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    monitor-exit v23
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-wide/from16 v5, v17

    goto/16 :goto_0

    .end local v14           #count:I
    .end local v15           #countAdd:Ljava/lang/Integer;
    .end local v17           #id:J
    .end local v19           #sum:D
    .end local v21           #sumAdd:Ljava/lang/Double;
    :catchall_1
    move-exception v5

    if-eqz v16, :cond_b

    :try_start_c
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v5

    .end local v16           #cursor:Landroid/database/Cursor;
    :catchall_2
    move-exception v5

    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
.end method

.method private readAndSetProperties()V
    .locals 18

    .prologue
    const/4 v11, 0x0

    .local v11, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "properties"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    const-string v3, "tag"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .local v16, tag:I
    const-string v3, "value"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .local v17, value:I
    :cond_0
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, v11

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .local v14, sTag:Ljava/lang/String;
    move-object v0, v11

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .local v15, sValue:Ljava/lang/String;
    const-string v3, "CheckinProvider"

    const-string v4, "readAndSetProperties %s:%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v14, v5, v6

    const/4 v6, 0x1

    aput-object v15, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/motorola/android/provider/Checkin$Properties$Tag;->EVENT_LIMIT:Lcom/motorola/android/provider/Checkin$Properties$Tag;

    invoke-virtual {v3}, Lcom/motorola/android/provider/Checkin$Properties$Tag;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_2

    :try_start_1
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .local v13, i:I
    const/16 v3, 0x3e8

    if-le v13, v3, :cond_0

    const-string v3, "CheckinProvider"

    const-string v4, "setting log event limit: %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/android/server/checkin/CheckinProvider;->_eventLimit:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v13           #i:I
    :catch_0
    move-exception v3

    move-object v12, v3

    .local v12, e:Ljava/lang/Exception;
    :try_start_2
    const-string v3, "CheckinProvider"

    const-string v4, "failed setting EVENT_LIMIT:%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v15, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v12           #e:Ljava/lang/Exception;
    .end local v14           #sTag:Ljava/lang/String;
    .end local v15           #sValue:Ljava/lang/String;
    .end local v16           #tag:I
    .end local v17           #value:I
    :catch_1
    move-exception v3

    move-object v12, v3

    .restart local v12       #e:Ljava/lang/Exception;
    :try_start_3
    const-string v3, "CheckinProvider"

    const-string v4, "failed to read and set properties"

    invoke-static {v3, v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v11, :cond_1

    .end local v12           #e:Ljava/lang/Exception;
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v14       #sTag:Ljava/lang/String;
    .restart local v15       #sValue:Ljava/lang/String;
    .restart local v16       #tag:I
    .restart local v17       #value:I
    :cond_2
    :try_start_4
    sget-object v3, Lcom/motorola/android/provider/Checkin$Properties$Tag;->LOG_LEVEL:Lcom/motorola/android/provider/Checkin$Properties$Tag;

    invoke-virtual {v3}, Lcom/motorola/android/provider/Checkin$Properties$Tag;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v3

    if-eqz v3, :cond_0

    :try_start_5
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .restart local v13       #i:I
    const/4 v3, 0x2

    if-gt v3, v13, :cond_0

    const/4 v3, 0x7

    if-gt v13, v3, :cond_0

    const-string v3, "CheckinProvider"

    const-string v4, "setting log level: %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/android/server/checkin/CheckinProvider;->_logLevel:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .end local v13           #i:I
    :catch_2
    move-exception v3

    move-object v12, v3

    .restart local v12       #e:Ljava/lang/Exception;
    :try_start_6
    const-string v3, "CheckinProvider"

    const-string v4, "failed setting LOG_LEVEL:%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v15, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v12           #e:Ljava/lang/Exception;
    .end local v14           #sTag:Ljava/lang/String;
    .end local v15           #sValue:Ljava/lang/String;
    .end local v16           #tag:I
    .end local v17           #value:I
    :catchall_0
    move-exception v3

    if-eqz v11, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3

    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v16       #tag:I
    .restart local v17       #value:I
    :cond_4
    if-eqz v11, :cond_1

    goto :goto_1
.end method

.method private readEventCount()I
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_eventLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private requestCheckin()V
    .locals 3

    .prologue
    iget-boolean v1, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_requestedCheckin:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_requestedCheckin:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.blur.service.blur.Actions.CHECKIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.motorola.blur.service.blur.checkin.request_id"

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .parameter "uri"
    .parameter "where"
    .parameter "args"

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/motorola/android/server/checkin/CheckinProvider;->checkPermissions(Landroid/net/Uri;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v5, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WHERE clause not supported for delete: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    :cond_1
    const/4 v0, 0x0

    .local v0, count:I
    const-string v2, "events"

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/android/server/checkin/CheckinProvider;->deleteFromEvents(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const-string v2, "CheckinProvider"

    const-string v3, "%d events delete %d left"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-direct {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->readEventCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return v0

    .end local v0           #count:I
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v7, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid delete URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .restart local v0       #count:I
    :cond_3
    iget-object v2, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vnd.android.cursor.dir/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vnd.android.cursor.item/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .restart local p0
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/motorola/android/server/checkin/CheckinProvider;->checkPermissions(Landroid/net/Uri;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid insert URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, table:Ljava/lang/String;
    const-string v4, "events"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, p2}, Lcom/motorola/android/server/checkin/CheckinProvider;->insertEvent(Landroid/content/ContentValues;)J

    move-result-wide v1

    .local v1, id:J
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gez v4, :cond_4

    move-object v4, v6

    :goto_1
    return-object v4

    .end local v1           #id:J
    :cond_1
    const-string v4, "stats"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, p2}, Lcom/motorola/android/server/checkin/CheckinProvider;->insertStats(Landroid/content/ContentValues;)J

    move-result-wide v1

    .restart local v1       #id:J
    goto :goto_0

    .end local v1           #id:J
    :cond_2
    const-string v4, "crashes"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0, p2}, Lcom/motorola/android/server/checkin/CheckinProvider;->insertCrash(Landroid/content/ContentValues;)J

    move-result-wide v1

    .restart local v1       #id:J
    goto :goto_0

    .end local v1           #id:J
    :cond_3
    iget-object v4, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    monitor-enter v0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0, v3, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .restart local v1       #id:J
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->readAndSetProperties()V

    goto :goto_0

    .end local v1           #id:J
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1       #id:J
    :cond_4
    invoke-static {p1, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object v4, p1

    goto :goto_1
.end method

.method public onCreate()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    new-instance v0, Lcom/motorola/android/server/checkin/CheckinProvider$OpenHelper;

    invoke-virtual {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/android/server/checkin/CheckinProvider$OpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    new-instance v0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;

    const/16 v1, 0x10

    const-wide/16 v2, 0x1f4

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;-><init>(Lcom/motorola/android/server/checkin/CheckinProvider;IJ)V

    iput-object v0, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->mEventInsertThread:Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;

    iget-object v0, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->mEventInsertThread:Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;

    invoke-virtual {v0}, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->start()V

    invoke-direct {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->readAndSetProperties()V

    invoke-direct {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->initEventCount()V

    const-string v0, "CheckinProvider"

    const-string v1, "Current Event Count is : %d"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->readEventCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "uri"
    .parameter "select"
    .parameter "where"
    .parameter "args"
    .parameter "sort"

    .prologue
    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/motorola/android/server/checkin/CheckinProvider;->checkPermissions(Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->mEventInsertThread:Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;

    invoke-virtual {v2}, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->queueFlush()V

    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v2, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v8, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v8

    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid query URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .parameter "uri"
    .parameter "values"
    .parameter "where"
    .parameter "args"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/android/server/checkin/CheckinProvider;->checkPermissions(Landroid/net/Uri;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WHERE clause not supported for update: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    :cond_1
    iget-object v2, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .local v0, count:I
    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return v0

    .end local v0           #count:I
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid update URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .restart local v0       #count:I
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
