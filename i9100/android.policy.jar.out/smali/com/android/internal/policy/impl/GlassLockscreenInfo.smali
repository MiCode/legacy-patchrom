.class public Lcom/android/internal/policy/impl/GlassLockscreenInfo;
.super Landroid/widget/RelativeLayout;
.source "GlassLockscreenInfo.java"


# static fields
.field public static final ACTION_SEC_CHANGE_SETTING:Ljava/lang/String; = "com.sec.android.widgetapp.accuweatherdaemon.action.CHANGE_SETTING"

.field public static final ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String; = "com.sec.android.widgetapp.accuweatherdaemon.action.CHANGE_WEATHER_DATA"

.field public static final DAEMON_TURN_OFF:I = 0x0

.field public static final DAEMON_TURN_ON:I = 0x1

.field private static final DEBUG:Z = true

.field public static final KEY_AUTO_REFRESH_INTERVAL:Ljava/lang/String; = "aw_daemon_service_key_autorefresh_interval"

.field public static final KEY_CITY_NAME:Ljava/lang/String; = "CITY_NAME"

.field public static final KEY_CURRENT_TEMP:Ljava/lang/String; = "aw_daemon_service_key_current_temp"

.field public static final KEY_DAEMON_ON_OFF:Ljava/lang/String; = "aw_daemon_service_key_service_status"

.field public static final KEY_ICON_NUM:Ljava/lang/String; = "aw_daemon_service_key_icon_num"

.field public static final KEY_TEMP_SCALE:Ljava/lang/String; = "aw_daemon_service_key_temp_scale"

.field public static final KEY_UPDATED_TIME:Ljava/lang/String; = "aw_daemon_service_key_updated_time"

.field private static final MSG_BOOT_COMPLETED:I = 0x140

.field private static final MSG_WEATHER_SETTING_CHANGED:I = 0x12c

.field private static final MSG_WEATHER_UPDATED:I = 0x136

.field private static final TAG:Ljava/lang/String; = "GlassLockscreenInfo"

.field public static final TEMP_SCALE_CENTIGRADE:I = 0x1

.field public static final TEMP_SCALE_FAHRENHEIT:I


# instance fields
.field private mBatteryLevel:I

.field private mBootCompleted:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCharging:Ljava/lang/String;

.field private mChargingIcon:Landroid/graphics/drawable/Drawable;

.field private mChargingLayout:Landroid/widget/RelativeLayout;

.field private mCharingText:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mLayoutPosition:I

.field private mPluggedIn:Z

.field private mShowingBatteryInfo:Z

.field private mSpace_01:Landroid/widget/LinearLayout;

.field private mSpace_02:Landroid/widget/LinearLayout;

.field private mTemperatureUnit:Landroid/graphics/drawable/Drawable;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mWeatherCity:Landroid/widget/TextView;

.field private mWeatherDaemonState:I

.field private mWeatherIcon:Landroid/widget/ImageView;

.field private mWeatherLayout:Landroid/widget/RelativeLayout;

