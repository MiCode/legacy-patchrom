.class public Landroid/bluetooth/BluetoothProfileState;
.super Lcom/android/internal/util/HierarchicalStateMachine;
.source "BluetoothProfileState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothProfileState$PendingCommandState;,
        Landroid/bluetooth/BluetoothProfileState$StableState;
    }
.end annotation


# static fields
.field public static final A2DP:I = 0x1

.field private static final DBG:Z = true

.field public static final HFP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothProfileState"

.field static final TRANSITION_TO_STABLE:I = 0x64


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mPendingCommandState:Landroid/bluetooth/BluetoothProfileState$PendingCommandState;

.field private mPendingDevice:Landroid/bluetooth/BluetoothDevice;

.field private mProfile:I

.field private mStableState:Landroid/bluetooth/BluetoothProfileState$StableState;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "profile"

    .prologue
    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothProfileState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/util/HierarchicalStateMachine;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/bluetooth/BluetoothProfileState$PendingCommandState;

    invoke-direct {v1, p0, v3}, Landroid/bluetooth/BluetoothProfileState$PendingCommandState;-><init>(Landroid/bluetooth/BluetoothProfileState;Landroid/bluetooth/BluetoothProfileState$1;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothProfileState;->mPendingCommandState:Landroid/bluetooth/BluetoothProfileState$PendingCommandState;

    new-instance v1, Landroid/bluetooth/BluetoothProfileState$StableState;

    invoke-direct {v1, p0, v3}, Landroid/bluetooth/BluetoothProfileState$StableState;-><init>(Landroid/bluetooth/BluetoothProfileState;Landroid/bluetooth/BluetoothProfileState$1;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothProfileState;->mStableState:Landroid/bluetooth/BluetoothProfileState$StableState;

    new-instance v1, Landroid/bluetooth/BluetoothProfileState$1;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothProfileState$1;-><init>(Landroid/bluetooth/BluetoothProfileState;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothProfileState;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput p2, p0, Landroid/bluetooth/BluetoothProfileState;->mProfile:I

    iget-object v1, p0, Landroid/bluetooth/BluetoothProfileState;->mStableState:Landroid/bluetooth/BluetoothProfileState$StableState;

    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothProfileState;->addState(Lcom/android/internal/util/HierarchicalState;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothProfileState;->mPendingCommandState:Landroid/bluetooth/BluetoothProfileState$PendingCommandState;

    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothProfileState;->addState(Lcom/android/internal/util/HierarchicalState;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothProfileState;->mStableState:Landroid/bluetooth/BluetoothProfileState$StableState;

    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothProfileState;->setInitialState(Lcom/android/internal/util/HierarchicalState;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothProfileState;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$1000(Landroid/bluetooth/BluetoothProfileState;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Landroid/bluetooth/BluetoothProfileState;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/bluetooth/BluetoothProfileState;->mProfile:I

    return v0
.end method

.method static synthetic access$300(Landroid/bluetooth/BluetoothProfileState;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileState;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$302(Landroid/bluetooth/BluetoothProfileState;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/bluetooth/BluetoothProfileState;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$400(Landroid/bluetooth/BluetoothProfileState;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothProfileState;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Landroid/bluetooth/BluetoothProfileState;)Landroid/bluetooth/BluetoothProfileState$PendingCommandState;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileState;->mPendingCommandState:Landroid/bluetooth/BluetoothProfileState$PendingCommandState;

    return-object v0
.end method

.method static synthetic access$600(Landroid/bluetooth/BluetoothProfileState;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothProfileState;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$700(Landroid/bluetooth/BluetoothProfileState;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothProfileState;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Landroid/bluetooth/BluetoothProfileState;)Landroid/bluetooth/BluetoothProfileState$StableState;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileState;->mStableState:Landroid/bluetooth/BluetoothProfileState$StableState;

    return-object v0
.end method

.method static synthetic access$900(Landroid/bluetooth/BluetoothProfileState;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothProfileState;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    const-string v0, "BluetoothProfileState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
