.class public Lcom/android/server/ThrottleService;
.super Landroid/net/IThrottleManager$Stub;
.source "ThrottleService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ThrottleService$DataRecorder;,
        Lcom/android/server/ThrottleService$MyHandler;,
        Lcom/android/server/ThrottleService$SettingsObserver;,
        Lcom/android/server/ThrottleService$InterfaceObserver;
    }
.end annotation


# static fields
.field private static final ACTION_POLL:Ljava/lang/String; = "com.android.server.ThrottleManager.action.POLL"

.field private static final ACTION_RESET:Ljava/lang/String; = "com.android.server.ThorottleManager.action.RESET"

.field private static final DBG:Z = true

.field private static final EVENT_IFACE_UP:I = 0x4

.field private static final EVENT_POLICY_CHANGED:I = 0x1

.field private static final EVENT_POLL_ALARM:I = 0x2

.field private static final EVENT_REBOOT_RECOVERY:I = 0x0

.field private static final EVENT_RESET_ALARM:I = 0x3

.field private static final INITIAL_POLL_DELAY_SEC:I = 0x5a

.field private static final MAX_NTP_CACHE_AGE_SEC:I = 0x15180

.field private static final MAX_NTP_FETCH_WAIT:I = 0x2710

.field private static final NOTIFICATION_WARNING:I = 0x2

.field private static POLL_REQUEST:I = 0x0

.field private static final PROPERTIES_FILE:Ljava/lang/String; = "/etc/gps.conf"

.field private static RESET_REQUEST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ThrottleService"

.field private static final TESTING_ENABLED_PROPERTY:Ljava/lang/String; = "persist.throttle.testing"

.field private static final TESTING_POLLING_PERIOD_SEC:I = 0x3c

.field private static final TESTING_RESET_PERIOD_SEC:I = 0x258

.field private static final TESTING_THRESHOLD:J = 0x100000L

.field private static final THROTTLE_INDEX_UNINITIALIZED:I = -0x1

.field private static final THROTTLE_INDEX_UNTHROTTLED:I

.field private static final VDBG:Z


# instance fields
.field private cachedNtp:J

.field private cachedNtpTimestamp:J

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIface:Ljava/lang/String;

.field private mInterfaceObserver:Lcom/android/server/ThrottleService$InterfaceObserver;

.field private mLastRead:J

.field private mLastWrite:J

.field private mMaxNtpCacheAgeSec:I

.field private mNMService:Landroid/os/INetworkManagementService;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNtpActive:Z

.field private mNtpServer:Ljava/lang/String;

.field private mPendingPollIntent:Landroid/app/PendingIntent;

.field private mPendingResetIntent:Landroid/app/PendingIntent;

.field private mPolicyNotificationsAllowedMask:I

.field private mPolicyPollPeriodSec:I

.field private mPolicyResetDay:I

.field private mPolicyThreshold:J

.field private mPolicyThrottleValue:I

.field private mRecorder:Lcom/android/server/ThrottleService$DataRecorder;

.field private mSettingsObserver:Lcom/android/server/ThrottleService$SettingsObserver;

.field private mThread:Landroid/os/HandlerThread;

.field private mThrottleIndex:I

.field private mThrottlingNotification:Landroid/app/Notification;

