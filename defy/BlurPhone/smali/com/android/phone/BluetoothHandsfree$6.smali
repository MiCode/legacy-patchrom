.class Lcom/android/phone/BluetoothHandsfree$6;
.super Landroid/bluetooth/AtCommandHandler;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BluetoothHandsfree;->initializeHandsfreeAtParser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0
    .parameter

    .prologue
    .line 1832
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$6;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method

.method private sendBRSF()Landroid/bluetooth/AtCommandResult;
    .locals 3

    .prologue
    .line 1834
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+BRSF: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$6;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$3200(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public handleActionCommand()Landroid/bluetooth/AtCommandResult;
    .locals 1

    .prologue
    .line 1871
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$6;->sendBRSF()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method public handleReadCommand()Landroid/bluetooth/AtCommandResult;
    .locals 1

    .prologue
    .line 1876
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$6;->sendBRSF()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 6
    .parameter "args"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const-string v3, "BT HS/HF"

    .line 1841
    array-length v0, p1

    if-ne v0, v4, :cond_2

    aget-object v0, p1, v2

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 1842
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$6;->this$0:Lcom/android/phone/BluetoothHandsfree;

    aget-object v0, p1, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I
    invoke-static {v1, v0}, Lcom/android/phone/BluetoothHandsfree;->access$2902(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 1844
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$6;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2900(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1845
    const-string v0, "BT HS/HF"

    const-string v0, "BRSF_HF_EC_NR is on; headset has EC/NR, so disable AG EC"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$6;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2000(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v0

    const-string v1, "bt_headset_nrec=off"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1854
    :goto_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$6;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2900(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    .line 1856
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$6;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$4700(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    invoke-virtual {v0, v5, v2}, Landroid/bluetooth/BluetoothHeadset;->setHeadsetFeature(II)V

    .line 1866
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$6;->sendBRSF()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0

    .line 1849
    :cond_0
    const-string v0, "BT HS/HF"

    const-string v0, "BRSF_HF_EC_NR is off; headset does NOT have EC/NR, so enable AG EC"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$6;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2000(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v0

    const-string v1, "bt_headset_nrec=on"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 1860
    :cond_1
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$6;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$4700(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Landroid/bluetooth/BluetoothHeadset;->setHeadsetFeature(II)V

    goto :goto_1

    .line 1864
    :cond_2
    const-string v0, "BT HS/HF"

    const-string v0, "HF didn\'t sent BRSF assuming 0"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
