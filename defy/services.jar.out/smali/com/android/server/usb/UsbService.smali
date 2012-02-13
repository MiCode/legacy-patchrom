.class public Lcom/android/server/usb/UsbService;
.super Landroid/hardware/usb/IUsbManager$Stub;
.source "UsbService.java"


# static fields
.field private static final LOG:Z = false

.field private static final MSG_FUNCTION_DISABLED:I = 0x2

.field private static final MSG_FUNCTION_ENABLED:I = 0x1

.field private static final MSG_UPDATE_STATE:I = 0x0

.field private static final TAG:Ljava/lang/String; = null

.field private static final UPDATE_DELAY:I = 0x3e8

.field private static final USB_COMPOSITE_CLASS_PATH:Ljava/lang/String; = "/sys/class/usb_composite"

.field private static final USB_CONFIGURATION_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/usb_configuration"

.field private static final USB_CONFIGURATION_PATH:Ljava/lang/String; = "/sys/class/switch/usb_configuration/state"

.field private static final USB_CONNECTED_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/usb_connected"

.field private static final USB_CONNECTED_PATH:Ljava/lang/String; = "/sys/class/switch/usb_connected/state"

.field private static final USB_FUNCTIONS_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/usb_composite/"


# instance fields
.field private final mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

.field private mConfiguration:I

.field private mConnected:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

.field private final mDefaultFunctions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceManager:Lcom/android/server/usb/UsbDeviceSettingsManager;

.field private final mDisabledFunctions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnabledFunctions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHasUsbAccessory:Z

.field private mLastConfiguration:I

.field private mLastConnected:I

.field private final mLock:Ljava/lang/Object;

.field private mSystemReady:Z