.field private mWarningNotificationSent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput v0, Lcom/android/server/ThrottleService;->POLL_REQUEST:I

    const/4 v0, 0x1

    sput v0, Lcom/android/server/ThrottleService;->RESET_REQUEST:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/net/IThrottleManager$Stub;-><init>()V

    iput-boolean v5, p0, Lcom/android/server/ThrottleService;->mWarningNotificationSent:Z

    const v3, 0x15180

    iput v3, p0, Lcom/android/server/ThrottleService;->mMaxNtpCacheAgeSec:I

    iput-object p1, p0, Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;

    iput-boolean v5, p0, Lcom/android/server/ThrottleService;->mNtpActive:Z

    iget-object v3, p0, Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104002d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ThrottleService;->mIface:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    iput-object v3, p0, Lcom/android/server/ThrottleService;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.server.ThrottleManager.action.POLL"

    invoke-direct {v1, v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v1, pollIntent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/server/ThrottleService;->POLL_REQUEST:I

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ThrottleService;->mPendingPollIntent:Landroid/app/PendingIntent;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.server.ThorottleManager.action.RESET"

    invoke-direct {v2, v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v2, resetIntent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/server/ThrottleService;->RESET_REQUEST:I

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ThrottleService;->mPendingResetIntent:Landroid/app/PendingIntent;

    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ThrottleService;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/android/server/ThrottleService;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ThrottleService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/ThrottleService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/ThrottleService;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/ThrottleService;->mThrottleIndex:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/ThrottleService;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/ThrottleService;->mMaxNtpCacheAgeSec:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/ThrottleService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/server/ThrottleService;->mMaxNtpCacheAgeSec:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/ThrottleService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/server/ThrottleService;->mThrottleIndex:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/ThrottleService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/ThrottleService;->checkForAuthoritativeTime()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/ThrottleService;)Landroid/os/INetworkManagementService;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/ThrottleService;->mNMService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/ThrottleService;)J
    .locals 2
    .parameter "x0"

    .prologue
    iget-wide v0, p0, Lcom/android/server/ThrottleService;->mLastRead:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/android/server/ThrottleService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Lcom/android/server/ThrottleService;->mLastRead:J

    return-wide p1
.end method

.method static synthetic access$1314(Lcom/android/server/ThrottleService;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    iget-wide v0, p0, Lcom/android/server/ThrottleService;->mLastRead:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/ThrottleService;->mLastRead:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/android/server/ThrottleService;)J
    .locals 2
    .parameter "x0"

    .prologue
    iget-wide v0, p0, Lcom/android/server/ThrottleService;->mLastWrite:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/android/server/ThrottleService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Lcom/android/server/ThrottleService;->mLastWrite:J

    return-wide p1
.end method

.method static synthetic access$1414(Lcom/android/server/ThrottleService;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    iget-wide v0, p0, Lcom/android/server/ThrottleService;->mLastWrite:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/ThrottleService;->mLastWrite:J

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/android/server/ThrottleService;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/ThrottleService;->mPendingPollIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/ThrottleService;)Landroid/app/AlarmManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/ThrottleService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/ThrottleService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/ThrottleService;->mNtpServer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/ThrottleService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/ThrottleService;->mNtpActive:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/ThrottleService;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/ThrottleService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/ThrottleService;)Lcom/android/server/ThrottleService$DataRecorder;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/ThrottleService;->mRecorder:Lcom/android/server/ThrottleService$DataRecorder;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/ThrottleService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/ThrottleService;->mWarningNotificationSent:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/ThrottleService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/ThrottleService;->mWarningNotificationSent:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/ThrottleService;Lcom/android/server/ThrottleService$DataRecorder;)Lcom/android/server/ThrottleService$DataRecorder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/server/ThrottleService;->mRecorder:Lcom/android/server/ThrottleService$DataRecorder;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/server/ThrottleService;)Landroid/app/Notification;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/ThrottleService;->mThrottlingNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/server/ThrottleService;Landroid/app/Notification;)Landroid/app/Notification;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/server/ThrottleService;->mThrottlingNotification:Landroid/app/Notification;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/server/ThrottleService;)J
    .locals 2
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/ThrottleService;->getBestTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2300(Lcom/android/server/ThrottleService;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/ThrottleService;->mPendingResetIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/ThrottleService;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/ThrottleService;->mPolicyPollPeriodSec:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/ThrottleService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/server/ThrottleService;->mPolicyPollPeriodSec:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/ThrottleService;)J
    .locals 2
    .parameter "x0"

    .prologue
    iget-wide v0, p0, Lcom/android/server/ThrottleService;->mPolicyThreshold:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/android/server/ThrottleService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Lcom/android/server/ThrottleService;->mPolicyThreshold:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/android/server/ThrottleService;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/ThrottleService;->mPolicyThrottleValue:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/ThrottleService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/server/ThrottleService;->mPolicyThrottleValue:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/ThrottleService;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/ThrottleService;->mPolicyResetDay:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/ThrottleService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/server/ThrottleService;->mPolicyResetDay:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/ThrottleService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/ThrottleService;->mIface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/ThrottleService;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/ThrottleService;->mPolicyNotificationsAllowedMask:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/ThrottleService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/server/ThrottleService;->mPolicyNotificationsAllowedMask:I

    return p1
