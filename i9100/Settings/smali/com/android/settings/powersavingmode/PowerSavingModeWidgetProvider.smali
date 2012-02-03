.class public Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "PowerSavingModeWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$1;,
        Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker;,
        Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$GpsStateTracker;,
        Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$BluetoothStateTracker;,
        Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$WifiStateTracker;,
        Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;
    }
.end annotation


# static fields
.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static isAirplaneModeOn:I

.field private static mContext:Landroid/content/Context;

.field private static mIsfirstPanel:Z

.field private static final sBluetoothState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

.field private static final sGpsState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

.field private static sLocalBluetoothManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private static final sSyncState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

.field private static final sWifiState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 52
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.powersavingmode.PowerSavingModeWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    .line 55
    sput-object v3, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sLocalBluetoothManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 99
    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$WifiStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$WifiStateTracker;-><init>(Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sWifiState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    .line 101
    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$BluetoothStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$BluetoothStateTracker;-><init>(Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sBluetoothState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    .line 103
    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$GpsStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$GpsStateTracker;-><init>(Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sGpsState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    .line 105
    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker;-><init>(Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sSyncState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    .line 108
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->mIsfirstPanel:Z

    .line 110
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->isAirplaneModeOn:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 460
    return-void
.end method

.method static synthetic access$500()Lcom/android/settings/bluetooth/LocalBluetoothManager;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sLocalBluetoothManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/bluetooth/LocalBluetoothManager;)Lcom/android/settings/bluetooth/LocalBluetoothManager;
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    sput-object p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sLocalBluetoothManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    return-object p0
.end method

.method static synthetic access$600(Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-static {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getBackgroundDataState(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static buildUpdate(Landroid/content/Context;I)Landroid/widget/RemoteViews;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const-string v3, "android.intent.action.MAIN"

    .line 551
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030041

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 553
    const v1, 0x7f0b00b5

    invoke-static {p0, p1, v5}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 555
    const v1, 0x7f0b00b7

    const/4 v2, 0x1

    invoke-static {p0, p1, v2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 557
    const v1, 0x7f0b00bb

    const/4 v2, 0x2

    invoke-static {p0, p1, v2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 559
    const v1, 0x7f0b00bf

    const/4 v2, 0x3

    invoke-static {p0, p1, v2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 561
    const v1, 0x7f0b00c3

    const/4 v2, 0x4

    invoke-static {p0, p1, v2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 563
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 565
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 566
    invoke-static {p0, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 568
    const v2, 0x7f0b00c7

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 569
    const v1, 0x7f0b00cb

    const/4 v2, 0x5

    invoke-static {p0, p1, v2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 571
    const v1, 0x7f0b00cf

    const/4 v2, 0x6

    invoke-static {p0, p1, v2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 574
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 575
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 576
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.powersavingmode.PowerSavingModeTips"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 578
    invoke-static {p0, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 579
    const v2, 0x7f0b00d3

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 580
    const v1, 0x7f0b00d7

    const/4 v2, 0x7

    invoke-static {p0, p1, v2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 582
    invoke-static {v0, p0}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 583
    return-object v0
.end method

.method private static getBackgroundDataState(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 921
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 923
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v1

    return v1
.end method

.method private static getBrightness(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 1000
    :try_start_0
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 1002
    .local v2, power:Landroid/os/IPowerManager;
    if-eqz v2, :cond_1

    .line 1003
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1005
    .local v0, brightness:I
    const/16 v3, 0x64

    if-le v0, v3, :cond_0

    const/4 v3, 0x1

    .line 1010
    .end local v0           #brightness:I
    .end local v2           #power:Landroid/os/IPowerManager;
    :goto_0
    return v3

    .restart local v0       #brightness:I
    .restart local v2       #power:Landroid/os/IPowerManager;
    :cond_0
    move v3, v6

    .line 1005
    goto :goto_0

    .line 1007
    .end local v0           #brightness:I
    .end local v2           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1008
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "PowerSavingModeWidgetProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBrightness: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    move v3, v6

    .line 1010
    goto :goto_0
.end method

.method private static getBrightnessMode(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1021
    :try_start_0
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 1023
    .local v2, power:Landroid/os/IPowerManager;
    if-eqz v2, :cond_1

    .line 1024
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1026
    .local v0, brightnessMode:I
    if-ne v0, v5, :cond_0

    move v3, v5

    .line 1031
    .end local v0           #brightnessMode:I
    .end local v2           #power:Landroid/os/IPowerManager;
    :goto_0
    return v3

    .restart local v0       #brightnessMode:I
    .restart local v2       #power:Landroid/os/IPowerManager;
    :cond_0
    move v3, v6

    .line 1026
    goto :goto_0

    .line 1028
    .end local v0           #brightnessMode:I
    .end local v2           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1029
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "PowerSavingModeWidgetProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBrightnessMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    move v3, v6

    .line 1031
    goto :goto_0
.end method

.method private static getGpsState(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 977
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 978
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 808
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 809
    const-class v1, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 810
    const-string v1, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 811
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 812
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 819
    return-object v0
.end method

.method private static getScreentimeout(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 1089
    const/16 v1, 0x7530

    .line 1091
    .local v1, screentimeout:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1096
    :goto_0
    return v1

    .line 1093
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1094
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "PowerSavingModeWidgetProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getScreentimeout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getSync(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 933
    invoke-static {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getBackgroundDataState(Landroid/content/Context;)Z

    move-result v0

    .line 934
    .local v0, backgroundData:Z
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    .line 935
    .local v1, sync:Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private toggleBrightness(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const-string v8, "toggleBrightness: "

    const-string v5, "screen_brightness_mode"

    const-string v5, "screen_brightness"

    const-string v7, "PowerSavingModeWidgetProvider"

    .line 1041
    :try_start_0
    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v4

    .line 1043
    .local v4, power:Landroid/os/IPowerManager;
    if-eqz v4, :cond_1

    .line 1044
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1045
    .local v2, cr:Landroid/content/ContentResolver;
    const-string v5, "screen_brightness"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 1046
    .local v0, brightness:I
    const/4 v1, 0x0

    .line 1048
    .local v1, brightnessMode:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10d000a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1050
    const-string v5, "screen_brightness_mode"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 1055
    :cond_0
    const/4 v5, 0x1

    if-ne v1, v5, :cond_2

    .line 1056
    const/16 v0, 0x1e

    .line 1057
    const/4 v1, 0x0

    .line 1066
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10d000a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1069
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness_mode"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1076
    :goto_1
    if-nez v1, :cond_1

    .line 1077
    invoke-interface {v4, v0}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 1078
    const-string v5, "screen_brightness"

    invoke-static {v2, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1086
    .end local v0           #brightness:I
    .end local v1           #brightnessMode:I
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v4           #power:Landroid/os/IPowerManager;
    :cond_1
    :goto_2
    return-void

    .line 1058
    .restart local v0       #brightness:I
    .restart local v1       #brightnessMode:I
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v4       #power:Landroid/os/IPowerManager;
    :cond_2
    const/16 v5, 0x66

    if-ge v0, v5, :cond_3

    .line 1059
    const/16 v0, 0x66

    goto :goto_0

    .line 1060
    :cond_3
    const/16 v5, 0xff

    if-ge v0, v5, :cond_4

    .line 1061
    const/16 v0, 0xff

    goto :goto_0

    .line 1063
    :cond_4
    const/4 v1, 0x1

    .line 1064
    const/16 v0, 0x1e

    goto :goto_0

    .line 1074
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 1081
    .end local v0           #brightness:I
    .end local v1           #brightnessMode:I
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v4           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 1082
    .local v3, e:Landroid/os/RemoteException;
    const-string v5, "PowerSavingModeWidgetProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toggleBrightness: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1083
    .end local v3           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v5

    move-object v3, v5

    .line 1084
    .local v3, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v5, "PowerSavingModeWidgetProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toggleBrightness: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private toogleScreentimeout(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const-string v5, "screen_off_timeout"

    .line 1100
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getScreentimeout(Landroid/content/Context;)I

    move-result v1

    .line 1101
    .local v1, screentimeout:I
    const/4 v3, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    .line 1104
    .local v2, timeTable:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 1105
    aget v3, v2, v0

    if-ne v1, v3, :cond_1

    array-length v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_1

    .line 1106
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_off_timeout"

    add-int/lit8 v4, v0, 0x1

    aget v4, v2, v4

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1114
    :cond_0
    return-void

    .line 1110
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_off_timeout"

    const/4 v4, 0x0

    aget v4, v2, v4

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1101
    :array_0
    .array-data 0x4
        0x98t 0x3at 0x0t 0x0t
        0x30t 0x75t 0x0t 0x0t
        0x60t 0xeat 0x0t 0x0t
        0xc0t 0xd4t 0x1t 0x0t
        0xc0t 0x27t 0x9t 0x0t
    .end array-data
.end method

.method private static updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 8
    .parameter "views"
    .parameter "context"

    .prologue
    const v7, 0x7f0200b1

    const v6, 0x7f070003

    const/16 v2, 0x8

    const v5, 0x7f070002

    const/4 v4, 0x0

    .line 606
    sget-boolean v1, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->mIsfirstPanel:Z

    if-eqz v1, :cond_0

    .line 608
    const v1, 0x7f0b00b5

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 609
    const v1, 0x7f0b00b7

    invoke-virtual {p0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 610
    const v1, 0x7f0b00bb

    invoke-virtual {p0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 611
    const v1, 0x7f0b00bf

    invoke-virtual {p0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 612
    const v1, 0x7f0b00c7

    invoke-virtual {p0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 613
    const v1, 0x7f0b00cb

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 614
    const v1, 0x7f0b00cf

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 615
    const v1, 0x7f0b00d3

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 616
    const v1, 0x7f0b00d7

    invoke-virtual {p0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 629
    :goto_0
    sget-object v1, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sWifiState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v1, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 661
    :pswitch_0
    const-string v1, "PowerSavingModeWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateButtons() : WiFi state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sWifiState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :goto_1
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getBrightnessMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 665
    const v1, 0x7f0b00c4

    const v2, 0x7f020078

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 666
    const v1, 0x7f0b00c5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 668
    const v1, 0x7f0b00c6

    invoke-virtual {p0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 680
    :goto_2
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getSync(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 681
    const v1, 0x7f0b00cc

    const v2, 0x7f020084

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 682
    const v1, 0x7f0b00cd

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 683
    const v1, 0x7f0b00ce

    invoke-virtual {p0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 689
    :goto_3
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getGpsState(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 690
    const v1, 0x7f0b00c0

    const v2, 0x7f02007c

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 691
    const v1, 0x7f0b00c1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 692
    const v1, 0x7f0b00c2

    invoke-virtual {p0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 698
    :goto_4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->isAirplaneModeOn:I

    .line 703
    sget v1, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->isAirplaneModeOn:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 708
    const v1, 0x7f0b00bc

    const v2, 0x7f020076

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 709
    const v1, 0x7f0b00bd

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 711
    const v1, 0x7f0b00be

    const v2, 0x7f0200af

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 759
    :goto_5
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getScreentimeout(Landroid/content/Context;)I

    move-result v0

    .line 760
    .local v0, screentimeout:I
    sparse-switch v0, :sswitch_data_0

    .line 782
    const-string v1, "PowerSavingModeWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateButtons() : screentimeout : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :goto_6
    const v1, 0x7f0b00d1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 787
    const v1, 0x7f0b00d2

    invoke-virtual {p0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 797
    return-void

    .line 619
    .end local v0           #screentimeout:I
    :cond_0
    const v1, 0x7f0b00b5

    invoke-virtual {p0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 620
    const v1, 0x7f0b00b7

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 621
    const v1, 0x7f0b00bb

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 622
    const v1, 0x7f0b00bf

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 623
    const v1, 0x7f0b00c7

    invoke-virtual {p0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 624
    const v1, 0x7f0b00cb

    invoke-virtual {p0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 625
    const v1, 0x7f0b00cf

    invoke-virtual {p0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 626
    const v1, 0x7f0b00d3

    invoke-virtual {p0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 627
    const v1, 0x7f0b00d7

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_0

    .line 631
    :pswitch_1
    const v1, 0x7f0b00b8

    const v2, 0x7f020086

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 632
    const v1, 0x7f0b00b9

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 634
    const v1, 0x7f0b00ba

    const v2, 0x7f0200b0

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_1

    .line 637
    :pswitch_2
    const v1, 0x7f0b00b8

    const v2, 0x7f020087

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 638
    const v1, 0x7f0b00b9

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 640
    const v1, 0x7f0b00ba

    const v2, 0x7f0200b2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_1

    .line 648
    :pswitch_3
    sget-object v1, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sWifiState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->isTurningOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 649
    const v1, 0x7f0b00b8

    const v2, 0x7f020087

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 650
    const v1, 0x7f0b00b9

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 652
    const v1, 0x7f0b00ba

    const v2, 0x7f0200b2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_1

    .line 654
    :cond_1
    const v1, 0x7f0b00b8

    const v2, 0x7f020086

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 655
    const v1, 0x7f0b00b9

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 657
    const v1, 0x7f0b00ba

    const v2, 0x7f0200b0

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_1

    .line 669
    :cond_2
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getBrightness(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 670
    const v1, 0x7f0b00c4

    const v2, 0x7f02007a

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 671
    const v1, 0x7f0b00c5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 673
    const v1, 0x7f0b00c6

    invoke-virtual {p0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_2

    .line 675
    :cond_3
    const v1, 0x7f0b00c4

    const v2, 0x7f020079

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 676
    const v1, 0x7f0b00c5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 678
    const v1, 0x7f0b00c6

    const v2, 0x7f0200af

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_2

    .line 685
    :cond_4
    const v1, 0x7f0b00cc

    const v2, 0x7f020083

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 686
    const v1, 0x7f0b00cd

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 687
    const v1, 0x7f0b00ce

    const v2, 0x7f0200af

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_3

    .line 694
    :cond_5
    const v1, 0x7f0b00c0

    const v2, 0x7f02007b

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 695
    const v1, 0x7f0b00c1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 696
    const v1, 0x7f0b00c2

    const v2, 0x7f0200af

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_4

    .line 713
    :cond_6
    sget-object v1, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sBluetoothState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v1, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 746
    :pswitch_4
    const-string v1, "PowerSavingModeWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateButtons() : BT state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sBluetoothState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 715
    :pswitch_5
    const v1, 0x7f0b00bc

    const v2, 0x7f020076

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 716
    const v1, 0x7f0b00bd

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 718
    const v1, 0x7f0b00be

    const v2, 0x7f0200af

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_5

    .line 721
    :pswitch_6
    const v1, 0x7f0b00bc

    const v2, 0x7f020077

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 722
    const v1, 0x7f0b00bd

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 724
    const v1, 0x7f0b00be

    invoke-virtual {p0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_5

    .line 732
    :pswitch_7
    sget-object v1, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sBluetoothState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->isTurningOn()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 733
    const v1, 0x7f0b00bc

    const v2, 0x7f020077

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 734
    const v1, 0x7f0b00bd

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 736
    const v1, 0x7f0b00be

    invoke-virtual {p0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_5

    .line 738
    :cond_7
    const v1, 0x7f0b00bc

    const v2, 0x7f020076

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 740
    const v1, 0x7f0b00bd

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 742
    const v1, 0x7f0b00be

    const v2, 0x7f0200af

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_5

    .line 762
    .restart local v0       #screentimeout:I
    :sswitch_0
    const v1, 0x7f0b00d0

    const v2, 0x7f02007e

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_6

    .line 766
    :sswitch_1
    const v1, 0x7f0b00d0

    const v2, 0x7f020081

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_6

    .line 770
    :sswitch_2
    const v1, 0x7f0b00d0

    const v2, 0x7f02007f

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_6

    .line 774
    :sswitch_3
    const v1, 0x7f0b00d0

    const v2, 0x7f020080

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_6

    .line 778
    :sswitch_4
    const v1, 0x7f0b00d0

    const v2, 0x7f02007d

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_6

    .line 629
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 760
    :sswitch_data_0
    .sparse-switch
        0x3a98 -> :sswitch_0
        0x7530 -> :sswitch_1
        0xea60 -> :sswitch_2
        0x1d4c0 -> :sswitch_3
        0x927c0 -> :sswitch_4
    .end sparse-switch

    .line 713
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 592
    const/4 v2, -0x1

    invoke-static {p0, v2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->buildUpdate(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 595
    .local v1, views:Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 596
    .local v0, gm:Landroid/appwidget/AppWidgetManager;
    sget-object v2, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 597
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 541
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 542
    .local v0, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, ".powersavingmode.PowerSavingModeWidgetProvider"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 545
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 533
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 534
    .local v0, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, ".powersavingmode.PowerSavingModeWidgetProvider"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 537
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v5, "DataCallSettingWidget.intent.action.DATACALL_WIDGET_UPDATE"

    .line 830
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 831
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 832
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 833
    sget-object v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sWifiState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 911
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 912
    :cond_1
    return-void

    .line 834
    :cond_2
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 835
    sget-object v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sBluetoothState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 836
    :cond_3
    const-string v4, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 837
    sget-object v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sGpsState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 848
    :cond_4
    const-string v4, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    sget-object v4, Landroid/content/SyncStorageEngine;->SYNC_CONNECTION_SETTING_CHANGED_INTENT:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 851
    :cond_5
    sget-object v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sSyncState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 853
    new-instance v3, Landroid/content/Intent;

    const-string v4, "DataCallSettingWidget.intent.action.DATACALL_WIDGET_UPDATE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 855
    .local v3, intent_widget:Landroid/content/Intent;
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 856
    .end local v3           #intent_widget:Landroid/content/Intent;
    :cond_6
    const-string v4, "android.settings.BRIGHTNESS_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 857
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->updateWidget(Landroid/content/Context;)V

    goto :goto_0

    .line 858
    :cond_7
    const-string v4, "android.settings.SCREENTIMEOUT_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 859
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->updateWidget(Landroid/content/Context;)V

    goto :goto_0

    .line 860
    :cond_8
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 861
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->updateWidget(Landroid/content/Context;)V

    goto :goto_0

    .line 862
    :cond_9
    const-string v4, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 863
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 864
    .local v2, data:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 865
    .local v1, buttonId:I
    if-nez v1, :cond_a

    .line 866
    sput-boolean v7, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->mIsfirstPanel:Z

    goto :goto_0

    .line 867
    :cond_a
    if-ne v1, v7, :cond_b

    .line 868
    sget-object v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sWifiState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v4, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 869
    :cond_b
    const/4 v4, 0x2

    if-ne v1, v4, :cond_d

    .line 870
    const-string v4, "PowerSavingModeWidgetProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAirplaneModeOn: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->isAirplaneModeOn:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    sget v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->isAirplaneModeOn:I

    if-ne v4, v7, :cond_c

    .line 878
    const v4, 0x7f08016a

    invoke-static {p1, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 881
    :cond_c
    sget-object v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sBluetoothState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v4, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 883
    :cond_d
    const/4 v4, 0x3

    if-ne v1, v4, :cond_e

    .line 884
    sget-object v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sGpsState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v4, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 886
    :cond_e
    const/4 v4, 0x4

    if-ne v1, v4, :cond_f

    .line 887
    invoke-direct {p0, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->toggleBrightness(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 888
    :cond_f
    const/4 v4, 0x5

    if-ne v1, v4, :cond_10

    .line 889
    sget-object v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sSyncState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v4, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    .line 891
    new-instance v3, Landroid/content/Intent;

    const-string v4, "DataCallSettingWidget.intent.action.DATACALL_WIDGET_UPDATE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 893
    .restart local v3       #intent_widget:Landroid/content/Intent;
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 894
    .end local v3           #intent_widget:Landroid/content/Intent;
    :cond_10
    const/4 v4, 0x6

    if-ne v1, v4, :cond_11

    .line 895
    invoke-direct {p0, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->toogleScreentimeout(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 896
    :cond_11
    const/4 v4, 0x7

    if-ne v1, v4, :cond_0

    .line 897
    sput-boolean v8, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->mIsfirstPanel:Z

    goto/16 :goto_0

    .line 899
    .end local v1           #buttonId:I
    .end local v2           #data:Landroid/net/Uri;
    :cond_12
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED_FROM_WIDGET"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 902
    sget-object v4, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->sSyncState:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;

    invoke-virtual {v4, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 523
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->mContext:Landroid/content/Context;

    .line 525
    const/4 v2, -0x1

    invoke-static {p1, v2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->buildUpdate(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 526
    .local v1, view:Landroid/widget/RemoteViews;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 527
    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 526
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 529
    :cond_0
    return-void
.end method
