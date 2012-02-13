.class public Lcom/motorola/android/os/DeepSleepManager;
.super Ljava/lang/Object;
.source "DeepSleepManager.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final DISABLED:I = 0x4

.field public static final DISABLE_CONS:I = 0x3

.field public static final DISABLE_MEDIA_ALERT:I = 0x2

.field public static final DISABLE_MEDIA_CMD:I = 0x1

.field public static final DISABLE_MEDIA_INTENT:I = 0x0

.field public static final ENABLED:I = 0x5

.field public static final ENABLE_EVENT_DISPATCH:I = 0x6

.field private static final TAG:Ljava/lang/String; = "DeepSleepManager"


# instance fields
.field private final isDeepSleepSupported:Z

.field private final mContext:Landroid/content/Context;

.field private mService:Lcom/motorola/android/os/IDeepSleepService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/os/DeepSleepManager;->mService:Lcom/motorola/android/os/IDeepSleepService;

    const-string v0, "ro.mot.deep.sleep.supported"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/android/os/DeepSleepManager;->isDeepSleepSupported:Z

    iput-object p1, p0, Lcom/motorola/android/os/DeepSleepManager;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public enableDeepSleepMode(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const-string v3, "DeepSleepManager"

    iget-boolean v1, p0, Lcom/motorola/android/os/DeepSleepManager;->isDeepSleepSupported:Z

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/os/DeepSleepManager;->mService:Lcom/motorola/android/os/IDeepSleepService;

    if-nez v1, :cond_0

    const-string v1, "deepsleep"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/android/os/IDeepSleepService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/os/IDeepSleepService;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/os/DeepSleepManager;->mService:Lcom/motorola/android/os/IDeepSleepService;

    :cond_0
    iget-object v1, p0, Lcom/motorola/android/os/DeepSleepManager;->mService:Lcom/motorola/android/os/IDeepSleepService;

    invoke-interface {v1, p1}, Lcom/motorola/android/os/IDeepSleepService;->enableDeepSleepMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DeepSleepManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableDeepSleepMode caught exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v1, "DeepSleepManager"

    const-string v1, "DeepSleepService is not supported and enableDeepSleepMode is disabled"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isChargeOnlyMode()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/motorola/android/os/DeepSleepManager;->isDeepSleepSupported:Z

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/os/DeepSleepManager;->mService:Lcom/motorola/android/os/IDeepSleepService;

    if-nez v1, :cond_0

    const-string v1, "deepsleep"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/android/os/IDeepSleepService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/os/IDeepSleepService;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/os/DeepSleepManager;->mService:Lcom/motorola/android/os/IDeepSleepService;

    :cond_0
    iget-object v1, p0, Lcom/motorola/android/os/DeepSleepManager;->mService:Lcom/motorola/android/os/IDeepSleepService;

    invoke-interface {v1}, Lcom/motorola/android/os/IDeepSleepService;->isChargeOnlyMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DeepSleepManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDeepSleep caught exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    move v1, v4

    goto :goto_0
.end method

.method public isDeepSleep()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v4, "DeepSleepManager"

    iget-boolean v1, p0, Lcom/motorola/android/os/DeepSleepManager;->isDeepSleepSupported:Z

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/os/DeepSleepManager;->mService:Lcom/motorola/android/os/IDeepSleepService;

    if-nez v1, :cond_0

    const-string v1, "deepsleep"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/android/os/IDeepSleepService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/os/IDeepSleepService;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/os/DeepSleepManager;->mService:Lcom/motorola/android/os/IDeepSleepService;

    :cond_0
    iget-object v1, p0, Lcom/motorola/android/os/DeepSleepManager;->mService:Lcom/motorola/android/os/IDeepSleepService;

    invoke-interface {v1}, Lcom/motorola/android/os/IDeepSleepService;->isDeepSleep()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DeepSleepManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDeepSleep caught exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v1, "DeepSleepManager"

    const-string v1, "Deep sleep mode is not supported"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    goto :goto_0
.end method
