.class public Landroid/database/sqlite/SQLiteQuery;
.super Landroid/database/sqlite/SQLiteProgram;
.source "SQLiteQuery.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Cursor"


# instance fields
.field private mBindArgs:[Ljava/lang/String;

.field private mClosed:Z

.field private mOffsetIndex:I


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 1
    .parameter "db"
    .parameter "query"
    .parameter "offsetIndex"
    .parameter "bindArgs"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteQuery;->mClosed:Z

    .line 51
    iput p3, p0, Landroid/database/sqlite/SQLiteQuery;->mOffsetIndex:I

    .line 52
    iput-object p4, p0, Landroid/database/sqlite/SQLiteQuery;->mBindArgs:[Ljava/lang/String;

    .line 53
    return-void
.end method

.method private final native native_column_count()I
.end method

.method private final native native_column_name(I)Ljava/lang/String;
.end method

.method private final native native_fill_window(Landroid/database/CursorWindow;IIII)I
.end method


# virtual methods
.method public bindDouble(ID)V
    .locals 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 178
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQuery;->mBindArgs:[Ljava/lang/String;

    const/4 v1, 0x1

    sub-int v1, p1, v1

    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 179
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteQuery;->mClosed:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteProgram;->bindDouble(ID)V

    .line 180
    :cond_0
    return-void
.end method

.method public bindLong(IJ)V
    .locals 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 172
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQuery;->mBindArgs:[Ljava/lang/String;

    const/4 v1, 0x1

    sub-int v1, p1, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 173
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteQuery;->mClosed:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 174
    :cond_0
    return-void
.end method

.method public bindNull(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 166
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQuery;->mBindArgs:[Ljava/lang/String;

    const/4 v1, 0x1

    sub-int v1, p1, v1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 167
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteQuery;->mClosed:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    .line 168
    :cond_0
    return-void
.end method

.method public bindString(ILjava/lang/String;)V
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 184
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQuery;->mBindArgs:[Ljava/lang/String;

    const/4 v1, 0x1

    sub-int v1, p1, v1

    aput-object p2, v0, v1

    .line 185
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteQuery;->mClosed:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 186
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Landroid/database/sqlite/SQLiteProgram;->close()V

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteQuery;->mClosed:Z

    .line 138
    return-void
.end method

.method columnCountLocked()I
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->acquireReference()V

    .line 107
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteQuery;->native_column_count()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 109
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->releaseReference()V

    throw v0
.end method

.method columnNameLocked(I)Ljava/lang/String;
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 121
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->acquireReference()V

    .line 123
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteQuery;->native_column_name(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 125
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->releaseReference()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->releaseReference()V

    throw v0
.end method

.method fillWindow(Landroid/database/CursorWindow;II)I
    .locals 10
    .parameter "window"
    .parameter "maxRead"
    .parameter "lastPos"

    .prologue
    .line 63
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 64
    .local v8, timeStart:J
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 65
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    const-string v2, "GETLOCK:"

    invoke-virtual {v0, v1, v8, v9, v2}, Landroid/database/sqlite/SQLiteDatabase;->logTimeStat(Ljava/lang/String;JLjava/lang/String;)V

    .line 67
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->acquireReference()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 69
    :try_start_1
    invoke-virtual {p1}, Landroid/database/CursorWindow;->acquireReference()V

    .line 73
    invoke-virtual {p1}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v2

    iget v3, p0, Landroid/database/sqlite/SQLiteQuery;->mOffsetIndex:I

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteQuery;->native_fill_window(Landroid/database/CursorWindow;IIII)I

    move-result v7

    .line 77
    .local v7, numRows:I
    sget-boolean v0, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_STATEMENTS:Z

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "Cursor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fillWindow(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v0, v1, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->logTimeStat(Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    :try_start_2
    invoke-virtual {p1}, Landroid/database/CursorWindow;->releaseReference()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 92
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->releaseReference()V

    .line 93
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    move v0, v7

    .end local v7           #numRows:I
    :goto_0
    return v0

    .line 82
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 84
    .local v6, e:Ljava/lang/IllegalStateException;
    const/4 v0, 0x0

    .line 89
    :try_start_3
    invoke-virtual {p1}, Landroid/database/CursorWindow;->releaseReference()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 92
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->releaseReference()V

    .line 93
    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    goto :goto_0

    .line 85
    .end local v6           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    move-object v6, v0

    .line 86
    .local v6, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_4
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption()V

    .line 87
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 89
    .end local v6           #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {p1}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 92
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->releaseReference()V

    .line 93
    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method requery()V
    .locals 8

    .prologue
    const-string v7, " "

    .line 144
    iget-object v5, p0, Landroid/database/sqlite/SQLiteQuery;->mBindArgs:[Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 145
    iget-object v5, p0, Landroid/database/sqlite/SQLiteQuery;->mBindArgs:[Ljava/lang/String;

    array-length v4, v5

    .line 147
    .local v4, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 148
    add-int/lit8 v5, v2, 0x1

    :try_start_0
    iget-object v6, p0, Landroid/database/sqlite/SQLiteQuery;->mBindArgs:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-super {p0, v5, v6}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteMisuseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 151
    .local v0, e:Landroid/database/sqlite/SQLiteMisuseException;
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSql "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .local v1, errMsg:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_0

    .line 153
    const-string v5, " "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget-object v5, p0, Landroid/database/sqlite/SQLiteQuery;->mBindArgs:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 156
    :cond_0
    const-string v5, " "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    .local v3, leakProgram:Ljava/lang/IllegalStateException;
    throw v3

    .line 162
    .end local v0           #e:Landroid/database/sqlite/SQLiteMisuseException;
    .end local v1           #errMsg:Ljava/lang/StringBuilder;
    .end local v2           #i:I
    .end local v3           #leakProgram:Ljava/lang/IllegalStateException;
    .end local v4           #len:I
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLiteQuery: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
