.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ServerThread$AdbSettingsObserver;
    }
.end annotation


# static fields
.field private static final INCLUDE_DEMO:Z = false

.field private static final LOG_BOOT_PROGRESS_SYSTEM_RUN:I = 0xbc2

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ServerThread;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method


# virtual methods
.method initHomeScreen(Landroid/content/pm/IPackageManager;)V
    .locals 8
    .parameter "pm"

    .prologue
    const-string v4, "com.sec.android.app.twlauncher"

    const-string v4, "com.nttdocomo.app.paletteui"

    const-string v4, "SystemServer"

    .line 809
    :try_start_0
    const-string v4, "SystemServer"

    const-string v5, "Check the default launcher..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 812
    .local v2, prefActList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 814
    .local v1, intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    const-string v4, "com.sec.android.app.twlauncher"

    invoke-interface {p1, v1, v2, v4}, Landroid/content/pm/IPackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 816
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 817
    const-string v4, "com.nttdocomo.app.paletteui"

    invoke-interface {p1, v1, v2, v4}, Landroid/content/pm/IPackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 819
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 820
    const-string v4, "SystemServer"

    const-string v5, "Set default launcher"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 822
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 823
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 824
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 826
    const/4 v4, 0x2

    new-array v3, v4, [Landroid/content/ComponentName;

    .line 827
    .local v3, set:[Landroid/content/ComponentName;
    const/4 v4, 0x0

    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.app.twlauncher"

    const-string v7, "com.sec.android.app.twlauncher.Launcher"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 828
    const/4 v4, 0x1

    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.nttdocomo.app.paletteui"

    const-string v7, "com.nttdocomo.app.paletteui.HomeApp"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 830
    const/high16 v4, 0x10

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-interface {p1, v0, v4, v3, v5}, Landroid/content/pm/IPackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v1           #intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v2           #prefActList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v3           #set:[Landroid/content/ComponentName;
    :cond_0
    :goto_0
    return-void

    .line 833
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public run()V
    .locals 72

    .prologue
    .line 120
    const/16 v5, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-static {v5, v10, v11}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 123
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 125
    const/4 v5, -0x2

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 128
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 129
    const/4 v5, 0x0

    invoke-static {v5}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 133
    const-string v5, "sys.shutdown.requested"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    .line 135
    .local v60, shutdownAction:Ljava/lang/String;
    if-eqz v60, :cond_0

    invoke-virtual/range {v60 .. v60}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 136
    const/4 v5, 0x0

    move-object/from16 v0, v60

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x31

    if-ne v5, v6, :cond_9

    const/4 v5, 0x1

    move/from16 v57, v5

    .line 139
    .local v57, reboot:Z
    :goto_0
    invoke-virtual/range {v60 .. v60}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_a

    .line 140
    const/4 v5, 0x1

    invoke-virtual/range {v60 .. v60}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, v60

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v56

    .line 145
    .local v56, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v57

    move-object/from16 v1, v56

    invoke-static {v0, v1}, Lcom/android/internal/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 149
    .end local v56           #reason:Ljava/lang/String;
    .end local v57           #reboot:Z
    :cond_0
    const-string v5, "ro.factorytest"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 150
    .local v43, factoryTestStr:Ljava/lang/String;
    const-string v5, ""

    move-object v0, v5

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x0

    move/from16 v42, v5

    .line 153
    .local v42, factoryTest:I
    :goto_2
    const/16 v48, 0x0

    .line 154
    .local v48, lights:Lcom/android/server/LightsService;
    const/16 v55, 0x0

    .line 155
    .local v55, power:Lcom/android/server/PowerManagerService;
    const/16 v28, 0x0

    .line 156
    .local v28, battery:Lcom/android/server/BatteryService;
    const/16 v35, 0x0

    .line 157
    .local v35, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v54, 0x0

    .line 158
    .local v54, pm:Landroid/content/pm/IPackageManager;
    const/4 v6, 0x0

    .line 159
    .local v6, context:Landroid/content/Context;
    const/16 v71, 0x0

    .line 160
    .local v71, wm:Lcom/android/server/WindowManagerService;
    const/16 v29, 0x0

    .line 161
    .local v29, bluetooth:Landroid/server/BluetoothService;
    const/16 v31, 0x0

    .line 162
    .local v31, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    const/16 v33, 0x0

    .line 163
    .local v33, bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    const/16 v44, 0x0

    .line 164
    .local v44, headset:Lcom/android/server/HeadsetObserver;
    const/16 v38, 0x0

    .line 165
    .local v38, dock:Lcom/android/server/DockObserver;
    const/16 v67, 0x0

    .line 166
    .local v67, usb:Lcom/android/server/usb/UsbService;
    const/16 v65, 0x0

    .line 167
    .local v65, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v58, 0x0

    .line 168
    .local v58, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v63, 0x0

    .line 172
    .local v63, throttle:Lcom/android/server/ThrottleService;
    :try_start_0
    const-string v5, "SystemServer"

    const-string v7, "Entropy Service"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string v5, "entropy"

    new-instance v7, Lcom/android/server/EntropyService;

    invoke-direct {v7}, Lcom/android/server/EntropyService;-><init>()V

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 175
    const-string v5, "SystemServer"

    const-string v7, "Power Manager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v8, Lcom/android/server/PowerManagerService;

    invoke-direct {v8}, Lcom/android/server/PowerManagerService;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_35

    .line 177
    .end local v55           #power:Lcom/android/server/PowerManagerService;
    .local v8, power:Lcom/android/server/PowerManagerService;
    :try_start_1
    const-string v5, "power"

    invoke-static {v5, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 179
    const-string v5, "SystemServer"

    const-string v7, "Activity Manager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-static/range {v42 .. v42}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v6

    .line 182
    const-string v5, "SystemServer"

    const-string v7, "Telephony Registry"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v5, "telephony.registry"

    new-instance v7, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v7, v6}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 185
    invoke-static {v6}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 187
    const-string v5, "SystemServer"

    const-string v7, "Package Manager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string v5, "SystemServer"

    const-string v7, "!@beginofPackageManager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    if-eqz v42, :cond_c

    const/4 v5, 0x1

    :goto_3
    invoke-static {v6, v5}, Lcom/android/server/PackageManagerService;->main(Landroid/content/Context;Z)Landroid/content/pm/IPackageManager;

    move-result-object v54

    .line 191
    const-string v5, "SystemServer"

    const-string v7, "!@endofPackageManager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 195
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 199
    :try_start_2
    const-string v5, "SystemServer"

    const-string v7, "Account Manager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v5, "account"

    new-instance v7, Landroid/accounts/AccountManagerService;

    invoke-direct {v7, v6}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 206
    :goto_4
    :try_start_3
    const-string v5, "SystemServer"

    const-string v7, "Content Manager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 v5, 0x1

    move/from16 v0, v42

    move v1, v5

    if-ne v0, v1, :cond_d

    const/4 v5, 0x1

    :goto_5
    invoke-static {v6, v5}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/IContentService;

    .line 210
    const-string v5, "SystemServer"

    const-string v7, "System Content Providers"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 213
    const-string v5, "SystemServer"

    const-string v7, "Battery Service"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    new-instance v7, Lcom/android/server/BatteryService;

    invoke-direct {v7, v6}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 215
    .end local v28           #battery:Lcom/android/server/BatteryService;
    .local v7, battery:Lcom/android/server/BatteryService;
    :try_start_4
    const-string v5, "battery"

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 217
    const-string v5, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance v49, Lcom/android/server/LightsService;

    move-object/from16 v0, v49

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_36

    .line 220
    .end local v48           #lights:Lcom/android/server/LightsService;
    .local v49, lights:Lcom/android/server/LightsService;
    :try_start_5
    const-string v5, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string v5, "vibrator"

    new-instance v9, Lcom/android/server/VibratorService;

    invoke-direct {v9, v6}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 225
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    move-object v0, v8

    move-object v1, v6

    move-object/from16 v2, v49

    move-object v3, v5

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V

    .line 227
    const-string v5, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    new-instance v9, Lcom/android/server/AlarmManagerService;

    invoke-direct {v9, v6}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V

    .line 229
    .local v9, alarm:Lcom/android/server/AlarmManagerService;
    const-string v5, "alarm"

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 231
    const-string v5, "SystemServer"

    const-string v10, "Init Watchdog"

    invoke-static {v5, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 235
    const-string v5, "SystemServer"

    const-string v9, "Window Manager"

    .end local v9           #alarm:Lcom/android/server/AlarmManagerService;
    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v5, 0x1

    move/from16 v0, v42

    move v1, v5

    if-eq v0, v1, :cond_e

    const/4 v5, 0x1

    :goto_6
    invoke-static {v6, v8, v5}, Lcom/android/server/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/PowerManagerService;Z)Lcom/android/server/WindowManagerService;

    move-result-object v71

    .line 238
    const-string v5, "window"

    move-object v0, v5

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 240
    const-string v5, "activity"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityManagerService;

    move-object v0, v5

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/WindowManagerService;)V

    .line 243
    move-object v0, v6

    move/from16 v1, v42

    invoke-static {v0, v1}, Lcom/broadcom/bt/server/BrcmBtServiceLoader;->loadServices(Landroid/content/Context;I)V

    .line 248
    const-string v5, "ro.kernel.qemu"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "1"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 249
    const-string v5, "SystemServer"

    const-string v9, "Registering null Bluetooth Service (emulator)"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string v5, "bluetooth"

    const/4 v9, 0x0

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    :goto_7
    move-object/from16 v48, v49

    .line 279
    .end local v49           #lights:Lcom/android/server/LightsService;
    .restart local v48       #lights:Lcom/android/server/LightsService;
    :goto_8
    const/16 v36, 0x0

    .line 280
    .local v36, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v61, 0x0

    .line 281
    .local v61, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v46, 0x0

    .line 282
    .local v46, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v25, 0x0

    .line 283
    .local v25, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v52, 0x0

    .line 284
    .local v52, notification:Lcom/android/server/NotificationManagerService;
    const/16 v69, 0x0

    .line 285
    .local v69, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v50, 0x0

    .line 287
    .local v50, location:Lcom/android/server/LocationManagerService;
    const/4 v5, 0x1

    move/from16 v0, v42

    move v1, v5

    if-eq v0, v1, :cond_3

    .line 289
    :try_start_6
    const-string v5, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    new-instance v37, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v37

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 291
    .end local v36           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v37, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_7
    const-string v5, "device_policy"

    move-object v0, v5

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_34

    move-object/from16 v36, v37

    .line 297
    .end local v37           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v36       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_9
    :try_start_8
    const-string v5, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    new-instance v62, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v62

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    .line 299
    .end local v61           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v62, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_9
    const-string v5, "statusbar"

    move-object v0, v5

    move-object/from16 v1, v62

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_33

    move-object/from16 v61, v62

    .line 305
    .end local v62           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v61       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_a
    :try_start_a
    const-string v5, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const-string v5, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v6}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5

    .line 316
    :goto_b
    :try_start_b
    const-string v5, "SystemServer"

    const-string v9, "ClipboardEx Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const-string v5, "clipboardEx"

    new-instance v9, Lcom/android/server/sec/InternalClipboardExService;

    invoke-direct {v9, v6}, Lcom/android/server/sec/InternalClipboardExService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6

    .line 323
    :goto_c
    :try_start_c
    const-string v5, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    new-instance v47, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v47

    move-object v1, v6

    move-object/from16 v2, v61

    invoke-direct {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_7

    .line 325
    .end local v46           #imm:Lcom/android/server/InputMethodManagerService;
    .local v47, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_d
    const-string v5, "input_method"

    move-object v0, v5

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_32

    move-object/from16 v46, v47

    .line 331
    .end local v47           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v46       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_d
    :try_start_e
    const-string v5, "SystemServer"

    const-string v9, "NetStat Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const-string v5, "netstat"

    new-instance v9, Lcom/android/server/NetStatService;

    invoke-direct {v9, v6}, Lcom/android/server/NetStatService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_8

    .line 338
    :goto_e
    :try_start_f
    const-string v5, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const-string v5, "network_management"

    invoke-static {v6}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_9

    .line 347
    :goto_f
    :try_start_10
    const-string v5, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->getInstance(Landroid/content/Context;)Lcom/android/server/ConnectivityService;

    move-result-object v35

    .line 349
    const-string v5, "connectivity"

    move-object v0, v5

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_a

    .line 355
    :goto_10
    :try_start_11
    const-string v5, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    new-instance v64, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v64

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_b

    .line 357
    .end local v63           #throttle:Lcom/android/server/ThrottleService;
    .local v64, throttle:Lcom/android/server/ThrottleService;
    :try_start_12
    const-string v5, "throttle"

    move-object v0, v5

    move-object/from16 v1, v64

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_31

    move-object/from16 v63, v64

    .line 364
    .end local v64           #throttle:Lcom/android/server/ThrottleService;
    .restart local v63       #throttle:Lcom/android/server/ThrottleService;
    :goto_11
    :try_start_13
    const-string v5, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const-string v5, "accessibility"

    new-instance v9, Lcom/android/server/AccessibilityManagerService;

    invoke-direct {v9, v6}, Lcom/android/server/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_c

    .line 376
    :goto_12
    :try_start_14
    const-string v5, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const-string v5, "mount"

    new-instance v9, Lcom/android/server/MountService;

    invoke-direct {v9, v6}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_d

    .line 383
    :goto_13
    :try_start_15
    const-string v5, "SystemServer"

    const-string v9, "UsbStorage Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const-string v5, "usbstorage"

    new-instance v9, Lcom/android/server/UsbStorageService;

    invoke-direct {v9, v6}, Lcom/android/server/UsbStorageService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_e

    .line 389
    :goto_14
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->isDeviceEncryptionEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 391
    :try_start_16
    const-string v5, "SystemServer"

    const-string v9, "Encrypt Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const-string v5, "encrypt"

    new-instance v9, Lcom/android/server/EncryptService;

    invoke-direct {v9, v6}, Lcom/android/server/EncryptService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_f

    .line 399
    :cond_1
    :goto_15
    :try_start_17
    const-string v5, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    new-instance v53, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v53

    move-object v1, v6

    move-object/from16 v2, v61

    move-object/from16 v3, v48

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_10

    .line 401
    .end local v52           #notification:Lcom/android/server/NotificationManagerService;
    .local v53, notification:Lcom/android/server/NotificationManagerService;
    :try_start_18
    const-string v5, "notification"

    move-object v0, v5

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_30

    move-object/from16 v52, v53

    .line 416
    .end local v53           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v52       #notification:Lcom/android/server/NotificationManagerService;
    :goto_16
    :try_start_19
    const-string v5, "SystemServer"

    const-string v9, "DataRouter Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const-string v5, "datarouter"

    new-instance v9, Lcom/android/server/DataRouterService;

    invoke-direct {v9, v6}, Lcom/android/server/DataRouterService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_11

    .line 424
    :goto_17
    :try_start_1a
    const-string v5, "SystemServer"

    const-string v9, "HDMI Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const-string v5, "hdmi"

    new-instance v9, Lcom/android/server/HDMIService;

    invoke-direct {v9, v6}, Lcom/android/server/HDMIService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_12

    .line 431
    :goto_18
    :try_start_1b
    const-string v5, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const-string v5, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v6}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_13

    .line 439
    :goto_19
    :try_start_1c
    const-string v5, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    new-instance v51, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v51

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_14

    .line 441
    .end local v50           #location:Lcom/android/server/LocationManagerService;
    .local v51, location:Lcom/android/server/LocationManagerService;
    :try_start_1d
    const-string v5, "location"

    move-object v0, v5

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_2f

    move-object/from16 v50, v51

    .line 447
    .end local v51           #location:Lcom/android/server/LocationManagerService;
    .restart local v50       #location:Lcom/android/server/LocationManagerService;
    :goto_1a
    :try_start_1e
    const-string v5, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const-string v5, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v6}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_15

    .line 460
    :goto_1b
    :try_start_1f
    const-string v5, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const-string v5, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v6, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_16

    .line 468
    :goto_1c
    :try_start_20
    const-string v5, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    new-instance v70, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v70

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_17

    .line 470
    .end local v69           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v70, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_21
    const-string v5, "wallpaper"

    move-object v0, v5

    move-object/from16 v1, v70

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_2e

    move-object/from16 v69, v70

    .line 476
    .end local v70           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v69       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :goto_1d
    :try_start_22
    const-string v5, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const-string v5, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v6}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_18

    .line 483
    :goto_1e
    :try_start_23
    const-string v5, "SystemServer"

    const-string v9, "Headset Observer"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    new-instance v45, Lcom/android/server/HeadsetObserver;

    move-object/from16 v0, v45

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/HeadsetObserver;-><init>(Landroid/content/Context;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_19

    .end local v44           #headset:Lcom/android/server/HeadsetObserver;
    .local v45, headset:Lcom/android/server/HeadsetObserver;
    move-object/from16 v44, v45

    .line 491
    .end local v45           #headset:Lcom/android/server/HeadsetObserver;
    .restart local v44       #headset:Lcom/android/server/HeadsetObserver;
    :goto_1f
    :try_start_24
    const-string v5, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    new-instance v39, Lcom/android/server/DockObserver;

    move-object/from16 v0, v39

    move-object v1, v6

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_1a

    .end local v38           #dock:Lcom/android/server/DockObserver;
    .local v39, dock:Lcom/android/server/DockObserver;
    move-object/from16 v38, v39

    .line 499
    .end local v39           #dock:Lcom/android/server/DockObserver;
    .restart local v38       #dock:Lcom/android/server/DockObserver;
    :goto_20
    :try_start_25
    const-string v5, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    new-instance v68, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v68

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_1b

    .line 502
    .end local v67           #usb:Lcom/android/server/usb/UsbService;
    .local v68, usb:Lcom/android/server/usb/UsbService;
    :try_start_26
    const-string v5, "usb"

    move-object v0, v5

    move-object/from16 v1, v68

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_2d

    move-object/from16 v67, v68

    .line 508
    .end local v68           #usb:Lcom/android/server/usb/UsbService;
    .restart local v67       #usb:Lcom/android/server/usb/UsbService;
    :goto_21
    :try_start_27
    const-string v5, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    new-instance v66, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v66

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_1c

    .end local v65           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v66, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v65, v66

    .line 516
    .end local v66           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v65       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_22
    :try_start_28
    const-string v5, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const-string v5, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v6}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_1d

    .line 524
    :goto_23
    :try_start_29
    const-string v5, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    new-instance v26, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v26

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_1e

    .line 526
    .end local v25           #appWidget:Lcom/android/server/AppWidgetService;
    .local v26, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_2a
    const-string v5, "appwidget"

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_2c

    move-object/from16 v25, v26

    .line 532
    .end local v26           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v25       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_24
    :try_start_2b
    const-string v5, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    new-instance v59, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v59

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_1f

    .end local v58           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v59, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v58, v59

    .line 539
    .end local v59           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v58       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_25
    :try_start_2c
    const-string v5, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const-string v5, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v6}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_20

    .line 546
    :goto_26
    const-string v5, "GT-I9100"

    const-string v9, "SGH-I927"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 549
    :try_start_2d
    const-string v5, "SystemServer"

    const-string v9, "AtCmdFwd Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    new-instance v27, Lcom/android/internal/atfwd/AtCmdFwdService;

    move-object/from16 v0, v27

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/internal/atfwd/AtCmdFwdService;-><init>(Landroid/content/Context;)V

    .line 551
    .local v27, atfwd:Lcom/android/internal/atfwd/AtCmdFwdService;
    const-string v5, "AtCmdFwd"

    move-object v0, v5

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_21

    .line 561
    .end local v27           #atfwd:Lcom/android/internal/atfwd/AtCmdFwdService;
    :cond_2
    :goto_27
    :try_start_2e
    const-string v5, "SystemServer"

    const-string v9, "Hdmi Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const-string v5, "Hdmi"

    new-instance v9, Lcom/android/server/TvoutStatusObserver;

    invoke-direct {v9, v6}, Lcom/android/server/TvoutStatusObserver;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_22

    .line 569
    :goto_28
    :try_start_2f
    const-string v5, "SystemServer"

    const-string v9, "Starting TvOut Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const-string v5, "tvoutservice"

    new-instance v9, Lcom/android/server/TvOutService;

    invoke-direct {v9, v6}, Lcom/android/server/TvOutService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_23

    .line 592
    :goto_29
    :try_start_30
    const-string v5, "SystemServer"

    const-string v9, "Mhl Rcp Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const-string v5, "MhlRcp"

    new-instance v9, Lcom/android/server/MhlRcpObserver;

    invoke-direct {v9, v6}, Lcom/android/server/MhlRcpObserver;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_24

    .line 600
    :goto_2a
    :try_start_31
    const-string v5, "SystemServer"

    const-string v9, "Motion Recognition Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const-string v5, "motion_recognition"

    new-instance v9, Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {v9, v6}, Landroid/hardware/motion/MotionRecognitionService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_25

    .line 623
    :goto_2b
    :try_start_32
    const-string v5, "SystemServer"

    const-string v9, "BT FM Power Management Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const-string v5, "bt_fm_radio"

    new-instance v9, Lcom/broadcom/bt/service/framework/PowerManagementService;

    invoke-direct {v9, v6}, Lcom/broadcom/bt/service/framework/PowerManagementService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_26

    .line 632
    :goto_2c
    :try_start_33
    const-string v5, "SystemServer"

    const-string v9, " FM_RADIO_SERVICE"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    const-string v5, "FMPlayer"

    new-instance v9, Lcom/android/server/FMRadioService;

    invoke-direct {v9, v6}, Lcom/android/server/FMRadioService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 635
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "[FMPlayer]FMRadio service added .."

    invoke-virtual {v5, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_27

    .line 645
    :cond_3
    :goto_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    const-string v9, "adb_enabled"

    const-string v10, "1"

    const-string v11, "persist.service.adb.enable"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    const/4 v10, 0x1

    :goto_2e
    invoke-static {v5, v9, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    const-string v9, "adb_enabled"

    invoke-static {v9}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    new-instance v11, Lcom/android/server/ServerThread$AdbSettingsObserver;

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/ServerThread$AdbSettingsObserver;-><init>(Lcom/android/server/ServerThread;)V

    invoke-virtual {v5, v9, v10, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 670
    const-wide/16 v10, 0x258

    :try_start_34
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 671
    const-string v5, "SystemServer"

    const-string v9, "Thread.sleep(600 ms) for safemode"

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_34} :catch_28

    .line 680
    :goto_2f
    const-string v5, "SystemServer"

    const-string v9, "Before things start rolling, be sure we have decided whether we are in safe mode"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    invoke-virtual/range {v71 .. v71}, Lcom/android/server/WindowManagerService;->detectSafeMode()Z

    move-result v20

    .line 683
    .local v20, safeMode:Z
    const/4 v5, 0x1

    move/from16 v0, v42

    move v1, v5

    if-eq v0, v1, :cond_4

    if-nez v20, :cond_4

    .line 686
    :try_start_35
    const-string v5, "SystemServer"

    const-string v9, "Theme Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const-string v5, "samsung.theme_service"

    new-instance v9, Lcom/samsung/ThemeService;

    invoke-direct {v9, v6}, Lcom/samsung/ThemeService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_29

    .line 693
    .end local v6           #context:Landroid/content/Context;
    :cond_4
    :goto_30
    if-eqz v20, :cond_12

    .line 695
    :try_start_36
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->enterSafeMode()V

    .line 697
    const/4 v5, 0x1

    sput-boolean v5, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 699
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->disableJitCompilation()V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_36} :catch_2b

    .line 708
    :goto_31
    if-eqz v36, :cond_5

    .line 709
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V

    .line 710
    const-string v5, "SystemServer"

    const-string v6, "devicePolicy systemReady"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_5
    if-eqz v52, :cond_6

    .line 714
    invoke-virtual/range {v52 .. v52}, Lcom/android/server/NotificationManagerService;->systemReady()V

    .line 715
    const-string v5, "SystemServer"

    const-string v6, "notification systemReady"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_6
    if-eqz v61, :cond_7

    .line 719
    invoke-virtual/range {v61 .. v61}, Lcom/android/server/StatusBarManagerService;->systemReady()V

    .line 720
    const-string v5, "SystemServer"

    const-string v6, "statusBar systemReady"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :cond_7
    invoke-virtual/range {v71 .. v71}, Lcom/android/server/WindowManagerService;->systemReady()V

    .line 724
    const-string v5, "SystemServer"

    const-string v6, "WindowManagerService systemReady"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    invoke-virtual {v8}, Lcom/android/server/PowerManagerService;->systemReady()V

    .line 727
    const-string v5, "SystemServer"

    const-string v6, "PowerManagerService systemReady"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :try_start_37
    invoke-interface/range {v54 .. v54}, Landroid/content/pm/IPackageManager;->systemReady()V

    .line 731
    const-string v5, "SystemServer"

    const-string v6, "PackageManager systemReady"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_37} :catch_2a

    .line 742
    :goto_32
    move-object/from16 v12, v61

    .line 743
    .local v12, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object v13, v7

    .line 744
    .local v13, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v14, v35

    .line 745
    .local v14, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v15, v38

    .line 746
    .local v15, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v16, v67

    .line 747
    .local v16, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v24, v63

    .line 748
    .local v24, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v17, v65

    .line 749
    .local v17, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v19, v25

    .line 750
    .local v19, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v21, v69

    .line 751
    .local v21, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v22, v46

    .line 752
    .local v22, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v18, v58

    .line 753
    .local v18, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v23, v50

    .line 760
    .local v23, locationF:Lcom/android/server/LocationManagerService;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityManagerService;

    new-instance v10, Lcom/android/server/ServerThread$1;

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v24}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;Lcom/android/server/StatusBarManagerService;Lcom/android/server/BatteryService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/ThrottleService;)V

    invoke-virtual {v5, v10}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 797
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 798
    const-string v5, "SystemServer"

    const-string v6, "Enabled StrictMode for system server main thread."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :cond_8
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 802
    const-string v5, "SystemServer"

    const-string v6, "System ServerThread is exiting!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    return-void

    .line 136
    .end local v7           #battery:Lcom/android/server/BatteryService;
    .end local v8           #power:Lcom/android/server/PowerManagerService;
    .end local v12           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v13           #batteryF:Lcom/android/server/BatteryService;
    .end local v14           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v15           #dockF:Lcom/android/server/DockObserver;
    .end local v16           #usbF:Lcom/android/server/usb/UsbService;
    .end local v17           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v18           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v19           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v20           #safeMode:Z
    .end local v21           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v22           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v23           #locationF:Lcom/android/server/LocationManagerService;
    .end local v24           #throttleF:Lcom/android/server/ThrottleService;
    .end local v25           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v29           #bluetooth:Landroid/server/BluetoothService;
    .end local v31           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v33           #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    .end local v35           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v36           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v38           #dock:Lcom/android/server/DockObserver;
    .end local v42           #factoryTest:I
    .end local v43           #factoryTestStr:Ljava/lang/String;
    .end local v44           #headset:Lcom/android/server/HeadsetObserver;
    .end local v46           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v48           #lights:Lcom/android/server/LightsService;
    .end local v50           #location:Lcom/android/server/LocationManagerService;
    .end local v52           #notification:Lcom/android/server/NotificationManagerService;
    .end local v54           #pm:Landroid/content/pm/IPackageManager;
    .end local v58           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v61           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v63           #throttle:Lcom/android/server/ThrottleService;
    .end local v65           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v67           #usb:Lcom/android/server/usb/UsbService;
    .end local v69           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v71           #wm:Lcom/android/server/WindowManagerService;
    :cond_9
    const/4 v5, 0x0

    move/from16 v57, v5

    goto/16 :goto_0

    .line 142
    .restart local v57       #reboot:Z
    :cond_a
    const/16 v56, 0x0

    .restart local v56       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 150
    .end local v56           #reason:Ljava/lang/String;
    .end local v57           #reboot:Z
    .restart local v43       #factoryTestStr:Ljava/lang/String;
    :cond_b
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move/from16 v42, v5

    goto/16 :goto_2

    .line 189
    .restart local v6       #context:Landroid/content/Context;
    .restart local v8       #power:Lcom/android/server/PowerManagerService;
    .restart local v28       #battery:Lcom/android/server/BatteryService;
    .restart local v29       #bluetooth:Landroid/server/BluetoothService;
    .restart local v31       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v33       #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    .restart local v35       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v38       #dock:Lcom/android/server/DockObserver;
    .restart local v42       #factoryTest:I
    .restart local v44       #headset:Lcom/android/server/HeadsetObserver;
    .restart local v48       #lights:Lcom/android/server/LightsService;
    .restart local v54       #pm:Landroid/content/pm/IPackageManager;
    .restart local v58       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v63       #throttle:Lcom/android/server/ThrottleService;
    .restart local v65       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v67       #usb:Lcom/android/server/usb/UsbService;
    .restart local v71       #wm:Lcom/android/server/WindowManagerService;
    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 202
    :catch_0
    move-exception v5

    move-object/from16 v40, v5

    .line 203
    .local v40, e:Ljava/lang/Throwable;
    :try_start_38
    const-string v5, "SystemServer"

    const-string v7, "Failure starting Account Manager"

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_38
    .catch Ljava/lang/RuntimeException; {:try_start_38 .. :try_end_38} :catch_1

    goto/16 :goto_4

    .line 275
    .end local v40           #e:Ljava/lang/Throwable;
    :catch_1
    move-exception v5

    move-object/from16 v40, v5

    move-object/from16 v7, v28

    .line 276
    .end local v28           #battery:Lcom/android/server/BatteryService;
    .restart local v7       #battery:Lcom/android/server/BatteryService;
    .local v40, e:Ljava/lang/RuntimeException;
    :goto_33
    const-string v5, "System"

    const-string v9, "Failure starting core service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 207
    .end local v7           #battery:Lcom/android/server/BatteryService;
    .end local v40           #e:Ljava/lang/RuntimeException;
    .restart local v28       #battery:Lcom/android/server/BatteryService;
    :cond_d
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 236
    .end local v28           #battery:Lcom/android/server/BatteryService;
    .end local v48           #lights:Lcom/android/server/LightsService;
    .restart local v7       #battery:Lcom/android/server/BatteryService;
    .restart local v49       #lights:Lcom/android/server/LightsService;
    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_6

    .line 251
    :cond_f
    const/4 v5, 0x1

    move/from16 v0, v42

    move v1, v5

    if-ne v0, v1, :cond_10

    .line 252
    :try_start_39
    const-string v5, "SystemServer"

    const-string v9, "Registering null Bluetooth Service (factory test)"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-string v5, "bluetooth"

    const/4 v9, 0x0

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_7

    .line 275
    :catch_2
    move-exception v5

    move-object/from16 v40, v5

    move-object/from16 v48, v49

    .end local v49           #lights:Lcom/android/server/LightsService;
    .restart local v48       #lights:Lcom/android/server/LightsService;
    goto :goto_33

    .line 255
    .end local v48           #lights:Lcom/android/server/LightsService;
    .restart local v49       #lights:Lcom/android/server/LightsService;
    :cond_10
    const-string v5, "SystemServer"

    const-string v9, "Bluetooth Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    new-instance v30, Landroid/server/BluetoothService;

    move-object/from16 v0, v30

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_39
    .catch Ljava/lang/RuntimeException; {:try_start_39 .. :try_end_39} :catch_2

    .line 257
    .end local v29           #bluetooth:Landroid/server/BluetoothService;
    .local v30, bluetooth:Landroid/server/BluetoothService;
    :try_start_3a
    const-string v5, "bluetooth"

    move-object v0, v5

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 258
    invoke-virtual/range {v30 .. v30}, Landroid/server/BluetoothService;->initAfterRegistration()V

    .line 259
    new-instance v32, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v32

    move-object v1, v6

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_3a
    .catch Ljava/lang/RuntimeException; {:try_start_3a .. :try_end_3a} :catch_37

    .line 260
    .end local v31           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .local v32, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_3b
    const-string v5, "bluetooth_a2dp"

    move-object v0, v5

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 262
    new-instance v34, Lcom/broadcom/bt/service/hid/BluetoothHIDService;

    move-object/from16 v0, v34

    move-object v1, v6

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_3b
    .catch Ljava/lang/RuntimeException; {:try_start_3b .. :try_end_3b} :catch_38

    .line 263
    .end local v33           #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    .local v34, bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    :try_start_3c
    const-string v5, "bluetooth_hid"

    move-object v0, v5

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/RuntimeException; {:try_start_3c .. :try_end_3c} :catch_39

    move-object/from16 v33, v34

    .end local v34           #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    .restart local v33       #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    move-object/from16 v31, v32

    .end local v32           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v31       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v29, v30

    .end local v30           #bluetooth:Landroid/server/BluetoothService;
    .restart local v29       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_7

    .line 292
    .end local v49           #lights:Lcom/android/server/LightsService;
    .restart local v25       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v36       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v46       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v48       #lights:Lcom/android/server/LightsService;
    .restart local v50       #location:Lcom/android/server/LocationManagerService;
    .restart local v52       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v61       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v69       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3
    move-exception v5

    move-object/from16 v40, v5

    .line 293
    .local v40, e:Ljava/lang/Throwable;
    :goto_34
    const-string v5, "SystemServer"

    const-string v9, "Failure starting DevicePolicyService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 300
    .end local v40           #e:Ljava/lang/Throwable;
    :catch_4
    move-exception v5

    move-object/from16 v40, v5

    .line 301
    .restart local v40       #e:Ljava/lang/Throwable;
    :goto_35
    const-string v5, "SystemServer"

    const-string v9, "Failure starting StatusBarManagerService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a

    .line 308
    .end local v40           #e:Ljava/lang/Throwable;
    :catch_5
    move-exception v5

    move-object/from16 v40, v5

    .line 309
    .restart local v40       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Clipboard Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 319
    .end local v40           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v5

    move-object/from16 v40, v5

    .line 320
    .restart local v40       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting ClipboardEx Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 326
    .end local v40           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v5

    move-object/from16 v40, v5

    .line 327
    .restart local v40       #e:Ljava/lang/Throwable;
    :goto_36
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Input Manager Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    .line 333
    .end local v40           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v5

    move-object/from16 v40, v5

    .line 334
    .restart local v40       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting NetStat Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e

    .line 342
    .end local v40           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v5

    move-object/from16 v40, v5

    .line 343
    .restart local v40       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting NetworkManagement Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f

    .line 350
    .end local v40           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v5

    move-object/from16 v40, v5

    .line 351
    .restart local v40       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Connectivity Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_10

    .line 359
    .end local v40           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v5

    move-object/from16 v40, v5

    .line 360
    .restart local v40       #e:Ljava/lang/Throwable;
    :goto_37
    const-string v5, "SystemServer"

    const-string v9, "Failure starting ThrottleService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_11

    .line 367
    .end local v40           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v5

    move-object/from16 v40, v5

    .line 368
    .restart local v40       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Accessibility Manager"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_12

    .line 378
    .end local v40           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v5

    move-object/from16 v40, v5

    .line 379
    .restart local v40       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Mount Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_13

    .line 385
    .end local v40           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v5

    move-object/from16 v40, v5

    .line 386
    .restart local v40       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting UsbStorage Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_14

    .line 393
    .end local v40           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v5

    move-object/from16 v40, v5

    .line 394
    .restart local v40       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Encrypt Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_15

    .line 402
    .end local v40           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v5

    move-object/from16 v40, v5

    .line 403
    .restart local v40       #e:Ljava/lang/Throwable;
    :goto_38
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Notification Manager"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_16

    .line 418
    .end local v40           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v5

    move-object/from16 v40, v5

    .line 419
    .restart local v40       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting DataRouter Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_17

    .line 426
    .end local v40           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v5

    move-object/from16 v40, v5

    .line 427
    .restart local v40       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting HDMI Service "

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_18

    .line 434
    .end local v40           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v5

    move-object/from16 v40, v5

    .line 435
    .restart local v40       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting DeviceStorageMonitor service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_19

    .line 442
    .end local v40           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v5

    move-object/from16 v40, v5

    .line 443
    .restart local v40       #e:Ljava/lang/Throwable;
    :goto_39
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Location Manager"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1a

    .line 450
    .end local v40           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v5

    move-object/from16 v40, v5

    .line 451
    .restart local v40       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Search Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1b

    .line 463
    .end local v40           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v5

    move-object/from16 v40, v5

    .line 464
    .restart local v40       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting DropBoxManagerService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1c

    .line 471
    .end local v40           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v5

    move-object/from16 v40, v5

    .line 472
    .restart local v40       #e:Ljava/lang/Throwable;
    :goto_3a
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Wallpaper Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1d

    .line 478
    .end local v40           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v5

    move-object/from16 v40, v5

    .line 479
    .restart local v40       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Audio Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1e

    .line 486
    .end local v40           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v5

    move-object/from16 v40, v5

    .line 487
    .restart local v40       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting HeadsetObserver"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1f

    .line 494
    .end local v40           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v5

    move-object/from16 v40, v5

    .line 495
    .restart local v40       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting DockObserver"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_20

    .line 503
    .end local v40           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v5

    move-object/from16 v40, v5

    .line 504
    .restart local v40       #e:Ljava/lang/Throwable;
    :goto_3b
    const-string v5, "SystemServer"

    const-string v9, "Failure starting UsbService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_21

    .line 511
    .end local v40           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v5

    move-object/from16 v40, v5

    .line 512
    .restart local v40       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting UiModeManagerService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_22

    .line 519
    .end local v40           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v5

    move-object/from16 v40, v5

    .line 520
    .restart local v40       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_23

    .line 527
    .end local v40           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v5

    move-object/from16 v40, v5

    .line 528
    .restart local v40       #e:Ljava/lang/Throwable;
    :goto_3c
    const-string v5, "SystemServer"

    const-string v9, "Failure starting AppWidget Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_24

    .line 534
    .end local v40           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v5

    move-object/from16 v40, v5

    .line 535
    .restart local v40       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Recognition Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_25

    .line 541
    .end local v40           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v5

    move-object/from16 v40, v5

    .line 542
    .restart local v40       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting DiskStats Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_26

    .line 552
    .end local v40           #e:Ljava/lang/Throwable;
    :catch_21
    move-exception v5

    move-object/from16 v40, v5

    .line 553
    .restart local v40       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting AtCmdFwd Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_27

    .line 563
    .end local v40           #e:Ljava/lang/Throwable;
    :catch_22
    move-exception v5

    move-object/from16 v40, v5

    .line 564
    .restart local v40       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Hdmi Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_28

    .line 571
    .end local v40           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v5

    move-object/from16 v40, v5

    .line 572
    .restart local v40       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting TvOut Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_29

    .line 594
    .end local v40           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v5

    move-object/from16 v40, v5

    .line 595
    .restart local v40       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Mhl Rcp Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2a

    .line 602
    .end local v40           #e:Ljava/lang/Throwable;
    :catch_25
    move-exception v5

    move-object/from16 v40, v5

    .line 603
    .restart local v40       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Motion Recognition Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2b

    .line 625
    .end local v40           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v5

    move-object/from16 v40, v5

    .line 626
    .restart local v40       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting BT FM Power Management Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2c

    .line 636
    .end local v40           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v5

    move-object/from16 v40, v5

    .line 637
    .restart local v40       #e:Ljava/lang/Throwable;
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Throwable;->printStackTrace()V

    .line 638
    const-string v5, "SystemServer"

    const-string v9, "Failure starting RadioService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2d

    .line 645
    .end local v40           #e:Ljava/lang/Throwable;
    :cond_11
    const/4 v10, 0x0

    goto/16 :goto_2e

    .line 672
    :catch_28
    move-exception v5

    move-object/from16 v41, v5

    .line 674
    .local v41, e1:Ljava/lang/InterruptedException;
    invoke-virtual/range {v41 .. v41}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2f

    .line 688
    .end local v41           #e1:Ljava/lang/InterruptedException;
    .restart local v20       #safeMode:Z
    :catch_29
    move-exception v5

    move-object/from16 v40, v5

    .line 689
    .restart local v40       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v6, "Failure starting Theme Service"

    .end local v6           #context:Landroid/content/Context;
    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_30

    .line 704
    .end local v40           #e:Ljava/lang/Throwable;
    :cond_12
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_31

    .line 732
    :catch_2a
    move-exception v5

    goto/16 :goto_32

    .line 700
    :catch_2b
    move-exception v5

    goto/16 :goto_31

    .line 527
    .end local v20           #safeMode:Z
    .end local v25           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v6       #context:Landroid/content/Context;
    .restart local v26       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_2c
    move-exception v5

    move-object/from16 v40, v5

    move-object/from16 v25, v26

    .end local v26           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v25       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_3c

    .line 503
    .end local v67           #usb:Lcom/android/server/usb/UsbService;
    .restart local v68       #usb:Lcom/android/server/usb/UsbService;
    :catch_2d
    move-exception v5

    move-object/from16 v40, v5

    move-object/from16 v67, v68

    .end local v68           #usb:Lcom/android/server/usb/UsbService;
    .restart local v67       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_3b

    .line 471
    .end local v69           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v70       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_2e
    move-exception v5

    move-object/from16 v40, v5

    move-object/from16 v69, v70

    .end local v70           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v69       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_3a

    .line 442
    .end local v50           #location:Lcom/android/server/LocationManagerService;
    .restart local v51       #location:Lcom/android/server/LocationManagerService;
    :catch_2f
    move-exception v5

    move-object/from16 v40, v5

    move-object/from16 v50, v51

    .end local v51           #location:Lcom/android/server/LocationManagerService;
    .restart local v50       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_39

    .line 402
    .end local v52           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v53       #notification:Lcom/android/server/NotificationManagerService;
    :catch_30
    move-exception v5

    move-object/from16 v40, v5

    move-object/from16 v52, v53

    .end local v53           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v52       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_38

    .line 359
    .end local v63           #throttle:Lcom/android/server/ThrottleService;
    .restart local v64       #throttle:Lcom/android/server/ThrottleService;
    :catch_31
    move-exception v5

    move-object/from16 v40, v5

    move-object/from16 v63, v64

    .end local v64           #throttle:Lcom/android/server/ThrottleService;
    .restart local v63       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_37

    .line 326
    .end local v46           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v47       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_32
    move-exception v5

    move-object/from16 v40, v5

    move-object/from16 v46, v47

    .end local v47           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v46       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_36

    .line 300
    .end local v61           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v62       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_33
    move-exception v5

    move-object/from16 v40, v5

    move-object/from16 v61, v62

    .end local v62           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v61       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_35

    .line 292
    .end local v36           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v37       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_34
    move-exception v5

    move-object/from16 v40, v5

    move-object/from16 v36, v37

    .end local v37           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v36       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_34

    .line 275
    .end local v7           #battery:Lcom/android/server/BatteryService;
    .end local v8           #power:Lcom/android/server/PowerManagerService;
    .end local v25           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v36           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v46           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v50           #location:Lcom/android/server/LocationManagerService;
    .end local v52           #notification:Lcom/android/server/NotificationManagerService;
    .end local v61           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v69           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v28       #battery:Lcom/android/server/BatteryService;
    .restart local v55       #power:Lcom/android/server/PowerManagerService;
    :catch_35
    move-exception v5

    move-object/from16 v40, v5

    move-object/from16 v7, v28

    .end local v28           #battery:Lcom/android/server/BatteryService;
    .restart local v7       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v8, v55

    .end local v55           #power:Lcom/android/server/PowerManagerService;
    .restart local v8       #power:Lcom/android/server/PowerManagerService;
    goto/16 :goto_33

    :catch_36
    move-exception v5

    move-object/from16 v40, v5

    goto/16 :goto_33

    .end local v29           #bluetooth:Landroid/server/BluetoothService;
    .end local v48           #lights:Lcom/android/server/LightsService;
    .restart local v30       #bluetooth:Landroid/server/BluetoothService;
    .restart local v49       #lights:Lcom/android/server/LightsService;
    :catch_37
    move-exception v5

    move-object/from16 v40, v5

    move-object/from16 v29, v30

    .end local v30           #bluetooth:Landroid/server/BluetoothService;
    .restart local v29       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v48, v49

    .end local v49           #lights:Lcom/android/server/LightsService;
    .restart local v48       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_33

    .end local v29           #bluetooth:Landroid/server/BluetoothService;
    .end local v31           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v48           #lights:Lcom/android/server/LightsService;
    .restart local v30       #bluetooth:Landroid/server/BluetoothService;
    .restart local v32       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v49       #lights:Lcom/android/server/LightsService;
    :catch_38
    move-exception v5

    move-object/from16 v40, v5

    move-object/from16 v31, v32

    .end local v32           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v31       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v29, v30

    .end local v30           #bluetooth:Landroid/server/BluetoothService;
    .restart local v29       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v48, v49

    .end local v49           #lights:Lcom/android/server/LightsService;
    .restart local v48       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_33

    .end local v29           #bluetooth:Landroid/server/BluetoothService;
    .end local v31           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v33           #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    .end local v48           #lights:Lcom/android/server/LightsService;
    .restart local v30       #bluetooth:Landroid/server/BluetoothService;
    .restart local v32       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v34       #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    .restart local v49       #lights:Lcom/android/server/LightsService;
    :catch_39
    move-exception v5

    move-object/from16 v40, v5

    move-object/from16 v33, v34

    .end local v34           #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    .restart local v33       #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    move-object/from16 v31, v32

    .end local v32           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v31       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v29, v30

    .end local v30           #bluetooth:Landroid/server/BluetoothService;
    .restart local v29       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v48, v49

    .end local v49           #lights:Lcom/android/server/LightsService;
    .restart local v48       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_33
.end method
