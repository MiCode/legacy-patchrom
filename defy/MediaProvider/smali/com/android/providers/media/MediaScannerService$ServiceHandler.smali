.class final Lcom/android/providers/media/MediaScannerService$ServiceHandler;
.super Landroid/os/Handler;
.source "MediaScannerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaScannerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MediaScannerService;


# direct methods
.method private constructor <init>(Lcom/android/providers/media/MediaScannerService;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/media/MediaScannerService;Lcom/android/providers/media/MediaScannerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 343
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaScannerService$ServiceHandler;-><init>(Lcom/android/providers/media/MediaScannerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 15
    .parameter "msg"

    .prologue
    const/4 v13, 0x1

    const-string v11, "external"

    const-string v11, "internal"

    const-string v14, "MediaScannerService"

    .line 348
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/os/Bundle;

    .line 349
    .local v1, arguments:Landroid/os/Bundle;
    const-string v11, "filepath"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 352
    .local v5, filePath:Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 353
    :try_start_0
    const-string v11, "listener"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 354
    .local v2, binder:Landroid/os/IBinder;
    if-nez v2, :cond_2

    const/4 v11, 0x0

    move-object v7, v11

    .line 357
    .local v7, listener:Landroid/media/IMediaScannerListener;
    :goto_0
    const-string v11, "paths"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 359
    .local v8, paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v8, :cond_4

    .line 361
    const-string v11, "isFolder"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 362
    .local v6, isFolder:Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v11, "true"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 364
    :cond_0
    iget-object v11, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    const-string v12, "mimetype"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/providers/media/MediaScannerService;->scanFile(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v11, v5, v12}, Lcom/android/providers/media/MediaScannerService;->access$100(Lcom/android/providers/media/MediaScannerService;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 376
    .end local v6           #isFolder:Ljava/lang/String;
    .local v9, uri:Landroid/net/Uri;
    :goto_1
    if-eqz v7, :cond_1

    .line 377
    invoke-interface {v7, v5, v9}, Landroid/media/IMediaScannerListener;->scanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    .end local v2           #binder:Landroid/os/IBinder;
    .end local v7           #listener:Landroid/media/IMediaScannerListener;
    .end local v8           #paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9           #uri:Landroid/net/Uri;
    :cond_1
    :goto_2
    iget-object v11, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v12, v0

    invoke-virtual {v11, v12}, Lcom/android/providers/media/MediaScannerService;->stopSelf(I)V

    .line 418
    return-void

    .line 354
    .restart local v2       #binder:Landroid/os/IBinder;
    :cond_2
    :try_start_1
    invoke-static {v2}, Landroid/media/IMediaScannerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaScannerListener;

    move-result-object v11

    move-object v7, v11

    goto :goto_0

    .line 368
    .restart local v6       #isFolder:Ljava/lang/String;
    .restart local v7       #listener:Landroid/media/IMediaScannerListener;
    .restart local v8       #paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const/4 v9, 0x0

    .line 369
    .restart local v9       #uri:Landroid/net/Uri;
    iget-object v11, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    #calls: Lcom/android/providers/media/MediaScannerService;->scanFolder(Ljava/lang/String;)V
    invoke-static {v11, v5}, Lcom/android/providers/media/MediaScannerService;->access$200(Lcom/android/providers/media/MediaScannerService;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 413
    .end local v2           #binder:Landroid/os/IBinder;
    .end local v6           #isFolder:Ljava/lang/String;
    .end local v7           #listener:Landroid/media/IMediaScannerListener;
    .end local v8           #paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v11

    move-object v4, v11

    .line 414
    .local v4, e:Ljava/lang/Exception;
    const-string v11, "MediaScannerService"

    const-string v11, "Exception in handleMessage"

    invoke-static {v14, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 373
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v2       #binder:Landroid/os/IBinder;
    .restart local v7       #listener:Landroid/media/IMediaScannerListener;
    .restart local v8       #paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    :try_start_2
    iget-object v11, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    const-string v12, "apptype"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    #calls: Lcom/android/providers/media/MediaScannerService;->scanMultiFile(Ljava/util/ArrayList;I)Landroid/net/Uri;
    invoke-static {v11, v8, v12}, Lcom/android/providers/media/MediaScannerService;->access$300(Lcom/android/providers/media/MediaScannerService;Ljava/util/ArrayList;I)Landroid/net/Uri;

    move-result-object v9

    .line 374
    .restart local v9       #uri:Landroid/net/Uri;
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v13

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    goto :goto_1

    .line 380
    .end local v2           #binder:Landroid/os/IBinder;
    .end local v7           #listener:Landroid/media/IMediaScannerListener;
    .end local v8           #paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9           #uri:Landroid/net/Uri;
    :cond_5
    const-string v11, "volume"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 381
    .local v10, volume:Ljava/lang/String;
    const/4 v3, 0x0

    .line 383
    .local v3, directories:[Ljava/lang/String;
    const-string v11, "internal"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 385
    const/4 v11, 0x1

    new-array v3, v11, [Ljava/lang/String;

    .end local v3           #directories:[Ljava/lang/String;
    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/media"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v3, v11

    .line 401
    .restart local v3       #directories:[Ljava/lang/String;
    :cond_6
    :goto_3
    if-eqz v3, :cond_1

    .line 402
    const-string v11, "MediaScannerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "start scanning volume "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const-string v11, "internal"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 405
    iget-object v11, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    const-string v12, "internal"

    #calls: Lcom/android/providers/media/MediaScannerService;->scan([Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v11, v3, v12}, Lcom/android/providers/media/MediaScannerService;->access$500(Lcom/android/providers/media/MediaScannerService;[Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :goto_4
    const-string v11, "MediaScannerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "done scanning volume "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 390
    :cond_7
    invoke-static {}, Lcom/android/providers/media/MediaScannerService;->access$400()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-static {v10}, Landroid/os/MotoEnvironment;->isExternalStorageDirectory(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 392
    const/4 v11, 0x1

    new-array v3, v11, [Ljava/lang/String;

    .end local v3           #directories:[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v10, v3, v11

    .restart local v3       #directories:[Ljava/lang/String;
    goto :goto_3

    .line 393
    :cond_8
    const-string v11, "external"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 395
    const/4 v11, 0x1

    new-array v3, v11, [Ljava/lang/String;

    .end local v3           #directories:[Ljava/lang/String;
    const/4 v11, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v3, v11

    .restart local v3       #directories:[Ljava/lang/String;
    goto :goto_3

    .line 407
    :cond_9
    iget-object v11, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    const-string v12, "external"

    #calls: Lcom/android/providers/media/MediaScannerService;->scan([Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v11, v3, v12}, Lcom/android/providers/media/MediaScannerService;->access$500(Lcom/android/providers/media/MediaScannerService;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4
.end method
