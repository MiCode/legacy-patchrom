.class public Landroid/app/admin/DevicePolicyManager$RoamingPolicy;
.super Ljava/lang/Object;
.source "DevicePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RoamingPolicy"
.end annotation


# instance fields
.field private final mService:Landroid/app/enterprise/IRoamingPolicy;

.field final synthetic this$0:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method private constructor <init>(Landroid/app/admin/DevicePolicyManager;)V
    .locals 1
    .parameter

    .prologue
    .line 2976
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->this$0:Landroid/app/admin/DevicePolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2977
    const-string/jumbo v0, "roaming_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IRoamingPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRoamingPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    .line 2978
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2972
    invoke-direct {p0, p1}, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    return-void
.end method


# virtual methods
.method public isRoamingDataEnabled()Z
    .locals 3

    .prologue
    .line 3069
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_0

    .line 3071
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRoamingPolicy;->isRoamingDataEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3076
    :goto_0
    return v1

    .line 3072
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3073
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3076
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRoamingPushEnabled()Z
    .locals 3

    .prologue
    .line 3036
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_0

    .line 3038
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRoamingPolicy;->isRoamingPushEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3043
    :goto_0
    return v1

    .line 3039
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3040
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3043
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isRoamingSyncEnabled()Z
    .locals 3

    .prologue
    .line 3002
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_0

    .line 3004
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRoamingPolicy;->isRoamingSyncEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3009
    :goto_0
    return v1

    .line 3005
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3006
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3009
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setRoamingData(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 3053
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_0

    .line 3055
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRoamingPolicy;->setRoamingData(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3060
    :cond_0
    :goto_0
    return-void

    .line 3056
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3057
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRoamingPush(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 3019
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_0

    .line 3021
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRoamingPolicy;->setRoamingPush(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3026
    :cond_0
    :goto_0
    return-void

    .line 3022
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3023
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRoamingSync(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 2987
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_0

    .line 2989
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRoamingPolicy;->setRoamingSync(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2994
    :cond_0
    :goto_0
    return-void

    .line 2990
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2991
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
