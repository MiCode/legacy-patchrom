.class Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;
.super Lcom/android/internal/util/HierarchicalState;
.source "BluetoothDeviceProfileState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDeviceProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OutgoingHandsfree"
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
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalState;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mStatus:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDeviceProfileState$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;-><init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V

    return-void
.end method


# virtual methods
.method protected enter()V
    .locals 3

    .prologue
    const-string v2, "BluetoothDeviceProfileState"

    const-string v0, "BluetoothDeviceProfileState"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Entering OutgoingHandsfree state with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3100(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;

    move-result-object v1

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3200(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;

    move-result-object v0

    iget v0, v0, Landroid/os/Message;->what:I

    iput v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mCommand:I

    iget v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mCommand:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mCommand:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const-string v0, "BluetoothDeviceProfileState"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: OutgoingHandsfree state with command:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mCommand:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mCommand:I

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->processCommand(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mStatus:Z

    iget-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mStatus:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mService:Landroid/server/BluetoothService;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3300(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothService;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/server/BluetoothService;->sendProfileStateMessage(II)V

    :cond_1
    return-void
.end method

.method protected processMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "message"

    .prologue
    const/4 v5, 0x1

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OutgoingHandsfree State -> Processing Message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1600(Landroid/bluetooth/BluetoothDeviceProfileState;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .local v1, deferMsg:Landroid/os/Message;
    iget v0, p1, Landroid/os/Message;->what:I

    .local v0, command:I
    sparse-switch v0, :sswitch_data_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :sswitch_0
    iget v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mCommand:I

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3400(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    :cond_0
    :goto_1
    move v2, v5

    goto :goto_0

    :sswitch_1
    iget v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mCommand:I

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-virtual {v2, v5}, Landroid/bluetooth/BluetoothDeviceProfileState;->cancelCommand(I)V

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingHandsfree:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;
    invoke-static {v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1900(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;

    move-result-object v3

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3500(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3600(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_1

    :sswitch_2
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingA2dp:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;
    invoke-static {v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2400(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;

    move-result-object v3

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3700(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/HierarchicalState;)V

    iget-boolean v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mStatus:Z

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mCommand:I

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3800(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_1

    :sswitch_3
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3900(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_1

    :sswitch_4
    iget v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mCommand:I

    if-ne v2, v5, :cond_0

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-virtual {v2, v5}, Landroid/bluetooth/BluetoothDeviceProfileState;->cancelCommand(I)V

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->processCommand(I)Z

    goto :goto_1

    :sswitch_5
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-virtual {v2, v5}, Landroid/bluetooth/BluetoothDeviceProfileState;->cancelCommand(I)V

    goto :goto_1

    :sswitch_6
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4000(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_1

    :sswitch_7
    iget-boolean v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mStatus:Z

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mCommand:I

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4100(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_1

    :sswitch_8
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4200(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_1

    :sswitch_9
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mBondedDevice:Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;
    invoke-static {v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4300(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;

    move-result-object v3

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4400(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0x64 -> :sswitch_8
        0x65 -> :sswitch_8
        0x66 -> :sswitch_9
        0x67 -> :sswitch_8
    .end sparse-switch
.end method
