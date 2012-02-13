.class public Lcom/android/phone/BluetoothHeadsetService;
.super Landroid/app/Service;
.source "BluetoothHeadsetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;,
        Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final CONNECT_HEADSET_DELAYED:I = 0x1

.field private static final DBG:Z = true

.field private static final PHONE_STATE_CHANGED:I = 0x1

.field private static final PREF_LAST_HEADSET:Ljava/lang/String; = "lastHeadsetAddress"

.field private static final PREF_NAME:Ljava/lang/String; = null

.field private static final RFCOMM_CONNECTED:I = 0x1

.field private static final RFCOMM_ERROR:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BT HSHFP"

.field private static sHasStarted:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAg:Landroid/bluetooth/BluetoothAudioGateway;

.field private final mBinder:Landroid/bluetooth/IBluetoothHeadset$Stub;

.field private final mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothService:Landroid/bluetooth/IBluetooth;

.field private mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field private mBtHfExtFeatureBitmap:I

.field private mBtHfRvcBitmap:I

.field private mConnectThread:Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

.field private final mConnectedStatusHandler:Landroid/os/Handler;

.field private final mConnectingStatusHandler:Landroid/os/Handler;

.field private mDeviceSdpQuery:Landroid/bluetooth/BluetoothDevice;

.field private mHandler:Landroid/os/Handler;

.field private final mIncomingConnectionHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRemoteHeadsets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;",
            ">;"
        }
    .end annotation
.end field

