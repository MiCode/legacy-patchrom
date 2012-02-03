.class Lcom/android/server/WifiWatchdogService$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiWatchdogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiWatchdogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiWatchdogService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiWatchdogService;)V
    .locals 0
    .parameter

    .prologue
    .line 1111
    iput-object p1, p0, Lcom/android/server/WifiWatchdogService$2;->this$0:Lcom/android/server/WifiWatchdogService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private handleNetworkStateChanged(Landroid/net/NetworkInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 1131
    sget-object v1, Lcom/android/server/WifiWatchdogService$3;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1150
    :cond_0
    :goto_0
    return-void

    .line 1133
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/WifiWatchdogService$2;->this$0:Lcom/android/server/WifiWatchdogService;

    #getter for: Lcom/android/server/WifiWatchdogService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/server/WifiWatchdogService;->access$1500(Lcom/android/server/WifiWatchdogService;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 1134
    .local v0, wifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1143
    iget-object v1, p0, Lcom/android/server/WifiWatchdogService$2;->this$0:Lcom/android/server/WifiWatchdogService;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/server/WifiWatchdogService;->onConnected(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/WifiWatchdogService;->access$1600(Lcom/android/server/WifiWatchdogService;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1147
    .end local v0           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/WifiWatchdogService$2;->this$0:Lcom/android/server/WifiWatchdogService;

    #calls: Lcom/android/server/WifiWatchdogService;->onDisconnected()V
    invoke-static {v1}, Lcom/android/server/WifiWatchdogService;->access$1700(Lcom/android/server/WifiWatchdogService;)V

    goto :goto_0

    .line 1131
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleWifiStateChanged(I)V
    .locals 1
    .parameter "wifiState"

    .prologue
    .line 1153
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1154
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService$2;->this$0:Lcom/android/server/WifiWatchdogService;

    #calls: Lcom/android/server/WifiWatchdogService;->quit()V
    invoke-static {v0}, Lcom/android/server/WifiWatchdogService;->access$1800(Lcom/android/server/WifiWatchdogService;)V

    .line 1158
    :cond_0
    :goto_0
    return-void

    .line 1155
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1156
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService$2;->this$0:Lcom/android/server/WifiWatchdogService;

    #calls: Lcom/android/server/WifiWatchdogService;->onEnabled()V
    invoke-static {v0}, Lcom/android/server/WifiWatchdogService;->access$1900(Lcom/android/server/WifiWatchdogService;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1115
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1116
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1117
    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    invoke-direct {p0, v1}, Lcom/android/server/WifiWatchdogService$2;->handleNetworkStateChanged(Landroid/net/NetworkInfo;)V

    .line 1123
    :cond_0
    :goto_0
    return-void

    .line 1119
    :cond_1
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1120
    const-string v1, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/WifiWatchdogService$2;->handleWifiStateChanged(I)V

    goto :goto_0
.end method
