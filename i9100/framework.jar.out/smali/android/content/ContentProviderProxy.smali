.class final Landroid/content/ContentProviderProxy;
.super Ljava/lang/Object;
.source "ContentProviderNative.java"

# interfaces
.implements Landroid/content/IContentProvider;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .parameter "remote"

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object p1, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    .line 281
    return-void
.end method

.method private bulkQueryInternal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/database/IContentObserver;Landroid/database/CursorWindow;Landroid/database/BulkCursorToCursorAdaptor;)Landroid/database/IBulkCursor;
    .locals 16
    .parameter "url"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "observer"
    .parameter "window"
    .parameter "adaptor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 294
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 295
    .local v6, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    .line 297
    .local v10, reply:Landroid/os/Parcel;
    const-string v13, "android.content.IContentProvider"

    invoke-virtual {v6, v13}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 299
    const/4 v13, 0x0

    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 300
    const/4 v9, 0x0

    .line 301
    .local v9, length:I
    if-eqz p2, :cond_0

    .line 302
    move-object/from16 v0, p2

    array-length v0, v0

    move v9, v0

    .line 304
    :cond_0
    invoke-virtual {v6, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v9, :cond_1

    .line 306
    aget-object v13, p2, v7

    invoke-virtual {v6, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 305
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 308
    :cond_1
    move-object v0, v6

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 309
    if-eqz p4, :cond_2

    .line 310
    move-object/from16 v0, p4

    array-length v0, v0

    move v9, v0

    .line 314
    :goto_1
    invoke-virtual {v6, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v9, :cond_3

    .line 316
    aget-object v13, p4, v7

    invoke-virtual {v6, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 315
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 312
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 318
    :cond_3
    move-object v0, v6

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 319
    invoke-interface/range {p6 .. p6}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 320
    const/4 v13, 0x0

    move-object/from16 v0, p7

    move-object v1, v6

    move v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/database/CursorWindow;->writeToParcel(Landroid/os/Parcel;I)V

    .line 325
    if-eqz p8, :cond_5

    const/4 v13, 0x1

    move v12, v13

    .line 326
    .local v12, wantsCursorMetadata:Z
    :goto_3
    if-eqz v12, :cond_6

    const/4 v13, 0x1

    :goto_4
    invoke-virtual {v6, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    move-object v13, v0

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-interface {v13, v14, v6, v10, v15}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 330
    invoke-static {v10}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 332
    const/4 v4, 0x0

    .line 333
    .local v4, bulkCursor:Landroid/database/IBulkCursor;
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 334
    .local v5, bulkCursorBinder:Landroid/os/IBinder;
    if-eqz v5, :cond_4

    .line 335
    invoke-static {v5}, Landroid/database/BulkCursorNative;->asInterface(Landroid/os/IBinder;)Landroid/database/IBulkCursor;

    move-result-object v4

    .line 337
    if-eqz v12, :cond_4

    .line 338
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 339
    .local v11, rowCount:I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 340
    .local v8, idColumnPosition:I
    if-eqz v4, :cond_4

    .line 341
    move-object/from16 v0, p8

    move-object v1, v4

    move v2, v11

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/BulkCursorToCursorAdaptor;->set(Landroid/database/IBulkCursor;II)V

    .line 346
    .end local v8           #idColumnPosition:I
    .end local v11           #rowCount:I
    :cond_4
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 347
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 349
    return-object v4

    .line 325
    .end local v4           #bulkCursor:Landroid/database/IBulkCursor;
    .end local v5           #bulkCursorBinder:Landroid/os/IBinder;
    .end local v12           #wantsCursorMetadata:Z
    :cond_5
    const/4 v13, 0x0

    move v12, v13

    goto :goto_3

    .line 326
    .restart local v12       #wantsCursorMetadata:Z
    :cond_6
    const/4 v13, 0x0

    goto :goto_4
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
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v7, 0x0

    .line 450
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 451
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 453
    .local v3, reply:Landroid/os/Parcel;
    const-string v5, "android.content.IContentProvider"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentProviderOperation;

    .line 456
    .local v2, operation:Landroid/content/ContentProviderOperation;
    invoke-virtual {v2, v0, v7}, Landroid/content/ContentProviderOperation;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 458
    .end local v2           #operation:Landroid/content/ContentProviderOperation;
    :cond_0
    iget-object v5, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x14

    invoke-interface {v5, v6, v0, v3, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 460
    invoke-static {v3}, Landroid/database/DatabaseUtils;->readExceptionWithOperationApplicationExceptionFromParcel(Landroid/os/Parcel;)V

    .line 461
    sget-object v5, Landroid/content/ContentProviderResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/content/ContentProviderResult;

    .line 464
    .local v4, results:[Landroid/content/ContentProviderResult;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 465
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 467
    return-object v4
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 6
    .parameter "url"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 418
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 419
    .local v1, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 421
    .local v2, reply:Landroid/os/Parcel;
    const-string v3, "android.content.IContentProvider"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p1, v1, v5}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 424
    invoke-virtual {v1, p2, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 426
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 428
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 429
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 431
    .local v0, count:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 432
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 434
    return v0
.end method

.method public bulkInsert_GetUris(Landroid/net/Uri;[Landroid/content/ContentValues;[Landroid/net/Uri;)I
    .locals 1
    .parameter "uri"
    .parameter "initialValues"
    .parameter "ret_uris"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 443
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProviderProxy;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method public bulkQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/database/IContentObserver;Landroid/database/CursorWindow;)Landroid/database/IBulkCursor;
    .locals 9
    .parameter "url"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "observer"
    .parameter "window"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 355
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Landroid/content/ContentProviderProxy;->bulkQueryInternal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/database/IContentObserver;Landroid/database/CursorWindow;Landroid/database/BulkCursorToCursorAdaptor;)Landroid/database/IBulkCursor;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .parameter "method"
    .parameter "request"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 562
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 563
    .local v1, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 565
    .local v2, reply:Landroid/os/Parcel;
    const-string v3, "android.content.IContentProvider"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 567
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 568
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 569
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 571
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 573
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 574
    invoke-virtual {v2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 576
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 577
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 579
    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "url"
    .parameter "selection"
    .parameter "selectionArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 472
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 473
    .local v1, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 475
    .local v2, reply:Landroid/os/Parcel;
    const-string v3, "android.content.IContentProvider"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p1, v1, v5}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 478
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 479
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 481
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 483
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 484
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 486
    .local v0, count:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 487
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 489
    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 378
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 379
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 381
    .local v2, reply:Landroid/os/Parcel;
    const-string v3, "android.content.IContentProvider"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p1, v0, v5}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 385
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 387
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 388
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 390
    .local v1, out:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 391
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 393
    return-object v1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .parameter "url"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 398
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 399
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 401
    .local v2, reply:Landroid/os/Parcel;
    const-string v3, "android.content.IContentProvider"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p1, v0, v5}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 404
    invoke-virtual {p2, v0, v5}, Landroid/content/ContentValues;->writeToParcel(Landroid/os/Parcel;I)V

    .line 406
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 408
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 409
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 411
    .local v1, out:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 412
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 414
    return-object v1
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 7
    .parameter "url"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 539
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 540
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 542
    .local v3, reply:Landroid/os/Parcel;
    const-string v4, "android.content.IContentProvider"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p1, v0, v6}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 545
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 547
    iget-object v4, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xf

    invoke-interface {v4, v5, v0, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 549
    invoke-static {v3}, Landroid/database/DatabaseUtils;->readExceptionWithFileNotFoundExceptionFromParcel(Landroid/os/Parcel;)V

    .line 550
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 551
    .local v2, has:I
    if-eqz v2, :cond_0

    sget-object v4, Landroid/content/res/AssetFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/res/AssetFileDescriptor;

    move-object v1, p0

    .line 554
    .local v1, fd:Landroid/content/res/AssetFileDescriptor;
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 555
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 557
    return-object v1

    .line 551
    .end local v1           #fd:Landroid/content/res/AssetFileDescriptor;
    .restart local p0
    :cond_0
    const/4 v4, 0x0

    move-object v1, v4

    goto :goto_0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .parameter "url"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 517
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 518
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 520
    .local v3, reply:Landroid/os/Parcel;
    const-string v4, "android.content.IContentProvider"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p1, v0, v6}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 523
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 525
    iget-object v4, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xe

    invoke-interface {v4, v5, v0, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 527
    invoke-static {v3}, Landroid/database/DatabaseUtils;->readExceptionWithFileNotFoundExceptionFromParcel(Landroid/os/Parcel;)V

    .line 528
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 529
    .local v2, has:I
    if-eqz v2, :cond_0

    invoke-virtual {v3}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    move-object v1, v4

    .line 531
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 532
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 534
    return-object v1

    .line 529
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_0
    const/4 v4, 0x0

    move-object v1, v4

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "url"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 364
    new-instance v7, Landroid/database/CursorWindow;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Landroid/database/CursorWindow;-><init>(Z)V

    .line 365
    .local v7, window:Landroid/database/CursorWindow;
    new-instance v8, Landroid/database/BulkCursorToCursorAdaptor;

    invoke-direct {v8}, Landroid/database/BulkCursorToCursorAdaptor;-><init>()V

    .line 366
    .local v8, adaptor:Landroid/database/BulkCursorToCursorAdaptor;
    invoke-virtual {v8}, Landroid/database/BulkCursorToCursorAdaptor;->getObserver()Landroid/database/IContentObserver;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v8}, Landroid/content/ContentProviderProxy;->bulkQueryInternal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/database/IContentObserver;Landroid/database/CursorWindow;Landroid/database/BulkCursorToCursorAdaptor;)Landroid/database/IBulkCursor;

    move-result-object v9

    .line 370
    .local v9, bulkCursor:Landroid/database/IBulkCursor;
    if-nez v9, :cond_0

    .line 371
    const/4 v0, 0x0

    .line 373
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v8

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "url"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 494
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 495
    .local v1, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 497
    .local v2, reply:Landroid/os/Parcel;
    const-string v3, "android.content.IContentProvider"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p1, v1, v5}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 500
    invoke-virtual {p2, v1, v5}, Landroid/content/ContentValues;->writeToParcel(Landroid/os/Parcel;I)V

    .line 501
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 502
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 504
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 506
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 507
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 509
    .local v0, count:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 510
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 512
    return v0
.end method