.field private mTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/android/phone/BluetoothHeadsetService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/BluetoothHeadsetService;->PREF_NAME:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/BluetoothHeadsetService;->sHasStarted:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mBtHfExtFeatureBitmap:I

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mBtHfRvcBitmap:I

    .line 155
    new-instance v0, Lcom/android/phone/BluetoothHeadsetService$1;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothHeadsetService$1;-><init>(Lcom/android/phone/BluetoothHeadsetService;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mIncomingConnectionHandler:Landroid/os/Handler;

    .line 245
    new-instance v0, Lcom/android/phone/BluetoothHeadsetService$2;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothHeadsetService$2;-><init>(Lcom/android/phone/BluetoothHeadsetService;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    .line 314
    new-instance v0, Lcom/android/phone/BluetoothHeadsetService$3;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothHeadsetService$3;-><init>(Lcom/android/phone/BluetoothHeadsetService;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mHandler:Landroid/os/Handler;

    .line 424
    new-instance v0, Lcom/android/phone/BluetoothHeadsetService$4;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothHeadsetService$4;-><init>(Lcom/android/phone/BluetoothHeadsetService;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mConnectingStatusHandler:Landroid/os/Handler;

    .line 458
    new-instance v0, Lcom/android/phone/BluetoothHeadsetService$5;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothHeadsetService$5;-><init>(Lcom/android/phone/BluetoothHeadsetService;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mConnectedStatusHandler:Landroid/os/Handler;

    .line 609
    new-instance v0, Lcom/android/phone/BluetoothHeadsetService$6;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothHeadsetService$6;-><init>(Lcom/android/phone/BluetoothHeadsetService;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mBinder:Landroid/bluetooth/IBluetoothHeadset$Stub;

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/BluetoothHeadsetService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/phone/BluetoothHeadsetService;->adjustPriorities()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mIncomingConnectionHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothAudioGateway;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mAg:Landroid/bluetooth/BluetoothAudioGateway;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/phone/BluetoothHeadsetService;->setState(Landroid/bluetooth/BluetoothDevice;III)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothHeadsetService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mDeviceSdpQuery:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/phone/BluetoothHeadsetService;->mDeviceSdpQuery:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHeadsetService;->getSdpRecordsAndConnect(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mConnectedStatusHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mConnectThread:Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/phone/BluetoothHeadsetService;Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;)Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/phone/BluetoothHeadsetService;->mConnectThread:Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/PowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$2000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-static {p0}, Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mConnectingStatusHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/BluetoothHeadsetService;->setState(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/phone/BluetoothHeadsetService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mBtHfExtFeatureBitmap:I

    return v0
.end method

.method static synthetic access$2402(Lcom/android/phone/BluetoothHeadsetService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/android/phone/BluetoothHeadsetService;->mBtHfExtFeatureBitmap:I

    return p1
.end method

.method static synthetic access$2500(Lcom/android/phone/BluetoothHeadsetService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mBtHfRvcBitmap:I

    return v0
.end method

.method static synthetic access$2502(Lcom/android/phone/BluetoothHeadsetService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/android/phone/BluetoothHeadsetService;->mBtHfRvcBitmap:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothHeadsetService;->setState(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/phone/BluetoothHeadsetService;->getCurrentDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/IBluetooth;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mBluetoothService:Landroid/bluetooth/IBluetooth;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/IBluetoothHeadset$Stub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mBinder:Landroid/bluetooth/IBluetoothHeadset$Stub;

    return-object v0
.end method

.method private adjustOtherHeadsetPriorities(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter "connectedDevice"

    .prologue
    .line 520
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 521
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    const/16 v3, 0x3e8

    if-lt v2, v3, :cond_0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 523
    const/16 v2, 0x64

    invoke-direct {p0, v0, v2}, Lcom/android/phone/BluetoothHeadsetService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 526
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_1
    return-void
.end method

.method private adjustPriorities()V
    .locals 7

    .prologue
    const/16 v6, 0x3e8

    .line 548
    const/4 v4, 0x0

    .line 549
    .local v4, savedDevice:Landroid/bluetooth/BluetoothDevice;
    const/16 v2, 0x3e8

    .line 550
    .local v2, max_priority:I
    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 551
    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 552
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 553
    .local v3, priority:I
    if-lt v3, v6, :cond_1

    .line 554
    const/16 v5, 0x64

    invoke-direct {p0, v0, v5}, Lcom/android/phone/BluetoothHeadsetService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)V

    .line 556
    :cond_1
    if-lt v3, v2, :cond_0

    .line 557
    move v2, v3

    .line 558
    move-object v4, v0

    goto :goto_0

    .line 561
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #priority:I
    :cond_2
    if-eqz v4, :cond_3

    .line 562
    invoke-direct {p0, v4, v6}, Lcom/android/phone/BluetoothHeadsetService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)V

    .line 565
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method private declared-synchronized getCurrentDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 4

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 129
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 130
    .local v2, state:I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    :cond_1
    move-object v3, v0

    .line 135
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #state:I
    :goto_0
    monitor-exit p0

    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 128
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .parameter "device"

    .prologue
    .line 538
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mBinder:Landroid/bluetooth/IBluetoothHeadset$Stub;

    invoke-virtual {v1, p1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getPriority(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 542
    :goto_0
    return v1

    .line 539
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 540
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BT HSHFP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while getting priority for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private declared-synchronized getSdpRecordsAndConnect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .parameter "device"

    .prologue
    const/16 v4, 0x3e8

    .line 568
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/BluetoothHeadsetService;->getCurrentDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 603
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 572
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v2

    .line 573
    .local v2, uuids:[Landroid/os/ParcelUuid;
    const/4 v1, 0x0

    .line 574
    .local v1, type:I
    if-eqz v2, :cond_3

    .line 575
    sget-object v3, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 576
    const-string v3, "SDP UUID: TYPE_HANDSFREE"

    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V

    .line 577
    const/4 v1, 0x2

    .line 578
    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #setter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadsetType:I
    invoke-static {v3, v1}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$702(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;I)I

    .line 579
    sget-object v3, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-virtual {p1, v3}, Landroid/bluetooth/BluetoothDevice;->getServiceChannel(Landroid/os/ParcelUuid;)I

    move-result v0

    .line 580
    .local v0, channel:I
    new-instance v3, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;-><init>(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;II)V

    iput-object v3, p0, Lcom/android/phone/BluetoothHeadsetService;->mConnectThread:Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    .line 581
    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService;->mConnectThread:Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->start()V

    .line 582
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    if-ge v3, v4, :cond_0

    .line 583
    const/16 v3, 0x3e8

    invoke-direct {p0, p1, v3}, Lcom/android/phone/BluetoothHeadsetService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 568
    .end local v0           #channel:I
    .end local v1           #type:I
    .end local v2           #uuids:[Landroid/os/ParcelUuid;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 586
    .restart local v1       #type:I
    .restart local v2       #uuids:[Landroid/os/ParcelUuid;
    :cond_2
    :try_start_2
    sget-object v3, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 587
    const-string v3, "SDP UUID: TYPE_HEADSET"

    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V

    .line 588
    const/4 v1, 0x1

    .line 589
    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #setter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadsetType:I
    invoke-static {v3, v1}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$702(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;I)I

    .line 590
    sget-object v3, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-virtual {p1, v3}, Landroid/bluetooth/BluetoothDevice;->getServiceChannel(Landroid/os/ParcelUuid;)I

    move-result v0

    .line 591
    .restart local v0       #channel:I
    new-instance v3, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;-><init>(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;II)V

    iput-object v3, p0, Lcom/android/phone/BluetoothHeadsetService;->mConnectThread:Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    .line 592
    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService;->mConnectThread:Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->start()V

    .line 593
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    if-ge v3, v4, :cond_0

    .line 594
    const/16 v3, 0x3e8

    invoke-direct {p0, p1, v3}, Lcom/android/phone/BluetoothHeadsetService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 599
    .end local v0           #channel:I
    :cond_3
    const-string v3, "SDP UUID: TYPE_UNKNOWN"

    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V

    .line 600
    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #setter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadsetType:I
    invoke-static {v3, v1}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$702(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;I)I

    .line 601
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, p1, v3, v4, v5}, Lcom/android/phone/BluetoothHeadsetService;->setState(Landroid/bluetooth/BluetoothDevice;III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 866
    const-string v0, "BT HSHFP"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    return-void
.end method

.method private setPriority(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 4
    .parameter "device"
    .parameter "priority"

    .prologue
    .line 530
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mBinder:Landroid/bluetooth/IBluetoothHeadset$Stub;

    invoke-virtual {v1, p1, p2}, Landroid/bluetooth/IBluetoothHeadset$Stub;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    :goto_0
    return-void

    .line 531
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 532
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BT HSHFP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while setting priority for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1
    .parameter "device"
    .parameter "state"

    .prologue
    .line 476
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/BluetoothHeadsetService;->setState(Landroid/bluetooth/BluetoothDevice;II)V

    .line 477
    return-void
.end method

.method private setState(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 1
    .parameter "device"
    .parameter "state"
    .parameter "result"

    .prologue
    .line 480
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/phone/BluetoothHeadsetService;->setState(Landroid/bluetooth/BluetoothDevice;III)V

    .line 481
    return-void
.end method

.method private declared-synchronized setState(Landroid/bluetooth/BluetoothDevice;III)V
    .locals 5
    .parameter "device"
    .parameter "state"
    .parameter "result"
    .parameter "initiator"

    .prologue
    const/4 v4, 0x2

    .line 485
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v1

    .line 486
    .local v1, prevState:I
    if-eq p2, v1, :cond_2

    .line 487
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Headset  state"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V

    .line 489
    if-ne v1, v4, :cond_0

    .line 490
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->disconnectHeadset()V

    .line 492
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 493
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.headset.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 494
    const-string v2, "android.bluetooth.headset.extra.STATE"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 495
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 497
    if-nez p2, :cond_1

    .line 498
    const/4 v2, -0x1

    if-ne p4, v2, :cond_3

    .line 499
    const-string v2, "Headset Disconnected Intent without Disconnect Initiator extra"

    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V

    .line 504
    :goto_0
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadset:Landroid/bluetooth/HeadsetBase;
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$2302(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;Landroid/bluetooth/HeadsetBase;)Landroid/bluetooth/HeadsetBase;

    .line 505
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadsetType:I
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$702(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;I)I

    .line 508
    :cond_1
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #setter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v2, p2}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$002(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;I)I

    .line 510
    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v2}, Lcom/android/phone/BluetoothHeadsetService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 511
    if-ne p2, v4, :cond_2

    .line 513
    const/16 v2, 0x3e8

    invoke-direct {p0, p1, v2}, Lcom/android/phone/BluetoothHeadsetService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)V

    .line 514
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHeadsetService;->adjustOtherHeadsetPriorities(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    monitor-exit p0

    return-void

    .line 501
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_3
    :try_start_1
    const-string v2, "android.bluetooth.headset.extra.DISCONNECT_INITIATOR"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 485
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #prevState:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mBinder:Landroid/bluetooth/IBluetoothHeadset$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 86
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/BluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 87
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/android/phone/BluetoothHeadsetService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/phone/BluetoothHeadsetService;->mPowerManager:Landroid/os/PowerManager;

    .line 88
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 89
    new-instance v2, Landroid/bluetooth/BluetoothAudioGateway;

    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {v2, v3}, Landroid/bluetooth/BluetoothAudioGateway;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v2, p0, Lcom/android/phone/BluetoothHeadsetService;->mAg:Landroid/bluetooth/BluetoothAudioGateway;

    .line 90
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECT_REQUESTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 92
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string v2, "android.bleutooth.device.action.UUID"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/phone/BluetoothHeadsetService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    const-string v2, "bluetooth"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 99
    .local v0, b:Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 100
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Bluetooth service not available"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 102
    :cond_0
    invoke-static {v0}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/BluetoothHeadsetService;->mBluetoothService:Landroid/bluetooth/IBluetooth;

    .line 103
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/HashMap;

    .line 104
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 850
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 851
    const-string v0, "Stopping BluetoothHeadsetService"

    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V

    .line 852
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/BluetoothHeadsetService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 853
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->onBluetoothDisabled()V

    .line 854
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mAg:Landroid/bluetooth/BluetoothAudioGateway;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAudioGateway;->stop()V

    .line 855
    sput-boolean v3, Lcom/android/phone/BluetoothHeadsetService;->sHasStarted:Z

    .line 856
    invoke-direct {p0}, Lcom/android/phone/BluetoothHeadsetService;->getCurrentDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 857
    invoke-direct {p0}, Lcom/android/phone/BluetoothHeadsetService;->getCurrentDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/android/phone/BluetoothHeadsetService;->setState(Landroid/bluetooth/BluetoothDevice;III)V

    .line 861
    :cond_0
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    .line 141
    const-string v0, "BT HSHFP"

    const-string v1, "Stopping BluetoothHeadsetService: device does not have BT"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHeadsetService;->stopSelf()V

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    sget-boolean v0, Lcom/android/phone/BluetoothHeadsetService;->sHasStarted:Z

    if-nez v0, :cond_0

    .line 145
    const-string v0, "Starting BluetoothHeadsetService"

    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mAg:Landroid/bluetooth/BluetoothAudioGateway;

    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mIncomingConnectionHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAudioGateway;->start(Landroid/os/Handler;)Z

    .line 148
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->onBluetoothEnabled()V

    .line 150
    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/BluetoothHeadsetService;->sHasStarted:Z

    goto :goto_0
.end method
