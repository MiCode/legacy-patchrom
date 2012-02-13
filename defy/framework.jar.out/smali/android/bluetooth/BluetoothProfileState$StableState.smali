.class Landroid/bluetooth/BluetoothProfileState$StableState;
.super Lcom/android/internal/util/HierarchicalState;
.source "BluetoothProfileState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StableState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothProfileState;


# direct methods
.method private constructor <init>(Landroid/bluetooth/BluetoothProfileState;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/bluetooth/BluetoothProfileState$StableState;->this$0:Landroid/bluetooth/BluetoothProfileState;

    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/bluetooth/BluetoothProfileState;Landroid/bluetooth/BluetoothProfileState$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothProfileState$StableState;-><init>(Landroid/bluetooth/BluetoothProfileState;)V

    return-void
.end method


# virtual methods
.method protected enter()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileState$StableState;->this$0:Landroid/bluetooth/BluetoothProfileState;

    const-string v1, "Entering Stable State"

    #calls: Landroid/bluetooth/BluetoothProfileState;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothProfileState;->access$400(Landroid/bluetooth/BluetoothProfileState;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileState$StableState;->this$0:Landroid/bluetooth/BluetoothProfileState;

    const/4 v1, 0x0

    #setter for: Landroid/bluetooth/BluetoothProfileState;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothProfileState;->access$302(Landroid/bluetooth/BluetoothProfileState;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method protected processMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileState$StableState;->this$0:Landroid/bluetooth/BluetoothProfileState;

    iget-object v1, p0, Landroid/bluetooth/BluetoothProfileState$StableState;->this$0:Landroid/bluetooth/BluetoothProfileState;

    #getter for: Landroid/bluetooth/BluetoothProfileState;->mPendingCommandState:Landroid/bluetooth/BluetoothProfileState$PendingCommandState;
    invoke-static {v1}, Landroid/bluetooth/BluetoothProfileState;->access$500(Landroid/bluetooth/BluetoothProfileState;)Landroid/bluetooth/BluetoothProfileState$PendingCommandState;

    move-result-object v1

    #calls: Landroid/bluetooth/BluetoothProfileState;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothProfileState;->access$600(Landroid/bluetooth/BluetoothProfileState;Lcom/android/internal/util/HierarchicalState;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
