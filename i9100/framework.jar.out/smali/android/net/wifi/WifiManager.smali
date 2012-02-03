.class public Landroid/net/wifi/WifiManager;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiManager$1;,
        Landroid/net/wifi/WifiManager$MulticastLock;,
        Landroid/net/wifi/WifiManager$WifiLock;
    }
.end annotation


# static fields
.field public static final ACTION_PICK_WIFI_NETWORK:Ljava/lang/String; = "android.net.wifi.PICK_WIFI_NETWORK"

.field public static final ACTION_WIFI_DIRECT_NOTI:Ljava/lang/String; = "android.net.wifidirect.DIRECT_STATE_CHANGED"

.field public static final DIRECT_CREATE_LINK_COMPLETE_ACTION:Ljava/lang/String; = "android.net.wifidirect.CREATE_LINK_COMPLETE"

.field public static final DIRECT_DEVICE_AUDIO:I = 0xb

.field public static final DIRECT_DEVICE_CAMERA:I = 0x4

.field public static final DIRECT_DEVICE_COMPUTER:I = 0x1

.field public static final DIRECT_DEVICE_DISPLAY:I = 0x7

.field public static final DIRECT_DEVICE_GAME:I = 0x9

.field public static final DIRECT_DEVICE_INPUT:I = 0x2

.field public static final DIRECT_DEVICE_MULTIMEDIA:I = 0x8

.field public static final DIRECT_DEVICE_NETWORK:I = 0x6

.field public static final DIRECT_DEVICE_PRINTER:I = 0x3

.field public static final DIRECT_DEVICE_STORAGE:I = 0x5

.field public static final DIRECT_DEVICE_TELEPHONE:I = 0xa

.field public static final DIRECT_GO_READY_ACTION:Ljava/lang/String; = "android.net.wifidirect.DIRECT_GO_READY"

.field public static final DIRECT_LINK_DOWN_ACTION:Ljava/lang/String; = "android.net.wifidirect.GO_LINK_DOWN"

.field public static final DIRECT_PEER_CONNECTED_ACTION:Ljava/lang/String; = "android.net.wifidirect.DIRECT_PEER_CONNECTED"

.field public static final DIRECT_PEER_DISCONNECTED_ACTION:Ljava/lang/String; = "android.net.wifidirect.CREATE_LINK_FAIL"

.field public static final DIRECT_PEER_FOUND_ACTION:Ljava/lang/String; = "android.net.wifidirect.FOUND_PEERS"

.field public static final DIRECT_PROVISION_REQUEST_ACTION:Ljava/lang/String; = "android.net.wifidirect.PROVISION_DISCOVERY_REQ"

.field public static final DIRECT_PROVISION_RESPONSE_ACTION:Ljava/lang/String; = "android.net.wifidirect.PROVISION_DISCOVERY_RESP"

.field public static final DIRECT_STA_DISASSOC_ACTION:Ljava/lang/String; = "android.net.wifidirect.STA_DISASSOC"

.field public static final DIRECT_WPS_DISPLAY:I = 0x0

.field public static final DIRECT_WPS_KEYPAD:I = 0x1

.field public static final DIRECT_WPS_PBC:I = 0x2

.field public static final ERROR_AUTHENTICATING:I = 0x1

.field public static final EXTRA_BSSID:Ljava/lang/String; = "bssid"

.field public static final EXTRA_BYTE_DATA:Ljava/lang/String; = "byteData"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final EXTRA_NEW_RSSI:Ljava/lang/String; = "newRssi"

.field public static final EXTRA_NEW_STATE:Ljava/lang/String; = "newState"

.field public static final EXTRA_NOTI_TYPE:Ljava/lang/String; = "notiType"

.field public static final EXTRA_PREVIOUS_WIFI_AP_STATE:Ljava/lang/String; = "previous_wifi_state"

.field public static final EXTRA_PREVIOUS_WIFI_STATE:Ljava/lang/String; = "previous_wifi_state"

.field public static final EXTRA_SUPPLICANT_CONNECTED:Ljava/lang/String; = "connected"

.field public static final EXTRA_SUPPLICANT_ERROR:Ljava/lang/String; = "supplicantError"

.field public static final EXTRA_WIFI_AP_STATE:Ljava/lang/String; = "wifi_state"

.field public static final EXTRA_WIFI_ENABLE_SOON:Ljava/lang/String; = "wifi_enable_soon"

.field public static final EXTRA_WIFI_STATE:Ljava/lang/String; = "wifi_state"

