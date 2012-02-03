.class Landroid/content/ContentProvider$Transport;
.super Landroid/content/ContentProviderNative;
.source "ContentProvider.java"

# interfaces
.implements Landroid/content/IContentProviderDBAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Transport"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/ContentProvider;


# direct methods
.method constructor <init>(Landroid/content/ContentProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-direct {p0}, Landroid/content/ContentProviderNative;-><init>()V

    return-void
.end method

.method private enforceReadPermission(Landroid/net/Uri;)V
    .locals 12
    .parameter "uri"

    .prologue
    .line 265
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 266
    .local v9, uid:I
    iget-object v10, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #getter for: Landroid/content/ContentProvider;->mMyUid:I
    invoke-static {v10}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;)I

    move-result v10

    if-ne v9, v10, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    iget-object v10, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v10}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 271
    .local v0, context:Landroid/content/Context;
    iget-object v10, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v10}, Landroid/content/ContentProvider;->getReadPermission()Ljava/lang/String;

    move-result-object v8

    .line 272
    .local v8, rperm:Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 273
    .local v4, pid:I
    iget-object v10, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #getter for: Landroid/content/ContentProvider;->mExported:Z
    invoke-static {v10}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;)Z

    move-result v10

    if-eqz v10, :cond_2

    if-eqz v8, :cond_0

    invoke-virtual {v0, v8, v4, v9}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v10

    if-eqz v10, :cond_0

    .line 279
    :cond_2
    iget-object v10, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v10}, Landroid/content/ContentProvider;->getPathPermissions()[Landroid/content/pm/PathPermission;

    move-result-object v7

    .line 280
    .local v7, pps:[Landroid/content/pm/PathPermission;
    if-eqz v7, :cond_4

    .line 281
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, path:Ljava/lang/String;
    array-length v1, v7

    .line 283
    .local v1, i:I
    :cond_3
    if-lez v1, :cond_4

    .line 284
    add-int/lit8 v1, v1, -0x1

    .line 285
    aget-object v5, v7, v1

    .line 286
    .local v5, pp:Landroid/content/pm/PathPermission;
    invoke-virtual {v5}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v6

    .line 287
    .local v6, pprperm:Ljava/lang/String;
    if-eqz v6, :cond_3

    invoke-virtual {v5, v3}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 288
    invoke-virtual {v0, v6, v4, v9}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v10

    if-nez v10, :cond_3

    goto :goto_0

    .line 296
    .end local v1           #i:I
    .end local v3           #path:Ljava/lang/String;
    .end local v5           #pp:Landroid/content/pm/PathPermission;
    .end local v6           #pprperm:Ljava/lang/String;
    :cond_4
    const/4 v10, 0x1

    invoke-virtual {v0, p1, v4, v9, v10}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v10

    if-eqz v10, :cond_0

    .line 302
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission Denial: reading "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " uri "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " from pid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " requires "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, msg:Ljava/lang/String;
    new-instance v10, Ljava/lang/SecurityException;

    invoke-direct {v10, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method private enforceWritePermission(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 352
    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->hasWritePermission(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    return-void

    .line 356
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: writing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v2}, Landroid/content/ContentProvider;->getWritePermission()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, msg:Ljava/lang/String;
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private hasWritePermission(Landroid/net/Uri;)Z
    .locals 11
    .parameter "uri"

    .prologue
    const/4 v10, 0x1

    .line 311
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 312
    .local v7, uid:I
    iget-object v9, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #getter for: Landroid/content/ContentProvider;->mMyUid:I
    invoke-static {v9}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;)I

    move-result v9

    if-ne v7, v9, :cond_0

    move v9, v10

    .line 348
    :goto_0
    return v9

    .line 316
    :cond_0
    iget-object v9, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v9}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 317
    .local v0, context:Landroid/content/Context;
    iget-object v9, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v9}, Landroid/content/ContentProvider;->getWritePermission()Ljava/lang/String;

    move-result-object v8

    .line 318
    .local v8, wperm:Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 319
    .local v3, pid:I
    iget-object v9, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #getter for: Landroid/content/ContentProvider;->mExported:Z
    invoke-static {v9}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz v8, :cond_1

    invoke-virtual {v0, v8, v3, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v9

    if-nez v9, :cond_2

    :cond_1
    move v9, v10

    .line 322
    goto :goto_0

    .line 325
    :cond_2
    iget-object v9, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v9}, Landroid/content/ContentProvider;->getPathPermissions()[Landroid/content/pm/PathPermission;

    move-result-object v5

    .line 326
    .local v5, pps:[Landroid/content/pm/PathPermission;
    if-eqz v5, :cond_4

    .line 327
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, path:Ljava/lang/String;
    array-length v1, v5

    .line 329
    .local v1, i:I
    :cond_3
    if-lez v1, :cond_4

    .line 330
    add-int/lit8 v1, v1, -0x1

    .line 331
    aget-object v4, v5, v1

    .line 332
    .local v4, pp:Landroid/content/pm/PathPermission;
    invoke-virtual {v4}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v6

    .line 333
    .local v6, ppwperm:Ljava/lang/String;
    if-eqz v6, :cond_3

    invoke-virtual {v4, v2}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 334
    invoke-virtual {v0, v6, v3, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v9

    if-nez v9, :cond_3

    move v9, v10

    .line 336
    goto :goto_0

    .line 342
    .end local v1           #i:I
    .end local v2           #path:Ljava/lang/String;
    .end local v4           #pp:Landroid/content/pm/PathPermission;
    .end local v6           #ppwperm:Ljava/lang/String;
    :cond_4
    const/4 v9, 0x2

    invoke-virtual {v0, p1, v3, v7, v9}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v9

    if-nez v9, :cond_5

    move v9, v10

    .line 345
    goto :goto_0

    .line 348
    :cond_5
    const/4 v9, 0x0

    goto :goto_0
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 3
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
    .line 220
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentProviderOperation;

    .line 221
    .local v1, operation:Landroid/content/ContentProviderOperation;
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->isReadOperation()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 222
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/net/Uri;)V

    .line 225
    :cond_1
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->isWriteOperation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/net/Uri;)V

    goto :goto_0

    .line 229
    .end local v1           #operation:Landroid/content/ContentProviderOperation;
    :cond_2
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v2, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v2

    return-object v2
.end method

.method public beginDBTransaction(Ljava/lang/String;)V
    .locals 1
    .parameter "volume"

    .prologue
    .line 365
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    instance-of v0, v0, Landroid/content/IContentProviderDBAccess;

    if-eqz v0, :cond_0

    .line 366
    iget-object p0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .end local p0
    check-cast p0, Landroid/content/IContentProviderDBAccess;

    invoke-interface {p0, p1}, Landroid/content/IContentProviderDBAccess;->beginDBTransaction(Ljava/lang/String;)V

    .line 368
    :cond_0
    return-void
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 1
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    .line 202
    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/net/Uri;)V

    .line 203
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method public bulkInsert_GetUris(Landroid/net/Uri;[Landroid/content/ContentValues;[Landroid/net/Uri;)I
    .locals 1
    .parameter "uri"
    .parameter "initialValues"
    .parameter "ret_uris"

    .prologue
    .line 212
    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/net/Uri;)V

    .line 213
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/ContentProvider;->bulkInsert_GetUris(Landroid/net/Uri;[Landroid/content/ContentValues;[Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public bulkQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/database/IContentObserver;Landroid/database/CursorWindow;)Landroid/database/IBulkCursor;
    .locals 6
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "observer"
    .parameter "window"

    .prologue
    .line 173
    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/net/Uri;)V

    .line 174
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 176
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 177
    const/4 v0, 0x0

    .line 179
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/database/CursorToBulkCursorAdaptor;

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->hasWritePermission(Landroid/net/Uri;)Z

    move-result v4

    move-object v2, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Landroid/database/CursorToBulkCursorAdaptor;-><init>(Landroid/database/Cursor;Landroid/database/IContentObserver;Ljava/lang/String;ZLandroid/database/CursorWindow;)V

    goto :goto_0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "method"
    .parameter "request"
    .parameter "args"

    .prologue
    .line 261
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 233
    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/net/Uri;)V

    .line 234
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public endDBTransaction()V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    instance-of v0, v0, Landroid/content/IContentProviderDBAccess;

    if-eqz v0, :cond_0

    .line 372
    iget-object p0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .end local p0
    check-cast p0, Landroid/content/IContentProviderDBAccess;

    invoke-interface {p0}, Landroid/content/IContentProviderDBAccess;->endDBTransaction()V

    .line 374
    :cond_0
    return-void
.end method

.method getContentProvider()Landroid/content/ContentProvider;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 192
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1}, Landroid/content/ContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    .line 197
    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/net/Uri;)V

    .line 198
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public modifyDBCleanupTrigger(IZ)V
    .locals 1
    .parameter "table"
    .parameter "isOriginal"

    .prologue
    .line 383
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    instance-of v0, v0, Landroid/content/IContentProviderDBAccess;

    if-eqz v0, :cond_0

    .line 384
    iget-object p0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .end local p0
    check-cast p0, Landroid/content/IContentProviderDBAccess;

    invoke-interface {p0, p1, p2}, Landroid/content/IContentProviderDBAccess;->modifyDBCleanupTrigger(IZ)V

    .line 386
    :cond_0
    return-void
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 252
    if-eqz p2, :cond_0

    const-string/jumbo v0, "rw"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/net/Uri;)V

    .line 254
    :goto_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0

    .line 253
    :cond_0
    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 245
    if-eqz p2, :cond_0

    const-string/jumbo v0, "rw"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/net/Uri;)V

    .line 247
    :goto_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    .line 246
    :cond_0
    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 186
    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/net/Uri;)V

    .line 187
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public setDBTransactionSuccessful()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    instance-of v0, v0, Landroid/content/IContentProviderDBAccess;

    if-eqz v0, :cond_0

    .line 378
    iget-object p0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .end local p0
    check-cast p0, Landroid/content/IContentProviderDBAccess;

    invoke-interface {p0}, Landroid/content/IContentProviderDBAccess;->setDBTransactionSuccessful()V

    .line 380
    :cond_0
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 239
    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/net/Uri;)V

    .line 240
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
