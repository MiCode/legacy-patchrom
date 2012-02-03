.class Lcom/android/server/usb/UsbDeviceSettingsManager$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "UsbDeviceSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceSettingsManager;


# direct methods
.method private constructor <init>(Lcom/android/server/usb/UsbDeviceSettingsManager;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$MyPackageMonitor;->this$0:Lcom/android/server/usb/UsbDeviceSettingsManager;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usb/UsbDeviceSettingsManager;Lcom/android/server/usb/UsbDeviceSettingsManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceSettingsManager$MyPackageMonitor;-><init>(Lcom/android/server/usb/UsbDeviceSettingsManager;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 3
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 196
    const-string v0, "UsbDeviceSettingsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPackageAdded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$MyPackageMonitor;->this$0:Lcom/android/server/usb/UsbDeviceSettingsManager;

    #calls: Lcom/android/server/usb/UsbDeviceSettingsManager;->handlePackageUpdate(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/server/usb/UsbDeviceSettingsManager;->access$000(Lcom/android/server/usb/UsbDeviceSettingsManager;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"
    .parameter "uid"
    .parameter "components"

    .prologue
    .line 201
    const-string v0, "UsbDeviceSettingsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPackageChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$MyPackageMonitor;->this$0:Lcom/android/server/usb/UsbDeviceSettingsManager;

    #calls: Lcom/android/server/usb/UsbDeviceSettingsManager;->handlePackageUpdate(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/server/usb/UsbDeviceSettingsManager;->access$000(Lcom/android/server/usb/UsbDeviceSettingsManager;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 3
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 206
    const-string v0, "UsbDeviceSettingsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPackageRemoved = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$MyPackageMonitor;->this$0:Lcom/android/server/usb/UsbDeviceSettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDeviceSettingsManager;->clearDefaults(Ljava/lang/String;)V

    .line 208
    return-void
.end method