.field private mWeatherTemperature:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;)V
    .locals 7
    .parameter "context"
    .parameter "updateMonitor"
    .parameter "configuration"

    .prologue
    const/4 v6, 0x2

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 97
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 64
    iput-object v3, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mWeatherLayout:Landroid/widget/RelativeLayout;

    .line 65
    iput-object v3, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mChargingLayout:Landroid/widget/RelativeLayout;

    .line 67
    iput-object v3, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mSpace_01:Landroid/widget/LinearLayout;

    .line 68
    iput-object v3, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mSpace_02:Landroid/widget/LinearLayout;

    .line 70
    iput-object v3, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mWeatherCity:Landroid/widget/TextView;

    .line 71
    iput-object v3, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mWeatherTemperature:Landroid/widget/TextView;

    .line 72
    iput-object v3, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mWeatherIcon:Landroid/widget/ImageView;

    .line 73
    iput-object v3, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mTemperatureUnit:Landroid/graphics/drawable/Drawable;

    .line 74
    iput-object v3, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mCharingText:Landroid/widget/TextView;

    .line 80
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mBootCompleted:Z

    .line 81
    iput v4, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mWeatherDaemonState:I

    .line 84
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mShowingBatteryInfo:Z

    .line 85
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mPluggedIn:Z

    .line 86
    const/16 v2, 0x64

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mBatteryLevel:I

    .line 87
    iput-object v3, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mCharging:Ljava/lang/String;

    .line 88
    iput-object v3, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    .line 90
    iput v6, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mLayoutPosition:I

    .line 99
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 101
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 103
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x109007a

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "clock_position"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mLayoutPosition:I

    .line 111
    const v2, 0x1020277

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mWeatherLayout:Landroid/widget/RelativeLayout;

    .line 112
    const v2, 0x102027c

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mChargingLayout:Landroid/widget/RelativeLayout;

    .line 113
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mWeatherLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 114
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mChargingLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 116
    const v2, 0x102027e

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mSpace_01:Landroid/widget/LinearLayout;

    .line 117
    const v2, 0x102027f

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mSpace_02:Landroid/widget/LinearLayout;

    .line 118
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mSpace_01:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 119
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mSpace_02:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 121
    const v2, 0x1020278

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mWeatherCity:Landroid/widget/TextView;

    .line 122
    const v2, 0x1020279

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mWeatherTemperature:Landroid/widget/TextView;

    .line 123
    const v2, 0x102027a

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mWeatherIcon:Landroid/widget/ImageView;

    .line 124
    const v2, 0x102027d

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mCharingText:Landroid/widget/TextView;

    .line 126
    new-instance v2, Lcom/android/internal/policy/impl/GlassLockscreenInfo$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo$1;-><init>(Lcom/android/internal/policy/impl/GlassLockscreenInfo;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mHandler:Landroid/os/Handler;

    .line 144
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 145
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.sec.android.widgetapp.accuweatherdaemon.action.CHANGE_WEATHER_DATA"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    new-instance v2, Lcom/android/internal/policy/impl/GlassLockscreenInfo$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo$2;-><init>(Lcom/android/internal/policy/impl/GlassLockscreenInfo;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 166
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 169
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->init()V

    .line 171
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/GlassLockscreenInfo;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->handelChangeWeatherSetting(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/GlassLockscreenInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->handelUpdateWeather()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/GlassLockscreenInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->handleBootCompleted()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/GlassLockscreenInfo;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private findDrawableId(I)I
    .locals 1
    .parameter "weatherIconNum"

    .prologue
    const/4 v0, 0x0

    .line 368
    packed-switch p1, :pswitch_data_0

    .line 430
    :goto_0
    :pswitch_0
    return v0

    .line 375
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 379
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 381
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 386
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 388
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 392
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 395
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 397
    :pswitch_8
    const/16 v0, 0x8

    goto :goto_0

    .line 400
    :pswitch_9
    const/16 v0, 0x9

    goto :goto_0

    .line 403
    :pswitch_a
    const/16 v0, 0xa

    goto :goto_0

    .line 407
    :pswitch_b
    const/16 v0, 0xb

    goto :goto_0

    .line 411
    :pswitch_c
    const/16 v0, 0xc

    goto :goto_0

    .line 413
    :pswitch_d
    const/16 v0, 0xd

    goto :goto_0

    .line 415
    :pswitch_e
    const/16 v0, 0xe

    goto :goto_0

    .line 417
    :pswitch_f
    const/16 v0, 0xf

    goto :goto_0

    .line 419
    :pswitch_10
    const/16 v0, 0x10

    goto :goto_0

    .line 421
    :pswitch_11
    const/16 v0, 0x11

    goto :goto_0

    .line 426
    :pswitch_12
    const/16 v0, 0x12

    goto :goto_0

    .line 428
    :pswitch_13
    const/16 v0, 0x13

    goto :goto_0

    .line 368
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_13
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method

.method private handelChangeWeatherSetting(I)V
    .locals 0
    .parameter "daemonState"

    .prologue
    .line 174
    iput p1, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mWeatherDaemonState:I

    .line 175
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->setGlassLockInfoTempLayout(I)V

    .line 176
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->updateChargingInfo()V

    .line 177
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->setWeatherInfoVisivility(I)V

    .line 178
    return-void
.end method

.method private handelUpdateWeather()V
    .locals 0

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->updateWeatherInfo()V

    .line 182
    return-void
.end method

.method private handleBootCompleted()V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mBootCompleted:Z

    .line 187
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 190
    const-string v0, "GlassLockscreenInfo"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void
.end method

.method private refreshBatteryStringAndIcon()V
    .locals 5

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mShowingBatteryInfo:Z

    if-nez v0, :cond_0

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mCharging:Ljava/lang/String;

    .line 365
    :goto_0
    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 352
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    .line 356
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mPluggedIn:Z

    if-eqz v0, :cond_3

    .line 357
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mBatteryLevel:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_2

    .line 358
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104032b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mCharging:Ljava/lang/String;

    goto :goto_0

    .line 360
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104032a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mCharging:Ljava/lang/String;

    goto :goto_0

    .line 363
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104032d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mCharging:Ljava/lang/String;

    goto :goto_0
.end method

.method private setGlassLockInfoTempLayout(I)V
    .locals 5
    .parameter "daemonState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 214
    packed-switch p1, :pswitch_data_0

    .line 253
    const-string v0, "GlassLockscreenInfo"

    const-string v1, "setGlassLockInfoTemLayotu() Daemon state is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mSpace_01:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mSpace_02:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 258
    :goto_0
    return-void

    .line 216
    :pswitch_0
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mLayoutPosition:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mCharging:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mSpace_01:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mSpace_02:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 219
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mLayoutPosition:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mCharging:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mSpace_01:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mSpace_02:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 222
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mLayoutPosition:I

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mCharging:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 223
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mSpace_01:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mSpace_02:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mSpace_01:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mSpace_02:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 238
    :pswitch_1
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mLayoutPosition:I

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mCharging:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 239
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mSpace_01:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mSpace_02:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 241
    :cond_3
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mLayoutPosition:I

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mCharging:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 242
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mSpace_01:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mSpace_02:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 248
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mSpace_01:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mSpace_02:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setWeatherIcon(I)V
    .locals 4
    .parameter "iconNum"

    .prologue
    .line 317
    const/16 v2, 0x15

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 329
    .local v1, unlock_weather_drawables:[I
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->findDrawableId(I)I

    move-result v0

    .line 330
    .local v0, i:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mWeatherIcon:Landroid/widget/ImageView;

    aget v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 331
    return-void

    .line 317
    nop

    :array_0
    .array-data 0x4
        0xe0t 0x3t 0x8t 0x1t
        0xe1t 0x3t 0x8t 0x1t
        0xe2t 0x3t 0x8t 0x1t
        0xe3t 0x3t 0x8t 0x1t
        0xe4t 0x3t 0x8t 0x1t
        0xe5t 0x3t 0x8t 0x1t
        0xe6t 0x3t 0x8t 0x1t
        0xe7t 0x3t 0x8t 0x1t
        0xe8t 0x3t 0x8t 0x1t
        0xe9t 0x3t 0x8t 0x1t
        0xeat 0x3t 0x8t 0x1t
        0xebt 0x3t 0x8t 0x1t
        0xebt 0x3t 0x8t 0x1t
        0xect 0x3t 0x8t 0x1t
        0xedt 0x3t 0x8t 0x1t
        0xeet 0x3t 0x8t 0x1t
        0xeft 0x3t 0x8t 0x1t
        0xf0t 0x3t 0x8t 0x1t
        0xf1t 0x3t 0x8t 0x1t
        0xf2t 0x3t 0x8t 0x1t
        0xf3t 0x3t 0x8t 0x1t
    .end array-data
.end method

.method private setWeatherInfoVisivility(I)V
    .locals 2
    .parameter "daemonState"

    .prologue
    const/16 v1, 0x8

    .line 261
    packed-switch p1, :pswitch_data_0

    .line 270
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mWeatherLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 273
    :goto_0
    return-void

    .line 263
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mWeatherLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 266
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->updateWeatherInfo()V

    .line 267
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mWeatherLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 261
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateCharingStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 277
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mCharging:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 278
    const-string v0, "GlassLockscreenInfo"

    const-string v1, "mCharging is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mCharingText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mCharging:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mCharingText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mCharingText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mCharging:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mCharingText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateWeatherView(FIILjava/lang/String;)V
    .locals 4
    .parameter "currentTemp"
    .parameter "tempScale"
    .parameter "iconNum"
    .parameter "cityName"

    .prologue
    const v2, 0x10803db

    const/4 v3, 0x0

    .line 301
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mWeatherCity:Landroid/widget/TextView;

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mTemperatureUnit:Landroid/graphics/drawable/Drawable;

    .line 309
    :goto_0
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, text_currentTemp:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mWeatherTemperature:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mWeatherTemperature:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mTemperatureUnit:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 312
    invoke-direct {p0, p3}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->setWeatherIcon(I)V

    .line 314
    return-void

    .line 304
    .end local v0           #text_currentTemp:Ljava/lang/String;
    :cond_0
    if-nez p2, :cond_1

    .line 305
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10803dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mTemperatureUnit:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 307
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mTemperatureUnit:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 197
    const-string v0, "GlassLockscreenInfo"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 201
    const-string v0, "GlassLockscreenInfo"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 206
    const-string v0, "GlassLockscreenInfo"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->updateChargingInfo()V

    .line 209
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mWeatherDaemonState:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->setWeatherInfoVisivility(I)V

    .line 210
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mWeatherDaemonState:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->setGlassLockInfoTempLayout(I)V

    .line 211
    return-void
.end method

.method public updateChargingInfo()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mShowingBatteryInfo:Z

    .line 337
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mPluggedIn:Z

    .line 338
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->mBatteryLevel:I

    .line 340
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->refreshBatteryStringAndIcon()V

    .line 341
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->updateCharingStatus()V

    .line 343
    return-void
.end method

.method public updateWeatherInfo()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 289
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "CITY_NAME"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, cityName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "aw_daemon_service_key_updated_time"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 291
    .local v4, updateDate:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "aw_daemon_service_key_current_temp"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    .line 292
    .local v1, currentTemp:F
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "aw_daemon_service_key_temp_scale"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 293
    .local v3, tempScale:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "aw_daemon_service_key_icon_num"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 295
    .local v2, iconNum:I
    invoke-direct {p0, v1, v3, v2, v0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->updateWeatherView(FIILjava/lang/String;)V

    .line 297
    return-void
.end method
