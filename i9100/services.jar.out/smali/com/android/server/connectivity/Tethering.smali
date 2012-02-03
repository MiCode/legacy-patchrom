.class public Lcom/android/server/connectivity/Tethering;
.super Landroid/net/INetworkManagementEventObserver$Stub;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Tethering$1;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM;,
        Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;,
        Lcom/android/server/connectivity/Tethering$StateReceiver;
    }
.end annotation


# static fields
.field private static final DHCP_DEFAULT_RANGE1_START:Ljava/lang/String; = "192.168.42.2"

.field private static final DHCP_DEFAULT_RANGE1_STOP:Ljava/lang/String; = "192.168.42.254"

.field private static final DHCP_DEFAULT_RANGE2_START:Ljava/lang/String; = "192.168.43.2"

.field private static final DHCP_DEFAULT_RANGE2_STOP:Ljava/lang/String; = "192.168.43.254"

.field private static final DNS_DEFAULT_SERVER1:Ljava/lang/String; = "8.8.8.8"

.field private static final DNS_DEFAULT_SERVER2:Ljava/lang/String; = "4.2.2.2"

.field private static final USB_NEAR_IFACE_ADDR:Ljava/lang/String; = "192.168.42.129"

.field private static final USB_NETMASK:Ljava/lang/String; = "255.255.255.0"


# instance fields
.field private DBG:Z

.field private final TAG:Ljava/lang/String;

.field private mBooted:Z

.field private mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDeferedUsbConnection:Z

