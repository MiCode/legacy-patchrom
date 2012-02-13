.class public Landroid/hardware/usb/UsbManager;
.super Ljava/lang/Object;
.source "UsbManager.java"


# static fields
.field public static final ACTION_USB_ACCESSORY_ATTACHED:Ljava/lang/String; = "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

.field public static final ACTION_USB_ACCESSORY_DETACHED:Ljava/lang/String; = "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

.field public static final ACTION_USB_STATE:Ljava/lang/String; = "android.hardware.usb.action.USB_STATE"

.field public static final EXTRA_ACCESSORY:Ljava/lang/String; = "accessory"

.field public static final EXTRA_PERMISSION_GRANTED:Ljava/lang/String; = "permission"

.field private static final TAG:Ljava/lang/String; = "UsbManager"

.field public static final USB_CONFIGURATION:Ljava/lang/String; = "configuration"

.field public static final USB_CONNECTED:Ljava/lang/String; = "connected"

.field public static final USB_FUNCTION_ACCESSORY:Ljava/lang/String; = "accessory"

.field public static final USB_FUNCTION_ADB:Ljava/lang/String; = "adb"

.field public static final USB_FUNCTION_DISABLED:Ljava/lang/String; = "disabled"

.field public static final USB_FUNCTION_ENABLED:Ljava/lang/String; = "enabled"

.field public static final USB_FUNCTION_MASS_STORAGE:Ljava/lang/String; = "mass_storage"

.field public static final USB_FUNCTION_MTP:Ljava/lang/String; = "mtp"

.field public static final USB_FUNCTION_RNDIS:Ljava/lang/String; = "rndis"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/hardware/usb/IUsbManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/usb/IUsbManager;)V
    .locals 0
    .parameter "context"
    .parameter "service"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/usb/UsbManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    return-void
.end method

.method private static getFunctionEnableFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "function"

    .prologue
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sys/class/usb_composite/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/enable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static isFunctionEnabled(Ljava/lang/String;)Z
    .locals 6
    .parameter "function"

    .prologue
    const/4 v5, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-static {p0}, Landroid/hardware/usb/UsbManager;->getFunctionEnableFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .local v2, stream:Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v3

    const/16 v4, 0x31

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move v1, v3

    .local v1, enabled:Z
    :goto_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v1

    .end local v1           #enabled:Z
    .end local v2           #stream:Ljava/io/FileInputStream;
    :goto_1
    return v3

    .restart local v2       #stream:Ljava/io/FileInputStream;
    :cond_0
    move v1, v5

    goto :goto_0

    .end local v2           #stream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/io/IOException;
    move v3, v5

    goto :goto_1
.end method

.method public static isFunctionSupported(Ljava/lang/String;)Z
    .locals 1
    .parameter "function"

    .prologue
    invoke-static {p0}, Landroid/hardware/usb/UsbManager;->getFunctionEnableFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static setFunctionEnabled(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "function"
    .parameter "enable"

    .prologue
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-static {p0}, Landroid/hardware/usb/UsbManager;->getFunctionEnableFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .local v1, stream:Ljava/io/FileOutputStream;
    if-eqz p1, :cond_0

    const/16 v2, 0x31

    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write(I)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    .end local v1           #stream:Ljava/io/FileOutputStream;
    :goto_1
    return v2

    .restart local v1       #stream:Ljava/io/FileOutputStream;
    :cond_0
    const/16 v2, 0x30

    goto :goto_0

    .end local v1           #stream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getAccessoryList()[Landroid/hardware/usb/UsbAccessory;
    .locals 5

    .prologue
    const/4 v4, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v2}, Landroid/hardware/usb/IUsbManager;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    .local v0, accessory:Landroid/hardware/usb/UsbAccessory;
    if-nez v0, :cond_0

    move-object v2, v4

    .end local v0           #accessory:Landroid/hardware/usb/UsbAccessory;
    :goto_0
    return-object v2

    .restart local v0       #accessory:Landroid/hardware/usb/UsbAccessory;
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/hardware/usb/UsbAccessory;

    const/4 v3, 0x0

    aput-object v0, v2, v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0           #accessory:Landroid/hardware/usb/UsbAccessory;
    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "UsbManager"

    const-string v3, "RemoteException in getAccessoryList"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v4

    goto :goto_0
.end method

.method public hasPermission(Landroid/hardware/usb/UsbAccessory;)Z
    .locals 3
    .parameter "accessory"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v1, p1}, Landroid/hardware/usb/IUsbManager;->hasAccessoryPermission(Landroid/hardware/usb/UsbAccessory;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "UsbManager"

    const-string v2, "RemoteException in hasPermission"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .parameter "accessory"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v1, p1}, Landroid/hardware/usb/IUsbManager;->openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "UsbManager"

    const-string v2, "RemoteException in openAccessory"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestPermission(Landroid/hardware/usb/UsbAccessory;Landroid/app/PendingIntent;)V
    .locals 3
    .parameter "accessory"
    .parameter "pi"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    iget-object v2, p0, Landroid/hardware/usb/UsbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/hardware/usb/IUsbManager;->requestAccessoryPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "UsbManager"

    const-string v2, "RemoteException in requestPermission"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
