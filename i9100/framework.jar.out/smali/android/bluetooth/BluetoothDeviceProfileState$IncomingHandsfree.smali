.class Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;
.super Lcom/android/internal/util/HierarchicalState;
.source "BluetoothDeviceProfileState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDeviceProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncomingHandsfree"
.end annotation


# instance fields
.field private mCommand:I

.field private mStatus:Z

.field final synthetic this$0:Landroid/bluetooth/BluetoothDeviceProfileState;


# direct methods
.method private constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V
    .locals 1
    .parameter

    .prologue
    .line 450
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalState;-><init>()V

    .line 451
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->mStatus:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDeviceProfileState$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 450
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;-><init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V

    return-void
.end method


# virtual methods
.method protected enter()V
    .locals 3

    .prologue
    const-string v2, "BluetoothDeviceProfileState"

    .line 456
    const-string v0, "BluetoothDeviceProfileState"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Entering IncomingHandsfree state with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4800(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;

    move-result-object v1

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4900(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;

    move-result-object v0

    iget v0, v0, Landroid/os/Message;->what:I

    iput v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->mCommand:I

    .line 458
    iget v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->mCommand:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->mCommand:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 460
    const-string v0, "BluetoothDeviceProfileState"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: IncomingHandsfree state with command:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->mCommand:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->mCommand:I

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->processCommand(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->mStatus:Z

    .line 463
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->mStatus:Z

    if-nez v0, :cond_1

    .line 464
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    .line 465
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mService:Landroid/server/BluetoothService;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3600(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothService;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/server/BluetoothService;->sendProfileStateMessage(II)V

    .line 468
    :cond_1
    return-void
.end method

.method protected processMessage(Landroid/os/Message;)Z
    .locals 8
    .parameter "message"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 472
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IncomingHandsfree State -> Processing Message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1800(Landroid/bluetooth/BluetoothDeviceProfileState;Ljava/lang/String;)V

    .line 473
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    move v2, v6

    .line 537
    :goto_0
    return v2

    .line 475
    :sswitch_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5000(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    :cond_0
    :goto_1
    :sswitch_1
    move v2, v5

    .line 537
    goto :goto_0

    .line 479
    :sswitch_2
    const-string v2, "BluetoothDeviceProfileState"

    const-string v3, "Error: Incoming connection with a pending incoming connection"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 482
    :sswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 483
    .local v0, val:I
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mConnectionAccessReplyReceived:Z
    invoke-static {v2, v5}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5102(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z

    .line 484
    const/4 v1, 0x0

    .line 485
    .local v1, value:Z
    if-ne v0, v5, :cond_1

    .line 486
    const/4 v1, 0x1

    .line 488
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->setTrust(I)V
    invoke-static {v2, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$600(Landroid/bluetooth/BluetoothDeviceProfileState;I)V

    .line 490
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->handleIncomingConnection(IZ)Z
    invoke-static {v2, v7, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5200(Landroid/bluetooth/BluetoothDeviceProfileState;IZ)Z

    goto :goto_1

    .line 493
    .end local v0           #val:I
    .end local v1           #value:Z
    :sswitch_4
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mConnectionAccessReplyReceived:Z
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5100(Landroid/bluetooth/BluetoothDeviceProfileState;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 494
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->handleIncomingConnection(IZ)Z
    invoke-static {v2, v7, v6}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5200(Landroid/bluetooth/BluetoothDeviceProfileState;IZ)Z

    .line 495
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->sendConnectionAccessRemovalIntent()V
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5300(Landroid/bluetooth/BluetoothDeviceProfileState;)V

    .line 496
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    goto :goto_1

    .line 501
    :sswitch_5
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5400(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_1

    .line 504
    :sswitch_6
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5500(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_1

    .line 511
    :sswitch_7
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5600(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_1

    .line 518
    :sswitch_8
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5700(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_1

    .line 529
    :sswitch_9
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5800(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_1

    .line 532
    :sswitch_a
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mBondedDevice:Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;
    invoke-static {v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4600(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;

    move-result-object v3

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5900(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_1

    .line 473
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_6
        0x4 -> :sswitch_5
        0x5 -> :sswitch_7
        0x6 -> :sswitch_1
        0x7 -> :sswitch_8
        0x8 -> :sswitch_1
        0x9 -> :sswitch_9
        0x64 -> :sswitch_9
        0x65 -> :sswitch_9
        0x66 -> :sswitch_a
        0x67 -> :sswitch_9
        0x68 -> :sswitch_3
        0x69 -> :sswitch_4
    .end sparse-switch
.end method
