.class public Landroid/os/storage/StorageManager;
.super Ljava/lang/Object;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/StorageManager$1;,
        Landroid/os/storage/StorageManager$ListenerDelegate;,
        Landroid/os/storage/StorageManager$UsbStorageStateChangedStorageEvent;,
        Landroid/os/storage/StorageManager$StorageStateChangedStorageEvent;,
        Landroid/os/storage/StorageManager$UmsConnectionChangedStorageEvent;,
        Landroid/os/storage/StorageManager$StorageEvent;,
        Landroid/os/storage/StorageManager$ObbStateChangedStorageEvent;,
        Landroid/os/storage/StorageManager$ObbListenerDelegate;,
        Landroid/os/storage/StorageManager$ObbActionListener;,
        Landroid/os/storage/StorageManager$UsbStorageBinderListener;,
        Landroid/os/storage/StorageManager$MountServiceBinderListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StorageManager"


# instance fields
.field private mBinderListener:Landroid/os/storage/StorageManager$MountServiceBinderListener;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/storage/StorageManager$ListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mMountService:Landroid/os/storage/IMountService;

.field private final mNextNonce:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

.field private mStorageBinderListener:Landroid/os/storage/StorageManager$UsbStorageBinderListener;

.field mTgtLooper:Landroid/os/Looper;

.field private mUsbStorageService:Landroid/os/storage/IUsbStorageService;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 4
    .parameter "tgtLooper"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-string v3, "StorageManager"

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mNextNonce:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 111
    new-instance v0, Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-direct {v0, p0, v2}, Landroid/os/storage/StorageManager$ObbActionListener;-><init>(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageManager$1;)V

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    .line 333
    const-string/jumbo v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    .line 334
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    if-nez v0, :cond_0

    .line 335
    const-string v0, "StorageManager"

    const-string v0, "Unable to connect to mount service! - is it running yet?"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :goto_0
    return-void

    .line 339
    :cond_0
    const-string/jumbo v0, "usbstorage"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IUsbStorageService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IUsbStorageService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mUsbStorageService:Landroid/os/storage/IUsbStorageService;

    .line 340
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mUsbStorageService:Landroid/os/storage/IUsbStorageService;

    if-nez v0, :cond_1

    .line 341
    const-string v0, "StorageManager"

    const-string v0, "Unable to connect to usb storage service! - is it running yet?"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 345
    :cond_1
    iput-object p1, p0, Landroid/os/storage/StorageManager;->mTgtLooper:Landroid/os/Looper;

    .line 346
    new-instance v0, Landroid/os/storage/StorageManager$MountServiceBinderListener;

    invoke-direct {v0, p0, v2}, Landroid/os/storage/StorageManager$MountServiceBinderListener;-><init>(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageManager$1;)V

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mBinderListener:Landroid/os/storage/StorageManager$MountServiceBinderListener;

    .line 347
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    iget-object v1, p0, Landroid/os/storage/StorageManager;->mBinderListener:Landroid/os/storage/StorageManager$MountServiceBinderListener;

    invoke-interface {v0, v1}, Landroid/os/storage/IMountService;->registerListener(Landroid/os/storage/IMountServiceListener;)V

    .line 349
    new-instance v0, Landroid/os/storage/StorageManager$UsbStorageBinderListener;

    invoke-direct {v0, p0, v2}, Landroid/os/storage/StorageManager$UsbStorageBinderListener;-><init>(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageManager$1;)V

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mStorageBinderListener:Landroid/os/storage/StorageManager$UsbStorageBinderListener;

    .line 350
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mUsbStorageService:Landroid/os/storage/IUsbStorageService;

    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageBinderListener:Landroid/os/storage/StorageManager$UsbStorageBinderListener;

    invoke-interface {v0, v1}, Landroid/os/storage/IUsbStorageService;->registerListener(Landroid/os/storage/IUsbStorageServiceListener;)V

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/os/storage/StorageManager;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Landroid/os/storage/StorageManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/os/storage/StorageManager;->getNextNonce()I

    move-result v0

    return v0
.end method

.method private getNextNonce()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mNextNonce:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method


