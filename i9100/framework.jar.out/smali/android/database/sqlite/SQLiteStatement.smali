.class public Landroid/database/sqlite/SQLiteStatement;
.super Landroid/database/sqlite/SQLiteProgram;
.source "SQLiteStatement.java"


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 0
    .parameter "db"
    .parameter "sql"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method private final native native_1x1_long()J
.end method

.method private final native native_1x1_string()Ljava/lang/String;
.end method

.method private final native native_execute()V
.end method


# virtual methods
.method public execute()V
    .locals 5

    .prologue
    .line 52
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v2

    invoke-interface {v2}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 53
    iget-object v2, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "database "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already closed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 57
    .local v0, timeStart:J
    iget-object v2, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 59
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->acquireReference()V

    .line 61
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->native_execute()V

    .line 62
    iget-object v2, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->logTimeStat(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    .line 65
    iget-object v2, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 67
    return-void

    .line 64
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    .line 65
    iget-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 64
    throw v2
.end method

.method public executeInsert()J
    .locals 5

    .prologue
    .line 79
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v2

    invoke-interface {v2}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 80
    iget-object v2, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 81
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "database "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already closed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 84
    .local v0, timeStart:J
    iget-object v2, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 86
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->acquireReference()V

    .line 88
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->native_execute()V

    .line 89
    iget-object v2, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->logTimeStat(Ljava/lang/String;J)V

    .line 90
    iget-object v2, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->lastChangeCount()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->lastInsertRow()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 92
    :goto_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    .line 93
    iget-object v4, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 90
    return-wide v2

    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    .line 93
    iget-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 92
    throw v2
.end method

.method public simpleQueryForLong()J
    .locals 7

    .prologue
    .line 106
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v4

    invoke-interface {v4}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 107
    iget-object v4, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-nez v4, :cond_0

    .line 108
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "database "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " already closed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 110
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 111
    .local v2, timeStart:J
    iget-object v4, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 113
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->acquireReference()V

    .line 115
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->native_1x1_long()J

    move-result-wide v0

    .line 116
    .local v0, retValue:J
    iget-object v4, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v5, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v4, v5, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->logTimeStat(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    .line 120
    iget-object v4, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 117
    return-wide v0

    .line 119
    .end local v0           #retValue:J
    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    .line 120
    iget-object v5, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 119
    throw v4
.end method

.method public simpleQueryForString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 133
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v3

    invoke-interface {v3}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 134
    iget-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-nez v3, :cond_0

    .line 135
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "database "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " already closed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 137
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 138
    .local v1, timeStart:J
    iget-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 140
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->acquireReference()V

    .line 142
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->native_1x1_string()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, retValue:Ljava/lang/String;
    iget-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v3, v4, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->logTimeStat(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    .line 147
    iget-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 144
    return-object v0

    .line 146
    .end local v0           #retValue:Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    .line 147
    iget-object v4, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 146
    throw v3
.end method