.field public static final EXTRA_WIFI_WPS:Ljava/lang/String; = "wps_event"

.field public static final GET_WPS_EVENT_ACTION:Ljava/lang/String; = "android.net.wifi.GET_WPS_EVENT"

.field private static final MAX_ACTIVE_LOCKS:I = 0x32

.field private static final MAX_RSSI:I = -0x37

.field private static final MIN_RSSI:I = -0x64

.field public static final NETWORK_IDS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.NETWORK_IDS_CHANGED"

.field public static final NETWORK_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.STATE_CHANGE"

.field public static final RSSI_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.RSSI_CHANGED"

.field public static final SCAN_RESULTS_AVAILABLE_ACTION:Ljava/lang/String; = "android.net.wifi.SCAN_RESULTS"

.field public static final SHOW_AP_LIST_DIALOG_ACTION:Ljava/lang/String; = "android.net.wifi.SHOW_AP_LIST_DIALOG"

.field public static final SHOW_EAP_MESSAGE_DIALOG_ACTION:Ljava/lang/String; = "android.net.wifi.SHOW_EAP_MESSAGE_DIALOG"

.field public static final SUPPLICANT_CONNECTION_CHANGE_ACTION:Ljava/lang/String; = "android.net.wifi.supplicant.CONNECTION_CHANGE"

.field public static final SUPPLICANT_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.supplicant.STATE_CHANGE"

.field private static final TAG:Ljava/lang/String; = "WifiManager"

.field public static final WIFI_AP_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_AP_STATE_CHANGED"

.field public static final WIFI_AP_STATE_DISABLED:I = 0x1

.field public static final WIFI_AP_STATE_DISABLING:I = 0x0

.field public static final WIFI_AP_STATE_ENABLED:I = 0x3

.field public static final WIFI_AP_STATE_ENABLING:I = 0x2

.field public static final WIFI_AP_STATE_FAILED:I = 0x4

.field public static final WIFI_MODE_FULL:I = 0x1

.field public static final WIFI_MODE_FULL_HIGH_PERF:I = 0x3

.field public static final WIFI_MODE_SCAN_ONLY:I = 0x2

.field public static final WIFI_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_STATE_CHANGED"

.field public static final WIFI_STATE_DISABLED:I = 0x1

.field public static final WIFI_STATE_DISABLING:I = 0x0

.field public static final WIFI_STATE_ENABLED:I = 0x3

.field public static final WIFI_STATE_ENABLING:I = 0x2

.field public static final WIFI_STATE_UNKNOWN:I = 0x4

.field public static final WIFI_WPS_FAIL:I = 0x2

.field public static final WIFI_WPS_OVERLAP:I = 0x3

.field public static final WIFI_WPS_SUCCESS:I = 0x1

.field public static final WIFI_WPS_TIMEOUT:I = 0x4

.field public static final WIFI_WPS_UNDEFINE:I = 0x5


# instance fields
.field private mActiveLockCount:I

.field mHandler:Landroid/os/Handler;

.field private mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

.field mService:Landroid/net/wifi/IWifiManager;


