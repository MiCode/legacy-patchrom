.class public Landroid/app/enterprise/ApplicationPolicy;
.super Ljava/lang/Object;
.source "ApplicationPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mService:Landroid/app/enterprise/IApplicationPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "ApplicationPolicy"

    sput-object v0, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "application_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    .line 23
    return-void
.end method


# virtual methods
.method public deleteManagedAppInfo(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkg"

    .prologue
    .line 403
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 405
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->deleteManagedAppInfo(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 410
    :goto_0
    return v1

    .line 406
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 407
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 410
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disableAndroidMarket()V
    .locals 2

    .prologue
    .line 582
    const-string v0, "com.android.vending"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 583
    return-void
.end method

.method public enableAndroidMarket()V
    .locals 2

    .prologue
    .line 589
    const-string v0, "com.android.vending"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 590
    return-void
.end method

.method public getApplicationCacheSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 568
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 570
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationCacheSize(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 575
    :goto_0
    return-object v1

    .line 571
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 572
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 575
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationCodeSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 532
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 534
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationCodeSize(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 539
    :goto_0
    return-object v1

    .line 535
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 536
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 539
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationDataSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 550
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 552
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationDataSize(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 557
    :goto_0
    return-object v1

    .line 553
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 554
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 557
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationInstallationEnabled(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkg"

    .prologue
    .line 422
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 424
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationInstallationEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 429
    :goto_0
    return v1

    .line 425
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 426
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 429
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 477
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 479
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 484
    :goto_0
    return-object v1

    .line 480
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 481
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 484
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationStateEnabled(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 383
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 385
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 390
    :goto_0
    return v1

    .line 386
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 387
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 390
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationTotalSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 514
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 516
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationTotalSize(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 521
    :goto_0
    return-object v1

    .line 517
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 518
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 521
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationUninstallationEnabled(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkg"

    .prologue
    .line 442
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 444
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationUninstallationEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 449
    :goto_0
    return v1

    .line 445
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 446
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 449
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 495
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 497
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationVersion(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 502
    :goto_0
    return-object v1

    .line 498
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 499
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 502
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInstalledApplicationsIDList()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 459
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 461
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getInstalledApplicationsIDList()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 466
    :goto_0
    return-object v1

    .line 462
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 463
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 466
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInstalledManagedApplicationsList()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 225
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 227
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getInstalledManagedApplicationsList()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 232
    :goto_0
    return-object v1

    .line 228
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 229
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getManagedApplicationStatus(Ljava/lang/String;)[Landroid/app/enterprise/ManagedAppInfo;
    .locals 3
    .parameter "pkg"

    .prologue
    .line 247
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 249
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationsList(Ljava/lang/String;)[Landroid/app/enterprise/ManagedAppInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 254
    :goto_0
    return-object v1

    .line 250
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 251
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 254
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
    .line 604
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 606
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getTopNCPUUsageApp(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 611
    :goto_0
    return-object v1

    .line 607
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 608
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 611
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
    .line 650
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 652
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getTopNDataUsageApp(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 657
    :goto_0
    return-object v1

    .line 653
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 654
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 657
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
    .line 627
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 629
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getTopNMemoryUsageApp(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 634
    :goto_0
    return-object v1

    .line 630
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 631
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 634
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
    .line 109
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 111
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->installApplication(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 117
    :goto_0
    return v1

    .line 113
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 114
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isApplicationInstalled(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 69
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 71
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 76
    :goto_0
    return v1

    .line 72
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 73
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isApplicationRunning(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 87
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 89
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->isApplicationRunning(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 94
    :goto_0
    return v1

    .line 90
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 91
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setApplicationInstallationDisabled(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 288
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 290
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationInstallationDisabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 292
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setApplicationInstallationDisabled(Ljava/lang/String;Z)V
    .locals 3
    .parameter "packageName"
    .parameter "disableAppInstallation"

    .prologue
    .line 270
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 272
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationInstallationDisabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 275
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setApplicationInstallationEnabled(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 305
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 307
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationInstallationDisabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 309
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setApplicationState(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "packageName"
    .parameter "enableApp"

    .prologue
    .line 171
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 173
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 178
    :goto_0
    return v1

    .line 174
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 175
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setApplicationUninstallationDisabled(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 345
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 347
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 349
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 350
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setApplicationUninstallationDisabled(Ljava/lang/String;Z)V
    .locals 3
    .parameter "packageName"
    .parameter "disableAppUninstallation"

    .prologue
    .line 327
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 329
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 331
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 332
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setApplicationUninstallationEnabled(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 364
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 366
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 368
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 369
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDisableApplication(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v3, 0x0

    .line 189
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 191
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 196
    :goto_0
    return v1

    .line 192
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 193
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    move v1, v3

    .line 196
    goto :goto_0
.end method

.method public setEnableApplication(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 207
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 209
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 214
    :goto_0
    return v1

    .line 210
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 211
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
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
    .line 150
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 152
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->uninstallApplication(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 158
    :goto_0
    return v1

    .line 154
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 155
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
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
    .line 33
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 35
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->removeManagedApplications(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 40
    :goto_0
    return-object v1

    .line 36
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 37
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
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

    .line 128
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 130
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->installApplication(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 135
    :goto_0
    return v1

    .line 131
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 132
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    move v1, v3

    .line 135
    goto :goto_0
.end method

.method public wipeApplicationData(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 51
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 53
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->wipeApplicationData(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 58
    :goto_0
    return v1

    .line 54
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 55
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
