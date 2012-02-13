.class Lcom/motorola/android/wifi/ApEntitlement$2;
.super Landroid/content/BroadcastReceiver;
.source "ApEntitlement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/android/wifi/ApEntitlement;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/wifi/ApEntitlement;


# direct methods
.method constructor <init>(Lcom/motorola/android/wifi/ApEntitlement;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "ApEntitlement"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .local v1, extras:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    const-string v3, "entitlement_state"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    #setter for: Lcom/motorola/android/wifi/ApEntitlement;->mEntitlementCheckState:I
    invoke-static {v2, v3}, Lcom/motorola/android/wifi/ApEntitlement;->access$602(Lcom/motorola/android/wifi/ApEntitlement;I)I

    iget-object v3, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    const-string v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    #setter for: Lcom/motorola/android/wifi/ApEntitlement;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3, v2}, Lcom/motorola/android/wifi/ApEntitlement;->access$702(Lcom/motorola/android/wifi/ApEntitlement;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;

    const-string v2, "ApEntitlement"

    const-string v2, "Recvd ENTITLEMENT_CHECK_STATE_CHANGED, = state"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mEntitlementCheckState:I
    invoke-static {v2}, Lcom/motorola/android/wifi/ApEntitlement;->access$600(Lcom/motorola/android/wifi/ApEntitlement;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    iget-boolean v2, v2, Lcom/motorola/android/wifi/ApEntitlement;->mPendingWifiEnable:Z

    if-ne v2, v5, :cond_1

    const-string v2, "ApEntitlement"

    const-string v2, "Rcvd Entitle faili, mPendingWifiEnable true"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    iput-boolean v4, v2, Lcom/motorola/android/wifi/ApEntitlement;->mPendingWifiEnable:Z

    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/motorola/android/wifi/ApEntitlement;->access$400(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "AP_ENABLE"

    invoke-static {v2, v3, v4}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/motorola/android/wifi/ApEntitlement;->access$700(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiAuthNotif(Z)V
    invoke-static {v2, v4}, Lcom/motorola/android/wifi/ApEntitlement;->access$500(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiAuthErrorNotif(Z)V
    invoke-static {v2, v4}, Lcom/motorola/android/wifi/ApEntitlement;->access$800(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiAuthErrorNotif(Z)V
    invoke-static {v2, v5}, Lcom/motorola/android/wifi/ApEntitlement;->access$800(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/motorola/android/wifi/ApEntitlement;->access$700(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    iget-object v3, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/motorola/android/wifi/ApEntitlement;->access$700(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/net/wifi/WifiManager;

    if-eq v2, v8, :cond_2

    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/motorola/android/wifi/ApEntitlement;->access$700(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    iget-object v3, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/motorola/android/wifi/ApEntitlement;->access$700(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/net/wifi/WifiManager;

    if-ne v2, v7, :cond_0

    :cond_2
    const-string v2, "ApEntitlement"

    const-string v2, "Turn off Wifi as PeriodicEntitlement Failed"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/motorola/android/wifi/ApEntitlement;->access$700(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiAuthNotif(Z)V
    invoke-static {v2, v4}, Lcom/motorola/android/wifi/ApEntitlement;->access$500(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiAuthErrorNotif(Z)V
    invoke-static {v2, v4}, Lcom/motorola/android/wifi/ApEntitlement;->access$800(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiAuthErrorNotif(Z)V
    invoke-static {v2, v5}, Lcom/motorola/android/wifi/ApEntitlement;->access$800(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mEntitlementCheckState:I
    invoke-static {v2}, Lcom/motorola/android/wifi/ApEntitlement;->access$600(Lcom/motorola/android/wifi/ApEntitlement;)I

    move-result v2

    if-ne v2, v7, :cond_5

    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    iget-boolean v2, v2, Lcom/motorola/android/wifi/ApEntitlement;->mPendingWifiEnable:Z

    if-eqz v2, :cond_4

    const-string v2, "ApEntitlement"

    const-string v2, "Entitle state changes to SUCCESS"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    iput-boolean v4, v2, Lcom/motorola/android/wifi/ApEntitlement;->mPendingWifiEnable:Z

    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/motorola/android/wifi/ApEntitlement;->access$700(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v3}, Lcom/motorola/android/wifi/ApEntitlement;->access$900(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiAuthNotif(Z)V
    invoke-static {v2, v4}, Lcom/motorola/android/wifi/ApEntitlement;->access$500(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiConnectNotif(Z)V
    invoke-static {v2, v5}, Lcom/motorola/android/wifi/ApEntitlement;->access$000(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiAuthErrorNotif(Z)V
    invoke-static {v2, v4}, Lcom/motorola/android/wifi/ApEntitlement;->access$800(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/motorola/android/wifi/ApEntitlement;->access$700(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    iget-object v3, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/motorola/android/wifi/ApEntitlement;->access$700(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/net/wifi/WifiManager;

    if-ne v2, v7, :cond_0

    const-string v2, "ApEntitlement"

    const-string v2, "Hotspot is ON (periodic timer, set ready notif"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiConnectNotif(Z)V
    invoke-static {v2, v4}, Lcom/motorola/android/wifi/ApEntitlement;->access$000(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiAuthNotif(Z)V
    invoke-static {v2, v4}, Lcom/motorola/android/wifi/ApEntitlement;->access$500(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiReadyNotif(Z)V
    invoke-static {v2, v5}, Lcom/motorola/android/wifi/ApEntitlement;->access$200(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiAuthErrorNotif(Z)V
    invoke-static {v2, v4}, Lcom/motorola/android/wifi/ApEntitlement;->access$800(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mEntitlementCheckState:I
    invoke-static {v2}, Lcom/motorola/android/wifi/ApEntitlement;->access$600(Lcom/motorola/android/wifi/ApEntitlement;)I

    move-result v2

    if-ne v2, v8, :cond_0

    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    iget-boolean v2, v2, Lcom/motorola/android/wifi/ApEntitlement;->mPendingWifiEnable:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiAuthErrorNotif(Z)V
    invoke-static {v2, v4}, Lcom/motorola/android/wifi/ApEntitlement;->access$800(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiAuthNotif(Z)V
    invoke-static {v2, v5}, Lcom/motorola/android/wifi/ApEntitlement;->access$500(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/motorola/android/wifi/ApEntitlement;->access$400(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "AP_ENABLE"

    invoke-static {v2, v3, v5}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/motorola/android/wifi/ApEntitlement;->access$700(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    iget-object v3, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/motorola/android/wifi/ApEntitlement;->access$700(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/net/wifi/WifiManager;

    if-ne v2, v7, :cond_0

    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiReadyNotif(Z)V
    invoke-static {v2, v4}, Lcom/motorola/android/wifi/ApEntitlement;->access$200(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiAuthNotif(Z)V
    invoke-static {v2, v5}, Lcom/motorola/android/wifi/ApEntitlement;->access$500(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    goto/16 :goto_0
.end method
