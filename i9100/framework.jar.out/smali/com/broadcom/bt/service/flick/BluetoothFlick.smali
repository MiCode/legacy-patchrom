.class public final Lcom/broadcom/bt/service/flick/BluetoothFlick;
.super Lcom/broadcom/bt/service/framework/BaseProxy;
.source "BluetoothFlick.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/flick/BluetoothFlick$1;,
        Lcom/broadcom/bt/service/flick/BluetoothFlick$FlickBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_CONNECTED:Ljava/lang/String; = null

.field public static final ACTION_FINISHED:Ljava/lang/String; = null

.field static final ACTION_PREFIX:Ljava/lang/String; = "com.broadcom.bt.app.flick.action."

#the value of this static final field might be set in the static constructor
.field static final ACTION_PREFIX_LENGTH:I = 0x0

.field public static final ACTION_SEARCH_STARTED:Ljava/lang/String; = null

.field public static final ACTION_TXRX_STATUS:Ljava/lang/String; = null

.field public static final BT_FLICK_OPC_FAIL:B = 0x1t

.field public static final BT_FLICK_OPC_NOT_FOUND:B = 0x2t

.field public static final BT_FLICK_OPC_NO_PERMISSION:B = 0x3t

.field public static final BT_FLICK_OPC_OK:B = 0x0t

.field public static final BT_FLICK_OPC_ON_AMP:B = 0x6t

.field public static final BT_FLICK_OPC_ON_BT:B = 0x5t

.field public static final BT_FLICK_OPC_SRV_UNAVAIL:B = 0x4t

.field public static final BT_FLICK_RX_COMPLETE:B = 0x3t

.field public static final BT_FLICK_RX_MOVE_CH:B = 0x5t

.field public static final BT_FLICK_RX_PROGRESS:B = 0x1t

.field public static final BT_FLICK_TX_COMPLETE:B = 0x2t

.field public static final BT_FLICK_TX_MOVE_CH:B = 0x4t

.field public static final BT_FLICK_TX_PROGRESS:B = 0x0t

.field public static final EXTRA_EVT_CODE:Ljava/lang/String; = "EVT_CODE"

.field public static final EXTRA_OP_STATUS:Ljava/lang/String; = "OP_STATUS"

.field public static final SERVICE_NAME:Ljava/lang/String; = "bluetooth_flick"

.field private static final TAG:Ljava/lang/String; = "BluetoothFlick"

.field private static final V:Z


# instance fields
.field private mEventHandler:Lcom/broadcom/bt/service/flick/IBluetoothFlickEventHandler;

