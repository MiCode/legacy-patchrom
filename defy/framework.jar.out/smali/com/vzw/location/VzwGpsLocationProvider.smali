.class public Lcom/vzw/location/VzwGpsLocationProvider;
.super Lcom/vzw/location/IVzwLocationProvider$Stub;
.source "VzwGpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vzw/location/VzwGpsLocationProvider$AgpsEventThread;,
        Lcom/vzw/location/VzwGpsLocationProvider$Listener;
    }
.end annotation


# static fields
.field private static final AGPS_DATA_CONNECTION_CLOSED:I = 0x0

.field private static final AGPS_DATA_CONNECTION_OPEN:I = 0x2

.field private static final AGPS_DATA_CONNECTION_OPENING:I = 0x1

.field private static final AGPS_TYPE_C2K:I = 0x2

.field private static final AGPS_TYPE_SUPL:I = 0x1

.field private static final ALARM_TIMEOUT:Ljava/lang/String; = "com.motorola.internal.location.ALARM_TIMEOUT"

.field private static final ALARM_WAKEUP:Ljava/lang/String; = "com.motorola.internal.location.ALARM_WAKEUP"

.field private static final ALMANAC_MASK:I = 0x1

.field private static final DEBUG:Z = true

.field private static final EPHEMERIS_MASK:I = 0x0

.field public static final EXTRA_ENABLED:Ljava/lang/String; = "enabled"

.field private static final GPS_AGPS_DATA_CONNECTED:I = 0x3

.field private static final GPS_AGPS_DATA_CONN_DONE:I = 0x4

.field private static final GPS_AGPS_DATA_CONN_FAILED:I = 0x5

.field private static final GPS_DELETE_ALL:I = 0xffff

.field private static final GPS_DELETE_ALMANAC:I = 0x2

.field private static final GPS_DELETE_CELLDB_INFO:I = 0x8000

.field private static final GPS_DELETE_EPHEMERIS:I = 0x1

.field private static final GPS_DELETE_HEALTH:I = 0x40

.field private static final GPS_DELETE_IONO:I = 0x10

.field private static final GPS_DELETE_POSITION:I = 0x4

.field private static final GPS_DELETE_RTI:I = 0x400

.field private static final GPS_DELETE_SADATA:I = 0x200

.field private static final GPS_DELETE_SVDIR:I = 0x80

.field private static final GPS_DELETE_SVSTEER:I = 0x100

.field private static final GPS_DELETE_TIME:I = 0x8

.field private static final GPS_DELETE_UTC:I = 0x20

.field public static final GPS_ENABLED_CHANGE_ACTION:Ljava/lang/String; = "android.location.GPS_ENABLED_CHANGE"

.field public static final GPS_FIX_CHANGE_ACTION:Ljava/lang/String; = "android.location.GPS_FIX_CHANGE"

.field private static final GPS_RELEASE_AGPS_DATA_CONN:I = 0x2

.field private static final GPS_REQUEST_AGPS_DATA_CONN:I = 0x1

.field private static final GPS_STATUS_ENGINE_OFF:I = 0x4

.field private static final GPS_STATUS_ENGINE_ON:I = 0x3

.field private static final GPS_STATUS_NONE:I = 0x0

.field private static final GPS_STATUS_SESSION_BEGIN:I = 0x1

.field private static final GPS_STATUS_SESSION_BEGIN_GPS_NOP:I = 0x64

.field private static final GPS_STATUS_SESSION_END:I = 0x2

.field private static final GPS_STATUS_SESSION_END_GPS_NOP:I = 0x65

.field private static final LOCATION_HAS_ACCURACY:I = 0x10

.field private static final LOCATION_HAS_ALTITUDE:I = 0x2

.field private static final LOCATION_HAS_BEARING:I = 0x8

.field private static final LOCATION_HAS_LAT_LONG:I = 0x1

.field private static final LOCATION_HAS_SPEED:I = 0x4

.field private static final LOCATION_INVALID:I = 0x0

.field private static final MAX_SVS:I = 0x20

.field private static final MIN_FIX_COUNT:I = 0xa

.field private static final NO_FIX_TIMEOUT:I = 0x3c

.field private static final RECENT_FIX_TIMEOUT:J = 0xaL

.field private static final TAG:Ljava/lang/String; = "VzwGpsLocationProvider"

.field private static final USED_FOR_FIX_MASK:I = 0x2

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "VzwGpsLocationProvider"


# instance fields
.field private mAGpsApn:Ljava/lang/String;

.field private mAGpsDataConnectionState:I

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReciever:Landroid/content/BroadcastReceiver;

.field private final mClientUids:Landroid/util/SparseIntArray;

.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mEngineOn:Z

.field private mEventThread:Lcom/vzw/location/VzwGpsLocationProvider$AgpsEventThread;

.field private mFixCount:I

.field private mFixInterval:I

.field private mFixRequestTime:J

.field private final mGpsStatusProvider:Lcom/vzw/location/IVzwGpsStatusProvider;

.field private mLastFixTime:J

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vzw/location/VzwGpsLocationProvider$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocation:Lcom/vzw/location/VzwLocation;

.field private mLocationExtras:Landroid/os/Bundle;

.field private final mLocationManager:Lcom/vzw/location/IVzwLocationManager;

.field private mNavigating:Z

.field private mNetworkAvailable:Z

.field private mPendingSkip:I

.field private mSetC2KServer:Z

