.class Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;
.super Landroid/os/Handler;
.source "WifiStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DirectDhcpHandler"
.end annotation


# instance fields
.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mCancelCallback:Z

.field private mDirectTarget:Landroid/os/Handler;

.field final synthetic this$0:Landroid/net/wifi/WifiStateTracker;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiStateTracker;Landroid/os/Looper;Landroid/os/Handler;)V
    .locals 3
    .parameter
    .parameter "looper"
    .parameter "target"

    .prologue
    .line 3120
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    .line 3121
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3122
    iput-object p3, p0, Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;->mDirectTarget:Landroid/os/Handler;

    .line 3123
    new-instance v0, Landroid/bluetooth/BluetoothHeadset;

    #getter for: Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/net/wifi/WifiStateTracker;->access$1300(Landroid/net/wifi/WifiStateTracker;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothHeadset$ServiceListener;)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 3124
    return-void
.end method

.method private shouldDisableCoexistenceMode()Z
    .locals 3

    .prologue
    .line 3217
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadset;->getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 3218
    .local v0, state:I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const-string v4, "WifiStateTracker"

    .line 3129
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 3201
    :goto_0
    return-void

    .line 3132
    :pswitch_0
    const/4 v1, 0x0

    .line 3133
    .local v1, modifiedBluetoothCoexistenceMode:Z
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;->shouldDisableCoexistenceMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3150
    const/4 v1, 0x1

    .line 3153
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiStateTracker;->setBluetoothCoexistenceMode(I)Z

    .line 3157
    :cond_0
    monitor-enter p0

    .line 3158
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    iget-object v2, v2, Landroid/net/wifi/WifiStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3159
    const-string v2, "WifiStateTracker"

    const-string/jumbo v3, "mWakeLock.acquired"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3160
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    const/4 v3, 0x1

    #calls: Landroid/net/wifi/WifiStateTracker;->setPowerMode(I)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateTracker;->access$400(Landroid/net/wifi/WifiStateTracker;I)V

    .line 3161
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3164
    monitor-enter p0

    .line 3166
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;->mCancelCallback:Z

    .line 3167
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 3168
    const-string v2, "WifiStateTracker"

    const-string v2, "DhcpHandler: DHCP request started"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3169
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDirectInterfaceName:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/wifi/WifiStateTracker;->access$1400(Landroid/net/wifi/WifiStateTracker;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDirectDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v3}, Landroid/net/wifi/WifiStateTracker;->access$1500(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/NetworkUtils;->runDhcp(Ljava/lang/String;Landroid/net/DhcpInfo;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3170
    const/16 v0, 0x1e

    .line 3172
    .local v0, event:I
    const-string v2, "WifiStateTracker"

    const-string v2, "DirectDhcpHandler: DHCP request succeeded"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3179
    :goto_1
    monitor-enter p0

    .line 3180
    :try_start_2
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    iget-object v2, v2, Landroid/net/wifi/WifiStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3181
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    iget-object v2, v2, Landroid/net/wifi/WifiStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3183
    const-string v2, "WifiStateTracker"

    const-string/jumbo v3, "mWakeLock.released"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3185
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    const/4 v3, 0x0

    #calls: Landroid/net/wifi/WifiStateTracker;->setPowerMode(I)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateTracker;->access$400(Landroid/net/wifi/WifiStateTracker;I)V

    .line 3186
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 3189
    if-eqz v1, :cond_2

    .line 3191
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiStateTracker;->setBluetoothCoexistenceMode(I)Z

    .line 3194
    :cond_2
    monitor-enter p0

    .line 3195
    :try_start_3
    iget-boolean v2, p0, Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;->mCancelCallback:Z

    if-nez v2, :cond_3

    .line 3196
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;->mDirectTarget:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3198
    :cond_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 3161
    .end local v0           #event:I
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 3167
    :catchall_2
    move-exception v2

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2

    .line 3174
    :cond_4
    const/16 v0, 0x1f

    .line 3175
    .restart local v0       #event:I
    const-string v2, "WifiStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DirectDhcpHandler: DHCP request failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3186
    :catchall_3
    move-exception v2

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v2

    .line 3129
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized setCancelCallback(Z)V
    .locals 1
    .parameter "cancelCallback"

    .prologue
    .line 3204
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;->mCancelCallback:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3205
    monitor-exit p0

    return-void

    .line 3204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
