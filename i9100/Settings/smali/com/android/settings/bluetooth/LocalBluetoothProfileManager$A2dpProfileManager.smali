.class Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$A2dpProfileManager;
.super Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "A2dpProfileManager"
.end annotation


# instance fields
.field private mService:Landroid/bluetooth/BluetoothA2dp;


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V
    .locals 2
    .parameter "localManager"

    .prologue
    .line 254
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V

    .line 255
    new-instance v0, Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$A2dpProfileManager;->mService:Landroid/bluetooth/BluetoothA2dp;

    .line 256
    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    .line 265
    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$A2dpProfileManager;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothA2dp;->getNonDisconnectedSinks()Ljava/util/Set;

    move-result-object v2

    .line 266
    .local v2, sinks:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v2, :cond_0

    .line 267
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 268
    .local v1, sink:Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$A2dpProfileManager;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothA2dp;->disconnectSink(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .line 271
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #sink:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$A2dpProfileManager;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothA2dp;->connectSink(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    return v3
.end method

.method public convertState(I)I
    .locals 1
    .parameter "a2dpState"

    .prologue
    .line 335
    packed-switch p1, :pswitch_data_0

    .line 347
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 337
    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 339
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 341
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 343
    :pswitch_3
    const/4 v0, 0x5

    goto :goto_0

    .line 345
    :pswitch_4
    const/4 v0, 0x1

    goto :goto_0

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    const/16 v1, 0x64

    .line 277
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$A2dpProfileManager;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getSinkPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-le v0, v1, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$A2dpProfileManager;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothA2dp;->setSinkPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$A2dpProfileManager;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->disconnectSink(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

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
    .line 260
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$A2dpProfileManager;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getNonDisconnectedSinks()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$A2dpProfileManager;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getSinkState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$A2dpProfileManager;->convertState(I)I

    move-result v0

    return v0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$A2dpProfileManager;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getSinkPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public getSummary(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 303
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$A2dpProfileManager;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 305
    .local v0, connectionStatus:I
    invoke-static {v0}, Lcom/android/settings/bluetooth/SettingsBtStatus;->isConnectionStatusConnected(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    const v1, 0x7f080153

    .line 308
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
    .line 314
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$A2dpProfileManager;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getSinkPriority(Landroid/bluetooth/BluetoothDevice;)I

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
    .line 353
    const/4 v0, 0x1

    return v0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2
    .parameter "device"
    .parameter "preferred"

    .prologue
    const/16 v1, 0x64

    .line 324
    if-eqz p2, :cond_1

    .line 325
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$A2dpProfileManager;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getSinkPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$A2dpProfileManager;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothA2dp;->setSinkPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$A2dpProfileManager;->mService:Landroid/bluetooth/BluetoothA2dp;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothA2dp;->setSinkPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0
.end method

.method public shouldHostConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 291
    const/4 v0, 0x1

    return v0
.end method

.method public virtualUnplug(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 286
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$A2dpProfileManager;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method