.field private mService:Lcom/broadcom/bt/service/flick/IBluetoothFlickService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 143
    const-string v0, "com.broadcom.bt.app.flick.action."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_PREFIX_LENGTH:I

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_PREFIX_LENGTH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ON_TXRX_STATUS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_TXRX_STATUS:Ljava/lang/String;

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_PREFIX_LENGTH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ON_CONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_CONNECTED:Ljava/lang/String;

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_PREFIX_LENGTH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ON_SEARCH_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_SEARCH_STARTED:Ljava/lang/String;

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_PREFIX_LENGTH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ON_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_FINISHED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 259
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mEventHandler:Lcom/broadcom/bt/service/flick/IBluetoothFlickEventHandler;

    .line 286
    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/flick/BluetoothFlick;)Lcom/broadcom/bt/service/flick/IBluetoothFlickEventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mEventHandler:Lcom/broadcom/bt/service/flick/IBluetoothFlickEventHandler;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 122
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/flick/BluetoothFlick;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 122
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/flick/BluetoothFlick;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 122
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/flick/BluetoothFlick;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 122
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/flick/BluetoothFlick;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static createFilter(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 1
    .parameter "filter"

    .prologue
    .line 509
    if-nez p0, :cond_0

    .line 510
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 512
    .restart local p0
    :cond_0
    sget-object v0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_SEARCH_STARTED:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 513
    sget-object v0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_CONNECTED:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 514
    sget-object v0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_TXRX_STATUS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 515
    sget-object v0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_FINISHED:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 516
    return-object p0
.end method

.method public static getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z
    .locals 3
    .parameter "ctx"
    .parameter "cb"

    .prologue
    .line 273
    const-string v1, "bluetooth_flick"

    invoke-static {p0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 274
    const-string v1, "BluetoothFlick"

    const-string v2, "Unable to get BluetoothFlick proxy: service is not enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v1, 0x0

    .line 280
    :goto_0
    return v1

    .line 279
    :cond_0
    new-instance v0, Lcom/broadcom/bt/service/flick/BluetoothFlick;

    invoke-direct {v0}, Lcom/broadcom/bt/service/flick/BluetoothFlick;-><init>()V

    .line 280
    .local v0, p:Lcom/broadcom/bt/service/flick/BluetoothFlick;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v2, "com.broadcom.bt.app.system.FlickService"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/broadcom/bt/service/flick/BluetoothFlick;->create(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public disableFlick()V
    .locals 3

    .prologue
    .line 566
    iget-object v1, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mService:Lcom/broadcom/bt/service/flick/IBluetoothFlickService;

    if-eqz v1, :cond_0

    .line 568
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mService:Lcom/broadcom/bt/service/flick/IBluetoothFlickService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/flick/IBluetoothFlickService;->disableFlick()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 569
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 570
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothFlick"

    const-string v2, "disableFlick"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enableFlick()V
    .locals 3

    .prologue
    .line 551
    iget-object v1, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mService:Lcom/broadcom/bt/service/flick/IBluetoothFlickService;

    if-eqz v1, :cond_0

    .line 553
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mService:Lcom/broadcom/bt/service/flick/IBluetoothFlickService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/flick/IBluetoothFlickService;->enableFlick()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 554
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 555
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothFlick"

    const-string v2, "enableFlick"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 330
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finalize()V

    .line 331
    return-void
.end method

.method public declared-synchronized finish()V
    .locals 2

    .prologue
    .line 316
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mEventHandler:Lcom/broadcom/bt/service/flick/IBluetoothFlickEventHandler;

    if-eqz v0, :cond_0

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mEventHandler:Lcom/broadcom/bt/service/flick/IBluetoothFlickEventHandler;

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 324
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mService:Lcom/broadcom/bt/service/flick/IBluetoothFlickService;

    .line 325
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    monitor-exit p0

    return-void

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected init(Landroid/os/IBinder;)Z
    .locals 3
    .parameter "service"

    .prologue
    .line 295
    :try_start_0
    invoke-static {p1}, Lcom/broadcom/bt/service/flick/IBluetoothFlickService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/flick/IBluetoothFlickService;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mService:Lcom/broadcom/bt/service/flick/IBluetoothFlickService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    const/4 v1, 0x1

    .line 299
    :goto_0
    return v1

    .line 297
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 298
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothFlick"

    const-string v2, "Unable to initialize proxy with service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 299
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/flick/IBluetoothFlickEventHandler;)V
    .locals 3
    .parameter "handler"

    .prologue
    .line 350
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xc8

    :try_start_0
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/broadcom/bt/service/flick/BluetoothFlick;->registerEventHandler(Lcom/broadcom/bt/service/flick/IBluetoothFlickEventHandler;Landroid/content/IntentFilter;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    monitor-exit p0

    return-void

    .line 350
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/flick/IBluetoothFlickEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    .locals 4
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "threadHandler"
    .parameter "receiverPriority"

    .prologue
    .line 483
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mEventHandler:Lcom/broadcom/bt/service/flick/IBluetoothFlickEventHandler;

    .line 487
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 489
    if-nez p2, :cond_0

    .line 490
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v1}, Lcom/broadcom/bt/service/flick/BluetoothFlick;->createFilter(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object p2

    .line 492
    :cond_0
    invoke-virtual {p2, p4}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 493
    new-instance v1, Lcom/broadcom/bt/service/flick/BluetoothFlick$FlickBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/broadcom/bt/service/flick/BluetoothFlick$FlickBroadcastReceiver;-><init>(Lcom/broadcom/bt/service/flick/BluetoothFlick;Lcom/broadcom/bt/service/flick/BluetoothFlick$1;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 494
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v2, p2, v3, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 500
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 496
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 497
    .local v0, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "BluetoothFlick"

    const-string v2, "Error registering broadcast receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 483
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/flick/IBluetoothFlickEventHandler;Landroid/content/IntentFilter;ZI)V
    .locals 1
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "createCallbackThread"
    .parameter "receiverPriority"

    .prologue
    .line 415
    monitor-enter p0

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/flick/BluetoothFlick;->initEventCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/broadcom/bt/service/flick/BluetoothFlick;->registerEventHandler(Lcom/broadcom/bt/service/flick/IBluetoothFlickEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    monitor-exit p0

    return-void

    .line 415
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requiresAccessProcessing()Z
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    return v0
.end method

.method public sendFlick(Ljava/lang/String;)V
    .locals 3
    .parameter "fpath"

    .prologue
    .line 581
    iget-object v1, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mService:Lcom/broadcom/bt/service/flick/IBluetoothFlickService;

    if-eqz v1, :cond_0

    .line 583
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mService:Lcom/broadcom/bt/service/flick/IBluetoothFlickService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/flick/IBluetoothFlickService;->sendFlick(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 584
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 585
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothFlick"

    const-string/jumbo v2, "sendFlick"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized unregisterEventHandler()V
    .locals 2

    .prologue
    .line 537
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mEventHandler:Lcom/broadcom/bt/service/flick/IBluetoothFlickEventHandler;

    .line 539
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 541
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    :cond_0
    monitor-exit p0

    return-void

    .line 537
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
