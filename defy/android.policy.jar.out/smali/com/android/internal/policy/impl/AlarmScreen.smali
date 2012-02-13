.class Lcom/android/internal/policy/impl/AlarmScreen;
.super Landroid/widget/LinearLayout;
.source "AlarmScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;


# static fields
.field private static final DBG:Z = true

.field private static final DEFAULT_ALERT_PERIOD:Ljava/lang/String; = "300"

.field private static final MESSAGE_DISMISS_DLG_TIMEOUT:I = 0x5

.field private static final MESSAGE_KILLED_ALARM_SNOOZE:I = 0x6

.field private static final MESSAGE_POWER_CYCLE:I = 0x3

.field private static final MESSAGE_SHOW_DIALOG:I = 0x4

.field private static final MESSAGE_TIMEOUT:I = 0x1

.field private static final MESSAGE_WAKE_LOCK_TIMEOUT:I = 0x2

.field public static final POWEROFF_ALARM_URI:Landroid/net/Uri; = null

.field private static final POWERUP_DURATION:I = 0x186a0

.field static final SETTINGS_AUTO_POWERON_ENABLED:Ljava/lang/String; = "auto_powerup_enabled"

.field static final SETTINGS_AUTO_POWERON_HOUR:Ljava/lang/String; = "auto_powerup_hour"

.field static final SETTINGS_AUTO_POWERON_MINUTES:Ljava/lang/String; = "auto_powerup_minutes"

.field private static final TAG:Ljava/lang/String; = "AlarmScreen"

