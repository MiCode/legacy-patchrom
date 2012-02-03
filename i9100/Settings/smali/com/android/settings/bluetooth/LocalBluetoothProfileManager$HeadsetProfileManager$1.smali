.class Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager$1;
.super Ljava/lang/Object;
.source "LocalBluetoothProfileManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->onServiceConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;)V
    .locals 0
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager$1;->this$0:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v3, "LocalBluetoothProfileManager"

    .line 384
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager$1;->this$0:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;

    #getter for: Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->access$000(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadset;->getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 386
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager$1;->this$0:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;

    #getter for: Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mDelayedConnectDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->access$100(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 387
    const-string v2, "LocalBluetoothProfileManager"

    const-string v2, "service ready: connecting..."

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager$1;->this$0:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;

    #getter for: Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mDelayedConnectDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->access$100(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 389
    .local v1, newDevice:Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager$1;->this$0:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;

    #setter for: Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mDelayedConnectDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2, v4}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->access$102(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 391
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 392
    if-eqz v0, :cond_0

    .line 393
    const-string v2, "LocalBluetoothProfileManager"

    const-string v2, "disconnecting old headset"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager$1;->this$0:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;

    #getter for: Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->access$000(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothHeadset;->disconnectHeadset(Landroid/bluetooth/BluetoothDevice;)Z

    .line 396
    :cond_0
    const-string v2, "LocalBluetoothProfileManager"

    const-string v2, "connecting to pending headset"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager$1;->this$0:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;

    #getter for: Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->access$000(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothHeadset;->connectHeadset(Landroid/bluetooth/BluetoothDevice;)Z

    .line 416
    .end local v1           #newDevice:Landroid/bluetooth/BluetoothDevice;
    :cond_1
    :goto_0
    return-void

    .line 399
    :cond_2
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager$1;->this$0:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;

    #getter for: Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mDelayedDisconnectDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->access$200(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 400
    const-string v2, "LocalBluetoothProfileManager"

    const-string v2, "service ready: disconnecting..."

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager$1;->this$0:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;

    #getter for: Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mDelayedDisconnectDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->access$200(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 402
    const-string v2, "LocalBluetoothProfileManager"

    const-string v2, "disconnecting headset"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager$1;->this$0:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;

    #getter for: Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->access$000(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothHeadset;->disconnectHeadset(Landroid/bluetooth/BluetoothDevice;)Z

    .line 405
    :cond_3
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager$1;->this$0:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;

    #setter for: Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mDelayedDisconnectDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2, v4}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->access$202(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto :goto_0

    .line 411
    :cond_4
    if-eqz v0, :cond_1

    .line 413
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager$1;->this$0:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;

    iget-object v2, v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    sget-object v3, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HEADSET:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    const/4 v4, 0x2

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onProfileStateChanged(Landroid/bluetooth/BluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;I)V

    goto :goto_0
.end method
