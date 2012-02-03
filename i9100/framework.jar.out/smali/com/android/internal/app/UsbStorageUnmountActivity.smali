.class public Lcom/android/internal/app/UsbStorageUnmountActivity;
.super Landroid/app/Activity;
.source "UsbStorageUnmountActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbStorageUnmountActivity"

.field private static final localLOGD:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const-string v5, "UsbStorageUnmountActivity"

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const-string v3, "UsbStorageUnmountActivity"

    const-string/jumbo v3, "onCreate!"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :try_start_0
    const-string/jumbo v3, "usbstorage"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 41
    .local v2, service:Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 42
    invoke-static {v2}, Landroid/os/storage/IUsbStorageService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IUsbStorageService;

    move-result-object v1

    .line 43
    .local v1, mUsbStorageService:Landroid/os/storage/IUsbStorageService;
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/os/storage/IUsbStorageService;->unmountVolume(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v1           #mUsbStorageService:Landroid/os/storage/IUsbStorageService;
    .end local v2           #service:Landroid/os/IBinder;
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/UsbStorageUnmountActivity;->finish()V

    .line 52
    return-void

    .line 45
    .restart local v2       #service:Landroid/os/IBinder;
    :cond_0
    :try_start_1
    const-string v3, "UsbStorageUnmountActivity"

    const-string v4, "Can\'t get mount service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 48
    .end local v2           #service:Landroid/os/IBinder;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 49
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "UsbStorageUnmountActivity"

    const-string v3, "Failed to unmount"

    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
