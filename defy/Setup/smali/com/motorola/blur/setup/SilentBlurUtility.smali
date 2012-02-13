.class public Lcom/motorola/blur/setup/SilentBlurUtility;
.super Ljava/lang/Object;
.source "SilentBlurUtility.java"


# static fields
.field public static final PREFERENCES:Ljava/lang/String; = "DeviceSetup"

.field private static final SILENT_SETUP_SD_FILE:Ljava/lang/String; = "SilentSetup.txt"

.field public static final SetupType:Ljava/lang/String; = "SetupType"

.field private static final TAG:Ljava/lang/String; = "SetupSBU"

.field private static final UNSPECIFIED_SETUP:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableComponent(Landroid/content/pm/PackageManager;Landroid/content/Context;Ljava/lang/Class;Z)V
    .locals 3
    .parameter "pm"
    .parameter "ctx"
    .parameter
    .parameter "killApp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p2, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .local v0, name:Landroid/content/ComponentName;
    const/4 v1, 0x2

    if-eqz p3, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 109
    return-void

    .line 106
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static disableComponent(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter "pm"
    .parameter "pkg"
    .parameter "cls"
    .parameter "killApp"

    .prologue
    .line 112
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .local v0, name:Landroid/content/ComponentName;
    const/4 v1, 0x2

    if-eqz p3, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 116
    return-void

    .line 113
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getSetupTypeFromBuild(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 69
    invoke-static {p0}, Lcom/motorola/blur/provider/DeviceSetup;->getSetupTypeFromBuild(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static isBlurSetupDeferred(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 53
    invoke-static {p0}, Lcom/motorola/blur/setup/SilentBlurUtility;->getSetupTypeFromBuild(Landroid/content/Context;)I

    move-result v0

    .line 57
    .local v0, setupType:I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCTSetupRequired(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 61
    invoke-static {p0}, Lcom/motorola/blur/setup/SilentBlurUtility;->getSetupTypeFromBuild(Landroid/content/Context;)I

    move-result v0

    .line 65
    .local v0, setupType:I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSilentRegistrationRequired(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 45
    invoke-static {p0}, Lcom/motorola/blur/setup/SilentBlurUtility;->getSetupTypeFromBuild(Landroid/content/Context;)I

    move-result v0

    .line 49
    .local v0, setupType:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static reEnableSync(Landroid/content/Context;)V
    .locals 7
    .parameter "ctx"

    .prologue
    .line 119
    invoke-static {}, Lcom/motorola/blur/service/blur/sync/engine/SyncEngineProxyFactory;->getInstance()Lcom/motorola/blur/service/blur/sync/engine/SyncEngineProxyFactory;

    move-result-object v0

    .line 120
    .local v0, engineProxy:Lcom/motorola/blur/service/blur/sync/engine/SyncEngineProxyFactory;
    invoke-virtual {v0, p0}, Lcom/motorola/blur/service/blur/sync/engine/SyncEngineProxyFactory;->getProxy(Landroid/content/Context;)Lcom/motorola/blur/service/blur/sync/engine/ISyncEngineProxy;

    move-result-object v1

    .line 121
    .local v1, proxy:Lcom/motorola/blur/service/blur/sync/engine/ISyncEngineProxy;
    invoke-interface {v1}, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngineProxy;->resumeSyncing()Z

    move-result v2

    .line 122
    .local v2, resumed:Z
    if-nez v2, :cond_0

    .line 126
    const-string v3, "SetupSBU"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Failed to resume Sync"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    :cond_0
    return-void
.end method

.method public static showErrorDialog(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "errorCode"

    .prologue
    .line 132
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 133
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 134
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f0c0060

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 135
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 136
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 137
    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 138
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 140
    return-void
.end method

.method public static silentSetupSDFileExists()Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "SetupSBU"

    .line 77
    const/4 v1, 0x0

    .line 80
    .local v1, setupSDFileExists:Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, state:Ljava/lang/String;
    const-string v3, "SetupSBU"

    new-array v3, v7, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sdcard  state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v8, v3}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    const-string v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "mounted_ro"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 88
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "SilentSetup.txt"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 89
    .local v0, filename:Ljava/io/File;
    const-string v3, "SetupSBU"

    new-array v3, v7, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "State: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",       File: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", exists: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v8, v3}, Lcom/motorola/blur/util/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 101
    .end local v0           #filename:Ljava/io/File;
    :cond_1
    return v1
.end method
