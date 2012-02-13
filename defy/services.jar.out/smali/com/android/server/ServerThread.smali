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
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ServerThread;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 92

    .prologue
    const/16 v5, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-static {v5, v10, v11}, Landroid/util/EventLog;->writeEvent(IJ)I

    invoke-static {}, Landroid/os/Looper;->prepare()V

    const/4 v5, -0x2

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v5, 0x1

    invoke-static {v5}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    const/4 v5, 0x0

    invoke-static {v5}, Landroid/os/Process;->setCanSelfBackground(Z)V

    const-string v5, "sys.shutdown.requested"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v76

    .local v76, shutdownAction:Ljava/lang/String;
    if-eqz v76, :cond_0

    invoke-virtual/range {v76 .. v76}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v5, 0x0

    move-object/from16 v0, v76

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x31

    if-ne v5, v6, :cond_9

    const/4 v5, 0x1

    move/from16 v73, v5

    .local v73, reboot:Z
    :goto_0
    invoke-virtual/range {v76 .. v76}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_a

    const/4 v5, 0x1

    invoke-virtual/range {v76 .. v76}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, v76

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v72

    .local v72, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v73

    move-object/from16 v1, v72

    invoke-static {v0, v1}, Lcom/android/internal/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .end local v72           #reason:Ljava/lang/String;
    .end local v73           #reboot:Z
    :cond_0
    const-string v5, "ro.factorytest"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .local v52, factoryTestStr:Ljava/lang/String;
    const-string v5, ""

    move-object v0, v5

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x0

    move/from16 v51, v5

    .local v51, factoryTest:I
    :goto_2
    const/16 v60, 0x0

    .local v60, lights:Lcom/android/server/LightsService;
    const/16 v71, 0x0

    .local v71, power:Lcom/android/server/PowerManagerService;
    const/16 v44, 0x0

    .local v44, deviceManager:Lcom/android/server/DeviceManager3LMService;
    const/16 v29, 0x0

    .local v29, battery:Lcom/android/server/BatteryService;
    const/16 v41, 0x0

    .local v41, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v85, 0x0

    .local v85, vzwConnectivity:Lcom/motorola/server/VzwConnectivityService;
    const/16 v70, 0x0

    .local v70, pm:Landroid/content/pm/IPackageManager;
    const/4 v6, 0x0

    .local v6, context:Landroid/content/Context;
    const/16 v91, 0x0

    .local v91, wm:Lcom/android/server/WindowManagerService;
    const/16 v30, 0x0

    .local v30, bluetooth:Landroid/server/BluetoothService;
    const/16 v32, 0x0

    .local v32, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    const/16 v36, 0x0

    .local v36, bluetoothHid:Landroid/server/BluetoothHidService;
    const/16 v39, 0x0

    .local v39, bluetoothPan:Landroid/server/BluetoothPanService;
    const/16 v34, 0x0

    .local v34, bluetoothDun:Landroid/server/BluetoothDunService;
    const/16 v53, 0x0

    .local v53, headset:Lcom/android/server/HeadsetObserver;
    const/16 v48, 0x0

    .local v48, dock:Lcom/android/server/DockObserver;
    const/16 v83, 0x0

    .local v83, usb:Lcom/android/server/usb/UsbService;
    const/16 v66, 0x0

    .local v66, motDockAudio:Lcom/motorola/server/MotDockAudioObserver;
    const/16 v64, 0x0

    .local v64, motDock:Lcom/motorola/server/MotDockObserver;
    const/16 v81, 0x0

    .local v81, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v74, 0x0

    .local v74, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v79, 0x0

    .local v79, throttle:Lcom/android/server/ThrottleService;
    const/16 v42, 0x0

    .local v42, deepsleep:Lcom/motorola/server/deepsleep/DeepSleepService;
    :try_start_0
    const-string v5, "SystemServer"

    const-string v7, "Entropy Service"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "entropy"

    new-instance v7, Lcom/android/server/EntropyService;

    invoke-direct {v7}, Lcom/android/server/EntropyService;-><init>()V

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v5, "SystemServer"

    const-string v7, "Power Manager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lcom/android/server/PowerManagerService;

    invoke-direct {v8}, Lcom/android/server/PowerManagerService;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2f

    .end local v71           #power:Lcom/android/server/PowerManagerService;
    .local v8, power:Lcom/android/server/PowerManagerService;
    :try_start_1
    const-string v5, "power"

    invoke-static {v5, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v5, "SystemServer"

    const-string v7, "DeviceManager3LM"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v45, Lcom/android/server/DeviceManager3LMService;

    invoke-direct/range {v45 .. v45}, Lcom/android/server/DeviceManager3LMService;-><init>()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_30

    .end local v44           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .local v45, deviceManager:Lcom/android/server/DeviceManager3LMService;
    :try_start_2
    const-string v5, "DeviceManager3LM"

    move-object v0, v5

    move-object/from16 v1, v45

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v5, "SystemServer"

    const-string v7, "Activity Manager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v51 .. v51}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v6

    const-string v5, "SystemServer"

    const-string v7, "Telephony Registry"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "telephony.registry"

    new-instance v7, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v7, v6}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {v6}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    const-string v5, "SystemServer"

    const-string v7, "Package Manager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v51, :cond_c

    const/4 v5, 0x1

    :goto_3
    invoke-static {v6, v5}, Lcom/android/server/PackageManagerService;->main(Landroid/content/Context;Z)Landroid/content/pm/IPackageManager;

    move-result-object v70

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    const-string v5, "SystemServer"

    const-string v7, "Account Manager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "account"

    new-instance v7, Landroid/accounts/AccountManagerService;

    invoke-direct {v7, v6}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    const-string v5, "SystemServer"

    const-string v7, "Content Manager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    move/from16 v0, v51

    move v1, v5

    if-ne v0, v1, :cond_d

    const/4 v5, 0x1

    :goto_5
    invoke-static {v6, v5}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/IContentService;

    const-string v5, "SystemServer"

    const-string v7, "System Content Providers"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    const-string v5, "ro.mot.deep.sleep.supported"

    const/4 v7, 0x0

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v58

    .local v58, isDeepSleepSupported:Z
    if-eqz v58, :cond_1

    const-string v5, "SystemServer"

    const-string v7, "DeepSleep Service"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v43, Lcom/motorola/server/deepsleep/DeepSleepService;

    move-object/from16 v0, v43

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/motorola/server/deepsleep/DeepSleepService;-><init>(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v42           #deepsleep:Lcom/motorola/server/deepsleep/DeepSleepService;
    .local v43, deepsleep:Lcom/motorola/server/deepsleep/DeepSleepService;
    :try_start_5
    const-string v5, "deepsleep"

    move-object v0, v5

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_31

    move-object/from16 v42, v43

    .end local v43           #deepsleep:Lcom/motorola/server/deepsleep/DeepSleepService;
    .restart local v42       #deepsleep:Lcom/motorola/server/deepsleep/DeepSleepService;
    :cond_1
    :try_start_6
    const-string v5, "SystemServer"

    const-string v7, "Battery Service"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/android/server/BatteryService;

    invoke-direct {v7, v6}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    .end local v29           #battery:Lcom/android/server/BatteryService;
    .local v7, battery:Lcom/android/server/BatteryService;
    :try_start_7
    const-string v5, "battery"

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v5, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v61, Lcom/android/server/LightsService;

    move-object/from16 v0, v61

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_32

    .end local v60           #lights:Lcom/android/server/LightsService;
    .local v61, lights:Lcom/android/server/LightsService;
    :try_start_8
    const-string v5, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "vibrator"

    new-instance v9, Lcom/android/server/VibratorService;

    invoke-direct {v9, v6}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    move-object v0, v8

    move-object v1, v6

    move-object/from16 v2, v61

    move-object v3, v5

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V

    const-string v5, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Lcom/android/server/AlarmManagerService;

    invoke-direct {v9, v6}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V

    .local v9, alarm:Lcom/android/server/AlarmManagerService;
    const-string v5, "alarm"

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v5, "SystemServer"

    const-string v10, "Init Watchdog"

    invoke-static {v5, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    const-string v5, "SystemServer"

    const-string v9, "Window Manager"

    .end local v9           #alarm:Lcom/android/server/AlarmManagerService;
    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    move/from16 v0, v51

    move v1, v5

    if-eq v0, v1, :cond_e

    const/4 v5, 0x1

    :goto_6
    invoke-static {v6, v8, v5}, Lcom/android/server/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/PowerManagerService;Z)Lcom/android/server/WindowManagerService;

    move-result-object v91

    const-string v5, "window"

    move-object v0, v5

    move-object/from16 v1, v91

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v5, "activity"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityManagerService;

    move-object v0, v5

    move-object/from16 v1, v91

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/WindowManagerService;)V

    const-string v5, "ro.kernel.qemu"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "1"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v5, "SystemServer"

    const-string v9, "Registering null Bluetooth Service (emulator)"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "bluetooth"

    const/4 v9, 0x0

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    :goto_7
    move-object/from16 v44, v45

    .end local v45           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v44       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    move-object/from16 v60, v61

    .end local v58           #isDeepSleepSupported:Z
    .end local v61           #lights:Lcom/android/server/LightsService;
    .restart local v60       #lights:Lcom/android/server/LightsService;
    :goto_8
    const/16 v46, 0x0

    .local v46, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v77, 0x0

    .local v77, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v55, 0x0

    .local v55, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v27, 0x0

    .local v27, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v68, 0x0

    .local v68, notification:Lcom/android/server/NotificationManagerService;
    const/16 v89, 0x0

    .local v89, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v62, 0x0

    .local v62, location:Lcom/android/server/LocationManagerService;
    const/16 v87, 0x0

    .local v87, vzwLocation:Lcom/vzw/location/VzwLocationManagerService;
    const/4 v5, 0x1

    move/from16 v0, v51

    move v1, v5

    if-eq v0, v1, :cond_4

    :try_start_9
    const-string v5, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v47, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v47

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    .end local v46           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v47, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_a
    const-string v5, "device_policy"

    move-object v0, v5

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2e

    move-object/from16 v46, v47

    .end local v47           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v46       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_9
    :try_start_b
    const-string v5, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v78, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v78

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    .end local v77           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v78, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_c
    const-string v5, "statusbar"

    move-object v0, v5

    move-object/from16 v1, v78

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2d

    move-object/from16 v77, v78

    .end local v78           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v77       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_a
    :try_start_d
    const-string v5, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v6}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5

    :goto_b
    :try_start_e
    const-string v5, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v56, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v56

    move-object v1, v6

    move-object/from16 v2, v77

    invoke-direct {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_6

    .end local v55           #imm:Lcom/android/server/InputMethodManagerService;
    .local v56, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_f
    const-string v5, "input_method"

    move-object v0, v5

    move-object/from16 v1, v56

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_2c

    move-object/from16 v55, v56

    .end local v56           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v55       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_c
    :try_start_10
    const-string v5, "SystemServer"

    const-string v9, "NetStat Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "netstat"

    new-instance v9, Lcom/android/server/NetStatService;

    invoke-direct {v9, v6}, Lcom/android/server/NetStatService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_7

    :goto_d
    :try_start_11
    const-string v5, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "network_management"

    invoke-static {v6}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_8

    :goto_e
    :try_start_12
    const-string v5, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->getInstance(Landroid/content/Context;)Lcom/android/server/ConnectivityService;

    move-result-object v41

    const-string v5, "connectivity"

    move-object v0, v5

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_9

    :goto_f
    :try_start_13
    const-string v5, "SystemServer"

    const-string v9, "VzwConnectivity Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v86, Lcom/motorola/server/VzwConnectivityService;

    move-object/from16 v0, v86

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/motorola/server/VzwConnectivityService;-><init>(Landroid/content/Context;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_a

    .end local v85           #vzwConnectivity:Lcom/motorola/server/VzwConnectivityService;
    .local v86, vzwConnectivity:Lcom/motorola/server/VzwConnectivityService;
    :try_start_14
    const-string v5, "vzwconnectivity"

    move-object v0, v5

    move-object/from16 v1, v86

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_2b

    move-object/from16 v85, v86

    .end local v86           #vzwConnectivity:Lcom/motorola/server/VzwConnectivityService;
    .restart local v85       #vzwConnectivity:Lcom/motorola/server/VzwConnectivityService;
    :goto_10
    :try_start_15
    const-string v5, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v80, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v80

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_b

    .end local v79           #throttle:Lcom/android/server/ThrottleService;
    .local v80, throttle:Lcom/android/server/ThrottleService;
    :try_start_16
    const-string v5, "throttle"

    move-object v0, v5

    move-object/from16 v1, v80

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_2a

    move-object/from16 v79, v80

    .end local v80           #throttle:Lcom/android/server/ThrottleService;
    .restart local v79       #throttle:Lcom/android/server/ThrottleService;
    :goto_11
    :try_start_17
    const-string v5, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "accessibility"

    new-instance v9, Lcom/android/server/AccessibilityManagerService;

    invoke-direct {v9, v6}, Lcom/android/server/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_c

    :goto_12
    :try_start_18
    const-string v5, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "mount"

    new-instance v9, Lcom/android/server/MountService;

    invoke-direct {v9, v6}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_d

    :goto_13
    :try_start_19
    const-string v5, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v69, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v69

    move-object v1, v6

    move-object/from16 v2, v77

    move-object/from16 v3, v60

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_e

    .end local v68           #notification:Lcom/android/server/NotificationManagerService;
    .local v69, notification:Lcom/android/server/NotificationManagerService;
    :try_start_1a
    const-string v5, "notification"

    move-object v0, v5

    move-object/from16 v1, v69

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_29

    move-object/from16 v68, v69

    .end local v69           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v68       #notification:Lcom/android/server/NotificationManagerService;
    :goto_14
    :try_start_1b
    const-string v5, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v6}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_f

    :goto_15
    :try_start_1c
    const-string v5, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v63, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v63

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_10

    .end local v62           #location:Lcom/android/server/LocationManagerService;
    .local v63, location:Lcom/android/server/LocationManagerService;
    :try_start_1d
    const-string v5, "location"

    move-object v0, v5

    move-object/from16 v1, v63

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_28

    move-object/from16 v62, v63

    .end local v63           #location:Lcom/android/server/LocationManagerService;
    .restart local v62       #location:Lcom/android/server/LocationManagerService;
    :goto_16
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "agps_feature_enabled"

    const/4 v10, 0x1

    invoke-static {v5, v9, v10}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_12

    const/4 v5, 0x1

    move/from16 v57, v5

    .local v57, isAgpsFtrEnabled:Z
    :goto_17
    if-eqz v57, :cond_2

    :try_start_1e
    const-string v5, "SystemServer"

    const-string v9, "Vzw Location Manager"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v88, Lcom/vzw/location/VzwLocationManagerService;

    move-object/from16 v0, v88

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/vzw/location/VzwLocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_11

    .end local v87           #vzwLocation:Lcom/vzw/location/VzwLocationManagerService;
    .local v88, vzwLocation:Lcom/vzw/location/VzwLocationManagerService;
    :try_start_1f
    const-string v5, "VZW_LOCATION_SERVICE"

    move-object v0, v5

    move-object/from16 v1, v88

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_27

    move-object/from16 v87, v88

    .end local v88           #vzwLocation:Lcom/vzw/location/VzwLocationManagerService;
    .restart local v87       #vzwLocation:Lcom/vzw/location/VzwLocationManagerService;
    :cond_2
    :goto_18
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x10d0026

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v59

    .local v59, isLocationProxyEnabled:Z
    if-eqz v59, :cond_3

    :try_start_20
    const-string v5, "SystemServer"

    const-string v9, "Starting Location Proxy."

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "locationproxy"

    new-instance v9, Lcom/motorola/server/LocationProxyService;

    invoke-direct {v9, v6}, Lcom/motorola/server/LocationProxyService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_12

    :cond_3
    :goto_19
    :try_start_21
    const-string v5, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v6}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_13

    :goto_1a
    :try_start_22
    const-string v5, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v6, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_14

    :goto_1b
    :try_start_23
    const-string v5, "SystemServer"

    const-string v9, "Starting Checkin Mot Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "checkin_mot"

    new-instance v9, Lcom/motorola/android/server/checkin/CheckinService;

    invoke-direct {v9, v6}, Lcom/motorola/android/server/checkin/CheckinService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_15

    :goto_1c
    :try_start_24
    const-string v5, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v90, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v90

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_16

    .end local v89           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v90, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_25
    const-string v5, "wallpaper"

    move-object v0, v5

    move-object/from16 v1, v90

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_26

    move-object/from16 v89, v90

    .end local v90           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v89       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :goto_1d
    :try_start_26
    const-string v5, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v6}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_17

    :goto_1e
    :try_start_27
    const-string v5, "SystemServer"

    const-string v9, "Headset Observer"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v54, Lcom/android/server/HeadsetObserver;

    move-object/from16 v0, v54

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/HeadsetObserver;-><init>(Landroid/content/Context;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_18

    .end local v53           #headset:Lcom/android/server/HeadsetObserver;
    .local v54, headset:Lcom/android/server/HeadsetObserver;
    move-object/from16 v53, v54

    .end local v54           #headset:Lcom/android/server/HeadsetObserver;
    .restart local v53       #headset:Lcom/android/server/HeadsetObserver;
    :goto_1f
    :try_start_28
    const-string v5, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v49, Lcom/android/server/DockObserver;

    move-object/from16 v0, v49

    move-object v1, v6

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_19

    .end local v48           #dock:Lcom/android/server/DockObserver;
    .local v49, dock:Lcom/android/server/DockObserver;
    move-object/from16 v48, v49

    .end local v49           #dock:Lcom/android/server/DockObserver;
    .restart local v48       #dock:Lcom/android/server/DockObserver;
    :goto_20
    :try_start_29
    const-string v5, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v84, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v84

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_1a

    .end local v83           #usb:Lcom/android/server/usb/UsbService;
    .local v84, usb:Lcom/android/server/usb/UsbService;
    :try_start_2a
    const-string v5, "usb"

    move-object v0, v5

    move-object/from16 v1, v84

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_25

    move-object/from16 v83, v84

    .end local v84           #usb:Lcom/android/server/usb/UsbService;
    .restart local v83       #usb:Lcom/android/server/usb/UsbService;
    :goto_21
    :try_start_2b
    const-string v5, "SystemServer"

    const-string v9, "Mot Dock Audio Observer"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v67, Lcom/motorola/server/MotDockAudioObserver;

    move-object/from16 v0, v67

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/motorola/server/MotDockAudioObserver;-><init>(Landroid/content/Context;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_1b

    .end local v66           #motDockAudio:Lcom/motorola/server/MotDockAudioObserver;
    .local v67, motDockAudio:Lcom/motorola/server/MotDockAudioObserver;
    move-object/from16 v66, v67

    .end local v67           #motDockAudio:Lcom/motorola/server/MotDockAudioObserver;
    .restart local v66       #motDockAudio:Lcom/motorola/server/MotDockAudioObserver;
    :goto_22
    :try_start_2c
    const-string v5, "SystemServer"

    const-string v9, "Mot Dock Observer"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v65, Lcom/motorola/server/MotDockObserver;

    move-object/from16 v0, v65

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/motorola/server/MotDockObserver;-><init>(Landroid/content/Context;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_1c

    .end local v64           #motDock:Lcom/motorola/server/MotDockObserver;
    .local v65, motDock:Lcom/motorola/server/MotDockObserver;
    move-object/from16 v64, v65

    .end local v65           #motDock:Lcom/motorola/server/MotDockObserver;
    .restart local v64       #motDock:Lcom/motorola/server/MotDockObserver;
    :goto_23
    :try_start_2d
    const-string v5, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v82, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v82

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_1d

    .end local v81           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v82, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v81, v82

    .end local v82           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v81       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_24
    :try_start_2e
    const-string v5, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v6}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_1e

    :goto_25
    :try_start_2f
    const-string v5, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v28, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v28

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_1f

    .end local v27           #appWidget:Lcom/android/server/AppWidgetService;
    .local v28, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_30
    const-string v5, "appwidget"

    move-object v0, v5

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_24

    move-object/from16 v27, v28

    .end local v28           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v27       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_26
    :try_start_31
    const-string v5, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v75, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v75

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_20

    .end local v74           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v75, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v74, v75

    .end local v75           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v74       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_27
    :try_start_32
    const-string v5, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v6}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_21

    .end local v57           #isAgpsFtrEnabled:Z
    .end local v59           #isLocationProxyEnabled:Z
    :cond_4
    :goto_28
    const/4 v5, 0x0

    move-object/from16 v0, v44

    move-object v1, v6

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DeviceManager3LMService;->init(Landroid/content/Context;Landroid/os/EncryptionManager;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    const-string v6, "adb_enabled"

    .end local v6           #context:Landroid/content/Context;
    const-string v9, "1"

    const-string v10, "persist.service.adb.enable"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    const/4 v9, 0x1

    :goto_29
    invoke-static {v5, v6, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    const-string v6, "adb_enabled"

    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v9, 0x0

    new-instance v10, Lcom/android/server/ServerThread$AdbSettingsObserver;

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/ServerThread$AdbSettingsObserver;-><init>(Lcom/android/server/ServerThread;)V

    invoke-virtual {v5, v6, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual/range {v91 .. v91}, Lcom/android/server/WindowManagerService;->detectSafeMode()Z

    move-result v21

    .local v21, safeMode:Z
    if-eqz v21, :cond_14

    :try_start_33
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->enterSafeMode()V

    const/4 v5, 0x1

    sput-boolean v5, Ldalvik/system/Zygote;->systemInSafeMode:Z

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->disableJitCompilation()V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_33} :catch_23

    :goto_2a
    if-eqz v46, :cond_5

    invoke-virtual/range {v46 .. v46}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V

    :cond_5
    if-eqz v68, :cond_6

    invoke-virtual/range {v68 .. v68}, Lcom/android/server/NotificationManagerService;->systemReady()V

    :cond_6
    if-eqz v77, :cond_7

    invoke-virtual/range {v77 .. v77}, Lcom/android/server/StatusBarManagerService;->systemReady()V

    :cond_7
    invoke-virtual/range {v91 .. v91}, Lcom/android/server/WindowManagerService;->systemReady()V

    invoke-virtual {v8}, Lcom/android/server/PowerManagerService;->systemReady()V

    :try_start_34
    invoke-interface/range {v70 .. v70}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_34} :catch_22

    :goto_2b
    move-object/from16 v12, v77

    .local v12, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object v13, v7

    .local v13, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v14, v41

    .local v14, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v15, v48

    .local v15, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v16, v83

    .local v16, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v17, v64

    .local v17, motDockF:Lcom/motorola/server/MotDockObserver;
    move-object/from16 v26, v79

    .local v26, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v18, v81

    .local v18, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v20, v27

    .local v20, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v22, v89

    .local v22, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v23, v55

    .local v23, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v19, v74

    .local v19, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v24, v62

    .local v24, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v25, v87

    .local v25, vzwLocationF:Lcom/vzw/location/VzwLocationManagerService;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityManagerService;

    new-instance v10, Lcom/android/server/ServerThread$1;

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v26}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;Lcom/android/server/StatusBarManagerService;Lcom/android/server/BatteryService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/motorola/server/MotDockObserver;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/LocationManagerService;Lcom/vzw/location/VzwLocationManagerService;Lcom/android/server/ThrottleService;)V

    invoke-virtual {v5, v10}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "SystemServer"

    const-string v6, "Enabled StrictMode for system server main thread."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-static {}, Landroid/os/Looper;->loop()V

    const-string v5, "SystemServer"

    const-string v6, "System ServerThread is exiting!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .end local v7           #battery:Lcom/android/server/BatteryService;
    .end local v8           #power:Lcom/android/server/PowerManagerService;
    .end local v12           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v13           #batteryF:Lcom/android/server/BatteryService;
    .end local v14           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v15           #dockF:Lcom/android/server/DockObserver;
    .end local v16           #usbF:Lcom/android/server/usb/UsbService;
    .end local v17           #motDockF:Lcom/motorola/server/MotDockObserver;
    .end local v18           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v19           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v20           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v21           #safeMode:Z
    .end local v22           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v23           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v24           #locationF:Lcom/android/server/LocationManagerService;
    .end local v25           #vzwLocationF:Lcom/vzw/location/VzwLocationManagerService;
    .end local v26           #throttleF:Lcom/android/server/ThrottleService;
    .end local v27           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v30           #bluetooth:Landroid/server/BluetoothService;
    .end local v32           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v34           #bluetoothDun:Landroid/server/BluetoothDunService;
    .end local v36           #bluetoothHid:Landroid/server/BluetoothHidService;
    .end local v39           #bluetoothPan:Landroid/server/BluetoothPanService;
    .end local v41           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v42           #deepsleep:Lcom/motorola/server/deepsleep/DeepSleepService;
    .end local v44           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .end local v46           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v48           #dock:Lcom/android/server/DockObserver;
    .end local v51           #factoryTest:I
    .end local v52           #factoryTestStr:Ljava/lang/String;
    .end local v53           #headset:Lcom/android/server/HeadsetObserver;
    .end local v55           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v60           #lights:Lcom/android/server/LightsService;
    .end local v62           #location:Lcom/android/server/LocationManagerService;
    .end local v64           #motDock:Lcom/motorola/server/MotDockObserver;
    .end local v66           #motDockAudio:Lcom/motorola/server/MotDockAudioObserver;
    .end local v68           #notification:Lcom/android/server/NotificationManagerService;
    .end local v70           #pm:Landroid/content/pm/IPackageManager;
    .end local v74           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v77           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v79           #throttle:Lcom/android/server/ThrottleService;
    .end local v81           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v83           #usb:Lcom/android/server/usb/UsbService;
    .end local v85           #vzwConnectivity:Lcom/motorola/server/VzwConnectivityService;
    .end local v87           #vzwLocation:Lcom/vzw/location/VzwLocationManagerService;
    .end local v89           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v91           #wm:Lcom/android/server/WindowManagerService;
    :cond_9
    const/4 v5, 0x0

    move/from16 v73, v5

    goto/16 :goto_0

    .restart local v73       #reboot:Z
    :cond_a
    const/16 v72, 0x0

    .restart local v72       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .end local v72           #reason:Ljava/lang/String;
    .end local v73           #reboot:Z
    .restart local v52       #factoryTestStr:Ljava/lang/String;
    :cond_b
    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move/from16 v51, v5

    goto/16 :goto_2

    .restart local v6       #context:Landroid/content/Context;
    .restart local v8       #power:Lcom/android/server/PowerManagerService;
    .restart local v29       #battery:Lcom/android/server/BatteryService;
    .restart local v30       #bluetooth:Landroid/server/BluetoothService;
    .restart local v32       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v34       #bluetoothDun:Landroid/server/BluetoothDunService;
    .restart local v36       #bluetoothHid:Landroid/server/BluetoothHidService;
    .restart local v39       #bluetoothPan:Landroid/server/BluetoothPanService;
    .restart local v41       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v42       #deepsleep:Lcom/motorola/server/deepsleep/DeepSleepService;
    .restart local v45       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v48       #dock:Lcom/android/server/DockObserver;
    .restart local v51       #factoryTest:I
    .restart local v53       #headset:Lcom/android/server/HeadsetObserver;
    .restart local v60       #lights:Lcom/android/server/LightsService;
    .restart local v64       #motDock:Lcom/motorola/server/MotDockObserver;
    .restart local v66       #motDockAudio:Lcom/motorola/server/MotDockAudioObserver;
    .restart local v70       #pm:Landroid/content/pm/IPackageManager;
    .restart local v74       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v79       #throttle:Lcom/android/server/ThrottleService;
    .restart local v81       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v83       #usb:Lcom/android/server/usb/UsbService;
    .restart local v85       #vzwConnectivity:Lcom/motorola/server/VzwConnectivityService;
    .restart local v91       #wm:Lcom/android/server/WindowManagerService;
    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_3

    :catch_0
    move-exception v5

    move-object/from16 v50, v5

    .local v50, e:Ljava/lang/Throwable;
    :try_start_35
    const-string v5, "SystemServer"

    const-string v7, "Failure starting Account Manager"

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v50

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_35
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_35} :catch_1

    goto/16 :goto_4

    .end local v50           #e:Ljava/lang/Throwable;
    :catch_1
    move-exception v5

    move-object/from16 v50, v5

    move-object/from16 v7, v29

    .end local v29           #battery:Lcom/android/server/BatteryService;
    .restart local v7       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v44, v45

    .end local v45           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v44       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .local v50, e:Ljava/lang/RuntimeException;
    :goto_2c
    const-string v5, "System"

    const-string v9, "Failure starting core service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v50

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .end local v7           #battery:Lcom/android/server/BatteryService;
    .end local v44           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .end local v50           #e:Ljava/lang/RuntimeException;
    .restart local v29       #battery:Lcom/android/server/BatteryService;
    .restart local v45       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    :cond_d
    const/4 v5, 0x0

    goto/16 :goto_5

    .end local v29           #battery:Lcom/android/server/BatteryService;
    .end local v60           #lights:Lcom/android/server/LightsService;
    .restart local v7       #battery:Lcom/android/server/BatteryService;
    .restart local v58       #isDeepSleepSupported:Z
    .restart local v61       #lights:Lcom/android/server/LightsService;
    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_6

    :cond_f
    const/4 v5, 0x1

    move/from16 v0, v51

    move v1, v5

    if-ne v0, v1, :cond_10

    :try_start_36
    const-string v5, "SystemServer"

    const-string v9, "Registering null Bluetooth Service (factory test)"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "bluetooth"

    const/4 v9, 0x0

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_7

    :catch_2
    move-exception v5

    move-object/from16 v50, v5

    move-object/from16 v44, v45

    .end local v45           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v44       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    move-object/from16 v60, v61

    .end local v61           #lights:Lcom/android/server/LightsService;
    .restart local v60       #lights:Lcom/android/server/LightsService;
    goto :goto_2c

    .end local v44           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .end local v60           #lights:Lcom/android/server/LightsService;
    .restart local v45       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v61       #lights:Lcom/android/server/LightsService;
    :cond_10
    const-string v5, "SystemServer"

    const-string v9, "Bluetooth Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v31, Landroid/server/BluetoothService;

    move-object/from16 v0, v31

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_36
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_36} :catch_2

    .end local v30           #bluetooth:Landroid/server/BluetoothService;
    .local v31, bluetooth:Landroid/server/BluetoothService;
    :try_start_37
    const-string v5, "bluetooth"

    move-object v0, v5

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual/range {v31 .. v31}, Landroid/server/BluetoothService;->initAfterRegistration()V

    new-instance v33, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v33

    move-object v1, v6

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_37
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_37} :catch_33

    .end local v32           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .local v33, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_38
    const-string v5, "bluetooth_a2dp"

    move-object v0, v5

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    new-instance v37, Landroid/server/BluetoothHidService;

    move-object/from16 v0, v37

    move-object v1, v6

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/server/BluetoothHidService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_38
    .catch Ljava/lang/RuntimeException; {:try_start_38 .. :try_end_38} :catch_34

    .end local v36           #bluetoothHid:Landroid/server/BluetoothHidService;
    .local v37, bluetoothHid:Landroid/server/BluetoothHidService;
    :try_start_39
    const-string v5, "bluetooth_hid"

    move-object v0, v5

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    new-instance v40, Landroid/server/BluetoothPanService;

    move-object/from16 v0, v40

    move-object v1, v6

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/server/BluetoothPanService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_39
    .catch Ljava/lang/RuntimeException; {:try_start_39 .. :try_end_39} :catch_35

    .end local v39           #bluetoothPan:Landroid/server/BluetoothPanService;
    .local v40, bluetoothPan:Landroid/server/BluetoothPanService;
    :try_start_3a
    const-string v5, "bluetooth_pan"

    move-object v0, v5

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    new-instance v35, Landroid/server/BluetoothDunService;

    move-object/from16 v0, v35

    move-object v1, v6

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/server/BluetoothDunService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_3a
    .catch Ljava/lang/RuntimeException; {:try_start_3a .. :try_end_3a} :catch_36

    .end local v34           #bluetoothDun:Landroid/server/BluetoothDunService;
    .local v35, bluetoothDun:Landroid/server/BluetoothDunService;
    :try_start_3b
    const-string v5, "bluetooth_dun"

    move-object v0, v5

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    const-string v9, "bluetooth_on"

    const/4 v10, 0x0

    invoke-static {v5, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v38

    .local v38, bluetoothOn:I
    if-lez v38, :cond_11

    const/4 v5, 0x0

    move-object/from16 v0, v31

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/server/BluetoothService;->enable(Z)Z
    :try_end_3b
    .catch Ljava/lang/RuntimeException; {:try_start_3b .. :try_end_3b} :catch_37

    :cond_11
    move-object/from16 v34, v35

    .end local v35           #bluetoothDun:Landroid/server/BluetoothDunService;
    .restart local v34       #bluetoothDun:Landroid/server/BluetoothDunService;
    move-object/from16 v39, v40

    .end local v40           #bluetoothPan:Landroid/server/BluetoothPanService;
    .restart local v39       #bluetoothPan:Landroid/server/BluetoothPanService;
    move-object/from16 v36, v37

    .end local v37           #bluetoothHid:Landroid/server/BluetoothHidService;
    .restart local v36       #bluetoothHid:Landroid/server/BluetoothHidService;
    move-object/from16 v32, v33

    .end local v33           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v32       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v30, v31

    .end local v31           #bluetooth:Landroid/server/BluetoothService;
    .restart local v30       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_7

    .end local v38           #bluetoothOn:I
    .end local v45           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .end local v58           #isDeepSleepSupported:Z
    .end local v61           #lights:Lcom/android/server/LightsService;
    .restart local v27       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v44       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v46       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v55       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v60       #lights:Lcom/android/server/LightsService;
    .restart local v62       #location:Lcom/android/server/LocationManagerService;
    .restart local v68       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v77       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v87       #vzwLocation:Lcom/vzw/location/VzwLocationManagerService;
    .restart local v89       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3
    move-exception v5

    move-object/from16 v50, v5

    .local v50, e:Ljava/lang/Throwable;
    :goto_2d
    const-string v5, "SystemServer"

    const-string v9, "Failure starting DevicePolicyService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v50

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .end local v50           #e:Ljava/lang/Throwable;
    :catch_4
    move-exception v5

    move-object/from16 v50, v5

    .restart local v50       #e:Ljava/lang/Throwable;
    :goto_2e
    const-string v5, "SystemServer"

    const-string v9, "Failure starting StatusBarManagerService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v50

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a

    .end local v50           #e:Ljava/lang/Throwable;
    :catch_5
    move-exception v5

    move-object/from16 v50, v5

    .restart local v50       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Clipboard Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v50

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .end local v50           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v5

    move-object/from16 v50, v5

    .restart local v50       #e:Ljava/lang/Throwable;
    :goto_2f
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Input Manager Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v50

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .end local v50           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v5

    move-object/from16 v50, v5

    .restart local v50       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting NetStat Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v50

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    .end local v50           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v5

    move-object/from16 v50, v5

    .restart local v50       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting NetworkManagement Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v50

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e

    .end local v50           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v5

    move-object/from16 v50, v5

    .restart local v50       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Connectivity Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v50

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f

    .end local v50           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v5

    move-object/from16 v50, v5

    .restart local v50       #e:Ljava/lang/Throwable;
    :goto_30
    const-string v5, "SystemServer"

    const-string v9, "Failure starting VzwConnectivity Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v50

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_10

    .end local v50           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v5

    move-object/from16 v50, v5

    .restart local v50       #e:Ljava/lang/Throwable;
    :goto_31
    const-string v5, "SystemServer"

    const-string v9, "Failure starting ThrottleService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v50

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_11

    .end local v50           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v5

    move-object/from16 v50, v5

    .restart local v50       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Accessibility Manager"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v50

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_12

    .end local v50           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v5

    move-object/from16 v50, v5

    .restart local v50       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Mount Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v50

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_13

    .end local v50           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v5

    move-object/from16 v50, v5

    .restart local v50       #e:Ljava/lang/Throwable;
    :goto_32
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Notification Manager"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v50

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_14

    .end local v50           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v5

    move-object/from16 v50, v5

    .restart local v50       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting DeviceStorageMonitor service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v50

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_15

    .end local v50           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v5

    move-object/from16 v50, v5

    .restart local v50       #e:Ljava/lang/Throwable;
    :goto_33
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Location Manager"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v50

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_16

    .end local v50           #e:Ljava/lang/Throwable;
    :cond_12
    const/4 v5, 0x0

    move/from16 v57, v5

    goto/16 :goto_17

    .restart local v57       #isAgpsFtrEnabled:Z
    :catch_11
    move-exception v5

    move-object/from16 v50, v5

    .restart local v50       #e:Ljava/lang/Throwable;
    :goto_34
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Vzw Location Manager"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v50

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_18

    .end local v50           #e:Ljava/lang/Throwable;
    .restart local v59       #isLocationProxyEnabled:Z
    :catch_12
    move-exception v5

    move-object/from16 v50, v5

    .restart local v50       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Location Proxy"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v50

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_19

    .end local v50           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v5

    move-object/from16 v50, v5

    .restart local v50       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Search Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v50

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1a

    .end local v50           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v5

    move-object/from16 v50, v5

    .restart local v50       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting DropBoxManagerService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v50

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1b

    .end local v50           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v5

    move-object/from16 v50, v5

    .restart local v50       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Checkin Mot Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v50

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1c

    .end local v50           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v5

    move-object/from16 v50, v5

    .restart local v50       #e:Ljava/lang/Throwable;
    :goto_35
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Wallpaper Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v50

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1d

    .end local v50           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v5

    move-object/from16 v50, v5

    .restart local v50       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Audio Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v50

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1e

    .end local v50           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v5

    move-object/from16 v50, v5

    .restart local v50       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting HeadsetObserver"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v50

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1f

    .end local v50           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v5

    move-object/from16 v50, v5

    .restart local v50       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting DockObserver"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v50

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_20

    .end local v50           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v5

    move-object/from16 v50, v5

    .restart local v50       #e:Ljava/lang/Throwable;
    :goto_36
    const-string v5, "SystemServer"

    const-string v9, "Failure starting UsbService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v50

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_21

    .end local v50           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v5

    move-object/from16 v50, v5

    .restart local v50       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting MotDockAudioObserver"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v50

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_22

    .end local v50           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v5

    move-object/from16 v50, v5

    .restart local v50       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting MotDockObserver"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v50

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_23

    .end local v50           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v5

    move-object/from16 v50, v5

    .restart local v50       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting UiModeManagerService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v50

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_24

    .end local v50           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v5

    move-object/from16 v50, v5

    .restart local v50       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v50

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_25

    .end local v50           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v5

    move-object/from16 v50, v5

    .restart local v50       #e:Ljava/lang/Throwable;
    :goto_37
    const-string v5, "SystemServer"

    const-string v9, "Failure starting AppWidget Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v50

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_26

    .end local v50           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v5

    move-object/from16 v50, v5

    .restart local v50       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Recognition Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v50

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_27

    .end local v50           #e:Ljava/lang/Throwable;
    :catch_21
    move-exception v5

    move-object/from16 v50, v5

    .restart local v50       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting DiskStats Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v50

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_28

    .end local v6           #context:Landroid/content/Context;
    .end local v50           #e:Ljava/lang/Throwable;
    .end local v57           #isAgpsFtrEnabled:Z
    .end local v59           #isLocationProxyEnabled:Z
    :cond_13
    const/4 v9, 0x0

    goto/16 :goto_29

    .restart local v21       #safeMode:Z
    :cond_14
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_2a

    :catch_22
    move-exception v5

    goto/16 :goto_2b

    :catch_23
    move-exception v5

    goto/16 :goto_2a

    .end local v21           #safeMode:Z
    .end local v27           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v6       #context:Landroid/content/Context;
    .restart local v28       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v57       #isAgpsFtrEnabled:Z
    .restart local v59       #isLocationProxyEnabled:Z
    :catch_24
    move-exception v5

    move-object/from16 v50, v5

    move-object/from16 v27, v28

    .end local v28           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v27       #appWidget:Lcom/android/server/AppWidgetService;
    goto :goto_37

    .end local v83           #usb:Lcom/android/server/usb/UsbService;
    .restart local v84       #usb:Lcom/android/server/usb/UsbService;
    :catch_25
    move-exception v5

    move-object/from16 v50, v5

    move-object/from16 v83, v84

    .end local v84           #usb:Lcom/android/server/usb/UsbService;
    .restart local v83       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_36

    .end local v89           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v90       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_26
    move-exception v5

    move-object/from16 v50, v5

    move-object/from16 v89, v90

    .end local v90           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v89       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_35

    .end local v59           #isLocationProxyEnabled:Z
    .end local v87           #vzwLocation:Lcom/vzw/location/VzwLocationManagerService;
    .restart local v88       #vzwLocation:Lcom/vzw/location/VzwLocationManagerService;
    :catch_27
    move-exception v5

    move-object/from16 v50, v5

    move-object/from16 v87, v88

    .end local v88           #vzwLocation:Lcom/vzw/location/VzwLocationManagerService;
    .restart local v87       #vzwLocation:Lcom/vzw/location/VzwLocationManagerService;
    goto/16 :goto_34

    .end local v57           #isAgpsFtrEnabled:Z
    .end local v62           #location:Lcom/android/server/LocationManagerService;
    .restart local v63       #location:Lcom/android/server/LocationManagerService;
    :catch_28
    move-exception v5

    move-object/from16 v50, v5

    move-object/from16 v62, v63

    .end local v63           #location:Lcom/android/server/LocationManagerService;
    .restart local v62       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_33

    .end local v68           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v69       #notification:Lcom/android/server/NotificationManagerService;
    :catch_29
    move-exception v5

    move-object/from16 v50, v5

    move-object/from16 v68, v69

    .end local v69           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v68       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_32

    .end local v79           #throttle:Lcom/android/server/ThrottleService;
    .restart local v80       #throttle:Lcom/android/server/ThrottleService;
    :catch_2a
    move-exception v5

    move-object/from16 v50, v5

    move-object/from16 v79, v80

    .end local v80           #throttle:Lcom/android/server/ThrottleService;
    .restart local v79       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_31

    .end local v85           #vzwConnectivity:Lcom/motorola/server/VzwConnectivityService;
    .restart local v86       #vzwConnectivity:Lcom/motorola/server/VzwConnectivityService;
    :catch_2b
    move-exception v5

    move-object/from16 v50, v5

    move-object/from16 v85, v86

    .end local v86           #vzwConnectivity:Lcom/motorola/server/VzwConnectivityService;
    .restart local v85       #vzwConnectivity:Lcom/motorola/server/VzwConnectivityService;
    goto/16 :goto_30

    .end local v55           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v56       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_2c
    move-exception v5

    move-object/from16 v50, v5

    move-object/from16 v55, v56

    .end local v56           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v55       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_2f

    .end local v77           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v78       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_2d
    move-exception v5

    move-object/from16 v50, v5

    move-object/from16 v77, v78

    .end local v78           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v77       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_2e

    .end local v46           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v47       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_2e
    move-exception v5

    move-object/from16 v50, v5

    move-object/from16 v46, v47

    .end local v47           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v46       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_2d

    .end local v7           #battery:Lcom/android/server/BatteryService;
    .end local v8           #power:Lcom/android/server/PowerManagerService;
    .end local v27           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v46           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v55           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v62           #location:Lcom/android/server/LocationManagerService;
    .end local v68           #notification:Lcom/android/server/NotificationManagerService;
    .end local v77           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v87           #vzwLocation:Lcom/vzw/location/VzwLocationManagerService;
    .end local v89           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v29       #battery:Lcom/android/server/BatteryService;
    .restart local v71       #power:Lcom/android/server/PowerManagerService;
    :catch_2f
    move-exception v5

    move-object/from16 v50, v5

    move-object/from16 v7, v29

    .end local v29           #battery:Lcom/android/server/BatteryService;
    .restart local v7       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v8, v71

    .end local v71           #power:Lcom/android/server/PowerManagerService;
    .restart local v8       #power:Lcom/android/server/PowerManagerService;
    goto/16 :goto_2c

    .end local v7           #battery:Lcom/android/server/BatteryService;
    .restart local v29       #battery:Lcom/android/server/BatteryService;
    :catch_30
    move-exception v5

    move-object/from16 v50, v5

    move-object/from16 v7, v29

    .end local v29           #battery:Lcom/android/server/BatteryService;
    .restart local v7       #battery:Lcom/android/server/BatteryService;
    goto/16 :goto_2c

    .end local v7           #battery:Lcom/android/server/BatteryService;
    .end local v42           #deepsleep:Lcom/motorola/server/deepsleep/DeepSleepService;
    .end local v44           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v29       #battery:Lcom/android/server/BatteryService;
    .restart local v43       #deepsleep:Lcom/motorola/server/deepsleep/DeepSleepService;
    .restart local v45       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v58       #isDeepSleepSupported:Z
    :catch_31
    move-exception v5

    move-object/from16 v50, v5

    move-object/from16 v42, v43

    .end local v43           #deepsleep:Lcom/motorola/server/deepsleep/DeepSleepService;
    .restart local v42       #deepsleep:Lcom/motorola/server/deepsleep/DeepSleepService;
    move-object/from16 v7, v29

    .end local v29           #battery:Lcom/android/server/BatteryService;
    .restart local v7       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v44, v45

    .end local v45           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v44       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    goto/16 :goto_2c

    .end local v44           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v45       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    :catch_32
    move-exception v5

    move-object/from16 v50, v5

    move-object/from16 v44, v45

    .end local v45           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v44       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    goto/16 :goto_2c

    .end local v30           #bluetooth:Landroid/server/BluetoothService;
    .end local v44           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .end local v60           #lights:Lcom/android/server/LightsService;
    .restart local v31       #bluetooth:Landroid/server/BluetoothService;
    .restart local v45       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v61       #lights:Lcom/android/server/LightsService;
    :catch_33
    move-exception v5

    move-object/from16 v50, v5

    move-object/from16 v30, v31

    .end local v31           #bluetooth:Landroid/server/BluetoothService;
    .restart local v30       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v44, v45

    .end local v45           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v44       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    move-object/from16 v60, v61

    .end local v61           #lights:Lcom/android/server/LightsService;
    .restart local v60       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_2c

    .end local v30           #bluetooth:Landroid/server/BluetoothService;
    .end local v32           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v44           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .end local v60           #lights:Lcom/android/server/LightsService;
    .restart local v31       #bluetooth:Landroid/server/BluetoothService;
    .restart local v33       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v45       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v61       #lights:Lcom/android/server/LightsService;
    :catch_34
    move-exception v5

    move-object/from16 v50, v5

    move-object/from16 v32, v33

    .end local v33           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v32       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v30, v31

    .end local v31           #bluetooth:Landroid/server/BluetoothService;
    .restart local v30       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v44, v45

    .end local v45           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v44       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    move-object/from16 v60, v61

    .end local v61           #lights:Lcom/android/server/LightsService;
    .restart local v60       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_2c

    .end local v30           #bluetooth:Landroid/server/BluetoothService;
    .end local v32           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v36           #bluetoothHid:Landroid/server/BluetoothHidService;
    .end local v44           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .end local v60           #lights:Lcom/android/server/LightsService;
    .restart local v31       #bluetooth:Landroid/server/BluetoothService;
    .restart local v33       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v37       #bluetoothHid:Landroid/server/BluetoothHidService;
    .restart local v45       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v61       #lights:Lcom/android/server/LightsService;
    :catch_35
    move-exception v5

    move-object/from16 v50, v5

    move-object/from16 v36, v37

    .end local v37           #bluetoothHid:Landroid/server/BluetoothHidService;
    .restart local v36       #bluetoothHid:Landroid/server/BluetoothHidService;
    move-object/from16 v32, v33

    .end local v33           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v32       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v30, v31

    .end local v31           #bluetooth:Landroid/server/BluetoothService;
    .restart local v30       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v44, v45

    .end local v45           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v44       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    move-object/from16 v60, v61

    .end local v61           #lights:Lcom/android/server/LightsService;
    .restart local v60       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_2c

    .end local v30           #bluetooth:Landroid/server/BluetoothService;
    .end local v32           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v36           #bluetoothHid:Landroid/server/BluetoothHidService;
    .end local v39           #bluetoothPan:Landroid/server/BluetoothPanService;
    .end local v44           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .end local v60           #lights:Lcom/android/server/LightsService;
    .restart local v31       #bluetooth:Landroid/server/BluetoothService;
    .restart local v33       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v37       #bluetoothHid:Landroid/server/BluetoothHidService;
    .restart local v40       #bluetoothPan:Landroid/server/BluetoothPanService;
    .restart local v45       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v61       #lights:Lcom/android/server/LightsService;
    :catch_36
    move-exception v5

    move-object/from16 v50, v5

    move-object/from16 v39, v40

    .end local v40           #bluetoothPan:Landroid/server/BluetoothPanService;
    .restart local v39       #bluetoothPan:Landroid/server/BluetoothPanService;
    move-object/from16 v36, v37

    .end local v37           #bluetoothHid:Landroid/server/BluetoothHidService;
    .restart local v36       #bluetoothHid:Landroid/server/BluetoothHidService;
    move-object/from16 v32, v33

    .end local v33           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v32       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v30, v31

    .end local v31           #bluetooth:Landroid/server/BluetoothService;
    .restart local v30       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v44, v45

    .end local v45           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v44       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    move-object/from16 v60, v61

    .end local v61           #lights:Lcom/android/server/LightsService;
    .restart local v60       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_2c

    .end local v30           #bluetooth:Landroid/server/BluetoothService;
    .end local v32           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v34           #bluetoothDun:Landroid/server/BluetoothDunService;
    .end local v36           #bluetoothHid:Landroid/server/BluetoothHidService;
    .end local v39           #bluetoothPan:Landroid/server/BluetoothPanService;
    .end local v44           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .end local v60           #lights:Lcom/android/server/LightsService;
    .restart local v31       #bluetooth:Landroid/server/BluetoothService;
    .restart local v33       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v35       #bluetoothDun:Landroid/server/BluetoothDunService;
    .restart local v37       #bluetoothHid:Landroid/server/BluetoothHidService;
    .restart local v40       #bluetoothPan:Landroid/server/BluetoothPanService;
    .restart local v45       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v61       #lights:Lcom/android/server/LightsService;
    :catch_37
    move-exception v5

    move-object/from16 v50, v5

    move-object/from16 v34, v35

    .end local v35           #bluetoothDun:Landroid/server/BluetoothDunService;
    .restart local v34       #bluetoothDun:Landroid/server/BluetoothDunService;
    move-object/from16 v39, v40

    .end local v40           #bluetoothPan:Landroid/server/BluetoothPanService;
    .restart local v39       #bluetoothPan:Landroid/server/BluetoothPanService;
    move-object/from16 v36, v37

    .end local v37           #bluetoothHid:Landroid/server/BluetoothHidService;
    .restart local v36       #bluetoothHid:Landroid/server/BluetoothHidService;
    move-object/from16 v32, v33

    .end local v33           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v32       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v30, v31

    .end local v31           #bluetooth:Landroid/server/BluetoothService;
    .restart local v30       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v44, v45

    .end local v45           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v44       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    move-object/from16 v60, v61

    .end local v61           #lights:Lcom/android/server/LightsService;
    .restart local v60       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_2c
.end method
