.class public abstract Landroid/database/AbstractCursor;
.super Ljava/lang/Object;
.source "AbstractCursor.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/AbstractCursor$SelfContentObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Cursor"


# instance fields
.field protected mClosed:Z

.field mContentObservable:Landroid/database/ContentObservable;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mCurrentRowID:Ljava/lang/Long;

.field mDataSetObservable:Landroid/database/DataSetObservable;

.field private mNotifyUri:Landroid/net/Uri;

.field protected mPos:I

.field protected mRowIdColumnIndex:I

.field private mSelfObserver:Landroid/database/ContentObserver;

.field private final mSelfObserverLock:Ljava/lang/Object;

.field private mSelfObserverRegistered:Z

.field protected mUpdatedRows:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Landroid/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 43
    new-instance v0, Landroid/database/ContentObservable;

    invoke-direct {v0}, Landroid/database/ContentObservable;-><init>()V

    iput-object v0, p0, Landroid/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    .line 633
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/AbstractCursor;->mClosed:Z

    .line 636
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/database/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    .line 159
    iput v1, p0, Landroid/database/AbstractCursor;->mPos:I

    .line 160
    iput v1, p0, Landroid/database/AbstractCursor;->mRowIdColumnIndex:I

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/AbstractCursor;->mCurrentRowID:Ljava/lang/Long;

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    .line 163
    return-void
.end method


# virtual methods
.method public abortUpdates()V
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Landroid/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v0

    .line 434
    :try_start_0
    iget-object v1, p0, Landroid/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 435
    monitor-exit v0

    .line 436
    return-void

    .line 435
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected checkPosition()V
    .locals 3

    .prologue
    .line 579
    const/4 v0, -0x1

    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v0

    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    if-ne v0, v1, :cond_1

    .line 580
    :cond_0
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(II)V

    throw v0

    .line 582
    :cond_1
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/database/AbstractCursor;->mClosed:Z

    .line 107
    iget-object v0, p0, Landroid/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0}, Landroid/database/ContentObservable;->unregisterAll()V

    .line 108
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->deactivateInternal()V

    .line 109
    return-void
.end method

