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
    .line 303
    iput-object p1, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/media/MediaScannerService;Lcom/android/providers/media/MediaScannerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaScannerService$ServiceHandler;-><init>(Lcom/android/providers/media/MediaScannerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const-string v13, "MediaScannerService"

    .line 308
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 309
    .local v0, arguments:Landroid/os/Bundle;
    const-string v10, "filepath"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 310
    .local v5, filePath:Ljava/lang/String;
    const-string v10, "volume"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 312
    .local v9, volume:Ljava/lang/String;
    const-string v10, "MediaScannerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ServiceHandler:handleMessage volume["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "], filePath["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    if-eqz v5, :cond_2

    .line 316
    :try_start_0
    const-string v10, "listener"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 317
    .local v1, binder:Landroid/os/IBinder;
    if-nez v1, :cond_1

    const/4 v10, 0x0

    move-object v6, v10

    .line 319
    .local v6, listener:Landroid/media/IMediaScannerListener;
    :goto_0
    iget-object v10, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    const-string v11, "mimetype"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/providers/media/MediaScannerService;->scanFile(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v10, v5, v11}, Lcom/android/providers/media/MediaScannerService;->access$100(Lcom/android/providers/media/MediaScannerService;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 320
    .local v7, uri:Landroid/net/Uri;
    if-eqz v6, :cond_0

    .line 321
    invoke-interface {v6, v5, v7}, Landroid/media/IMediaScannerListener;->scanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    .end local v1           #binder:Landroid/os/IBinder;
    .end local v6           #listener:Landroid/media/IMediaScannerListener;
    .end local v7           #uri:Landroid/net/Uri;
    :cond_0
    :goto_1
    iget-object v10, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v10, v11}, Lcom/android/providers/media/MediaScannerService;->stopSelf(I)V

    .line 375
    return-void

    .line 317
    .restart local v1       #binder:Landroid/os/IBinder;
    :cond_1
    :try_start_1
    invoke-static {v1}, Landroid/media/IMediaScannerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaScannerListener;

    move-result-object v10

    move-object v6, v10

    goto :goto_0

    .line 324
    .end local v1           #binder:Landroid/os/IBinder;
    :cond_2
    const/4 v3, 0x0

    .line 326
    .local v3, directories:[Ljava/lang/String;
    move-object v2, v9

    .line 328
    .local v2, debugVolume:Ljava/lang/String;
    const-string v10, "internal"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 330
    const/4 v10, 0x1

    new-array v3, v10, [Ljava/lang/String;

    .end local v3           #directories:[Ljava/lang/String;
    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/media"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    .line 362
    .restart local v3       #directories:[Ljava/lang/String;
    :cond_3
    :goto_2
    if-eqz v3, :cond_0

    .line 363
    const-string v10, "MediaScannerService"

    const-string v11, "!@beginofMediascannerservice"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const-string v10, "MediaScannerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "start scanning volume "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v10, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    #calls: Lcom/android/providers/media/MediaScannerService;->scan([Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v3, v9}, Lcom/android/providers/media/MediaScannerService;->access$200(Lcom/android/providers/media/MediaScannerService;[Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v10, "MediaScannerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "done scanning volume "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const-string v10, "MediaScannerService"

    const-string v11, "!@endofMediascannerservice"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 370
    .end local v2           #debugVolume:Ljava/lang/String;
    .end local v3           #directories:[Ljava/lang/String;
    :catch_0
    move-exception v10

    move-object v4, v10

    .line 371
    .local v4, e:Ljava/lang/Exception;
    const-string v10, "MediaScannerService"

    const-string v10, "Exception in handleMessage"

    invoke-static {v13, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 334
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v2       #debugVolume:Ljava/lang/String;
    .restart local v3       #directories:[Ljava/lang/String;
    :cond_4
    :try_start_2
    const-string v10, "external"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 336
    const/4 v10, 0x1

    new-array v3, v10, [Ljava/lang/String;

    .end local v3           #directories:[Ljava/lang/String;
    const/4 v10, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    .restart local v3       #directories:[Ljava/lang/String;
    goto :goto_2

    .line 340
    :cond_5
    const-string v10, "external/sd"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 342
    const/4 v10, 0x1

    new-array v3, v10, [Ljava/lang/String;

    .end local v3           #directories:[Ljava/lang/String;
    const/4 v10, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    .line 346
    .restart local v3       #directories:[Ljava/lang/String;
    const-string v9, "external"

    goto :goto_2

    .line 350
    :cond_6
    const-string v10, "usb_otg"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 351
    const-string v10, "usbStorageDynamicPath"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 353
    .local v8, usbStorageDynamicPath:Ljava/lang/String;
    const/4 v10, 0x1

    new-array v3, v10, [Ljava/lang/String;

    .end local v3           #directories:[Ljava/lang/String;
    const/4 v10, 0x0

    aput-object v8, v3, v10

    .line 357
    .restart local v3       #directories:[Ljava/lang/String;
    const-string v9, "external"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2
.end method