.end method

.method private checkForAuthoritativeTime()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/ThrottleService;->mNtpActive:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ThrottleService;->mNtpServer:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/server/ThrottleService;->getBestTime()J

    goto :goto_0
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "ThrottleService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getBestTime()J
    .locals 9

    .prologue
    iget-object v5, p0, Lcom/android/server/ThrottleService;->mNtpServer:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/server/ThrottleService;->mNtpActive:Z

    if-eqz v5, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/ThrottleService;->cachedNtpTimestamp:J

    sub-long v1, v5, v7

    .local v1, ntpAge:J
    iget v5, p0, Lcom/android/server/ThrottleService;->mMaxNtpCacheAgeSec:I

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    cmp-long v5, v1, v5

    if-gez v5, :cond_0

    iget-wide v5, p0, Lcom/android/server/ThrottleService;->cachedNtp:J

    add-long/2addr v5, v1

    .end local v1           #ntpAge:J
    :goto_0
    return-wide v5

    :cond_0
    new-instance v0, Landroid/net/SntpClient;

    invoke-direct {v0}, Landroid/net/SntpClient;-><init>()V

    .local v0, client:Landroid/net/SntpClient;
    iget-object v5, p0, Lcom/android/server/ThrottleService;->mNtpServer:Ljava/lang/String;

    const/16 v6, 0x2710

    invoke-virtual {v0, v5, v6}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/ThrottleService;->cachedNtp:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/ThrottleService;->cachedNtpTimestamp:J

    iget-boolean v5, p0, Lcom/android/server/ThrottleService;->mNtpActive:Z

    if-nez v5, :cond_1

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/ThrottleService;->mNtpActive:Z

    iget-object v5, p0, Lcom/android/server/ThrottleService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    iget-wide v5, p0, Lcom/android/server/ThrottleService;->cachedNtp:J

    goto :goto_0

    .end local v0           #client:Landroid/net/SntpClient;
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .local v3, time:J
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/ThrottleService;->mNtpActive:Z

    move-wide v5, v3

    goto :goto_0
.end method

