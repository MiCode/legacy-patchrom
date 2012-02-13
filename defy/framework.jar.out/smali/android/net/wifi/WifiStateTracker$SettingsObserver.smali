.class Landroid/net/wifi/WifiStateTracker$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "WifiStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateTracker;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiStateTracker;Landroid/os/Handler;)V
    .locals 3
    .parameter
    .parameter "handler"

    .prologue
    const/4 v2, 0x0

    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #getter for: Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/net/wifi/WifiStateTracker;->access$000(Landroid/net/wifi/WifiStateTracker;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "wifi_use_static_ip"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "wifi_static_ip"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "wifi_static_gateway"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "wifi_static_netmask"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "wifi_static_dns1"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "wifi_static_dns2"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 11
    .parameter "selfChange"

    .prologue
    const/4 v10, 0x1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v8, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mUseStaticIp:Z
    invoke-static {v8}, Landroid/net/wifi/WifiStateTracker;->access$600(Landroid/net/wifi/WifiStateTracker;)Z

    move-result v7

    .local v7, wasStaticIp:Z
    const/4 v3, 0x0

    .local v3, oDns2:I
    move v2, v3

    .local v2, oDns1:I
    move v6, v3

    .local v6, oMsk:I
    move v4, v3

    .local v4, oGw:I
    move v5, v3

    .local v5, oIp:I
    if-eqz v7, :cond_0

    iget-object v8, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v8}, Landroid/net/wifi/WifiStateTracker;->access$400(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v8

    iget v5, v8, Landroid/net/DhcpInfo;->ipAddress:I

    iget-object v8, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v8}, Landroid/net/wifi/WifiStateTracker;->access$400(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v8

    iget v4, v8, Landroid/net/DhcpInfo;->gateway:I

    iget-object v8, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v8}, Landroid/net/wifi/WifiStateTracker;->access$400(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v8

    iget v6, v8, Landroid/net/DhcpInfo;->netmask:I

    iget-object v8, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v8}, Landroid/net/wifi/WifiStateTracker;->access$400(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v8

    iget v2, v8, Landroid/net/DhcpInfo;->dns1:I

    iget-object v8, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v8}, Landroid/net/wifi/WifiStateTracker;->access$400(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v8

    iget v3, v8, Landroid/net/DhcpInfo;->dns2:I

    :cond_0
    iget-object v8, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #calls: Landroid/net/wifi/WifiStateTracker;->checkUseStaticIp()V
    invoke-static {v8}, Landroid/net/wifi/WifiStateTracker;->access$700(Landroid/net/wifi/WifiStateTracker;)V

    iget-object v8, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v8}, Landroid/net/wifi/WifiStateTracker;->access$800(Landroid/net/wifi/WifiStateTracker;)Landroid/net/wifi/WifiInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v8

    sget-object v9, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    if-ne v8, v9, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v8, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mUseStaticIp:Z
    invoke-static {v8}, Landroid/net/wifi/WifiStateTracker;->access$600(Landroid/net/wifi/WifiStateTracker;)Z

    move-result v8

    if-ne v7, v8, :cond_3

    if-eqz v7, :cond_4

    iget-object v8, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v8}, Landroid/net/wifi/WifiStateTracker;->access$400(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v8

    iget v8, v8, Landroid/net/DhcpInfo;->ipAddress:I

    if-ne v5, v8, :cond_3

    iget-object v8, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v8}, Landroid/net/wifi/WifiStateTracker;->access$400(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v8

    iget v8, v8, Landroid/net/DhcpInfo;->gateway:I

    if-ne v4, v8, :cond_3

    iget-object v8, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v8}, Landroid/net/wifi/WifiStateTracker;->access$400(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v8

    iget v8, v8, Landroid/net/DhcpInfo;->netmask:I

    if-ne v6, v8, :cond_3

    iget-object v8, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v8}, Landroid/net/wifi/WifiStateTracker;->access$400(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v8

    iget v8, v8, Landroid/net/DhcpInfo;->dns1:I

    if-ne v2, v8, :cond_3

    iget-object v8, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v8}, Landroid/net/wifi/WifiStateTracker;->access$400(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v8

    iget v8, v8, Landroid/net/DhcpInfo;->dns2:I

    if-eq v3, v8, :cond_4

    :cond_3
    move v0, v10

    .local v0, changed:Z
    :goto_1
    if-eqz v0, :cond_1

    iget-object v8, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v8, v10}, Landroid/net/wifi/WifiStateTracker;->resetConnections(Z)V

    iget-object v8, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #calls: Landroid/net/wifi/WifiStateTracker;->configureInterface()V
    invoke-static {v8}, Landroid/net/wifi/WifiStateTracker;->access$900(Landroid/net/wifi/WifiStateTracker;)V

    iget-object v8, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mUseStaticIp:Z
    invoke-static {v8}, Landroid/net/wifi/WifiStateTracker;->access$600(Landroid/net/wifi/WifiStateTracker;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;
    invoke-static {v8}, Landroid/net/wifi/WifiStateTracker;->access$1100(Landroid/net/wifi/WifiStateTracker;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x4

    iget-object v10, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v10}, Landroid/net/wifi/WifiStateTracker;->access$1000(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .end local v0           #changed:Z
    .end local v1           #msg:Landroid/os/Message;
    :cond_4
    const/4 v8, 0x0

    move v0, v8

    goto :goto_1
.end method
