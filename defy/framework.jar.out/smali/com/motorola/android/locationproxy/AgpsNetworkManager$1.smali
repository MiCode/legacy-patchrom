.class Lcom/motorola/android/locationproxy/AgpsNetworkManager$1;
.super Landroid/content/BroadcastReceiver;
.source "AgpsNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/android/locationproxy/AgpsNetworkManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/locationproxy/AgpsNetworkManager;


# direct methods
.method constructor <init>(Lcom/motorola/android/locationproxy/AgpsNetworkManager;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/android/locationproxy/AgpsNetworkManager$1;->this$0:Lcom/motorola/android/locationproxy/AgpsNetworkManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "hslp_address"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$000(Ljava/lang/String;)V

    const-string v3, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v2

    .local v2, serviceState:Landroid/telephony/ServiceState;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; mIsAgpsPdpEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$100()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$000(Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$100()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/motorola/android/locationproxy/AgpsNetworkManager$1;->this$0:Lcom/motorola/android/locationproxy/AgpsNetworkManager;

    #calls: Lcom/motorola/android/locationproxy/AgpsNetworkManager;->configAgpsApn()V
    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$200(Lcom/motorola/android/locationproxy/AgpsNetworkManager;)V

    iget-object v3, p0, Lcom/motorola/android/locationproxy/AgpsNetworkManager$1;->this$0:Lcom/motorola/android/locationproxy/AgpsNetworkManager;

    #calls: Lcom/motorola/android/locationproxy/AgpsNetworkManager;->isGpsProviderEnabled()Z
    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$300(Lcom/motorola/android/locationproxy/AgpsNetworkManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v5}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$402(I)I

    iget-object v3, p0, Lcom/motorola/android/locationproxy/AgpsNetworkManager$1;->this$0:Lcom/motorola/android/locationproxy/AgpsNetworkManager;

    #calls: Lcom/motorola/android/locationproxy/AgpsNetworkManager;->startUsingAgpsPdp()Z
    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$500(Lcom/motorola/android/locationproxy/AgpsNetworkManager;)Z

    .end local v2           #serviceState:Landroid/telephony/ServiceState;
    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "com.motorola.android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .local v1, info:Landroid/net/NetworkInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceived: info=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$000(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/16 v4, 0x1e

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "onReceive: Agps PDP enable successfully"

    #calls: Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$000(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$102(Z)Z

    iget-object v3, p0, Lcom/motorola/android/locationproxy/AgpsNetworkManager$1;->this$0:Lcom/motorola/android/locationproxy/AgpsNetworkManager;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$600()Ljava/util/Timer;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v4, "Cancel the scheduled timer task"

    #calls: Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$000(Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$600()Ljava/util/Timer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Timer;->cancel()V

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$602(Ljava/util/Timer;)Ljava/util/Timer;

    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v5}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$402(I)I

    invoke-static {}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$800()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "hslp_address"

    invoke-static {v3, v7}, Lcom/motorola/android/locationproxy/settings/Settings$Supl;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$702(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$700()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->configAgpsNetwork(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_3
    const-string v3, "onReceived: Agps PDP disconnected"

    #calls: Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$000(Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$100()Z

    move-result v3

    if-ne v3, v6, :cond_4

    const-string v3, "onReceived: Trying to restart Agps PDP"

    #calls: Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$000(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$102(Z)Z

    :cond_4
    iget-object v3, p0, Lcom/motorola/android/locationproxy/AgpsNetworkManager$1;->this$0:Lcom/motorola/android/locationproxy/AgpsNetworkManager;

    #calls: Lcom/motorola/android/locationproxy/AgpsNetworkManager;->scheduleStart()V
    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$900(Lcom/motorola/android/locationproxy/AgpsNetworkManager;)V

    goto/16 :goto_0

    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_5
    const-string v3, "action_supl_apn_changed"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/motorola/android/locationproxy/AgpsNetworkManager$1;->this$0:Lcom/motorola/android/locationproxy/AgpsNetworkManager;

    #calls: Lcom/motorola/android/locationproxy/AgpsNetworkManager;->configAgpsApn()V
    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$200(Lcom/motorola/android/locationproxy/AgpsNetworkManager;)V

    goto/16 :goto_0

    :cond_6
    const-string v3, "action_hslp_addr_changed"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$100()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "onReceive: Hslp Address changed"

    #calls: Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$000(Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$800()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "hslp_address"

    invoke-static {v3, v7}, Lcom/motorola/android/locationproxy/settings/Settings$Supl;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$702(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$700()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->configAgpsNetwork(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