.method private ntpToWallTime(J)J
    .locals 6
    .parameter "ntpTime"

    .prologue
    invoke-direct {p0}, Lcom/android/server/ThrottleService;->getBestTime()J

    move-result-wide v0

    .local v0, bestNow:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .local v2, localNow:J
    sub-long v4, p1, v0

    add-long/2addr v4, v2

    return-wide v4
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const-wide/16 v6, 0x3e8

    iget-object v1, p0, Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: can\'t dump ThrottleService from from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The threshold is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/ThrottleService;->mPolicyThreshold:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", after which you experince throttling to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ThrottleService;->mPolicyThrottleValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "kbps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current period is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ThrottleService;->mRecorder:Lcom/android/server/ThrottleService$DataRecorder;

    invoke-virtual {v2}, Lcom/android/server/ThrottleService$DataRecorder;->getPeriodEnd()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/ThrottleService;->mRecorder:Lcom/android/server/ThrottleService$DataRecorder;

    invoke-virtual {v4}, Lcom/android/server/ThrottleService$DataRecorder;->getPeriodStart()J

    move-result-wide v4

    sub-long/2addr v2, v4

    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds long "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "and ends in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ThrottleService;->mIface:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/server/ThrottleService;->getResetTime(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Polling every "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ThrottleService;->mPolicyPollPeriodSec:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current Throttle Index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ThrottleService;->mThrottleIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max NTP Cache Age is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ThrottleService;->mMaxNtpCacheAgeSec:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/ThrottleService;->mRecorder:Lcom/android/server/ThrottleService$DataRecorder;

    invoke-virtual {v1}, Lcom/android/server/ThrottleService$DataRecorder;->getPeriodCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Period["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] - read:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ThrottleService;->mRecorder:Lcom/android/server/ThrottleService$DataRecorder;

    invoke-virtual {v2, v0}, Lcom/android/server/ThrottleService$DataRecorder;->getPeriodRx(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", written:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ThrottleService;->mRecorder:Lcom/android/server/ThrottleService$DataRecorder;

    invoke-virtual {v2, v0}, Lcom/android/server/ThrottleService$DataRecorder;->getPeriodTx(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized getByteCount(Ljava/lang/String;III)J
    .locals 2
    .parameter "iface"
    .parameter "dir"
    .parameter "period"
    .parameter "ago"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ThrottleService;->enforceAccessPermission()V

    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/android/server/ThrottleService;->mRecorder:Lcom/android/server/ThrottleService$DataRecorder;

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/server/ThrottleService;->mRecorder:Lcom/android/server/ThrottleService$DataRecorder;

    invoke-virtual {v0, p4}, Lcom/android/server/ThrottleService$DataRecorder;->getPeriodTx(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/ThrottleService;->mRecorder:Lcom/android/server/ThrottleService$DataRecorder;

    invoke-virtual {v0, p4}, Lcom/android/server/ThrottleService$DataRecorder;->getPeriodRx(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCliffLevel(Ljava/lang/String;I)I
    .locals 1
    .parameter "iface"
    .parameter "cliff"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ThrottleService;->enforceAccessPermission()V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/android/server/ThrottleService;->mPolicyThrottleValue:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCliffThreshold(Ljava/lang/String;I)J
    .locals 2
    .parameter "iface"
    .parameter "cliff"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ThrottleService;->enforceAccessPermission()V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/ThrottleService;->mPolicyThreshold:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHelpUri()Ljava/lang/String;
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/server/ThrottleService;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "throttle_help_uri"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getPeriodStartTime(Ljava/lang/String;)J
    .locals 4
    .parameter "iface"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ThrottleService;->enforceAccessPermission()V

    const-wide/16 v0, 0x0

    .local v0, startTime:J
    iget-object v2, p0, Lcom/android/server/ThrottleService;->mRecorder:Lcom/android/server/ThrottleService$DataRecorder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/ThrottleService;->mRecorder:Lcom/android/server/ThrottleService$DataRecorder;

    invoke-virtual {v2}, Lcom/android/server/ThrottleService$DataRecorder;->getPeriodStart()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/ThrottleService;->ntpToWallTime(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    :cond_0
    monitor-exit p0

    return-wide v0

    .end local v0           #startTime:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getResetTime(Ljava/lang/String;)J
    .locals 4
    .parameter "iface"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ThrottleService;->enforceAccessPermission()V

    const-wide/16 v0, 0x0

    .local v0, resetTime:J
    iget-object v2, p0, Lcom/android/server/ThrottleService;->mRecorder:Lcom/android/server/ThrottleService$DataRecorder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/ThrottleService;->mRecorder:Lcom/android/server/ThrottleService$DataRecorder;

    invoke-virtual {v2}, Lcom/android/server/ThrottleService$DataRecorder;->getPeriodEnd()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/ThrottleService;->ntpToWallTime(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    :cond_0
    monitor-exit p0

    return-wide v0

    .end local v0           #resetTime:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getThrottle(Ljava/lang/String;)I
    .locals 2
    .parameter "iface"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ThrottleService;->enforceAccessPermission()V

    iget v0, p0, Lcom/android/server/ThrottleService;->mThrottleIndex:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/ThrottleService;->mPolicyThrottleValue:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method systemReady()V
    .locals 10

    .prologue
    const-string v9, "ThrottleService"

    iget-object v5, p0, Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/ThrottleService$1;

    invoke-direct {v6, p0}, Lcom/android/server/ThrottleService$1;-><init>(Lcom/android/server/ThrottleService;)V

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "com.android.server.ThrottleManager.action.POLL"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/ThrottleService$2;

    invoke-direct {v6, p0}, Lcom/android/server/ThrottleService$2;-><init>(Lcom/android/server/ThrottleService;)V

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "com.android.server.ThorottleManager.action.RESET"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v5, Landroid/os/HandlerThread;

    const-string v6, "ThrottleService"

    invoke-direct {v5, v9}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/ThrottleService;->mThread:Landroid/os/HandlerThread;

    iget-object v5, p0, Lcom/android/server/ThrottleService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    new-instance v5, Lcom/android/server/ThrottleService$MyHandler;

    iget-object v6, p0, Lcom/android/server/ThrottleService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/server/ThrottleService$MyHandler;-><init>(Lcom/android/server/ThrottleService;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/server/ThrottleService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/ThrottleService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    new-instance v5, Lcom/android/server/ThrottleService$InterfaceObserver;

    iget-object v6, p0, Lcom/android/server/ThrottleService;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x4

    iget-object v8, p0, Lcom/android/server/ThrottleService;->mIface:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8}, Lcom/android/server/ThrottleService$InterfaceObserver;-><init>(Landroid/os/Handler;ILjava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/ThrottleService;->mInterfaceObserver:Lcom/android/server/ThrottleService$InterfaceObserver;

    :try_start_0
    iget-object v5, p0, Lcom/android/server/ThrottleService;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v6, p0, Lcom/android/server/ThrottleService;->mInterfaceObserver:Lcom/android/server/ThrottleService$InterfaceObserver;

    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v5, Lcom/android/server/ThrottleService$SettingsObserver;

    iget-object v6, p0, Lcom/android/server/ThrottleService;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Lcom/android/server/ThrottleService$SettingsObserver;-><init>(Landroid/os/Handler;I)V

    iput-object v5, p0, Lcom/android/server/ThrottleService;->mSettingsObserver:Lcom/android/server/ThrottleService$SettingsObserver;

    iget-object v5, p0, Lcom/android/server/ThrottleService;->mSettingsObserver:Lcom/android/server/ThrottleService$SettingsObserver;

    iget-object v6, p0, Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/android/server/ThrottleService$SettingsObserver;->observe(Landroid/content/Context;)V

    const/4 v3, 0x0

    .local v3, stream:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .local v2, properties:Ljava/util/Properties;
    new-instance v1, Ljava/io/File;

    const-string v5, "/etc/gps.conf"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, file:Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v3           #stream:Ljava/io/FileInputStream;
    .local v4, stream:Ljava/io/FileInputStream;
    :try_start_2
    invoke-virtual {v2, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v5, "NTP_SERVER"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/ThrottleService;->mNtpServer:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    if-eqz v4, :cond_0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :cond_0
    :goto_1
    move-object v3, v4

    .end local v1           #file:Ljava/io/File;
    .end local v2           #properties:Ljava/util/Properties;
    .end local v4           #stream:Ljava/io/FileInputStream;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    :cond_1
    :goto_2
    return-void

    .end local v3           #stream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v5

    move-object v0, v5

    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "ThrottleService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not register InterfaceObserver "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    :catch_1
    move-exception v5

    move-object v0, v5

    .local v0, e:Ljava/io/IOException;
    :goto_3
    :try_start_4
    const-string v5, "ThrottleService"

    const-string v6, "Could not open GPS configuration file /etc/gps.conf"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_1

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v5

    goto :goto_2

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v3, :cond_2

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_2
    :goto_5
    throw v5

    :catch_3
    move-exception v6

    goto :goto_5

    .end local v3           #stream:Ljava/io/FileInputStream;
    .restart local v1       #file:Ljava/io/File;
    .restart local v2       #properties:Ljava/util/Properties;
    .restart local v4       #stream:Ljava/io/FileInputStream;
    :catch_4
    move-exception v5

    goto :goto_1

    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #stream:Ljava/io/FileInputStream;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v3           #stream:Ljava/io/FileInputStream;
    .restart local v4       #stream:Ljava/io/FileInputStream;
    :catch_5
    move-exception v5

    move-object v0, v5

    move-object v3, v4

    .end local v4           #stream:Ljava/io/FileInputStream;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    goto :goto_3
.end method
