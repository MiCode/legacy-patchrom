.class public Landroid/app/admin/DevicePolicyManager$WiFiPolicy;
.super Ljava/lang/Object;
.source "DevicePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WiFiPolicy"
.end annotation


# instance fields
.field private final mInfoService:Landroid/app/enterprise/IWiFiInfoPolicy;

.field final synthetic this$0:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method private constructor <init>(Landroid/app/admin/DevicePolicyManager;)V
    .locals 1
    .parameter

    .prologue
    .line 1489
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;->this$0:Landroid/app/admin/DevicePolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1490
    const-string/jumbo v0, "wifi_info_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IWiFiInfoPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IWiFiInfoPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;->mInfoService:Landroid/app/enterprise/IWiFiInfoPolicy;

    .line 1492
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1485
    invoke-direct {p0, p1}, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    return-void
.end method


# virtual methods
.method public getBSSID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1518
    const-string/jumbo v1, "null"

    .line 1520
    .local v1, str:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;->mInfoService:Landroid/app/enterprise/IWiFiInfoPolicy;

    if-eqz v2, :cond_0

    .line 1521
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;->mInfoService:Landroid/app/enterprise/IWiFiInfoPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IWiFiInfoPolicy;->getBSSID()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1526
    :goto_0
    return-object v2

    .line 1523
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1524
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed at WiFi policy API getBSSID"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    move-object v2, v1

    .line 1526
    goto :goto_0
.end method

.method public getHiddenSSID()Z
    .locals 3

    .prologue
    .line 1508
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;->mInfoService:Landroid/app/enterprise/IWiFiInfoPolicy;

    if-eqz v1, :cond_0

    .line 1509
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;->mInfoService:Landroid/app/enterprise/IWiFiInfoPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWiFiInfoPolicy;->getHiddenSSID()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1514
    :goto_0
    return v1

    .line 1511
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1512
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed at WiFi policy API getHiddenSSID"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1514
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIpAddress()I
    .locals 3

    .prologue
    .line 1531
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;->mInfoService:Landroid/app/enterprise/IWiFiInfoPolicy;

    if-eqz v1, :cond_0

    .line 1532
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;->mInfoService:Landroid/app/enterprise/IWiFiInfoPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWiFiInfoPolicy;->getIpAddress()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1537
    :goto_0
    return v1

    .line 1534
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1535
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed at WiFi policy API getIpAddress"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1537
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getLinkSpeed()I
    .locals 3

    .prologue
    .line 1554
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;->mInfoService:Landroid/app/enterprise/IWiFiInfoPolicy;

    if-eqz v1, :cond_0

    .line 1555
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;->mInfoService:Landroid/app/enterprise/IWiFiInfoPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWiFiInfoPolicy;->getLinkSpeed()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1560
    :goto_0
    return v1

    .line 1557
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1558
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed at WiFi policy API getLinkSpeed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1560
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1541
    const-string/jumbo v1, "null"

    .line 1543
    .local v1, str:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;->mInfoService:Landroid/app/enterprise/IWiFiInfoPolicy;

    if-eqz v2, :cond_0

    .line 1544
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;->mInfoService:Landroid/app/enterprise/IWiFiInfoPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IWiFiInfoPolicy;->getMacAddress()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1549
    :goto_0
    return-object v2

    .line 1546
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1547
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed at WiFi policy API getMacAddress"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    move-object v2, v1

    .line 1549
    goto :goto_0
.end method

.method public getNetworkId()I
    .locals 3

    .prologue
    .line 1565
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;->mInfoService:Landroid/app/enterprise/IWiFiInfoPolicy;

    if-eqz v1, :cond_0

    .line 1566
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;->mInfoService:Landroid/app/enterprise/IWiFiInfoPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWiFiInfoPolicy;->getNetworkId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1571
    :goto_0
    return v1

    .line 1568
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1569
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed at WiFi policy API getNetworkId"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1571
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getRssi()I
    .locals 3

    .prologue
    .line 1576
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;->mInfoService:Landroid/app/enterprise/IWiFiInfoPolicy;

    if-eqz v1, :cond_0

    .line 1577
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;->mInfoService:Landroid/app/enterprise/IWiFiInfoPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWiFiInfoPolicy;->getRssi()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1582
    :goto_0
    return v1

    .line 1579
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1580
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed at WiFi policy API getRssi"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1582
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1495
    const-string/jumbo v1, "null"

    .line 1497
    .local v1, str:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;->mInfoService:Landroid/app/enterprise/IWiFiInfoPolicy;

    if-eqz v2, :cond_0

    .line 1498
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;->mInfoService:Landroid/app/enterprise/IWiFiInfoPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IWiFiInfoPolicy;->getSSID()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1503
    :goto_0
    return-object v2

    .line 1500
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1501
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed at WiFi policy API getSSID"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    move-object v2, v1

    .line 1503
    goto :goto_0
.end method

.method public getScanResults()Ljava/util/List;
    .locals 1
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
    .line 1609
    const/4 v0, 0x0

    .line 1611
    .local v0, lList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    return-object v0
.end method

.method public getSupplicantState()Landroid/net/wifi/SupplicantState;
    .locals 2

    .prologue
    .line 1601
    const/4 v0, 0x0

    .line 1602
    .local v0, sState:Landroid/net/wifi/SupplicantState;
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;->mInfoService:Landroid/app/enterprise/IWiFiInfoPolicy;

    if-eqz v1, :cond_0

    .line 1605
    :cond_0
    return-object v0
.end method

.method public getWifiState()I
    .locals 4

    .prologue
    .line 1586
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;->mInfoService:Landroid/app/enterprise/IWiFiInfoPolicy;

    if-eqz v1, :cond_0

    .line 1588
    :try_start_0
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWifiState"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;->mInfoService:Landroid/app/enterprise/IWiFiInfoPolicy;

    invoke-interface {v3}, Landroid/app/enterprise/IWiFiInfoPolicy;->getWifiState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;->mInfoService:Landroid/app/enterprise/IWiFiInfoPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWiFiInfoPolicy;->getWifiState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1597
    :goto_0
    return v1

    .line 1590
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1591
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed at WiFi policy API getWifiState1"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1597
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1592
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 1593
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed at WiFi policy API getWifiState2"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
