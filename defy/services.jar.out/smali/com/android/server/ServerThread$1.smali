.class Lcom/android/server/ServerThread$1;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ServerThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ServerThread;

.field final synthetic val$appWidgetF:Lcom/android/server/AppWidgetService;

.field final synthetic val$batteryF:Lcom/android/server/BatteryService;

.field final synthetic val$connectivityF:Lcom/android/server/ConnectivityService;

.field final synthetic val$dockF:Lcom/android/server/DockObserver;

.field final synthetic val$immF:Lcom/android/server/InputMethodManagerService;

.field final synthetic val$locationF:Lcom/android/server/LocationManagerService;

.field final synthetic val$motDockF:Lcom/motorola/server/MotDockObserver;

.field final synthetic val$recognitionF:Lcom/android/server/RecognitionManagerService;

.field final synthetic val$safeMode:Z

.field final synthetic val$statusBarF:Lcom/android/server/StatusBarManagerService;

.field final synthetic val$throttleF:Lcom/android/server/ThrottleService;

.field final synthetic val$uiModeF:Lcom/android/server/UiModeManagerService;

.field final synthetic val$usbF:Lcom/android/server/usb/UsbService;

.field final synthetic val$vzwLocationF:Lcom/vzw/location/VzwLocationManagerService;

.field final synthetic val$wallpaperF:Lcom/android/server/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/ServerThread;Lcom/android/server/StatusBarManagerService;Lcom/android/server/BatteryService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/motorola/server/MotDockObserver;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/LocationManagerService;Lcom/vzw/location/VzwLocationManagerService;Lcom/android/server/ThrottleService;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/ServerThread$1;->this$0:Lcom/android/server/ServerThread;

    iput-object p2, p0, Lcom/android/server/ServerThread$1;->val$statusBarF:Lcom/android/server/StatusBarManagerService;

    iput-object p3, p0, Lcom/android/server/ServerThread$1;->val$batteryF:Lcom/android/server/BatteryService;

    iput-object p4, p0, Lcom/android/server/ServerThread$1;->val$connectivityF:Lcom/android/server/ConnectivityService;

    iput-object p5, p0, Lcom/android/server/ServerThread$1;->val$dockF:Lcom/android/server/DockObserver;

    iput-object p6, p0, Lcom/android/server/ServerThread$1;->val$usbF:Lcom/android/server/usb/UsbService;

    iput-object p7, p0, Lcom/android/server/ServerThread$1;->val$motDockF:Lcom/motorola/server/MotDockObserver;

    iput-object p8, p0, Lcom/android/server/ServerThread$1;->val$uiModeF:Lcom/android/server/UiModeManagerService;

    iput-object p9, p0, Lcom/android/server/ServerThread$1;->val$recognitionF:Lcom/android/server/RecognitionManagerService;

    iput-object p10, p0, Lcom/android/server/ServerThread$1;->val$appWidgetF:Lcom/android/server/AppWidgetService;

    iput-boolean p11, p0, Lcom/android/server/ServerThread$1;->val$safeMode:Z

    iput-object p12, p0, Lcom/android/server/ServerThread$1;->val$wallpaperF:Lcom/android/server/WallpaperManagerService;

    iput-object p13, p0, Lcom/android/server/ServerThread$1;->val$immF:Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, p14

    move-object v1, p0

    iput-object v0, v1, Lcom/android/server/ServerThread$1;->val$locationF:Lcom/android/server/LocationManagerService;

    move-object/from16 v0, p15

    move-object v1, p0

    iput-object v0, v1, Lcom/android/server/ServerThread$1;->val$vzwLocationF:Lcom/vzw/location/VzwLocationManagerService;

    move-object/from16 v0, p16

    move-object v1, p0

    iput-object v0, v1, Lcom/android/server/ServerThread$1;->val$throttleF:Lcom/android/server/ThrottleService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const-string v0, "SystemServer"

    const-string v1, "Making services ready"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$statusBarF:Lcom/android/server/StatusBarManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$statusBarF:Lcom/android/server/StatusBarManagerService;

    invoke-virtual {v0}, Lcom/android/server/StatusBarManagerService;->systemReady2()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$batteryF:Lcom/android/server/BatteryService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$batteryF:Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Lcom/android/server/BatteryService;->systemReady()V

    :cond_1
    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$connectivityF:Lcom/android/server/ConnectivityService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$connectivityF:Lcom/android/server/ConnectivityService;

    invoke-virtual {v0}, Lcom/android/server/ConnectivityService;->systemReady()V

    :cond_2
    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$dockF:Lcom/android/server/DockObserver;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$dockF:Lcom/android/server/DockObserver;

    invoke-virtual {v0}, Lcom/android/server/DockObserver;->systemReady()V

    :cond_3
    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$usbF:Lcom/android/server/usb/UsbService;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$usbF:Lcom/android/server/usb/UsbService;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbService;->systemReady()V

    :cond_4
    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$motDockF:Lcom/motorola/server/MotDockObserver;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$motDockF:Lcom/motorola/server/MotDockObserver;

    invoke-virtual {v0}, Lcom/motorola/server/MotDockObserver;->systemReady()V

    :cond_5
    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$uiModeF:Lcom/android/server/UiModeManagerService;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$uiModeF:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->systemReady()V

    :cond_6
    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$recognitionF:Lcom/android/server/RecognitionManagerService;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$recognitionF:Lcom/android/server/RecognitionManagerService;

    invoke-virtual {v0}, Lcom/android/server/RecognitionManagerService;->systemReady()V

    :cond_7
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/Watchdog;->start()V

    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$appWidgetF:Lcom/android/server/AppWidgetService;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$appWidgetF:Lcom/android/server/AppWidgetService;

    iget-boolean v1, p0, Lcom/android/server/ServerThread$1;->val$safeMode:Z

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetService;->systemReady(Z)V

    :cond_8
    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$wallpaperF:Lcom/android/server/WallpaperManagerService;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$wallpaperF:Lcom/android/server/WallpaperManagerService;

    invoke-virtual {v0}, Lcom/android/server/WallpaperManagerService;->systemReady()V

    :cond_9
    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$immF:Lcom/android/server/InputMethodManagerService;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$immF:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v0}, Lcom/android/server/InputMethodManagerService;->systemReady()V

    :cond_a
    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$locationF:Lcom/android/server/LocationManagerService;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$locationF:Lcom/android/server/LocationManagerService;

    invoke-virtual {v0}, Lcom/android/server/LocationManagerService;->systemReady()V

    :cond_b
    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$vzwLocationF:Lcom/vzw/location/VzwLocationManagerService;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$vzwLocationF:Lcom/vzw/location/VzwLocationManagerService;

    invoke-virtual {v0}, Lcom/vzw/location/VzwLocationManagerService;->systemReady()V

    :cond_c
    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$throttleF:Lcom/android/server/ThrottleService;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$throttleF:Lcom/android/server/ThrottleService;

    invoke-virtual {v0}, Lcom/android/server/ThrottleService;->systemReady()V

    :cond_d
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->systemReady()V

    return-void
.end method
