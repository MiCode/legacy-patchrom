.class public Lcom/android/server/enterprise/DeviceInfo;
.super Landroid/app/enterprise/IDeviceInfo$Stub;
.source "DeviceInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceInfo"

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method

.method private getInt(Ljava/lang/String;)I
    .locals 3
    .parameter "property"

    .prologue
    .line 229
    const/4 v1, -0x1

    .line 231
    .local v1, value:I
    const/4 v2, -0x1

    :try_start_0
    invoke-static {p1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 236
    :goto_0
    return v1

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, -0x1

    .line 234
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .parameter "property"
    .parameter "fromVM"

    .prologue
    const-string v2, "unknown"

    .line 210
    const/4 v1, 0x0

    .line 212
    .local v1, value:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 213
    :try_start_0
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 222
    :goto_0
    return-object v1

    .line 215
    :cond_0
    const-string v2, "unknown"

    invoke-static {p1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 216
    const-string v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    move-object v1, v2

    :cond_1
    goto :goto_0

    .line 218
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 219
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 220
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getAvailableCapacityExternal()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Lcom/android/server/enterprise/DeviceStorageUtil;

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/DeviceStorageUtil;-><init>(Landroid/content/Context;)V

    .line 95
    .local v0, devStorageUtil:Lcom/android/server/enterprise/DeviceStorageUtil;
    invoke-virtual {v0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getAvailableExternalMemorySizeFormated()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAvailableCapacityInternal()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    new-instance v0, Lcom/android/server/enterprise/DeviceStorageUtil;

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/DeviceStorageUtil;-><init>(Landroid/content/Context;)V

    .line 115
    .local v0, devStorageUtil:Lcom/android/server/enterprise/DeviceStorageUtil;
    invoke-virtual {v0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getAvailableInternalMemorySizeFormated()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDeviceMaker()Ljava/lang/String;
    .locals 2

    .prologue
    .line 178
    const-string v0, "ro.product.manufacturer"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    const-string v0, "ro.product.device"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceOS()Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    const-string v0, "os.name"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceOSVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 192
    const-string v0, "os.version"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDevicePlatform()Ljava/lang/String;
    .locals 3

    .prologue
    .line 199
    const-string v1, "ro.build.version.release"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Android "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    const-string v0, "ro.product.name"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    const-string v0, "ro.product.model"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModemFirmware()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    const-string v0, "gsm.version.baseband"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOSBuild()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    const-string v0, "ro.build.id"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlatformSDK()I
    .locals 1

    .prologue
    .line 164
    const-string v0, "ro.build.version.sdk"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/DeviceInfo;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPlatformVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    const-string v0, "ro.build.version.release"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    const-string v0, "ro.serialno"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalCapacityExternal()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Lcom/android/server/enterprise/DeviceStorageUtil;

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/DeviceStorageUtil;-><init>(Landroid/content/Context;)V

    .line 85
    .local v0, devStorageUtil:Lcom/android/server/enterprise/DeviceStorageUtil;
    invoke-virtual {v0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getTotalExternalMemorySizeFormated()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTotalCapacityInternal()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Lcom/android/server/enterprise/DeviceStorageUtil;

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/DeviceStorageUtil;-><init>(Landroid/content/Context;)V

    .line 105
    .local v0, devStorageUtil:Lcom/android/server/enterprise/DeviceStorageUtil;
    invoke-virtual {v0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getTotalInternalMemorySizeFormated()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isDeviceCompromised()Z
    .locals 2

    .prologue
    .line 68
    const/4 v1, 0x0

    .line 70
    .local v1, ret:Z
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/DeviceShell;->isSuAvailable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 75
    :goto_0
    return v1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isDeviceLocked()Z
    .locals 5

    .prologue
    .line 53
    const/4 v1, 0x0

    .line 55
    .local v1, isLocked:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    const-string v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 56
    .local v2, km:Landroid/app/KeyguardManager;
    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 61
    .end local v2           #km:Landroid/app/KeyguardManager;
    :goto_0
    return v1

    .line 57
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 58
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isDeviceSecure()Z
    .locals 6

    .prologue
    .line 35
    const/4 v1, 0x0

    .line 37
    .local v1, isSecure:Z
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    if-nez v4, :cond_0

    .line 38
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 39
    :cond_0
    new-instance v3, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;-><init>(Landroid/content/Context;)V

    .line 40
    .local v3, mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    new-instance v2, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;

    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v4, v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;-><init>(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 41
    .local v2, mKeyguardViewProperties:Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->isSecure()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 46
    .end local v2           #mKeyguardViewProperties:Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;
    .end local v3           #mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    :goto_0
    return v1

    .line 42
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 43
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
