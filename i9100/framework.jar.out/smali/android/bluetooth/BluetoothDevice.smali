.class public final Landroid/bluetooth/BluetoothDevice;
.super Ljava/lang/Object;
.source "BluetoothDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACTION_ACL_CONNECTED:Ljava/lang/String; = "android.bluetooth.device.action.ACL_CONNECTED"

.field public static final ACTION_ACL_DISCONNECTED:Ljava/lang/String; = "android.bluetooth.device.action.ACL_DISCONNECTED"

.field public static final ACTION_ACL_DISCONNECT_REQUESTED:Ljava/lang/String; = "android.bluetooth.device.action.ACL_DISCONNECT_REQUESTED"

.field public static final ACTION_BOND_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.device.action.BOND_STATE_CHANGED"

.field public static final ACTION_CLASS_CHANGED:Ljava/lang/String; = "android.bluetooth.device.action.CLASS_CHANGED"

.field public static final ACTION_CONNECTION_ACCESS_CANCEL:Ljava/lang/String; = "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

.field public static final ACTION_CONNECTION_ACCESS_REPLY:Ljava/lang/String; = "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

.field public static final ACTION_CONNECTION_ACCESS_REQUEST:Ljava/lang/String; = "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

.field public static final ACTION_DISAPPEARED:Ljava/lang/String; = "android.bluetooth.device.action.DISAPPEARED"

.field public static final ACTION_FOUND:Ljava/lang/String; = "android.bluetooth.device.action.FOUND"

.field public static final ACTION_NAME_CHANGED:Ljava/lang/String; = "android.bluetooth.device.action.NAME_CHANGED"

.field public static final ACTION_NAME_FAILED:Ljava/lang/String; = "android.bluetooth.device.action.NAME_FAILED"

.field public static final ACTION_PAIRING_CANCEL:Ljava/lang/String; = "android.bluetooth.device.action.PAIRING_CANCEL"

.field public static final ACTION_PAIRING_REQUEST:Ljava/lang/String; = "android.bluetooth.device.action.PAIRING_REQUEST"

.field public static final ACTION_PROFILE_DISCONNECTED:Ljava/lang/String; = "android.bluetooth.device.action.PROFILE_DISCONNECTED"

.field public static final ACTION_UUID:Ljava/lang/String; = "android.bleutooth.device.action.UUID"

.field public static final AG_CONNECTION_STATUS:Ljava/lang/String; = "android.bluetooth.device.action.AG_CONNECTION_STATUS"

.field public static final AMP_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.device.action.AMP_STATE_CHANGED"

.field public static final BOND_BONDED:I = 0xc

.field public static final BOND_BONDING:I = 0xb

.field public static final BOND_NONE:I = 0xa

.field public static final BOND_SUCCESS:I = 0x0

.field public static final BTA_APP_ID_FTC:I = 0xa

.field public static final BTA_APP_ID_FTS:I = 0x8

.field public static final BTA_APP_ID_OPC:I = 0x6

.field public static final BTA_APP_ID_OPS:I = 0x7

.field public static final CONNECTION_ACCESS_NO:I = 0x2

.field public static final CONNECTION_ACCESS_YES:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR:I = -0x80000000

.field public static final EXTRA_AG_STATE:Ljava/lang/String; = "android.bluetooth.device.extra.AG_STATE"

.field public static final EXTRA_AMP_STATE:Ljava/lang/String; = "android.bluetooth.device.extra.AMP_STATE"

.field public static final EXTRA_BOND_STATE:Ljava/lang/String; = "android.bluetooth.device.extra.BOND_STATE"

.field public static final EXTRA_BTA_APP_ID:Ljava/lang/String; = "android.bluetooth.device.extra.BTA_APP_ID"

.field public static final EXTRA_CLASS:Ljava/lang/String; = "android.bluetooth.device.extra.CLASS"

.field public static final EXTRA_CONNECTION_ACCESS_RESULT:Ljava/lang/String; = "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

.field public static final EXTRA_DEVICE:Ljava/lang/String; = "android.bluetooth.device.extra.DEVICE"

