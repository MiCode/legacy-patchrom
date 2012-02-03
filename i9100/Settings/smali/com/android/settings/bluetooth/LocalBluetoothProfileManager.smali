.class public abstract Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
.super Ljava/lang/Object;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$PrinterProfileManager;,
        Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;,
        Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$OppProfileManager;,
        Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;,
        Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$A2dpProfileManager;,
        Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;,
        Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    }
.end annotation


# static fields
.field static final A2DP_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

.field static final HEADSET_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

.field static final HID_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

.field static final OPP_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

.field static final PRINTER_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

.field private static mServiceListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;",
            ">;"
        }
    .end annotation
.end field

.field private static sProfileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-array v0, v4, [Landroid/os/ParcelUuid;

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->HEADSET_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    .line 51
    new-array v0, v4, [Landroid/os/ParcelUuid;

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->A2DP_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    .line 55
    new-array v0, v3, [Landroid/os/ParcelUuid;

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->OPP_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    .line 60
    new-array v0, v3, [Landroid/os/ParcelUuid;

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HID:Landroid/os/ParcelUuid;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->HID_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    .line 64
    new-array v0, v3, [Landroid/os/ParcelUuid;

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->BasicPrinting:Landroid/os/ParcelUuid;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->PRINTER_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->sProfileMap:Ljava/util/Map;

    .line 121
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/LinkedList;

    return-void
.end method

.method protected constructor <init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V
    .locals 0
    .parameter "localManager"

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 195
    return-void
.end method

.method static synthetic access$300()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/LinkedList;

    return-object v0
.end method

.method public static addServiceListener(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 124
    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method

.method public static getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    .locals 5
    .parameter "localManager"
    .parameter "profile"

    .prologue
    .line 147
    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->sProfileMap:Ljava/util/Map;

    monitor-enter v1

    .line 148
    :try_start_0
    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->sProfileMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    .line 149
    .local v0, profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    if-nez v0, :cond_0

    .line 150
    const-string v2, "LocalBluetoothProfileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "profileManager can\'t be found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    monitor-exit v1

    return-object v0

    .line 153
    .end local v0           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static init(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V
    .locals 4
    .parameter "localManager"

    .prologue
    .line 98
    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->sProfileMap:Ljava/util/Map;

    monitor-enter v1

    .line 99
    :try_start_0
    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->sProfileMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 102
    new-instance v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$A2dpProfileManager;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$A2dpProfileManager;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V

    .line 103
    .local v0, profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->sProfileMap:Ljava/util/Map;

    sget-object v3, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->A2DP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;

    .end local v0           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V

    .line 106
    .restart local v0       #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->sProfileMap:Ljava/util/Map;

    sget-object v3, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HEADSET:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$OppProfileManager;

    .end local v0           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$OppProfileManager;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V

    .line 109
    .restart local v0       #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->sProfileMap:Ljava/util/Map;

    sget-object v3, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->OPP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    new-instance v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;

    .end local v0           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V

    .line 112
    .restart local v0       #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->sProfileMap:Ljava/util/Map;

    sget-object v3, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HID:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    new-instance v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$PrinterProfileManager;

    .end local v0           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$PrinterProfileManager;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V

    .line 115
    .restart local v0       #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->sProfileMap:Ljava/util/Map;

    sget-object v3, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->PRINTER:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .end local v0           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    :cond_0
    monitor-exit v1

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static isManagerReady()Z
    .locals 3

    .prologue
    .line 135
    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->sProfileMap:Ljava/util/Map;

    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HEADSET:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    .line 136
    .local v0, profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    if-nez v0, :cond_1

    .line 137
    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->sProfileMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 139
    :goto_0
    return v1

    .line 137
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->isProfileReady()Z

    move-result v1

    goto :goto_0
.end method

.method public static removeServiceListener(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 128
    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method

.method public static updateProfiles([Landroid/os/ParcelUuid;Ljava/util/List;)V
    .locals 1
    .parameter "uuids"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/ParcelUuid;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, profiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 167
    if-nez p0, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->HEADSET_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p0, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HEADSET:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_2
    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->A2DP_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p0, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 176
    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->A2DP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_3
    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->OPP_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p0, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 180
    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->OPP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_4
    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->HID_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p0, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 184
    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HID:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_5
    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->PRINTER_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p0, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->PRINTER:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public abstract connect(Landroid/bluetooth/BluetoothDevice;)Z
.end method

.method public abstract convertState(I)I
.end method

.method public abstract disconnect(Landroid/bluetooth/BluetoothDevice;)Z
.end method

.method public abstract getConnectedDevices()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
.end method

.method public abstract getPreferred(Landroid/bluetooth/BluetoothDevice;)I
.end method

.method public abstract getSummary(Landroid/bluetooth/BluetoothDevice;)I
.end method

.method public isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 223
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/SettingsBtStatus;->isConnectionStatusConnected(I)Z

    move-result v0

    return v0
.end method

.method public abstract isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
.end method

.method public abstract isProfileReady()Z
.end method

.method public abstract setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
.end method

.method public abstract shouldHostConnect(Landroid/bluetooth/BluetoothDevice;)Z
.end method

.method public abstract virtualUnplug(Landroid/bluetooth/BluetoothDevice;)Z
.end method
