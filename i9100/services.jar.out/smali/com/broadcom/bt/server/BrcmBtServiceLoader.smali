.class public Lcom/broadcom/bt/server/BrcmBtServiceLoader;
.super Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;
.source "BrcmBtServiceLoader.java"


# static fields
.field private static final FM_ALWAYS_ON:Z = true

.field public static final TAG:Ljava/lang/String; = "BrcmBtServiceLoader"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;-><init>()V

    return-void
.end method

.method public static loadServices(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "factoryTest"

    .prologue
    const-string v3, "service.brcm.bt.is_sta"

    const-string v5, "BrcmBtServiceLoader"

    .line 35
    :try_start_0
    const-string v3, "BrcmBtServiceLoader"

    const-string v4, "Initializing...."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 37
    .local v1, pkgMgr:Landroid/content/pm/PackageManager;
    const-string v3, "com.broadcom.bt.app.system"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 38
    .local v0, info:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    const-string v3, "system"

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 39
    const-string v3, "BrcmBtServiceLoader"

    const-string v4, "********BT/Fm services configured to run in system process..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const-string v3, "service.brcm.bt.is_sta"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v3, "BrcmBtServiceLoader"

    const-string v4, "Soft On/Off enabled...Starting FM services..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-static {p0}, Lcom/broadcom/bt/service/fm/FmServiceManager;->init(Landroid/content/Context;)V

    .line 55
    .end local v0           #info:Landroid/content/pm/ApplicationInfo;
    .end local v1           #pkgMgr:Landroid/content/pm/PackageManager;
    :goto_0
    return-void

    .line 49
    .restart local v0       #info:Landroid/content/pm/ApplicationInfo;
    .restart local v1       #pkgMgr:Landroid/content/pm/PackageManager;
    :cond_0
    const-string v3, "BrcmBtServiceLoader"

    const-string v4, "********BT/Fm services configured to run as standalone process..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const-string v3, "service.brcm.bt.is_sta"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    .end local v0           #info:Landroid/content/pm/ApplicationInfo;
    .end local v1           #pkgMgr:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 53
    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "BrcmBtServiceLoader"

    const-string v3, "Error reading BrcmBluetoothServices package"

    invoke-static {v5, v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
