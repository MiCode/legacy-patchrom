.class public final Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;
.super Ljava/lang/Thread;
.source "BluetoothPrinterEventLoop.java"


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothPrinterEventLoop"

.field private static final V:Z = true


# instance fields
.field private mContext:Landroid/content/Context;

.field final mPrinterCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 36
    invoke-static {}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->Native_classBluetoothPrinterInit()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;)V
    .locals 3
    .parameter "context"
    .parameter "service"

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothPrinterEventLoop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 44
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->mPrinterCallbacks:Landroid/os/RemoteCallbackList;

    .line 82
    iput-object p2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->mService:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    .line 83
    iput-object p1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->mContext:Landroid/content/Context;

    .line 84
    return-void
.end method

.method private native Native_BluetoothPrinterEventLoop()V
.end method

.method private static native Native_classBluetoothPrinterInit()V
.end method


# virtual methods
.method declared-synchronized onAuthorizeEvent(IIIZ)V
    .locals 4
    .parameter "realmIndex"
    .parameter "realmLength"
    .parameter "realmCharSet"
    .parameter "required"

    .prologue
    const-string v1, ", "

    .line 257
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothPrinterEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*************onAuthorizeEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p4, :cond_0

    const-string v3, "TRUE"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.broadcom.bt.bpp.action.ON_AUTH_PRTR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    .local v0, i:Landroid/content/Intent;
    const-string v1, "REALM_INDEX"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 265
    const-string v1, "REALM_LNGTH"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    const-string v1, "REALM_CHARSET"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 267
    const-string v1, "REQD"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 268
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    monitor-exit p0

    return-void

    .line 257
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    :try_start_1
    const-string v3, "FALSE"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized onBppDocCompleteEvent(I)V
    .locals 5
    .parameter "status"

    .prologue
    const-string v2, "BluetoothPrinterEventLoop"

    .line 451
    monitor-enter p0

    :try_start_0
    const-string v2, "BluetoothPrinterEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onBppDocCompleteEvent("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-static {}, Lcom/broadcom/bt/service/bpp/PrintManager;->getCurrentJob()Lcom/broadcom/bt/service/bpp/PrintJob;

    move-result-object v1

    .line 454
    .local v1, job:Lcom/broadcom/bt/service/bpp/PrintJob;
    if-nez v1, :cond_0

    .line 455
    const-string v2, "BluetoothPrinterEventLoop"

    const-string v3, "ERROR: onBppDocCompleteEvent(): Cannot find current job!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    :goto_0
    monitor-exit p0

    return-void

    .line 461
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.broadcom.bt.bpp.action.ON_DOC_CMPL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 462
    .local v0, i:Landroid/content/Intent;
    const-string v2, "JOBID"

    iget-wide v3, v1, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 463
    const-string v2, "STATUS"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 464
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 451
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #job:Lcom/broadcom/bt/service/bpp/PrintJob;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized onCloseEvent(I)V
    .locals 5
    .parameter "status"

    .prologue
    const-string v2, "BluetoothPrinterEventLoop"

    .line 214
    monitor-enter p0

    :try_start_0
    const-string v2, "BluetoothPrinterEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCloseEvent("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static {}, Lcom/broadcom/bt/service/bpp/PrintManager;->getCurrentJob()Lcom/broadcom/bt/service/bpp/PrintJob;

    move-result-object v1

    .line 217
    .local v1, job:Lcom/broadcom/bt/service/bpp/PrintJob;
    if-nez v1, :cond_0

    .line 218
    const-string v2, "BluetoothPrinterEventLoop"

    const-string v3, "ERROR: onCloseEvent(): Cannot find current job!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :goto_0
    monitor-exit p0

    return-void

    .line 223
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.broadcom.bt.bpp.action.ON_CLOSE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 224
    .local v0, i:Landroid/content/Intent;
    const-string v2, "JOBID"

    iget-wide v3, v1, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 225
    const-string v2, "STATUS"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 226
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 237
    invoke-static {}, Lcom/broadcom/bt/service/bpp/PrintManager;->clearCurrentJob()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 214
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #job:Lcom/broadcom/bt/service/bpp/PrintJob;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized onEnableEvent()V
    .locals 2

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothPrinterEventLoop"

    const-string/jumbo v1, "onEnableEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onGetCapabilitiesEvent(IIIILcom/broadcom/bt/service/bpp/BipCapabilities;Lcom/broadcom/bt/service/bpp/BppAttributes;)V
    .locals 4
    .parameter "services"
    .parameter "bppFeatures"
    .parameter "oppFeatures"
    .parameter "bipFeatures"
    .parameter "bc"
    .parameter "ba"

    .prologue
    const-string v1, "BluetoothPrinterEventLoop"

    .line 302
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothPrinterEventLoop"

    const-string/jumbo v2, "onGetCapabilitiesEvent()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-string v1, "BluetoothPrinterEventLoop"

    const-string v2, "*** Printer Capabilities ***"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const-string v1, "BluetoothPrinterEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Printer Services: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const-string v1, "BluetoothPrinterEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OPP Features: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const-string v1, "BluetoothPrinterEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BIP Features: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const-string v1, "BluetoothPrinterEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BPP Features: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.broadcom.bt.bpp.action.ON_GET_PRTR_CAP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 311
    .local v0, i:Landroid/content/Intent;
    const-string v1, "SVC"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 312
    const-string v1, "BPP_FEAT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 313
    const-string v1, "OPP_FEAT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 314
    const-string v1, "BIP_FEAT"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 315
    const-string v1, "BIPCAP"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 316
    const-string v1, "BPPATTR"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 317
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    monitor-exit p0

    return-void

    .line 302
    .end local v0           #i:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized onGetObjectEvent(Ljava/lang/String;)V
    .locals 6
    .parameter "name"

    .prologue
    const-string v3, "BluetoothPrinterEventLoop"

    .line 399
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothPrinterEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onGetObjectEvent("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-static {}, Lcom/broadcom/bt/service/bpp/PrintManager;->getCurrentJob()Lcom/broadcom/bt/service/bpp/PrintJob;

    move-result-object v2

    .line 403
    .local v2, job:Lcom/broadcom/bt/service/bpp/PrintJob;
    if-nez v2, :cond_0

    .line 404
    const-string v3, "BluetoothPrinterEventLoop"

    const-string v4, "ERROR: onGetObjectEvent(): Cannot find current job!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    :goto_0
    monitor-exit p0

    return-void

    .line 409
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/broadcom/bt/service/bpp/PrintJob;->refreshLastUpdateTime()V

    .line 411
    const/4 v0, 0x0

    .line 412
    .local v0, filePath:Ljava/lang/String;
    iget-object v3, v2, Lcom/broadcom/bt/service/bpp/PrintJob;->mObjectResolver:Lcom/broadcom/bt/service/bpp/BppObjectResolver;

    if-eqz v3, :cond_2

    .line 413
    iget-object v3, v2, Lcom/broadcom/bt/service/bpp/PrintJob;->mObjectResolver:Lcom/broadcom/bt/service/bpp/BppObjectResolver;

    invoke-virtual {v3, p1}, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->getMappedPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 416
    if-eqz v0, :cond_1

    .line 418
    const-string v3, "BluetoothPrinterEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onGetObjectEvent:BppObjectResolver provided file path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_1
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->mService:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    invoke-virtual {v3, v0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterRefObjectResponse(Ljava/lang/String;)V

    .line 428
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.broadcom.bt.bpp.action.ON_GET_OBJ"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 429
    .local v1, i:Landroid/content/Intent;
    const-string v3, "JOBID"

    iget-wide v4, v2, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 430
    const-string v3, "NAME"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 399
    .end local v0           #filePath:Ljava/lang/String;
    .end local v1           #i:Landroid/content/Intent;
    .end local v2           #job:Lcom/broadcom/bt/service/bpp/PrintJob;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method declared-synchronized onJobStatusEvent(Lcom/broadcom/bt/service/bpp/JobStatus;)V
    .locals 6
    .parameter "status"

    .prologue
    const-string v3, "BluetoothPrinterEventLoop"

    .line 486
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothPrinterEventLoop"

    const-string/jumbo v4, "onJobStatusEvent()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-static {}, Lcom/broadcom/bt/service/bpp/PrintManager;->getCurrentJob()Lcom/broadcom/bt/service/bpp/PrintJob;

    move-result-object v1

    .line 489
    .local v1, job:Lcom/broadcom/bt/service/bpp/PrintJob;
    if-nez v1, :cond_0

    .line 490
    const-string v3, "BluetoothPrinterEventLoop"

    const-string v4, "ERROR: onJobStatusEvent(): Cannot find current job!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    :goto_0
    monitor-exit p0

    return-void

    .line 494
    :cond_0
    :try_start_1
    iput-object p1, v1, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobStatus:Lcom/broadcom/bt/service/bpp/JobStatus;

    .line 495
    invoke-virtual {v1}, Lcom/broadcom/bt/service/bpp/PrintJob;->refreshLastUpdateTime()V

    .line 498
    iget v3, p1, Lcom/broadcom/bt/service/bpp/JobStatus;->JobState:I

    packed-switch v3, :pswitch_data_0

    .line 513
    const-string v3, "BluetoothPrinterEventLoop"

    const-string v4, "JobState not abort/cancelled/completed..Not cancelling status/job channel"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.broadcom.bt.bpp.action.ON_JOB_STATUS"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 520
    .local v0, i:Landroid/content/Intent;
    const-string v3, "JOBID"

    iget-wide v4, v1, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 521
    const-string v3, "STATUS"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 522
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 486
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #job:Lcom/broadcom/bt/service/bpp/PrintJob;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 503
    .restart local v1       #job:Lcom/broadcom/bt/service/bpp/PrintJob;
    :pswitch_0
    :try_start_2
    const-string v3, "BluetoothPrinterEventLoop"

    const-string v4, "JobState is abort/cancelled/completed..Cancelling status/job channel"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 506
    :try_start_3
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->mService:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    invoke-virtual {v3}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterCancelBppStatus()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 507
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 508
    .local v2, t:Ljava/lang/Throwable;
    :try_start_4
    const-string v3, "BluetoothPrinterEventLoop"

    const-string v4, "Unable to cancel job status reporting"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 498
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method declared-synchronized onOpenEvent(I)V
    .locals 5
    .parameter "serviceId"

    .prologue
    const-string v2, "BluetoothPrinterEventLoop"

    .line 132
    monitor-enter p0

    :try_start_0
    const-string v2, "BluetoothPrinterEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onOpenEvent("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-static {}, Lcom/broadcom/bt/service/bpp/PrintManager;->getCurrentJob()Lcom/broadcom/bt/service/bpp/PrintJob;

    move-result-object v1

    .line 135
    .local v1, job:Lcom/broadcom/bt/service/bpp/PrintJob;
    if-nez v1, :cond_0

    .line 136
    const-string v2, "BluetoothPrinterEventLoop"

    const-string v3, "ERROR: onOpenEvent(): Cannot find current job!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :goto_0
    monitor-exit p0

    return-void

    .line 141
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/broadcom/bt/service/bpp/PrintJob;->refreshLastUpdateTime()V

    .line 144
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.broadcom.bt.bpp.action.ON_OPEN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, i:Landroid/content/Intent;
    const-string v2, "JOBID"

    iget-wide v3, v1, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 146
    const-string v2, "SVCID"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 132
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #job:Lcom/broadcom/bt/service/bpp/PrintJob;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized onPartialImageEvent(Ljava/lang/String;)V
    .locals 5
    .parameter "name"

    .prologue
    const-string v2, "BluetoothPrinterEventLoop"

    .line 369
    monitor-enter p0

    :try_start_0
    const-string v2, "BluetoothPrinterEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPartialImageEvent("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-static {}, Lcom/broadcom/bt/service/bpp/PrintManager;->getCurrentJob()Lcom/broadcom/bt/service/bpp/PrintJob;

    move-result-object v1

    .line 372
    .local v1, job:Lcom/broadcom/bt/service/bpp/PrintJob;
    if-nez v1, :cond_0

    .line 373
    const-string v2, "BluetoothPrinterEventLoop"

    const-string v3, "ERROR: onPartialImageEvent() Cannot find current job!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    :goto_0
    monitor-exit p0

    return-void

    .line 378
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.broadcom.bt.bpp.action.ON_PART_IMG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 379
    .local v0, i:Landroid/content/Intent;
    const-string v2, "JOBID"

    iget-wide v3, v1, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 380
    const-string v2, "NAME"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 369
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #job:Lcom/broadcom/bt/service/bpp/PrintJob;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized onProgressEvent(II)V
    .locals 5
    .parameter "totalBytes"
    .parameter "processedBytes"

    .prologue
    const-string v2, "BluetoothPrinterEventLoop"

    .line 169
    monitor-enter p0

    :try_start_0
    const-string v2, "BluetoothPrinterEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onProgressEvent("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    if-le p2, p1, :cond_0

    .line 173
    move p2, p1

    .line 175
    :cond_0
    invoke-static {}, Lcom/broadcom/bt/service/bpp/PrintManager;->getCurrentJob()Lcom/broadcom/bt/service/bpp/PrintJob;

    move-result-object v1

    .line 176
    .local v1, job:Lcom/broadcom/bt/service/bpp/PrintJob;
    if-nez v1, :cond_1

    .line 177
    const-string v2, "BluetoothPrinterEventLoop"

    const-string v3, "ERROR: onProgressEvent(): Cannot find current job!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :goto_0
    monitor-exit p0

    return-void

    .line 181
    :cond_1
    :try_start_1
    iput p1, v1, Lcom/broadcom/bt/service/bpp/PrintJob;->mTotalBytes:I

    .line 182
    iput p2, v1, Lcom/broadcom/bt/service/bpp/PrintJob;->mProcessedBytes:I

    .line 183
    invoke-virtual {v1}, Lcom/broadcom/bt/service/bpp/PrintJob;->refreshLastUpdateTime()V

    .line 186
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.broadcom.bt.bpp.action.ON_PROGRESS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, i:Landroid/content/Intent;
    const-string v2, "JOBID"

    iget-wide v3, v1, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 188
    const-string v2, "TOTAL_BYTES"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 189
    const-string v2, "BYTES_TRANSFERRED"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 169
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #job:Lcom/broadcom/bt/service/bpp/PrintJob;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized onThumbnailEvent()V
    .locals 5

    .prologue
    const-string v2, "BluetoothPrinterEventLoop"

    .line 340
    monitor-enter p0

    :try_start_0
    const-string v2, "BluetoothPrinterEventLoop"

    const-string/jumbo v3, "onThumbnailEvent()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-static {}, Lcom/broadcom/bt/service/bpp/PrintManager;->getCurrentJob()Lcom/broadcom/bt/service/bpp/PrintJob;

    move-result-object v1

    .line 343
    .local v1, job:Lcom/broadcom/bt/service/bpp/PrintJob;
    if-nez v1, :cond_0

    .line 344
    const-string v2, "BluetoothPrinterEventLoop"

    const-string v3, "ERROR: onThumbnailEvent(): Cannot find current job!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    :goto_0
    monitor-exit p0

    return-void

    .line 349
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.broadcom.bt.bpp.action.ON_THUMBNAIL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 350
    .local v0, i:Landroid/content/Intent;
    const-string v2, "JOBID"

    iget-wide v3, v1, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 351
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 340
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #job:Lcom/broadcom/bt/service/bpp/PrintJob;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public registerClientCallback(Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;)Z
    .locals 2
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 49
    const-string v0, "BluetoothPrinterEventLoop"

    const-string v1, "Register Printer Callbacks"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->mPrinterCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 5

    .prologue
    const-string v4, "ENTER BluetoothPrinterEventLoop in Native code"

    const-string v3, "BluetoothPrinterEventLoop"

    .line 93
    const-string v0, "BluetoothPrinterEventLoop"

    const-string v0, "ENTER BluetoothPrinterEventLoop in Native code"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_0
    invoke-static {}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    const-string v0, "BluetoothPrinterEventLoop"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothPrinterEventLoop: Entering JNI. thread:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-direct {p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->Native_BluetoothPrinterEventLoop()V

    .line 102
    const-string v0, "BluetoothPrinterEventLoop"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothPrinterEventLoop: Exiting JNI thread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    :cond_0
    const-string v0, "BluetoothPrinterEventLoop"

    const-string v0, "ENTER BluetoothPrinterEventLoop in Native code"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method public unregisterClientCallback(Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;)Z
    .locals 2
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 66
    const-string v0, "BluetoothPrinterEventLoop"

    const-string v1, "Unregister Printer Callbacks"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->mPrinterCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    return v0
.end method