.field public static final EXTRA_NAME:Ljava/lang/String; = "android.bluetooth.device.extra.NAME"

.field public static final EXTRA_OUT_RANGE:Ljava/lang/String; = "android.bluetooth.device.extra.OUT_RANGE"

.field public static final EXTRA_PAIRING_VARIANT:Ljava/lang/String; = "android.bluetooth.device.extra.PAIRING_VARIANT"

.field public static final EXTRA_PASSKEY:Ljava/lang/String; = "android.bluetooth.device.extra.PASSKEY"

.field public static final EXTRA_PREVIOUS_BOND_STATE:Ljava/lang/String; = "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

.field public static final EXTRA_PROFILE:Ljava/lang/String; = "android.bluetooth.device.extra.PROFILE"

.field public static final EXTRA_REASON:Ljava/lang/String; = "android.bluetooth.device.extra.REASON"

.field public static final EXTRA_RSSI:Ljava/lang/String; = "android.bluetooth.device.extra.RSSI"

.field public static final EXTRA_UUID:Ljava/lang/String; = "android.bluetooth.device.extra.UUID"

.field public static final NUM_HF_CONNECTED:Ljava/lang/String; = "android.bluetooth.device.extra.NUM_HF_CONNECTED"

.field public static final PAIRING_VARIANT_CONSENT:I = 0x3

.field public static final PAIRING_VARIANT_DISPLAY_PASSKEY:I = 0x4

.field public static final PAIRING_VARIANT_OOB_CONSENT:I = 0x5

.field public static final PAIRING_VARIANT_PASSKEY:I = 0x1

.field public static final PAIRING_VARIANT_PASSKEY_CONFIRMATION:I = 0x2

.field public static final PAIRING_VARIANT_PIN:I = 0x0

.field public static final PROFILE_A2DP:I = 0x2

.field public static final PROFILE_HEADSET:I = 0x1

.field public static final PROFILE_HID:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BluetoothDevice"

.field public static final UNBOND_REASON_AUTH_CANCELED:I = 0x3

.field public static final UNBOND_REASON_AUTH_FAILED:I = 0x1

.field public static final UNBOND_REASON_AUTH_REJECTED:I = 0x2

.field public static final UNBOND_REASON_AUTH_TIMEOUT:I = 0x6

.field public static final UNBOND_REASON_DISCOVERY_IN_PROGRESS:I = 0x5

.field public static final UNBOND_REASON_REMOTE_AUTH_CANCELED:I = 0x8

.field public static final UNBOND_REASON_REMOTE_DEVICE_DOWN:I = 0x4

.field public static final UNBOND_REASON_REMOVED:I = 0x9

.field public static final UNBOND_REASON_REPEATED_ATTEMPTS:I = 0x7

.field private static sService:Landroid/bluetooth/IBluetooth;


# instance fields
.field private final mAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 525
    new-instance v0, Landroid/bluetooth/BluetoothDevice$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothDevice$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "address"

    .prologue
    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    .line 488
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid Bluetooth address"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 492
    :cond_0
    iput-object p1, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    .line 493
    return-void
.end method

