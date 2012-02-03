.class public Landroid/content/SyncManager;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/SyncManager$8;,
        Landroid/content/SyncManager$SyncHandler;,
        Landroid/content/SyncManager$ServiceConnectionData;,
        Landroid/content/SyncManager$SyncTimeTracker;,
        Landroid/content/SyncManager$ActiveSyncContext;,
        Landroid/content/SyncManager$SyncAlarmIntentReceiver;,
        Landroid/content/SyncManager$SyncHandlerMessagePayload;,
        Landroid/content/SyncManager$InitializerServiceConnection;
    }
.end annotation


# static fields
.field private static final ACTION_SYNC_ALARM:Ljava/lang/String; = "android.content.syncmanager.SYNC_ALARM"

.field private static final DEFAULT_MAX_SYNC_RETRY_TIME_IN_SECONDS:J = 0xe10L

.field private static final DELAY_RETRY_SYNC_IN_PROGRESS_IN_SECONDS:I = 0xa

.field private static final ERROR_NOTIFICATION_DELAY_MS:J = 0x927c0L

.field private static final HANDLE_SYNC_ALARM_WAKE_LOCK:Ljava/lang/String; = "SyncManagerHandleSyncAlarm"

.field private static final INITIALIZATION_UNBIND_DELAY_MS:I = 0x1388

.field private static final INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/Account; = null

.field private static final INITIAL_SYNC_RETRY_TIME_IN_MS:J = 0x7530L

#the value of this static final field might be set in the static constructor
.field private static final LOCAL_SYNC_DELAY:J = 0x0L

#the value of this static final field might be set in the static constructor
.field private static final MAX_TIME_PER_SYNC:J = 0x0L

.field private static final SYNC_NOTIFICATION_DELAY:J = 0x7530L

.field private static final SYNC_WAKE_LOCK:Ljava/lang/String; = "*sync*"

.field private static final TAG:Ljava/lang/String; = "SyncManager"


