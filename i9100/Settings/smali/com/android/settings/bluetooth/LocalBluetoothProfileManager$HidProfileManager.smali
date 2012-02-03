.class Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;
.super Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HidProfileManager"
.end annotation


# instance fields
.field private mService:Lcom/broadcom/bt/service/hid/BluetoothHID;


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V
    .locals 2
    .parameter "localManager"

    .prologue
    .line 659
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V

    .line 660
    new-instance v0, Lcom/broadcom/bt/service/hid/BluetoothHID;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/hid/BluetoothHID;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;->mService:Lcom/broadcom/bt/service/hid/BluetoothHID;

    .line 661
    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;->mService:Lcom/broadcom/bt/service/hid/BluetoothHID;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHID;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public convertState(I)I
    .locals 1
    .parameter "state"

    .prologue
    const/4 v0, 0x4

    .line 737
    packed-switch p1, :pswitch_data_0

    .line 749
    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    .line 739
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 741
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 745
    :pswitch_3
    const/4 v0, 0x5

    goto :goto_0

    .line 737
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    const/16 v1, 0x64

    .line 676
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;->mService:Lcom/broadcom/bt/service/hid/BluetoothHID;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHID;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-le v0, v1, :cond_0

    .line 677
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;->mService:Lcom/broadcom/bt/service/hid/BluetoothHID;

    invoke-virtual {v0, p1, v1}, Lcom/broadcom/bt/service/hid/BluetoothHID;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;->mService:Lcom/broadcom/bt/service/hid/BluetoothHID;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHID;->disconnect(Landroid/bluetooth/BluetoothDevice;)V

    .line 680
    const/4 v0, 0x1

    return v0
.end method

.method public getConnectedDevices()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;->mService:Lcom/broadcom/bt/service/hid/BluetoothHID;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/hid/BluetoothHID;->getConnectedDevices()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 700
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;->mService:Lcom/broadcom/bt/service/hid/BluetoothHID;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHID;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;->convertState(I)I

    move-result v0

    return v0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;->mService:Lcom/broadcom/bt/service/hid/BluetoothHID;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHID;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public getSummary(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 705
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 707
    .local v0, connectionStatus:I
    invoke-static {v0}, Lcom/android/settings/bluetooth/SettingsBtStatus;->isConnectionStatusConnected(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 708
    const v1, 0x7f080754

    .line 710
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lcom/android/settings/bluetooth/SettingsBtStatus;->getConnectionStatusSummary(I)I

    move-result v1

    goto :goto_0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;->mService:Lcom/broadcom/bt/service/hid/BluetoothHID;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHID;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProfileReady()Z
    .locals 1

    .prologue
    .line 755
    const/4 v0, 0x1

    return v0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2
    .parameter "device"
    .parameter "preferred"

    .prologue
    const/16 v1, 0x64

    .line 726
    if-eqz p2, :cond_1

    .line 727
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;->mService:Lcom/broadcom/bt/service/hid/BluetoothHID;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHID;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 728
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;->mService:Lcom/broadcom/bt/service/hid/BluetoothHID;

    invoke-virtual {v0, p1, v1}, Lcom/broadcom/bt/service/hid/BluetoothHID;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 733
    :cond_0
    :goto_0
    return-void

    .line 731
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;->mService:Lcom/broadcom/bt/service/hid/BluetoothHID;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/broadcom/bt/service/hid/BluetoothHID;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0
.end method

.method public shouldHostConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;->mService:Lcom/broadcom/bt/service/hid/BluetoothHID;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHID;->shouldHostConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public virtualUnplug(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    const/16 v1, 0x64

    .line 686
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;->mService:Lcom/broadcom/bt/service/hid/BluetoothHID;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHID;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-le v0, v1, :cond_0

    .line 687
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;->mService:Lcom/broadcom/bt/service/hid/BluetoothHID;

    invoke-virtual {v0, p1, v1}, Lcom/broadcom/bt/service/hid/BluetoothHID;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;->mService:Lcom/broadcom/bt/service/hid/BluetoothHID;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHID;->virtualUnplug(Landroid/bluetooth/BluetoothDevice;)V

    .line 690
    const/4 v0, 0x1

    return v0
.end method
