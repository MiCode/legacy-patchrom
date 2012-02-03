.class Landroid/bluetooth/BluetoothProfileState$PendingCommandState;
.super Lcom/android/internal/util/HierarchicalState;
.source "BluetoothProfileState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingCommandState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothProfileState;


# direct methods
.method private constructor <init>(Landroid/bluetooth/BluetoothProfileState;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Landroid/bluetooth/BluetoothProfileState$PendingCommandState;->this$0:Landroid/bluetooth/BluetoothProfileState;

    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/bluetooth/BluetoothProfileState;Landroid/bluetooth/BluetoothProfileState$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothProfileState$PendingCommandState;-><init>(Landroid/bluetooth/BluetoothProfileState;)V

    return-void
.end method

.method private dispatchMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 129
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 131
    .local v2, deviceProfileMgr:Landroid/bluetooth/BluetoothDeviceProfileState;
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 132
    .local v0, cmd:I
    iget-object v3, p0, Landroid/bluetooth/BluetoothProfileState$PendingCommandState;->this$0:Landroid/bluetooth/BluetoothProfileState;

    #getter for: Landroid/bluetooth/BluetoothProfileState;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Landroid/bluetooth/BluetoothProfileState;->access$300(Landroid/bluetooth/BluetoothProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/bluetooth/BluetoothProfileState$PendingCommandState;->this$0:Landroid/bluetooth/BluetoothProfileState;

    #getter for: Landroid/bluetooth/BluetoothProfileState;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Landroid/bluetooth/BluetoothProfileState;->access$300(Landroid/bluetooth/BluetoothProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 133
    :cond_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothProfileState$PendingCommandState;->this$0:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    #setter for: Landroid/bluetooth/BluetoothProfileState;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3, v4}, Landroid/bluetooth/BluetoothProfileState;->access$302(Landroid/bluetooth/BluetoothProfileState;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 134
    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    .line 141
    :goto_0
    return-void

    .line 136
    :cond_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 137
    .local v1, deferMsg:Landroid/os/Message;
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 138
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 139
    iget-object v3, p0, Landroid/bluetooth/BluetoothProfileState$PendingCommandState;->this$0:Landroid/bluetooth/BluetoothProfileState;

    #calls: Landroid/bluetooth/BluetoothProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, v1}, Landroid/bluetooth/BluetoothProfileState;->access$1000(Landroid/bluetooth/BluetoothProfileState;Landroid/os/Message;)V

    goto :goto_0
.end method


# virtual methods
.method protected enter()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileState$PendingCommandState;->this$0:Landroid/bluetooth/BluetoothProfileState;

    const-string v1, "Entering PendingCommandState State"

    #calls: Landroid/bluetooth/BluetoothProfileState;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothProfileState;->access$400(Landroid/bluetooth/BluetoothProfileState;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileState$PendingCommandState;->this$0:Landroid/bluetooth/BluetoothProfileState;

    #calls: Landroid/bluetooth/BluetoothProfileState;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v0}, Landroid/bluetooth/BluetoothProfileState;->access$700(Landroid/bluetooth/BluetoothProfileState;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/bluetooth/BluetoothProfileState$PendingCommandState;->dispatchMessage(Landroid/os/Message;)V

    .line 116
    return-void
.end method

.method protected processMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    .line 120
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 121
    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileState$PendingCommandState;->this$0:Landroid/bluetooth/BluetoothProfileState;

    iget-object v1, p0, Landroid/bluetooth/BluetoothProfileState$PendingCommandState;->this$0:Landroid/bluetooth/BluetoothProfileState;

    #getter for: Landroid/bluetooth/BluetoothProfileState;->mStableState:Landroid/bluetooth/BluetoothProfileState$StableState;
    invoke-static {v1}, Landroid/bluetooth/BluetoothProfileState;->access$800(Landroid/bluetooth/BluetoothProfileState;)Landroid/bluetooth/BluetoothProfileState$StableState;

    move-result-object v1

    #calls: Landroid/bluetooth/BluetoothProfileState;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothProfileState;->access$900(Landroid/bluetooth/BluetoothProfileState;Lcom/android/internal/util/HierarchicalState;)V

    .line 125
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 123
    :cond_0
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothProfileState$PendingCommandState;->dispatchMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
