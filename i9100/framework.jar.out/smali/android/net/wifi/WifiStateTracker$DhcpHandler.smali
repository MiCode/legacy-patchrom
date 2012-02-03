.class Landroid/net/wifi/WifiStateTracker$DhcpHandler;
.super Landroid/os/Handler;
.source "WifiStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DhcpHandler"
.end annotation


# instance fields
.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mCancelCallback:Z

.field private mWifiStateTrackerHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/net/wifi/WifiStateTracker;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiStateTracker;Landroid/os/Looper;Landroid/os/Handler;)V
    .locals 3
    .parameter
    .parameter "looper"
    .parameter "target"

    .prologue
    .line 2916
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    .line 2917
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2918
    iput-object p3, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->mWifiStateTrackerHandler:Landroid/os/Handler;

    .line 2920
    new-instance v0, Landroid/bluetooth/BluetoothHeadset;

    #getter for: Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/net/wifi/WifiStateTracker;->access$300(Landroid/net/wifi/WifiStateTracker;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothHeadset$ServiceListener;)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 2921
    return-void
.end method

.method private setDhcpRenewalAlarm(J)V
    .locals 6
    .parameter "leaseDuration"

    .prologue
    .line 3085
    const-wide/16 v0, 0x3c

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 3086
    const-wide/16 p1, 0x3c

    .line 3088
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->access$1200(Landroid/net/wifi/WifiStateTracker;)Landroid/app/AlarmManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x1e0

    mul-long/2addr v4, p1

    add-long/2addr v2, v4

    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpRenewalIntent:Landroid/app/PendingIntent;
    invoke-static {v4}, Landroid/net/wifi/WifiStateTracker;->access$1100(Landroid/net/wifi/WifiStateTracker;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 3092
    return-void
.end method

.method private shouldDisableCoexistenceMode()Z
    .locals 3

    .prologue
    .line 3077
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadset;->getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 3078
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
    .locals 14
    .parameter "msg"

    .prologue
    const/4 v11, 0x0

    const/4 v13, 0x1

    const-string v12, "WifiStateTracker"

    .line 2924
    const/4 v1, 0x7

    .line 2926
    .local v1, event:I
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 3058
    :cond_0
    :goto_0
    return-void

    .line 2929
    :pswitch_0
    const/4 v2, 0x0

    .line 2930
    .local v2, modifiedBluetoothCoexistenceMode:Z
    const/4 v8, 0x0

    .line 2932
    .local v8, powerMode:I
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->shouldDisableCoexistenceMode()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2949
    const/4 v2, 0x1

    .line 2952
    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v9, v13}, Landroid/net/wifi/WifiStateTracker;->setBluetoothCoexistenceMode(I)Z

    .line 2956
    :cond_1
    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v9}, Landroid/net/wifi/WifiStateTracker;->getPowerMode()I

    move-result v8

    .line 2957
    if-gez v8, :cond_2

    .line 2960
    const/4 v8, 0x0

    .line 2962
    :cond_2
    if-eq v8, v13, :cond_3

    .line 2964
    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    iget-object v9, v9, Landroid/net/wifi/WifiStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2965
    const-string v9, "WifiStateTracker"

    const-string/jumbo v9, "mWakeLock acquired"

    invoke-static {v12, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2968
    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    #calls: Landroid/net/wifi/WifiStateTracker;->setPowerMode(I)V
    invoke-static {v9, v13}, Landroid/net/wifi/WifiStateTracker;->access$400(Landroid/net/wifi/WifiStateTracker;I)V

    .line 2971
    :cond_3
    monitor-enter p0

    .line 2973
    const/4 v9, 0x0

    :try_start_0
    iput-boolean v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->mCancelCallback:Z

    .line 2974
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2976
    iget v9, p1, Landroid/os/Message;->what:I

    const/16 v10, 0x9

    if-ne v9, v10, :cond_9

    .line 2977
    const-string v9, "WifiStateTracker"

    const-string v9, "DHCP request started"

    invoke-static {v12, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2978
    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;
    invoke-static {v9}, Landroid/net/wifi/WifiStateTracker;->access$500(Landroid/net/wifi/WifiStateTracker;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v10}, Landroid/net/wifi/WifiStateTracker;->access$600(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/net/NetworkUtils;->runDhcp(Ljava/lang/String;Landroid/net/DhcpInfo;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2979
    const/4 v1, 0x6

    .line 2980
    const-string v9, "WifiStateTracker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DHCP succeeded with lease: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v10}, Landroid/net/wifi/WifiStateTracker;->access$600(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v10

    iget v10, v10, Landroid/net/DhcpInfo;->leaseDuration:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2981
    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v9}, Landroid/net/wifi/WifiStateTracker;->access$600(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v9

    iget v9, v9, Landroid/net/DhcpInfo;->leaseDuration:I

    int-to-long v9, v9

    invoke-direct {p0, v9, v10}, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->setDhcpRenewalAlarm(J)V

    .line 2991
    :goto_1
    monitor-enter p0

    .line 2992
    :try_start_1
    iget-boolean v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->mCancelCallback:Z

    if-nez v9, :cond_4

    .line 2993
    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->mWifiStateTrackerHandler:Landroid/os/Handler;

    invoke-virtual {v9, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2995
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3039
    :cond_5
    :goto_2
    if-eq v8, v13, :cond_6

    .line 3040
    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    #calls: Landroid/net/wifi/WifiStateTracker;->setPowerMode(I)V
    invoke-static {v9, v8}, Landroid/net/wifi/WifiStateTracker;->access$400(Landroid/net/wifi/WifiStateTracker;I)V

    .line 3043
    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    iget-object v9, v9, Landroid/net/wifi/WifiStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 3044
    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    iget-object v9, v9, Landroid/net/wifi/WifiStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3045
    const-string v9, "WifiStateTracker"

    const-string/jumbo v9, "mWakeLock released"

    invoke-static {v12, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3050
    :cond_6
    if-eqz v2, :cond_0

    .line 3052
    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiStateTracker;->setBluetoothCoexistenceMode(I)Z

    goto/16 :goto_0

    .line 2974
    :catchall_0
    move-exception v9

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 2983
    :cond_7
    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mUseStaticIp:Z
    invoke-static {v9}, Landroid/net/wifi/WifiStateTracker;->access$700(Landroid/net/wifi/WifiStateTracker;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 2984
    const/4 v1, 0x7

    .line 2985
    const-string v9, "WifiStateTracker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DHCP request failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2987
    :cond_8
    iput-boolean v13, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->mCancelCallback:Z

    .line 2988
    const-string v9, "WifiStateTracker"

    const-string v9, "Static ip is set during dhcp"

    invoke-static {v12, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2995
    :catchall_1
    move-exception v9

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v9

    .line 2997
    :cond_9
    iget v9, p1, Landroid/os/Message;->what:I

    const/16 v10, 0xa

    if-ne v9, v10, :cond_5

    .line 2998
    const-string v9, "WifiStateTracker"

    const-string v9, "DHCP renewal started"

    invoke-static {v12, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2999
    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v9}, Landroid/net/wifi/WifiStateTracker;->access$600(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v9

    iget v6, v9, Landroid/net/DhcpInfo;->ipAddress:I

    .line 3000
    .local v6, oIp:I
    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v9}, Landroid/net/wifi/WifiStateTracker;->access$600(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v9

    iget v5, v9, Landroid/net/DhcpInfo;->gateway:I

    .line 3001
    .local v5, oGw:I
    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v9}, Landroid/net/wifi/WifiStateTracker;->access$600(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v9

    iget v7, v9, Landroid/net/DhcpInfo;->netmask:I

    .line 3002
    .local v7, oMsk:I
    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v9}, Landroid/net/wifi/WifiStateTracker;->access$600(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v9

    iget v3, v9, Landroid/net/DhcpInfo;->dns1:I

    .line 3003
    .local v3, oDns1:I
    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v9}, Landroid/net/wifi/WifiStateTracker;->access$600(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v9

    iget v4, v9, Landroid/net/DhcpInfo;->dns2:I

    .line 3005
    .local v4, oDns2:I
    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;
    invoke-static {v9}, Landroid/net/wifi/WifiStateTracker;->access$500(Landroid/net/wifi/WifiStateTracker;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v10}, Landroid/net/wifi/WifiStateTracker;->access$600(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/net/NetworkUtils;->runDhcpRenew(Ljava/lang/String;Landroid/net/DhcpInfo;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 3006
    const-string v9, "WifiStateTracker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DHCP renewal with lease: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v10}, Landroid/net/wifi/WifiStateTracker;->access$600(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v10

    iget v10, v10, Landroid/net/DhcpInfo;->leaseDuration:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3008
    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v9}, Landroid/net/wifi/WifiStateTracker;->access$600(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v9

    iget v9, v9, Landroid/net/DhcpInfo;->ipAddress:I

    if-ne v6, v9, :cond_a

    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v9}, Landroid/net/wifi/WifiStateTracker;->access$600(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v9

    iget v9, v9, Landroid/net/DhcpInfo;->gateway:I

    if-ne v5, v9, :cond_a

    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v9}, Landroid/net/wifi/WifiStateTracker;->access$600(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v9

    iget v9, v9, Landroid/net/DhcpInfo;->netmask:I

    if-ne v7, v9, :cond_a

    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v9}, Landroid/net/wifi/WifiStateTracker;->access$600(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v9

    iget v9, v9, Landroid/net/DhcpInfo;->dns1:I

    if-ne v3, v9, :cond_a

    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v9}, Landroid/net/wifi/WifiStateTracker;->access$600(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v9

    iget v9, v9, Landroid/net/DhcpInfo;->dns2:I

    if-eq v4, v9, :cond_c

    :cond_a
    move v0, v13

    .line 3015
    .local v0, changed:Z
    :goto_3
    if-eqz v0, :cond_b

    .line 3016
    const-string v9, "WifiStateTracker"

    const-string v9, "IP config change on renewal"

    invoke-static {v12, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3017
    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v9}, Landroid/net/wifi/WifiStateTracker;->access$800(Landroid/net/wifi/WifiStateTracker;)Landroid/net/wifi/WifiInfo;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v10}, Landroid/net/wifi/WifiStateTracker;->access$600(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v10

    iget v10, v10, Landroid/net/DhcpInfo;->ipAddress:I

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiInfo;->setIpAddress(I)V

    .line 3018
    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;
    invoke-static {v9}, Landroid/net/wifi/WifiStateTracker;->access$500(Landroid/net/wifi/WifiStateTracker;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;)I

    .line 3019
    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;
    invoke-static {v9}, Landroid/net/wifi/WifiStateTracker;->access$1000(Landroid/net/wifi/WifiStateTracker;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x4

    iget-object v11, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v11}, Landroid/net/wifi/WifiStateTracker;->access$900(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3021
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 3024
    :cond_b
    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v9}, Landroid/net/wifi/WifiStateTracker;->access$600(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v9

    iget v9, v9, Landroid/net/DhcpInfo;->leaseDuration:I

    int-to-long v9, v9

    invoke-direct {p0, v9, v10}, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->setDhcpRenewalAlarm(J)V

    .line 3035
    .end local v0           #changed:Z
    :goto_4
    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v9}, Landroid/net/wifi/WifiStateTracker;->access$100(Landroid/net/wifi/WifiStateTracker;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 3036
    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v9}, Landroid/net/wifi/WifiStateTracker;->access$100(Landroid/net/wifi/WifiStateTracker;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_2

    :cond_c
    move v0, v11

    .line 3008
    goto :goto_3

    .line 3026
    :cond_d
    const/4 v1, 0x7

    .line 3027
    const-string v9, "WifiStateTracker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DHCP renewal failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3029
    monitor-enter p0

    .line 3030
    :try_start_4
    iget-boolean v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->mCancelCallback:Z

    if-nez v9, :cond_e

    .line 3031
    iget-object v9, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->mWifiStateTrackerHandler:Landroid/os/Handler;

    invoke-virtual {v9, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3033
    :cond_e
    monitor-exit p0

    goto :goto_4

    :catchall_2
    move-exception v9

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v9

    .line 2926
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized setCancelCallback(Z)V
    .locals 2
    .parameter "cancelCallback"

    .prologue
    .line 3061
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->mCancelCallback:Z

    .line 3062
    if-eqz p1, :cond_0

    .line 3063
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->access$1200(Landroid/net/wifi/WifiStateTracker;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpRenewalIntent:Landroid/app/PendingIntent;
    invoke-static {v1}, Landroid/net/wifi/WifiStateTracker;->access$1100(Landroid/net/wifi/WifiStateTracker;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3065
    :cond_0
    monitor-exit p0

    return-void

    .line 3061
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
