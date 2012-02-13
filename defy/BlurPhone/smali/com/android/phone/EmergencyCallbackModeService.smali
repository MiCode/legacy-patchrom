.class public Lcom/android/phone/EmergencyCallbackModeService;
.super Landroid/app/Service;
.source "EmergencyCallbackModeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/EmergencyCallbackModeService$LocalBinder;
    }
.end annotation


# static fields
.field private static final DEFAULT_ECM_EXIT_TIMER_VALUE:I = 0x493e0

.field private static final ECM_TIMER_RESET:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "EmergencyCallbackModeService"


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mEcmReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mInEmergencyCall:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mTimeLeft:J

.field private mTimer:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 53
    iput-object v2, p0, Lcom/android/phone/EmergencyCallbackModeService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 54
    iput-object v2, p0, Lcom/android/phone/EmergencyCallbackModeService;->mTimer:Landroid/os/CountDownTimer;

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mTimeLeft:J

    .line 56
    iput-object v2, p0, Lcom/android/phone/EmergencyCallbackModeService;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mInEmergencyCall:Z

    .line 61
    new-instance v0, Lcom/android/phone/EmergencyCallbackModeService$1;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyCallbackModeService$1;-><init>(Lcom/android/phone/EmergencyCallbackModeService;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mHandler:Landroid/os/Handler;

    .line 110
    new-instance v0, Lcom/android/phone/EmergencyCallbackModeService$2;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyCallbackModeService$2;-><init>(Lcom/android/phone/EmergencyCallbackModeService;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mEcmReceiver:Landroid/content/BroadcastReceiver;

    .line 215
    new-instance v0, Lcom/android/phone/EmergencyCallbackModeService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyCallbackModeService$LocalBinder;-><init>(Lcom/android/phone/EmergencyCallbackModeService;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mBinder:Landroid/os/IBinder;

    .line 220
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/EmergencyCallbackModeService;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyCallbackModeService;->resetEcmTimer(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/phone/EmergencyCallbackModeService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/android/phone/EmergencyCallbackModeService;->mTimeLeft:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/phone/EmergencyCallbackModeService;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/phone/EmergencyCallbackModeService;->showNotification(J)V

    return-void
.end method

.method private resetEcmTimer(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 197
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 199
    .local v0, isTimerCanceled:Z
    if-eqz v0, :cond_0

    .line 200
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/EmergencyCallbackModeService;->mInEmergencyCall:Z

    .line 201
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeService;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 202
    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/phone/EmergencyCallbackModeService;->showNotification(J)V

    .line 207
    :goto_0
    return-void

    .line 204
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/EmergencyCallbackModeService;->mInEmergencyCall:Z

    .line 205
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallbackModeService;->startTimerNotification()V

    goto :goto_0
.end method

.method private showNotification(J)V
    .locals 12
    .parameter "millisUntilFinished"

    .prologue
    .line 164
    new-instance v2, Landroid/app/Notification;

    const v5, 0x7f020171

    const v6, 0x7f0b0377

    invoke-virtual {p0, v6}, Lcom/android/phone/EmergencyCallbackModeService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-direct {v2, v5, v6, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 170
    .local v2, notification:Landroid/app/Notification;
    const/4 v5, 0x0

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.phone.action.ACTION_SHOW_ECM_EXIT_DIALOG"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x1000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {p0, v5, v6, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 174
    .local v0, contentIntent:Landroid/app/PendingIntent;
    const/4 v3, 0x0

    .line 175
    .local v3, text:Ljava/lang/String;
    iget-boolean v5, p0, Lcom/android/phone/EmergencyCallbackModeService;->mInEmergencyCall:Z

    if-eqz v5, :cond_0

    .line 176
    const v5, 0x7f0b0379

    invoke-virtual {p0, v5}, Lcom/android/phone/EmergencyCallbackModeService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 184
    :goto_0
    const v5, 0x7f0b0378

    invoke-virtual {p0, v5}, Lcom/android/phone/EmergencyCallbackModeService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, p0, v5, v3, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 187
    const/4 v5, 0x2

    iput v5, v2, Landroid/app/Notification;->flags:I

    .line 190
    iget-object v5, p0, Lcom/android/phone/EmergencyCallbackModeService;->mNotificationManager:Landroid/app/NotificationManager;

    const v6, 0x7f0b0378

    invoke-virtual {v5, v6, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 191
    return-void

    .line 178
    :cond_0
    const-wide/32 v5, 0xea60

    div-long v5, p1, v5

    long-to-int v1, v5

    .line 179
    .local v1, minutes:I
    const-string v5, "%d:%02d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-wide/32 v8, 0xea60

    rem-long v8, p1, v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, time:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackModeService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f0d

    invoke-virtual {v5, v6, v1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private startTimerNotification()V
    .locals 6

    .prologue
    .line 135
    const-string v0, "ro.cdma.ecmexittimer"

    const-wide/32 v4, 0x493e0

    invoke-static {v0, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 139
    .local v2, ecmTimeout:J
    invoke-direct {p0, v2, v3}, Lcom/android/phone/EmergencyCallbackModeService;->showNotification(J)V

    .line 142
    new-instance v0, Lcom/android/phone/EmergencyCallbackModeService$3;

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/EmergencyCallbackModeService$3;-><init>(Lcom/android/phone/EmergencyCallbackModeService;JJ)V

    invoke-virtual {v0}, Lcom/android/phone/EmergencyCallbackModeService$3;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mTimer:Landroid/os/CountDownTimer;

    .line 156
    return-void
.end method


# virtual methods
.method public getEmergencyCallbackModeCallState()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mInEmergencyCall:Z

    return v0
.end method

.method public getEmergencyCallbackModeTimeout()J
    .locals 2

    .prologue
    .line 230
    iget-wide v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mTimeLeft:J

    return-wide v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 74
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 75
    const-string v1, "EmergencyCallbackModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error! Emergency Callback Mode not supported for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phones"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackModeService;->stopSelf()V

    .line 81
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 82
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    const-string v1, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeService;->mEcmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/EmergencyCallbackModeService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyCallbackModeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/phone/EmergencyCallbackModeService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 89
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EmergencyCallbackModeService;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 90
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeService;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/EmergencyCallbackModeService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 92
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallbackModeService;->startTimerNotification()V

    .line 93
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mEcmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallbackModeService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 100
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeService;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    .line 103
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x7f0b0378

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 104
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 105
    return-void
.end method
