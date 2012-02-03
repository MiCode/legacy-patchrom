.class Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;
.super Lcom/android/internal/util/HierarchicalState;
.source "BluetoothDeviceProfileState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDeviceProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BondedDevice"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothDeviceProfileState;


# direct methods
.method private constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDeviceProfileState$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 256
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;-><init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V

    return-void
.end method


# virtual methods
.method protected enter()V
    .locals 4

    .prologue
    .line 259
    const-string v1, "BluetoothDeviceProfileState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Entering ACL Connected state with: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1500(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;

    move-result-object v3

    iget v3, v3, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 261
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1600(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 262
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1700(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    .line 263
    return-void
.end method

.method protected processMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "message"

    .prologue
    const/16 v5, 0x3e8

    const/4 v4, 0x1

    const-string v3, "BluetoothDeviceProfileState"

    .line 266
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACL Connected State -> Processing Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1800(Landroid/bluetooth/BluetoothDeviceProfileState;Ljava/lang/String;)V

    .line 267
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 348
    const/4 v0, 0x0

    .line 350
    :goto_0
    return v0

    .line 270
    :sswitch_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mOutgoingHandsfree:Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1900(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;

    move-result-object v1

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2000(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/HierarchicalState;)V

    :cond_0
    :goto_1
    :sswitch_1
    move v0, v4

    .line 350
    goto :goto_0

    .line 273
    :sswitch_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingHandsfree:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2100(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;

    move-result-object v1

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2200(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_1

    .line 276
    :sswitch_3
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingHandsfree:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2100(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;

    move-result-object v1

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2300(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_1

    .line 280
    :sswitch_4
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mOutgoingA2dp:Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2400(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;

    move-result-object v1

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2500(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_1

    .line 284
    :sswitch_5
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingA2dp:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2600(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;

    move-result-object v1

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2700(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_1

    .line 287
    :sswitch_6
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->processCommand(I)Z

    goto :goto_1

    .line 290
    :sswitch_7
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetState:I
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$700(Landroid/bluetooth/BluetoothDeviceProfileState;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    .line 292
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2800(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_1

    .line 294
    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpState:I
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$800(Landroid/bluetooth/BluetoothDeviceProfileState;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 295
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    .line 296
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2900(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_1

    .line 299
    :cond_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->processCommand(I)Z

    goto :goto_1

    .line 302
    :sswitch_8
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$500(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->isPhoneDocked(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3000(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetServiceConnected:Z
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1200(Landroid/bluetooth/BluetoothDeviceProfileState;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 306
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3100(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 308
    :cond_3
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1000(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$500(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ne v0, v5, :cond_4

    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1000(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$500(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 311
    const-string v0, "BluetoothDeviceProfileState"

    const-string v0, "Headset:Auto Connect Profiles"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1000(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$500(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->connectHeadset(Landroid/bluetooth/BluetoothDevice;)Z

    .line 314
    :cond_4
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3200(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothA2dpService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3200(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothA2dpService;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$500(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/server/BluetoothA2dpService;->getSinkPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3200(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothA2dpService;

    move-result-object v0

    invoke-virtual {v0}, Landroid/server/BluetoothA2dpService;->getConnectedSinks()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    .line 318
    const-string v0, "BluetoothDeviceProfileState"

    const-string v0, "A2dp:Auto Connect Profiles"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3200(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothA2dpService;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$500(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/server/BluetoothA2dpService;->connectSink(Landroid/bluetooth/BluetoothDevice;)Z

    goto/16 :goto_1

    .line 324
    :sswitch_9
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$500(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->isPhoneDocked(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3000(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 328
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3200(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothA2dpService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3200(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothA2dpService;

    move-result-object v0

    invoke-virtual {v0}, Landroid/server/BluetoothA2dpService;->getConnectedSinks()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    .line 330
    const-string v0, "BluetoothDeviceProfileState"

    const-string v0, "A2dp:Connect Other Profiles"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3200(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothA2dpService;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$500(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/server/BluetoothA2dpService;->connectSink(Landroid/bluetooth/BluetoothDevice;)Z

    goto/16 :goto_1

    .line 333
    :cond_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v4, :cond_0

    .line 334
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetServiceConnected:Z
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1200(Landroid/bluetooth/BluetoothDeviceProfileState;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 335
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3300(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 337
    :cond_6
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1000(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$500(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    const-string v0, "BluetoothDeviceProfileState"

    const-string v0, "Headset:Connect Other Profiles"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1000(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$500(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->connectHeadset(Landroid/bluetooth/BluetoothDevice;)Z

    goto/16 :goto_1

    .line 267
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_0
        0x6 -> :sswitch_3
        0x7 -> :sswitch_4
        0x8 -> :sswitch_5
        0x9 -> :sswitch_6
        0x64 -> :sswitch_7
        0x65 -> :sswitch_8
        0x66 -> :sswitch_1
        0x67 -> :sswitch_9
    .end sparse-switch
.end method