.field private static final sVibratePattern:[J


# instance fields
.field private buttons:Landroid/view/View;

.field private indicator:Landroid/view/View;

.field private mAlarm:Lcom/android/internal/policy/impl/Alarm;

.field private mAlarmId:I

.field private mAlarmTimeoutSec:J

.field private mAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mAlertDuration:I

.field private mAutoPowerupTriggered:Z

.field protected mAutoSnoozeTime:I

.field private mConfirmDlg:Landroid/app/AlertDialog;

.field private mDismissDlg:Landroid/app/AlertDialog;

.field protected mDismissed:Z

.field private mHandler:Landroid/os/Handler;

.field private mLoadTriggered:Z

.field private mLock:Ljava/lang/Object;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPowerCycleReceiver:Landroid/content/BroadcastReceiver;

.field private mPowerManager:Landroid/os/PowerManager;

.field protected mSnoozeMins:I

.field private mSnoozePrompt:Landroid/widget/TextView;

.field private mSnoozeRegion:Landroid/widget/LinearLayout;

.field protected mSnoozeTarget:J

.field protected mSnoozed:Z

.field private mTimeFormat:Ljava/text/DateFormat;

.field private mTitle:Landroid/widget/TextView;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mUpdateSnoozeMinutesRunnable:Ljava/lang/Runnable;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVolumeBehavior:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "content://com.motorola.blur.alarmclock/alarm/poweroffalarm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/AlarmScreen;->POWEROFF_ALARM_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/policy/impl/AlarmScreen;->sVibratePattern:[J

    return-void

    nop

    :array_0
    .array-data 0x8
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 12
    .parameter "context"
    .parameter "updateMonitor"

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v11, "AlarmScreen"

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mConfirmDlg:Landroid/app/AlertDialog;

    iput-object v8, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mDismissDlg:Landroid/app/AlertDialog;

    iput-object v8, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    iput-object v8, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mVibrator:Landroid/os/Vibrator;

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mLoadTriggered:Z

    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mLock:Ljava/lang/Object;

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mAutoPowerupTriggered:Z

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mSnoozed:Z

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mDismissed:Z

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mSnoozeTarget:J

    iput v9, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mAutoSnoozeTime:I

    iput v9, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mSnoozeMins:I

    iput-object v8, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mAlarm:Lcom/android/internal/policy/impl/Alarm;

    const-wide/32 v6, 0x493e0

    iput-wide v6, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mAlarmTimeoutSec:J

    iput v10, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mVolumeBehavior:I

    new-instance v6, Lcom/android/internal/policy/impl/AlarmScreen$1;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/AlarmScreen$1;-><init>(Lcom/android/internal/policy/impl/AlarmScreen;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/internal/policy/impl/AlarmScreen$2;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/AlarmScreen$2;-><init>(Lcom/android/internal/policy/impl/AlarmScreen;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mPowerCycleReceiver:Landroid/content/BroadcastReceiver;

    iput-object p2, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const-string v6, "AlarmScreen"

    const-string v6, " create alarmscreen"

    invoke-static {v11, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "power"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    iput-object v6, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mPowerManager:Landroid/os/PowerManager;

    iget-object v6, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mPowerManager:Landroid/os/PowerManager;

    const v7, 0x1000001a

    const-string v8, "alarmscreen"

    invoke-virtual {v6, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v6, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6, v9}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .local v1, inflater:Landroid/view/LayoutInflater;
    const v6, 0x2030001

    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {v1, v6, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .local v5, view:Landroid/view/View;
    if-nez v5, :cond_0

    const-string v6, "AlarmScreen"

    const-string v7, "VIEW is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5           #view:Landroid/view/View;
    :cond_0
    :goto_0
    const v6, 0x2040011

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/AlarmScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/motorola/android/widget/SlideButton;

    .local v4, slideButton:Lcom/motorola/android/widget/SlideButton;
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3, v10}, Landroid/text/TextPaint;-><init>(I)V

    .local v3, pt2:Landroid/text/TextPaint;
    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v6}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/AlarmScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x206000a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/AlarmScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x2080001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {v3, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v6}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v4, v3}, Lcom/motorola/android/widget/SlideButton;->setPaint(Landroid/graphics/Paint;)V

    new-instance v6, Lcom/android/internal/policy/impl/AlarmScreen$3;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/AlarmScreen$3;-><init>(Lcom/android/internal/policy/impl/AlarmScreen;)V

    invoke-virtual {v4, v6}, Lcom/motorola/android/widget/SlideButton;->setSlidableListener(Lcom/motorola/android/widget/SlideButton$OnSlideEndListener;)V

    const v6, 0x204000b

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/AlarmScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mSnoozeRegion:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mSnoozeRegion:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v6, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mSnoozeRegion:Landroid/widget/LinearLayout;

    new-instance v7, Lcom/android/internal/policy/impl/AlarmScreen$4;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/AlarmScreen$4;-><init>(Lcom/android/internal/policy/impl/AlarmScreen;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v6, "com.motorola.rtc_alarm_power_cycle"

    invoke-direct {v2, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v2, powerCycleFilter:Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mPowerCycleReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0, v10}, Lcom/android/internal/policy/impl/AlarmScreen;->setFocusable(Z)V

    invoke-virtual {p0, v10}, Lcom/android/internal/policy/impl/AlarmScreen;->setFocusableInTouchMode(Z)V

    const/high16 v6, 0x6

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/AlarmScreen;->setDescendantFocusability(I)V

    const v6, 0x204000c

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/AlarmScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mTitle:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/AlarmScreen;->enableKiller()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/AlarmScreen;->updateBackground()V

    return-void

    .end local v2           #powerCycleFilter:Landroid/content/IntentFilter;
    .end local v3           #pt2:Landroid/text/TextPaint;
    .end local v4           #slideButton:Lcom/motorola/android/widget/SlideButton;
    :catch_0
    move-exception v6

    move-object v0, v6

    .local v0, e:Ljava/lang/Exception;
    const-string v6, "AlarmScreen"

    const-string v6, "inflate exception "

    invoke-static {v11, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/AlarmScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/AlarmScreen;->snooze()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/AlarmScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/AlarmScreen;->gotoShutdown()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/AlarmScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/AlarmScreen;->showAlertDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/AlarmScreen;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/AlarmScreen;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/AlarmScreen;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/AlarmScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/AlarmScreen;->gotoPowerCycle()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/AlarmScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/AlarmScreen;->showProgressDialog(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/AlarmScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/AlarmScreen;->handleAutoSnooze()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/AlarmScreen;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/AlarmScreen;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/AlarmScreen;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/AlarmScreen;)Landroid/os/Vibrator;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method private calculateAlarm(IILcom/android/internal/policy/impl/Alarm$DaysOfWeek;Z)J
    .locals 9
    .parameter "hour"
    .parameter "minute"
    .parameter "daysOfWeek"
    .parameter "addDay"

    .prologue
    const/16 v8, 0xc

    const/16 v7, 0xb

    const/4 v6, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .local v1, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .local v2, nowHour:I
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .local v3, nowMinute:I
    if-lt p1, v2, :cond_0

    if-ne p1, v2, :cond_1

    if-gt p2, v3, :cond_1

    :cond_0
    if-eqz p4, :cond_1

    const/4 v4, 0x6

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    :cond_1
    invoke-virtual {v1, v7, p1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v1, v8, p2}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xd

    invoke-virtual {v1, v4, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xe

    invoke-virtual {v1, v4, v6}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p3, v1}, Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;->getNextAlarm(Ljava/util/Calendar;)I

    move-result v0

    .local v0, addDays:I
    if-lez v0, :cond_2

    const/4 v4, 0x7

    invoke-virtual {v1, v4, v0}, Ljava/util/Calendar;->add(II)V

    :cond_2
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    return-wide v4
.end method

.method static calculateAlarm(II)Ljava/util/Calendar;
    .locals 8
    .parameter "hour"
    .parameter "minute"

    .prologue
    const/16 v7, 0xc

    const/16 v6, 0xb

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .local v1, nowHour:I
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .local v2, nowMinute:I
    if-lt p0, v1, :cond_0

    if-ne p0, v1, :cond_1

    if-gt p1, v2, :cond_1

    :cond_0
    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    :cond_1
    invoke-virtual {v0, v6, p0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v7, p1}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xe

    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->set(II)V

    return-object v0
.end method

.method private enableKiller()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mAlarm:Lcom/android/internal/policy/impl/Alarm;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mAlarmTimeoutSec:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private gotoPowerCycle()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mDismissDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mDismissDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1, v3, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/AlarmScreen;->stopAlert()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_not_confirm"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    invoke-static {v0, v4, v3}, Lcom/android/internal/app/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private gotoShutdown()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v1, "AlarmScreen"

    const-string v0, "AlarmScreen"

    const-string v0, "setRTC before shutdown()"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mDismissDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mDismissDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/AlarmScreen;->setAutoPowerOnIfNeeded()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/AlarmScreen;->setPoweroffAlarmIfneed()V

    const-string v0, "AlarmScreen"

    const-string v0, "gotoShutdown()"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/AlarmScreen;->stopAlert()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    return-void
.end method

.method private handleAutoSnooze()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/AlarmScreen;->snooze(Z)V

    return-void
.end method

.method private loadTriggeredAlarmLocked()V
    .locals 14

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mLoadTriggered:Z

    if-eqz v0, :cond_1

    const-string v0, "AlarmScreen"

    const-string v1, " have find the triggerd alarm"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/policy/impl/AlarmScreen;->POWEROFF_ALARM_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/policy/impl/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, cur:Landroid/database/Cursor;
    if-nez v6, :cond_2

    const-string v0, "AlarmScreen"

    const-string v1, "Found no enabled alarms!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "AlarmScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Find Alarms from provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/internal/policy/impl/Alarm;

    invoke-direct {v0, v6}, Lcom/android/internal/policy/impl/Alarm;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mAlarm:Lcom/android/internal/policy/impl/Alarm;

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const-string v0, "AlarmScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alarm enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mAlarm:Lcom/android/internal/policy/impl/Alarm;

    iget-boolean v2, v2, Lcom/android/internal/policy/impl/Alarm;->enabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mAlarm:Lcom/android/internal/policy/impl/Alarm;

    iget-wide v2, v2, Lcom/android/internal/policy/impl/Alarm;->time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " how="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mAlarm:Lcom/android/internal/policy/impl/Alarm;

    iget v2, v2, Lcom/android/internal/policy/impl/Alarm;->hour:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " min="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mAlarm:Lcom/android/internal/policy/impl/Alarm;

    iget v2, v2, Lcom/android/internal/policy/impl/Alarm;->minutes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mAlarm:Lcom/android/internal/policy/impl/Alarm;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/Alarm;->enabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .local v10, now:J
    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mAlarm:Lcom/android/internal/policy/impl/Alarm;

    iget-wide v12, v0, Lcom/android/internal/policy/impl/Alarm;->time:J

    .local v12, time:J
    const-wide/16 v0, 0x0

    cmp-long v0, v12, v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mAlarm:Lcom/android/internal/policy/impl/Alarm;

    iget v0, v0, Lcom/android/internal/policy/impl/Alarm;->hour:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mAlarm:Lcom/android/internal/policy/impl/Alarm;

    iget v1, v1, Lcom/android/internal/policy/impl/Alarm;->minutes:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mAlarm:Lcom/android/internal/policy/impl/Alarm;

    iget-object v2, v2, Lcom/android/internal/policy/impl/Alarm;->daysOfWeek:Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/policy/impl/AlarmScreen;->calculateAlarm(IILcom/android/internal/policy/impl/Alarm$DaysOfWeek;Z)J

    move-result-wide v12

    :cond_3
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v0, "HH:mm:ss.SSS aaa"

    invoke-direct {v9, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v9, format:Ljava/text/SimpleDateFormat;
    const-string v0, "AlarmScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alarm on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sub-long v7, v10, v12

    .local v7, delta:J
    const-wide/32 v0, 0x186a0

    cmp-long v0, v7, v0

    if-gez v0, :cond_4

    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-lez v0, :cond_4

    const-string v0, "AlarmScreen"

    const-string v1, "Find the triggered alarm!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mLoadTriggered:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mAlarm:Lcom/android/internal/policy/impl/Alarm;

    iget v0, v0, Lcom/android/internal/policy/impl/Alarm;->id:I

    iput v0, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mAlarmId:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mAlarm:Lcom/android/internal/policy/impl/Alarm;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/AlarmScreen;->updateTitle(Lcom/android/internal/policy/impl/Alarm;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mAlarm:Lcom/android/internal/policy/impl/Alarm;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/AlarmScreen;->playAlert(Lcom/android/internal/policy/impl/Alarm;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "AlarmScreen"

    const-string v1, "It\'s a mistakenly triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/policy/impl/AlarmScreen;->gotoShutdown()V

    goto/16 :goto_0
.end method

.method private playAlert(Lcom/android/internal/policy/impl/Alarm;)V
    .locals 8
    .parameter "alarm"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x4

    const-string v6, "AlarmScreen"

    const-string v3, "300"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mAlertDuration:I

    iget v3, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mAlertDuration:I

    mul-int/lit16 v3, v3, 0x3e8

    add-int/lit8 v3, v3, 0x64

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/AlarmScreen;->pokeWakelock(I)V

    iget-object v0, p1, Lcom/android/internal/policy/impl/Alarm;->alert:Landroid/net/Uri;

    .local v0, alert:Landroid/net/Uri;
    if-nez v0, :cond_0

    invoke-static {v5}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    const-string v3, "AlarmScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using default alarm because of alert is null : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v5}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    const-string v3, "AlarmScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using default alarm because of alert is invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v4, Lcom/android/internal/policy/impl/AlarmScreen$5;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/AlarmScreen$5;-><init>(Lcom/android/internal/policy/impl/AlarmScreen;)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .local v1, audioManager:Landroid/media/AudioManager;
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #audioManager:Landroid/media/AudioManager;
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    const-string v4, "vibrator"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    iput-object v3, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mVibrator:Landroid/os/Vibrator;

    iget-boolean v3, p1, Lcom/android/internal/policy/impl/Alarm;->vibrate:Z

    if-eqz v3, :cond_3

    const-string v3, "AlarmScreen"

    const-string v3, "alarm vibrate on"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mVibrator:Landroid/os/Vibrator;

    sget-object v4, Lcom/android/internal/policy/impl/AlarmScreen;->sVibratePattern:[J

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate([JI)V

    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .local v2, message:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mHandler:Landroid/os/Handler;

    iget v4, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mAlertDuration:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .end local v2           #message:Landroid/os/Message;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v3}, Landroid/os/Vibrator;->cancel()V

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private pokeWakelock(I)V
    .locals 4
    .parameter "holdMs"

    .prologue
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private saveSnoozeAlert(IJ)V
    .locals 0
    .parameter "id"
    .parameter "time"

    .prologue
    return-void
.end method

.method private setAutoPowerOnIfNeeded()V
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v10, -0x1

    iget-object v7, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "auto_powerup_enabled"

    invoke-static {v7, v8, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v9, :cond_1

    move v0, v9

    .local v0, AutoPowerOnEnabled:Z
    :goto_0
    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return-void

    .end local v0           #AutoPowerOnEnabled:Z
    :cond_1
    move v0, v11

    goto :goto_0

    .restart local v0       #AutoPowerOnEnabled:Z
    :cond_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "auto_powerup_hour"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .local v5, tempHour:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "auto_powerup_minutes"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .local v6, tempMinute:I
    const-string v7, "Mark"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Auto Power Enabled and hour ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", minute = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v5, v10, :cond_0

    if-eq v6, v10, :cond_0

    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/AlarmScreen;->calculateAlarm(II)Ljava/util/Calendar;

    move-result-object v2

    .local v2, c:Ljava/util/Calendar;
    iget-object v7, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    const-string v8, "alarm"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .local v1, am:Landroid/app/AlarmManager;
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.settings.auto_power_on_changed"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    const/high16 v8, 0x1000

    invoke-static {v7, v11, v3, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .local v4, sender:Landroid/app/PendingIntent;
    const/4 v7, 0x6

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v1, v7, v8, v9, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method private setPoweroffAlarmIfneed()V
    .locals 13

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, contentResolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/internal/policy/impl/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/policy/impl/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    const-string v3, "(poweroff=1) AND (enabled=1 or snoozed=1)"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, cursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    invoke-static {v1, v8}, Lcom/android/internal/policy/impl/Alarm;->calculateNextAlert(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/internal/policy/impl/Alarm;

    move-result-object v6

    .local v6, alarm:Lcom/android/internal/policy/impl/Alarm;
    if-eqz v6, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    .local v7, am:Landroid/app/AlarmManager;
    new-instance v9, Landroid/content/Intent;

    const-string v1, "com.motorola.blur.alarmclock.ALARM_ALERT"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v9, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x1000

    invoke-static {v1, v2, v9, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .local v10, sender:Landroid/app/PendingIntent;
    const/4 v1, 0x4

    iget-wide v2, v6, Lcom/android/internal/policy/impl/Alarm;->time:J

    invoke-virtual {v7, v1, v2, v3, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    iget v1, v6, Lcom/android/internal/policy/impl/Alarm;->id:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mAlarm:Lcom/android/internal/policy/impl/Alarm;

    iget v2, v2, Lcom/android/internal/policy/impl/Alarm;->id:I

    if-eq v1, v2, :cond_0

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .local v12, values:Landroid/content/ContentValues;
    const-string v1, "poweroff_alarm"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/android/internal/policy/impl/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    iget v2, v6, Lcom/android/internal/policy/impl/Alarm;->id:I

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .local v11, updateRow:I
    const-string v1, "AlarmScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "old poweroff_alarm value update result ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "poweroff_alarm"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/android/internal/policy/impl/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mAlarm:Lcom/android/internal/policy/impl/Alarm;

    iget v2, v2, Lcom/android/internal/policy/impl/Alarm;->id:I

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    const-string v1, "AlarmScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new poweroff_alarm value update result ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v7           #am:Landroid/app/AlarmManager;
    .end local v9           #intent:Landroid/content/Intent;
    .end local v10           #sender:Landroid/app/PendingIntent;
    .end local v11           #updateRow:I
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private showAlertDialog()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x205000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, msg:Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x10403a2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/internal/policy/impl/AlarmScreen$8;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/AlarmScreen$8;-><init>(Lcom/android/internal/policy/impl/AlarmScreen;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/internal/policy/impl/AlarmScreen$7;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/AlarmScreen$7;-><init>(Lcom/android/internal/policy/impl/AlarmScreen;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mDismissDlg:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mDismissDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mDismissDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showProgressDialog(Z)V
    .locals 3
    .parameter "shutdown"

    .prologue
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .local v0, dlg:Landroid/app/ProgressDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    const v2, 0x10403a6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_0
    new-instance v1, Lcom/android/internal/policy/impl/AlarmScreen$6;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/AlarmScreen$6;-><init>(Lcom/android/internal/policy/impl/AlarmScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10d0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    const v2, 0x10403a7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private snooze()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/AlarmScreen;->gotoShutdown()V

    return-void
.end method

.method private snooze(Z)V
    .locals 4
    .parameter "isAutoSnooze"

    .prologue
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mSnoozeMins:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const v2, 0xea60

    iget v3, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mSnoozeMins:I

    mul-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mSnoozeTarget:J

    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mAlarm:Lcom/android/internal/policy/impl/Alarm;

    iget v0, v0, Lcom/android/internal/policy/impl/Alarm;->id:I

    iget-wide v1, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mSnoozeTarget:J

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/AlarmScreen;->saveSnoozeAlert(IJ)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/AlarmScreen;->gotoShutdown()V

    return-void
.end method

.method private stopAlert()V
    .locals 2

    .prologue
    const-string v0, "AlarmScreen"

    const-string v1, "stopAlert()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mAlarmWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mVibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private updateBackground()V
    .locals 2

    .prologue
    const v1, 0x204000a

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/AlarmScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .local v0, bgView:Landroid/view/View;
    const v1, 0x2020007

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method private updateTitle(Lcom/android/internal/policy/impl/Alarm;)V
    .locals 4
    .parameter "alarm"

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/android/internal/policy/impl/Alarm;->getLabelOrDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .local v0, label:Ljava/lang/String;
    const-string v1, "AlarmScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTitle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mTitle:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const-string v0, "AlarmScreen"

    const-string v1, "CleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mConfirmDlg:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    const-string v1, "AlarmScreen"

    const-string v2, "consume hard key!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .local v0, keyCode:I
    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x54

    if-ne v0, v1, :cond_2

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    sparse-switch v0, :sswitch_data_0

    :cond_3
    move v1, v3

    goto :goto_0

    :sswitch_0
    iget v1, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mVolumeBehavior:I

    packed-switch v1, :pswitch_data_0

    :goto_1
    move v1, v3

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/AlarmScreen;->snooze()V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/AlarmScreen;->gotoShutdown()V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_0
        0x50 -> :sswitch_0
        0x53 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    return-void
.end method

.method public onFlipChanged(Z)V
    .locals 0
    .parameter "flipStatus"

    .prologue
    return-void
.end method

.method public onKeyboardChange(Z)V
    .locals 0
    .parameter "isKeyboardOpen"

    .prologue
    return-void
.end method

.method public onOrientationChange(Z)V
    .locals 0
    .parameter "inPortrait"

    .prologue
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/AlarmScreen;->loadTriggeredAlarmLocked()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/AlarmScreen;->requestFocus()Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
