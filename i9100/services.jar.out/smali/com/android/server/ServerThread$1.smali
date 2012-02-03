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

.field final synthetic val$recognitionF:Lcom/android/server/RecognitionManagerService;

.field final synthetic val$safeMode:Z

.field final synthetic val$statusBarF:Lcom/android/server/StatusBarManagerService;

.field final synthetic val$throttleF:Lcom/android/server/ThrottleService;

.field final synthetic val$uiModeF:Lcom/android/server/UiModeManagerService;

.field final synthetic val$usbF:Lcom/android/server/usb/UsbService;

.field final synthetic val$wallpaperF:Lcom/android/server/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/ServerThread;Lcom/android/server/StatusBarManagerService;Lcom/android/server/BatteryService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/ThrottleService;)V
    .locals 0
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
    .line 761
    iput-object p1, p0, Lcom/android/server/ServerThread$1;->this$0:Lcom/android/server/ServerThread;

    iput-object p2, p0, Lcom/android/server/ServerThread$1;->val$statusBarF:Lcom/android/server/StatusBarManagerService;

    iput-object p3, p0, Lcom/android/server/ServerThread$1;->val$batteryF:Lcom/android/server/BatteryService;

    iput-object p4, p0, Lcom/android/server/ServerThread$1;->val$connectivityF:Lcom/android/server/ConnectivityService;

    iput-object p5, p0, Lcom/android/server/ServerThread$1;->val$dockF:Lcom/android/server/DockObserver;

    iput-object p6, p0, Lcom/android/server/ServerThread$1;->val$usbF:Lcom/android/server/usb/UsbService;

    iput-object p7, p0, Lcom/android/server/ServerThread$1;->val$uiModeF:Lcom/android/server/UiModeManagerService;

    iput-object p8, p0, Lcom/android/server/ServerThread$1;->val$recognitionF:Lcom/android/server/RecognitionManagerService;

    iput-object p9, p0, Lcom/android/server/ServerThread$1;->val$appWidgetF:Lcom/android/server/AppWidgetService;

    iput-boolean p10, p0, Lcom/android/server/ServerThread$1;->val$safeMode:Z

    iput-object p11, p0, Lcom/android/server/ServerThread$1;->val$wallpaperF:Lcom/android/server/WallpaperManagerService;

    iput-object p12, p0, Lcom/android/server/ServerThread$1;->val$immF:Lcom/android/server/InputMethodManagerService;

    iput-object p13, p0, Lcom/android/server/ServerThread$1;->val$locationF:Lcom/android/server/LocationManagerService;

    iput-object p14, p0, Lcom/android/server/ServerThread$1;->val$throttleF:Lcom/android/server/ThrottleService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const-string v2, "SystemServer"

    .line 763
    const-string v0, "SystemServer"

    const-string v0, "Making services ready"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$statusBarF:Lcom/android/server/StatusBarManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$statusBarF:Lcom/android/server/StatusBarManagerService;

    invoke-virtual {v0}, Lcom/android/server/StatusBarManagerService;->systemReady2()V

    .line 765
    :cond_0
    const-string v0, "SystemServer"

    const-string v0, "statusBarF systemReady"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$batteryF:Lcom/android/server/BatteryService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$batteryF:Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Lcom/android/server/BatteryService;->systemReady()V

    .line 767
    :cond_1
    const-string v0, "SystemServer"

    const-string v0, "batteryF systemReady"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$connectivityF:Lcom/android/server/ConnectivityService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$connectivityF:Lcom/android/server/ConnectivityService;

    invoke-virtual {v0}, Lcom/android/server/ConnectivityService;->systemReady()V

    .line 769
    :cond_2
    const-string v0, "SystemServer"

    const-string v0, "connectivityF systemReady"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$dockF:Lcom/android/server/DockObserver;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$dockF:Lcom/android/server/DockObserver;

    invoke-virtual {v0}, Lcom/android/server/DockObserver;->systemReady()V

    .line 771
    :cond_3
    const-string v0, "SystemServer"

    const-string v0, "dockF systemReady"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$usbF:Lcom/android/server/usb/UsbService;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$usbF:Lcom/android/server/usb/UsbService;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbService;->systemReady()V

    .line 773
    :cond_4
    const-string v0, "SystemServer"

    const-string v0, "usbF systemReady"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$uiModeF:Lcom/android/server/UiModeManagerService;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$uiModeF:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->systemReady()V

    .line 775
    :cond_5
    const-string v0, "SystemServer"

    const-string v0, "uiModeF systemReady"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$recognitionF:Lcom/android/server/RecognitionManagerService;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$recognitionF:Lcom/android/server/RecognitionManagerService;

    invoke-virtual {v0}, Lcom/android/server/RecognitionManagerService;->systemReady()V

    .line 777
    :cond_6
    const-string v0, "SystemServer"

    const-string v0, "recognitionF systemReady"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/Watchdog;->start()V

    .line 782
    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$appWidgetF:Lcom/android/server/AppWidgetService;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$appWidgetF:Lcom/android/server/AppWidgetService;

    iget-boolean v1, p0, Lcom/android/server/ServerThread$1;->val$safeMode:Z

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetService;->systemReady(Z)V

    .line 783
    :cond_7
    const-string v0, "SystemServer"

    const-string v0, "appWidgetF systemReady"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$wallpaperF:Lcom/android/server/WallpaperManagerService;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$wallpaperF:Lcom/android/server/WallpaperManagerService;

    invoke-virtual {v0}, Lcom/android/server/WallpaperManagerService;->systemReady()V

    .line 785
    :cond_8
    const-string v0, "SystemServer"

    const-string v0, "wallpaperF systemReady"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$immF:Lcom/android/server/InputMethodManagerService;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$immF:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v0}, Lcom/android/server/InputMethodManagerService;->systemReady()V

    .line 787
    :cond_9
    const-string v0, "SystemServer"

    const-string v0, "immF systemReady"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$locationF:Lcom/android/server/LocationManagerService;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$locationF:Lcom/android/server/LocationManagerService;

    invoke-virtual {v0}, Lcom/android/server/LocationManagerService;->systemReady()V

    .line 789
    :cond_a
    const-string v0, "SystemServer"

    const-string v0, "locationF systemReady"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$throttleF:Lcom/android/server/ThrottleService;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/ServerThread$1;->val$throttleF:Lcom/android/server/ThrottleService;

    invoke-virtual {v0}, Lcom/android/server/ThrottleService;->systemReady()V

    .line 791
    :cond_b
    const-string v0, "SystemServer"

    const-string v0, "throttleF systemReady"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    const-string v0, "SystemServer"

    const-string v0, "!@endofActivityManagersystemReady()"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    return-void
.end method
