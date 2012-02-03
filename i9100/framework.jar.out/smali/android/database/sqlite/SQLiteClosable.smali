.class public abstract Landroid/database/sqlite/SQLiteClosable;
.super Ljava/lang/Object;
.source "SQLiteClosable.java"


# instance fields
.field private mLock:Ljava/lang/Object;

.field private mReferenceCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteClosable;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private getObjInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .local v0, buff:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    instance-of v1, p0, Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_1

    .line 64
    const-string v1, "database = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    check-cast p0, Landroid/database/sqlite/SQLiteDatabase;

    .end local p0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    :cond_0
    :goto_0
    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 66
    .restart local p0
    :cond_1
    instance-of v1, p0, Landroid/database/sqlite/SQLiteProgram;

    if-nez v1, :cond_2

    instance-of v1, p0, Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_2

    instance-of v1, p0, Landroid/database/sqlite/SQLiteQuery;

    if-eqz v1, :cond_3

    .line 68
    :cond_2
    const-string v1, "mSql = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    check-cast p0, Landroid/database/sqlite/SQLiteProgram;

    .end local p0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 70
    .restart local p0
    :cond_3
    instance-of v1, p0, Landroid/database/CursorWindow;

    if-eqz v1, :cond_0

    .line 71
    const-string v1, "mStartPos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    check-cast p0, Landroid/database/CursorWindow;

    .end local p0
    invoke-virtual {p0}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public acquireReference()V
    .locals 4

    .prologue
    .line 32
    iget-object v0, p0, Landroid/database/sqlite/SQLiteClosable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 33
    :try_start_0
    iget v1, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    if-gtz v1, :cond_0

    .line 34
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attempt to re-open an already-closed object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;->getObjInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 37
    :cond_0
    :try_start_1
    iget v1, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    .line 38
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    return-void
.end method

.method protected abstract onAllReferencesReleased()V
.end method

.method protected onAllReferencesReleasedFromContainer()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public releaseReference()V
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Landroid/database/sqlite/SQLiteClosable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 43
    :try_start_0
    iget v1, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    .line 44
    iget v1, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    if-nez v1, :cond_0

    .line 45
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->onAllReferencesReleased()V

    .line 47
    :cond_0
    monitor-exit v0

    .line 48
    return-void

    .line 47
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public releaseReferenceFromContainer()V
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Landroid/database/sqlite/SQLiteClosable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 52
    :try_start_0
    iget v1, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    .line 53
    iget v1, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    if-nez v1, :cond_0

    .line 54
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->onAllReferencesReleasedFromContainer()V

    .line 56
    :cond_0
    monitor-exit v0

    .line 57
    return-void

    .line 56
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
