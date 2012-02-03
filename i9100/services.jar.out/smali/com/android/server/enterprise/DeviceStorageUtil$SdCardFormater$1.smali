.class Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater$1;
.super Landroid/os/storage/StorageEventListener;
.source "DeviceStorageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;)V
    .locals 0
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater$1;->this$1:Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    const-string v2, "DeviceStorageUtil"

    .line 321
    const-string v0, "DeviceStorageUtil"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oldState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", newState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v0, "mounted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "unmounted"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater$1;->this$1:Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;

    #getter for: Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->mStorageManager:Landroid/os/storage/StorageManager;
    invoke-static {v0}, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->access$100(Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater$1;->this$1:Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;

    #getter for: Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->mStorageListener:Landroid/os/storage/StorageEventListener;
    invoke-static {v1}, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->access$000(Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;)Landroid/os/storage/StorageEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 326
    new-instance v0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater$1$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater$1$1;-><init>(Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater$1;)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater$1$1;->start()V

    .line 356
    :cond_0
    const-string v0, "DeviceStorageUtil"

    const-string v0, "--onStorageStateChanged"

    invoke-static {v2, v0}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    return-void
.end method
