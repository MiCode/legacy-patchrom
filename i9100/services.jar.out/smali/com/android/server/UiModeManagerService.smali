.class Lcom/android/server/UiModeManagerService;
.super Landroid/app/IUiModeManager$Stub;
.source "UiModeManagerService.java"


# static fields
.field private static final ACTION_UPDATE_NIGHT_MODE:Ljava/lang/String; = "com.android.server.action.UPDATE_NIGHT_MODE"

.field private static final FACTOR_GMT_OFFSET_LONGITUDE:D = 0.004166666666666667

.field private static final KEY_LAST_UPDATE_INTERVAL:Ljava/lang/String; = "LAST_UPDATE_INTERVAL"

.field private static final LOCATION_UPDATE_DISTANCE_METER:F = 20000.0f

.field private static final LOCATION_UPDATE_ENABLE_INTERVAL_MAX:J = 0xdbba0L

.field private static final LOCATION_UPDATE_ENABLE_INTERVAL_MIN:J = 0x1388L

.field private static final LOCATION_UPDATE_MS:J = 0x5265c00L

.field private static final LOG:Z = false

.field private static final MIN_LOCATION_UPDATE_MS:J = 0x1b7740L

.field private static final MSG_ENABLE_LOCATION_UPDATES:I = 0x1

.field private static final MSG_GET_NEW_LOCATION_UPDATE:I = 0x2

.field private static final MSG_UPDATE_TWILIGHT:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mCarModeEnabled:Z

.field private final mCarModeKeepsScreenOn:Z

.field private mCharging:Z

.field private mComputedNightMode:Z

.field private mConfiguration:Landroid/content/res/Configuration;

.field private final mContext:Landroid/content/Context;

.field private mCurUiMode:I

.field private final mDeskModeKeepsScreenOn:Z

.field private final mDockModeReceiver:Landroid/content/BroadcastReceiver;

.field private mDockState:I

.field private final mEmptyLocationListener:Landroid/location/LocationListener;

.field private final mHandler:Landroid/os/Handler;

.field private mHoldingConfiguration:Z

.field private mLastBroadcastState:I

.field private mLocation:Landroid/location/Location;

.field private final mLocationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field final mLock:Ljava/lang/Object;

.field private mNightMode:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mResultReceiver:Landroid/content/BroadcastReceiver;

.field private mSetUiMode:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSystemReady:Z