# virtual methods
.method public disableUsbMassStorage()V
    .locals 3

    .prologue
    .line 416
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->setUsbMassStorageEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    :goto_0
    return-void

    .line 417
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 418
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "StorageManager"

    const-string v2, "Failed to disable UMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enableUsbMassStorage()V
    .locals 3

    .prologue
    .line 403
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->setUsbMassStorageEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :goto_0
    return-void

    .line 404
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 405
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "StorageManager"

    const-string v2, "Failed to enable UMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getDeviceDriverPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "path"

    .prologue
    .line 609
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->getDeviceDriverPath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 613
    :goto_0
    return-object v1

    .line 610
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 611
    .local v0, rex:Landroid/os/RemoteException;
    const-string v1, "StorageManager"

    const-string v2, "Failed to get device root path"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 613
    new-instance v1, Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "filename"

    .prologue
    .line 576
    if-nez p1, :cond_0

    .line 577
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "filename cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 581
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 586
    :goto_0
    return-object v1

    .line 582
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 583
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "StorageManager"

    const-string v2, "Failed to find mounted path for OBB"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 586
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStorageCidNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "path"

    .prologue
    .line 600
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->getStorageCidNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 604
    :goto_0
    return-object v1

    .line 601
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 602
    .local v0, rex:Landroid/os/RemoteException;
    const-string v1, "StorageManager"

    const-string v2, "Failed to get cid number"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 604
    new-instance v1, Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getStorageSerialNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "path"

    .prologue
    .line 591
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->getStorageSerialNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 595
    :goto_0
    return-object v1

    .line 592
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 593
    .local v0, rex:Landroid/os/RemoteException;
    const-string v1, "StorageManager"

    const-string v2, "Failed to get serial number "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 595
    new-instance v1, Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isObbMounted(Ljava/lang/String;)Z
    .locals 3
    .parameter "filename"

    .prologue
    .line 553
    if-nez p1, :cond_0

    .line 554
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "filename cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 558
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->isObbMounted(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 563
    :goto_0
    return v1

    .line 559
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 560
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "StorageManager"

    const-string v2, "Failed to check if OBB is mounted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 563
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUsbMassStorageConnected()Z
    .locals 3

    .prologue
    .line 443
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1}, Landroid/os/storage/IMountService;->isUsbMassStorageConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 447
    :goto_0
    return v1

    .line 444
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 445
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "StorageManager"

    const-string v2, "Failed to get UMS connection state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 447
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUsbMassStorageEnabled()Z
    .locals 3

    .prologue
    .line 458
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1}, Landroid/os/storage/IMountService;->isUsbMassStorageEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 462
    :goto_0
    return v1

    .line 459
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 460
    .local v0, rex:Landroid/os/RemoteException;
    const-string v1, "StorageManager"

    const-string v2, "Failed to get UMS enable state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 462
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/OnObbStateChangeListener;)Z
    .locals 4
    .parameter "filename"
    .parameter "key"
    .parameter "listener"

    .prologue
    .line 487
    if-nez p1, :cond_0

    .line 488
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "filename cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 491
    :cond_0
    if-nez p3, :cond_1

    .line 492
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "listener cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 496
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-virtual {v2, p3}, Landroid/os/storage/StorageManager$ObbActionListener;->addListener(Landroid/os/storage/OnObbStateChangeListener;)I

    move-result v1

    .line 497
    .local v1, nonce:I
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    iget-object v3, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-interface {v2, p1, p2, v3, v1}, Landroid/os/storage/IMountService;->mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    const/4 v2, 0x1

    .line 503
    .end local v1           #nonce:I
    :goto_0
    return v2

    .line 499
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 500
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "StorageManager"

    const-string v3, "Failed to mount OBB"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 503
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public registerListener(Landroid/os/storage/StorageEventListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 363
    if-nez p1, :cond_0

    .line 370
    :goto_0
    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 368
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    new-instance v2, Landroid/os/storage/StorageManager$ListenerDelegate;

    invoke-direct {v2, p0, p1}, Landroid/os/storage/StorageManager$ListenerDelegate;-><init>(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageEventListener;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setShared(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 429
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->enableShared(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :goto_0
    return-void

    .line 430
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 431
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "StorageManager"

    const-string v2, "Failed to set Shared "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unmountObb(Ljava/lang/String;ZLandroid/os/storage/OnObbStateChangeListener;)Z
    .locals 4
    .parameter "filename"
    .parameter "force"
    .parameter "listener"

    .prologue
    .line 527
    if-nez p1, :cond_0

    .line 528
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "filename cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 531
    :cond_0
    if-nez p3, :cond_1

    .line 532
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "listener cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 536
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-virtual {v2, p3}, Landroid/os/storage/StorageManager$ObbActionListener;->addListener(Landroid/os/storage/OnObbStateChangeListener;)I

    move-result v1

    .line 537
    .local v1, nonce:I
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    iget-object v3, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-interface {v2, p1, p2, v3, v1}, Landroid/os/storage/IMountService;->unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    const/4 v2, 0x1

    .line 543
    .end local v1           #nonce:I
    :goto_0
    return v2

    .line 539
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 540
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "StorageManager"

    const-string v3, "Failed to mount OBB"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 543
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public unregisterListener(Landroid/os/storage/StorageEventListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 380
    if-nez p1, :cond_0

    .line 394
    :goto_0
    return-void

    .line 384
    :cond_0
    iget-object v3, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    monitor-enter v3

    .line 385
    :try_start_0
    iget-object v4, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 386
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 387
    iget-object v4, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager$ListenerDelegate;

    .line 388
    .local v1, l:Landroid/os/storage/StorageManager$ListenerDelegate;
    invoke-virtual {v1}, Landroid/os/storage/StorageManager$ListenerDelegate;->getListener()Landroid/os/storage/StorageEventListener;

    move-result-object v4

    if-ne v4, p1, :cond_2

    .line 389
    iget-object v4, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 393
    .end local v1           #l:Landroid/os/storage/StorageManager$ListenerDelegate;
    :cond_1
    monitor-exit v3

    goto :goto_0

    .end local v0           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 386
    .restart local v0       #i:I
    .restart local v1       #l:Landroid/os/storage/StorageManager$ListenerDelegate;
    .restart local v2       #size:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
