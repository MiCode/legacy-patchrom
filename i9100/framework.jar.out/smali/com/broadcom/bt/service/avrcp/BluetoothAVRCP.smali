.class public Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;
.super Lcom/broadcom/bt/service/framework/BaseProxy;
.source "BluetoothAVRCP.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP$1;,
        Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP$AVRCPBroadcastReceiver;,
        Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP$AVRCPCallback;
    }
.end annotation


# static fields
.field public static final ACTION_ON_AVRCP_CONNECTED:Ljava/lang/String; = "com.broadcom.bt.app.avrcp.action.ON_AVRCP_CONNECTED"

.field public static final ACTION_ON_AVRCP_DISCONNECTED:Ljava/lang/String; = "com.broadcom.bt.app.avrcp.action.ON_AVRCP_DISCONNECTED"

.field static final ACTION_PREFIX:Ljava/lang/String; = "com.broadcom.bt.app.avrcp.action."

#the value of this static final field might be set in the static constructor
.field static final ACTION_PREFIX_LENGTH:I = 0x0

.field public static final AVRCPS_DISCONNECT_TYPE_GRACEFUL:I = 0x0

.field public static final AVRCPS_DISCONNECT_TYPE_IMMEDIATE:I = 0x1

.field public static final EXTRA_ADDRESS:Ljava/lang/String; = "address"

.field public static final SERVICE_NAME:Ljava/lang/String; = "bluetooth_avrcp"

.field private static final TAG:Ljava/lang/String; = "BluetoothAVRCP"


# instance fields
.field private mCallback:Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPCallback;

.field private mEventHandler:Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPEventHandler;

.field private mService:Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-string v0, "com.broadcom.bt.app.avrcp.action."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;->ACTION_PREFIX_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;->mEventHandler:Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPEventHandler;

    .line 115
    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;)Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPEventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;->mEventHandler:Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPEventHandler;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static createFilter(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 1
    .parameter "filter"

    .prologue
    .line 237
    if-nez p0, :cond_0

    .line 238
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 240
    .restart local p0
    :cond_0
    const-string v0, "com.broadcom.bt.app.avrcp.action.ON_AVRCP_CONNECTED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    const-string v0, "com.broadcom.bt.app.avrcp.action.ON_AVRCP_DISCONNECTED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    return-object p0
.end method

.method public static getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z
    .locals 3
    .parameter "ctx"
    .parameter "cb"

    .prologue
    .line 104
    const-string v1, "bluetooth_avrcp"

    invoke-static {p0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    const-string v1, "BluetoothAVRCP"

    const-string v2, "Unable to get proxy: service is not enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v1, 0x0

    .line 109
    :goto_0
    return v1

    .line 108
    :cond_0
    new-instance v0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;

    invoke-direct {v0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;-><init>()V

    .line 109
    .local v0, p:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v2, "com.broadcom.bt.app.system.BluetoothAVRCPService"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;->create(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public disconnect(B)V
    .locals 2
    .parameter "type"

    .prologue
    .line 268
    const-string v0, "BluetoothAVRCP"

    const-string v1, "disconnect..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 134
    const-string v0, "BluetoothAVRCP"

    const-string v1, "finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finalize()V

    .line 136
    return-void
.end method

.method public declared-synchronized finish()V
    .locals 2

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;->mEventHandler:Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPEventHandler;

    if-eqz v0, :cond_0

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;->mEventHandler:Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPEventHandler;

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 163
    :cond_1
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    monitor-exit p0

    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected init(Landroid/os/IBinder;)Z
    .locals 3
    .parameter "service"

    .prologue
    .line 124
    :try_start_0
    invoke-static {p1}, Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPService;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;->mService:Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    const/4 v1, 0x1

    .line 129
    :goto_0
    return v1

    .line 127
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 128
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothAVRCP"

    const-string v2, "Unable to initialize proxy with service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPEventHandler;)V
    .locals 3
    .parameter "handler"

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothAVRCP"

    const-string/jumbo v1, "registerEventHandler()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xc8

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;->registerEventHandler(Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPEventHandler;Landroid/content/IntentFilter;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit p0

    return-void

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    .locals 4
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "threadHandler"
    .parameter "receiverPriority"

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;->mEventHandler:Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPEventHandler;

    .line 205
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 207
    if-nez p2, :cond_0

    .line 208
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v1}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;->createFilter(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object p2

    .line 210
    :cond_0
    invoke-virtual {p2, p4}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 211
    new-instance v1, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP$AVRCPBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP$AVRCPBroadcastReceiver;-><init>(Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP$1;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 212
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v2, p2, v3, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 228
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 214
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 215
    .local v0, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "BluetoothAVRCP"

    const-string v2, "Error registering broadcast receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 200
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPEventHandler;Landroid/content/IntentFilter;ZI)V
    .locals 1
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "createCallbackThread"
    .parameter "receiverPriority"

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;->initEventCallbackHandler()Landroid/os/Handler;

    .line 189
    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;->initEventCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;->registerEventHandler(Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    monitor-exit p0

    return-void

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterEventHandler()V
    .locals 2

    .prologue
    .line 246
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothAVRCP"

    const-string/jumbo v1, "unregisterEventHandler()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;->mEventHandler:Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPEventHandler;

    .line 251
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    :cond_0
    monitor-exit p0

    return-void

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
