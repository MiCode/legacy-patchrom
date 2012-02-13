.class public Landroid/database/sqlite/SQLiteCursor;
.super Landroid/database/AbstractWindowedCursor;
.source "SQLiteCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteCursor$MainThreadNotificationHandler;,
        Landroid/database/sqlite/SQLiteCursor$QueryThread;
    }
.end annotation


# static fields
.field static final NO_COUNT:I = -0x1

.field static final TAG:Ljava/lang/String; = "Cursor"


# instance fields
.field private mColumnNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mColumns:[Ljava/lang/String;

.field private mCount:I

.field private mCursorState:I

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

.field private mEditTable:Ljava/lang/String;

.field private mInitialRead:I

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mMaxRead:I

.field protected mNotificationHandler:Landroid/database/sqlite/SQLiteCursor$MainThreadNotificationHandler;

.field private mPendingData:Z

.field private mQuery:Landroid/database/sqlite/SQLiteQuery;

.field private mStackTrace:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V
    .locals 7
    .parameter "db"
    .parameter "driver"
    .parameter "editTable"
    .parameter "query"

    .prologue
    const/4 v6, 0x0

    const v5, 0x7fffffff

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/database/AbstractWindowedCursor;-><init>()V

    const/4 v3, -0x1

    iput v3, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    iput v5, p0, Landroid/database/sqlite/SQLiteCursor;->mMaxRead:I

    iput v5, p0, Landroid/database/sqlite/SQLiteCursor;->mInitialRead:I

    iput v4, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorState:I

    iput-object v6, p0, Landroid/database/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    iput-boolean v4, p0, Landroid/database/sqlite/SQLiteCursor;->mPendingData:Z

    new-instance v3, Landroid/database/sqlite/DatabaseObjectNotClosedException;

    invoke-direct {v3}, Landroid/database/sqlite/DatabaseObjectNotClosedException;-><init>()V

    invoke-virtual {v3}, Landroid/database/sqlite/DatabaseObjectNotClosedException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v3

    iput-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mStackTrace:Ljava/lang/Throwable;

    iput-object p1, p0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p2, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    iput-object p3, p0, Landroid/database/sqlite/SQLiteCursor;->mEditTable:Ljava/lang/String;

    iput-object v6, p0, Landroid/database/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    iput-object p4, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteQuery;->columnCountLocked()I

    move-result v0

    .local v0, columnCount:I
    new-array v3, v0, [Ljava/lang/String;

    iput-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQuery;->columnNameLocked(I)Ljava/lang/String;

    move-result-object v1

    .local v1, columnName:Ljava/lang/String;
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    aput-object v1, v3, v2

    const-string v3, "_id"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput v2, p0, Landroid/database/AbstractCursor;->mRowIdColumnIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #columnCount:I
    .end local v1           #columnName:Ljava/lang/String;
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v3

    .restart local v0       #columnCount:I
    .restart local v2       #i:I
    :cond_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    return-void
.end method

.method static synthetic access$002(Landroid/database/sqlite/SQLiteCursor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/database/sqlite/SQLiteCursor;->mPendingData:Z

    return p1
.end method

.method static synthetic access$100(Landroid/database/sqlite/SQLiteCursor;)Landroid/database/CursorWindow;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    return-object v0
.end method

.method static synthetic access$200(Landroid/database/sqlite/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$300(Landroid/database/sqlite/SQLiteCursor;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorState:I

    return v0
.end method

.method static synthetic access$400(Landroid/database/sqlite/SQLiteCursor;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mMaxRead:I

    return v0
.end method

.method static synthetic access$500(Landroid/database/sqlite/SQLiteCursor;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    return v0
.end method

.method static synthetic access$502(Landroid/database/sqlite/SQLiteCursor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    return p1
.end method

.method static synthetic access$512(Landroid/database/sqlite/SQLiteCursor;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    return v0
.end method

.method static synthetic access$600(Landroid/database/sqlite/SQLiteCursor;)Landroid/database/sqlite/SQLiteQuery;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    return-object v0
.end method

.method static synthetic access$700(Landroid/database/sqlite/SQLiteCursor;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCursor;->notifyDataSetChange()V

    return-void
.end method

.method private deactivateCommon()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorState:I

    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    :cond_0
    return-void
.end method

.method private fillWindow(I)V
    .locals 5
    .parameter "startPos"

    .prologue
    iget-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Cursor"

    const-string v2, "fillWindow is not executed because Cursor object is closed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cursor is closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    if-nez v1, :cond_2

    new-instance v1, Landroid/database/CursorWindow;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/database/CursorWindow;-><init>(Z)V

    iput-object v1, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    :goto_0
    iget-object v1, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v1, p1}, Landroid/database/CursorWindow;->setStartPosition(I)V

    iget-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    iget-object v2, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    iget v3, p0, Landroid/database/sqlite/SQLiteCursor;->mInitialRead:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteQuery;->fillWindow(Landroid/database/CursorWindow;II)I

    move-result v1

    iput v1, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    iget v1, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/database/sqlite/SQLiteCursor;->mInitialRead:I

    add-int/2addr v1, p1

    iput v1, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/database/sqlite/SQLiteCursor$QueryThread;

    iget v2, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorState:I

    invoke-direct {v1, p0, v2}, Landroid/database/sqlite/SQLiteCursor$QueryThread;-><init>(Landroid/database/sqlite/SQLiteCursor;I)V

    const-string v2, "query thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0           #t:Ljava/lang/Thread;
    :cond_1
    iget-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    return-void

    :cond_2
    :try_start_2
    iget v1, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorState:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorState:I

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadLock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v1}, Landroid/database/CursorWindow;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadUnlock()V

    goto :goto_0

    :catchall_1
    move-exception v1

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadUnlock()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private queryThreadLock()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :cond_0
    return-void
.end method

.method private queryThreadUnlock()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->close()V

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->deactivateCommon()V

    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteQuery;->close()V

    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    invoke-interface {v0}, Landroid/database/sqlite/SQLiteCursorDriver;->cursorClosed()V

    return-void
.end method

.method public commitUpdates(Ljava/util/Map;)Z
    .locals 17
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/Long;",
            "+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .local p1, additionalValues:Ljava/util/Map;,"Ljava/util/Map<+Ljava/lang/Long;+Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteCursor;->supportsUpdates()Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "Cursor"

    const-string v14, "commitUpdates not supported on this cursor, did you include the _id column?"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    .end local p1           #additionalValues:Ljava/util/Map;,"Ljava/util/Map<+Ljava/lang/Long;+Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :goto_0
    return v13

    .restart local p1       #additionalValues:Ljava/util/Map;,"Ljava/util/Map<+Ljava/lang/Long;+Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    move-object v13, v0

    monitor-enter v13

    if-eqz p1, :cond_1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    move-object v14, v0

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v14

    if-nez v14, :cond_2

    const/4 v14, 0x1

    monitor-exit v13

    move v13, v14

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteCursor;->isClosed()Z

    move-result v14

    if-eqz v14, :cond_3

    const-string v14, "Cursor"

    const-string v15, "commitUpdates is not executed because Cursor object is closed."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v14, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v13, v14

    goto :goto_0

    :cond_3
    :try_start_3
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v14, 0x80

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v10, sql:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local p1           #additionalValues:Ljava/util/Map;,"Ljava/util/Map<+Ljava/lang/Long;+Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .local v5, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .local v6, rowEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    .local v11, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .local v9, rowIdObj:Ljava/lang/Long;
    if-eqz v9, :cond_5

    if-nez v11, :cond_6

    :cond_5
    new-instance v14, Ljava/lang/IllegalStateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "null rowId or values found! rowId = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", values = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #rowEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v9           #rowIdObj:Ljava/lang/Long;
    .end local v10           #sql:Ljava/lang/StringBuilder;
    .end local v11           #values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v14

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v14

    :catchall_1
    move-exception v14

    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v14

    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v6       #rowEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v9       #rowIdObj:Ljava/lang/Long;
    .restart local v10       #sql:Ljava/lang/StringBuilder;
    .restart local v11       #values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_6
    :try_start_5
    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .local v7, rowId:J
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, valuesIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "UPDATE "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/sqlite/SQLiteCursor;->mEditTable:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " SET "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v14

    new-array v2, v14, [Ljava/lang/Object;

    .local v2, bindings:[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "=?"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v2, v4

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    const-string v14, ", "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_8
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " WHERE "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    move-object v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/database/AbstractCursor;->mRowIdColumnIndex:I

    move/from16 v16, v0

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x3d

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v14, 0x3b

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object v14, v0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/sqlite/SQLiteCursor;->mEditTable:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rowUpdated(Ljava/lang/String;J)V

    goto/16 :goto_1

    .end local v2           #bindings:[Ljava/lang/Object;
    .end local v4           #i:I
    .end local v6           #rowEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v7           #rowId:J
    .end local v9           #rowIdObj:Ljava/lang/Long;
    .end local v11           #values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12           #valuesIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v13, 0x1

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteCursor;->onChange(Z)V

    const/4 v13, 0x1

    goto/16 :goto_0
.end method

.method public deactivate()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->deactivate()V

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->deactivateCommon()V

    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    invoke-interface {v0}, Landroid/database/sqlite/SQLiteCursorDriver;->cursorDeactivated()V

    return-void
.end method

.method public deleteRow()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v5, "Cursor"

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCursor;->checkPosition()V

    iget v3, p0, Landroid/database/AbstractCursor;->mRowIdColumnIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Landroid/database/AbstractCursor;->mCurrentRowID:Ljava/lang/Long;

    if-nez v3, :cond_1

    :cond_0
    const-string v3, "Cursor"

    const-string v3, "Could not delete row because either the row ID column is not available or ithas not been read."

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v9

    :goto_0
    return v3

    :cond_1
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Cursor"

    const-string v4, "deleteRow is not executed because Cursor object is closed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    move v3, v9

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteCursor;->mEditTable:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/database/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    iget v7, p0, Landroid/database/AbstractCursor;->mRowIdColumnIndex:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/database/AbstractCursor;->mCurrentRowID:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x1

    .local v2, success:Z
    :goto_1
    :try_start_2
    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    .local v1, pos:I
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCursor;->requery()Z

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteCursor;->moveToPosition(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    if-eqz v2, :cond_3

    invoke-virtual {p0, v10}, Landroid/database/sqlite/SQLiteCursor;->onChange(Z)V

    move v3, v10

    goto :goto_0

    .end local v1           #pos:I
    .end local v2           #success:Z
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Landroid/database/SQLException;
    const/4 v2, 0x0

    .restart local v2       #success:Z
    goto :goto_1

    .end local v0           #e:Landroid/database/SQLException;
    .end local v2           #success:Z
    :catchall_0
    move-exception v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v3

    .restart local v1       #pos:I
    .restart local v2       #success:Z
    :cond_3
    move v3, v9

    goto :goto_0
.end method

.method protected finalize()V
    .locals 5

    .prologue
    const/16 v4, 0x64

    :try_start_0
    iget-object v1, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/StrictMode;->vmSqliteObjectLeaksEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, len:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finalizing a Cursor that has not been deactivated or closed. database = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", table = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteCursor;->mEditTable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", query = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    iget-object v2, v2, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    const/4 v3, 0x0

    if-le v0, v4, :cond_2

    :goto_0
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteCursor;->mStackTrace:Ljava/lang/Throwable;

    invoke-static {v1, v2}, Landroid/os/StrictMode;->onSqliteObjectLeaked(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0           #len:I
    :cond_0
    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->notifyActiveCursorFinalized()V

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->finalize()V

    return-void

    .restart local v0       #len:I
    :cond_2
    move v4, v0

    goto :goto_0

    .end local v0           #len:I
    :catchall_0
    move-exception v1

    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->finalize()V

    throw v1
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 10
    .parameter "columnName"

    .prologue
    const/4 v9, -0x1

    iget-object v6, p0, Landroid/database/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    if-nez v6, :cond_1

    iget-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    .local v1, columns:[Ljava/lang/String;
    array-length v0, v1

    .local v0, columnCount:I
    new-instance v4, Ljava/util/HashMap;

    const/high16 v6, 0x3f80

    invoke-direct {v4, v0, v6}, Ljava/util/HashMap;-><init>(IF)V

    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v6, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-object v4, p0, Landroid/database/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    .end local v0           #columnCount:I
    .end local v1           #columns:[Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    const/16 v6, 0x2e

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .local v5, periodIndex:I
    if-eq v5, v9, :cond_2

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    .local v2, e:Ljava/lang/Exception;
    const-string v6, "Cursor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "requesting column name with table name -- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    iget-object v6, p0, Landroid/database/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .local v3, i:Ljava/lang/Integer;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_1
    return v6

    :cond_3
    move v6, v9

    goto :goto_1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteCursor;->fillWindow(I)V

    :cond_0
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    return v0
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public onMove(II)Z
    .locals 2
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v0

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v0

    iget-object v1, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v1}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p2, v0, :cond_1

    :cond_0
    invoke-direct {p0, p2}, Landroid/database/sqlite/SQLiteCursor;->fillWindow(I)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 2
    .parameter "observer"

    .prologue
    const v1, 0x7fffffff

    invoke-super {p0, p1}, Landroid/database/AbstractWindowedCursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mMaxRead:I

    if-ne v1, v0, :cond_0

    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mInitialRead:I

    if-eq v1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mNotificationHandler:Landroid/database/sqlite/SQLiteCursor$MainThreadNotificationHandler;

    if-nez v0, :cond_2

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadLock()V

    :try_start_0
    new-instance v0, Landroid/database/sqlite/SQLiteCursor$MainThreadNotificationHandler;

    invoke-direct {v0, p0}, Landroid/database/sqlite/SQLiteCursor$MainThreadNotificationHandler;-><init>(Landroid/database/sqlite/SQLiteCursor;)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mNotificationHandler:Landroid/database/sqlite/SQLiteCursor$MainThreadNotificationHandler;

    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteCursor;->mPendingData:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCursor;->notifyDataSetChange()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteCursor;->mPendingData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadUnlock()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadUnlock()V

    throw v0
.end method

.method public requery()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    :goto_0
    return v3

    :cond_0
    const-wide/16 v1, 0x0

    .local v1, timeStart:J
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Cursor"

    const-string v4, "requery is not executed because Cursor object is closed."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    move v3, v5

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v3}, Landroid/database/CursorWindow;->clear()V

    :cond_2
    const/4 v3, -0x1

    iput v3, p0, Landroid/database/AbstractCursor;->mPos:I

    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    invoke-interface {v3, p0}, Landroid/database/sqlite/SQLiteCursorDriver;->cursorRequeried(Landroid/database/Cursor;)V

    const/4 v3, -0x1

    iput v3, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    iget v3, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorState:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorState:I

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadLock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteQuery;->requery()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadUnlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->requery()Z

    move-result v0

    .local v0, result:Z
    move v3, v0

    goto :goto_0

    .end local v0           #result:Z
    :catchall_0
    move-exception v3

    :try_start_4
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadUnlock()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v3
.end method

.method public setLoadStyle(II)V
    .locals 2
    .parameter "initialRead"
    .parameter "maxRead"

    .prologue
    iput p2, p0, Landroid/database/sqlite/SQLiteCursor;->mMaxRead:I

    iput p1, p0, Landroid/database/sqlite/SQLiteCursor;->mInitialRead:I

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public setSelectionArguments([Ljava/lang/String;)V
    .locals 1
    .parameter "selectionArgs"

    .prologue
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    invoke-interface {v0, p1}, Landroid/database/sqlite/SQLiteCursorDriver;->setBindArguments([Ljava/lang/String;)V

    return-void
.end method

.method public setWindow(Landroid/database/CursorWindow;)V
    .locals 1
    .parameter "window"

    .prologue
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorState:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorState:I

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadLock()V

    :try_start_0
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadUnlock()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    :cond_0
    iput-object p1, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadUnlock()V

    throw v0
.end method

.method public supportsUpdates()Z
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->supportsUpdates()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mEditTable:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