.method public commitUpdates()Z
    .locals 1

    .prologue
    .line 443
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/database/AbstractCursor;->commitUpdates(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public commitUpdates(Ljava/util/Map;)Z
    .locals 1
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
    .line 116
    .local p1, values:Ljava/util/Map;,"Ljava/util/Map<+Ljava/lang/Long;+Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 5
    .parameter "columnIndex"
    .parameter "buffer"

    .prologue
    const/4 v4, 0x0

    .line 144
    invoke-virtual {p0, p1}, Landroid/database/AbstractCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, result:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 146
    iget-object v0, p2, Landroid/database/CharArrayBuffer;->data:[C

    .line 147
    .local v0, data:[C
    if-eqz v0, :cond_0

    array-length v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 148
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iput-object v2, p2, Landroid/database/CharArrayBuffer;->data:[C

    .line 152
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 154
    .end local v0           #data:[C
    :cond_1
    return-void

    .line 150
    .restart local v0       #data:[C
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v4, v2, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_0
.end method

.method public deactivate()V
    .locals 0

    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->deactivateInternal()V

    .line 79
    return-void
.end method

.method public deactivateInternal()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Landroid/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/AbstractCursor;->mSelfObserverRegistered:Z

    .line 89
    :cond_0
    iget-object v0, p0, Landroid/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    .line 90
    return-void
.end method

.method public deleteRow()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 5
    .parameter "position"
    .parameter "window"

    .prologue
    .line 207
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v4

    if-le p1, v4, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    invoke-virtual {p2}, Landroid/database/CursorWindow;->acquireReference()V

    .line 212
    :try_start_0
    iget v3, p0, Landroid/database/AbstractCursor;->mPos:I

    .line 213
    .local v3, oldpos:I
    const/4 v4, 0x1

    sub-int v4, p1, v4

    iput v4, p0, Landroid/database/AbstractCursor;->mPos:I

    .line 214
    invoke-virtual {p2}, Landroid/database/CursorWindow;->clear()V

    .line 215
    invoke-virtual {p2, p1}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 216
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getColumnCount()I

    move-result v0

    .line 217
    .local v0, columnNum:I
    invoke-virtual {p2, v0}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 218
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p2}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 219
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_2

    .line 220
    invoke-virtual {p0, v2}, Landroid/database/AbstractCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, field:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 222
    iget v4, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {p2, v1, v4, v2}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result v4

    if-nez v4, :cond_4

    .line 223
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 236
    .end local v0           #columnNum:I
    .end local v1           #field:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #oldpos:I
    :catch_0
    move-exception v4

    .line 239
    :goto_3
    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    goto :goto_0

    .line 227
    .restart local v0       #columnNum:I
    .restart local v1       #field:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v3       #oldpos:I
    :cond_3
    :try_start_1
    iget v4, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {p2, v4, v2}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v4

    if-nez v4, :cond_4

    .line 228
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 239
    .end local v0           #columnNum:I
    .end local v1           #field:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #oldpos:I
    :catchall_0
    move-exception v4

    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    throw v4

    .line 219
    .restart local v0       #columnNum:I
    .restart local v1       #field:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v3       #oldpos:I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 235
    .end local v1           #field:Ljava/lang/String;
    .end local v2           #i:I
    :cond_5
    :try_start_2
    iput v3, p0, Landroid/database/AbstractCursor;->mPos:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 586
    iget-object v0, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/database/AbstractCursor;->mSelfObserverRegistered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 587
    iget-object v0, p0, Landroid/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 589
    :cond_0
    return-void
.end method

.method public getBlob(I)[B
    .locals 2
    .parameter "column"

    .prologue
    .line 61
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getBlob is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 9
    .parameter "columnName"

    .prologue
    const/4 v8, -0x1

    .line 288
    const/16 v5, 0x2e

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 289
    .local v4, periodIndex:I
    if-eq v4, v8, :cond_0

    .line 290
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 291
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "Cursor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "requesting column name with table name -- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 295
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, columnNames:[Ljava/lang/String;
    array-length v3, v0

    .line 297
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 298
    aget-object v5, v0, v2

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v2

    .line 308
    :goto_1
    return v5

    .line 297
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v5, v8

    .line 308
    goto :goto_1
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 4
    .parameter "columnName"

    .prologue
    .line 312
    invoke-virtual {p0, p1}, Landroid/database/AbstractCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 313
    .local v0, index:I
    if-gez v0, :cond_0

    .line 314
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "column \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 316
    :cond_0
    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 320
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public abstract getColumnNames()[Ljava/lang/String;
.end method

.method public abstract getCount()I
.end method

.method protected getDataSetObservable()Landroid/database/DataSetObservable;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Landroid/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    return-object v0
.end method

.method public abstract getDouble(I)D
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 530
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method public abstract getFloat(I)F
.end method

.method public abstract getInt(I)I
.end method

.method public abstract getLong(I)J
.end method

.method public final getPosition()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Landroid/database/AbstractCursor;->mPos:I

    return v0
.end method

.method public abstract getShort(I)S
.end method

.method public abstract getString(I)Ljava/lang/String;
.end method

.method protected getUpdatedField(I)Ljava/lang/Object;
    .locals 3
    .parameter "columnIndex"

    .prologue
    .line 566
    iget-object v1, p0, Landroid/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    iget-object v2, p0, Landroid/database/AbstractCursor;->mCurrentRowID:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 567
    .local v0, updates:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    .prologue
    .line 526
    const/4 v0, 0x0

    return v0
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasUpdates()Z
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Landroid/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v0

    .line 424
    :try_start_0
    iget-object v1, p0, Landroid/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 425
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final isAfterLast()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 280
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 283
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isBeforeFirst()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 273
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 276
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/database/AbstractCursor;->mPos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Landroid/database/AbstractCursor;->mClosed:Z

    return v0
.end method

.method protected isFieldUpdated(I)Z
    .locals 3
    .parameter "columnIndex"

    .prologue
    .line 548
    iget v1, p0, Landroid/database/AbstractCursor;->mRowIdColumnIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 549
    iget-object v1, p0, Landroid/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    iget-object v2, p0, Landroid/database/AbstractCursor;->mCurrentRowID:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 550
    .local v0, updates:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 551
    const/4 v1, 0x1

    .line 554
    .end local v0           #updates:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isFirst()Z
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Landroid/database/AbstractCursor;->mPos:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isLast()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 268
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v0

    .line 269
    .local v0, cnt:I
    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    sub-int v2, v0, v3

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    move v1, v3

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract isNull(I)Z
.end method

.method public final move(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 244
    iget v0, p0, Landroid/database/AbstractCursor;->mPos:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/database/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToFirst()Z
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/database/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToLast()Z
    .locals 2

    .prologue
    .line 252
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/database/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToNext()Z
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Landroid/database/AbstractCursor;->mPos:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/database/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToPosition(I)Z
    .locals 4
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 171
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v0

    .line 172
    .local v0, count:I
    if-lt p1, v0, :cond_0

    .line 173
    iput v0, p0, Landroid/database/AbstractCursor;->mPos:I

    .line 198
    :goto_0
    return v2

    .line 178
    :cond_0
    if-gez p1, :cond_1

    .line 179
    iput v3, p0, Landroid/database/AbstractCursor;->mPos:I

    goto :goto_0

    .line 184
    :cond_1
    iget v2, p0, Landroid/database/AbstractCursor;->mPos:I

    if-ne p1, v2, :cond_2

    .line 185
    const/4 v2, 0x1

    goto :goto_0

    .line 188
    :cond_2
    iget v2, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {p0, v2, p1}, Landroid/database/AbstractCursor;->onMove(II)Z

    move-result v1

    .line 189
    .local v1, result:Z
    if-nez v1, :cond_4

    .line 190
    iput v3, p0, Landroid/database/AbstractCursor;->mPos:I

    :cond_3
    :goto_1
    move v2, v1

    .line 198
    goto :goto_0

    .line 192
    :cond_4
    iput p1, p0, Landroid/database/AbstractCursor;->mPos:I

    .line 193
    iget v2, p0, Landroid/database/AbstractCursor;->mRowIdColumnIndex:I

    if-eq v2, v3, :cond_3

    .line 194
    iget v2, p0, Landroid/database/AbstractCursor;->mRowIdColumnIndex:I

    invoke-virtual {p0, v2}, Landroid/database/AbstractCursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Landroid/database/AbstractCursor;->mCurrentRowID:Ljava/lang/Long;

    goto :goto_1
.end method

.method public final moveToPrevious()Z
    .locals 2

    .prologue
    .line 260
    iget v0, p0, Landroid/database/AbstractCursor;->mPos:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/database/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method protected notifyDataSetChange()V
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Landroid/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 471
    return-void
.end method

.method protected onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 497
    iget-object v0, p0, Landroid/database/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 498
    :try_start_0
    iget-object v1, p0, Landroid/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v1, p1}, Landroid/database/ContentObservable;->dispatchChange(Z)V

    .line 499
    iget-object v1, p0, Landroid/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 500
    iget-object v1, p0, Landroid/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    iget-object v3, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 502
    :cond_0
    monitor-exit v0

    .line 503
    return-void

    .line 502
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onMove(II)Z
    .locals 1
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 455
    iget-object v0, p0, Landroid/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->registerObserver(Landroid/database/ContentObserver;)V

    .line 456
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 482
    iget-object v0, p0, Landroid/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 484
    return-void
.end method

.method public requery()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 93
    iget-object v0, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/database/AbstractCursor;->mSelfObserverRegistered:Z

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Landroid/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    iget-object v2, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 95
    iput-boolean v3, p0, Landroid/database/AbstractCursor;->mSelfObserverRegistered:Z

    .line 97
    :cond_0
    iget-object v0, p0, Landroid/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 98
    return v3
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "extras"

    .prologue
    .line 534
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 5
    .parameter "cr"
    .parameter "notifyUri"

    .prologue
    .line 513
    iget-object v0, p0, Landroid/database/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 514
    :try_start_0
    iput-object p2, p0, Landroid/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    .line 515
    iput-object p1, p0, Landroid/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    .line 516
    iget-object v1, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    .line 517
    iget-object v1, p0, Landroid/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 519
    :cond_0
    new-instance v1, Landroid/database/AbstractCursor$SelfContentObserver;

    invoke-direct {v1, p0}, Landroid/database/AbstractCursor$SelfContentObserver;-><init>(Landroid/database/AbstractCursor;)V

    iput-object v1, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    .line 520
    iget-object v1, p0, Landroid/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 521
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/database/AbstractCursor;->mSelfObserverRegistered:Z

    .line 522
    monitor-exit v0

    .line 523
    return-void

    .line 522
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public supportsUpdates()Z
    .locals 2

    .prologue
    .line 451
    iget v0, p0, Landroid/database/AbstractCursor;->mRowIdColumnIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 460
    iget-boolean v0, p0, Landroid/database/AbstractCursor;->mClosed:Z

    if-nez v0, :cond_0

    .line 461
    iget-object v0, p0, Landroid/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 463
    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 487
    iget-object v0, p0, Landroid/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 488
    return-void
.end method

.method public update(ILjava/lang/Object;)Z
    .locals 5
    .parameter "columnIndex"
    .parameter "obj"

    .prologue
    .line 392
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->supportsUpdates()Z

    move-result v2

    if-nez v2, :cond_0

    .line 393
    const/4 v2, 0x0

    .line 412
    :goto_0
    return v2

    .line 398
    :cond_0
    new-instance v1, Ljava/lang/Long;

    iget v2, p0, Landroid/database/AbstractCursor;->mRowIdColumnIndex:I

    invoke-virtual {p0, v2}, Landroid/database/AbstractCursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 399
    .local v1, rowid:Ljava/lang/Long;
    if-nez v1, :cond_1

    .line 400
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "null rowid. mRowIdColumnIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/database/AbstractCursor;->mRowIdColumnIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 403
    :cond_1
    iget-object v2, p0, Landroid/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v2

    .line 404
    :try_start_0
    iget-object v3, p0, Landroid/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 405
    .local v0, row:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_2

    .line 406
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #row:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 407
    .restart local v0       #row:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Landroid/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    :cond_2
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    monitor-exit v2

    .line 412
    const/4 v2, 0x1

    goto :goto_0

    .line 410
    .end local v0           #row:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public updateBlob(I[B)Z
    .locals 1
    .parameter "columnIndex"
    .parameter "value"

    .prologue
    .line 328
    invoke-virtual {p0, p1, p2}, Landroid/database/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateDouble(ID)Z
    .locals 1
    .parameter "columnIndex"
    .parameter "value"

    .prologue
    .line 376
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/database/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateFloat(IF)Z
    .locals 1
    .parameter "columnIndex"
    .parameter "value"

    .prologue
    .line 368
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/database/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateInt(II)Z
    .locals 1
    .parameter "columnIndex"
    .parameter "value"

    .prologue
    .line 352
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/database/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateLong(IJ)Z
    .locals 1
    .parameter "columnIndex"
    .parameter "value"

    .prologue
    .line 360
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/database/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateShort(IS)Z
    .locals 1
    .parameter "columnIndex"
    .parameter "value"

    .prologue
    .line 344
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/database/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateString(ILjava/lang/String;)Z
    .locals 1
    .parameter "columnIndex"
    .parameter "value"

    .prologue
    .line 336
    invoke-virtual {p0, p1, p2}, Landroid/database/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateToNull(I)Z
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 384
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/database/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method
