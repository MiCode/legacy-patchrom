.class public final Lcom/broadcom/bt/service/ftp/BluetoothFTP;
.super Lcom/broadcom/bt/service/framework/BaseProxy;
.source "BluetoothFTP.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/ftp/BluetoothFTP$1;,
        Lcom/broadcom/bt/service/ftp/BluetoothFTP$FTPBroadcastReceiver;,
        Lcom/broadcom/bt/service/ftp/BluetoothFTP$FTPCallback;
    }
.end annotation


# static fields
.field public static final ACTION_ON_FTS_ACCESS_REQUEST:Ljava/lang/String; = "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

.field public static final ACTION_ON_FTS_CLOSED:Ljava/lang/String; = "com.broadcom.bt.app.ftp.action.ON_FTPS_CLOSED"

.field public static final ACTION_ON_FTS_DEL_COMPLETE:Ljava/lang/String; = "com.broadcom.bt.app.ftp.action.ON_FTS_DEL_COMPLETE"

.field public static final ACTION_ON_FTS_GET_COMPLETE:Ljava/lang/String; = "com.broadcom.bt.app.ftp.action.ON_FTS_GET_COMPLETE"

.field public static final ACTION_ON_FTS_OPENED:Ljava/lang/String; = "com.broadcom.bt.app.ftp.action.ON_FTS_OPENED"

.field public static final ACTION_ON_FTS_PUT_COMPLETE:Ljava/lang/String; = "com.broadcom.bt.app.ftp.action.ON_FTPS_PUT_COMPLETE"

.field public static final ACTION_ON_FTS_XFR_PROGRESS:Ljava/lang/String; = "com.broadcom.bt.app.ftp.action.ON_FTS_XFR_PROGRESS"

.field static final ACTION_PREFIX:Ljava/lang/String; = "com.broadcom.bt.app.ftp.action."

#the value of this static final field might be set in the static constructor
.field static final ACTION_PREFIX_LENGTH:I = 0x0

.field public static final BT_SERVICE_AUTHEN_ACTION:Ljava/lang/String; = "com.broadcom.bt.app.ftp.action.BT_FTPS_AUTHEN"

.field private static final D:Z = true

.field public static final EXTRA_BYTES_TRANSFERRED:Ljava/lang/String; = "BYTES_TRANSFERRED"

.field public static final EXTRA_FILEPATH:Ljava/lang/String; = "FILEPATH"

.field public static final EXTRA_OPERATION:Ljava/lang/String; = "OPERATION"

.field public static final EXTRA_RMT_DEV_ADDR:Ljava/lang/String; = "RMT_DEV_ADDR"

.field public static final EXTRA_RMT_DEV_NAME:Ljava/lang/String; = "RMT_DEV_NAME"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "STATUS"

.field public static final EXTRA_TOTAL_BYTES:Ljava/lang/String; = "TOTAL_BYTES"

.field public static final FTPS_OPER_CHG_DIR:B = 0x5t

.field public static final FTPS_OPER_DEL_DIR:B = 0x4t

.field public static final FTPS_OPER_DEL_FILE:B = 0x3t

.field public static final FTPS_OPER_GET:B = 0x2t

.field public static final FTPS_OPER_MK_DIR:B = 0x6t

.field public static final FTPS_OPER_PUT:B = 0x1t

.field public static final FTPS_STATUS_FAIL:I = 0x1

.field public static final FTPS_STATUS_OK:I = 0x0

.field public static final SERVICE_NAME:Ljava/lang/String; = "bluetooth_ftp"

.field private static final TAG:Ljava/lang/String; = "BluetoothFTP"

.field private static final V:Z = true


# instance fields
.field private mCallback:Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback;

.field private mEventHandler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;

