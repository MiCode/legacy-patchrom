.class public Landroid/app/admin/DevicePolicyManager$DeviceInventory;
.super Ljava/lang/Object;
.source "DevicePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeviceInventory"
.end annotation


# instance fields
.field private final mService:Landroid/app/enterprise/IDeviceInfo;

.field final synthetic this$0:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method private constructor <init>(Landroid/app/admin/DevicePolicyManager;)V
    .locals 1
    .parameter

    .prologue
    .line 3685
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->this$0:Landroid/app/admin/DevicePolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3686
    const-string v0, "device_info"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IDeviceInfo$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    .line 3687
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3681
    invoke-direct {p0, p1}, Landroid/app/admin/DevicePolicyManager$DeviceInventory;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    return-void
.end method


# virtual methods
.method public getAvailableCapacityExternal()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3741
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 3743
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getAvailableCapacityExternal()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3748
    :goto_0
    return-object v1

    .line 3744
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3745
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3748
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAvailableCapacityInternal()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3763
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 3765
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getAvailableCapacityInternal()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3770
    :goto_0
    return-object v1

    .line 3766
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3767
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3770
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceMaker()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3851
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 3853
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDeviceMaker()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3858
    :goto_0
    return-object v1

    .line 3854
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3855
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3858
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3796
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 3798
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDeviceName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3803
    :goto_0
    return-object v1

    .line 3799
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3800
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3803
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceOS()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3862
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 3864
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDeviceOS()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3869
    :goto_0
    return-object v1

    .line 3865
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3866
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3869
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceOSVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3873
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 3875
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDeviceOSVersion()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3880
    :goto_0
    return-object v1

    .line 3876
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3877
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3880
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDevicePlatform()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3884
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 3886
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDevicePlatform()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3891
    :goto_0
    return-object v1

    .line 3887
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3888
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3891
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3774
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 3776
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getModelName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3781
    :goto_0
    return-object v1

    .line 3777
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3778
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3781
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getModelNumber()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3785
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 3787
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getModelNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3792
    :goto_0
    return-object v1

    .line 3788
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3789
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3792
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getModemFirmware()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3829
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 3831
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getModemFirmware()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3836
    :goto_0
    return-object v1

    .line 3832
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3833
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3836
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOSBuild()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3818
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 3820
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getOSBuild()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3825
    :goto_0
    return-object v1

    .line 3821
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3822
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3825
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPlatformSDK()I
    .locals 3

    .prologue
    .line 3840
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 3842
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getPlatformSDK()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3847
    :goto_0
    return v1

    .line 3843
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3844
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3847
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3807
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 3809
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getSerialNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3814
    :goto_0
    return-object v1

    .line 3810
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3811
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3814
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTotalCapacityExternal()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3730
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 3732
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getTotalCapacityExternal()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3737
    :goto_0
    return-object v1

    .line 3733
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3734
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3737
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTotalCapacityInternal()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3752
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 3754
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getTotalCapacityInternal()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3759
    :goto_0
    return-object v1

    .line 3755
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3756
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3759
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDeviceCompromised()Z
    .locals 3

    .prologue
    .line 3719
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 3721
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->isDeviceCompromised()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3726
    :goto_0
    return v1

    .line 3722
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3723
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3726
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDeviceLocked()Z
    .locals 3

    .prologue
    .line 3708
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 3710
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->isDeviceLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3715
    :goto_0
    return v1

    .line 3711
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3712
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3715
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDeviceSecure()Z
    .locals 3

    .prologue
    .line 3694
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 3696
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->isDeviceSecure()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3701
    :goto_0
    return v1

    .line 3697
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3698
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3701
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