.method public static convertPinToBytes(Ljava/lang/String;)[B
    .locals 5
    .parameter "pin"

    .prologue
    const/4 v4, 0x0

    .line 986
    if-nez p0, :cond_0

    move-object v2, v4

    .line 999
    :goto_0
    return-object v2

    .line 991
    :cond_0
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 996
    .local v0, pinBytes:[B
    array-length v2, v0

    if-lez v2, :cond_1

    array-length v2, v0

    const/16 v3, 0x10

    if-le v2, v3, :cond_2

    :cond_1
    move-object v2, v4

    .line 997
    goto :goto_0

    .line 992
    .end local v0           #pinBytes:[B
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 993
    .local v1, uee:Ljava/io/UnsupportedEncodingException;
    const-string v2, "BluetoothDevice"

    const-string v3, "UTF-8 not supported?!?"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 994
    goto :goto_0

    .end local v1           #uee:Ljava/io/UnsupportedEncodingException;
    .restart local v0       #pinBytes:[B
    :cond_2
    move-object v2, v0

    .line 999
    goto :goto_0
.end method

.method static getService()Landroid/bluetooth/IBluetooth;
    .locals 4

    .prologue
    .line 465
    const-class v1, Landroid/bluetooth/BluetoothDevice;

    monitor-enter v1

    .line 466
    :try_start_0
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v2, :cond_1

    .line 467
    const-string v2, "bluetooth"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 468
    .local v0, b:Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 469
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Bluetooth service not available"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 473
    .end local v0           #b:Landroid/os/IBinder;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 471
    .restart local v0       #b:Landroid/os/IBinder;
    :cond_0
    :try_start_1
    invoke-static {v0}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v2

    sput-object v2, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 473
    .end local v0           #b:Landroid/os/IBinder;
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 474
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    return-object v1
.end method


# virtual methods
.method public authorizeService(Ljava/lang/String;ZZ)Z
    .locals 3
    .parameter "service"
    .parameter "authorized"
    .parameter "always"

    .prologue
    .line 785
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 786
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/bluetooth/BluetoothDevice;->setServiceTrust(Ljava/lang/String;Z)Z

    .line 788
    :cond_0
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-interface {v1, v2, p2, p3}, Landroid/bluetooth/IBluetooth;->authorizeService(Ljava/lang/String;ZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 790
    :goto_0
    return v1

    .line 789
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 790
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cancelBondProcess()Z
    .locals 3

    .prologue
    .line 654
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->cancelBondProcess(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 656
    :goto_0
    return v1

    .line 655
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 656
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cancelPairingUserInput()Z
    .locals 3

    .prologue
    .line 831
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->cancelPairingUserInput(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 833
    :goto_0
    return v1

    .line 832
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 833
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public createBond()Z
    .locals 3

    .prologue
    .line 594
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->createBond(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 596
    :goto_0
    return v1

    .line 595
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 596
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public createBondOutOfBand([B[B)Z
    .locals 3
    .parameter "hash"
    .parameter "randomizer"

    .prologue
    .line 620
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Landroid/bluetooth/IBluetooth;->createBondOutOfBand(Ljava/lang/String;[B[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 622
    :goto_0
    return v1

    .line 621
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 622
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public createInsecureRfcommSocket(I)Landroid/bluetooth/BluetoothSocket;
    .locals 8
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 958
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v7, 0x0

    move v4, v3

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    return-object v0
.end method

.method public createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;
    .locals 8
    .parameter "uuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 939
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    const/4 v1, 0x1

    new-instance v7, Landroid/os/ParcelUuid;

    invoke-direct {v7, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move v4, v3

    move-object v5, p0

    move v6, v2

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    return-object v0
.end method

.method public createRfcommSocket(I)Landroid/bluetooth/BluetoothSocket;
    .locals 8
    .parameter "channel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 870
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    const/4 v2, -0x1

    const/4 v7, 0x0

    move v3, v1

    move v4, v1

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    return-object v0
.end method

.method public createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;
    .locals 8
    .parameter "uuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 906
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    new-instance v7, Landroid/os/ParcelUuid;

    invoke-direct {v7, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move v3, v1

    move v4, v1

    move-object v5, p0

    move v6, v2

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    return-object v0
.end method

.method public createScoSocket()Landroid/bluetooth/BluetoothSocket;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 973
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    const/4 v1, 0x2

    const/4 v7, 0x0

    move v4, v3

    move-object v5, p0

    move v6, v2

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 522
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 497
    instance-of v0, p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .end local p1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 500
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fetchUuidsWithSdp()Z
    .locals 5

    .prologue
    .line 761
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/bluetooth/IBluetooth;->fetchRemoteUuids(Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 763
    :goto_0
    return v1

    .line 762
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 763
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getBluetoothClass()Landroid/bluetooth/BluetoothClass;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 701
    :try_start_0
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    iget-object v3, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetooth;->getRemoteClass(Ljava/lang/String;)I

    move-result v0

    .line 702
    .local v0, classInt:I
    const/high16 v2, -0x100

    if-ne v0, v2, :cond_0

    move-object v2, v4

    .line 705
    .end local v0           #classInt:I
    :goto_0
    return-object v2

    .line 703
    .restart local v0       #classInt:I
    :cond_0
    new-instance v2, Landroid/bluetooth/BluetoothClass;

    invoke-direct {v2, v0}, Landroid/bluetooth/BluetoothClass;-><init>(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 704
    .end local v0           #classInt:I
    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothDevice"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v4

    .line 705
    goto :goto_0
.end method

.method public getBondState()I
    .locals 3

    .prologue
    .line 688
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->getBondState(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 690
    :goto_0
    return v1

    .line 689
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 690
    const/16 v1, 0xa

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 560
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->getRemoteName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 562
    :goto_0
    return-object v1

    .line 561
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 562
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getServiceChannel(Landroid/os/ParcelUuid;)I
    .locals 3
    .parameter "uuid"

    .prologue
    .line 769
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/bluetooth/IBluetooth;->getRemoteServiceChannel(Ljava/lang/String;Landroid/os/ParcelUuid;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 771
    :goto_0
    return v1

    .line 770
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 771
    const/high16 v1, -0x8000

    goto :goto_0
.end method

.method public getTrustState()Z
    .locals 3

    .prologue
    .line 715
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->getTrustState(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 719
    :goto_0
    return v1

    .line 716
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 717
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 719
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUuids()[Landroid/os/ParcelUuid;
    .locals 3

    .prologue
    .line 740
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->getRemoteUuids(Ljava/lang/String;)[Landroid/os/ParcelUuid;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 742
    :goto_0
    return-object v1

    .line 741
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 742
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBluetoothDock()Z
    .locals 3

    .prologue
    .line 839
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->isBluetoothDock(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 841
    :goto_0
    return v1

    .line 840
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 841
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeBond()Z
    .locals 3

    .prologue
    .line 671
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->removeBond(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 673
    :goto_0
    return v1

    .line 672
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 673
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDeviceOutOfBandData([B[B)Z
    .locals 3
    .parameter "hash"
    .parameter "randomizer"

    .prologue
    .line 640
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Landroid/bluetooth/IBluetooth;->setDeviceOutOfBandData(Ljava/lang/String;[B[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 642
    :goto_0
    return v1

    .line 641
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 642
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPairingConfirmation(Z)Z
    .locals 3
    .parameter "confirm"

    .prologue
    .line 815
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/bluetooth/IBluetooth;->setPairingConfirmation(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 817
    :goto_0
    return v1

    .line 816
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 817
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPasskey(I)Z
    .locals 3
    .parameter "passkey"

    .prologue
    .line 807
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/bluetooth/IBluetooth;->setPasskey(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 809
    :goto_0
    return v1

    .line 808
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 809
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPin([B)Z
    .locals 3
    .parameter "pin"

    .prologue
    .line 777
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/bluetooth/IBluetooth;->setPin(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 779
    :goto_0
    return v1

    .line 778
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 779
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRemoteOutOfBandData()Z
    .locals 3

    .prologue
    .line 823
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->setRemoteOutOfBandData(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 825
    :goto_0
    return v1

    .line 824
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 825
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setServiceTrust(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "service"
    .parameter "value"

    .prologue
    .line 796
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Landroid/bluetooth/IBluetooth;->setServiceTrust(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 800
    :goto_0
    return v1

    .line 797
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 798
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 800
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTrust(Z)Z
    .locals 3
    .parameter "value"

    .prologue
    .line 730
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/bluetooth/IBluetooth;->setTrust(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 734
    :goto_0
    return v1

    .line 731
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 732
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 734
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public updateName()V
    .locals 3

    .prologue
    .line 575
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->updateRemoteName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    :goto_0
    return-void

    .line 576
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 536
    iget-object v0, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 537
    return-void
.end method