# direct methods
.method public constructor <init>(Landroid/net/wifi/IWifiManager;Landroid/os/Handler;)V
    .locals 1
    .parameter "service"
    .parameter "handler"

    .prologue
    .line 965
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 967
    iput-object p1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    .line 969
    iput-object p2, p0, Landroid/net/wifi/WifiManager;->mHandler:Landroid/os/Handler;

    .line 971
    new-instance v0, Landroid/net/wifi/WifiProgressStore;

    invoke-direct {v0}, Landroid/net/wifi/WifiProgressStore;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    .line 973
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$008(Landroid/net/wifi/WifiManager;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$010(Landroid/net/wifi/WifiManager;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method private addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .parameter "config"

    .prologue
    .line 1137
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1141
    :goto_0
    return v1

    .line 1139
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1141
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static calculateSignalLevel(II)I
    .locals 4
    .parameter "rssi"
    .parameter "numLevels"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v3, -0x64

    .line 2657
    if-nez p0, :cond_1

    .line 2675
    :cond_0
    :goto_0
    return v1

    .line 2663
    :cond_1
    if-le p0, v3, :cond_0

    .line 2667
    const/16 v1, -0x37

    if-lt p0, v1, :cond_2

    .line 2669
    sub-int v1, p1, v2

    goto :goto_0

    .line 2673
    :cond_2
    const/16 v1, 0x2d

    sub-int v2, p1, v2

    div-int v0, v1, v2

    .line 2675
    .local v0, partitionSize:I
    sub-int v1, p0, v3

    div-int/2addr v1, v0

    goto :goto_0
.end method

.method public static compareSignalLevel(II)I
    .locals 1
    .parameter "rssiA"
    .parameter "rssiB"

    .prologue
    .line 2703
    sub-int v0, p0, p1

    return v0
.end method


# virtual methods
.method public addNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .parameter "config"

    .prologue
    const/4 v0, -0x1

    .line 1059
    if-nez p1, :cond_0

    .line 1067
    :goto_0
    return v0

    .line 1065
    :cond_0
    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1067
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    goto :goto_0
.end method

.method public checkWpsInProgress()Z
    .locals 1

    .prologue
    .line 1687
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0}, Landroid/net/wifi/WifiProgressStore;->getWpsInProgress()Z

    move-result v0

    return v0
.end method

.method public configureDirectPeerInterface()V
    .locals 2

    .prologue
    .line 2207
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->configureDirectPeerInterface()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2215
    :goto_0
    return-void

    .line 2209
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2211
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public connectPeerWithProvision(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "macAddr"
    .parameter "pin"

    .prologue
    .line 2329
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->connectPeerWithProvision(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2333
    :goto_0
    return v1

    .line 2331
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2333
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public connectToP2PNetwork(Ljava/lang/String;)Z
    .locals 2
    .parameter "DevAddr"

    .prologue
    .line 2233
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->connectToP2PNetwork(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2237
    :goto_0
    return v1

    .line 2235
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2237
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;
    .locals 2
    .parameter "tag"

    .prologue
    .line 3321
    new-instance v0, Landroid/net/wifi/WifiManager$MulticastLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/net/wifi/WifiManager$MulticastLock;-><init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 2
    .parameter "lockType"
    .parameter "tag"

    .prologue
    .line 3253
    new-instance v0, Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/net/wifi/WifiManager$WifiLock;-><init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 3
    .parameter "tag"

    .prologue
    .line 3285
    new-instance v0, Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Landroid/net/wifi/WifiManager$WifiLock;-><init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public disableNetwork(I)Z
    .locals 2
    .parameter "netId"

    .prologue
    .line 1239
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->disableNetwork(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1243
    :goto_0
    return v1

    .line 1241
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1243
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disconnect()Z
    .locals 2

    .prologue
    .line 1265
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->disconnect()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1269
    :goto_0
    return v1

    .line 1267
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1269
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disconnectWifiDirectPeer(Ljava/lang/String;)Z
    .locals 2
    .parameter "macAddr"

    .prologue
    .line 2047
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->disconnectWifiDirectPeer(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2051
    :goto_0
    return v1

    .line 2049
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2051
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableNetwork(IZ)Z
    .locals 2
    .parameter "netId"
    .parameter "disableOthers"

    .prologue
    .line 1209
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->enableNetwork(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1213
    :goto_0
    return v1

    .line 1211
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1213
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1017
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConfiguredNetworks()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1021
    :goto_0
    return-object v1

    .line 1019
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1021
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 2

    .prologue
    .line 1443
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1447
    :goto_0
    return-object v1

    .line 1445
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1447
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentTime()J
    .locals 2

    .prologue
    .line 1681
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0}, Landroid/net/wifi/WifiProgressStore;->getCurrentTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDeviceInfoLists()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1999
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getDeviceInfoLists()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2003
    :goto_0
    return-object v1

    .line 2001
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2003
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 2

    .prologue
    .line 1859
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1863
    :goto_0
    return-object v1

    .line 1861
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1863
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDirectWpsPin()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2015
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getDirectWpsPin()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2019
    :goto_0
    return-object v1

    .line 2017
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2019
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNumAllowedChannels()I
    .locals 2

    .prologue
    .line 1761
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getNumAllowedChannels()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1765
    :goto_0
    return v1

    .line 1763
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1765
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getNumberOfWAPIASCertificate()I
    .locals 2

    .prologue
    .line 3713
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getNumberOfWAPIASCertificate()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3717
    :goto_0
    return v1

    .line 3715
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3717
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNumberOfWAPIUserCertificate()I
    .locals 2

    .prologue
    .line 3765
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getNumberOfWAPIUserCertificate()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3769
    :goto_0
    return v1

    .line 3767
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3769
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getP2PScanResults()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2257
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getP2PScanResults()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2261
    :goto_0
    return-object v1

    .line 2259
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2261
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPER()I
    .locals 2

    .prologue
    .line 2435
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getPER()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2439
    :goto_0
    return v1

    .line 2437
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2439
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getProgressLapseTime()I
    .locals 1

    .prologue
    .line 1663
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0}, Landroid/net/wifi/WifiProgressStore;->getLapseTime()I

    move-result v0

    return v0
.end method

.method public getProgressMode()I
    .locals 1

    .prologue
    .line 1669
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0}, Landroid/net/wifi/WifiProgressStore;->getProgressMode()I

    move-result v0

    return v0
.end method

.method public getProgressPinNumber()I
    .locals 1

    .prologue
    .line 1675
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0}, Landroid/net/wifi/WifiProgressStore;->getProgressPinNumber()I

    move-result v0

    return v0
.end method

.method public getProgressValue()I
    .locals 1

    .prologue
    .line 1657
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0}, Landroid/net/wifi/WifiProgressStore;->getProgressValue()I

    move-result v0

    return v0
.end method

.method public getRoamDelta()I
    .locals 2

    .prologue
    .line 2531
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getRoamDelta()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2535
    :goto_0
    return v1

    .line 2533
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2535
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getRoamScanPeriod()I
    .locals 2

    .prologue
    .line 2579
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getRoamScanPeriod()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2583
    :goto_0
    return v1

    .line 2581
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2583
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getRoamTrigger()I
    .locals 2

    .prologue
    .line 2483
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getRoamTrigger()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2487
    :goto_0
    return v1

    .line 2485
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2487
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getScanResults()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1467
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getScanResults()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1471
    :goto_0
    return-object v1

    .line 1469
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1471
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getValidChannelCounts()[I
    .locals 2

    .prologue
    .line 1833
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getValidChannelCounts()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1837
    :goto_0
    return-object v1

    .line 1835
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1837
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWAPIASCertificateName(I)Ljava/lang/String;
    .locals 2
    .parameter "iIndex"

    .prologue
    .line 3739
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->getWAPIASCertificateName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3743
    :goto_0
    return-object v1

    .line 3741
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3743
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWAPIUserCertificateName(I)Ljava/lang/String;
    .locals 2
    .parameter "iIndex"

    .prologue
    .line 3791
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->getWAPIUserCertificateName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3795
    :goto_0
    return-object v1

    .line 3793
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3795
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .prologue
    .line 2821
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2825
    :goto_0
    return-object v1

    .line 2823
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2825
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifiApState()I
    .locals 2

    .prologue
    .line 2771
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApEnabledState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2775
    :goto_0
    return v1

    .line 2773
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2775
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public getWifiDirectSetting()Z
    .locals 2

    .prologue
    .line 2377
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiDirectSetting()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2381
    :goto_0
    return v1

    .line 2379
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2381
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifiState()I
    .locals 2

    .prologue
    .line 2411
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiEnabledState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2415
    :goto_0
    return v1

    .line 2413
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2415
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public initializeMulticastFiltering()Z
    .locals 2

    .prologue
    .line 3685
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->initializeMulticastFiltering()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3687
    const/4 v1, 0x1

    .line 3691
    :goto_0
    return v1

    .line 3689
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3691
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDirectConnected()Z
    .locals 2

    .prologue
    .line 2127
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isDirectConnected()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2131
    :goto_0
    return v1

    .line 2129
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2131
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDirectInitialized()Z
    .locals 2

    .prologue
    .line 2079
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isDirectInitialized()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2083
    :goto_0
    return v1

    .line 2081
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2083
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isGOCreated()Z
    .locals 2

    .prologue
    .line 2095
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isGOCreated()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2099
    :goto_0
    return v1

    .line 2097
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2099
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isGcCreated()Z
    .locals 2

    .prologue
    .line 2111
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isGcCreated()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2115
    :goto_0
    return v1

    .line 2113
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2115
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMulticastEnabled()Z
    .locals 2

    .prologue
    .line 3661
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isMulticastEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3665
    :goto_0
    return v1

    .line 3663
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3665
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isShowingAccessPointListDialog()Z
    .locals 2

    .prologue
    .line 1713
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isShowingAccessPointListDialog()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1717
    :goto_0
    return v1

    .line 1715
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1717
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWifiApEnabled()Z
    .locals 2

    .prologue
    .line 2799
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWifiEnabled()Z
    .locals 2

    .prologue
    .line 2627
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pingSupplicant()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1345
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    if-nez v1, :cond_0

    move v1, v2

    .line 1355
    :goto_0
    return v1

    .line 1351
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->pingSupplicant()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1353
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    move v1, v2

    .line 1355
    goto :goto_0
.end method

.method public reassociate()Z
    .locals 2

    .prologue
    .line 1321
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->reassociate()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1325
    :goto_0
    return v1

    .line 1323
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1325
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reconnect()Z
    .locals 2

    .prologue
    .line 1293
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->reconnect()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1297
    :goto_0
    return v1

    .line 1295
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1297
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeNetwork(I)Z
    .locals 2
    .parameter "netId"

    .prologue
    .line 1169
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->removeNetwork(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1173
    :goto_0
    return v1

    .line 1171
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1173
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public saveConfiguration()Z
    .locals 2

    .prologue
    .line 1501
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->saveConfiguration()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1505
    :goto_0
    return v1

    .line 1503
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1505
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public saveCurrentTime(J)V
    .locals 1
    .parameter "currentTime"

    .prologue
    .line 1641
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiProgressStore;->setCurrentTime(J)V

    .line 1643
    return-void
.end method

.method public saveProgressLapseTime(I)V
    .locals 1
    .parameter "saveTime"

    .prologue
    .line 1613
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiProgressStore;->setLapseTime(I)V

    .line 1615
    return-void
.end method

.method public saveProgressMode(I)V
    .locals 1
    .parameter "saveDialogMode"

    .prologue
    .line 1627
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiProgressStore;->setProgressMode(I)V

    .line 1629
    return-void
.end method

.method public saveProgressPinNumber(I)V
    .locals 1
    .parameter "savePinNumber"

    .prologue
    .line 1635
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiProgressStore;->setProgressPinNumber(I)V

    .line 1637
    return-void
.end method

.method public saveProgressValue(I)V
    .locals 1
    .parameter "saveValue"

    .prologue
    .line 1619
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiProgressStore;->setProgressValue(I)V

    .line 1621
    return-void
.end method

.method public sendProvisionRequest(ILjava/lang/String;)Z
    .locals 2
    .parameter "provision_method"
    .parameter "macAddr"

    .prologue
    .line 2281
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->sendProvisionRequest(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2285
    :goto_0
    return v1

    .line 2283
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2285
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendProvisionResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "cfgMethod"
    .parameter "macAddr"
    .parameter "mPin"

    .prologue
    .line 2305
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/wifi/IWifiManager;->sendProvisionResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2309
    :goto_0
    return v1

    .line 2307
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2309
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDeviceDiscoveryEnabled(ZZ)Z
    .locals 2
    .parameter "enable"
    .parameter "bListen"

    .prologue
    .line 1983
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->setDeviceDiscoveryEnabled(ZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1987
    :goto_0
    return v1

    .line 1985
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1987
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDirectAPEnabled(ZLjava/lang/String;)Z
    .locals 2
    .parameter "enable"
    .parameter "mSSID"

    .prologue
    .line 2063
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->setDirectAPEnabled(ZLjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2067
    :goto_0
    return v1

    .line 2065
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2067
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNumAllowedChannels(IZ)Z
    .locals 2
    .parameter "numChannels"
    .parameter "persist"

    .prologue
    .line 1803
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->setNumAllowedChannels(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1807
    :goto_0
    return v1

    .line 1805
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1807
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRoamBand(I)Z
    .locals 2
    .parameter "roamBand"

    .prologue
    .line 2603
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setRoamBand(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2607
    :goto_0
    return v1

    .line 2605
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2607
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRoamDelta(I)Z
    .locals 2
    .parameter "roamDelta"

    .prologue
    .line 2507
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setRoamDelta(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2511
    :goto_0
    return v1

    .line 2509
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2511
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRoamScanPeriod(I)Z
    .locals 2
    .parameter "roamScanPeriod"

    .prologue
    .line 2555
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setRoamScanPeriod(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2559
    :goto_0
    return v1

    .line 2557
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2559
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRoamTrigger(I)Z
    .locals 2
    .parameter "roamTrigger"

    .prologue
    .line 2459
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setRoamTrigger(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2463
    :goto_0
    return v1

    .line 2461
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2463
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setShowAccessPointListDialog(Z)Z
    .locals 2
    .parameter "enable"

    .prologue
    .line 1729
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setShowAccessPointListDialog(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1733
    :goto_0
    return v1

    .line 1731
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1733
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSupplicantAutoConn(Z)Z
    .locals 2
    .parameter "enabled"

    .prologue
    .line 2175
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setSupplicantAutoConn(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2179
    :goto_0
    return v1

    .line 2177
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2179
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSupplicantAutoScan(Z)Z
    .locals 2
    .parameter "enabled"

    .prologue
    .line 2191
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setSupplicantAutoScan(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2195
    :goto_0
    return v1

    .line 2193
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2195
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .parameter "wifiConfig"

    .prologue
    .line 2849
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2851
    const/4 v1, 0x1

    .line 2855
    :goto_0
    return v1

    .line 2853
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2855
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 2
    .parameter "wifiConfig"
    .parameter "enabled"

    .prologue
    .line 2737
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2741
    :goto_0
    return v1

    .line 2739
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2741
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiDirectEnabled(ZLandroid/net/wifi/WifiConfiguration;I)Z
    .locals 2
    .parameter "enable"
    .parameter "config"
    .parameter "intent"

    .prologue
    .line 1967
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/wifi/IWifiManager;->setWifiDirectEnabled(ZLandroid/net/wifi/WifiConfiguration;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1971
    :goto_0
    return v1

    .line 1969
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1971
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiDirectPassword(Ljava/lang/String;)I
    .locals 2
    .parameter "mPassword"

    .prologue
    .line 2159
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiDirectPassword(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2163
    :goto_0
    return v1

    .line 2161
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2163
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiDirectSSID(Ljava/lang/String;)I
    .locals 2
    .parameter "mSsid"

    .prologue
    .line 2143
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiDirectSSID(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2147
    :goto_0
    return v1

    .line 2145
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2147
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiDirectSetting(Z)Z
    .locals 2
    .parameter "bDirect"

    .prologue
    .line 2353
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiDirectSetting(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2357
    :goto_0
    return v1

    .line 2355
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2357
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiEnabled(Z)Z
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1889
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1893
    :goto_0
    return v1

    .line 1891
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1893
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiEnabledDialog(Z)Z
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1941
    const-string v1, "WifiManager"

    const-string/jumbo v2, "setWifiEnabledDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiEnabledDialog(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1949
    :goto_0
    return v1

    .line 1947
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1949
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWpsInProgress(Z)V
    .locals 1
    .parameter "inWpsProgress"

    .prologue
    .line 1649
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiProgressStore;->setWpsInProgress(Z)V

    .line 1651
    return-void
.end method

.method public showApDialog()Z
    .locals 2

    .prologue
    .line 1701
    const-string v0, "WifiManager"

    const-string/jumbo v1, "showApDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isShowingAccessPointListDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shutdown()Z
    .locals 2

    .prologue
    .line 1913
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->shutdown()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1917
    :goto_0
    return v1

    .line 1915
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1917
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startScan()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1379
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/net/wifi/IWifiManager;->startScan(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1381
    const/4 v1, 0x1

    .line 1385
    :goto_0
    return v1

    .line 1383
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    move v1, v3

    .line 1385
    goto :goto_0
.end method

.method public startScanActive()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1417
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/net/wifi/IWifiManager;->startScan(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 1423
    :goto_0
    return v1

    .line 1421
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1423
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public stopWifiDirectWps()Z
    .locals 2

    .prologue
    .line 2031
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->stopWifiDirectWps()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2035
    :goto_0
    return v1

    .line 2033
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2035
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .parameter "config"

    .prologue
    .line 1105
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-gez v0, :cond_1

    .line 1107
    :cond_0
    const/4 v0, -0x1

    .line 1111
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    goto :goto_0
.end method

.method public wpsCommandCancel()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1589
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiManager;->setWpsInProgress(Z)V

    .line 1593
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->wpsCommandCancel()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1597
    :goto_0
    return v1

    .line 1595
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    move v1, v2

    .line 1597
    goto :goto_0
.end method

.method public wpsPbcConnect()Z
    .locals 2

    .prologue
    .line 1531
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiManager;->setWpsInProgress(Z)V

    .line 1533
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->wpsPbcConnect()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1537
    :goto_0
    return v1

    .line 1535
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1537
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public wpsPinConnect(Ljava/lang/String;)I
    .locals 2
    .parameter "bssid"

    .prologue
    .line 1559
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiManager;->setWpsInProgress(Z)V

    .line 1561
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->wpsPinConnect(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1565
    :goto_0
    return v1

    .line 1563
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1565
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method
