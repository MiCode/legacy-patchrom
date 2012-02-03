.class Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$PrinterProfileManager;
.super Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrinterProfileManager"
.end annotation


# instance fields
.field private final mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V
    .locals 0
    .parameter "localManager"

    .prologue
    .line 767
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V

    .line 768
    iput-object p1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$PrinterProfileManager;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 769
    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 778
    const/4 v0, 0x0

    return v0
.end method

.method public convertState(I)I
    .locals 1
    .parameter "state"

    .prologue
    .line 828
    packed-switch p1, :pswitch_data_0

    .line 836
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 830
    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 832
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 834
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 828
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 783
    const/4 v0, 0x0

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
    .line 773
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 798
    const/4 v0, -0x1

    return v0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 819
    const/4 v0, -0x1

    return v0
.end method

.method public getSummary(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 803
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$PrinterProfileManager;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 805
    .local v0, connectionStatus:I
    invoke-static {v0}, Lcom/android/settings/bluetooth/SettingsBtStatus;->isConnectionStatusConnected(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 806
    const v1, 0x7f0806e7

    .line 808
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
    .line 814
    const/4 v0, 0x0

    return v0
.end method

.method public isProfileReady()Z
    .locals 1

    .prologue
    .line 842
    const/4 v0, 0x1

    return v0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0
    .parameter "device"
    .parameter "preferred"

    .prologue
    .line 824
    return-void
.end method

.method public shouldHostConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 793
    const/4 v0, 0x1

    return v0
.end method

.method public virtualUnplug(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 788
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$PrinterProfileManager;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method
