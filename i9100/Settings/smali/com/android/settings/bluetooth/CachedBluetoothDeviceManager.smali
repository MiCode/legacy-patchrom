.class public Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
.super Ljava/lang/Object;
.source "CachedBluetoothDeviceManager.java"


# instance fields
.field final mCachedDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field final mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V
    .locals 1
    .parameter "localManager"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    .line 48
    iput-object p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 49
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCallbacks()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->mCallbacks:Ljava/util/List;

    .line 50
    return-void
.end method

.method private checkForDeviceRemoval(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 2
    .parameter "cachedDevice"

    .prologue
    .line 112
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 115
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->dispatchDeviceDeleted(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    .line 117
    :cond_0
    return-void
.end method

.method private dispatchDeviceAdded(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 4
    .parameter "cachedDevice"

    .prologue
    .line 159
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->mCallbacks:Ljava/util/List;

    monitor-enter v2

    .line 160
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;

    .line 161
    .local v0, callback:Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;
    invoke-interface {v0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;->onDeviceAdded(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 163
    .end local v0           #callback:Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    return-void
.end method

.method private dispatchDeviceDeleted(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 4
    .parameter "cachedDevice"

    .prologue
    .line 169
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->mCallbacks:Ljava/util/List;

    monitor-enter v2

    .line 170
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;

    .line 171
    .local v0, callback:Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;
    invoke-interface {v0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;->onDeviceDeleted(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 173
    .end local v0           #callback:Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    return-void
.end method

.method private declared-synchronized readPairedDevices()Z
    .locals 7

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 54
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 55
    .local v1, bondedDevices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-nez v1, :cond_0

    .line 56
    const/4 v6, 0x0

    .line 69
    :goto_0
    monitor-exit p0

    return v6

    .line 58
    :cond_0
    const/4 v4, 0x0

    .line 59
    .local v4, deviceAdded:Z
    :try_start_1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 60
    .local v3, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    .line 61
    .local v2, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    if-nez v2, :cond_1

    .line 62
    new-instance v2, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .end local v2           #cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    iget-object v6, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6, v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    .line 63
    .restart local v2       #cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    iget-object v6, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->dispatchDeviceAdded(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    const/4 v4, 0x1

    goto :goto_1

    .end local v2           #cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .end local v3           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_2
    move v6, v4

    .line 69
    goto :goto_0

    .line 53
    .end local v0           #adapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v1           #bondedDevices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v4           #deviceAdded:Z
    .end local v5           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method


# virtual methods
.method public declared-synchronized findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .locals 4
    .parameter "device"

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 129
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 131
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 136
    .end local v0           #cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    :goto_1
    monitor-exit p0

    return-object v2

    .line 128
    .restart local v0       #cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 136
    .end local v0           #cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 128
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getCachedDevicesCopy()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 3
    .parameter "device"

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 148
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 155
    :goto_0
    return-object v2

    .line 151
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, name:Ljava/lang/String;
    if-eqz v1, :cond_1

    move-object v2, v1

    .line 153
    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public isPairedHeadsetOrA2DPExist()Z
    .locals 5

    .prologue
    .line 313
    const/4 v2, 0x0

    .line 314
    .local v2, result:Z
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 315
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/bluetooth/CachedBluetoothDevice;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 316
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 317
    .local v0, device:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_0

    .line 319
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isContainsA2DPOrHFProfiles()Z

    move-result v2

    .line 321
    if-eqz v2, :cond_0

    .line 327
    .end local v0           #device:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/bluetooth/CachedBluetoothDevice;>;"
    :cond_1
    return v2
.end method

.method onBluetoothStateChanged(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 77
    if-eqz p1, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->readPairedDevices()Z

    .line 80
    :cond_0
    return-void
.end method

.method public declared-synchronized onBondingStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 4
    .parameter "device"
    .parameter "bondState"

    .prologue
    const-string v1, "Got bonding state changed for "

    const-string v1, "CachedBluetoothDeviceManager"

    .line 177
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 178
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    if-nez v0, :cond_1

    .line 179
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->readPairedDevices()Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    const-string v1, "CachedBluetoothDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got bonding state changed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but we have no record of that device."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :goto_0
    monitor-exit p0

    return-void

    .line 184
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 185
    if-nez v0, :cond_1

    .line 186
    const-string v1, "CachedBluetoothDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got bonding state changed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "but device not added in cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 177
    .end local v0           #cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 192
    .restart local v0       #cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    :cond_1
    :try_start_2
    invoke-virtual {v0, p2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->onBondingStateChanged(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized onBtClassChanged(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter "device"

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 276
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->refreshBtClass()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    :cond_0
    monitor-exit p0

    return-void

    .line 275
    .end local v0           #cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onDeviceAppeared(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothClass;Ljava/lang/String;)V
    .locals 3
    .parameter "device"
    .parameter "rssi"
    .parameter "btClass"
    .parameter "name"

    .prologue
    .line 84
    monitor-enter p0

    const/4 v1, 0x0

    .line 86
    .local v1, deviceAdded:Z
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 87
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .end local v0           #cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    .line 89
    .restart local v0       #cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    const/4 v1, 0x1

    .line 92
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->setRssi(I)V

    .line 93
    invoke-virtual {v0, p3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->setBtClass(Landroid/bluetooth/BluetoothClass;)V

    .line 94
    invoke-virtual {v0, p4}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    .line 95
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->setVisible(Z)V

    .line 97
    if-eqz v1, :cond_1

    .line 98
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->dispatchDeviceAdded(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_1
    monitor-exit p0

    return-void

    .line 84
    .end local v0           #cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onDeviceDisappeared(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter "device"

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 104
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    if-nez v0, :cond_0

    .line 109
    :goto_0
    monitor-exit p0

    return-void

    .line 107
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->setVisible(Z)V

    .line 108
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->checkForDeviceRemoval(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 103
    .end local v0           #cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onDeviceNameUpdated(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter "device"

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 121
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->refreshName()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :cond_0
    monitor-exit p0

    return-void

    .line 120
    .end local v0           #cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onProfileStateChanged(Landroid/bluetooth/BluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;I)V
    .locals 2
    .parameter "device"
    .parameter "profile"
    .parameter "newProfileState"

    .prologue
    .line 241
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 242
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    if-nez v0, :cond_0

    .line 247
    :goto_0
    monitor-exit p0

    return-void

    .line 245
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2, p3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;I)V

    .line 246
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->refresh()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 241
    .end local v0           #cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onScanningStateChanged(Z)V
    .locals 4
    .parameter "started"

    .prologue
    .line 263
    monitor-enter p0

    if-nez p1, :cond_1

    .line 272
    :cond_0
    monitor-exit p0

    return-void

    .line 267
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 268
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 269
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->setVisible(Z)V

    .line 270
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->checkForDeviceRemoval(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 263
    .end local v0           #cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onUuidChanged(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter "device"

    .prologue
    .line 282
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 283
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->onUuidChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    :cond_0
    monitor-exit p0

    return-void

    .line 282
    .end local v0           #cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized showUnbondMessage(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 4
    .parameter "device"
    .parameter "reason"

    .prologue
    .line 213
    monitor-enter p0

    packed-switch p2, :pswitch_data_0

    .line 234
    :pswitch_0
    :try_start_0
    const-string v1, "CachedBluetoothDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showUnbondMessage: Not displaying any message for reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    :goto_0
    monitor-exit p0

    return-void

    .line 215
    :pswitch_1
    const v0, 0x7f080139

    .line 216
    .local v0, errorMsg:I
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    const v2, 0x7f080137

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->showError(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 213
    .end local v0           #errorMsg:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 219
    :pswitch_2
    const v0, 0x7f08013b

    .line 220
    .restart local v0       #errorMsg:I
    :try_start_2
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    const v2, 0x7f080137

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->showError(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 223
    .end local v0           #errorMsg:I
    :pswitch_3
    const v0, 0x7f08013a

    .line 224
    .restart local v0       #errorMsg:I
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    const v2, 0x7f080137

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->showError(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 230
    .end local v0           #errorMsg:I
    :pswitch_4
    const v0, 0x7f080138

    .line 231
    .restart local v0       #errorMsg:I
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    const v2, 0x7f080137

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->showError(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
