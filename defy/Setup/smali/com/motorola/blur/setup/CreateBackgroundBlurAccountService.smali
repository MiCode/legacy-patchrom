.class public Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;
.super Landroid/app/Service;
.source "CreateBackgroundBlurAccountService.java"

# interfaces
.implements Lcom/motorola/blur/setup/BlurAccountCreationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService$LocalBinder;
    }
.end annotation


# static fields
.field public static final CAPTCHA_NULL:I = 0x0

.field public static final CAPTCHA_READY:I = 0x2

.field public static final CAPTCHA_REQUEST_WAIT_FOR_USER:I = 0x1

.field private static final CREATE_NEW_ACCT_MSG:I = 0x2

.field private static final DBG:Z = false

.field private static final REPORT_MSG:I = 0x1

.field public static final REQUEST_STATE:Ljava/lang/String; = "requestState"

.field private static final RETRY_MAXIMUM_TIMES:I = 0x3

.field private static final RETRY_TIMER_INTERVAL_UNIT:I = 0x124f80

.field private static final TAG:Ljava/lang/String; = "SetupCBBAS"

.field private static sRetriedTimes:I


# instance fields
.field broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mAccountCreatorNewAccount:Lcom/motorola/blur/setup/BlurAccountCreator;

.field private final mBinder:Landroid/os/IBinder;

.field private mBound:Z

.field mBundle:Landroid/os/Bundle;

.field private mBusyOnDuty:Z

.field private mCaptchaImage:Lcom/google/protobuf/ByteString;

.field mCaptchaRequired:Z

.field private mCaptchaSingleton:Lcom/motorola/blur/setup/CaptchaSingleton;

.field private mCaptchaToken:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mService:Landroid/os/IBinder;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mSignFrom:I

