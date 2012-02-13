.class public Lcom/motorola/server/deepsleep/DeepSleepService;
.super Lcom/motorola/android/os/IDeepSleepService$Stub;
.source "DeepSleepService.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "DeepSleepService"

.field private static final WAKELOCKS_FILE:Ljava/lang/String; = "/sys/power/active_wake_lock"


# instance fields
.field private disableBluetooth:Z

.field private disableGPS:Z

.field private disableRadio:Z

.field private disableWifi:Z

.field private mCmdSender:Lcom/motorola/android/os/MediaCmdSender;

.field private mContext:Landroid/content/Context;

.field private mDeepSleepMode:Z

.field private mHandler:Landroid/os/Handler;

.field private mPlugType:I

.field private mPlugged:Z

.field private mShowChargeOnlyMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/motorola/android/os/IDeepSleepService$Stub;-><init>()V

    iput-boolean v0, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mPlugged:Z

    iput-boolean v0, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->disableGPS:Z

    iput-boolean v0, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->disableBluetooth:Z

    iput-boolean v0, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->disableWifi:Z

    iput-boolean v0, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->disableRadio:Z

    iput-boolean v0, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mDeepSleepMode:Z

    iput-boolean v0, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mShowChargeOnlyMode:Z

    new-instance v0, Lcom/motorola/server/deepsleep/DeepSleepService$3;

    invoke-direct {v0, p0}, Lcom/motorola/server/deepsleep/DeepSleepService$3;-><init>(Lcom/motorola/server/deepsleep/DeepSleepService;)V

    iput-object v0, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/motorola/android/os/MediaCmdSender;

    invoke-direct {v0}, Lcom/motorola/android/os/MediaCmdSender;-><init>()V

    iput-object v0, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mCmdSender:Lcom/motorola/android/os/MediaCmdSender;

    iget-object v0, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mCmdSender:Lcom/motorola/android/os/MediaCmdSender;

    invoke-virtual {v0}, Lcom/motorola/android/os/MediaCmdSender;->init()Z

    iget-object v0, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mCmdSender:Lcom/motorola/android/os/MediaCmdSender;

    invoke-virtual {v0}, Lcom/motorola/android/os/MediaCmdSender;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/server/deepsleep/DeepSleepService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/server/deepsleep/DeepSleepService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/server/deepsleep/DeepSleepService;->stopMediaPlayer(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/server/deepsleep/DeepSleepService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/server/deepsleep/DeepSleepService;->setDeepSleepModeMain(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/motorola/server/deepsleep/DeepSleepService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/motorola/server/deepsleep/DeepSleepService;->checkWakeLocks()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/motorola/server/deepsleep/DeepSleepService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/server/deepsleep/DeepSleepService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/motorola/server/deepsleep/DeepSleepService;->showWakelockDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/motorola/server/deepsleep/DeepSleepService;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mPlugType:I

    return v0
.end method

.method static synthetic access$700(Lcom/motorola/server/deepsleep/DeepSleepService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/motorola/server/deepsleep/DeepSleepService;->showChargeOnlyMode()V

    return-void
.end method

.method static synthetic access$802(Lcom/motorola/server/deepsleep/DeepSleepService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mShowChargeOnlyMode:Z

    return p1
.end method

.method static synthetic access$902(Lcom/motorola/server/deepsleep/DeepSleepService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mDeepSleepMode:Z

    return p1
.end method

.method private checkWakeLocks()Z
    .locals 8

    .prologue
    new-instance v1, Ljava/io/File;

    const-string v5, "/sys/power/active_wake_lock"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, file:Ljava/io/File;
    const/4 v3, 0x0

    .local v3, scanner:Ljava/util/Scanner;
    const/4 v2, 0x0

    .local v2, result:Z
    :try_start_0
    new-instance v4, Ljava/util/Scanner;

    invoke-direct {v4, v1}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #scanner:Ljava/util/Scanner;
    .local v4, scanner:Ljava/util/Scanner;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/motorola/server/deepsleep/DeepSleepService;->processWakeLocks(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    :cond_1
    move-object v3, v4

    .end local v4           #scanner:Ljava/util/Scanner;
    .restart local v3       #scanner:Ljava/util/Scanner;
    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    :cond_2
    return v2

    :catch_0
    move-exception v5

    move-object v0, v5

    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_1
    const-string v5, "DeepSleepService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkWakeLocks caught exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v3           #scanner:Ljava/util/Scanner;
    .restart local v4       #scanner:Ljava/util/Scanner;
    :catch_1
    move-exception v5

    move-object v0, v5

    move-object v3, v4

    .end local v4           #scanner:Ljava/util/Scanner;
    .restart local v3       #scanner:Ljava/util/Scanner;
    goto :goto_1
.end method

.method private getGpsState()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getPhoneInterface()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private processWakeLocks(Ljava/lang/String;)Z
    .locals 8
    .parameter "wakelocks"

    .prologue
    const-string v7, "DeepSleepService"

    const-string v6, ", pid : "

    const/4 v2, 0x0

    .local v2, result:Z
    new-instance v3, Ljava/util/Scanner;

    invoke-direct {v3, p1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .local v3, scanner:Ljava/util/Scanner;
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    invoke-virtual {v3}, Ljava/util/Scanner;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    .local v0, lock:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v1

    .local v1, pid:Ljava/lang/String;
    const-string v4, "DeepSleepService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wakelock : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pid : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "audio"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "media"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "storage"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const-string v4, "DeepSleepService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!! find prevent deepsleep wakelock : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pid : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .end local v0           #lock:Ljava/lang/String;
    .end local v1           #pid:Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    return v2
.end method

.method private sendDeepSleepIntent(I)V
    .locals 4
    .parameter "state"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.internal.intent.action.DEEP_SLEEP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v1, "DeepSleepService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendDeepSleepIntent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setBluetooth(Z)V
    .locals 8
    .parameter "enable"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    const-string v6, "DeepSleepService"

    const-string v3, "bluetooth"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .local v0, bluetooth:Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :try_start_0
    iget-boolean v3, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->disableBluetooth:Z

    if-eqz v3, :cond_1

    const-string v3, "DeepSleepService"

    const-string v4, "Enable Bluetooth..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->disableBluetooth:Z

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->enable()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    move v1, v5

    .local v1, bluetoothOff:Z
    :goto_1
    if-nez v1, :cond_0

    const-string v3, "DeepSleepService"

    const-string v4, "Disabling Bluetooth..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/bluetooth/IBluetooth;->disable(Z)Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->disableBluetooth:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1           #bluetoothOff:Z
    :catch_0
    move-exception v3

    move-object v2, v3

    .local v2, ex:Landroid/os/RemoteException;
    const-string v3, "DeepSleepService"

    const-string v3, "RemoteException during bluetooth shutdown"

    invoke-static {v6, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v2           #ex:Landroid/os/RemoteException;
    :cond_2
    move v1, v7

    goto :goto_1
.end method

.method private setDeepSleepModeMain(Z)V
    .locals 11
    .parameter "enabled"

    .prologue
    const-string v7, "window"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .local v4, mWm:Landroid/view/IWindowManager;
    iget-object v7, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mContext:Landroid/content/Context;

    const-string v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    .local v6, wifiManager:Landroid/net/wifi/WifiManager;
    iget-object v7, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .local v1, audioManager:Landroid/media/AudioManager;
    iget-object v7, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mContext:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .local v5, notificationManager:Landroid/app/NotificationManager;
    const-string v7, "DeepSleepService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enableDeepSleepMode --> mode is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mDeepSleepMode:Z

    if-eqz p1, :cond_0

    const/4 v7, 0x3

    invoke-direct {p0, v7}, Lcom/motorola/server/deepsleep/DeepSleepService;->sendDeepSleepIntent(I)V

    const/4 v7, 0x0

    :try_start_0
    invoke-interface {v4, v7}, Landroid/view/IWindowManager;->setEventDispatching(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/server/deepsleep/DeepSleepService;->isAirplaneModeOn()Z

    move-result v7

    if-nez v7, :cond_1

    if-nez p1, :cond_2

    :cond_1
    iget-boolean v7, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->disableRadio:Z

    if-eqz v7, :cond_3

    if-nez p1, :cond_3

    :cond_2
    const-string v7, "DeepSleepService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enableDeepSleepMode --> setRadio "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez p1, :cond_6

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "airplane_mode_on"

    if-eqz p1, :cond_7

    const/4 v9, 0x1

    :goto_2
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, intent:Landroid/content/Intent;
    const-string v7, "state"

    invoke-virtual {v3, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v7, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iput-boolean p1, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->disableRadio:Z

    .end local v3           #intent:Landroid/content/Intent;
    :cond_3
    iget-boolean v7, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->disableRadio:Z

    if-eqz v7, :cond_8

    if-eqz p1, :cond_8

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/motorola/server/deepsleep/DeepSleepService;->setBluetooth(Z)V

    iget-object v7, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_on"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "DeepSleepService"

    const-string v8, "enableDeepSleepMode --> setWifiEnabled(false)"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->disableWifi:Z

    :cond_4
    iget-object v7, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "location_providers_allowed"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, allowedProviders:Ljava/lang/String;
    if-eqz v0, :cond_5

    const-string v7, "gps"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/motorola/server/deepsleep/DeepSleepService;->setGPSEnabled(Z)V

    .end local v0           #allowedProviders:Ljava/lang/String;
    :cond_5
    :goto_3
    invoke-direct {p0, p1}, Lcom/motorola/server/deepsleep/DeepSleepService;->setMute(Z)V

    invoke-virtual {v5, p1}, Landroid/app/NotificationManager;->updateLightsForDeepSleep(Z)V

    if-eqz p1, :cond_d

    const/4 v7, 0x4

    invoke-direct {p0, v7}, Lcom/motorola/server/deepsleep/DeepSleepService;->sendDeepSleepIntent(I)V

    invoke-direct {p0}, Lcom/motorola/server/deepsleep/DeepSleepService;->checkWakeLocks()Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x4

    const-wide/16 v9, 0x1388

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_4
    return-void

    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/SecurityException;
    const-string v7, "DeepSleepService"

    const-string v8, "SecurityException from setEventDispatching"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v2           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    .local v2, e:Landroid/os/RemoteException;
    const-string v7, "DeepSleepService"

    const-string v8, "RemoteException from setEventDispatching"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v2           #e:Landroid/os/RemoteException;
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_8
    if-nez p1, :cond_5

    iget-boolean v7, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->disableBluetooth:Z

    if-nez v7, :cond_9

    iget-boolean v7, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->disableWifi:Z

    if-eqz v7, :cond_a

    :cond_9
    invoke-virtual {p0}, Lcom/motorola/server/deepsleep/DeepSleepService;->isAirplaneModeOn()Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "airplane_mode_on"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_a
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/motorola/server/deepsleep/DeepSleepService;->setBluetooth(Z)V

    iget-boolean v7, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->disableWifi:Z

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_on"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->disableWifi:Z

    :cond_b
    iget-boolean v7, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->disableGPS:Z

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/motorola/server/deepsleep/DeepSleepService;->setGPSEnabled(Z)V

    goto :goto_3

    :cond_c
    iget-object v7, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x4

    const-wide/16 v9, 0x14

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    :cond_d
    const/4 v7, 0x5

    invoke-direct {p0, v7}, Lcom/motorola/server/deepsleep/DeepSleepService;->sendDeepSleepIntent(I)V

    iget-object v7, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x5

    const-wide/16 v9, 0x14

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mShowChargeOnlyMode:Z

    goto :goto_4
.end method

.method private setGPSEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const-string v0, "DeepSleepService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGPSEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/motorola/server/deepsleep/DeepSleepService;->getGpsState()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->disableGPS:Z

    iget-object v0, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setMute(Z)V
    .locals 6
    .parameter "state"

    .prologue
    iget-object v3, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, audioManager:Landroid/media/AudioManager;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v3

    if-ge v2, v3, :cond_0

    :try_start_0
    invoke-virtual {v0, v2, p1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    invoke-virtual {v0, v2, p1}, Landroid/media/AudioManager;->setStreamSolo(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/lang/Exception;
    const-string v3, "DeepSleepService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMute exeception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private showChargeOnlyMode()V
    .locals 6

    .prologue
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v3, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.motorola.chargeonlymode"

    const-string v5, "com.motorola.chargeonlymode.ChargeOnlyModeActivity"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, comName:Landroid/content/ComponentName;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v4, 0x1020

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v4, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v4

    move-object v2, v4

    .local v2, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method private showWakelockDialog()V
    .locals 4

    .prologue
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x1040410

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x1040411

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x1040412

    new-instance v3, Lcom/motorola/server/deepsleep/DeepSleepService$1;

    invoke-direct {v3, p0}, Lcom/motorola/server/deepsleep/DeepSleepService$1;-><init>(Lcom/motorola/server/deepsleep/DeepSleepService;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x1040413

    new-instance v3, Lcom/motorola/server/deepsleep/DeepSleepService$2;

    invoke-direct {v3, p0}, Lcom/motorola/server/deepsleep/DeepSleepService$2;-><init>(Lcom/motorola/server/deepsleep/DeepSleepService;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .local v1, wakelockAlert:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private stopMediaPlayer(I)V
    .locals 9
    .parameter "cmd"

    .prologue
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    const/16 v6, 0x56

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .local v0, keyEvent:Landroid/view/KeyEvent;
    new-instance v8, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    const/4 v2, 0x0

    invoke-direct {v8, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v8, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v8, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    new-instance v0, Landroid/view/KeyEvent;

    .end local v0           #keyEvent:Landroid/view/KeyEvent;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x2

    add-long/2addr v1, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x2

    add-long/2addr v3, v5

    const/4 v5, 0x1

    const/16 v6, 0x56

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .restart local v0       #keyEvent:Landroid/view/KeyEvent;
    new-instance v8, Landroid/content/Intent;

    .end local v8           #intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MEDIA_BUTTON"

    const/4 v2, 0x0

    invoke-direct {v8, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v8       #intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v8, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v1, "DeepSleepService"

    const-string v2, "stopMediaPlayer by Intent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #keyEvent:Landroid/view/KeyEvent;
    .end local v8           #intent:Landroid/content/Intent;
    :pswitch_1
    iget-object v1, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mCmdSender:Lcom/motorola/android/os/MediaCmdSender;

    const-string v2, "pause"

    invoke-virtual {v1, v2}, Lcom/motorola/android/os/MediaCmdSender;->sendCmd(Ljava/lang/String;)V

    const-string v1, "DeepSleepService"

    const-string v2, "stopMediaPlayer by command"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    const-string v1, "DeepSleepService"

    const-string v2, "stopMediaPlayer by alert dialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/motorola/server/deepsleep/DeepSleepService;->setDeepSleepModeMain(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public enableDeepSleepMode(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    iget-boolean v1, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mDeepSleepMode:Z

    if-ne v1, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/motorola/server/deepsleep/DeepSleepService;->stopMediaPlayer(I)V

    iget-object v1, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/16 v3, 0x14

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/motorola/server/deepsleep/DeepSleepService;->setDeepSleepModeMain(Z)V

    goto :goto_0
.end method

.method public isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public isChargeOnlyMode()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mShowChargeOnlyMode:Z

    return v0
.end method

.method public isDeepSleep()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mDeepSleepMode:Z

    return v0
.end method

.method public onReceiveIntent(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "DeepSleepService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "plugged"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .local v1, plugType:I
    if-eqz v1, :cond_2

    move v2, v7

    .local v2, plugged:Z
    :goto_0
    iget-boolean v4, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mDeepSleepMode:Z

    if-eqz v4, :cond_0

    const-string v4, "DeepSleepService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceiveIntent plugType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPlugType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mPlugType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",  mShowChargeOnlyMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mShowChargeOnlyMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .local v3, pm:Landroid/os/PowerManager;
    if-ne v1, v7, :cond_3

    iget-boolean v4, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mPlugged:Z

    if-nez v4, :cond_3

    const-string v4, "DeepSleepService"

    const-string v4, "go into charge only mode"

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/PowerManager;->goToDeepSleep(ZJ)V

    invoke-direct {p0}, Lcom/motorola/server/deepsleep/DeepSleepService;->showChargeOnlyMode()V

    iput-boolean v7, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mShowChargeOnlyMode:Z

    .end local v3           #pm:Landroid/os/PowerManager;
    :cond_0
    :goto_1
    iput v1, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mPlugType:I

    iput-boolean v2, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mPlugged:Z

    .end local v1           #plugType:I
    .end local v2           #plugged:Z
    :cond_1
    return-void

    .restart local v1       #plugType:I
    :cond_2
    move v2, v6

    goto :goto_0

    .restart local v2       #plugged:Z
    .restart local v3       #pm:Landroid/os/PowerManager;
    :cond_3
    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    iget-boolean v4, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mPlugged:Z

    if-nez v4, :cond_4

    const-string v4, "DeepSleepService"

    const-string v4, "UsbOnline in DeepSleepMode --> go out of deepsleep mode "

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v6}, Lcom/motorola/server/deepsleep/DeepSleepService;->enableDeepSleepMode(Z)V

    goto :goto_1

    :cond_4
    if-nez v2, :cond_0

    iget v4, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mPlugType:I

    if-ne v4, v7, :cond_0

    const-string v4, "DeepSleepService"

    const-string v4, "go out of charge only mode"

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v7, v4, v5}, Landroid/os/PowerManager;->goToDeepSleep(ZJ)V

    iput-boolean v6, p0, Lcom/motorola/server/deepsleep/DeepSleepService;->mShowChargeOnlyMode:Z

    goto :goto_1
.end method