.field private mDhcpRange:[Ljava/lang/String;

.field private mDnsServers:[Ljava/lang/String;

.field private mDunRequired:Z

.field private mIfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;",
            ">;"
        }
    .end annotation
.end field

.field private mLooper:Landroid/os/Looper;

.field private mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherMasterSM:Lcom/android/internal/util/HierarchicalStateMachine;

.field private mTetherableUsbRegexs:[Ljava/lang/String;

.field private mTetherableWifiRegexs:[Ljava/lang/String;

.field private mTetheredNotification:Landroid/app/Notification;

.field private mThread:Landroid/os/HandlerThread;

.field private mUpstreamIfaceRegexs:[Ljava/lang/String;

.field private mUpstreamIfaceRegexs_Mobile:[Ljava/lang/String;

.field private mUpstreamIfaceRegexs_WiFi:[Ljava/lang/String;

.field private mUpstreamIfaceRegexs_WiMAX:[Ljava/lang/String;

.field private mUsbConnected:Z

.field private mUsbMassStorageOff:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 13
    .parameter "context"
    .parameter "looper"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v9, "Tethering"

    .line 146
    invoke-direct {p0}, Landroid/net/INetworkManagementEventObserver$Stub;-><init>()V

    .line 88
    const-string v7, "Tethering"

    iput-object v9, p0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    .line 89
    iput-boolean v10, p0, Lcom/android/server/connectivity/Tethering;->DBG:Z

    .line 91
    iput-boolean v10, p0, Lcom/android/server/connectivity/Tethering;->mBooted:Z

    .line 93
    iput-boolean v10, p0, Lcom/android/server/connectivity/Tethering;->mDeferedUsbConnection:Z

    .line 147
    const-string v7, "Tethering"

    const-string v7, "Tethering starting"

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    .line 149
    iput-object p2, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    .line 152
    const-string v7, "network_management"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 153
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v6

    .line 155
    .local v6, service:Landroid/os/INetworkManagementService;
    :try_start_0
    invoke-interface {v6, p0}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    .line 163
    new-instance v7, Landroid/os/HandlerThread;

    const-string v8, "Tethering"

    invoke-direct {v7, v9}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/server/connectivity/Tethering;->mThread:Landroid/os/HandlerThread;

    .line 164
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 165
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    .line 166
    new-instance v7, Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const-string v8, "TetherMaster"

    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    invoke-direct {v7, p0, v8, v9}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/HierarchicalStateMachine;

    .line 167
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/HierarchicalStateMachine;

    invoke-virtual {v7}, Lcom/android/internal/util/HierarchicalStateMachine;->start()V

    .line 169
    new-instance v7, Lcom/android/server/connectivity/Tethering$StateReceiver;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V

    iput-object v7, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 170
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 171
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v7, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    const-string v7, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    const-string v7, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string v7, "android.intent.action.CSC_UPDATE_DONE"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    const-string v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 185
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2           #filter:Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 186
    .restart local v2       #filter:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    const-string v7, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    const-string v7, "file"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 189
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 191
    const-string v7, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    move v7, v11

    :goto_1
    iput-boolean v7, p0, Lcom/android/server/connectivity/Tethering;->mUsbMassStorageOff:Z

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070011

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    .line 196
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    array-length v7, v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    array-length v7, v7

    rem-int/lit8 v7, v7, 0x2

    if-ne v7, v11, :cond_1

    .line 197
    :cond_0
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    .line 198
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    const-string v8, "192.168.42.2"

    aput-object v8, v7, v10

    .line 199
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    const-string v8, "192.168.42.254"

    aput-object v8, v7, v11

    .line 200
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    const-string v8, "192.168.43.2"

    aput-object v8, v7, v12

    .line 201
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    const/4 v8, 0x3

    const-string v9, "192.168.43.254"

    aput-object v9, v7, v8

    .line 203
    :cond_1
    iput-boolean v10, p0, Lcom/android/server/connectivity/Tethering;->mDunRequired:Z

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x107000f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    .line 207
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070010

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    .line 213
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070012

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceRegexs_WiFi:[Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070013

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceRegexs_Mobile:[Ljava/lang/String;

    .line 225
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceRegexs_WiFi:[Ljava/lang/String;

    array-length v7, v7

    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceRegexs_Mobile:[Ljava/lang/String;

    array-length v8, v8

    add-int/2addr v7, v8

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceRegexs:[Ljava/lang/String;

    .line 228
    const/4 v4, 0x0

    .line 229
    .local v4, index:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceRegexs_Mobile:[Ljava/lang/String;

    array-length v7, v7

    if-ge v3, v7, :cond_3

    .line 230
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceRegexs:[Ljava/lang/String;

    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .local v5, index:I
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceRegexs_Mobile:[Ljava/lang/String;

    aget-object v8, v8, v3

    aput-object v8, v7, v4

    .line 229
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    .end local v5           #index:I
    .restart local v4       #index:I
    goto :goto_2

    .line 156
    .end local v2           #filter:Landroid/content/IntentFilter;
    .end local v3           #i:I
    .end local v4           #index:I
    :catch_0
    move-exception v1

    .line 157
    .local v1, e:Landroid/os/RemoteException;
    const-string v7, "Tethering"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error registering observer :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v2       #filter:Landroid/content/IntentFilter;
    :cond_2
    move v7, v10

    .line 191
    goto/16 :goto_1

    .line 231
    .restart local v3       #i:I
    .restart local v4       #index:I
    :cond_3
    const/4 v3, 0x0

    :goto_3
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceRegexs_WiFi:[Ljava/lang/String;

    array-length v7, v7

    if-ge v3, v7, :cond_4

    .line 232
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceRegexs:[Ljava/lang/String;

    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .restart local v5       #index:I
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceRegexs_WiFi:[Ljava/lang/String;

    aget-object v8, v8, v3

    aput-object v8, v7, v4

    .line 231
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    .end local v5           #index:I
    .restart local v4       #index:I
    goto :goto_3

    .line 241
    :cond_4
    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p0, Lcom/android/server/connectivity/Tethering;->mDnsServers:[Ljava/lang/String;

    .line 242
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mDnsServers:[Ljava/lang/String;

    const-string v8, "8.8.8.8"

    aput-object v8, v7, v10

    .line 243
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mDnsServers:[Ljava/lang/String;

    const-string v8, "4.2.2.2"

    aput-object v8, v7, v11

    .line 244
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->blockInternetSharingByActiveSync(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mUsbConnected:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->configureUsbIface(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/connectivity/Tethering;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->sendTetherStateChangedBroadcast()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/Tethering;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->updateUsbStatus()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/connectivity/Tethering;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->showDialogOnInternetSharingBlockedByActiveSync()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->enableUsbRndis(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mDunRequired:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mDunRequired:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mUsbMassStorageOff:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDnsServers:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/HierarchicalStateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/HierarchicalStateMachine;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/connectivity/Tethering;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->setDnsServers([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mBooted:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/Tethering;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->updateDunRequired()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isInternetSharingBlockedByActiveSync()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    return-object v0
.end method

.method private blockInternetSharingByActiveSync(Ljava/lang/String;)V
    .locals 5
    .parameter "iface"

    .prologue
    .line 367
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    monitor-enter v1

    .line 368
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 369
    .local v0, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-nez v0, :cond_0

    .line 370
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ActiveSync] Tried to Untether an unknown iface ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    monitor-exit v1

    .line 375
    :goto_0
    return-void

    .line 373
    :cond_0
    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    .line 374
    monitor-exit v1

    goto :goto_0

    .end local v0           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private clearTetheredNotification()V
    .locals 3

    .prologue
    .line 556
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 558
    .local v0, notificationManager:Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 559
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 560
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    .line 562
    :cond_0
    return-void
.end method

.method private configureUsbIface(Z)Z
    .locals 13
    .parameter "enabled"

    .prologue
    .line 728
    const-string v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "configureUsbIface("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const-string v10, "network_management"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 731
    .local v2, b:Landroid/os/IBinder;
    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v9

    .line 734
    .local v9, service:Landroid/os/INetworkManagementService;
    const/4 v10, 0x0

    new-array v6, v10, [Ljava/lang/String;

    .line 736
    .local v6, ifaces:[Ljava/lang/String;
    :try_start_0
    invoke-interface {v9}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 741
    move-object v1, v6

    .local v1, arr$:[Ljava/lang/String;
    array-length v8, v1

    .local v8, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v8, :cond_2

    aget-object v5, v1, v4

    .line 742
    .local v5, iface:Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 743
    const/4 v7, 0x0

    .line 745
    .local v7, ifcg:Landroid/net/InterfaceConfiguration;
    :try_start_1
    invoke-interface {v9, v5}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v7

    .line 746
    if-eqz v7, :cond_0

    .line 747
    const-string v10, "192.168.42.129"

    const-string v11, "\\."

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 748
    .local v0, addr:[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v0, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    shl-int/lit8 v10, v10, 0x18

    const/4 v11, 0x1

    aget-object v11, v0, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    shl-int/lit8 v11, v11, 0x10

    add-int/2addr v10, v11

    const/4 v11, 0x2

    aget-object v11, v0, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    shl-int/lit8 v11, v11, 0x8

    add-int/2addr v10, v11

    const/4 v11, 0x3

    aget-object v11, v0, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, v7, Landroid/net/InterfaceConfiguration;->ipAddr:I

    .line 752
    const-string v10, "255.255.255.0"

    const-string v11, "\\."

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 753
    const/4 v10, 0x0

    aget-object v10, v0, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    shl-int/lit8 v10, v10, 0x18

    const/4 v11, 0x1

    aget-object v11, v0, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    shl-int/lit8 v11, v11, 0x10

    add-int/2addr v10, v11

    const/4 v11, 0x2

    aget-object v11, v0, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    shl-int/lit8 v11, v11, 0x8

    add-int/2addr v10, v11

    const/4 v11, 0x3

    aget-object v11, v0, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, v7, Landroid/net/InterfaceConfiguration;->netmask:I

    .line 757
    if-eqz p1, :cond_1

    .line 758
    iget-object v10, v7, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    const-string v11, "down"

    const-string v12, "up"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    .line 762
    :goto_1
    iget-object v10, v7, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    const-string v11, "running"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    .line 763
    iget-object v10, v7, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    const-string v11, "  "

    const-string v12, " "

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    .line 764
    invoke-interface {v9, v5, v7}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 741
    .end local v0           #addr:[Ljava/lang/String;
    .end local v7           #ifcg:Landroid/net/InterfaceConfiguration;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 737
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #iface:Ljava/lang/String;
    .end local v8           #len$:I
    :catch_0
    move-exception v3

    .line 738
    .local v3, e:Ljava/lang/Exception;
    const-string v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error listing Interfaces :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    const/4 v10, 0x0

    .line 773
    .end local v3           #e:Ljava/lang/Exception;
    :goto_2
    return v10

    .line 760
    .restart local v0       #addr:[Ljava/lang/String;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v5       #iface:Ljava/lang/String;
    .restart local v7       #ifcg:Landroid/net/InterfaceConfiguration;
    .restart local v8       #len$:I
    :cond_1
    :try_start_2
    iget-object v10, v7, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    const-string v11, "up"

    const-string v12, "down"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 766
    .end local v0           #addr:[Ljava/lang/String;
    :catch_1
    move-exception v10

    move-object v3, v10

    .line 767
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error configuring interface "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    const/4 v10, 0x0

    goto :goto_2

    .line 773
    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #iface:Ljava/lang/String;
    .end local v7           #ifcg:Landroid/net/InterfaceConfiguration;
    :cond_2
    const/4 v10, 0x1

    goto :goto_2
.end method

.method private enableUsbIfaces(Z)V
    .locals 11
    .parameter "enable"

    .prologue
    .line 681
    const-string v8, "network_management"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 682
    .local v1, b:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v7

    .line 683
    .local v7, service:Landroid/os/INetworkManagementService;
    const/4 v8, 0x0

    new-array v5, v8, [Ljava/lang/String;

    .line 685
    .local v5, ifaces:[Ljava/lang/String;
    :try_start_0
    invoke-interface {v7}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 690
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v4, v0, v3

    .line 691
    .local v4, iface:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 692
    if-eqz p1, :cond_2

    .line 693
    invoke-virtual {p0, v4}, Lcom/android/server/connectivity/Tethering;->interfaceAdded(Ljava/lang/String;)V

    .line 690
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 686
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #len$:I
    :catch_0
    move-exception v2

    .line 687
    .local v2, e:Ljava/lang/Exception;
    const-string v8, "Tethering"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error listing Interfaces :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    return-void

    .line 695
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #iface:Ljava/lang/String;
    .restart local v6       #len$:I
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/server/connectivity/Tethering;->interfaceRemoved(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private enableUsbRndis(Z)Z
    .locals 6
    .parameter "enabled"

    .prologue
    const-string v5, "Tethering"

    .line 703
    const-string v3, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableUsbRndis("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 705
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    .line 708
    .local v2, service:Landroid/os/INetworkManagementService;
    if-eqz p1, :cond_2

    .line 709
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    :try_start_1
    invoke-interface {v2}, Landroid/os/INetworkManagementService;->isUsbRNDISStarted()Z

    move-result v3

    if-nez v3, :cond_0

    .line 711
    invoke-interface {v2}, Landroid/os/INetworkManagementService;->startUsbRNDIS()V

    .line 713
    :cond_0
    monitor-exit p0

    .line 723
    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 713
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 719
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 720
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error toggling usb RNDIS :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const/4 v3, 0x0

    goto :goto_1

    .line 715
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_3
    invoke-interface {v2}, Landroid/os/INetworkManagementService;->isUsbRNDISStarted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 716
    invoke-interface {v2}, Landroid/os/INetworkManagementService;->stopUsbRNDIS()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method private isInternetSharingBlockedByActiveSync()Z
    .locals 3

    .prologue
    const-string v2, "Tethering"

    .line 378
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 379
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    const-string v0, "Tethering"

    const-string v0, "[ActiveSync] internet sharing is blocked"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const/4 v0, 0x1

    .line 384
    :goto_0
    return v0

    .line 383
    :cond_0
    const-string v0, "Tethering"

    const-string v0, "[ActiveSync] internet sharing is NOT blocked"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUsb(Ljava/lang/String;)Z
    .locals 5
    .parameter "iface"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 311
    .local v3, regex:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 313
    .end local v3           #regex:Ljava/lang/String;
    :goto_1
    return v4

    .line 310
    .restart local v3       #regex:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 313
    .end local v3           #regex:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private sendTetherStateChangedBroadcast()V
    .locals 18

    .prologue
    .line 453
    const-string v15, "connectivity"

    invoke-static {v15}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 454
    .local v4, b:Landroid/os/IBinder;
    invoke-static {v4}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v11

    .line 456
    .local v11, service:Landroid/net/IConnectivityManager;
    :try_start_0
    invoke-interface {v11}, Landroid/net/IConnectivityManager;->isTetheringSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    if-nez v15, :cond_0

    .line 510
    :goto_0
    return-void

    .line 457
    :catch_0
    move-exception v6

    .line 458
    .local v6, e:Landroid/os/RemoteException;
    goto :goto_0

    .line 461
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 462
    .local v3, availableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 463
    .local v2, activeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 465
    .local v7, erroredList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 466
    .local v14, wifiTethered:Z
    const/4 v13, 0x0

    .line 468
    .local v13, usbTethered:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    move-object v15, v0

    monitor-enter v15

    .line 469
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    .line 470
    .local v10, ifaces:Ljava/util/Set;
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v10           #ifaces:Ljava/util/Set;
    .local v8, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 471
    .local v9, iface:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 472
    .local v12, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz v12, :cond_1

    .line 473
    invoke-virtual {v12}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 474
    check-cast v9, Ljava/lang/String;

    .end local v9           #iface:Ljava/lang/Object;
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 487
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v12           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v16

    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v16

    .line 475
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v9       #iface:Ljava/lang/Object;
    .restart local v12       #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_2
    :try_start_2
    invoke-virtual {v12}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isAvailable()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 476
    check-cast v9, Ljava/lang/String;

    .end local v9           #iface:Ljava/lang/Object;
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 477
    .restart local v9       #iface:Ljava/lang/Object;
    :cond_3
    invoke-virtual {v12}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 478
    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 479
    const/4 v13, 0x1

    .line 483
    :cond_4
    :goto_2
    check-cast v9, Ljava/lang/String;

    .end local v9           #iface:Ljava/lang/Object;
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 480
    .restart local v9       #iface:Ljava/lang/Object;
    :cond_5
    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 481
    const/4 v14, 0x1

    goto :goto_2

    .line 487
    .end local v9           #iface:Ljava/lang/Object;
    .end local v12           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_6
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 488
    new-instance v5, Landroid/content/Intent;

    const-string v15, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v5, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 489
    .local v5, broadcast:Landroid/content/Intent;
    const/high16 v15, 0x2000

    invoke-virtual {v5, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 490
    const-string v15, "availableArray"

    invoke-virtual {v5, v15, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 492
    const-string v15, "activeArray"

    invoke-virtual {v5, v15, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 493
    const-string v15, "erroredArray"

    invoke-virtual {v5, v15, v7}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    move-object v15, v0

    invoke-virtual {v15, v5}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 496
    const-string v15, "Tethering"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "sendTetherStateChangedBroadcast "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    if-eqz v13, :cond_8

    .line 500
    if-eqz v14, :cond_7

    .line 501
    const v15, 0x1080327

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_0

    .line 503
    :cond_7
    const v15, 0x1080328

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_0

    .line 505
    :cond_8
    if-eqz v14, :cond_9

    .line 506
    const v15, 0x1080329

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_0

    .line 508
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V

    goto/16 :goto_0
.end method

.method private setDnsServers([Ljava/lang/String;)V
    .locals 5
    .parameter "dnsServers"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v2, ""

    .line 251
    aget-object v0, p1, v3

    if-nez v0, :cond_0

    aget-object v0, p1, v4

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDnsServers:[Ljava/lang/String;

    const-string v1, "8.8.8.8"

    aput-object v1, v0, v3

    .line 254
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDnsServers:[Ljava/lang/String;

    const-string v1, "4.2.2.2"

    aput-object v1, v0, v4

    .line 276
    :goto_0
    const-string v0, "Tethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDnsServers("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDnsServers:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDnsServers:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDnsServers:[Ljava/lang/String;

    aget-object v1, p1, v3

    if-eqz v1, :cond_1

    aget-object v1, p1, v3

    :goto_1
    aput-object v1, v0, v3

    .line 259
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDnsServers:[Ljava/lang/String;

    aget-object v1, p1, v4

    if-eqz v1, :cond_2

    aget-object v1, p1, v4

    :goto_2
    aput-object v1, v0, v4

    goto :goto_0

    .line 258
    :cond_1
    const-string v1, ""

    move-object v1, v2

    goto :goto_1

    .line 259
    :cond_2
    const-string v1, ""

    move-object v1, v2

    goto :goto_2
.end method

.method private showDialogOnInternetSharingBlockedByActiveSync()V
    .locals 3

    .prologue
    .line 388
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040464

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, message:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 390
    return-void
.end method

.method private showTetheredNotification(I)V
    .locals 9
    .parameter "icon"

    .prologue
    const/4 v8, 0x0

    .line 513
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 515
    .local v2, notificationManager:Landroid/app/NotificationManager;
    if-nez v2, :cond_1

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 519
    :cond_1
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    if-eqz v6, :cond_2

    .line 520
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    if-eq v6, p1, :cond_0

    .line 523
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    invoke-virtual {v2, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 526
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 528
    .local v0, intent:Landroid/content/Intent;
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.TetherSettings"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    const/high16 v6, 0x2000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 533
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-static {v6, v8, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 535
    .local v3, pi:Landroid/app/PendingIntent;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 537
    .local v4, r:Landroid/content/res/Resources;
    const v6, 0x104044c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 539
    .local v5, title:Ljava/lang/CharSequence;
    const v6, 0x104044d

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 542
    .local v1, message:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    if-nez v6, :cond_3

    .line 543
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    .line 544
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    .line 546
    :cond_3
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iput p1, v6, Landroid/app/Notification;->icon:I

    .line 547
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v7, v6, Landroid/app/Notification;->defaults:I

    and-int/lit8 v7, v7, -0x2

    iput v7, v6, Landroid/app/Notification;->defaults:I

    .line 548
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    const/4 v7, 0x2

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 549
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 550
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v5, v1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 552
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    invoke-virtual {v2, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private updateDunRequired()V
    .locals 15

    .prologue
    const/4 v13, 0x1

    const-string v4, "0"

    const-string v14, "Tethering"

    .line 574
    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, "0"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 575
    .local v11, operatorNumeric:Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 576
    const-string v1, "Tethering"

    const-string v1, "updateDunRequired PLMN not ready"

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 579
    :cond_1
    const/4 v12, 0x0

    .line 581
    .local v12, result:I
    new-instance v9, Ljava/io/File;

    const-string v1, "/data/data/com.android.providers.telephony/databases"

    const-string v2, "tether_dun.db"

    invoke-direct {v9, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    .local v9, databaseFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 585
    :try_start_0
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 587
    .local v0, mTetherDunDb:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "plmn=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 588
    .local v3, selection:Ljava/lang/String;
    const-string v1, "nwkinfo"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 590
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v12

    .line 593
    :cond_2
    if-eqz v8, :cond_3

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 594
    :cond_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 601
    .end local v0           #mTetherDunDb:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #selection:Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_4
    :goto_1
    const-string v1, "Tethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDunRequired result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tether_dun_required"

    invoke-static {v1, v2, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 603
    if-ne v12, v13, :cond_0

    iput-boolean v13, p0, Lcom/android/server/connectivity/Tethering;->mDunRequired:Z

    goto :goto_0

    .line 593
    .restart local v0       #mTetherDunDb:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v8       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_5

    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 594
    :cond_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 593
    throw v1
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 597
    .end local v0           #mTetherDunDb:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #selection:Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v1

    move-object v10, v1

    .line 598
    .local v10, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "Tethering"

    const-string v1, "updateDunRequired open DB fail!!"

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateUsbStatus()V
    .locals 2

    .prologue
    .line 565
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mUsbConnected:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mUsbMassStorageOff:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 567
    .local v0, enable:Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mBooted:Z

    if-eqz v1, :cond_0

    .line 568
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Tethering;->enableUsbIfaces(Z)V

    .line 570
    :cond_0
    return-void

    .line 565
    .end local v0           #enable:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1882
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1884
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump ConnectivityService.Tether from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1898
    :goto_0
    return-void

    .line 1890
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1891
    const-string v2, "Tether state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1892
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    monitor-enter v2

    .line 1893
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1894
    .local v1, o:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1896
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #o:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1897
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_0
.end method

.method public getErroredIfaces()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 834
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 835
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    monitor-enter v7

    .line 836
    :try_start_0
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 837
    .local v3, keys:Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 838
    .local v2, key:Ljava/lang/Object;
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 839
    .local v6, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 840
    check-cast v2, Ljava/lang/String;

    .end local v2           #key:Ljava/lang/Object;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 843
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #keys:Ljava/util/Set;
    .end local v6           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v8

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #keys:Ljava/util/Set;
    :cond_1
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 844
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 845
    .local v5, retVal:[Ljava/lang/String;
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 846
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v5, v0

    .line 845
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 848
    :cond_2
    return-object v5
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .locals 5
    .parameter "iface"

    .prologue
    .line 441
    const/4 v1, 0x0

    .line 442
    .local v1, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    monitor-enter v3

    .line 443
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object v1, v0

    .line 444
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    if-nez v1, :cond_0

    .line 446
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to getLastTetherError on an unknown iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/4 v2, 0x1

    .line 449
    :goto_0
    return v2

    .line 444
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 449
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->getLastError()I

    move-result v2

    goto :goto_0
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 816
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 817
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    monitor-enter v7

    .line 818
    :try_start_0
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 819
    .local v3, keys:Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 820
    .local v2, key:Ljava/lang/Object;
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 821
    .local v6, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isAvailable()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 822
    check-cast v2, Ljava/lang/String;

    .end local v2           #key:Ljava/lang/Object;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 825
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #keys:Ljava/util/Set;
    .end local v6           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v8

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #keys:Ljava/util/Set;
    :cond_1
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 826
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 827
    .local v5, retVal:[Ljava/lang/String;
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 828
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v5, v0

    .line 827
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 830
    :cond_2
    return-object v5
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 798
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 799
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    monitor-enter v7

    .line 800
    :try_start_0
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 801
    .local v3, keys:Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 802
    .local v2, key:Ljava/lang/Object;
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 803
    .local v6, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 804
    check-cast v2, Ljava/lang/String;

    .end local v2           #key:Ljava/lang/Object;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 807
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #keys:Ljava/util/Set;
    .end local v6           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v8

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #keys:Ljava/util/Set;
    :cond_1
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 808
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 809
    .local v5, retVal:[Ljava/lang/String;
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 810
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v5, v0

    .line 809
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 812
    :cond_2
    return-object v5
.end method

.method public getUpstreamIfaceRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceRegexs:[Ljava/lang/String;

    return-object v0
.end method

.method public interfaceAdded(Ljava/lang/String;)V
    .locals 9
    .parameter "iface"

    .prologue
    const-string v7, "Tethering"

    .line 324
    const-string v5, "network_management"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 325
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    .line 326
    .local v2, service:Landroid/os/INetworkManagementService;
    const/4 v1, 0x0

    .line 327
    .local v1, found:Z
    const/4 v4, 0x0

    .line 328
    .local v4, usb:Z
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 329
    const/4 v1, 0x1

    .line 331
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 332
    const/4 v1, 0x1

    .line 333
    const/4 v4, 0x1

    .line 335
    :cond_1
    if-nez v1, :cond_2

    .line 336
    const-string v5, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not a tetherable iface, ignoring"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :goto_0
    return-void

    .line 340
    :cond_2
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    monitor-enter v5

    .line 341
    :try_start_0
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 342
    .local v3, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz v3, :cond_3

    .line 343
    const-string v6, "Tethering"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "active iface ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") reported as added, ignoring"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    monitor-exit v5

    goto :goto_0

    .line 349
    .end local v3           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 346
    .restart local v3       #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_3
    :try_start_1
    new-instance v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .end local v3           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    invoke-direct {v3, p0, p1, v6, v4}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;Z)V

    .line 347
    .restart local v3       #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v6, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    invoke-virtual {v3}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->start()V

    .line 349
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    const-string v5, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "interfaceAdded :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public interfaceLinkStatusChanged(Ljava/lang/String;Z)V
    .locals 6
    .parameter "iface"
    .parameter "link"

    .prologue
    .line 281
    const-string v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "interfaceLinkStatusChanged "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v0, 0x0

    .line 283
    .local v0, found:Z
    const/4 v2, 0x0

    .line 284
    .local v2, usb:Z
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 285
    const/4 v0, 0x1

    .line 290
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 307
    :goto_1
    return-void

    .line 286
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 287
    const/4 v0, 0x1

    .line 288
    const/4 v2, 0x1

    goto :goto_0

    .line 292
    :cond_2
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    monitor-enter v3

    .line 293
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 294
    .local v1, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz p2, :cond_4

    .line 295
    if-nez v1, :cond_3

    .line 296
    new-instance v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .end local v1           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, p1, v4, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;Z)V

    .line 297
    .restart local v1       #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->start()V

    .line 306
    :cond_3
    :goto_2
    monitor-exit v3

    goto :goto_1

    .end local v1           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 301
    .restart local v1       #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_4
    if-eqz v1, :cond_3

    .line 302
    const/4 v4, 0x4

    :try_start_1
    invoke-virtual {v1, v4}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    .line 303
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 5
    .parameter "iface"

    .prologue
    .line 354
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    monitor-enter v1

    .line 355
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 356
    .local v0, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-nez v0, :cond_0

    .line 357
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attempting to remove unknown iface ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    monitor-exit v1

    .line 363
    :goto_0
    return-void

    .line 360
    :cond_0
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    .line 361
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    monitor-exit v1

    goto :goto_0

    .end local v0           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isDunRequired()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 789
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10d0008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 791
    .local v0, defaultVal:Z
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tether_dun_required"

    if-eqz v0, :cond_0

    move v4, v5

    :goto_0
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_1

    move v1, v5

    .line 793
    .local v1, result:Z
    :goto_1
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDunRequired "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    return v1

    .end local v1           #result:Z
    :cond_0
    move v4, v6

    .line 791
    goto :goto_0

    :cond_1
    move v1, v6

    goto :goto_1
.end method

.method public isWifi(Ljava/lang/String;)Z
    .locals 5
    .parameter "iface"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 318
    .local v3, regex:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 320
    .end local v3           #regex:Ljava/lang/String;
    :goto_1
    return v4

    .line 317
    .restart local v3       #regex:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 320
    .end local v3           #regex:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 1878
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Tethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    :cond_0
    return-void
.end method

.method public tether(Ljava/lang/String;)I
    .locals 7
    .parameter "iface"

    .prologue
    const/16 v5, 0x14

    const-string v6, ", ignoring"

    const-string v4, "Tethering"

    .line 394
    const-string v2, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tethering "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const/4 v1, 0x0

    .line 396
    .local v1, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    monitor-enter v3

    .line 397
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object v1, v0

    .line 398
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isInternetSharingBlockedByActiveSync()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 403
    const-string v2, "Tethering"

    const-string v2, "[ActiveSync] tether() Internet sharing has banned due to security policy."

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {v1, v5}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    move v2, v5

    .line 419
    :goto_0
    return v2

    .line 398
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 410
    :cond_0
    if-nez v1, :cond_1

    .line 411
    const-string v2, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to Tether an unknown iface :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ignoring"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/4 v2, 0x1

    goto :goto_0

    .line 414
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v2

    if-nez v2, :cond_2

    .line 415
    const-string v2, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to Tether an unavailable iface :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ignoring"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const/4 v2, 0x4

    goto :goto_0

    .line 418
    :cond_2
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    .line 419
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public untether(Ljava/lang/String;)I
    .locals 6
    .parameter "iface"

    .prologue
    const-string v5, ", ignoring"

    const-string v4, "Tethering"

    .line 423
    const-string v2, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Untethering "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/4 v1, 0x0

    .line 425
    .local v1, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    monitor-enter v3

    .line 426
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object v1, v0

    .line 427
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    if-nez v1, :cond_0

    .line 429
    const-string v2, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to Untether an unknown iface :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ignoring"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/4 v2, 0x1

    .line 437
    :goto_0
    return v2

    .line 427
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 432
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 433
    const-string v2, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to Untethered an errored iface :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ignoring"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const/4 v2, 0x4

    goto :goto_0

    .line 436
    :cond_1
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    .line 437
    const/4 v2, 0x0

    goto :goto_0
.end method
