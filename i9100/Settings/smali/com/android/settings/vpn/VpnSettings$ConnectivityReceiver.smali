.class Lcom/android/settings/vpn/VpnSettings$ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VpnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/vpn/VpnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn/VpnSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/vpn/VpnSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 972
    iput-object p1, p0, Lcom/android/settings/vpn/VpnSettings$ConnectivityReceiver;->this$0:Lcom/android/settings/vpn/VpnSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/vpn/VpnSettings;Lcom/android/settings/vpn/VpnSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 972
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings$ConnectivityReceiver;-><init>(Lcom/android/settings/vpn/VpnSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v7, "received connectivity: "

    const-string v6, ": connected? "

    .line 975
    const-string v3, "profile_name"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 976
    .local v1, profileName:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 994
    :goto_0
    return-void

    .line 978
    :cond_0
    const-string v3, "connection_state"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Landroid/net/vpn/VpnState;

    .line 980
    .local v2, s:Landroid/net/vpn/VpnState;
    if-nez v2, :cond_1

    .line 981
    invoke-static {}, Lcom/android/settings/vpn/VpnSettings;->access$1500()Ljava/lang/String;

    move-result-object v3

    const-string v4, "received null connectivity state"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 984
    :cond_1
    iget-object v3, p0, Lcom/android/settings/vpn/VpnSettings$ConnectivityReceiver;->this$0:Lcom/android/settings/vpn/VpnSettings;

    const-string v4, "err"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    #setter for: Lcom/android/settings/vpn/VpnSettings;->mConnectingErrorCode:I
    invoke-static {v3, v4}, Lcom/android/settings/vpn/VpnSettings;->access$1602(Lcom/android/settings/vpn/VpnSettings;I)I

    .line 985
    iget-object v3, p0, Lcom/android/settings/vpn/VpnSettings$ConnectivityReceiver;->this$0:Lcom/android/settings/vpn/VpnSettings;

    #getter for: Lcom/android/settings/vpn/VpnSettings;->mVpnPreferenceMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/settings/vpn/VpnSettings;->access$900(Lcom/android/settings/vpn/VpnSettings;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/vpn/VpnSettings$VpnPreference;

    .line 986
    .local v0, pref:Lcom/android/settings/vpn/VpnSettings$VpnPreference;
    if-eqz v0, :cond_2

    .line 987
    invoke-static {}, Lcom/android/settings/vpn/VpnSettings;->access$1500()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "received connectivity: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": connected? "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   err="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/vpn/VpnSettings$ConnectivityReceiver;->this$0:Lcom/android/settings/vpn/VpnSettings;

    #getter for: Lcom/android/settings/vpn/VpnSettings;->mConnectingErrorCode:I
    invoke-static {v5}, Lcom/android/settings/vpn/VpnSettings;->access$1600(Lcom/android/settings/vpn/VpnSettings;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    iget-object v3, p0, Lcom/android/settings/vpn/VpnSettings$ConnectivityReceiver;->this$0:Lcom/android/settings/vpn/VpnSettings;

    iget-object v4, v0, Lcom/android/settings/vpn/VpnSettings$VpnPreference;->mProfile:Landroid/net/vpn/VpnProfile;

    #calls: Lcom/android/settings/vpn/VpnSettings;->changeState(Landroid/net/vpn/VpnProfile;Landroid/net/vpn/VpnState;)V
    invoke-static {v3, v4, v2}, Lcom/android/settings/vpn/VpnSettings;->access$400(Lcom/android/settings/vpn/VpnSettings;Landroid/net/vpn/VpnProfile;Landroid/net/vpn/VpnState;)V

    goto :goto_0

    .line 991
    :cond_2
    invoke-static {}, Lcom/android/settings/vpn/VpnSettings;->access$1500()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "received connectivity: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": connected? "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", but profile does not exist;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " just ignore it"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