# instance fields
.field private volatile mAccounts:[Landroid/accounts/Account;

.field private mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;

.field private mAlarmService:Landroid/app/AlarmManager;

.field private mBackgroundDataSettingChanged:Landroid/content/BroadcastReceiver;

.field private volatile mBootCompleted:Z

.field private mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

.field private mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

.field private mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private volatile mDataConnectionIsConnected:Z

.field private volatile mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mMainHandler:Landroid/os/Handler;

.field private mNeedSyncActiveNotification:Z

.field private mNeedSyncErrorNotification:Z

.field private final mNotificationMgr:Landroid/app/NotificationManager;

.field private mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mStorageIntentReceiver:Landroid/content/BroadcastReceiver;

.field private volatile mStorageIsLow:Z

.field private final mSyncAdapters:Landroid/content/SyncAdaptersCache;

.field private final mSyncAlarmIntent:Landroid/app/PendingIntent;

.field private final mSyncHandler:Landroid/content/SyncManager$SyncHandler;

.field public final mSyncQueue:Landroid/content/SyncQueue;

.field private final mSyncStorageEngine:Landroid/content/SyncStorageEngine;

.field private volatile mSyncWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 81
    const-string/jumbo v6, "sync.local_sync_delay"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, localSyncDelayString:Ljava/lang/String;
    const-wide/16 v0, 0x7530

    .line 83
    .local v0, localSyncDelay:J
    if-eqz v2, :cond_0

    .line 85
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 90
    :cond_0
    :goto_0
    sput-wide v0, Landroid/content/SyncManager;->LOCAL_SYNC_DELAY:J

    .line 92
    const-string/jumbo v6, "sync.max_time_per_sync"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 93
    .local v5, maxTimePerSyncString:Ljava/lang/String;
    const-wide/32 v3, 0x493e0

    .line 94
    .local v3, maxTimePerSync:J
    if-eqz v5, :cond_1

    .line 96
    :try_start_1
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v3

    .line 101
    :cond_1
    :goto_1
    sput-wide v3, Landroid/content/SyncManager;->MAX_TIME_PER_SYNC:J

    .line 197
    const/4 v6, 0x0

    new-array v6, v6, [Landroid/accounts/Account;

    sput-object v6, Landroid/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/Account;

    return-void

    .line 86
    .end local v3           #maxTimePerSync:J
    .end local v5           #maxTimePerSyncString:Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_0

    .line 97
    .restart local v3       #maxTimePerSync:J
    .restart local v5       #maxTimePerSyncString:Ljava/lang/String;
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 10
    .parameter "context"
    .parameter "factoryTest"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v9, "android.content.syncmanager.SYNC_ALARM"

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    sget-object v3, Landroid/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/Account;

    iput-object v3, p0, Landroid/content/SyncManager;->mAccounts:[Landroid/accounts/Account;

    .line 139
    iput-boolean v6, p0, Landroid/content/SyncManager;->mDataConnectionIsConnected:Z

    .line 140
    iput-boolean v6, p0, Landroid/content/SyncManager;->mStorageIsLow:Z

    .line 143
    iput-object v8, p0, Landroid/content/SyncManager;->mAlarmService:Landroid/app/AlarmManager;

    .line 148
    iput-object v8, p0, Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;

    .line 151
    iput-boolean v6, p0, Landroid/content/SyncManager;->mNeedSyncErrorNotification:Z

    .line 153
    iput-boolean v6, p0, Landroid/content/SyncManager;->mNeedSyncActiveNotification:Z

    .line 162
    new-instance v3, Landroid/content/SyncManager$1;

    invoke-direct {v3, p0}, Landroid/content/SyncManager$1;-><init>(Landroid/content/SyncManager;)V

    iput-object v3, p0, Landroid/content/SyncManager;->mStorageIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 182
    new-instance v3, Landroid/content/SyncManager$2;

    invoke-direct {v3, p0}, Landroid/content/SyncManager$2;-><init>(Landroid/content/SyncManager;)V

    iput-object v3, p0, Landroid/content/SyncManager;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    .line 188
    new-instance v3, Landroid/content/SyncManager$3;

    invoke-direct {v3, p0}, Landroid/content/SyncManager$3;-><init>(Landroid/content/SyncManager;)V

    iput-object v3, p0, Landroid/content/SyncManager;->mBackgroundDataSettingChanged:Landroid/content/BroadcastReceiver;

    .line 242
    new-instance v3, Landroid/content/SyncManager$4;

    invoke-direct {v3, p0}, Landroid/content/SyncManager$4;-><init>(Landroid/content/SyncManager;)V

    iput-object v3, p0, Landroid/content/SyncManager;->mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 288
    new-instance v3, Landroid/content/SyncManager$5;

    invoke-direct {v3, p0}, Landroid/content/SyncManager$5;-><init>(Landroid/content/SyncManager;)V

    iput-object v3, p0, Landroid/content/SyncManager;->mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 300
    iput-boolean v6, p0, Landroid/content/SyncManager;->mBootCompleted:Z

    .line 315
    invoke-static {p1}, Landroid/content/SyncStorageEngine;->init(Landroid/content/Context;)V

    .line 316
    invoke-static {}, Landroid/content/SyncStorageEngine;->getSingleton()Landroid/content/SyncStorageEngine;

    move-result-object v3

    iput-object v3, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    .line 317
    new-instance v3, Landroid/content/SyncQueue;

    iget-object v4, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    invoke-direct {v3, v4}, Landroid/content/SyncQueue;-><init>(Landroid/content/SyncStorageEngine;)V

    iput-object v3, p0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    .line 319
    iput-object p1, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    .line 321
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "SyncHandlerThread"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 323
    .local v2, syncThread:Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 324
    new-instance v3, Landroid/content/SyncManager$SyncHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroid/content/SyncManager$SyncHandler;-><init>(Landroid/content/SyncManager;Landroid/os/Looper;)V

    iput-object v3, p0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    .line 325
    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Landroid/content/SyncManager;->mMainHandler:Landroid/os/Handler;

    .line 327
    new-instance v3, Landroid/content/SyncAdaptersCache;

    iget-object v4, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/content/SyncAdaptersCache;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    .line 328
    iget-object v3, p0, Landroid/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    new-instance v4, Landroid/content/SyncManager$6;

    invoke-direct {v4, p0}, Landroid/content/SyncManager$6;-><init>(Landroid/content/SyncManager;)V

    iget-object v5, p0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    invoke-virtual {v3, v4, v5}, Landroid/content/SyncAdaptersCache;->setListener(Landroid/content/pm/RegisteredServicesCacheListener;Landroid/os/Handler;)V

    .line 337
    iget-object v3, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.content.syncmanager.SYNC_ALARM"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v6, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Landroid/content/SyncManager;->mSyncAlarmIntent:Landroid/app/PendingIntent;

    .line 340
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 341
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v3, p0, Landroid/content/SyncManager;->mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 343
    if-nez p2, :cond_0

    .line 344
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 345
    .restart local v0       #intentFilter:Landroid/content/IntentFilter;
    iget-object v3, p0, Landroid/content/SyncManager;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 348
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 349
    .restart local v0       #intentFilter:Landroid/content/IntentFilter;
    iget-object v3, p0, Landroid/content/SyncManager;->mBackgroundDataSettingChanged:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 351
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 352
    .restart local v0       #intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
    iget-object v3, p0, Landroid/content/SyncManager;->mStorageIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 355
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 356
    .restart local v0       #intentFilter:Landroid/content/IntentFilter;
    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 357
    iget-object v3, p0, Landroid/content/SyncManager;->mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 359
    if-nez p2, :cond_2

    .line 360
    const-string/jumbo v3, "notification"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Landroid/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 362
    new-instance v3, Landroid/content/SyncManager$SyncAlarmIntentReceiver;

    invoke-direct {v3, p0}, Landroid/content/SyncManager$SyncAlarmIntentReceiver;-><init>(Landroid/content/SyncManager;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.content.syncmanager.SYNC_ALARM"

    invoke-direct {v4, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 367
    :goto_0
    const-string/jumbo v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 368
    .local v1, pm:Landroid/os/PowerManager;
    const-string v3, "*sync*"

    invoke-virtual {v1, v7, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Landroid/content/SyncManager;->mSyncWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 369
    iget-object v3, p0, Landroid/content/SyncManager;->mSyncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 375
    const-string v3, "SyncManagerHandleSyncAlarm"

    invoke-virtual {v1, v7, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Landroid/content/SyncManager;->mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 377
    iget-object v3, p0, Landroid/content/SyncManager;->mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 379
    iget-object v3, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    new-instance v4, Landroid/content/SyncManager$7;

    invoke-direct {v4, p0}, Landroid/content/SyncManager$7;-><init>(Landroid/content/SyncManager;)V

    invoke-virtual {v3, v7, v4}, Landroid/content/SyncStorageEngine;->addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V

    .line 387
    if-nez p2, :cond_1

    .line 388
    iget-object v3, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    iget-object v4, p0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    invoke-virtual {v3, p0, v4, v6}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 391
    iget-object v3, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/SyncManager;->onAccountsUpdated([Landroid/accounts/Account;)V

    .line 393
    :cond_1
    return-void

    .line 365
    .end local v1           #pm:Landroid/os/PowerManager;
    :cond_2
    iput-object v8, p0, Landroid/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/content/SyncManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Landroid/content/SyncManager;->mStorageIsLow:Z

    return v0
.end method

.method static synthetic access$002(Landroid/content/SyncManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Landroid/content/SyncManager;->mStorageIsLow:Z

    return p1
.end method

.method static synthetic access$100(Landroid/content/SyncManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/content/SyncManager;->sendCheckAlarmsMessage()V

    return-void
.end method

.method static synthetic access$1000(Landroid/content/SyncManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;

    return-object v0
.end method

.method static synthetic access$1202(Landroid/content/SyncManager;Landroid/content/SyncManager$ActiveSyncContext;)Landroid/content/SyncManager$ActiveSyncContext;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;

    return-object p1
.end method

.method static synthetic access$1402(Landroid/content/SyncManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Landroid/content/SyncManager;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$1500(Landroid/content/SyncManager;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/content/SyncManager;)[Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Landroid/content/SyncManager;->mAccounts:[Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$1700()J
    .locals 2

    .prologue
    .line 68
    sget-wide v0, Landroid/content/SyncManager;->MAX_TIME_PER_SYNC:J

    return-wide v0
.end method

.method static synthetic access$1800()[Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Landroid/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/content/SyncManager;)Landroid/content/SyncAdaptersCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/SyncManager;)Landroid/content/SyncManager$SyncHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/content/SyncManager;Landroid/content/SyncOperation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Landroid/content/SyncManager;->increaseBackoffSetting(Landroid/content/SyncOperation;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/content/SyncManager;Landroid/content/SyncOperation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Landroid/content/SyncManager;->clearBackoffSetting(Landroid/content/SyncOperation;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/content/SyncManager;Landroid/content/SyncOperation;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/content/SyncManager;->setDelayUntilTime(Landroid/content/SyncOperation;J)V

    return-void
.end method

.method static synthetic access$2300(Landroid/content/SyncManager;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Landroid/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/content/SyncManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Landroid/content/SyncManager;->mNeedSyncActiveNotification:Z

    return v0
.end method

.method static synthetic access$2402(Landroid/content/SyncManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Landroid/content/SyncManager;->mNeedSyncActiveNotification:Z

    return p1
.end method

.method static synthetic access$2500(Landroid/content/SyncManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Landroid/content/SyncManager;->mNeedSyncErrorNotification:Z

    return v0
.end method

.method static synthetic access$2502(Landroid/content/SyncManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Landroid/content/SyncManager;->mNeedSyncErrorNotification:Z

    return p1
.end method

.method static synthetic access$2600(Landroid/content/SyncManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/content/SyncManager;->ensureAlarmService()V

    return-void
.end method

.method static synthetic access$2700(Landroid/content/SyncManager;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncAlarmIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$2800(Landroid/content/SyncManager;)Landroid/app/AlarmManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Landroid/content/SyncManager;->mAlarmService:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/SyncManager;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/SyncManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Landroid/content/SyncManager;->mDataConnectionIsConnected:Z

    return v0
.end method

.method static synthetic access$402(Landroid/content/SyncManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Landroid/content/SyncManager;->mDataConnectionIsConnected:Z

    return p1
.end method

.method static synthetic access$500(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    return-object v0
.end method

.method static synthetic access$700(Landroid/content/SyncManager;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Landroid/content/SyncManager;->mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$800(Landroid/content/SyncManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/content/SyncManager;->sendSyncAlarmMessage()V

    return-void
.end method

.method static synthetic access$900(Landroid/content/SyncManager;Landroid/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Landroid/content/SyncManager;->sendSyncFinishedOrCanceledMessage(Landroid/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    return-void
.end method

.method private clearBackoffSetting(Landroid/content/SyncOperation;)V
    .locals 7
    .parameter "op"

    .prologue
    const-wide/16 v3, -0x1

    .line 692
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    iget-object v1, p1, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v2, p1, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    move-wide v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/content/SyncStorageEngine;->setBackoff(Landroid/accounts/Account;Ljava/lang/String;JJ)V

    .line 694
    return-void
.end method

.method private dumpDayStatistic(Ljava/io/PrintWriter;Landroid/content/SyncStorageEngine$DayStats;)V
    .locals 6
    .parameter "pw"
    .parameter "ds"

    .prologue
    const-string v5, " for "

    const-string v4, " avg="

    .line 1149
    const-string v0, "Success ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p2, Landroid/content/SyncStorageEngine$DayStats;->successCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1150
    iget v0, p2, Landroid/content/SyncStorageEngine$DayStats;->successCount:I

    if-lez v0, :cond_0

    .line 1151
    const-string v0, " for "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Landroid/content/SyncStorageEngine$DayStats;->successTime:J

    invoke-direct {p0, p1, v0, v1}, Landroid/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 1152
    const-string v0, " avg="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Landroid/content/SyncStorageEngine$DayStats;->successTime:J

    iget v2, p2, Landroid/content/SyncStorageEngine$DayStats;->successCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Landroid/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 1154
    :cond_0
    const-string v0, ") Failure ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p2, Landroid/content/SyncStorageEngine$DayStats;->failureCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1155
    iget v0, p2, Landroid/content/SyncStorageEngine$DayStats;->failureCount:I

    if-lez v0, :cond_1

    .line 1156
    const-string v0, " for "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Landroid/content/SyncStorageEngine$DayStats;->failureTime:J

    invoke-direct {p0, p1, v0, v1}, Landroid/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 1157
    const-string v0, " avg="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Landroid/content/SyncStorageEngine$DayStats;->failureTime:J

    iget v2, p2, Landroid/content/SyncStorageEngine$DayStats;->failureCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Landroid/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 1159
    :cond_1
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1160
    return-void
.end method

.method private dumpTimeSec(Ljava/io/PrintWriter;J)V
    .locals 4
    .parameter "pw"
    .parameter "time"

    .prologue
    .line 1144
    const-wide/16 v0, 0x3e8

    div-long v0, p2, v0

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    const-wide/16 v0, 0x64

    div-long v0, p2, v0

    const-wide/16 v2, 0xa

    rem-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1145
    const/16 v0, 0x73

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1146
    return-void
.end method

.method private ensureAlarmService()V
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Landroid/content/SyncManager;->mAlarmService:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    .line 415
    iget-object v0, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Landroid/content/SyncManager;->mAlarmService:Landroid/app/AlarmManager;

    .line 417
    :cond_0
    return-void
.end method

.method static formatTime(J)Ljava/lang/String;
    .locals 2
    .parameter "time"

    .prologue
    .line 975
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 976
    .local v0, tobj:Landroid/text/format/Time;
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 977
    const-string v1, "%Y-%m-%d %H:%M:%S"

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    .line 303
    monitor-enter p0

    .line 304
    :try_start_0
    iget-object v0, p0, Landroid/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    .line 308
    :cond_0
    iget-object v0, p0, Landroid/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    monitor-exit p0

    return-object v0

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private increaseBackoffSetting(Landroid/content/SyncOperation;)V
    .locals 14
    .parameter "op"

    .prologue
    const-wide/16 v12, 0x3e8

    .line 697
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 699
    .local v9, now:J
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    iget-object v1, p1, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v2, p1, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/SyncStorageEngine;->getBackoff(Landroid/accounts/Account;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v11

    .line 702
    .local v11, previousSettings:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    if-eqz v11, :cond_0

    iget-object v0, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 704
    :cond_0
    const-wide/16 v0, 0x7530

    const-wide/32 v2, 0x80e8

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/content/SyncManager;->jitterize(JJ)J

    move-result-wide v5

    .line 712
    .local v5, newDelayInMs:J
    :goto_0
    iget-object v0, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sync_max_retry_delay_in_seconds"

    const-wide/16 v2, 0xe10

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v7

    .line 715
    .local v7, maxSyncRetryTimeInSeconds:J
    mul-long v0, v7, v12

    cmp-long v0, v5, v0

    if-lez v0, :cond_1

    .line 716
    mul-long v5, v7, v12

    .line 719
    :cond_1
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    iget-object v1, p1, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v2, p1, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    add-long v3, v9, v5

    invoke-virtual/range {v0 .. v6}, Landroid/content/SyncStorageEngine;->setBackoff(Landroid/accounts/Account;Ljava/lang/String;JJ)V

    .line 721
    return-void

    .line 708
    .end local v5           #newDelayInMs:J
    .end local v7           #maxSyncRetryTimeInSeconds:J
    :cond_2
    iget-object v0, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    mul-long v5, v0, v2

    .restart local v5       #newDelayInMs:J
    goto :goto_0
.end method

.method private initializeSyncAdapter(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 8
    .parameter "account"
    .parameter "authority"

    .prologue
    const-string v7, "SyncManager"

    .line 420
    const-string v3, "SyncManager"

    const/4 v3, 0x2

    invoke-static {v7, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 421
    const-string v3, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeSyncAdapter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", authority "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_0
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {p2, v3}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v2

    .line 424
    .local v2, syncAdapterType:Landroid/content/SyncAdapterType;
    iget-object v3, p0, Landroid/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v3, v2}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v1

    .line 426
    .local v1, syncAdapterInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-nez v1, :cond_2

    .line 427
    const-string v3, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t find a sync adapter for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", removing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v3, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    invoke-virtual {v3, p1, p2}, Landroid/content/SyncStorageEngine;->removeAuthority(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 440
    :cond_1
    :goto_0
    return-void

    .line 432
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 433
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "android.content.SyncAdapter"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    iget-object v3, v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 435
    iget-object v3, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/SyncManager$InitializerServiceConnection;

    iget-object v5, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/content/SyncManager;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v4, p1, p2, v5, v6}, Landroid/content/SyncManager$InitializerServiceConnection;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    const/4 v5, 0x5

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 438
    const-string v3, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeSyncAdapter: failed to bind to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private jitterize(JJ)J
    .locals 5
    .parameter "minValue"
    .parameter "maxValue"

    .prologue
    .line 400
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/Random;-><init>(J)V

    .line 401
    .local v0, random:Ljava/util/Random;
    sub-long v1, p3, p1

    .line 402
    .local v1, spread:J
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 403
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "the difference between the maxValue and the minValue must be less than 2147483647"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 406
    :cond_0
    long-to-int v3, v1

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v3, p1

    return-wide v3
.end method

.method private sendCheckAlarmsMessage()V
    .locals 2

    .prologue
    const-string v1, "SyncManager"

    .line 661
    const-string v0, "SyncManager"

    const/4 v0, 0x2

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SyncManager"

    const-string/jumbo v0, "sending MESSAGE_CHECK_ALARMS"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_0
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/SyncManager$SyncHandler;->sendEmptyMessage(I)Z

    .line 663
    return-void
.end method

.method private sendSyncAlarmMessage()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    const-string v2, "SyncManager"

    .line 656
    const-string v0, "SyncManager"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SyncManager"

    const-string/jumbo v0, "sending MESSAGE_SYNC_ALARM"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_0
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    invoke-virtual {v0, v1}, Landroid/content/SyncManager$SyncHandler;->sendEmptyMessage(I)Z

    .line 658
    return-void
.end method

.method private sendSyncFinishedOrCanceledMessage(Landroid/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V
    .locals 3
    .parameter "syncContext"
    .parameter "syncResult"

    .prologue
    const-string v2, "SyncManager"

    .line 667
    const-string v1, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SyncManager"

    const-string/jumbo v1, "sending MESSAGE_SYNC_FINISHED"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_0
    iget-object v1, p0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    invoke-virtual {v1}, Landroid/content/SyncManager$SyncHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 669
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 670
    new-instance v1, Landroid/content/SyncManager$SyncHandlerMessagePayload;

    invoke-direct {v1, p0, p1, p2}, Landroid/content/SyncManager$SyncHandlerMessagePayload;-><init>(Landroid/content/SyncManager;Landroid/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 671
    iget-object v1, p0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    invoke-virtual {v1, v0}, Landroid/content/SyncManager$SyncHandler;->sendMessage(Landroid/os/Message;)Z

    .line 672
    return-void
.end method

.method private setDelayUntilTime(Landroid/content/SyncOperation;J)V
    .locals 10
    .parameter "op"
    .parameter "delayUntilSeconds"

    .prologue
    .line 724
    const-wide/16 v6, 0x3e8

    mul-long v2, p2, v6

    .line 725
    .local v2, delayUntil:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 727
    .local v0, absoluteNow:J
    cmp-long v6, v2, v0

    if-lez v6, :cond_0

    .line 728
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v8, v2, v0

    add-long v4, v6, v8

    .line 732
    .local v4, newDelayUntilTime:J
    :goto_0
    iget-object v6, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    iget-object v7, p1, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v8, p1, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v4, v5}, Landroid/content/SyncStorageEngine;->setDelayUntilTime(Landroid/accounts/Account;Ljava/lang/String;J)V

    .line 733
    return-void

    .line 730
    .end local v4           #newDelayUntilTime:J
    :cond_0
    const-wide/16 v4, 0x0

    .restart local v4       #newDelayUntilTime:J
    goto :goto_0
.end method


# virtual methods
.method public cancelActiveSync(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 2
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 741
    iget-object v0, p0, Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;

    .line 742
    .local v0, activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    if-eqz v0, :cond_0

    .line 744
    if-eqz p1, :cond_1

    .line 745
    iget-object v1, v0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    iget-object v1, v1, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    invoke-virtual {p1, v1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 758
    :cond_0
    :goto_0
    return-void

    .line 750
    :cond_1
    if-eqz p2, :cond_2

    .line 751
    iget-object v1, v0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    iget-object v1, v1, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 755
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/content/SyncManager;->sendSyncFinishedOrCanceledMessage(Landroid/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    goto :goto_0
.end method

.method public clearScheduledSyncOperations(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 7
    .parameter "account"
    .parameter "authority"

    .prologue
    const-wide/16 v3, -0x1

    .line 806
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object v1, p1

    move-object v2, p2

    move-wide v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/content/SyncStorageEngine;->setBackoff(Landroid/accounts/Account;Ljava/lang/String;JJ)V

    .line 808
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    monitor-enter v0

    .line 809
    :try_start_0
    iget-object v1, p0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    invoke-virtual {v1, p1, p2}, Landroid/content/SyncQueue;->remove(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 810
    monitor-exit v0

    .line 811
    return-void

    .line 810
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "fd"
    .parameter "pw"

    .prologue
    .line 963
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 964
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, p2, v2}, Landroid/content/SyncManager;->dumpSyncState(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;)V

    .line 965
    invoke-virtual {p0, p2, v2}, Landroid/content/SyncManager;->dumpSyncHistory(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;)V

    .line 967
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 968
    const-string v3, "SyncAdapters:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 969
    iget-object v3, p0, Landroid/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v3}, Landroid/content/SyncAdaptersCache;->getAllServices()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 970
    .local v1, info:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 972
    .end local v1           #info:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;
    :cond_0
    return-void
.end method

.method protected dumpSyncHistory(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;)V
    .locals 20
    .parameter "pw"
    .parameter "sb"

    .prologue
    .line 1163
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/SyncStorageEngine;->getDayStatistics()[Landroid/content/SyncStorageEngine$DayStats;

    move-result-object v9

    .line 1164
    .local v9, dses:[Landroid/content/SyncStorageEngine$DayStats;
    if-eqz v9, :cond_6

    const/16 v16, 0x0

    aget-object v16, v9, v16

    if-eqz v16, :cond_6

    .line 1165
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1166
    const-string v16, "Sync Statistics"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1167
    const-string v16, "  Today:  "

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v16, 0x0

    aget-object v16, v9, v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Landroid/content/SyncStorageEngine$DayStats;)V

    .line 1168
    const/16 v16, 0x0

    aget-object v16, v9, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/SyncStorageEngine$DayStats;->day:I

    move v14, v0

    .line 1173
    .local v14, today:I
    const/4 v10, 0x1

    .local v10, i:I
    :goto_0
    const/16 v16, 0x6

    move v0, v10

    move/from16 v1, v16

    if-gt v0, v1, :cond_0

    move-object v0, v9

    array-length v0, v0

    move/from16 v16, v0

    move v0, v10

    move/from16 v1, v16

    if-ge v0, v1, :cond_0

    .line 1174
    aget-object v8, v9, v10

    .line 1175
    .local v8, ds:Landroid/content/SyncStorageEngine$DayStats;
    if-nez v8, :cond_3

    .line 1184
    .end local v8           #ds:Landroid/content/SyncStorageEngine$DayStats;
    :cond_0
    move v15, v14

    .line 1185
    .local v15, weekDay:I
    :cond_1
    :goto_1
    move-object v0, v9

    array-length v0, v0

    move/from16 v16, v0

    move v0, v10

    move/from16 v1, v16

    if-ge v0, v1, :cond_6

    .line 1186
    const/4 v5, 0x0

    .line 1187
    .local v5, aggr:Landroid/content/SyncStorageEngine$DayStats;
    add-int/lit8 v15, v15, -0x7

    .line 1188
    :goto_2
    move-object v0, v9

    array-length v0, v0

    move/from16 v16, v0

    move v0, v10

    move/from16 v1, v16

    if-ge v0, v1, :cond_2

    .line 1189
    aget-object v8, v9, v10

    .line 1190
    .restart local v8       #ds:Landroid/content/SyncStorageEngine$DayStats;
    if-nez v8, :cond_4

    .line 1191
    array-length v10, v9

    .line 1206
    .end local v8           #ds:Landroid/content/SyncStorageEngine$DayStats;
    :cond_2
    if-eqz v5, :cond_1

    .line 1207
    const-string v16, "  Week-"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sub-int v16, v14, v15

    div-int/lit8 v16, v16, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v16, ": "

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1208
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Landroid/content/SyncStorageEngine$DayStats;)V

    goto :goto_1

    .line 1176
    .end local v5           #aggr:Landroid/content/SyncStorageEngine$DayStats;
    .end local v15           #weekDay:I
    .restart local v8       #ds:Landroid/content/SyncStorageEngine$DayStats;
    :cond_3
    move-object v0, v8

    iget v0, v0, Landroid/content/SyncStorageEngine$DayStats;->day:I

    move/from16 v16, v0

    sub-int v7, v14, v16

    .line 1177
    .local v7, delta:I
    const/16 v16, 0x6

    move v0, v7

    move/from16 v1, v16

    if-gt v0, v1, :cond_0

    .line 1179
    const-string v16, "  Day-"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v16, ":  "

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1180
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Landroid/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Landroid/content/SyncStorageEngine$DayStats;)V

    .line 1173
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 1194
    .end local v7           #delta:I
    .restart local v5       #aggr:Landroid/content/SyncStorageEngine$DayStats;
    .restart local v15       #weekDay:I
    :cond_4
    move-object v0, v8

    iget v0, v0, Landroid/content/SyncStorageEngine$DayStats;->day:I

    move/from16 v16, v0

    sub-int v7, v15, v16

    .line 1195
    .restart local v7       #delta:I
    const/16 v16, 0x6

    move v0, v7

    move/from16 v1, v16

    if-gt v0, v1, :cond_2

    .line 1196
    add-int/lit8 v10, v10, 0x1

    .line 1198
    if-nez v5, :cond_5

    .line 1199
    new-instance v5, Landroid/content/SyncStorageEngine$DayStats;

    .end local v5           #aggr:Landroid/content/SyncStorageEngine$DayStats;
    invoke-direct {v5, v15}, Landroid/content/SyncStorageEngine$DayStats;-><init>(I)V

    .line 1201
    .restart local v5       #aggr:Landroid/content/SyncStorageEngine$DayStats;
    :cond_5
    move-object v0, v5

    iget v0, v0, Landroid/content/SyncStorageEngine$DayStats;->successCount:I

    move/from16 v16, v0

    move-object v0, v8

    iget v0, v0, Landroid/content/SyncStorageEngine$DayStats;->successCount:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    move-object v1, v5

    iput v0, v1, Landroid/content/SyncStorageEngine$DayStats;->successCount:I

    .line 1202
    move-object v0, v5

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$DayStats;->successTime:J

    move-wide/from16 v16, v0

    move-object v0, v8

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$DayStats;->successTime:J

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    move-object v2, v5

    iput-wide v0, v2, Landroid/content/SyncStorageEngine$DayStats;->successTime:J

    .line 1203
    move-object v0, v5

    iget v0, v0, Landroid/content/SyncStorageEngine$DayStats;->failureCount:I

    move/from16 v16, v0

    move-object v0, v8

    iget v0, v0, Landroid/content/SyncStorageEngine$DayStats;->failureCount:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    move-object v1, v5

    iput v0, v1, Landroid/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 1204
    move-object v0, v5

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$DayStats;->failureTime:J

    move-wide/from16 v16, v0

    move-object v0, v8

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$DayStats;->failureTime:J

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    move-object v2, v5

    iput-wide v0, v2, Landroid/content/SyncStorageEngine$DayStats;->failureTime:J

    goto/16 :goto_2

    .line 1213
    .end local v5           #aggr:Landroid/content/SyncStorageEngine$DayStats;
    .end local v7           #delta:I
    .end local v8           #ds:Landroid/content/SyncStorageEngine$DayStats;
    .end local v10           #i:I
    .end local v14           #today:I
    .end local v15           #weekDay:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/SyncStorageEngine;->getSyncHistory()Ljava/util/ArrayList;

    move-result-object v12

    .line 1215
    .local v12, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncStorageEngine$SyncHistoryItem;>;"
    if-eqz v12, :cond_b

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_b

    .line 1216
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1217
    const-string v16, "Recent Sync History"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1218
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1219
    .local v4, N:I
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_3
    if-ge v10, v4, :cond_b

    .line 1220
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/SyncStorageEngine$SyncHistoryItem;

    .line 1221
    .local v11, item:Landroid/content/SyncStorageEngine$SyncHistoryItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v16, v0

    move-object v0, v11

    iget v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/content/SyncStorageEngine;->getAuthority(I)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v6

    .line 1223
    .local v6, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    const-string v16, "  #"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v16, v10, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v16, ": "

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1224
    if-eqz v6, :cond_a

    .line 1225
    move-object v0, v6

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1226
    const-string v16, ":"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1227
    move-object v0, v6

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1228
    const-string v16, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1229
    move-object v0, v6

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1233
    :goto_4
    new-instance v13, Landroid/text/format/Time;

    invoke-direct {v13}, Landroid/text/format/Time;-><init>()V

    .line 1234
    .local v13, time:Landroid/text/format/Time;
    move-object v0, v11

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    move-wide/from16 v16, v0

    move-object v0, v13

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1235
    const-string v16, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v16, Landroid/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    move-object v0, v11

    iget v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->source:I

    move/from16 v17, v0

    aget-object v16, v16, v17

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1236
    const-string v16, " @ "

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1237
    move-object v0, v11

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Landroid/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1238
    const-string v16, " for "

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1239
    move-object v0, v11

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Landroid/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 1240
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1241
    move-object v0, v11

    iget v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->event:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    move-object v0, v11

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-nez v16, :cond_7

    move-object v0, v11

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-eqz v16, :cond_8

    .line 1244
    :cond_7
    const-string v16, "    event="

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v0, v11

    iget v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->event:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1245
    const-string v16, " upstreamActivity="

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v0, v11

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1246
    const-string v16, " downstreamActivity="

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v0, v11

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 1248
    :cond_8
    move-object v0, v11

    iget-object v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_9

    const-string/jumbo v16, "success"

    move-object v0, v11

    iget-object v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_9

    .line 1250
    const-string v16, "    mesg="

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v0, v11

    iget-object v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1219
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 1231
    .end local v13           #time:Landroid/text/format/Time;
    :cond_a
    const-string v16, "<no account>"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1254
    .end local v4           #N:I
    .end local v6           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v10           #i:I
    .end local v11           #item:Landroid/content/SyncStorageEngine$SyncHistoryItem;
    :cond_b
    return-void
.end method

.method protected dumpSyncState(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;)V
    .locals 34
    .parameter "pw"
    .parameter "sb"

    .prologue
    .line 981
    const-string v29, "data connected: "

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/SyncManager;->mDataConnectionIsConnected:Z

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 982
    const-string/jumbo v29, "memory low: "

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/SyncManager;->mStorageIsLow:Z

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 984
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mAccounts:[Landroid/accounts/Account;

    move-object v5, v0

    .line 985
    .local v5, accounts:[Landroid/accounts/Account;
    const-string v29, "accounts: "

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 986
    sget-object v29, Landroid/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/Account;

    move-object v0, v5

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_2

    .line 987
    move-object v0, v5

    array-length v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 991
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v21

    .line 992
    .local v21, now:J
    const-string/jumbo v29, "now: "

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 993
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, " ("

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Landroid/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ")"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 994
    const-string/jumbo v29, "uptime: "

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v29, 0x3e8

    div-long v29, v21, v29

    invoke-static/range {v29 .. v30}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 995
    const-string v29, " (HH:MM:SS)"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 996
    const-string/jumbo v29, "time spent syncing: "

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 997
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->mSyncTimeTracker:Landroid/content/SyncManager$SyncTimeTracker;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/SyncManager$SyncTimeTracker;->timeSpentSyncing()J

    move-result-wide v29

    const-wide/16 v31, 0x3e8

    div-long v29, v29, v31

    invoke-static/range {v29 .. v30}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 999
    const-string v29, " (HH:MM:SS), sync "

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1000
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->mSyncTimeTracker:Landroid/content/SyncManager$SyncTimeTracker;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Landroid/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z

    move/from16 v29, v0

    if-eqz v29, :cond_3

    const-string v29, ""

    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1001
    const-string v29, "in progress"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    move-object/from16 v29, v0

    #getter for: Landroid/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;
    invoke-static/range {v29 .. v29}, Landroid/content/SyncManager$SyncHandler;->access$1100(Landroid/content/SyncManager$SyncHandler;)Ljava/lang/Long;

    move-result-object v29

    if-eqz v29, :cond_4

    .line 1003
    const-string/jumbo v29, "next alarm time: "

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    move-object/from16 v29, v0

    #getter for: Landroid/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;
    invoke-static/range {v29 .. v29}, Landroid/content/SyncManager$SyncHandler;->access$1100(Landroid/content/SyncManager$SyncHandler;)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1004
    const-string v29, " ("

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    move-object/from16 v29, v0

    #getter for: Landroid/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;
    invoke-static/range {v29 .. v29}, Landroid/content/SyncManager$SyncHandler;->access$1100(Landroid/content/SyncManager$SyncHandler;)Ljava/lang/Long;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v29

    sub-long v29, v29, v21

    const-wide/16 v31, 0x3e8

    div-long v29, v29, v31

    invoke-static/range {v29 .. v30}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1006
    const-string v29, " (HH:MM:SS) from now)"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1011
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;

    move-object v7, v0

    .line 1013
    .local v7, activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    const-string v29, "active sync: "

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1015
    const-string/jumbo v29, "notification info: "

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1016
    const/16 v29, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->toString(Ljava/lang/StringBuilder;)V

    .line 1018
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1020
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    move-object/from16 v29, v0

    monitor-enter v29

    .line 1021
    :try_start_0
    const-string/jumbo v30, "sync queue: "

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1022
    const/16 v30, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/SyncQueue;->dump(Ljava/lang/StringBuilder;)V

    .line 1024
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1025
    monitor-exit v29
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/SyncStorageEngine;->getCurrentSync()Landroid/content/SyncInfo;

    move-result-object v6

    .line 1028
    .local v6, active:Landroid/content/SyncInfo;
    if-eqz v6, :cond_7

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v29, v0

    move-object v0, v6

    iget v0, v0, Landroid/content/SyncInfo;->authorityId:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/content/SyncStorageEngine;->getAuthority(I)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v9

    .line 1031
    .local v9, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    move-object v0, v6

    iget-wide v0, v0, Landroid/content/SyncInfo;->startTime:J

    move-wide/from16 v29, v0

    sub-long v29, v21, v29

    const-wide/16 v31, 0x3e8

    div-long v10, v29, v31

    .line 1032
    .local v10, durationInSeconds:J
    const-string v29, "Active sync: "

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1033
    if-eqz v9, :cond_5

    move-object v0, v9

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    move-object/from16 v29, v0

    :goto_3
    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1034
    const-string v29, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1035
    if-eqz v9, :cond_6

    move-object v0, v9

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    move-object/from16 v29, v0

    :goto_4
    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1036
    if-eqz v7, :cond_0

    .line 1037
    const-string v29, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1038
    sget-object v29, Landroid/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    move-object v0, v7

    iget-object v0, v0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/content/SyncOperation;->syncSource:I

    move/from16 v30, v0

    aget-object v29, v29, v30

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1041
    :cond_0
    const-string v29, ", duration is "

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1042
    invoke-static {v10, v11}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1047
    .end local v9           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v10           #durationInSeconds:J
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/SyncStorageEngine;->getPendingOperations()Ljava/util/ArrayList;

    move-result-object v24

    .line 1049
    .local v24, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncStorageEngine$PendingOperation;>;"
    if-eqz v24, :cond_8

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v29

    if-lez v29, :cond_8

    .line 1050
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1051
    const-string v29, "Pending Syncs"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1052
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1053
    .local v3, N:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_6
    if-ge v12, v3, :cond_8

    .line 1054
    move-object/from16 v0, v24

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/SyncStorageEngine$PendingOperation;

    .line 1055
    .local v23, op:Landroid/content/SyncStorageEngine$PendingOperation;
    const-string v29, "  #"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v29, ": account="

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1056
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/SyncStorageEngine$PendingOperation;->account:Landroid/accounts/Account;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v29, ":"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1057
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/SyncStorageEngine$PendingOperation;->account:Landroid/accounts/Account;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v29, " authority="

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1058
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v29, " expedited="

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1059
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/content/SyncStorageEngine$PendingOperation;->expedited:Z

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1060
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/os/Bundle;->size()I

    move-result v29

    if-lez v29, :cond_1

    .line 1061
    const/16 v29, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1062
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;Z)V

    .line 1063
    const-string v29, "    extras: "

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1053
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_6

    .line 989
    .end local v3           #N:I
    .end local v6           #active:Landroid/content/SyncInfo;
    .end local v7           #activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    .end local v12           #i:I
    .end local v21           #now:J
    .end local v23           #op:Landroid/content/SyncStorageEngine$PendingOperation;
    .end local v24           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncStorageEngine$PendingOperation;>;"
    :cond_2
    const-string/jumbo v29, "not known yet"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1000
    .restart local v21       #now:J
    :cond_3
    const-string/jumbo v29, "not "

    goto/16 :goto_1

    .line 1008
    :cond_4
    const-string/jumbo v29, "no alarm is scheduled (there had better not be any pending syncs)"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1025
    .restart local v7       #activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    :catchall_0
    move-exception v30

    :try_start_1
    monitor-exit v29
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v30

    .line 1033
    .restart local v6       #active:Landroid/content/SyncInfo;
    .restart local v9       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .restart local v10       #durationInSeconds:J
    :cond_5
    const-string v29, "<no account>"

    goto/16 :goto_3

    .line 1035
    :cond_6
    const-string v29, "<no account>"

    goto/16 :goto_4

    .line 1044
    .end local v9           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v10           #durationInSeconds:J
    :cond_7
    const-string v29, "No sync is in progress."

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1069
    .restart local v24       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncStorageEngine$PendingOperation;>;"
    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1070
    const-string v29, "Sync Status"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1071
    move-object v8, v5

    .local v8, arr$:[Landroid/accounts/Account;
    move-object v0, v8

    array-length v0, v0

    move/from16 v18, v0

    .local v18, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    move v14, v13

    .end local v13           #i$:I
    .end local p2
    .local v14, i$:I
    :goto_7
    move v0, v14

    move/from16 v1, v18

    if-ge v0, v1, :cond_13

    aget-object v4, v8, v14

    .line 1072
    .local v4, account:Landroid/accounts/Account;
    const-string v29, "  Account "

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v0, v4

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1073
    const-string v29, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v0, v4

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1074
    const-string v29, ":"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/SyncAdaptersCache;->getAllServices()Ljava/util/Collection;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .end local v14           #i$:I
    .local v13, i$:Ljava/util/Iterator;
    :cond_9
    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_12

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 1077
    .local v28, syncAdapterType:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    move-object/from16 p2, v0

    check-cast p2, Landroid/content/SyncAdapterType;

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object v0, v4

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_9

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    move-object/from16 p2, v0

    check-cast p2, Landroid/content/SyncAdapterType;

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object v1, v4

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/SyncStorageEngine;->getOrCreateAuthority(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v26

    .line 1083
    .local v26, settings:Landroid/content/SyncStorageEngine$AuthorityInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/SyncStorageEngine;->getOrCreateSyncStatus(Landroid/content/SyncStorageEngine$AuthorityInfo;)Landroid/content/SyncStatusInfo;

    move-result-object v27

    .line 1084
    .local v27, status:Landroid/content/SyncStatusInfo;
    const-string v29, "    "

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1085
    const-string v29, ":"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1086
    const-string v29, "      settings:"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1087
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    move/from16 v30, v0

    if-lez v30, :cond_d

    const-string/jumbo v30, "syncable"

    :goto_9
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1090
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, ", "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    move/from16 v30, v0

    if-eqz v30, :cond_f

    const-string v30, "enabled"

    :goto_a
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1091
    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    move-wide/from16 v29, v0

    cmp-long v29, v29, v21

    if-lez v29, :cond_a

    .line 1092
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, ", delay for "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    move-wide/from16 v30, v0

    sub-long v30, v30, v21

    const-wide/16 v32, 0x3e8

    div-long v30, v30, v32

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " sec"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1095
    :cond_a
    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    move-wide/from16 v29, v0

    cmp-long v29, v29, v21

    if-lez v29, :cond_b

    .line 1096
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, ", backoff for "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    move-wide/from16 v30, v0

    sub-long v30, v30, v21

    const-wide/16 v32, 0x3e8

    div-long v30, v30, v32

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " sec"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1099
    :cond_b
    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    move-wide/from16 v29, v0

    const-wide/16 v31, 0x0

    cmp-long v29, v29, v31

    if-lez v29, :cond_c

    .line 1100
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, ", the backoff increment is "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x3e8

    div-long v30, v30, v32

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " sec"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1103
    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1104
    const/16 v25, 0x0

    .line 1105
    .local v25, periodicIndex:I
    :goto_b
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    move/from16 v0, v25

    move/from16 v1, v29

    if-ge v0, v1, :cond_10

    .line 1107
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Pair;

    .line 1108
    .local v15, info:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getPeriodicSyncTime(I)J

    move-result-wide v16

    .line 1109
    .local v16, lastPeriodicTime:J
    move-object v0, v15

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 p2, v0

    check-cast p2, Ljava/lang/Long;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v29

    const-wide/16 v31, 0x3e8

    mul-long v29, v29, v31

    add-long v19, v16, v29

    .line 1110
    .local v19, nextPeriodicTime:J
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "      periodic period="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object v0, v15

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", extras="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object v0, v15

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", next="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static/range {v19 .. v20}, Landroid/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1106
    add-int/lit8 v25, v25, 0x1

    goto :goto_b

    .line 1087
    .end local v15           #info:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    .end local v16           #lastPeriodicTime:J
    .end local v19           #nextPeriodicTime:J
    .end local v25           #periodicIndex:I
    :cond_d
    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    move/from16 v30, v0

    if-nez v30, :cond_e

    const-string/jumbo v30, "not syncable"

    goto/16 :goto_9

    :cond_e
    const-string/jumbo v30, "not initialized"

    goto/16 :goto_9

    .line 1090
    :cond_f
    const-string v30, "disabled"

    goto/16 :goto_a

    .line 1114
    .restart local v25       #periodicIndex:I
    :cond_10
    const-string v29, "      count: local="

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v27

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1115
    const-string v29, " poll="

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v27

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1116
    const-string v29, " periodic="

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v27

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1117
    const-string v29, " server="

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v27

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourceServer:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1118
    const-string v29, " user="

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v27

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourceUser:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1119
    const-string v29, " total="

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v27

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSyncs:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1120
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1121
    const-string v29, "      total duration: "

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1122
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    move-wide/from16 v29, v0

    const-wide/16 v31, 0x3e8

    div-long v29, v29, v31

    invoke-static/range {v29 .. v30}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1123
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v29, v0

    const-wide/16 v31, 0x0

    cmp-long v29, v29, v31

    if-eqz v29, :cond_11

    .line 1124
    const-string v29, "      SUCCESS: source="

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1125
    sget-object v29, Landroid/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    move-object/from16 v0, v27

    iget v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    move/from16 v30, v0

    aget-object v29, v29, v30

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1126
    const-string v29, " time="

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1127
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v29, v0

    invoke-static/range {v29 .. v30}, Landroid/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1129
    :cond_11
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v29, v0

    const-wide/16 v31, 0x0

    cmp-long v29, v29, v31

    if-eqz v29, :cond_9

    .line 1130
    const-string v29, "      FAILURE: source="

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1131
    sget-object v29, Landroid/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    move-object/from16 v0, v27

    iget v0, v0, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    move/from16 v30, v0

    aget-object v29, v29, v30

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1133
    const-string v29, " initialTime="

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1134
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    move-wide/from16 v29, v0

    invoke-static/range {v29 .. v30}, Landroid/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1135
    const-string v29, " lastTime="

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1136
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v29, v0

    invoke-static/range {v29 .. v30}, Landroid/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1137
    const-string v29, "      message: "

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1071
    .end local v25           #periodicIndex:I
    .end local v26           #settings:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v27           #status:Landroid/content/SyncStatusInfo;
    .end local v28           #syncAdapterType:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :cond_12
    add-int/lit8 v13, v14, 0x1

    .local v13, i$:I
    move v14, v13

    .end local v13           #i$:I
    .restart local v14       #i$:I
    goto/16 :goto_7

    .line 1141
    .end local v4           #account:Landroid/accounts/Account;
    :cond_13
    return-void
.end method

.method public getSyncAdapterTypes()[Landroid/content/SyncAdapterType;
    .locals 6

    .prologue
    .line 644
    iget-object v5, p0, Landroid/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v5}, Landroid/content/SyncAdaptersCache;->getAllServices()Ljava/util/Collection;

    move-result-object v3

    .line 646
    .local v3, serviceInfos:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v4, v5, [Landroid/content/SyncAdapterType;

    .line 647
    .local v4, types:[Landroid/content/SyncAdapterType;
    const/4 v0, 0x0

    .line 648
    .local v0, i:I
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0
    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 649
    .local v2, serviceInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    iget-object p0, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast p0, Landroid/content/SyncAdapterType;

    aput-object p0, v4, v0

    .line 650
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 652
    .end local v2           #serviceInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :cond_0
    return-object v4
.end method

.method public getSyncStorageEngine()Landroid/content/SyncStorageEngine;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    return-object v0
.end method

.method maybeRescheduleSync(Landroid/content/SyncResult;Landroid/content/SyncOperation;)V
    .locals 9
    .parameter "syncResult"
    .parameter "operation"

    .prologue
    const/4 v3, 0x0

    const-string/jumbo v5, "upload"

    const-string v4, "ignore_backoff"

    const-string v2, "SyncManager"

    .line 814
    const-string v0, "SyncManager"

    const/4 v0, 0x3

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    .line 815
    .local v7, isLoggable:Z
    if-eqz v7, :cond_0

    .line 816
    const-string v0, "SyncManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "encountered error(s) during the sync: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :cond_0
    new-instance v8, Landroid/content/SyncOperation;

    invoke-direct {v8, p2}, Landroid/content/SyncOperation;-><init>(Landroid/content/SyncOperation;)V

    .line 824
    .end local p2
    .local v8, operation:Landroid/content/SyncOperation;
    iget-object v0, v8, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v1, "ignore_backoff"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 825
    iget-object v0, v8, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v1, "ignore_backoff"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 834
    :cond_1
    iget-object v0, v8, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v1, "do_not_retry"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 835
    const-string v0, "SyncManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "not retrying sync operation because SYNC_EXTRAS_DO_NOT_RETRY was specified "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :goto_0
    return-void

    .line 837
    :cond_2
    iget-object v0, v8, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "upload"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 838
    iget-object v0, v8, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "upload"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 839
    const-string v0, "SyncManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "retrying sync operation as a two-way sync because an upload-only sync encountered an error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    invoke-virtual {p0, v8}, Landroid/content/SyncManager;->scheduleSyncOperation(Landroid/content/SyncOperation;)V

    goto :goto_0

    .line 842
    :cond_3
    iget-boolean v0, p1, Landroid/content/SyncResult;->tooManyRetries:Z

    if-eqz v0, :cond_4

    .line 843
    const-string v0, "SyncManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "not retrying sync operation because it retried too many times: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 845
    :cond_4
    invoke-virtual {p1}, Landroid/content/SyncResult;->madeSomeProgress()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 846
    if-eqz v7, :cond_5

    .line 847
    const-string v0, "SyncManager"

    const-string/jumbo v0, "retrying sync operation because even though it had an error it achieved some success"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :cond_5
    invoke-virtual {p0, v8}, Landroid/content/SyncManager;->scheduleSyncOperation(Landroid/content/SyncOperation;)V

    goto :goto_0

    .line 851
    :cond_6
    iget-boolean v0, p1, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-eqz v0, :cond_8

    .line 852
    if-eqz v7, :cond_7

    .line 853
    const-string v0, "SyncManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "retrying sync operation that failed because there was already a sync in progress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :cond_7
    new-instance v0, Landroid/content/SyncOperation;

    iget-object v1, v8, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget v2, v8, Landroid/content/SyncOperation;->syncSource:I

    iget-object v3, v8, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    iget-object v4, v8, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-wide/16 v5, 0x2710

    invoke-direct/range {v0 .. v6}, Landroid/content/SyncOperation;-><init>(Landroid/accounts/Account;ILjava/lang/String;Landroid/os/Bundle;J)V

    invoke-virtual {p0, v0}, Landroid/content/SyncManager;->scheduleSyncOperation(Landroid/content/SyncOperation;)V

    goto/16 :goto_0

    .line 859
    :cond_8
    invoke-virtual {p1}, Landroid/content/SyncResult;->hasSoftError()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 860
    if-eqz v7, :cond_9

    .line 861
    const-string v0, "SyncManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "retrying sync operation because it encountered a soft error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :cond_9
    invoke-virtual {p0, v8}, Landroid/content/SyncManager;->scheduleSyncOperation(Landroid/content/SyncOperation;)V

    goto/16 :goto_0

    .line 866
    :cond_a
    const-string v0, "SyncManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "not retrying sync operation because the error is a hard error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 9
    .parameter "accounts"

    .prologue
    const/4 v1, 0x0

    .line 201
    iget-object v0, p0, Landroid/content/SyncManager;->mAccounts:[Landroid/accounts/Account;

    sget-object v2, Landroid/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/Account;

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    move v8, v0

    .line 202
    .local v8, justBootedUp:Z
    :goto_0
    iput-object p1, p0, Landroid/content/SyncManager;->mAccounts:[Landroid/accounts/Account;

    .line 206
    iget-object v7, p0, Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;

    .line 207
    .local v7, activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    if-eqz v7, :cond_0

    .line 208
    iget-object v0, v7, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    iget-object v0, v0, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    const-string v0, "SyncManager"

    const-string v2, "canceling sync since the account has been removed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-direct {p0, v7, v1}, Landroid/content/SyncManager;->sendSyncFinishedOrCanceledMessage(Landroid/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    .line 217
    :cond_0
    invoke-direct {p0}, Landroid/content/SyncManager;->sendCheckAlarmsMessage()V

    .line 219
    iget-boolean v0, p0, Landroid/content/SyncManager;->mBootCompleted:Z

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    invoke-virtual {v0, p1}, Landroid/content/SyncStorageEngine;->doDatabaseCleanup([Landroid/accounts/Account;)V

    .line 223
    :cond_1
    array-length v0, p1

    if-lez v0, :cond_2

    .line 237
    move v6, v8

    .line 238
    .local v6, onlyThoseWithUnkownSyncableState:Z
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    invoke-virtual/range {v0 .. v6}, Landroid/content/SyncManager;->scheduleSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JZ)V

    .line 240
    .end local v6           #onlyThoseWithUnkownSyncableState:Z
    :cond_2
    return-void

    .line 201
    .end local v7           #activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    .end local v8           #justBootedUp:Z
    :cond_3
    const/4 v0, 0x0

    move v8, v0

    goto :goto_0
.end method

.method public scheduleLocalSync(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 7
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 637
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 638
    .local v3, extras:Landroid/os/Bundle;
    const-string/jumbo v0, "upload"

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 639
    sget-wide v4, Landroid/content/SyncManager;->LOCAL_SYNC_DELAY:J

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Landroid/content/SyncManager;->scheduleSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JZ)V

    .line 641
    return-void
.end method

.method public scheduleSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JZ)V
    .locals 28
    .parameter "requestedAccount"
    .parameter "requestedAuthority"
    .parameter "extras"
    .parameter "delay"
    .parameter "onlyThoseWithUnkownSyncableState"

    .prologue
    .line 523
    const-string v3, "SyncManager"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    .line 525
    .local v18, isLoggable:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/SyncManager;->mBootCompleted:Z

    move v3, v0

    if-eqz v3, :cond_0

    invoke-direct/range {p0 .. p0}, Landroid/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_0
    const/4 v3, 0x1

    move v12, v3

    .line 528
    .local v12, backgroundDataUsageAllowed:Z
    :goto_0
    if-nez p3, :cond_1

    new-instance p3, Landroid/os/Bundle;

    .end local p3
    invoke-direct/range {p3 .. p3}, Landroid/os/Bundle;-><init>()V

    .line 530
    .restart local p3
    :cond_1
    const-string v3, "expedited"

    const/4 v4, 0x0

    move-object/from16 v0, p3

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 531
    .local v13, expedited:Ljava/lang/Boolean;
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 532
    const-wide/16 p4, -0x1

    .line 536
    :cond_2
    if-eqz p1, :cond_6

    .line 537
    const/4 v3, 0x1

    new-array v10, v3, [Landroid/accounts/Account;

    const/4 v3, 0x0

    aput-object p1, v10, v3

    .line 550
    .local v10, accounts:[Landroid/accounts/Account;
    :cond_3
    const-string/jumbo v3, "upload"

    const/4 v4, 0x0

    move-object/from16 v0, p3

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    .line 551
    .local v27, uploadOnly:Z
    const-string v3, "force"

    const/4 v4, 0x0

    move-object/from16 v0, p3

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 552
    .local v21, manualSync:Z
    if-eqz v21, :cond_4

    .line 553
    const-string v3, "ignore_backoff"

    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 554
    const-string v3, "ignore_settings"

    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 556
    :cond_4
    const-string v3, "ignore_settings"

    const/4 v4, 0x0

    move-object/from16 v0, p3

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 560
    .local v17, ignoreSettings:Z
    if-eqz v27, :cond_8

    .line 561
    const/4 v5, 0x1

    .line 574
    .local v5, source:I
    :goto_1
    new-instance v26, Ljava/util/HashSet;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashSet;-><init>()V

    .line 576
    .local v26, syncableAuthorities:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/SyncAdaptersCache;->getAllServices()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .end local p1
    .local v15, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 577
    .local v23, syncAdapter:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Landroid/content/SyncAdapterType;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, v26

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 525
    .end local v5           #source:I
    .end local v10           #accounts:[Landroid/accounts/Account;
    .end local v12           #backgroundDataUsageAllowed:Z
    .end local v13           #expedited:Ljava/lang/Boolean;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v17           #ignoreSettings:Z
    .end local v21           #manualSync:Z
    .end local v23           #syncAdapter:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v26           #syncableAuthorities:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v27           #uploadOnly:Z
    .restart local p1
    :cond_5
    const/4 v3, 0x0

    move v12, v3

    goto/16 :goto_0

    .line 541
    .restart local v12       #backgroundDataUsageAllowed:Z
    .restart local v13       #expedited:Ljava/lang/Boolean;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mAccounts:[Landroid/accounts/Account;

    move-object v10, v0

    .line 542
    .restart local v10       #accounts:[Landroid/accounts/Account;
    array-length v3, v10

    if-nez v3, :cond_3

    .line 543
    if-eqz v18, :cond_7

    .line 544
    const-string v3, "SyncManager"

    const-string/jumbo v4, "scheduleSync: no accounts configured, dropping"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    .end local p1
    :cond_7
    return-void

    .line 562
    .restart local v17       #ignoreSettings:Z
    .restart local v21       #manualSync:Z
    .restart local v27       #uploadOnly:Z
    .restart local p1
    :cond_8
    if-eqz v21, :cond_9

    .line 563
    const/4 v5, 0x3

    .restart local v5       #source:I
    goto :goto_1

    .line 564
    .end local v5           #source:I
    :cond_9
    if-nez p2, :cond_a

    .line 565
    const/4 v5, 0x2

    .restart local v5       #source:I
    goto :goto_1

    .line 569
    .end local v5           #source:I
    :cond_a
    const/4 v5, 0x0

    .restart local v5       #source:I
    goto :goto_1

    .line 582
    .end local p1
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v26       #syncableAuthorities:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_b
    if-eqz p2, :cond_c

    .line 583
    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    .line 584
    .local v14, hasSyncAdapter:Z
    invoke-virtual/range {v26 .. v26}, Ljava/util/HashSet;->clear()V

    .line 585
    if-eqz v14, :cond_c

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 588
    .end local v14           #hasSyncAdapter:Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/SyncStorageEngine;->getMasterSyncAutomatically()Z

    move-result v22

    .line 590
    .local v22, masterSyncAutomatically:Z
    invoke-virtual/range {v26 .. v26}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .end local v15           #i$:Ljava/util/Iterator;
    :cond_d
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 591
    .local v6, authority:Ljava/lang/String;
    move-object v11, v10

    .local v11, arr$:[Landroid/accounts/Account;
    move-object v0, v11

    array-length v0, v0

    move/from16 v20, v0

    .local v20, len$:I
    const/16 v16, 0x0

    .local v16, i$:I
    :goto_3
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_d

    aget-object v4, v11, v16

    .line 592
    .local v4, account:Landroid/accounts/Account;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object v3, v0

    invoke-virtual {v3, v4, v6}, Landroid/content/SyncStorageEngine;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v19

    .line 593
    .local v19, isSyncable:I
    if-nez v19, :cond_f

    .line 591
    .end local v4           #account:Landroid/accounts/Account;
    :cond_e
    :goto_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 596
    .restart local v4       #account:Landroid/accounts/Account;
    :cond_f
    if-eqz p6, :cond_10

    if-gez v19, :cond_e

    .line 599
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    move-object v3, v0

    iget-object v7, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v24

    .line 602
    .local v24, syncAdapterInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-eqz v24, :cond_e

    .line 603
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Landroid/content/SyncAdapterType;

    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncAdapterType;->supportsUploading()Z

    move-result v3

    if-nez v3, :cond_11

    if-nez v27, :cond_e

    .line 608
    :cond_11
    if-ltz v19, :cond_12

    if-nez v17, :cond_12

    if-eqz v12, :cond_13

    if-eqz v22, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object v3, v0

    invoke-virtual {v3, v4, v6}, Landroid/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    :cond_12
    const/4 v3, 0x1

    move/from16 v25, v3

    .line 613
    .local v25, syncAllowed:Z
    :goto_5
    if-nez v25, :cond_14

    .line 614
    if-eqz v18, :cond_e

    .line 615
    const-string v3, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "scheduleSync: sync of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .end local v4           #account:Landroid/accounts/Account;
    const-string v7, ", "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " is not allowed, dropping request"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 608
    .end local v25           #syncAllowed:Z
    .restart local v4       #account:Landroid/accounts/Account;
    :cond_13
    const/4 v3, 0x0

    move/from16 v25, v3

    goto :goto_5

    .line 621
    .restart local v25       #syncAllowed:Z
    :cond_14
    if-eqz v18, :cond_15

    .line 622
    const-string v3, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "scheduleSync: delay "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", source "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", account "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", authority "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", extras "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_15
    new-instance v3, Landroid/content/SyncOperation;

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    invoke-direct/range {v3 .. v9}, Landroid/content/SyncOperation;-><init>(Landroid/accounts/Account;ILjava/lang/String;Landroid/os/Bundle;J)V

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/SyncManager;->scheduleSyncOperation(Landroid/content/SyncOperation;)V

    goto/16 :goto_4
.end method

.method public scheduleSyncOperation(Landroid/content/SyncOperation;)V
    .locals 7
    .parameter "syncOperation"

    .prologue
    const/4 v6, 0x2

    const-string v5, "SyncManager"

    .line 768
    iget-object v0, p0, Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;

    .line 769
    .local v0, activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    iget-boolean v3, p1, Landroid/content/SyncOperation;->expedited:Z

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 770
    iget-object v3, v0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    iget-object v3, v3, Landroid/content/SyncOperation;->key:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/SyncOperation;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 775
    .local v1, hasSameKey:Z
    iget-object v3, v0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    iget-boolean v3, v3, Landroid/content/SyncOperation;->expedited:Z

    if-nez v3, :cond_0

    if-nez v1, :cond_0

    .line 776
    new-instance v3, Landroid/content/SyncOperation;

    iget-object v4, v0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    invoke-direct {v3, v4}, Landroid/content/SyncOperation;-><init>(Landroid/content/SyncOperation;)V

    invoke-virtual {p0, v3}, Landroid/content/SyncManager;->scheduleSyncOperation(Landroid/content/SyncOperation;)V

    .line 777
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Landroid/content/SyncManager;->sendSyncFinishedOrCanceledMessage(Landroid/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    .line 783
    .end local v1           #hasSameKey:Z
    :cond_0
    iget-object v3, p0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    monitor-enter v3

    .line 784
    :try_start_0
    iget-object v4, p0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    invoke-virtual {v4, p1}, Landroid/content/SyncQueue;->add(Landroid/content/SyncOperation;)Z

    move-result v2

    .line 785
    .local v2, queueChanged:Z
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 787
    if-eqz v2, :cond_3

    .line 788
    const-string v3, "SyncManager"

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 789
    const-string v3, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scheduleSyncOperation: enqueued "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :cond_1
    invoke-direct {p0}, Landroid/content/SyncManager;->sendCheckAlarmsMessage()V

    .line 798
    :cond_2
    :goto_0
    return-void

    .line 785
    .end local v2           #queueChanged:Z
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 793
    .restart local v2       #queueChanged:Z
    :cond_3
    const-string v3, "SyncManager"

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 794
    const-string v3, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scheduleSyncOperation: dropping duplicate sync operation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