.field private final mTwilightUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private final mUpdateLocationReceiver:Landroid/content/BroadcastReceiver;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 310
    invoke-direct {p0}, Landroid/app/IUiModeManager$Stub;-><init>()V

    .line 81
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 83
    iput v6, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    .line 84
    iput v6, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 86
    iput v7, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    .line 87
    iput-boolean v6, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 88
    iput-boolean v6, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    .line 93
    iput v6, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    .line 94
    iput v6, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    .line 96
    iput-boolean v6, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    .line 97
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .line 122
    new-instance v2, Lcom/android/server/UiModeManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/UiModeManagerService$1;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 191
    new-instance v2, Lcom/android/server/UiModeManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/UiModeManagerService$2;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mTwilightUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 200
    new-instance v2, Lcom/android/server/UiModeManagerService$3;

    invoke-direct {v2, p0}, Lcom/android/server/UiModeManagerService$3;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mDockModeReceiver:Landroid/content/BroadcastReceiver;

    .line 209
    new-instance v2, Lcom/android/server/UiModeManagerService$4;

    invoke-direct {v2, p0}, Lcom/android/server/UiModeManagerService$4;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 221
    new-instance v2, Lcom/android/server/UiModeManagerService$5;

    invoke-direct {v2, p0}, Lcom/android/server/UiModeManagerService$5;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mUpdateLocationReceiver:Landroid/content/BroadcastReceiver;

    .line 238
    new-instance v2, Lcom/android/server/UiModeManagerService$6;

    invoke-direct {v2, p0}, Lcom/android/server/UiModeManagerService$6;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mEmptyLocationListener:Landroid/location/LocationListener;

    .line 252
    new-instance v2, Lcom/android/server/UiModeManagerService$7;

    invoke-direct {v2, p0}, Lcom/android/server/UiModeManagerService$7;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mLocationListener:Landroid/location/LocationListener;

    .line 606
    new-instance v2, Lcom/android/server/UiModeManagerService$8;

    invoke-direct {v2, p0}, Lcom/android/server/UiModeManagerService$8;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    .line 311
    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    .line 313
    const-string v2, "uimode"

    invoke-static {v2, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 315
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 317
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mLocationManager:Landroid/location/LocationManager;

    .line 319
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mTwilightUpdateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.android.server.action.UPDATE_NIGHT_MODE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 321
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mDockModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.DOCK_EVENT"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 323
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 325
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 326
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 327
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mUpdateLocationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 329
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 330
    .local v1, powerManager:Landroid/os/PowerManager;
    const/16 v2, 0x1a

    sget-object v3, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 332
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 334
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-ne v2, v7, :cond_0

    move v2, v7

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeKeepsScreenOn:Z

    .line 336
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-ne v2, v7, :cond_1

    move v2, v7

    :goto_1
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mDeskModeKeepsScreenOn:Z

    .line 339
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ui_night_mode"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    .line 341
    return-void

    :cond_0
    move v2, v6

    .line 334
    goto :goto_0

    :cond_1
    move v2, v6

    .line 336
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/server/UiModeManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/UiModeManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/UiModeManagerService;)Landroid/content/res/Configuration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/UiModeManagerService;)Landroid/location/LocationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/UiModeManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/UiModeManagerService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/UiModeManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/UiModeManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/UiModeManagerService;)Landroid/location/Location;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/UiModeManagerService;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/UiModeManagerService;)Landroid/location/LocationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mEmptyLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/UiModeManagerService;)Landroid/location/LocationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method private adjustStatusBarCarModeLocked()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 565
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v2, :cond_0

    .line 566
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-string v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 574
    :cond_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v2, :cond_1

    .line 575
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v3, :cond_4

    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v2, v3}, Landroid/app/StatusBarManager;->disable(I)V

    .line 580
    :cond_1
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v2, :cond_2

    .line 581
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 585
    :cond_2
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v2, :cond_3

    .line 586
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v2, :cond_5

    .line 587
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/internal/app/DisableCarModeActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 589
    .local v0, carModeOffIntent:Landroid/content/Intent;
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 590
    .local v1, n:Landroid/app/Notification;
    const v2, 0x10802b7

    iput v2, v1, Landroid/app/Notification;->icon:I

    .line 591
    const/4 v2, 0x4

    iput v2, v1, Landroid/app/Notification;->defaults:I

    .line 592
    const/4 v2, 0x2

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 593
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroid/app/Notification;->when:J

    .line 594
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const v4, 0x104044a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const v5, 0x104044b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5, v6, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 599
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 604
    .end local v0           #carModeOffIntent:Landroid/content/Intent;
    .end local v1           #n:Landroid/app/Notification;
    :cond_3
    :goto_1
    return-void

    :cond_4
    move v3, v6

    .line 575
    goto :goto_0

    .line 601
    :cond_5
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v6}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1
.end method

.method static buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "category"

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 115
    return-object v0
.end method


# virtual methods
.method public disableCarMode(I)V
    .locals 2
    .parameter "flags"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 345
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(Z)V

    .line 346
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v1, :cond_0

    .line 347
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 349
    :cond_0
    monitor-exit v0

    .line 350
    return-void

    .line 349
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump uimode service from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 817
    :goto_0
    return-void

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 803
    :try_start_0
    const-string v1, "Current UI Mode Service state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 804
    const-string v1, "  mDockState="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 805
    const-string v1, " mLastBroadcastState="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 806
    const-string v1, "  mNightMode="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 807
    const-string v1, " mCarModeEnabled="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 808
    const-string v1, " mComputedNightMode="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 809
    const-string v1, "  mCurUiMode=0x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 810
    const-string v1, " mSetUiMode=0x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 811
    const-string v1, "  mHoldingConfiguration="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 812
    const-string v1, " mSystemReady="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 813
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    if-eqz v1, :cond_1

    .line 814
    const-string v1, "  mLocation="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 816
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public enableCarMode(I)V
    .locals 2
    .parameter "flags"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(Z)V

    .line 355
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v1, :cond_0

    .line 356
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 358
    :cond_0
    monitor-exit v0

    .line 359
    return-void

    .line 358
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCurrentModeType()I
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 363
    :try_start_0
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    and-int/lit8 v1, v1, 0xf

    monitor-exit v0

    return v1

    .line 364
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNightMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 393
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    return v0
.end method

