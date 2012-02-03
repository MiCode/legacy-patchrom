.class public Lcom/android/server/usb/UsbService;
.super Landroid/hardware/usb/IUsbManager$Stub;
.source "UsbService.java"


# static fields
.field private static final HEADSET_TEST_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/h2w"

.field private static final MSG_FUNCTION_DISABLED:I = 0x2

.field private static final MSG_FUNCTION_ENABLED:I = 0x1

.field private static final MSG_UPDATE_STATE:I = 0x0

.field private static final STATE_OVER_CURRENT:I = 0x0

.field private static final STATE_UNKNOWN_DEVICE:I = 0x1

.field private static final TAG:Ljava/lang/String; = null

.field private static final UPDATE_DELAY:I = 0x3e8

.field private static final USB_COMPOSITE_CLASS_PATH:Ljava/lang/String; = "/sys/class/usb_composite"

.field private static final USB_CONFIGURATION_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/usb_configuration"

.field private static final USB_CONFIGURATION_PATH:Ljava/lang/String; = "/sys/class/switch/usb_configuration/state"

.field private static final USB_CONNECTED_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/usb_connected"

.field private static final USB_CONNECTED_PATH:Ljava/lang/String; = "/sys/class/switch/usb_connected/state"

.field private static final USB_FUNCTIONS_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/usb_composite/"

.field private static final USB_LOG:Z = true

.field private static final USB_RNDIS_ENABLE:Ljava/lang/String; = "/sys/class/usb_composite/rndis/enable"

.field private static final USB_VEROSE:Z = true

.field private static final obserberNotificationTestFlag:Z


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

.field private mHasUsbAccessory:Z

.field private mLastConfiguration:I

.field private mLastConnected:I

.field private final mLock:Ljava/lang/Object;

.field private mPowerManagerService:Landroid/os/IPowerManager;

.field private mSystemReady:Z