.field private mService:Lcom/broadcom/bt/service/ftp/IBluetoothFTP;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    const-string v0, "com.broadcom.bt.app.ftp.action."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->ACTION_PREFIX_LENGTH:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 485
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 486
    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/ftp/BluetoothFTP;)Lcom/broadcom/bt/service/ftp/IFTPEventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->mEventHandler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 122
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

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
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

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
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

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
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 122
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 122
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 122
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static createFilter(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 1
    .parameter "filter"

    .prologue
    .line 708
    if-nez p0, :cond_0

    .line 709
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 711
    .restart local p0
    :cond_0
    const-string v0, "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 712
    const-string v0, "com.broadcom.bt.app.ftp.action.ON_FTS_OPENED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 713
    const-string v0, "com.broadcom.bt.app.ftp.action.ON_FTPS_CLOSED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 714
    const-string v0, "com.broadcom.bt.app.ftp.action.ON_FTS_XFR_PROGRESS"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 715
    const-string v0, "com.broadcom.bt.app.ftp.action.ON_FTS_DEL_COMPLETE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 716
    const-string v0, "com.broadcom.bt.app.ftp.action.ON_FTS_GET_COMPLETE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 717
    const-string v0, "com.broadcom.bt.app.ftp.action.ON_FTPS_PUT_COMPLETE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 718
    return-object p0
.end method

.method public static createFilter_LegacyBroadcasts(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 1
    .parameter "filter"

    .prologue
    .line 731
    if-nez p0, :cond_0

    .line 732
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 734
    .restart local p0
    :cond_0
    const-string v0, "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 735
    const-string v0, "broadcom.android.bluetooth.intent.action.BT_SERVICE_CONNECTION"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 736
    return-object p0
.end method

.method public static getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z
    .locals 3
    .parameter "ctx"
    .parameter "cb"

    .prologue
    .line 469
    const-string v1, "bluetooth_ftp"

    invoke-static {p0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 470
    const-string v1, "BluetoothFTP"

    const-string v2, "Unable to get proxy: service is not enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const/4 v1, 0x0

    .line 474
    :goto_0
    return v1

    .line 473
    :cond_0
    new-instance v0, Lcom/broadcom/bt/service/ftp/BluetoothFTP;

    invoke-direct {v0}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;-><init>()V

    .line 474
    .local v0, p:Lcom/broadcom/bt/service/ftp/BluetoothFTP;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v2, "com.broadcom.bt.app.system.FtpService"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->create(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 862
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finalize()V

    .line 863
    return-void
.end method

.method public declared-synchronized finish()V
    .locals 2

    .prologue
    .line 779
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->mEventHandler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;

    if-eqz v0, :cond_0

    .line 780
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->mEventHandler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 785
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 786
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 798
    :cond_1
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 799
    monitor-exit p0

    return-void

    .line 779
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public ftpServerAccessRsp(BZLjava/lang/String;)V
    .locals 4
    .parameter "opcode"
    .parameter "access"
    .parameter "filepath"

    .prologue
    .line 831
    :try_start_0
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ftpServerAccessRsp("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    iget-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->mService:Lcom/broadcom/bt/service/ftp/IBluetoothFTP;

    invoke-interface {v1, p1, p2, p3}, Lcom/broadcom/bt/service/ftp/IBluetoothFTP;->ftpServerAccessRsp(BZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    :goto_0
    return-void

    .line 835
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 836
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothFTP"

    const-string v2, "Error calling ftpServerAccessRsp"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public ftpServerAuthenRsp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "password"
    .parameter "userId"

    .prologue
    .line 808
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->mService:Lcom/broadcom/bt/service/ftp/IBluetoothFTP;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/ftp/IBluetoothFTP;->ftpServerAuthenRsp(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    :goto_0
    return-void

    .line 809
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 810
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothFTP"

    const-string v2, "Error calling ftpServerAuthenRsp"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected init(Landroid/os/IBinder;)Z
    .locals 3
    .parameter "service"

    .prologue
    .line 495
    :try_start_0
    invoke-static {p1}, Lcom/broadcom/bt/service/ftp/IBluetoothFTP$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/ftp/IBluetoothFTP;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->mService:Lcom/broadcom/bt/service/ftp/IBluetoothFTP;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    const/4 v1, 0x1

    .line 499
    :goto_0
    return v1

    .line 497
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 498
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothFTP"

    const-string v2, "Unable to initialize proxy with service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 499
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/ftp/IFTPEventHandler;)V
    .locals 3
    .parameter "handler"

    .prologue
    .line 519
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xc8

    :try_start_0
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->registerEventHandler(Lcom/broadcom/bt/service/ftp/IFTPEventHandler;Landroid/content/IntentFilter;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    monitor-exit p0

    return-void

    .line 519
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/ftp/IFTPEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    .locals 4
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "threadHandler"
    .parameter "receiverPriority"

    .prologue
    .line 657
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->mEventHandler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;

    .line 662
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 664
    if-nez p2, :cond_0

    .line 665
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v1}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->createFilter(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object p2

    .line 667
    :cond_0
    invoke-virtual {p2, p4}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 668
    new-instance v1, Lcom/broadcom/bt/service/ftp/BluetoothFTP$FTPBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/broadcom/bt/service/ftp/BluetoothFTP$FTPBroadcastReceiver;-><init>(Lcom/broadcom/bt/service/ftp/BluetoothFTP;Lcom/broadcom/bt/service/ftp/BluetoothFTP$1;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 669
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v2, p2, v3, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 699
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 671
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 672
    .local v0, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "BluetoothFTP"

    const-string v2, "Error registering broadcast receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 657
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/ftp/IFTPEventHandler;Landroid/content/IntentFilter;ZI)V
    .locals 1
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "createCallbackThread"
    .parameter "receiverPriority"

    .prologue
    .line 586
    monitor-enter p0

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->initEventCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->registerEventHandler(Lcom/broadcom/bt/service/ftp/IFTPEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    monitor-exit p0

    return-void

    .line 586
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
    .line 846
    const/4 v0, 0x1

    return v0
.end method

.method public setAccess(IZLjava/lang/Object;)V
    .locals 1
    .parameter "opCode"
    .parameter "allow"
    .parameter "name"

    .prologue
    .line 855
    int-to-byte v0, p1

    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {p0, v0, p2, p3}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->ftpServerAccessRsp(BZLjava/lang/String;)V

    .line 856
    return-void
.end method

.method public declared-synchronized unregisterEventHandler()V
    .locals 2

    .prologue
    .line 754
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothFTP"

    const-string/jumbo v1, "unregisterEventHandler()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->mEventHandler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;

    .line 760
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 762
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    :cond_0
    monitor-exit p0

    return-void

    .line 754
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
