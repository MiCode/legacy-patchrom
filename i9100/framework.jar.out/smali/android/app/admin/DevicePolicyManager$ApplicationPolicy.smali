.class public Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;
.super Ljava/lang/Object;
.source "DevicePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ApplicationPolicy"
.end annotation


# instance fields
.field private final mService:Landroid/app/enterprise/IApplicationPolicy;

.field final synthetic this$0:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method private constructor <init>(Landroid/app/admin/DevicePolicyManager;)V
    .locals 1
    .parameter

    .prologue
    .line 1745
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->this$0:Landroid/app/admin/DevicePolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1746
    const-string v0, "application_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    .line 1748
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1741
    invoke-direct {p0, p1}, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    return-void
.end method


# virtual methods
.method public deleteManagedAppInfo(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkg"

    .prologue
    .line 2123
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 2125
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->deleteManagedAppInfo(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2130
    :goto_0
    return v1

    .line 2126
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2127
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2130
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disableAndroidMarket()V
    .locals 2

    .prologue
    .line 2303
    const-string v0, "com.android.vending"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 2304
    return-void
.end method

.method public enableAndroidMarket()V
    .locals 2

    .prologue
    .line 2310
    const-string v0, "com.android.vending"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 2311
    return-void
.end method

.method public getApplicationCacheSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 2289
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 2291
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationCacheSize(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2296
    :goto_0
    return-object v1

    .line 2292
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2293
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2296
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationCodeSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 2253
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 2255
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationCodeSize(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2260
    :goto_0
    return-object v1

    .line 2256
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2257
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2260
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationDataSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 2271
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 2273
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationDataSize(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2278
    :goto_0
    return-object v1

    .line 2274
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2275
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2278
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationInstallationEnabled(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkg"

    .prologue
    .line 2143
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 2145
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationInstallationEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2150
    :goto_0
    return v1

    .line 2146
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2147
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2150
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 2198
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 2200
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2205
    :goto_0
    return-object v1

    .line 2201
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2202
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2205
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationStateEnabled(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 2104
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 2106
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2111
    :goto_0
    return v1

    .line 2107
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2108
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2111
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationTotalSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 2235
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 2237
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationTotalSize(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2242
    :goto_0
    return-object v1

    .line 2238
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2239
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2242
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationUninstallationEnabled(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkg"

    .prologue
    .line 2163
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 2165
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationUninstallationEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2170
    :goto_0
    return v1

    .line 2166
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2167
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2170
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 2216
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 2218
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationVersion(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2223
    :goto_0
    return-object v1

    .line 2219
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2220
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2223
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInstalledApplicationsIDList()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 2180
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 2182
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getInstalledApplicationsIDList()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2187
    :goto_0
    return-object v1

    .line 2183
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2184
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2187
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInstalledManagedApplicationsList()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 1948
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 1950
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getInstalledManagedApplicationsList()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1955
    :goto_0
    return-object v1

    .line 1951
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1952
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1955
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getManagedApplicationStatus(Ljava/lang/String;)[Landroid/app/enterprise/ManagedAppInfo;
    .locals 3
    .parameter "pkg"

    .prologue
    .line 1970
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 1972
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationsList(Ljava/lang/String;)[Landroid/app/enterprise/ManagedAppInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1977
    :goto_0
    return-object v1

    .line 1973
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1974
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1977
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTopNCPUUsageApp(I)Ljava/util/List;
    .locals 3
    .parameter "aAppCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2325
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 2327
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getTopNCPUUsageApp(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2332
    :goto_0
    return-object v1

    .line 2328
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2329
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2332
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTopNDataUsageApp(I)Ljava/util/List;
    .locals 3
    .parameter "aAppCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2371
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 2373
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getTopNDataUsageApp(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2378
    :goto_0
    return-object v1

    .line 2374
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2375
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2378
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTopNMemoryUsageApp(I)Ljava/util/List;
    .locals 3
    .parameter "aAppCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2348
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 2350
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getTopNMemoryUsageApp(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2355
    :goto_0
    return-object v1

    .line 2351
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2352
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2355
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public installApplication(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "apkFilePath"
    .parameter "installOnSDCard"

    .prologue
    .line 1834
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 1836
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->installApplication(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1841
    :goto_0
    return v1

    .line 1837
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1838
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1841
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isApplicationInstalled(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 1794
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 1796
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1801
    :goto_0
    return v1

    .line 1797
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1798
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1801
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isApplicationRunning(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 1812
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 1814
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->isApplicationRunning(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1819
    :goto_0
    return v1

    .line 1815
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1816
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1819
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setApplicationInstallationDisabled(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 2010
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 2012
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationInstallationDisabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2017
    :cond_0
    :goto_0
    return-void

    .line 2013
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2014
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setApplicationInstallationDisabled(Ljava/lang/String;Z)V
    .locals 3
    .parameter "packageName"
    .parameter "disableAppInstallation"

    .prologue
    .line 1993
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 1995
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationInstallationDisabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2000
    :cond_0
    :goto_0
    return-void

    .line 1996
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1997
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setApplicationInstallationEnabled(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 2028
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 2030
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationInstallationDisabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2035
    :cond_0
    :goto_0
    return-void

    .line 2031
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2032
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setApplicationState(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "packageName"
    .parameter "enableApp"

    .prologue
    .line 1894
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 1896
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1901
    :goto_0
    return v1

    .line 1897
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1898
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1901
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setApplicationUninstallationDisabled(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 2068
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 2070
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2075
    :cond_0
    :goto_0
    return-void

    .line 2071
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2072
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setApplicationUninstallationDisabled(Ljava/lang/String;Z)V
    .locals 3
    .parameter "packageName"
    .parameter "disableAppUninstallation"

    .prologue
    .line 2050
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 2052
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2058
    :cond_0
    :goto_0
    return-void

    .line 2054
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2055
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setApplicationUninstallationEnabled(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 2086
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 2088
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2093
    :cond_0
    :goto_0
    return-void

    .line 2089
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2090
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDisableApplication(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v3, 0x0

    .line 1912
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 1914
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1919
    :goto_0
    return v1

    .line 1915
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1916
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    move v1, v3

    .line 1919
    goto :goto_0
.end method

.method public setEnableApplication(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 1930
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 1932
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1937
    :goto_0
    return v1

    .line 1933
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1934
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1937
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public uninstallApplication(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "packageName"
    .parameter "keepDataAndCache"

    .prologue
    .line 1873
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 1875
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->uninstallApplication(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1880
    :goto_0
    return v1

    .line 1876
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1877
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1880
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public uninstallApplications(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1758
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 1760
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->removeManagedApplications(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1765
    :goto_0
    return-object v1

    .line 1761
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1762
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1765
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateApplication(Ljava/lang/String;)Z
    .locals 4
    .parameter "apkFilePath"

    .prologue
    const/4 v3, 0x0

    .line 1852
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 1854
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->installApplication(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1859
    :goto_0
    return v1

    .line 1855
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1856
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    move v1, v3

    .line 1859
    goto :goto_0
.end method

.method public wipeApplicationData(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 1776
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 1778
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->wipeApplicationData(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1783
    :goto_0
    return v1

    .line 1779
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1780
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1783
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