.field private final mUEventObserver:Landroid/os/UEventObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
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

    .line 234
    invoke-direct {p0}, Landroid/hardware/usb/IUsbManager$Stub;-><init>()V

    .line 108
    iput v1, p0, Lcom/android/server/usb/UsbService;->mLastConnected:I

    .line 109
    iput v1, p0, Lcom/android/server/usb/UsbService;->mLastConfiguration:I

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mEnabledFunctions:Ljava/util/ArrayList;

    .line 113
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mDisabledFunctions:Ljava/util/ArrayList;

    .line 119
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mDefaultFunctions:Ljava/util/ArrayList;

    .line 122
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    .line 172
    new-instance v1, Lcom/android/server/usb/UsbService$1;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbService$1;-><init>(Lcom/android/server/usb/UsbService;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mUEventObserver:Landroid/os/UEventObserver;

    .line 223
    new-instance v1, Lcom/android/server/usb/UsbService$2;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbService$2;-><init>(Lcom/android/server/usb/UsbService;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    .line 447
    new-instance v1, Lcom/android/server/usb/UsbService$3;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbService$3;-><init>(Lcom/android/server/usb/UsbService;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mHandler:Landroid/os/Handler;

    .line 235
    iput-object p1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 236
    new-instance v1, Lcom/android/server/usb/UsbDeviceSettingsManager;

    invoke-direct {v1, p1}, Lcom/android/server/usb/UsbDeviceSettingsManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceSettingsManager;

    .line 237
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 238
    .local v0, pm:Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.usb.accessory"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/usb/UsbService;->mHasUsbAccessory:Z

    .line 240
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 241
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usb/UsbService;->init()V

    .line 244
    iget v2, p0, Lcom/android/server/usb/UsbService;->mConfiguration:I

    if-ltz v2, :cond_0

    .line 245
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v3, "DEVPATH=/devices/virtual/switch/usb_connected"

    invoke-virtual {v2, v3}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 246
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v3, "DEVPATH=/devices/virtual/switch/usb_configuration"

    invoke-virtual {v2, v3}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 247
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v3, "DEVPATH=/devices/virtual/usb_composite/"

    invoke-virtual {v2, v3}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 249
    :cond_0
    monitor-exit v1

    .line 250
    return-void

    .line 249
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
    .line 65
    sget-object v0, Lcom/android/server/usb/UsbService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/usb/UsbService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDisabledFunctions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/usb/UsbService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/server/usb/UsbService;->mLastConnected:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/usb/UsbService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/android/server/usb/UsbService;->mLastConnected:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/usb/UsbService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/server/usb/UsbService;->mLastConfiguration:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/usb/UsbService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/android/server/usb/UsbService;->mLastConfiguration:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/usb/UsbService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDefaultFunctions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/usb/UsbService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/usb/UsbService;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbService;->functionEnabledLocked(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/usb/UsbService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/server/usb/UsbService;->mConnected:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/usb/UsbService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/android/server/usb/UsbService;->mConnected:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/usb/UsbService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/server/usb/UsbService;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/usb/UsbService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbService;->update(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/usb/UsbService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/server/usb/UsbService;->mConfiguration:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/usb/UsbService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/android/server/usb/UsbService;->mConfiguration:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/usb/UsbService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/usb/UsbService;)Landroid/hardware/usb/UsbAccessory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/usb/UsbService;Landroid/hardware/usb/UsbAccessory;)Landroid/hardware/usb/UsbAccessory;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/server/usb/UsbService;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/usb/UsbService;)Lcom/android/server/usb/UsbDeviceSettingsManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceSettingsManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/usb/UsbService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mEnabledFunctions:Ljava/util/ArrayList;

    return-object v0
.end method

.method private final functionEnabledLocked(Ljava/lang/String;Z)V
    .locals 3
    .parameter "function"
    .parameter "enabled"

    .prologue
    .line 151
    sget-object v0, Lcom/android/server/usb/UsbService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "functionEnabledLocked :: function = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    if-eqz p2, :cond_2

    .line 153
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mEnabledFunctions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mEnabledFunctions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDisabledFunctions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 158
    const-string v0, "accessory"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    invoke-direct {p0}, Lcom/android/server/usb/UsbService;->readCurrentAccessoryLocked()V

    .line 167
    :cond_1
    :goto_0
    return-void

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDisabledFunctions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 163
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDisabledFunctions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_3
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mEnabledFunctions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private final init()V
    .locals 13

    .prologue
    .line 253
    const/16 v10, 0x400

    new-array v0, v10, [C

    .line 254
    .local v0, buffer:[C
    const/4 v6, 0x0

    .line 257
    .local v6, inAccessoryMode:Z
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/server/usb/UsbService;->mConfiguration:I

    .line 266
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    const-string v10, "/sys/class/switch/usb_configuration/state"

    invoke-direct {v2, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 267
    .local v2, file:Ljava/io/FileReader;
    const/4 v10, 0x0

    const/16 v11, 0x400

    invoke-virtual {v2, v0, v10, v11}, Ljava/io/FileReader;->read([CII)I

    move-result v7

    .line 268
    .local v7, len:I
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 269
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

    .line 270
    sget-object v10, Lcom/android/server/usb/UsbService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "init :: mConfiguration = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/usb/UsbService;->mConfiguration:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 277
    .end local v2           #file:Ljava/io/FileReader;
    .end local v7           #len:I
    :goto_0
    iget v10, p0, Lcom/android/server/usb/UsbService;->mConfiguration:I

    if-gez v10, :cond_1

    .line 328
    :cond_0
    :goto_1
    return-void

    .line 272
    :catch_0
    move-exception v10

    move-object v1, v10

    .line 273
    .local v1, e:Ljava/io/FileNotFoundException;
    sget-object v10, Lcom/android/server/usb/UsbService;->TAG:Ljava/lang/String;

    const-string v11, "This kernel does not have USB configuration switch support"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 274
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v10

    move-object v1, v10

    .line 275
    .local v1, e:Ljava/lang/Exception;
    sget-object v10, Lcom/android/server/usb/UsbService;->TAG:Ljava/lang/String;

    const-string v11, ""

    invoke-static {v10, v11, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 284
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    new-instance v10, Ljava/io/File;

    const-string v11, "/sys/class/usb_composite"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 285
    .local v3, files:[Ljava/io/File;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    array-length v10, v3

    if-ge v5, v10, :cond_4

    .line 286
    new-instance v2, Ljava/io/File;

    aget-object v10, v3, v5

    const-string v11, "enable"

    invoke-direct {v2, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 287
    .local v2, file:Ljava/io/File;
    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 288
    .local v8, reader:Ljava/io/FileReader;
    const/4 v10, 0x0

    const/16 v11, 0x400

    invoke-virtual {v8, v0, v10, v11}, Ljava/io/FileReader;->read([CII)I

    move-result v7

    .line 289
    .restart local v7       #len:I
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V

    .line 290
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v10, v0, v11, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 291
    .local v9, value:I
    aget-object v10, v3, v5

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 292
    .local v4, functionName:Ljava/lang/String;
    sget-object v10, Lcom/android/server/usb/UsbService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "init :: functionName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", value = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 294
    iget-object v10, p0, Lcom/android/server/usb/UsbService;->mEnabledFunctions:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    const-string v10, "accessory"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 298
    const/4 v6, 0x1

    .line 285
    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 299
    :cond_3
    const-string v10, "adb"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 302
    iget-object v10, p0, Lcom/android/server/usb/UsbService;->mDefaultFunctions:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_3

    .line 308
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

    .line 309
    .local v1, e:Ljava/io/FileNotFoundException;
    sget-object v10, Lcom/android/server/usb/UsbService;->TAG:Ljava/lang/String;

    const-string v11, "This kernel does not have USB composite class support"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_4
    :goto_4
    if-eqz v6, :cond_0

    .line 317
    invoke-direct {p0}, Lcom/android/server/usb/UsbService;->readCurrentAccessoryLocked()V

    .line 322
    iget-object v10, p0, Lcom/android/server/usb/UsbService;->mDisabledFunctions:Ljava/util/ArrayList;

    const-string v11, "mtp"

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 323
    iget-object v10, p0, Lcom/android/server/usb/UsbService;->mDefaultFunctions:Ljava/util/ArrayList;

    const-string v11, "mtp"

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 305
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

    .line 310
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

    .line 311
    .local v1, e:Ljava/lang/Exception;
    sget-object v10, Lcom/android/server/usb/UsbService;->TAG:Ljava/lang/String;

    const-string v11, ""

    invoke-static {v10, v11, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 324
    .end local v1           #e:Ljava/lang/Exception;
    :cond_6
    iget-object v10, p0, Lcom/android/server/usb/UsbService;->mDisabledFunctions:Ljava/util/ArrayList;

    const-string v11, "mass_storage"

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 325
    iget-object v10, p0, Lcom/android/server/usb/UsbService;->mDefaultFunctions:Ljava/util/ArrayList;

    const-string v11, "mass_storage"

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private native nativeGetAccessoryStrings()[Ljava/lang/String;
.end method

.method private native nativeOpenAccessory()Landroid/os/ParcelFileDescriptor;
.end method

.method private final readCurrentAccessoryLocked()V
    .locals 4

    .prologue
    .line 133
    iget-boolean v1, p0, Lcom/android/server/usb/UsbService;->mHasUsbAccessory:Z

    if-eqz v1, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/android/server/usb/UsbService;->nativeGetAccessoryStrings()[Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, strings:[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 136
    new-instance v1, Landroid/hardware/usb/UsbAccessory;

    invoke-direct {v1, v0}, Landroid/hardware/usb/UsbAccessory;-><init>([Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 137
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

    .line 138
    iget-boolean v1, p0, Lcom/android/server/usb/UsbService;->mSystemReady:Z

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceSettingsManager;

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbDeviceSettingsManager;->accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V

    .line 145
    .end local v0           #strings:[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 142
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

    .line 389
    const/4 p1, 0x0

    .line 390
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 391
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x3e8

    :goto_0
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 392
    return-void

    .line 391
    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearDefaults(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceSettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDeviceSettingsManager;->clearDefaults(Ljava/lang/String;)V

    .line 442
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

    .line 527
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 529
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

    .line 559
    :goto_0
    return-void

    .line 535
    :cond_0
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 536
    :try_start_0
    const-string v1, "USB Manager State:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 538
    const-string v1, "  USB Device State:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 539
    const-string v1, "    Enabled Functions: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 540
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mEnabledFunctions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 541
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

    .line 540
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 543
    :cond_1
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 544
    const-string v1, "    Disabled Functions: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 545
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mDisabledFunctions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 546
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

    .line 545
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 548
    :cond_2
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 549
    const-string v1, "    Default Functions: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 550
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mDefaultFunctions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 551
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

    .line 550
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 553
    :cond_3
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 554
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

    .line 555
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

    .line 557
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceSettingsManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usb/UsbDeviceSettingsManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    .line 558
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
    .line 396
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    return-object v0
.end method

.method public grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    .locals 3
    .parameter "accessory"
    .parameter "uid"

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceSettingsManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceSettingsManager;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    .line 432
    return-void
.end method

.method public hasAccessoryPermission(Landroid/hardware/usb/UsbAccessory;)Z
    .locals 1
    .parameter "accessory"

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceSettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDeviceSettingsManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v0

    return v0
.end method

.method public hasDefaults(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceSettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDeviceSettingsManager;->hasDefaults(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .parameter "accessory"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 402
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    if-nez v1, :cond_0

    .line 403
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "no accessory attached"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 412
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 405
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v1, p1}, Landroid/hardware/usb/UsbAccessory;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 406
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

    .line 408
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "accessory not attached"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 410
    :cond_1
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceSettingsManager;

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbDeviceSettingsManager;->checkPermission(Landroid/hardware/usb/UsbAccessory;)V

    .line 411
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
    .line 426
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceSettingsManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/usb/UsbDeviceSettingsManager;->requestPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 427
    return-void
.end method

.method public setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;)V
    .locals 3
    .parameter "accessory"
    .parameter "packageName"

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceSettingsManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceSettingsManager;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;)V

    .line 418
    return-void
.end method

.method public systemReady()V
    .locals 5

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 371
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbService;->update(Z)V

    .line 372
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v1, :cond_0

    .line 373
    sget-object v1, Lcom/android/server/usb/UsbService;->TAG:Ljava/lang/String;

    const-string v2, "accessoryAttached at systemReady"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 379
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/usb/UsbService;->mSystemReady:Z

    .line 380
    monitor-exit v0

    .line 381
    return-void

    .line 380
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
