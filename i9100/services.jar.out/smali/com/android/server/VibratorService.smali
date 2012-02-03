.class public Lcom/android/server/VibratorService;
.super Landroid/os/IVibratorService$Stub;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VibratorService$SettingsObserver;,
        Lcom/android/server/VibratorService$VibrateThread;,
        Lcom/android/server/VibratorService$Vibration;
    }
.end annotation


# static fields
.field private static final MY_IMMVIBE_LICENSE_KEY:Ljava/lang/String; = "DH75NDX26JR75GCZ5CKKTD25M9JP62TG"

.field private static final TAG:Ljava/lang/String; = "VibratorService"


# instance fields
.field private final TYPE_FEEDBACK_MAGNITUDE:I

.field private final TYPE_NOTIFICATION_MAGNITUDE:I

.field private final TYPE_RECVCALL_MAGNITUDE:I

.field private final VIBE_DEBUG:Z

.field private levelToMagnitude:[I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallMagnitudeObserver:Lcom/android/server/VibratorService$SettingsObserver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

.field private mDefaultTouchMagnitude:I

.field private mDevHandle:I

.field private mH:Landroid/os/Handler;

.field private mImmVibeAlertOnCallMagnitude:I

.field private mImmVibeCallMagnitude:I

.field private mImmVibeNotiMagnitude:I

.field private mImmVibeTouchMagnitude:I

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNotiMagnitudeObserver:Lcom/android/server/VibratorService$SettingsObserver;

.field private mTempMagnitude:I

.field volatile mThread:Lcom/android/server/VibratorService$VibrateThread;

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field private mTouchMagnitudeObserver:Lcom/android/server/VibratorService$SettingsObserver;

.field private final mTypeURIs:[Ljava/lang/String;

.field private mVibe:Lcom/immersion/android/ImmVibe;

.field private final mVibrationRunnable:Ljava/lang/Runnable;

.field private final mVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/VibratorService$Vibration;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private volumeToMagnitude:[I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/16 v7, 0x2710

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v8, "GT-I9100"

    .line 147
    invoke-direct {p0}, Landroid/os/IVibratorService$Stub;-><init>()V

    .line 55
    iput v4, p0, Lcom/android/server/VibratorService;->TYPE_FEEDBACK_MAGNITUDE:I

    .line 56
    iput v5, p0, Lcom/android/server/VibratorService;->TYPE_RECVCALL_MAGNITUDE:I

    .line 57
    iput v6, p0, Lcom/android/server/VibratorService;->TYPE_NOTIFICATION_MAGNITUDE:I

    .line 59
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "VIB_FEEDBACK_MAGNITUDE"

    aput-object v3, v2, v4

    const-string v3, "VIB_RECVCALL_MAGNITUDE"

    aput-object v3, v2, v5

    const-string v3, "VIB_NOTIFICATION_MAGNITUDE"

    aput-object v3, v2, v6

    iput-object v2, p0, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    .line 63
    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/server/VibratorService;->volumeToMagnitude:[I

    .line 64
    const/4 v2, 0x6

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    .line 67
    iput v4, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    .line 71
    const/16 v2, 0x7d0

    iput v2, p0, Lcom/android/server/VibratorService;->mImmVibeAlertOnCallMagnitude:I

    .line 72
    iput v7, p0, Lcom/android/server/VibratorService;->mDefaultTouchMagnitude:I

    .line 80
    iput-boolean v4, p0, Lcom/android/server/VibratorService;->VIBE_DEBUG:Z

    .line 87
    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2}, Landroid/os/WorkSource;-><init>()V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    .line 195
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    .line 433
    new-instance v2, Lcom/android/server/VibratorService$1;

    invoke-direct {v2, p0}, Lcom/android/server/VibratorService$1;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mVibrationRunnable:Ljava/lang/Runnable;

    .line 608
    new-instance v2, Lcom/android/server/VibratorService$2;

    invoke-direct {v2, p0}, Lcom/android/server/VibratorService$2;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 618
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    .line 156
    iput-object p1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 157
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 159
    .local v1, pm:Landroid/os/PowerManager;
    const-string v2, "VibratorService"

    invoke-virtual {v1, v5, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 160
    iget-object v2, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 161
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    .line 162
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 163
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    iget-object v2, p0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 168
    const-string v2, "GT-I9100"

    const-string v2, "GT-I9100"

    invoke-virtual {v8, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    const/16 v2, 0x21fc

    iput v2, p0, Lcom/android/server/VibratorService;->mDefaultTouchMagnitude:I

    .line 173
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    .line 174
    new-instance v2, Lcom/android/server/VibratorService$SettingsObserver;

    invoke-direct {v2, p0, v4}, Lcom/android/server/VibratorService$SettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mTouchMagnitudeObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 175
    new-instance v2, Lcom/android/server/VibratorService$SettingsObserver;

    invoke-direct {v2, p0, v5}, Lcom/android/server/VibratorService$SettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mCallMagnitudeObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 176
    new-instance v2, Lcom/android/server/VibratorService$SettingsObserver;

    invoke-direct {v2, p0, v6}, Lcom/android/server/VibratorService$SettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mNotiMagnitudeObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 177
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/server/VibratorService;->openDevice(Landroid/content/Context;)V

    .line 180
    return-void

    .line 171
    :cond_0
    iput v7, p0, Lcom/android/server/VibratorService;->mDefaultTouchMagnitude:I

    goto :goto_0

    .line 63
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t
        0xact 0xdt 0x0t 0x0t
        0x5ct 0x12t 0x0t 0x0t
        0x70t 0x17t 0x0t 0x0t
        0x4ct 0x1dt 0x0t 0x0t
        0xfct 0x21t 0x0t 0x0t
        0x10t 0x27t 0x0t 0x0t
    .end array-data

    .line 64
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t
        0xa0t 0xft 0x0t 0x0t
        0x70t 0x17t 0x0t 0x0t
        0x40t 0x1ft 0x0t 0x0t
        0x10t 0x27t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/VibratorService;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/VibratorService;)Lcom/immersion/android/ImmVibe;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/VibratorService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/VibratorService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/server/VibratorService;->mDefaultTouchMagnitude:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/VibratorService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/android/server/VibratorService;->mImmVibeCallMagnitude:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/VibratorService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/server/VibratorService;->volumeToMagnitude:[I

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/server/VibratorService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/android/server/VibratorService;->mImmVibeNotiMagnitude:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/VibratorService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/VibratorService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private closeDevice(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const-string v4, "VibratorService"

    .line 767
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v3, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    invoke-virtual {v2, v3}, Lcom/immersion/android/ImmVibe;->closeDevice(I)V

    .line 768
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    invoke-virtual {v2}, Lcom/immersion/android/ImmVibe;->terminate()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 776
    :goto_0
    return-void

    .line 769
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 770
    .local v1, re:Ljava/lang/RuntimeException;
    const-string v2, "VibratorService"

    const-string v2, "RuntimeException occured at closeDevice()."

    invoke-static {v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 772
    .end local v1           #re:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 773
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "VibratorService"

    const-string v2, "Exception occured at closeDevice()."

    invoke-static {v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private doCancelVibrateLocked()V
    .locals 3

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    monitor-enter v0

    .line 446
    :try_start_0
    iget-object v1, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    .line 447
    iget-object v1, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 448
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 464
    :cond_0
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V

    .line 467
    iget-object v0, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 468
    return-void

    .line 448
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private isAll0([J)Z
    .locals 6
    .parameter "pattern"

    .prologue
    .line 288
    array-length v0, p1

    .line 289
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 290
    aget-wide v2, p1, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 291
    const/4 v2, 0x0

    .line 294
    :goto_1
    return v2

    .line 289
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 294
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private openDevice(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const-string v6, "VibratorService"

    const-string v5, "ImmVibeJ loading failed!! : "

    .line 747
    :try_start_0
    new-instance v1, Lcom/immersion/android/ImmVibe;

    invoke-direct {v1}, Lcom/immersion/android/ImmVibe;-><init>()V

    iput-object v1, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    .line 748
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    invoke-virtual {v1}, Lcom/immersion/android/ImmVibe;->initialize()V

    .line 749
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    const/4 v2, 0x0

    const-string v3, "DH75NDX26JR75GCZ5CKKTD25M9JP62TG"

    invoke-virtual {v1, v2, v3}, Lcom/immersion/android/ImmVibe;->openDevice(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    .line 751
    iget-object v1, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v3, p0, Lcom/android/server/VibratorService;->mDefaultTouchMagnitude:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I

    .line 753
    iget-object v1, p0, Lcom/android/server/VibratorService;->volumeToMagnitude:[I

    iget-object v2, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x7

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    aget v1, v1, v2

    iput v1, p0, Lcom/android/server/VibratorService;->mImmVibeCallMagnitude:I

    .line 754
    iget-object v1, p0, Lcom/android/server/VibratorService;->volumeToMagnitude:[I

    iget-object v2, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    const/4 v4, 0x7

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    aget v1, v1, v2

    iput v1, p0, Lcom/android/server/VibratorService;->mImmVibeNotiMagnitude:I
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 761
    :goto_0
    return-void

    .line 756
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 757
    .local v0, e:Ljava/lang/Error;
    const-string v1, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImmVibeJ loading failed!! : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 758
    .end local v0           #e:Ljava/lang/Error;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 759
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImmVibeJ loading failed!! : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;
    .locals 4
    .parameter "token"

    .prologue
    .line 499
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 500
    .local v0, iter:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/android/server/VibratorService$Vibration;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 501
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VibratorService$Vibration;

    .line 502
    .local v1, vib:Lcom/android/server/VibratorService$Vibration;
    #getter for: Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/android/server/VibratorService$Vibration;->access$500(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 503
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    move-object v2, v1

    .line 512
    .end local v1           #vib:Lcom/android/server/VibratorService$Vibration;
    :goto_0
    return-object v2

    .line 509
    :cond_1
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    #getter for: Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/android/server/VibratorService$Vibration;->access$500(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 510
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    goto :goto_0

    .line 512
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setVibeStrength(I)V
    .locals 6
    .parameter "strength"

    .prologue
    const-string v5, "VibratorService"

    .line 636
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v3, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4, p1}, Lcom/immersion/android/ImmVibe;->setDevicePropertyInt32(III)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 644
    :goto_0
    return-void

    .line 637
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 638
    .local v1, re:Ljava/lang/RuntimeException;
    const-string v2, "VibratorService"

    const-string v2, "RuntimeException occured at setDevicePropertyInt32, playPeriodicEffect()."

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 640
    .end local v1           #re:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 641
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "VibratorService"

    const-string v2, "Exception occured at setDevicePropertyInt32, playPeriodicEffect()."

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startNextVibrationLocked()V
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 476
    :goto_0
    return-void

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VibratorService$Vibration;

    iput-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 475
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    goto :goto_0
.end method

.method private startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    .locals 4
    .parameter "vib"

    .prologue
    .line 480
    #getter for: Lcom/android/server/VibratorService$Vibration;->mTimeout:J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$400(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 484
    #getter for: Lcom/android/server/VibratorService$Vibration;->mTimeout:J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$400(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/VibratorService;->vibrate(JLandroid/os/IBinder;)V

    .line 489
    iget-object v0, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrationRunnable:Ljava/lang/Runnable;

    #getter for: Lcom/android/server/VibratorService$Vibration;->mTimeout:J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$400(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 496
    :goto_0
    return-void

    .line 493
    :cond_0
    new-instance v0, Lcom/android/server/VibratorService$VibrateThread;

    invoke-direct {v0, p0, p1}, Lcom/android/server/VibratorService$VibrateThread;-><init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 494
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v0}, Lcom/android/server/VibratorService$VibrateThread;->start()V

    goto :goto_0
.end method

.method static native vibratorOff()V
.end method

.method static native vibratorOn(J)V
.end method


# virtual methods
.method public cancelVibrate(Landroid/os/IBinder;)V
    .locals 7
    .parameter "token"

    .prologue
    .line 400
    iget-object v4, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.VIBRATE"

    const-string v6, "cancelVibrate"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    :try_start_0
    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v5, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    invoke-virtual {v4, v5}, Lcom/immersion/android/ImmVibe;->stopAllPlayingEffects(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 420
    .local v0, identity:J
    :try_start_1
    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 421
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v3

    .line 422
    .local v3, vib:Lcom/android/server/VibratorService$Vibration;
    iget-object v5, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-ne v3, v5, :cond_0

    .line 423
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 424
    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    .line 426
    :cond_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 429
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 431
    return-void

    .line 410
    .end local v0           #identity:J
    .end local v3           #vib:Lcom/android/server/VibratorService$Vibration;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 411
    .local v2, re:Ljava/lang/RuntimeException;
    const-string v4, "VibratorService"

    const-string v5, "RuntimeException occured at cancelVibrate()."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 426
    .end local v2           #re:Ljava/lang/RuntimeException;
    .restart local v0       #identity:J
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 429
    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->closeDevice(Landroid/content/Context;)V

    .line 188
    return-void
.end method

.method public getMaxMagnitude()I
    .locals 1

    .prologue
    .line 741
    iget v0, p0, Lcom/android/server/VibratorService;->mDefaultTouchMagnitude:I

    return v0
.end method

.method public resetMagnitude()V
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    if-gez v0, :cond_0

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_0
    iget v0, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    iput v0, p0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I

    .line 206
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    goto :goto_0
.end method

.method public setMagnitude(I)V
    .locals 1
    .parameter "magnitude"

    .prologue
    .line 197
    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 198
    :cond_0
    const/16 v0, 0x2710

    if-le p1, v0, :cond_1

    const/16 p1, 0x2710

    .line 200
    :cond_1
    iget v0, p0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I

    iput v0, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    .line 201
    iput p1, p0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I

    .line 202
    return-void
.end method

.method public vibrate(JLandroid/os/IBinder;)V
    .locals 1
    .parameter "milliseconds"
    .parameter "token"

    .prologue
    .line 210
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/VibratorService;->vibrateMagnitude(JLandroid/os/IBinder;I)V

    .line 211
    return-void
.end method

.method public vibrate(JLandroid/os/IBinder;I)V
    .locals 0
    .parameter "milliseconds"
    .parameter "token"
    .parameter "magnitude"

    .prologue
    .line 213
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/VibratorService;->vibrateMagnitude(JLandroid/os/IBinder;I)V

    .line 214
    return-void
.end method

.method public vibrateCall(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 733
    iget v0, p0, Lcom/android/server/VibratorService;->mDefaultTouchMagnitude:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/VibratorService;->vibrateImmVibe(II)V

    .line 734
    return-void
.end method

.method public vibrateImmVibe(II)V
    .locals 8
    .parameter "type"
    .parameter "magnitude"

    .prologue
    const/16 v6, 0x9

    const-string v7, "VibratorService"

    .line 647
    const/4 v2, -0x4

    .line 653
    .local v2, ret:I
    if-gez p2, :cond_0

    iget p2, p0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I

    .line 654
    :cond_0
    const/16 v3, 0x2710

    if-le p2, v3, :cond_1

    const/16 p2, 0x2710

    .line 656
    :cond_1
    if-lt p1, v6, :cond_4

    const/16 v3, 0x14

    if-gt p1, v3, :cond_4

    .line 659
    invoke-direct {p0, p2}, Lcom/android/server/VibratorService;->setVibeStrength(I)V

    .line 661
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    if-nez v3, :cond_2

    .line 662
    const/4 v2, -0x2

    .line 665
    :cond_2
    if-nez p2, :cond_3

    .line 666
    const/4 v2, 0x0

    .line 669
    :cond_3
    const/4 v3, -0x4

    if-ne v2, v3, :cond_4

    .line 672
    :try_start_0
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v4, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    invoke-virtual {v3, v4}, Lcom/immersion/android/ImmVibe;->stopAllPlayingEffects(I)V

    .line 673
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v4, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    sget-object v5, Lcom/immersion/android/ImmVibeConstants;->ivt:[[B

    sub-int v6, p1, v6

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/immersion/android/ImmVibe;->playIVTEffect(I[BI)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 683
    :cond_4
    :goto_0
    return-void

    .line 674
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 675
    .local v1, re:Ljava/lang/RuntimeException;
    const-string v3, "VibratorService"

    const-string v3, "RuntimeException occured at closeDevice()."

    invoke-static {v7, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 677
    .end local v1           #re:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 678
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "VibratorService"

    const-string v3, "Exception occured at closeDevice()."

    invoke-static {v7, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public vibrateImmVibePattern([BI)V
    .locals 7
    .parameter "pattern"
    .parameter "magnitude"

    .prologue
    const-string v6, "VibratorService"

    .line 686
    const/4 v2, -0x4

    .line 692
    .local v2, ret:I
    if-gez p2, :cond_0

    iget p2, p0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I

    .line 693
    :cond_0
    const/16 v3, 0x2710

    if-le p2, v3, :cond_1

    const/16 p2, 0x2710

    .line 695
    :cond_1
    if-eqz p1, :cond_4

    .line 697
    invoke-direct {p0, p2}, Lcom/android/server/VibratorService;->setVibeStrength(I)V

    .line 699
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    if-nez v3, :cond_2

    .line 700
    const/4 v2, -0x2

    .line 703
    :cond_2
    if-nez p2, :cond_3

    .line 704
    const/4 v2, 0x0

    .line 707
    :cond_3
    const/4 v3, -0x4

    if-ne v2, v3, :cond_4

    .line 710
    :try_start_0
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v4, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    invoke-virtual {v3, v4}, Lcom/immersion/android/ImmVibe;->stopAllPlayingEffects(I)V

    .line 711
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v4, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, v5}, Lcom/immersion/android/ImmVibe;->playIVTEffect(I[BI)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 721
    :cond_4
    :goto_0
    return-void

    .line 712
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 713
    .local v1, re:Ljava/lang/RuntimeException;
    const-string v3, "VibratorService"

    const-string v3, "RuntimeException occured at closeDevice()."

    invoke-static {v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 715
    .end local v1           #re:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 716
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "VibratorService"

    const-string v3, "Exception occured at closeDevice()."

    invoke-static {v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public vibrateMagnitude(JLandroid/os/IBinder;I)V
    .locals 17
    .parameter "milliseconds"
    .parameter "token"
    .parameter "magnitude"

    .prologue
    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    move-object v3, v0

    const-string v4, "android.permission.VIBRATE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 218
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires VIBRATE permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 220
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    .line 224
    .local v16, uid:I
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    move-object v3, v0

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    move-object v3, v0

    move-object v0, v3

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/VibratorService$Vibration;->hasLongerTimeout(J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 285
    :cond_1
    :goto_0
    return-void

    .line 231
    :cond_2
    if-gez p4, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I

    move/from16 p4, v0

    .line 232
    :cond_3
    const/16 v3, 0x2710

    move/from16 v0, p4

    move v1, v3

    if-le v0, v1, :cond_4

    const/16 p4, 0x2710

    .line 236
    :cond_4
    const/4 v15, -0x4

    .line 238
    .local v15, ret:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    move-object v3, v0

    if-nez v3, :cond_5

    .line 239
    const/4 v15, -0x2

    .line 242
    :cond_5
    if-nez p4, :cond_6

    .line 243
    const/4 v15, 0x0

    .line 246
    :cond_6
    const/4 v3, -0x4

    if-ne v15, v3, :cond_1

    .line 253
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->setVibeStrength(I)V

    .line 255
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, p1, v3

    if-lez v3, :cond_7

    const v3, 0x7fffffff

    move v12, v3

    .line 256
    .local v12, duration:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/VibratorService;->mDevHandle:I

    move v4, v0

    invoke-virtual {v3, v4}, Lcom/immersion/android/ImmVibe;->stopAllPlayingEffects(I)V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/VibratorService;->mDevHandle:I

    move v4, v0

    move-wide/from16 v0, p1

    long-to-int v0, v0

    move v5, v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move/from16 v6, p4

    invoke-virtual/range {v3 .. v11}, Lcom/immersion/android/ImmVibe;->playMagSweepEffect(IIIIIIII)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v15

    goto :goto_0

    .line 255
    .end local v12           #duration:I
    :cond_7
    move-wide/from16 v0, p1

    long-to-int v0, v0

    move v3, v0

    move v12, v3

    goto :goto_1

    .line 266
    :catch_0
    move-exception v3

    move-object v14, v3

    .line 267
    .local v14, re:Ljava/lang/RuntimeException;
    const-string v3, "VibratorService"

    const-string v4, "RuntimeException occured at closeDevice()."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {v14}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 269
    .end local v14           #re:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v3

    move-object v13, v3

    .line 270
    .local v13, e:Ljava/lang/Exception;
    const-string v3, "VibratorService"

    const-string v4, "Exception occured at closeDevice()."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public vibrateNotification(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 737
    iget v0, p0, Lcom/android/server/VibratorService;->mDefaultTouchMagnitude:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/VibratorService;->vibrateImmVibe(II)V

    .line 738
    return-void
.end method

.method public vibratePattern([JILandroid/os/IBinder;)V
    .locals 9
    .parameter "pattern"
    .parameter "repeat"
    .parameter "token"

    .prologue
    .line 298
    iget-object v1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.VIBRATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires VIBRATE permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 302
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 304
    .local v5, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 316
    .local v7, identity:J
    if-eqz p1, :cond_1

    :try_start_0
    array-length v1, p1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->isAll0([J)Z

    move-result v1

    if-nez v1, :cond_1

    array-length v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ge p2, v1, :cond_1

    if-nez p3, :cond_2

    .line 344
    :cond_1
    :goto_0
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 346
    return-void

    .line 322
    :cond_2
    :try_start_1
    new-instance v0, Lcom/android/server/VibratorService$Vibration;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;[JII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 324
    .local v0, vib:Lcom/android/server/VibratorService$Vibration;
    const/4 v1, 0x0

    :try_start_2
    invoke-interface {p3, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 329
    :try_start_3
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 330
    :try_start_4
    invoke-direct {p0, p3}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 331
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 332
    if-ltz p2, :cond_3

    .line 333
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 334
    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    .line 341
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 344
    .end local v0           #vib:Lcom/android/server/VibratorService$Vibration;
    :catchall_1
    move-exception v1

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 325
    .restart local v0       #vib:Lcom/android/server/VibratorService$Vibration;
    :catch_0
    move-exception v6

    .local v6, e:Landroid/os/RemoteException;
    goto :goto_0

    .line 338
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_3
    :try_start_6
    iput-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 339
    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method public vibratePatternByMagnitude([JILandroid/os/IBinder;I)V
    .locals 10
    .parameter "pattern"
    .parameter "repeat"
    .parameter "token"
    .parameter "magnitude"

    .prologue
    .line 349
    iget-object v1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.VIBRATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires VIBRATE permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 353
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 355
    .local v5, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 367
    .local v8, identity:J
    if-eqz p1, :cond_1

    :try_start_0
    array-length v1, p1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->isAll0([J)Z

    move-result v1

    if-nez v1, :cond_1

    array-length v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ge p2, v1, :cond_1

    if-nez p3, :cond_2

    .line 395
    :cond_1
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 397
    return-void

    .line 373
    :cond_2
    :try_start_1
    new-instance v0, Lcom/android/server/VibratorService$Vibration;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;[JIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 375
    .local v0, vib:Lcom/android/server/VibratorService$Vibration;
    const/4 v1, 0x0

    :try_start_2
    invoke-interface {p3, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 380
    :try_start_3
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 381
    :try_start_4
    invoke-direct {p0, p3}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 382
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 383
    if-ltz p2, :cond_3

    .line 384
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 385
    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    .line 392
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 395
    .end local v0           #vib:Lcom/android/server/VibratorService$Vibration;
    :catchall_1
    move-exception v1

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 376
    .restart local v0       #vib:Lcom/android/server/VibratorService$Vibration;
    :catch_0
    move-exception v7

    .local v7, e:Landroid/os/RemoteException;
    goto :goto_0

    .line 389
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_3
    :try_start_6
    iput-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 390
    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method
