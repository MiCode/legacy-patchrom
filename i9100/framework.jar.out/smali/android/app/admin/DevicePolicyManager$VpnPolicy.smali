.class public Landroid/app/admin/DevicePolicyManager$VpnPolicy;
.super Ljava/lang/Object;
.source "DevicePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VpnPolicy"
.end annotation


# instance fields
.field private final lService:Landroid/app/enterprise/IVpnInfoPolicy;

.field final synthetic this$0:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method private constructor <init>(Landroid/app/admin/DevicePolicyManager;)V
    .locals 3
    .parameter

    .prologue
    .line 1619
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->this$0:Landroid/app/admin/DevicePolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1620
    const-string/jumbo v0, "vpn_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IVpnInfoPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IVpnInfoPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    .line 1621
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vpn policy API -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1616
    invoke-direct {p0, p1}, Landroid/app/admin/DevicePolicyManager$VpnPolicy;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    return-void
.end method


# virtual methods
.method public createProfile(Ljava/lang/String;)V
    .locals 3
    .parameter "type"

    .prologue
    .line 1626
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 1627
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->createProfile(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1632
    :cond_0
    :goto_0
    return-void

    .line 1629
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1630
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed at Vpn policy API createProfile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1711
    const/4 v1, 0x0

    .line 1713
    .local v1, str:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v2, :cond_0

    .line 1714
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IVpnInfoPolicy;->getId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1719
    :cond_0
    :goto_0
    return-object v1

    .line 1716
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1717
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed at Vpn policy API getId"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1687
    const/4 v1, 0x0

    .line 1689
    .local v1, str:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v2, :cond_0

    .line 1690
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IVpnInfoPolicy;->getName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1695
    :cond_0
    :goto_0
    return-object v1

    .line 1692
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1693
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed at Vpn policy API getName"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1699
    const/4 v1, 0x0

    .line 1701
    .local v1, str:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v2, :cond_0

    .line 1702
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IVpnInfoPolicy;->getServerName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1707
    :cond_0
    :goto_0
    return-object v1

    .line 1704
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1705
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed at Vpn policy API getServerName"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getState()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1723
    const/4 v1, 0x0

    .line 1725
    .local v1, str:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v2, :cond_0

    .line 1726
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IVpnInfoPolicy;->getState()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1731
    :cond_0
    :goto_0
    return-object v1

    .line 1728
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1729
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed at Vpn policy API getState"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1675
    const/4 v1, 0x0

    .line 1677
    .local v1, str:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v2, :cond_0

    .line 1678
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IVpnInfoPolicy;->getType()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1683
    :cond_0
    :goto_0
    return-object v1

    .line 1680
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1681
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed at Vpn policy API getType"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 3
    .parameter "Id"

    .prologue
    .line 1656
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 1657
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->setId(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1662
    :cond_0
    :goto_0
    return-void

    .line 1659
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1660
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed at Vpn policy API setId"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 1636
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 1637
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1642
    :cond_0
    :goto_0
    return-void

    .line 1639
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1640
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed at Vpn policy API setName"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 1646
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 1647
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->setServerName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1652
    :cond_0
    :goto_0
    return-void

    .line 1649
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1650
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed at Vpn policy API setServerName"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setState(I)V
    .locals 3
    .parameter "x"

    .prologue
    .line 1666
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 1667
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->setState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1672
    :cond_0
    :goto_0
    return-void

    .line 1669
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1670
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed at Vpn policy API setState"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
