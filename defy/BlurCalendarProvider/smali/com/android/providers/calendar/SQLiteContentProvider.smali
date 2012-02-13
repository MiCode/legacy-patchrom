.class public abstract Lcom/android/providers/calendar/SQLiteContentProvider;
.super Landroid/content/ContentProvider;
.source "SQLiteContentProvider.java"

# interfaces
.implements Landroid/database/sqlite/SQLiteTransactionListener;


# static fields
.field private static final SLEEP_AFTER_YIELD_DELAY:I = 0xfa0

.field private static final TAG:Ljava/lang/String; = "SQLiteContentProvider"


# instance fields
.field private final mApplyingBatch:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mNotifyChange:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private applyingBatch()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v7, 0x0

    .line 188
    invoke-virtual {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 189
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 193
    new-array v5, v7, [Landroid/content/ContentProviderResult;

    .line 213
    :goto_0
    return-object v5

    .line 196
    :cond_0
    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 198
    :try_start_0
    iget-object v5, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 199
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 200
    .local v2, numOperations:I
    new-array v4, v2, [Landroid/content/ContentProviderResult;

    .line 201
    .local v4, results:[Landroid/content/ContentProviderResult;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 202
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentProviderOperation;

    .line 203
    .local v3, operation:Landroid/content/ContentProviderOperation;
    if-lez v1, :cond_1

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation;->isYieldAllowed()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 204
    const-wide/16 v5, 0xfa0

    invoke-virtual {v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely(J)Z

    .line 206
    :cond_1
    invoke-virtual {v3, p0, v4, v1}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v5

    aput-object v5, v4, v1

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 208
    .end local v3           #operation:Landroid/content/ContentProviderOperation;
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    iget-object v5, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 212
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 213
    invoke-virtual {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->onEndTransaction()V

    move-object v5, v4

    goto :goto_0

    .line 211
    .end local v1           #i:I
    .end local v2           #numOperations:I
    .end local v4           #results:[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 212
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 213
    invoke-virtual {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->onEndTransaction()V

    throw v5
.end method

.method protected beforeTransactionCommit()V
    .locals 0

    .prologue
    .line 233
    return-void
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 5
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 105
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    const/4 v4, 0x0

    .line 123
    :goto_0
    return v4

    .line 107
    :cond_0
    array-length v2, p2

    .line 108
    .local v2, numValues:I
    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 110
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 111
    :try_start_0
    aget-object v4, p2, v1

    invoke-virtual {p0, v0, p1, v4}, Lcom/android/providers/calendar/SQLiteContentProvider;->insertInTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 112
    .local v3, result:Landroid/net/Uri;
    if-eqz v3, :cond_1

    .line 113
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mNotifyChange:Z

    .line 115
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely()Z

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 117
    .end local v3           #result:Landroid/net/Uri;
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 122
    invoke-virtual {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->onEndTransaction()V

    move v4, v2

    .line 123
    goto :goto_0

    .line 119
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v3, 0x1

    .line 158
    invoke-virtual {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 159
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v2, :cond_0

    const/4 v3, 0x0

    .line 182
    :goto_0
    return v3

    .line 161
    :cond_0
    const/4 v1, 0x0

    .line 162
    .local v1, count:I
    invoke-direct {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->applyingBatch()Z

    move-result v0

    .line 163
    .local v0, applyingBatch:Z
    if-nez v0, :cond_3

    .line 164
    invoke-virtual {v2, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 166
    :try_start_0
    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/android/providers/calendar/SQLiteContentProvider;->deleteInTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 167
    if-lez v1, :cond_1

    .line 168
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mNotifyChange:Z

    .line 170
    :cond_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 175
    invoke-virtual {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->onEndTransaction()V

    :cond_2
    :goto_1
    move v3, v1

    .line 182
    goto :goto_0

    .line 172
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 177
    :cond_3
    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/android/providers/calendar/SQLiteContentProvider;->deleteInTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 178
    if-lez v1, :cond_2

    .line 179
    iput-boolean v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mNotifyChange:Z

    goto :goto_1
.end method

.method protected abstract deleteInTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method protected abstract getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
.end method

.method protected abstract getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v3, 0x1

    .line 75
    invoke-virtual {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 76
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_0

    const/4 v3, 0x0

    .line 99
    :goto_0
    return-object v3

    .line 78
    :cond_0
    const/4 v2, 0x0

    .line 79
    .local v2, result:Landroid/net/Uri;
    invoke-direct {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->applyingBatch()Z

    move-result v0

    .line 80
    .local v0, applyingBatch:Z
    if-nez v0, :cond_3

    .line 81
    invoke-virtual {v1, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 83
    :try_start_0
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/providers/calendar/SQLiteContentProvider;->insertInTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 84
    if-eqz v2, :cond_1

    .line 85
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mNotifyChange:Z

    .line 87
    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 92
    invoke-virtual {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->onEndTransaction()V

    :cond_2
    :goto_1
    move-object v3, v2

    .line 99
    goto :goto_0

    .line 89
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 94
    :cond_3
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/providers/calendar/SQLiteContentProvider;->insertInTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 95
    if-eqz v2, :cond_2

    .line 96
    iput-boolean v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mNotifyChange:Z

    goto :goto_1
.end method

.method protected abstract insertInTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method protected abstract notifyChange()V
.end method

.method public onBegin()V
    .locals 0

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->onBeginTransaction()V

    .line 219
    return-void
.end method

.method protected onBeginTransaction()V
    .locals 0

    .prologue
    .line 230
    return-void
.end method

.method public onCommit()V
    .locals 0

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->beforeTransactionCommit()V

    .line 223
    return-void
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method protected onEndTransaction()V
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mNotifyChange:Z

    if-eqz v0, :cond_0

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mNotifyChange:Z

    .line 238
    invoke-virtual {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->notifyChange()V

    .line 240
    :cond_0
    return-void
.end method

.method public onRollback()V
    .locals 0

    .prologue
    .line 227
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v8, 0x1

    .line 128
    invoke-virtual {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 129
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 153
    :goto_0
    return v0

    .line 131
    :cond_0
    const/4 v7, 0x0

    .line 132
    .local v7, count:I
    invoke-direct {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->applyingBatch()Z

    move-result v6

    .line 133
    .local v6, applyingBatch:Z
    if-nez v6, :cond_3

    .line 134
    invoke-virtual {v1, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 136
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/calendar/SQLiteContentProvider;->updateInTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 137
    if-lez v7, :cond_1

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mNotifyChange:Z

    .line 140
    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 145
    invoke-virtual {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->onEndTransaction()V

    :cond_2
    :goto_1
    move v0, v7

    .line 153
    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :cond_3
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 147
    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/calendar/SQLiteContentProvider;->updateInTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 148
    if-lez v7, :cond_2

    .line 149
    iput-boolean v8, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mNotifyChange:Z

    goto :goto_1
.end method

.method protected abstract updateInTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method