.field private final mUEventObserver:Landroid/os/UEventObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/android/server/usb/UsbService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, -0x1

    invoke-direct {p0}, Landroid/hardware/usb/IUsbManager$Stub;-><init>()V

    iput v1, p0, Lcom/android/server/usb/UsbService;->mLastConnected:I

    iput v1, p0, Lcom/android/server/usb/UsbService;->mLastConfiguration:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mEnabledFunctions:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mDisabledFunctions:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mDefaultFunctions:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    new-instance v1, Lcom/android/server/usb/UsbService$1;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbService$1;-><init>(Lcom/android/server/usb/UsbService;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mUEventObserver:Landroid/os/UEventObserver;

    new-instance v1, Lcom/android/server/usb/UsbService$2;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbService$2;-><init>(Lcom/android/server/usb/UsbService;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/usb/UsbService$3;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbService$3;-><init>(Lcom/android/server/usb/UsbService;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/usb/UsbDeviceSettingsManager;

    invoke-direct {v1, p1}, Lcom/android/server/usb/UsbDeviceSettingsManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceSettingsManager;

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .local v0, pm:Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.usb.accessory"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/usb/UsbService;->mHasUsbAccessory:Z

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usb/UsbService;->init()V

    iget v2, p0, Lcom/android/server/usb/UsbService;->mConfiguration:I

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v3, "DEVPATH=/devices/virtual/switch/usb_connected"

    invoke-virtual {v2, v3}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v3, "DEVPATH=/devices/virtual/switch/usb_configuration"

    invoke-virtual {v2, v3}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v3, "DEVPATH=/devices/virtual/usb_composite/"

    invoke-virtual {v2, v3}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/usb/UsbService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/usb/UsbService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDisabledFunctions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/usb/UsbService;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/usb/UsbService;->mLastConnected:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/usb/UsbService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/server/usb/UsbService;->mLastConnected:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/usb/UsbService;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/usb/UsbService;->mLastConfiguration:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/usb/UsbService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/server/usb/UsbService;->mLastConfiguration:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/usb/UsbService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDefaultFunctions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/usb/UsbService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/usb/UsbService;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbService;->functionEnabledLocked(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/usb/UsbService;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/usb/UsbService;->mConnected:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/usb/UsbService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/server/usb/UsbService;->mConnected:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/usb/UsbService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/usb/UsbService;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/usb/UsbService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbService;->update(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/usb/UsbService;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/usb/UsbService;->mConfiguration:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/usb/UsbService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/server/usb/UsbService;->mConfiguration:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/usb/UsbService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/usb/UsbService;)Landroid/hardware/usb/UsbAccessory;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/usb/UsbService;Landroid/hardware/usb/UsbAccessory;)Landroid/hardware/usb/UsbAccessory;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/server/usb/UsbService;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/usb/UsbService;)Lcom/android/server/usb/UsbDeviceSettingsManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceSettingsManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/usb/UsbService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mEnabledFunctions:Ljava/util/ArrayList;

    return-object v0
.end method

.method private final functionEnabledLocked(Ljava/lang/String;Z)V
    .locals 1
    .parameter "function"
    .parameter "enabled"

    .prologue
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mEnabledFunctions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mEnabledFunctions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDisabledFunctions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string v0, "accessory"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/usb/UsbService;->readCurrentAccessoryLocked()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDisabledFunctions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDisabledFunctions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mEnabledFunctions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private final init()V
    .locals 15

    .prologue
    const/16 v10, 0x400

    const-string v14, "mtp"

    const-string v13, "mass_storage"

    const-string v12, ""

    new-array v0, v10, [C

    .local v0, buffer:[C
    const/4 v6, 0x0

    .local v6, inAccessoryMode:Z
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/server/usb/UsbService;->mConfiguration:I

    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    const-string v10, "/sys/class/switch/usb_connected/state"

    invoke-direct {v2, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .local v2, file:Ljava/io/FileReader;
    const/4 v10, 0x0

    const/16 v11, 0x400

    invoke-virtual {v2, v0, v10, v11}, Ljava/io/FileReader;->read([CII)I

    move-result v7

    .local v7, len:I
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v10, v0, v11, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, p0, Lcom/android/server/usb/UsbService;->mConnected:I

    new-instance v2, Ljava/io/FileReader;

    .end local v2           #file:Ljava/io/FileReader;
    const-string v10, "/sys/class/switch/usb_configuration/state"

    invoke-direct {v2, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .restart local v2       #file:Ljava/io/FileReader;
    const/4 v10, 0x0

    const/16 v11, 0x400

    invoke-virtual {v2, v0, v10, v11}, Ljava/io/FileReader;->read([CII)I

    move-result v7

    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v10, v0, v11, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, p0, Lcom/android/server/usb/UsbService;->mConfiguration:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2           #file:Ljava/io/FileReader;
    .end local v7           #len:I
    :goto_0
    iget v10, p0, Lcom/android/server/usb/UsbService;->mConfiguration:I

    if-gez v10, :cond_1

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v10

    move-object v1, v10

    .local v1, e:Ljava/io/FileNotFoundException;
    sget-object v10, Lcom/android/server/usb/UsbService;->TAG:Ljava/lang/String;

    const-string v11, "This kernel does not have USB configuration switch support"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v10

    move-object v1, v10

    .local v1, e:Ljava/lang/Exception;
    sget-object v10, Lcom/android/server/usb/UsbService;->TAG:Ljava/lang/String;

    const-string v11, ""

    invoke-static {v10, v12, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    new-instance v10, Ljava/io/File;

    const-string v11, "/sys/class/usb_composite"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .local v3, files:[Ljava/io/File;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    array-length v10, v3

    if-ge v5, v10, :cond_4

    new-instance v2, Ljava/io/File;

    aget-object v10, v3, v5

    const-string v11, "enable"

    invoke-direct {v2, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v2, file:Ljava/io/File;
    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .local v8, reader:Ljava/io/FileReader;
    const/4 v10, 0x0

    const/16 v11, 0x400

    invoke-virtual {v8, v0, v10, v11}, Ljava/io/FileReader;->read([CII)I

    move-result v7

    .restart local v7       #len:I
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V

    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v10, v0, v11, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .local v9, value:I
    aget-object v10, v3, v5

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .local v4, functionName:Ljava/lang/String;
    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    iget-object v10, p0, Lcom/android/server/usb/UsbService;->mEnabledFunctions:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v10, "accessory"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v6, 0x1

    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    const-string v10, "adb"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/android/server/usb/UsbService;->mDefaultFunctions:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_3

    .end local v2           #file:Ljava/io/File;
    .end local v3           #files:[Ljava/io/File;
    .end local v4           #functionName:Ljava/lang/String;
    .end local v5           #i:I
    .end local v7           #len:I
    .end local v8           #reader:Ljava/io/FileReader;
    .end local v9           #value:I
    :catch_2
    move-exception v10

    move-object v1, v10

    .local v1, e:Ljava/io/FileNotFoundException;
    sget-object v10, Lcom/android/server/usb/UsbService;->TAG:Ljava/lang/String;

    const-string v11, "This kernel does not have USB composite class support"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_4
    :goto_4
    if-eqz v6, :cond_0

    invoke-direct {p0}, Lcom/android/server/usb/UsbService;->readCurrentAccessoryLocked()V

    iget-object v10, p0, Lcom/android/server/usb/UsbService;->mDisabledFunctions:Ljava/util/ArrayList;

    const-string v11, "mtp"

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/server/usb/UsbService;->mDefaultFunctions:Ljava/util/ArrayList;

    const-string v11, "mtp"

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #files:[Ljava/io/File;
    .restart local v4       #functionName:Ljava/lang/String;
    .restart local v5       #i:I
    .restart local v7       #len:I
    .restart local v8       #reader:Ljava/io/FileReader;
    .restart local v9       #value:I
    :cond_5
    :try_start_2
    iget-object v10, p0, Lcom/android/server/usb/UsbService;->mDisabledFunctions:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    .end local v2           #file:Ljava/io/File;
    .end local v3           #files:[Ljava/io/File;
    .end local v4           #functionName:Ljava/lang/String;
    .end local v5           #i:I
    .end local v7           #len:I
    .end local v8           #reader:Ljava/io/FileReader;
    .end local v9           #value:I
    :catch_3
    move-exception v10

    move-object v1, v10

    .local v1, e:Ljava/lang/Exception;
    sget-object v10, Lcom/android/server/usb/UsbService;->TAG:Ljava/lang/String;

    const-string v11, ""

    invoke-static {v10, v12, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .end local v1           #e:Ljava/lang/Exception;
    :cond_6
    iget-object v10, p0, Lcom/android/server/usb/UsbService;->mDisabledFunctions:Ljava/util/ArrayList;

    const-string v11, "mass_storage"

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/server/usb/UsbService;->mDefaultFunctions:Ljava/util/ArrayList;

    const-string v11, "mass_storage"

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private native nativeGetAccessoryStrings()[Ljava/lang/String;
.end method

.method private native nativeOpenAccessory()Landroid/os/ParcelFileDescriptor;
.end method

.method private final readCurrentAccessoryLocked()V
    .locals 4

    .prologue
    iget-boolean v1, p0, Lcom/android/server/usb/UsbService;->mHasUsbAccessory:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/usb/UsbService;->nativeGetAccessoryStrings()[Ljava/lang/String;

    move-result-object v0

    .local v0, strings:[Ljava/lang/String;
    if-eqz v0, :cond_1

    new-instance v1, Landroid/hardware/usb/UsbAccessory;

    invoke-direct {v1, v0}, Landroid/hardware/usb/UsbAccessory;-><init>([Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    sget-object v1, Lcom/android/server/usb/UsbService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "entering USB accessory mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/server/usb/UsbService;->mSystemReady:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceSettingsManager;

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbDeviceSettingsManager;->accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V

    .end local v0           #strings:[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .restart local v0       #strings:[Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/android/server/usb/UsbService;->TAG:Ljava/lang/String;

    const-string v2, "nativeGetAccessoryStrings failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final update(Z)V
    .locals 4
    .parameter "delayed"

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x3e8

    :goto_0
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearDefaults(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceSettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDeviceSettingsManager;->clearDefaults(Ljava/lang/String;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const-string v1, " "

    const-string v1, ""

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: can\'t dump UsbManager from from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v1, "USB Manager State:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  USB Device State:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Enabled Functions: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mEnabledFunctions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mEnabledFunctions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Disabled Functions: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mDisabledFunctions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mDisabledFunctions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Default Functions: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mDefaultFunctions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mDefaultFunctions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mConnected: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/usb/UsbService;->mConnected:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mConfiguration: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/usb/UsbService;->mConfiguration:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mCurrentAccessory: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceSettingsManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usb/UsbDeviceSettingsManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    monitor-exit v2

    goto/16 :goto_0

    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    return-object v0
.end method

.method public grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    .locals 3
    .parameter "accessory"
    .parameter "uid"

    .prologue
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceSettingsManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceSettingsManager;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    return-void
.end method

.method public hasAccessoryPermission(Landroid/hardware/usb/UsbAccessory;)Z
    .locals 1
    .parameter "accessory"

    .prologue
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceSettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDeviceSettingsManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v0

    return v0
.end method

.method public hasDefaults(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceSettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDeviceSettingsManager;->hasDefaults(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .parameter "accessory"

    .prologue
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "no accessory attached"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v1, p1}, Landroid/hardware/usb/UsbAccessory;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/server/usb/UsbService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not match current accessory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "accessory not attached"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceSettingsManager;

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbDeviceSettingsManager;->checkPermission(Landroid/hardware/usb/UsbAccessory;)V

    invoke-direct {p0}, Lcom/android/server/usb/UsbService;->nativeOpenAccessory()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method public requestAccessoryPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 1
    .parameter "accessory"
    .parameter "packageName"
    .parameter "pi"

    .prologue
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceSettingsManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/usb/UsbDeviceSettingsManager;->requestPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;)V
    .locals 3
    .parameter "accessory"
    .parameter "packageName"

    .prologue
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceSettingsManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceSettingsManager;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;)V

    return-void
.end method

.method public systemReady()V
    .locals 5

    .prologue
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbService;->update(Z)V

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/usb/UsbService;->TAG:Ljava/lang/String;

    const-string v2, "accessoryAttached at systemReady"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/usb/UsbService;->mSystemReady:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