.field private mTask:Ljava/util/TimerTask;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput v0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->sRetriedTimes:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 43
    iput-boolean v2, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mBusyOnDuty:Z

    .line 58
    iput-object v1, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mCaptchaSingleton:Lcom/motorola/blur/setup/CaptchaSingleton;

    .line 59
    iput-boolean v2, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mCaptchaRequired:Z

    .line 60
    iput-object v1, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mCaptchaToken:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mCaptchaImage:Lcom/google/protobuf/ByteString;

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mSignFrom:I

    .line 65
    iput-object v1, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mBundle:Landroid/os/Bundle;

    .line 67
    iput-object v1, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mAccountCreatorNewAccount:Lcom/motorola/blur/setup/BlurAccountCreator;

    .line 68
    iput-object v1, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mTimer:Ljava/util/Timer;

    .line 69
    iput-object v1, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mTask:Ljava/util/TimerTask;

    .line 70
    iput-object v1, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mService:Landroid/os/IBinder;

    .line 71
    iput-boolean v2, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mBound:Z

    .line 72
    new-instance v0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService$LocalBinder;-><init>(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mBinder:Landroid/os/IBinder;

    .line 91
    new-instance v0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService$1;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService$1;-><init>(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 102
    new-instance v0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService$2;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService$2;-><init>(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 127
    new-instance v0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService$3;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService$3;-><init>(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mService:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$100(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mCaptchaToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->showNotification()V

    return-void
.end method

.method static synthetic access$400(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mBusyOnDuty:Z

    return v0
.end method

.method static synthetic access$402(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mBusyOnDuty:Z

    return p1
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 39
    sget v0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->sRetriedTimes:I

    return v0
.end method

.method static synthetic access$508()I
    .locals 2

    .prologue
    .line 39
    sget v0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->sRetriedTimes:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->sRetriedTimes:I

    return v0
.end method

.method static synthetic access$602(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mSignFrom:I

    return p1
.end method

.method private getCaptchaImage(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)V
    .locals 3
    .parameter "serverCaptchaInfo"

    .prologue
    .line 338
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;->getImage()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mCaptchaImage:Lcom/google/protobuf/ByteString;

    .line 340
    invoke-virtual {p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;->getToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mCaptchaToken:Ljava/lang/String;

    .line 342
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mBundle:Landroid/os/Bundle;

    const-string v1, "CaptchaToken"

    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mCaptchaToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mBundle:Landroid/os/Bundle;

    const-string v1, "android.intent.extra.shortcut.ICON"

    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mCaptchaImage:Lcom/google/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 344
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mCaptchaRequired:Z

    .line 348
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mBundle:Landroid/os/Bundle;

    const-string v1, "CaptchaRequired"

    iget-boolean v2, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mCaptchaRequired:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 349
    return-void

    .line 346
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mCaptchaRequired:Z

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 2

    .prologue
    .line 166
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 167
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.motorola.blur.setup.captcha.input"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 169
    return-void
.end method

.method private resumeSync()V
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v11, "SetupCBBAS"

    .line 308
    const-string v5, "SetupCBBAS"

    new-array v5, v10, [Ljava/lang/Object;

    const-string v6, "going to force sync engine!"

    aput-object v6, v5, v9

    invoke-static {v11, v5}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    :try_start_0
    iget-object v5, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mService:Landroid/os/IBinder;

    if-eqz v5, :cond_1

    .line 311
    iget-object v5, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mService:Landroid/os/IBinder;

    invoke-static {v5}, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;

    move-result-object v0

    .line 312
    .local v0, engine:Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;
    const-string v5, "BlurContactsSyncHandler"

    invoke-interface {v0, v5}, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;->forceSync(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    .end local v0           #engine:Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;
    :goto_0
    invoke-static {}, Lcom/motorola/blur/service/blur/sync/engine/SyncEngineProxyFactory;->getInstance()Lcom/motorola/blur/service/blur/sync/engine/SyncEngineProxyFactory;

    move-result-object v1

    .line 320
    .local v1, engineProxy:Lcom/motorola/blur/service/blur/sync/engine/SyncEngineProxyFactory;
    invoke-virtual {v1, p0}, Lcom/motorola/blur/service/blur/sync/engine/SyncEngineProxyFactory;->getProxy(Landroid/content/Context;)Lcom/motorola/blur/service/blur/sync/engine/ISyncEngineProxy;

    move-result-object v3

    .line 321
    .local v3, proxy:Lcom/motorola/blur/service/blur/sync/engine/ISyncEngineProxy;
    invoke-interface {v3}, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngineProxy;->resumeSyncing()Z

    move-result v4

    .line 322
    .local v4, resumed:Z
    if-nez v4, :cond_0

    .line 326
    const-string v5, "SetupCBBAS"

    new-array v5, v10, [Ljava/lang/Object;

    const-string v6, "Failed to resume Sync"

    aput-object v6, v5, v9

    invoke-static {v11, v5}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    :cond_0
    return-void

    .line 314
    .end local v1           #engineProxy:Lcom/motorola/blur/service/blur/sync/engine/SyncEngineProxyFactory;
    .end local v3           #proxy:Lcom/motorola/blur/service/blur/sync/engine/ISyncEngineProxy;
    .end local v4           #resumed:Z
    :cond_1
    :try_start_1
    const-string v5, "SetupCBBAS"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "Couldn\'t force sync- no service object"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 316
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 317
    .local v2, exception:Landroid/os/RemoteException;
    const-string v5, "SetupCBBAS"

    new-array v5, v10, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t force sync: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v11, v5}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private showNotification()V
    .locals 11

    .prologue
    const v10, 0x7f0c0151

    const/4 v9, 0x0

    .line 399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 400
    .local v5, when:J
    invoke-virtual {p0}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 402
    .local v1, context:Landroid/content/Context;
    new-instance v4, Landroid/content/Intent;

    const-class v7, Lcom/motorola/blur/setup/CaptchaActivity;

    invoke-direct {v4, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 403
    .local v4, notificationIntent:Landroid/content/Intent;
    const-string v7, "android.intent.extra.shortcut.ICON"

    iget-object v8, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mCaptchaImage:Lcom/google/protobuf/ByteString;

    invoke-virtual {v8}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 404
    const/high16 v7, 0x1000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 406
    invoke-static {p0, v9, v4, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 410
    .local v0, contentIntent:Landroid/app/PendingIntent;
    new-instance v3, Landroid/app/Notification;

    const v7, 0x7f020029

    invoke-virtual {p0, v10}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v7, v8, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 412
    .local v3, notification:Landroid/app/Notification;
    iget v7, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v3, Landroid/app/Notification;->flags:I

    .line 413
    const v7, 0x7f0c0150

    invoke-virtual {p0, v7}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v10}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v1, v7, v8, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 416
    const-string v7, "notification"

    invoke-virtual {p0, v7}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 417
    .local v2, mNotificationManager:Landroid/app/NotificationManager;
    const/16 v7, 0x64

    invoke-virtual {v2, v7, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 418
    return-void
.end method

.method private unbindSyncService()V
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mBound:Z

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mBound:Z

    .line 194
    :cond_0
    return-void
.end method


# virtual methods
.method public isTrackRecordServiceOnDuty()Z
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mBusyOnDuty:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCaptchaRecieved(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;I)V
    .locals 0
    .parameter "serverCaptchaInfo"
    .parameter "errorCode"

    .prologue
    .line 334
    return-void
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 173
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 175
    sput v3, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->sRetriedTimes:I

    .line 176
    iput-boolean v3, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mBusyOnDuty:Z

    .line 177
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mBundle:Landroid/os/Bundle;

    .line 179
    invoke-static {}, Lcom/motorola/blur/setup/CaptchaSingleton;->getCaptchaSingletonObject()Lcom/motorola/blur/setup/CaptchaSingleton;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mCaptchaSingleton:Lcom/motorola/blur/setup/CaptchaSingleton;

    .line 180
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mCaptchaSingleton:Lcom/motorola/blur/setup/CaptchaSingleton;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/blur/setup/CaptchaSingleton;->setResponse(Ljava/lang/Boolean;)V

    .line 181
    new-instance v1, Lcom/motorola/blur/setup/BlurAccountCreator;

    invoke-direct {v1, p0, p0, v3}, Lcom/motorola/blur/setup/BlurAccountCreator;-><init>(Landroid/content/Context;Lcom/motorola/blur/setup/BlurAccountCreationListener;Z)V

    iput-object v1, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mAccountCreatorNewAccount:Lcom/motorola/blur/setup/BlurAccountCreator;

    .line 183
    invoke-direct {p0}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->registerReceiver()V

    .line 184
    invoke-direct {p0}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->unbindSyncService()V

    .line 185
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.blur.service.blur.Actions.BIND_SYNC_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, bindSync:Landroid/content/Intent;
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mBound:Z

    .line 187
    return-void
.end method

.method public onCreationFinished(ZLcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)V
    .locals 10
    .parameter "success"
    .parameter "captchaInfo"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v9, "requestState"

    .line 353
    iput-boolean v6, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mBusyOnDuty:Z

    .line 354
    if-ne p1, v7, :cond_1

    .line 356
    new-instance v2, Landroid/content/Intent;

    const-string v4, "SilentRegActionAccomplished"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 357
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "com.motorola.blur.setupprovider.Permissions.ACCESS_ACCOUNTS"

    invoke-virtual {p0, v2, v4}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 360
    .local v3, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/motorola/blur/setup/HomeActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 362
    .local v1, cn:Landroid/content/ComponentName;
    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v4

    if-ne v4, v8, :cond_0

    .line 366
    invoke-direct {p0}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->resumeSync()V

    .line 368
    :cond_0
    const-string v4, "com.motorola.blur.setup"

    const-string v5, "com.motorola.blur.setup.CreateBackgroundBlurAccountReceiver"

    invoke-static {v3, v4, v5, v6}, Lcom/motorola/blur/setup/SilentBlurUtility;->disableComponent(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 369
    invoke-virtual {p0}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->stopAutoTrackService()V

    .line 391
    .end local v1           #cn:Landroid/content/ComponentName;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return-void

    .line 371
    :cond_1
    invoke-direct {p0, p2}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->getCaptchaImage(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)V

    .line 372
    iget-object v4, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mCaptchaSingleton:Lcom/motorola/blur/setup/CaptchaSingleton;

    invoke-virtual {v4, p2}, Lcom/motorola/blur/setup/CaptchaSingleton;->setCaptchaInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)V

    .line 373
    iget-boolean v4, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mCaptchaRequired:Z

    if-eqz v4, :cond_5

    .line 375
    iget v4, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mSignFrom:I

    if-ne v4, v8, :cond_3

    .line 376
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 377
    .local v0, captchaIntent:Landroid/content/Intent;
    const-class v4, Lcom/motorola/blur/setup/CaptchaActivity;

    invoke-virtual {v0, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 378
    const-string v4, "android.intent.extra.shortcut.ICON"

    iget-object v5, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mCaptchaImage:Lcom/google/protobuf/ByteString;

    invoke-virtual {v5}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 379
    const/high16 v4, 0x1000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 380
    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->startActivity(Landroid/content/Intent;)V

    .line 385
    .end local v0           #captchaIntent:Landroid/content/Intent;
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mBundle:Landroid/os/Bundle;

    const-string v5, "requestState"

    invoke-virtual {v4, v9, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 381
    :cond_3
    iget v4, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mSignFrom:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    iget v4, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mSignFrom:I

    if-ne v4, v7, :cond_2

    .line 383
    :cond_4
    invoke-direct {p0}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->showNotification()V

    goto :goto_1

    .line 388
    :cond_5
    iget-object v4, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mBundle:Landroid/os/Bundle;

    const-string v5, "requestState"

    invoke-virtual {v4, v9, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 233
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mAccountCreatorNewAccount:Lcom/motorola/blur/setup/BlurAccountCreator;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/BlurAccountCreator;->finishIfAvailable()V

    .line 235
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 236
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 237
    return-void
.end method

.method public onLoginFinished(ZLjava/lang/String;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)V
    .locals 0
    .parameter "success"
    .parameter "googleUser"
    .parameter "captchaInfo"

    .prologue
    .line 396
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v4, 0x1

    const-string v5, "requestState"

    .line 199
    const-string v2, "SilentRegRequestFrom"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 202
    .local v1, from:I
    if-eqz v1, :cond_0

    .line 203
    iget-boolean v2, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mBusyOnDuty:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mBundle:Landroid/os/Bundle;

    const-string v3, "requestState"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eq v4, v2, :cond_1

    .line 204
    iput-boolean v4, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mBusyOnDuty:Z

    .line 205
    iput v1, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mSignFrom:I

    .line 207
    invoke-virtual {p0}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->startAutoTrackService()V

    .line 225
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 210
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mBundle:Landroid/os/Bundle;

    const-string v3, "requestState"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v4, v2, :cond_2

    .line 212
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 213
    .local v0, captchaIntent:Landroid/content/Intent;
    const-class v2, Lcom/motorola/blur/setup/CaptchaActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 214
    const-string v2, "android.intent.extra.shortcut.ICON"

    iget-object v3, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mCaptchaImage:Lcom/google/protobuf/ByteString;

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 215
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 216
    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 220
    .end local v0           #captchaIntent:Landroid/content/Intent;
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.motorola.blur.setup.starttimer"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public startAutoTrackService()V
    .locals 6

    .prologue
    const-wide/32 v2, 0x124f80

    .line 277
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mTask:Ljava/util/TimerTask;

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService$4;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService$4;-><init>(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mTask:Ljava/util/TimerTask;

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 287
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mTimer:Ljava/util/Timer;

    .line 288
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mTask:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 290
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->startSignUpWithRandomId()V

    .line 292
    return-void
.end method

.method public startSignUpWithRandomId()V
    .locals 10

    .prologue
    const/16 v9, 0x14

    const/4 v8, 0x0

    .line 240
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 241
    .local v0, RNG:Ljava/util/Random;
    invoke-virtual {p0}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 242
    .local v4, tm:Landroid/telephony/TelephonyManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .local v2, mUsername:Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 245
    const-string v5, "@random.svcmot.com"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-static {v5, v6, v7}, Lcom/motorola/blur/util/SimpleEncryptUtil;->encrypt(Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object v3

    .line 248
    .local v3, password:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-ge v5, v6, :cond_0

    .line 249
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "djwlci"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 251
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v9, :cond_1

    .line 252
    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 256
    :cond_1
    iget-object v5, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mBundle:Landroid/os/Bundle;

    const-string v6, "CaptchaRequired"

    iget-boolean v7, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mCaptchaRequired:Z

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 257
    iget-object v5, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mBundle:Landroid/os/Bundle;

    const-string v6, "existing"

    invoke-virtual {v5, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 258
    iget-object v5, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mBundle:Landroid/os/Bundle;

    const-string v6, "username"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v5, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mBundle:Landroid/os/Bundle;

    const-string v6, "password"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v5, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mBundle:Landroid/os/Bundle;

    const-string v6, "data1"

    const-string v7, "Silent Signon"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v5, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mAccountCreatorNewAccount:Lcom/motorola/blur/setup/BlurAccountCreator;

    iget-object v6, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Lcom/motorola/blur/setup/BlurAccountCreator;->createOrLogin(Landroid/os/Bundle;)V

    .line 266
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.motorola.blur.setup.starttimer"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->sendBroadcast(Landroid/content/Intent;)V

    .line 269
    return-void
.end method

.method public stopAutoTrackService()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 296
    iput-boolean v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mBusyOnDuty:Z

    .line 297
    sput v0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->sRetriedTimes:I

    .line 298
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 299
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 300
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 301
    invoke-virtual {p0}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->stopSelf()V

    .line 302
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 304
    return-void
.end method