.field private mSnrs:[F

.field private mStarted:Z

.field private mStatus:I

.field private mStatusUpdateTime:J

.field private mSvAzimuths:[F

.field private mSvCount:I

.field private mSvElevations:[F

.field private mSvMasks:[I

.field private mSvs:[I

.field private mTTFF:I

.field private final mTimeoutIntent:Landroid/app/PendingIntent;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeupIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    invoke-static {}, Lcom/vzw/location/VzwGpsLocationProvider;->class_init_native()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vzw/location/IVzwLocationManager;)V
    .locals 9
    .parameter "context"
    .parameter "locationManager"

    .prologue
    const/4 v6, 0x1

    const/16 v4, 0x20

    const/4 v5, 0x0

    const-string v8, "com.motorola.internal.location.ALARM_WAKEUP"

    const-string v7, "com.motorola.internal.location.ALARM_TIMEOUT"

    invoke-direct {p0}, Lcom/vzw/location/IVzwLocationProvider$Stub;-><init>()V

    iput v6, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mStatus:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mStatusUpdateTime:J

    iput v6, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mFixInterval:I

    iput v5, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mPendingSkip:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mFixRequestTime:J

    iput v5, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mTTFF:I

    new-instance v2, Lcom/vzw/location/VzwLocation;

    const-string v3, "vzw_lbs"

    invoke-direct {v2, v3}, Lcom/vzw/location/VzwLocation;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    new-instance v2, Lcom/vzw/location/VzwGpsLocationProvider$1;

    invoke-direct {v2, p0}, Lcom/vzw/location/VzwGpsLocationProvider$1;-><init>(Lcom/vzw/location/VzwGpsLocationProvider;)V

    iput-object v2, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mGpsStatusProvider:Lcom/vzw/location/IVzwGpsStatusProvider;

    new-instance v2, Lcom/vzw/location/VzwGpsLocationProvider$2;

    invoke-direct {v2, p0}, Lcom/vzw/location/VzwGpsLocationProvider$2;-><init>(Lcom/vzw/location/VzwGpsLocationProvider;)V

    iput-object v2, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    new-array v2, v4, [I

    iput-object v2, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mSvs:[I

    new-array v2, v4, [F

    iput-object v2, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mSnrs:[F

    new-array v2, v4, [F

    iput-object v2, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mSvElevations:[F

    new-array v2, v4, [F

    iput-object v2, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mSvAzimuths:[F

    const/4 v2, 0x3

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mSvMasks:[I

    iput-object p1, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mLocationManager:Lcom/vzw/location/IVzwLocationManager;

    iget-object v2, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .local v1, powerManager:Landroid/os/PowerManager;
    const-string v2, "VzwGpsLocationProvider"

    invoke-virtual {v1, v6, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v2, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.motorola.internal.location.ALARM_WAKEUP"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v5, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.motorola.internal.location.ALARM_TIMEOUT"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v5, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "com.motorola.internal.location.ALARM_WAKEUP"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.motorola.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string v2, "batteryinfo"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-void
.end method

.method static synthetic access$000(Lcom/vzw/location/VzwGpsLocationProvider;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vzw/location/VzwGpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsLocationProvider;->hibernate()V

    return-void
.end method

.method static synthetic access$200(Lcom/vzw/location/VzwGpsLocationProvider;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/vzw/location/VzwGpsLocationProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/vzw/location/VzwGpsLocationProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mAGpsDataConnectionState:I

    return v0
.end method

.method static synthetic access$302(Lcom/vzw/location/VzwGpsLocationProvider;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mAGpsDataConnectionState:I

    return p1
.end method

.method static synthetic access$400(Lcom/vzw/location/VzwGpsLocationProvider;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwGpsLocationProvider;->native_agps_data_conn_open(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/vzw/location/VzwGpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/vzw/location/VzwGpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsLocationProvider;->native_wait_for_event()V

    return-void
.end method

.method private static native class_init_native()V
.end method

.method private deleteAidingData(Landroid/os/Bundle;)Z
    .locals 2
    .parameter "extras"

    .prologue
    if-nez p1, :cond_1

    const v0, 0xffff

    .local v0, flags:I
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .end local v0           #flags:I
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #flags:I
    const-string v1, "ephemeris"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    const-string v1, "almanac"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x2

    :cond_3
    const-string v1, "position"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x4

    :cond_4
    const-string v1, "time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x8

    :cond_5
    const-string v1, "iono"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    or-int/lit8 v0, v0, 0x10

    :cond_6
    const-string v1, "utc"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x20

    :cond_7
    const-string v1, "health"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    or-int/lit8 v0, v0, 0x40

    :cond_8
    const-string v1, "svdir"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    or-int/lit16 v0, v0, 0x80

    :cond_9
    const-string v1, "svsteer"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    or-int/lit16 v0, v0, 0x100

    :cond_a
    const-string v1, "sadata"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    or-int/lit16 v0, v0, 0x200

    :cond_b
    const-string v1, "rti"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    or-int/lit16 v0, v0, 0x400

    :cond_c
    const-string v1, "celldb-info"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const v1, 0x8000

    or-int/2addr v0, v1

    :cond_d
    const-string v1, "all"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0xffff

    or-int/2addr v0, v1

    goto/16 :goto_0
.end method

.method private hibernate()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const-string v0, "VzwGpsLocationProvider"

    const-string v1, "hibernate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/vzw/location/VzwGpsLocationProvider;->stopNavigating(Z)V

    iput v2, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mFixCount:I

    iget-object v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget v4, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mFixInterval:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    invoke-static {}, Lcom/vzw/location/VzwGpsLocationProvider;->native_is_supported()Z

    move-result v0

    return v0
.end method

.method private native native_agps_data_conn_closed()V
.end method

.method private native native_agps_data_conn_failed()V
.end method

.method private native native_agps_data_conn_open(Ljava/lang/String;)V
.end method

.method private native native_cleanup()V
.end method

.method private native native_delete_aiding_data(I)V
.end method

.method private native native_disable()V
.end method

.method private native native_init()Z
.end method

.method private native native_inject_time(JJI)V
.end method

.method private native native_inject_xtra_data([BI)V
.end method

.method private static native native_is_supported()Z
.end method

.method private native native_read_sv_status([I[F[F[F[I)I
.end method

.method private native native_set_agps_server(ILjava/lang/String;I)V
.end method

.method private native native_set_fix_frequency(I)V
.end method

.method private native native_set_gps_config(IJJJJ)V
.end method

.method private native native_start()Z
.end method

.method private native native_stop()Z
.end method

.method private native native_supports_xtra()Z
.end method

.method private native native_wait_for_event()V
.end method

.method private reportAGpsStatus(II)V
    .locals 6
    .parameter "type"
    .parameter "status"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "enableSUPL"

    const-string v2, "VzwGpsLocationProvider"

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string v2, "enableSUPL"

    invoke-virtual {v1, v3, v5}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    .local v0, result:I
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/vzw/location/VzwGpsLocationProvider;->native_agps_data_conn_open(Ljava/lang/String;)V

    const/4 v1, 0x2

    iput v1, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mAGpsDataConnectionState:I

    goto :goto_0

    :cond_1
    if-ne v0, v4, :cond_2

    iput v4, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mAGpsDataConnectionState:I

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsLocationProvider;->native_agps_data_conn_failed()V

    goto :goto_0

    .end local v0           #result:I
    :pswitch_1
    iget v1, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mAGpsDataConnectionState:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string v2, "enableSUPL"

    invoke-virtual {v1, v3, v5}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    invoke-direct {p0}, Lcom/vzw/location/VzwGpsLocationProvider;->native_agps_data_conn_closed()V

    iput v3, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mAGpsDataConnectionState:I

    goto :goto_0

    :pswitch_2
    const-string v1, "VzwGpsLocationProvider"

    const-string v1, "GPS_AGPS_DATA_CONNECTED"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    const-string v1, "VzwGpsLocationProvider"

    const-string v1, "GPS_AGPS_DATA_CONN_DONE"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_4
    const-string v1, "VzwGpsLocationProvider"

    const-string v1, "GPS_AGPS_DATA_CONN_FAILED"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private reportLocation(IDDDFFFJIIFFFFFFFFFF)V
    .locals 12
    .parameter "flags"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "altitude"
    .parameter "speed"
    .parameter "bearing"
    .parameter "accuracy"
    .parameter "timestamp"
    .parameter "xflags"
    .parameter "fixMode"
    .parameter "horConf"
    .parameter "majorAxis"
    .parameter "majorAxisAngle"
    .parameter "minorAxis"
    .parameter "altWrtEllipsoid"
    .parameter "altWrtSeaLevel"
    .parameter "hdop"
    .parameter "pdop"
    .parameter "vdop"
    .parameter "magVariation"

    .prologue
    const-string v8, "VzwGpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "reportLocation() lat: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", long: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, v9

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " timestamp: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, v9

    move-wide/from16 v1, p11

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mLastFixTime:J

    iget v8, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mTTFF:I

    if-nez v8, :cond_1

    and-int/lit8 v8, p1, 0x1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    iget-wide v8, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mLastFixTime:J

    iget-wide v10, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mFixRequestTime:J

    sub-long/2addr v8, v10

    long-to-int v8, v8

    iput v8, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mTTFF:I

    const-string v8, "VzwGpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TTFF: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mTTFF:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v8

    :try_start_0
    iget-object v9, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, size:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v7, :cond_0

    iget-object v9, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vzw/location/VzwGpsLocationProvider$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v6, listener:Lcom/vzw/location/VzwGpsLocationProvider$Listener;
    :try_start_1
    const-string v9, "VzwGpsLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "first fix to listener: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " TTFF: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mTTFF:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, v6, Lcom/vzw/location/VzwGpsLocationProvider$Listener;->mListener:Lcom/vzw/location/IVzwGpsStatusListener;

    iget v10, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mTTFF:I

    invoke-interface {v9, v10}, Lcom/vzw/location/IVzwGpsStatusListener;->onFirstFix(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v9

    move-object v3, v9

    .local v3, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v9, "VzwGpsLocationProvider"

    const-string v10, "RemoteException for mListener.onFirstFix"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v9, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .end local v3           #e:Landroid/os/RemoteException;
    .end local v6           #listener:Lcom/vzw/location/VzwGpsLocationProvider$Listener;
    :cond_0
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v4           #i:I
    .end local v7           #size:I
    :cond_1
    iget-object v8, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;

    monitor-enter v8

    :try_start_3
    const-string v9, "VzwGpsLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "flags: 0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", xflags: 0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;

    invoke-virtual {v9}, Lcom/vzw/location/VzwLocation;->reset()V

    iget-object v9, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;

    const-string v10, "vzw_lbs"

    invoke-virtual {v9, v10}, Lcom/vzw/location/VzwLocation;->setProvider(Ljava/lang/String;)V

    and-int/lit8 v9, p1, 0x1

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    iget-object v9, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;

    invoke-virtual {v9, p2, p3}, Lcom/vzw/location/VzwLocation;->setLatitude(D)V

    iget-object v9, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;

    move-object v0, v9

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Lcom/vzw/location/VzwLocation;->setLongitude(D)V

    iget-object v9, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;

    move-object v0, v9

    move-wide/from16 v1, p11

    invoke-virtual {v0, v1, v2}, Lcom/vzw/location/VzwLocation;->setTime(J)V

    :cond_2
    and-int/lit8 v9, p1, 0x2

    const/4 v10, 0x2

    if-ne v9, v10, :cond_6

    iget-object v9, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;

    move-object v0, v9

    move-wide/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Lcom/vzw/location/VzwLocation;->setAltitude(D)V

    :goto_2
    and-int/lit8 v9, p1, 0x4

    const/4 v10, 0x4

    if-ne v9, v10, :cond_7

    iget-object v9, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;

    move-object v0, v9

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setSpeed(F)V

    :goto_3
    and-int/lit8 v9, p1, 0x8

    const/16 v10, 0x8

    if-ne v9, v10, :cond_8

    iget-object v9, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;

    move-object v0, v9

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setBearing(F)V

    :goto_4
    and-int/lit8 v9, p1, 0x10

    const/16 v10, 0x10

    if-ne v9, v10, :cond_9

    iget-object v9, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;

    move-object v0, v9

    move/from16 v1, p10

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setAccuracy(F)V

    :goto_5
    const/high16 v9, 0x8

    and-int v9, v9, p13

    const/high16 v10, 0x8

    if-ne v9, v10, :cond_a

    iget-object v9, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;

    move-object v0, v9

    move/from16 v1, p14

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setFixMode(I)V

    :goto_6
    const/high16 v9, 0x4

    and-int v9, v9, p13

    const/high16 v10, 0x4

    if-ne v9, v10, :cond_b

    iget-object v9, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;

    move-object v0, v9

    move/from16 v1, p15

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setHorizontalConfidence(F)V

    iget-object v9, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;

    move-object v0, v9

    move/from16 v1, p16

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setMajorAxis(F)V

    iget-object v9, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;

    move-object v0, v9

    move/from16 v1, p17

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setMajorAxisAngle(F)V

    iget-object v9, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;

    move-object v0, v9

    move/from16 v1, p18

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setMinorAxis(F)V

    :goto_7
    move/from16 v0, p13

    and-int/lit16 v0, v0, 0x80

    move v9, v0

    const/16 v10, 0x80

    if-ne v9, v10, :cond_c

    iget-object v9, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;

    move-object v0, v9

    move/from16 v1, p19

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setAltitudeWrtEllipsoid(F)V

    :goto_8
    and-int/lit8 v9, p13, 0x40

    const/16 v10, 0x40

    if-ne v9, v10, :cond_d

    iget-object v9, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;

    move-object v0, v9

    move/from16 v1, p20

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setAltitudeWrtSeaLevel(F)V

    :goto_9
    move/from16 v0, p13

    and-int/lit16 v0, v0, 0x200

    move v9, v0

    const/16 v10, 0x200

    if-ne v9, v10, :cond_e

    iget-object v9, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;

    move-object v0, v9

    move/from16 v1, p21

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setHorizontalDilutionOfPrecision(F)V

    :goto_a
    move/from16 v0, p13

    and-int/lit16 v0, v0, 0x100

    move v9, v0

    const/16 v10, 0x100

    if-ne v9, v10, :cond_f

    iget-object v9, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;

    move-object v0, v9

    move/from16 v1, p22

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setPositionDilutionOfPrecision(F)V

    :goto_b
    move/from16 v0, p13

    and-int/lit16 v0, v0, 0x400

    move v9, v0

    const/16 v10, 0x400

    if-ne v9, v10, :cond_10

    iget-object v9, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;

    move-object v0, v9

    move/from16 v1, p23

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setVerticalDilutionOfPrecision(F)V

    :goto_c
    and-int/lit8 v9, p13, 0x20

    const/16 v10, 0x20

    if-ne v9, v10, :cond_11

    iget-object v9, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;

    move-object v0, v9

    move/from16 v1, p24

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setMagneticVariation(F)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_d
    :try_start_4
    iget-object v9, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mLocationManager:Lcom/vzw/location/IVzwLocationManager;

    iget-object v10, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mLocation:Lcom/vzw/location/VzwLocation;

    invoke-interface {v9, v10}, Lcom/vzw/location/IVzwLocationManager;->reportLocation(Lcom/vzw/location/VzwLocation;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_e
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    iget-boolean v8, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mStarted:Z

    if-eqz v8, :cond_4

    iget v8, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mStatus:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_4

    iget-object v8, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v9, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v8, v9}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-boolean v8, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mNavigating:Z

    if-eqz v8, :cond_3

    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v5, intent:Landroid/content/Intent;
    const-string v8, "enabled"

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v8, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v5           #intent:Landroid/content/Intent;
    :cond_3
    const/4 v8, 0x2

    iget v9, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mSvCount:I

    invoke-direct {p0, v8, v9}, Lcom/vzw/location/VzwGpsLocationProvider;->updateStatus(II)V

    :cond_4
    iget v8, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mFixCount:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mFixCount:I

    const/16 v9, 0xa

    if-lt v8, v9, :cond_5

    iget v8, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mFixInterval:I

    const/4 v9, 0x1

    if-le v8, v9, :cond_5

    const-string v8, "VzwGpsLocationProvider"

    const-string v9, "exceeded MIN_FIX_COUNT"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/vzw/location/VzwGpsLocationProvider;->hibernate()V

    :cond_5
    return-void

    :catchall_0
    move-exception v9

    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v9

    :cond_6
    :try_start_7
    const-string v9, "VzwGpsLocationProvider"

    const-string v10, "fix has no altitude"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catchall_1
    move-exception v9

    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v9

    :cond_7
    :try_start_8
    const-string v9, "VzwGpsLocationProvider"

    const-string v10, "fix has no speed"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_8
    const-string v9, "VzwGpsLocationProvider"

    const-string v10, "fix has no bearing"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_9
    const-string v9, "VzwGpsLocationProvider"

    const-string v10, "fix has no accuracy"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_a
    const-string v9, "VzwGpsLocationProvider"

    const-string v10, "fix has no fix mode"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_b
    const-string v9, "VzwGpsLocationProvider"

    const-string v10, "fix has no position uncertainty error"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_c
    const-string v9, "VzwGpsLocationProvider"

    const-string v10, "fix has no altitude wrt ellipsoid"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_d
    const-string v9, "VzwGpsLocationProvider"

    const-string v10, "fix has no altitude wrt sea level"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_e
    const-string v9, "VzwGpsLocationProvider"

    const-string v10, "fix has no hdop"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_f
    const-string v9, "VzwGpsLocationProvider"

    const-string v10, "fix has no pdop"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_10
    const-string v9, "VzwGpsLocationProvider"

    const-string v10, "fix has no vdop"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :cond_11
    const-string v9, "VzwGpsLocationProvider"

    const-string v10, "fix has no magnetic variation"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :catch_1
    move-exception v9

    move-object v3, v9

    .restart local v3       #e:Landroid/os/RemoteException;
    const-string v9, "VzwGpsLocationProvider"

    const-string v10, "RemoteException calling reportLocation"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_e
.end method

.method private reportStatus(I)V
    .locals 18
    .parameter "status"

    .prologue
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vzw/location/VzwGpsLocationProvider;->mNavigating:Z

    move/from16 v17, v0

    .local v17, wasNavigating:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vzw/location/VzwGpsLocationProvider;->mEngineOn:Z

    move/from16 v16, v0

    .local v16, wasEngineOn:Z
    const/4 v14, 0x0

    .local v14, skipIntent:Z
    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vzw/location/VzwGpsLocationProvider;->mEngineOn:Z

    move v2, v0

    move/from16 v0, v16

    move v1, v2

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    move-object v11, v0

    monitor-enter v11

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    .local v13, size:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v13, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    move-object v2, v0

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vzw/location/VzwGpsLocationProvider$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v12, listener:Lcom/vzw/location/VzwGpsLocationProvider$Listener;
    :try_start_1
    iget-object v2, v12, Lcom/vzw/location/VzwGpsLocationProvider$Listener;->mListener:Lcom/vzw/location/IVzwGpsStatusListener;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vzw/location/VzwGpsLocationProvider;->mEngineOn:Z

    move v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/vzw/location/IVzwGpsStatusListener;->onDeviceStatusChanged(ZI[I[FII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .end local v10           #i:I
    .end local v12           #listener:Lcom/vzw/location/VzwGpsLocationProvider$Listener;
    .end local v13           #size:I
    :sswitch_0
    const-string v2, "VzwGpsLocationProvider"

    const-string v3, "GPS_STATUS_SESSION_BEGIN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vzw/location/VzwGpsLocationProvider;->mNavigating:Z

    const/4 v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vzw/location/VzwGpsLocationProvider;->mEngineOn:Z

    const-string v2, "VzwGpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPendingSkip: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vzw/location/VzwGpsLocationProvider;->mPendingSkip:I

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vzw/location/VzwGpsLocationProvider;->mPendingSkip:I

    move v2, v0

    if-lez v2, :cond_0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vzw/location/VzwGpsLocationProvider;->mPendingSkip:I

    move v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vzw/location/VzwGpsLocationProvider;->mPendingSkip:I

    goto :goto_0

    :sswitch_1
    const-string v2, "VzwGpsLocationProvider"

    const-string v3, "GPS_STATUS_SESSION_END"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vzw/location/VzwGpsLocationProvider;->mNavigating:Z

    const-string v2, "VzwGpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPendingSkip: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vzw/location/VzwGpsLocationProvider;->mPendingSkip:I

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vzw/location/VzwGpsLocationProvider;->mPendingSkip:I

    move v2, v0

    if-lez v2, :cond_0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vzw/location/VzwGpsLocationProvider;->mPendingSkip:I

    move v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vzw/location/VzwGpsLocationProvider;->mPendingSkip:I

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "VzwGpsLocationProvider"

    const-string v3, "GPS_STATUS_ENGINE_ON"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vzw/location/VzwGpsLocationProvider;->mEngineOn:Z

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "VzwGpsLocationProvider"

    const-string v3, "GPS_STATUS_ENGINE_OFF"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vzw/location/VzwGpsLocationProvider;->mEngineOn:Z

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "VzwGpsLocationProvider"

    const-string v3, "GPS_STATUS_SESSION_BEGIN_GPS_NOP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x1

    const-string v2, "VzwGpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPendingSkip: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vzw/location/VzwGpsLocationProvider;->mPendingSkip:I

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vzw/location/VzwGpsLocationProvider;->mPendingSkip:I

    move v2, v0

    if-lez v2, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vzw/location/VzwGpsLocationProvider;->mPendingSkip:I

    move v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vzw/location/VzwGpsLocationProvider;->mPendingSkip:I

    :cond_1
    const/4 v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vzw/location/VzwGpsLocationProvider;->mNavigating:Z

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "VzwGpsLocationProvider"

    const-string v3, "GPS_STATUS_SESSION_END_GPS_NOP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x1

    const-string v2, "VzwGpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPendingSkip: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vzw/location/VzwGpsLocationProvider;->mPendingSkip:I

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vzw/location/VzwGpsLocationProvider;->mPendingSkip:I

    move v2, v0

    if-lez v2, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vzw/location/VzwGpsLocationProvider;->mPendingSkip:I

    move v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vzw/location/VzwGpsLocationProvider;->mPendingSkip:I

    :cond_2
    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vzw/location/VzwGpsLocationProvider;->mNavigating:Z

    goto/16 :goto_0

    .restart local v10       #i:I
    .restart local v12       #listener:Lcom/vzw/location/VzwGpsLocationProvider$Listener;
    .restart local v13       #size:I
    :catch_0
    move-exception v2

    move-object v9, v2

    .local v9, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "VzwGpsLocationProvider"

    const-string v3, "RemoteException in reportStatus()"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    move-object v2, v0

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_2

    .end local v9           #e:Landroid/os/RemoteException;
    .end local v12           #listener:Lcom/vzw/location/VzwGpsLocationProvider$Listener;
    :cond_3
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v10           #i:I
    .end local v13           #size:I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vzw/location/VzwGpsLocationProvider;->mNavigating:Z

    move v2, v0

    move/from16 v0, v17

    move v1, v2

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vzw/location/VzwGpsLocationProvider;->mNavigating:Z

    move v2, v0

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "VzwGpsLocationProvider"

    const-string v3, "Acquiring wakelock"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    move-object v2, v0

    monitor-enter v2

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    .restart local v13       #size:I
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_3
    if-ge v10, v13, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vzw/location/VzwGpsLocationProvider$Listener;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .restart local v12       #listener:Lcom/vzw/location/VzwGpsLocationProvider$Listener;
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vzw/location/VzwGpsLocationProvider;->mNavigating:Z

    move v3, v0

    if-eqz v3, :cond_6

    iget-object v3, v12, Lcom/vzw/location/VzwGpsLocationProvider$Listener;->mListener:Lcom/vzw/location/IVzwGpsStatusListener;

    invoke-interface {v3}, Lcom/vzw/location/IVzwGpsStatusListener;->onGpsStarted()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .end local v10           #i:I
    .end local v12           #listener:Lcom/vzw/location/VzwGpsLocationProvider$Listener;
    .end local v13           #size:I
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    .restart local v10       #i:I
    .restart local v12       #listener:Lcom/vzw/location/VzwGpsLocationProvider$Listener;
    .restart local v13       #size:I
    :cond_6
    :try_start_6
    iget-object v3, v12, Lcom/vzw/location/VzwGpsLocationProvider$Listener;->mListener:Lcom/vzw/location/IVzwGpsStatusListener;

    invoke-interface {v3}, Lcom/vzw/location/IVzwGpsStatusListener;->onGpsStopped()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    :catch_1
    move-exception v3

    move-object v9, v3

    .restart local v9       #e:Landroid/os/RemoteException;
    :try_start_7
    const-string v3, "VzwGpsLocationProvider"

    const-string v4, "RemoteException in reportStatus()"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, -0x1

    goto :goto_4

    .end local v9           #e:Landroid/os/RemoteException;
    .end local v12           #listener:Lcom/vzw/location/VzwGpsLocationProvider$Listener;
    :cond_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v10, v2, v3

    :goto_5
    if-ltz v10, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    move-object v2, v0

    invoke-virtual {v2, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v15

    .local v15, uid:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vzw/location/VzwGpsLocationProvider;->mNavigating:Z

    move v2, v0

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object v2, v0

    invoke-interface {v2, v15}, Lcom/android/internal/app/IBatteryStats;->noteStartGps(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2

    :goto_6
    add-int/lit8 v10, v10, -0x1

    goto :goto_5

    .end local v10           #i:I
    .end local v13           #size:I
    .end local v15           #uid:I
    :catchall_1
    move-exception v3

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v3

    .restart local v10       #i:I
    .restart local v13       #size:I
    .restart local v15       #uid:I
    :cond_8
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object v2, v0

    invoke-interface {v2, v15}, Lcom/android/internal/app/IBatteryStats;->noteStopGps(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_6

    .end local v15           #uid:I
    :catch_2
    move-exception v2

    move-object v9, v2

    .restart local v9       #e:Landroid/os/RemoteException;
    const-string v2, "VzwGpsLocationProvider"

    const-string v3, "RemoteException in reportStatus"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v9           #e:Landroid/os/RemoteException;
    :cond_9
    if-nez v14, :cond_a

    const-string v2, "VzwGpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send gps flag intent n = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vzw/location/VzwGpsLocationProvider;->mNavigating:Z

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Landroid/content/Intent;

    const-string v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v11, intent:Landroid/content/Intent;
    const-string v2, "enabled"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vzw/location/VzwGpsLocationProvider;->mNavigating:Z

    move v3, v0

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsLocationProvider;->mContext:Landroid/content/Context;

    move-object v2, v0

    invoke-virtual {v2, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v11           #intent:Landroid/content/Intent;
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vzw/location/VzwGpsLocationProvider;->mNavigating:Z

    move v2, v0

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "VzwGpsLocationProvider"

    const-string v3, "Releasing wakelock"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .end local v10           #i:I
    .end local v13           #size:I
    :cond_b
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x64 -> :sswitch_4
        0x65 -> :sswitch_5
    .end sparse-switch
.end method

.method private reportSvStatus()V
    .locals 14

    .prologue
    iget-object v1, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mSvs:[I

    iget-object v2, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mSnrs:[F

    iget-object v3, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mSvElevations:[F

    iget-object v4, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mSvAzimuths:[F

    iget-object v5, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mSvMasks:[I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/vzw/location/VzwGpsLocationProvider;->native_read_sv_status([I[F[F[F[I)I

    move-result v1

    .local v1, svCount:I
    iget-object v11, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v11

    :try_start_0
    iget-object v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v13

    .local v13, size:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v13, :cond_0

    iget-object v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vzw/location/VzwGpsLocationProvider$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v12, listener:Lcom/vzw/location/VzwGpsLocationProvider$Listener;
    :try_start_1
    iget-object v0, v12, Lcom/vzw/location/VzwGpsLocationProvider$Listener;->mListener:Lcom/vzw/location/IVzwGpsStatusListener;

    iget-object v2, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mSvs:[I

    iget-object v3, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mSnrs:[F

    iget-object v4, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mSvElevations:[F

    iget-object v5, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mSvAzimuths:[F

    iget-object v6, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mSvMasks:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    invoke-interface/range {v0 .. v6}, Lcom/vzw/location/IVzwGpsStatusListener;->onSvStatusChanged(I[I[F[F[FI)V

    iget-object v2, v12, Lcom/vzw/location/VzwGpsLocationProvider$Listener;->mListener:Lcom/vzw/location/IVzwGpsStatusListener;

    iget-boolean v3, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mEngineOn:Z

    iget-object v5, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mSvs:[I

    iget-object v6, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mSnrs:[F

    iget-object v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mSvMasks:[I

    const/4 v4, 0x0

    aget v7, v0, v4

    iget-object v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mSvMasks:[I

    const/4 v4, 0x1

    aget v8, v0, v4

    move v4, v1

    invoke-interface/range {v2 .. v8}, Lcom/vzw/location/IVzwGpsStatusListener;->onDeviceStatusChanged(ZI[I[FII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v9, v0

    .local v9, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v0, "VzwGpsLocationProvider"

    const-string v2, "RemoteException in reportSvStatus()"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    .end local v9           #e:Landroid/os/RemoteException;
    .end local v12           #listener:Lcom/vzw/location/VzwGpsLocationProvider$Listener;
    :cond_0
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v0, "VzwGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SV count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ephemerisMask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mSvMasks:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " almanacMask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mSvMasks:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v1, :cond_4

    const-string v0, "VzwGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sv: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mSvs:[I

    aget v3, v3, v10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " snr: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mSnrs:[F

    aget v3, v3, v10

    const/high16 v4, 0x4120

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " elev: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mSvElevations:[F

    aget v3, v3, v10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " azimuth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mSvAzimuths:[F

    aget v3, v3, v10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mSvMasks:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mSvs:[I

    aget v5, v5, v10

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    shl-int/2addr v4, v5

    and-int/2addr v3, v4

    if-nez v3, :cond_1

    const-string v3, "  "

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mSvMasks:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mSvs:[I

    aget v5, v5, v10

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    shl-int/2addr v4, v5

    and-int/2addr v3, v4

    if-nez v3, :cond_2

    const-string v3, "  "

    :goto_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mSvMasks:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mSvs:[I

    aget v5, v5, v10

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    shl-int/2addr v4, v5

    and-int/2addr v3, v4

    if-nez v3, :cond_3

    const-string v3, ""

    :goto_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .end local v10           #i:I
    .end local v13           #size:I
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .restart local v10       #i:I
    .restart local v13       #size:I
    :cond_1
    const-string v3, " E"

    goto :goto_3

    :cond_2
    const-string v3, " A"

    goto :goto_4

    :cond_3
    const-string v3, "U"

    goto :goto_5

    :cond_4
    iget v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mStatus:I

    invoke-direct {p0, v0, v1}, Lcom/vzw/location/VzwGpsLocationProvider;->updateStatus(II)V

    iget-boolean v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mNavigating:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .end local v1           #svCount:I
    iget-wide v2, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mLastFixTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mLastFixTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    new-instance v11, Landroid/content/Intent;

    const-string v0, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v11, intent:Landroid/content/Intent;
    const-string v0, "enabled"

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x1

    iget v1, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mSvCount:I

    invoke-direct {p0, v0, v1}, Lcom/vzw/location/VzwGpsLocationProvider;->updateStatus(II)V

    .end local v11           #intent:Landroid/content/Intent;
    :cond_5
    return-void
.end method

.method private setAGpsServer(ILjava/lang/String;I)Z
    .locals 12
    .parameter "type"
    .parameter "host"
    .parameter "port"

    .prologue
    :try_start_0
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    .local v6, inetAddress:Ljava/net/InetAddress;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .local v2, addrBytes:[B
    const-wide/16 v0, 0x0

    .local v0, addr:J
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    array-length v8, v2

    if-ge v5, v8, :cond_1

    aget-byte v7, v2, v5

    .local v7, temp:I
    if-gez v7, :cond_0

    add-int/lit16 v7, v7, 0x100

    :cond_0
    const-wide/16 v8, 0x100

    mul-long/2addr v8, v0

    int-to-long v10, v7

    add-long v0, v8, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v0           #addr:J
    .end local v2           #addrBytes:[B
    .end local v5           #i:I
    .end local v7           #temp:I
    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .local v4, hostaddr:Ljava/lang/String;
    invoke-direct {p0, p1, v4, p3}, Lcom/vzw/location/VzwGpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    const/4 v8, 0x1

    .end local v4           #hostaddr:Ljava/lang/String;
    .end local v6           #inetAddress:Ljava/net/InetAddress;
    :goto_1
    return v8

    .restart local v6       #inetAddress:Ljava/net/InetAddress;
    :cond_2
    const-string v8, "VzwGpsLocationProvider"

    const-string v9, "setAGpsServer inetAddress is null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x0

    goto :goto_1

    .end local v6           #inetAddress:Ljava/net/InetAddress;
    :catch_0
    move-exception v8

    move-object v3, v8

    .local v3, e:Ljava/net/UnknownHostException;
    const-string v8, "VzwGpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unknown host for server "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    goto :goto_1
.end method

.method private updateStatus(II)V
    .locals 2
    .parameter "status"
    .parameter "svCount"

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mStatus:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mSvCount:I

    if-eq p2, v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mStatus:I

    iput p2, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mSvCount:I

    iget-object v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v1, "satellites"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mStatusUpdateTime:J

    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(I)V
    .locals 3
    .parameter "uid"

    .prologue
    iget-object v1, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    iget-boolean v1, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mNavigating:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p1}, Lcom/android/internal/app/IBatteryStats;->noteStartGps(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "VzwGpsLocationProvider"

    const-string v2, "RemoteException in addListener"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized disable()V
    .locals 4

    .prologue
    const-string v1, "VzwGpsLocationProvider"

    monitor-enter p0

    :try_start_0
    const-string v1, "VzwGpsLocationProvider"

    const-string v2, "disable()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mEnabled:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/vzw/location/VzwGpsLocationProvider;->stopNavigating(Z)V

    invoke-direct {p0}, Lcom/vzw/location/VzwGpsLocationProvider;->native_disable()V

    iget-object v1, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mEventThread:Lcom/vzw/location/VzwGpsLocationProvider$AgpsEventThread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    :try_start_2
    iget-object v1, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mEventThread:Lcom/vzw/location/VzwGpsLocationProvider$AgpsEventThread;

    invoke-virtual {v1}, Lcom/vzw/location/VzwGpsLocationProvider$AgpsEventThread;->join()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mEventThread:Lcom/vzw/location/VzwGpsLocationProvider$AgpsEventThread;

    :cond_2
    const-string v1, "VzwGpsLocationProvider"

    const-string v2, "native cleanup"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/vzw/location/VzwGpsLocationProvider;->native_cleanup()V

    const-string v1, "VzwGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disable(): mNavigating: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mNavigating:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mNavigating:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/vzw/location/VzwGpsLocationProvider;->reportStatus(I)V

    :cond_3
    iget-boolean v1, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mEngineOn:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/vzw/location/VzwGpsLocationProvider;->reportStatus(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v1, "VzwGpsLocationProvider"

    const-string v2, "InterruptedException when joining mEventThread"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized enable()V
    .locals 2

    .prologue
    const-string v0, "VzwGpsLocationProvider"

    monitor-enter p0

    :try_start_0
    const-string v0, "VzwGpsLocationProvider"

    const-string v1, "enable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsLocationProvider;->native_init()Z

    move-result v0

    iput-boolean v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mEnabled:Z

    iget-boolean v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mEnabled:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/vzw/location/VzwGpsLocationProvider$AgpsEventThread;

    invoke-direct {v0, p0}, Lcom/vzw/location/VzwGpsLocationProvider$AgpsEventThread;-><init>(Lcom/vzw/location/VzwGpsLocationProvider;)V

    iput-object v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mEventThread:Lcom/vzw/location/VzwGpsLocationProvider$AgpsEventThread;

    iget-object v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mEventThread:Lcom/vzw/location/VzwGpsLocationProvider$AgpsEventThread;

    invoke-virtual {v0}, Lcom/vzw/location/VzwGpsLocationProvider$AgpsEventThread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    const-string v0, "VzwGpsLocationProvider"

    const-string v1, "Failed to enable location provider"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public enableLocationTracking(ZZ)V
    .locals 2
    .parameter "enable"
    .parameter "silent"

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/vzw/location/VzwGpsLocationProvider;->startNavigating(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-virtual {p0, p2}, Lcom/vzw/location/VzwGpsLocationProvider;->stopNavigating(Z)V

    goto :goto_0
.end method

.method public getAccuracy()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public getGpsStatusProvider()Lcom/vzw/location/IVzwGpsStatusProvider;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mGpsStatusProvider:Lcom/vzw/location/IVzwGpsStatusProvider;

    return-object v0
.end method

.method public getPowerRequirement()I
    .locals 1

    .prologue
    const/4 v0, 0x3

    return v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .locals 2
    .parameter "extras"

    .prologue
    if-eqz p1, :cond_0

    const-string v0, "satellites"

    iget v1, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mSvCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    iget v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mStatus:I

    return v0
.end method

.method public getStatusUpdateTime()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mStatusUpdateTime:J

    return-wide v0
.end method

.method public hasMonetaryCost()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized isEnabled()Z
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeListener(I)V
    .locals 3
    .parameter "uid"

    .prologue
    iget-object v1, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    iget-boolean v1, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mNavigating:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p1}, Lcom/android/internal/app/IBatteryStats;->noteStopGps(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "VzwGpsLocationProvider"

    const-string v2, "RemoteException in removeListener"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requiresCell()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public requiresNetwork()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public requiresSatellite()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public setConfig(Lcom/vzw/location/VzwCriteria;)V
    .locals 12
    .parameter "vzwCriteria"

    .prologue
    invoke-virtual {p1}, Lcom/vzw/location/VzwCriteria;->getFixMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/vzw/location/VzwCriteria;->getAssistanceHost()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    .local v10, pdeHost:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/vzw/location/VzwCriteria;->getAssistancePort()I

    move-result v11

    .local v11, pdePort:I
    if-eqz v10, :cond_0

    if-nez v11, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Host or port is null with AGPS mode in setConfig()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, v0, v10, v11}, Lcom/vzw/location/VzwGpsLocationProvider;->setAGpsServer(ILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mSetC2KServer:Z

    .end local v10           #pdeHost:Ljava/lang/String;
    .end local v11           #pdePort:I
    :cond_2
    invoke-virtual {p1}, Lcom/vzw/location/VzwCriteria;->getFixMode()I

    move-result v1

    invoke-virtual {p1}, Lcom/vzw/location/VzwCriteria;->getFixRate()Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vzw/location/VzwGpsFixRate;->getNumFixes()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/vzw/location/VzwCriteria;->getFixRate()Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vzw/location/VzwGpsFixRate;->getTimeBetweenFixes()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/vzw/location/VzwCriteria;->getPerformance()Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vzw/location/VzwGpsPerformance;->getHorizontalAccuracy()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/vzw/location/VzwCriteria;->getPerformance()Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vzw/location/VzwGpsPerformance;->getPreferredResponseTime()J

    move-result-wide v8

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/vzw/location/VzwGpsLocationProvider;->native_set_gps_config(IJJJJ)V

    return-void
.end method

.method public declared-synchronized startNavigating(Z)V
    .locals 6
    .parameter "silent"

    .prologue
    const-string v0, "VzwGpsLocationProvider"

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mStarted:Z

    if-eqz v0, :cond_1

    const-string v0, "VzwGpsLocationProvider"

    const-string v1, "Already started Navigating, Called startNavigating!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v0, "VzwGpsLocationProvider"

    const-string v1, "startNavigating"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mStarted:Z

    invoke-direct {p0}, Lcom/vzw/location/VzwGpsLocationProvider;->native_start()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mStarted:Z

    const-string v0, "VzwGpsLocationProvider"

    const-string v1, "native_start failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    if-eqz p1, :cond_3

    :try_start_2
    iget v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mPendingSkip:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mPendingSkip:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mTTFF:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mLastFixTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mFixCount:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mFixRequestTime:J

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/vzw/location/VzwGpsLocationProvider;->updateStatus(II)V

    iget v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mFixInterval:I

    const/16 v1, 0x3c

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized stopNavigating(Z)V
    .locals 2
    .parameter "silent"

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "VzwGpsLocationProvider"

    const-string v1, "stopNavigating"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mStarted:Z

    invoke-direct {p0}, Lcom/vzw/location/VzwGpsLocationProvider;->native_stop()Z

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mPendingSkip:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mPendingSkip:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, v0, v1}, Lcom/vzw/location/VzwGpsLocationProvider;->updateStatus(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public supportsAltitude()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public supportsBearing()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public supportsSpeed()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public updateAuthenticationState(II)V
    .locals 7
    .parameter "clientId"
    .parameter "authState"

    .prologue
    iget-object v4, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v5, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vzw/location/VzwGpsLocationProvider$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, listener:Lcom/vzw/location/VzwGpsLocationProvider$Listener;
    :try_start_1
    iget-object v5, v2, Lcom/vzw/location/VzwGpsLocationProvider$Listener;->mListener:Lcom/vzw/location/IVzwGpsStatusListener;

    invoke-interface {v5, p1, p2}, Lcom/vzw/location/IVzwGpsStatusListener;->onAuthStatusChanged(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v5

    move-object v0, v5

    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "VzwGpsLocationProvider"

    const-string v6, "RemoteException in reportStatus"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #listener:Lcom/vzw/location/VzwGpsLocationProvider$Listener;
    :cond_0
    monitor-exit v4

    return-void

    .end local v1           #i:I
    .end local v3           #size:I
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method

.method public updateNetworkState(I)V
    .locals 3
    .parameter "nwState"

    .prologue
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mNetworkAvailable:Z

    const-string v0, "VzwGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNetworkState(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vzw/location/VzwGpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v2, :cond_1

    const-string v2, "available"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v2, "unavailable"

    goto :goto_1
.end method