.method isDoingNightMode()Z
    .locals 1

    .prologue
    .line 406
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setCarModeLocked(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 410
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eq v0, p1, :cond_0

    .line 411
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 413
    :cond_0
    return-void
.end method

.method public setNightMode(I)V
    .locals 6
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 368
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 369
    packed-switch p1, :pswitch_data_0

    .line 375
    :try_start_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 389
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 377
    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->isDoingNightMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 378
    monitor-exit v2

    .line 390
    :goto_0
    return-void

    .line 381
    :cond_0
    iget v3, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    if-eq v3, p1, :cond_1

    .line 382
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 383
    .local v0, ident:J
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ui_night_mode"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 385
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 386
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    .line 387
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 389
    .end local v0           #ident:J
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 369
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method systemReady()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 397
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 398
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    .line 399
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 400
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 401
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 402
    monitor-exit v0

    .line 403
    return-void

    :cond_0
    move v1, v3

    .line 399
    goto :goto_0

    .line 402
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final updateConfigurationLocked(Z)V
    .locals 4
    .parameter "sendIt"

    .prologue
    .line 428
    const/4 v1, 0x1

    .line 429
    .local v1, uiMode:I
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v2, :cond_2

    .line 430
    const/4 v1, 0x3

    .line 434
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v2, :cond_5

    .line 435
    iget v2, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    if-nez v2, :cond_4

    .line 436
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->updateTwilightLocked()V

    .line 437
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    if-eqz v2, :cond_3

    const/16 v2, 0x20

    :goto_1
    or-int/2addr v1, v2

    .line 455
    :goto_2
    iput v1, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    .line 457
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    if-eq v1, v2, :cond_1

    .line 458
    iput v1, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    .line 459
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iput v1, v2, Landroid/content/res/Configuration;->uiMode:I

    .line 461
    if-eqz p1, :cond_1

    .line 463
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :cond_1
    :goto_3
    return-void

    .line 431
    :cond_2
    iget v2, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 432
    const/4 v1, 0x2

    goto :goto_0

    .line 437
    :cond_3
    const/16 v2, 0x10

    goto :goto_1

    .line 440
    :cond_4
    iget v2, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    shl-int/lit8 v2, v2, 0x4

    or-int/2addr v1, v2

    goto :goto_2

    .line 444
    :cond_5
    and-int/lit8 v2, v1, -0x31

    or-int/lit8 v1, v2, 0x10

    goto :goto_2

    .line 464
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 465
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    const-string v3, "Failure communicating with activity manager"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method updateDockState(I)V
    .locals 5
    .parameter "newState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 416
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 417
    :try_start_0
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-eq p1, v1, :cond_0

    .line 418
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    .line 419
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    move v1, v4

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(Z)V

    .line 420
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v1, :cond_0

    .line 421
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 424
    :cond_0
    monitor-exit v0

    .line 425
    return-void

    :cond_1
    move v1, v3

    .line 419
    goto :goto_0

    .line 424
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final updateLocked(II)V
    .locals 17
    .parameter "enableFlags"
    .parameter "disableFlags"

    .prologue
    .line 472
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 475
    .local v13, ident:J
    const/4 v11, 0x0

    .line 476
    .local v11, action:Ljava/lang/String;
    const/16 v16, 0x0

    .line 477
    .local v16, oldAction:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    move v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    .line 478
    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarCarModeLocked()V

    .line 479
    sget-object v16, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    .line 484
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    move v3, v0

    if-eqz v3, :cond_8

    .line 485
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    move v3, v0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 486
    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarCarModeLocked()V

    .line 488
    if-eqz v16, :cond_1

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    move-object v3, v0

    new-instance v4, Landroid/content/Intent;

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 491
    :cond_1
    const/4 v3, 0x2

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 492
    sget-object v11, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    .line 507
    :cond_2
    :goto_1
    if-eqz v11, :cond_b

    .line 514
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 515
    .local v4, intent:Landroid/content/Intent;
    const-string v3, "enableFlags"

    move-object v0, v4

    move-object v1, v3

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 516
    const-string v3, "disableFlags"

    move-object v0, v4

    move-object v1, v3

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    move-object v3, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mResultReceiver:Landroid/content/BroadcastReceiver;

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 522
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    .line 546
    .end local v4           #intent:Landroid/content/Intent;
    :cond_3
    :goto_2
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked(Z)V

    .line 549
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    move v3, v0

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    move v3, v0

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/UiModeManagerService;->mCarModeKeepsScreenOn:Z

    move v3, v0

    if-nez v3, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    move v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/UiModeManagerService;->mDeskModeKeepsScreenOn:Z

    move v3, v0

    if-eqz v3, :cond_f

    :cond_5
    const/4 v3, 0x1

    move v15, v3

    .line 552
    .local v15, keepScreenOn:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eq v15, v3, :cond_6

    .line 553
    if-eqz v15, :cond_10

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    :cond_6
    :goto_4
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 562
    return-void

    .line 480
    .end local v15           #keepScreenOn:Z
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 481
    sget-object v16, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    goto/16 :goto_0

    .line 494
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/UiModeManagerService;->mDockState:I

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    .line 495
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    move v3, v0

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 496
    if-eqz v16, :cond_9

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    move-object v3, v0

    new-instance v4, Landroid/content/Intent;

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 499
    :cond_9
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 500
    sget-object v11, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    goto/16 :goto_1

    .line 503
    :cond_a
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 504
    move-object/from16 v11, v16

    goto/16 :goto_1

    .line 524
    :cond_b
    const/4 v12, 0x0

    .line 525
    .local v12, homeIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    move v3, v0

    if-eqz v3, :cond_d

    .line 526
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_c

    .line 527
    const-string v3, "android.intent.category.CAR_DOCK"

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    .line 538
    :cond_c
    :goto_5
    if-eqz v12, :cond_3

    .line 540
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 541
    :catch_0
    move-exception v3

    goto/16 :goto_2

    .line 529
    :cond_d
    :try_start_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/UiModeManagerService;->mDockState:I

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_e

    .line 530
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_c

    .line 531
    const-string v3, "android.intent.category.DESK_DOCK"

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    goto :goto_5

    .line 534
    :cond_e
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_c

    .line 535
    const-string v3, "android.intent.category.HOME"

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    goto :goto_5

    .line 549
    .end local v12           #homeIntent:Landroid/content/Intent;
    :cond_f
    const/4 v3, 0x0

    move v15, v3

    goto/16 :goto_3

    .line 556
    .restart local v15       #keepScreenOn:Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    .line 560
    .end local v15           #keepScreenOn:Z
    :catchall_0
    move-exception v3

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method updateTwilightLocked()V
    .locals 21

    .prologue
    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    move-object v8, v0

    if-nez v8, :cond_0

    .line 789
    :goto_0
    return-void

    .line 747
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 750
    .local v6, currentTime:J
    new-instance v5, Lcom/android/server/TwilightCalculator;

    invoke-direct {v5}, Lcom/android/server/TwilightCalculator;-><init>()V

    .line 751
    .local v5, tw:Lcom/android/server/TwilightCalculator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    move-object v10, v0

    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/TwilightCalculator;->calculateTwilight(JDD)V

    .line 753
    iget v8, v5, Lcom/android/server/TwilightCalculator;->mState:I

    if-nez v8, :cond_2

    .line 754
    const/16 v18, 0x0

    .line 760
    .local v18, nightMode:Z
    :goto_1
    const-wide/16 v16, 0x0

    .line 761
    .local v16, nextUpdate:J
    iget-wide v8, v5, Lcom/android/server/TwilightCalculator;->mSunrise:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    iget-wide v8, v5, Lcom/android/server/TwilightCalculator;->mSunset:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    .line 763
    :cond_1
    const-wide/32 v8, 0x2932e00

    add-long v16, v6, v8

    .line 782
    :goto_2
    new-instance v20, Landroid/content/Intent;

    const-string v8, "com.android.server.action.UPDATE_NIGHT_MODE"

    move-object/from16 v0, v20

    move-object v1, v8

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 783
    .local v20, updateIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    move-object v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v8

    move v1, v9

    move-object/from16 v2, v20

    move v3, v10

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v19

    .line 785
    .local v19, pendingIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    move-object v8, v0

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    move-object v8, v0

    const/4 v9, 0x0

    move-object v0, v8

    move v1, v9

    move-wide/from16 v2, v16

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 788
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    goto :goto_0

    .line 756
    .end local v16           #nextUpdate:J
    .end local v18           #nightMode:Z
    .end local v19           #pendingIntent:Landroid/app/PendingIntent;
    .end local v20           #updateIntent:Landroid/content/Intent;
    :cond_2
    const/16 v18, 0x1

    .restart local v18       #nightMode:Z
    goto :goto_1

    .line 765
    .restart local v16       #nextUpdate:J
    :cond_3
    iget v15, v5, Lcom/android/server/TwilightCalculator;->mState:I

    .line 767
    .local v15, mLastTwilightState:I
    const-wide/32 v8, 0xea60

    add-long v16, v16, v8

    .line 768
    iget-wide v8, v5, Lcom/android/server/TwilightCalculator;->mSunset:J

    cmp-long v8, v6, v8

    if-lez v8, :cond_4

    .line 770
    const-wide/32 v8, 0x5265c00

    add-long v9, v6, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v13

    move-object v8, v5

    invoke-virtual/range {v8 .. v14}, Lcom/android/server/TwilightCalculator;->calculateTwilight(JDD)V

    .line 775
    :cond_4
    const/4 v8, 0x1

    if-ne v15, v8, :cond_5

    .line 776
    iget-wide v8, v5, Lcom/android/server/TwilightCalculator;->mSunrise:J

    add-long v16, v16, v8

    goto :goto_2

    .line 778
    :cond_5
    iget-wide v8, v5, Lcom/android/server/TwilightCalculator;->mSunset:J

    add-long v16, v16, v8

    goto :goto_2
.end method
