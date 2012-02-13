.class Lcom/android/phone/BluetoothHandsfree$7;
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
    .line 1880
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$7;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method

.method private sendXMOT()Landroid/bluetooth/AtCommandResult;
    .locals 2

    .prologue
    .line 1882
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const-string v1, "+XMOT=MB510,13,2.1,3"

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public handleActionCommand()Landroid/bluetooth/AtCommandResult;
    .locals 1

    .prologue
    .line 1948
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$7;->sendXMOT()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method public handleReadCommand()Landroid/bluetooth/AtCommandResult;
    .locals 1

    .prologue
    .line 1953
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$7;->sendXMOT()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 8
    .parameter "args"

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v6, "BT HS/HF"

    .line 1889
    array-length v2, p1

    if-ge v2, v7, :cond_0

    .line 1890
    const-string v2, "BT HS/HF"

    const-string v2, "Invalid arguments for XMOT"

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v2, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1943
    :goto_0
    return-object v2

    .line 1892
    :cond_0
    aget-object v2, p1, v5

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 1894
    aget-object v1, p1, v5

    check-cast v1, Ljava/lang/String;

    .line 1897
    .local v1, mVendorId:Ljava/lang/String;
    aget-object v0, p1, v4

    check-cast v0, Ljava/lang/Integer;

    .line 1899
    .local v0, mExHfpFeat:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1930
    const-string v2, "BT HS/HF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Extended HFP feature bits "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$7;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mHFBatteryReportingSupported:Z
    invoke-static {v2, v5}, Lcom/android/phone/BluetoothHandsfree;->access$4802(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1933
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$7;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mHFBatteryChargingStatusSupported:Z
    invoke-static {v2, v5}, Lcom/android/phone/BluetoothHandsfree;->access$4902(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1934
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$7;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$4700(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/bluetooth/BluetoothHeadset;->setHeadsetFeature(II)V

    .line 1939
    :goto_1
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$700()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "BT HS/HF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "args = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$7;->sendXMOT()Landroid/bluetooth/AtCommandResult;

    move-result-object v2

    goto :goto_0

    .line 1901
    :pswitch_0
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$700()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "BT HS/HF"

    const-string v2, "Extended HFP feature bits 0"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    :cond_2
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$7;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mHFBatteryReportingSupported:Z
    invoke-static {v2, v5}, Lcom/android/phone/BluetoothHandsfree;->access$4802(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1903
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$7;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mHFBatteryChargingStatusSupported:Z
    invoke-static {v2, v5}, Lcom/android/phone/BluetoothHandsfree;->access$4902(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1904
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$7;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$4700(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/bluetooth/BluetoothHeadset;->setHeadsetFeature(II)V

    goto :goto_1

    .line 1908
    :pswitch_1
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$700()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "BT HS/HF"

    const-string v2, "HF supports battery reporting"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    :cond_3
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$7;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mHFBatteryReportingSupported:Z
    invoke-static {v2, v4}, Lcom/android/phone/BluetoothHandsfree;->access$4802(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1910
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$7;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$4700(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/bluetooth/BluetoothHeadset;->setHeadsetFeature(II)V

    .line 1912
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$7;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendMotBtHfStatusIntent(Ljava/lang/Integer;)V
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$5000(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/Integer;)V

    goto :goto_1

    .line 1915
    :pswitch_2
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$700()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "BT HS/HF"

    const-string v2, "HF supports battery charging status reporting"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    :cond_4
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$7;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mHFBatteryChargingStatusSupported:Z
    invoke-static {v2, v4}, Lcom/android/phone/BluetoothHandsfree;->access$4902(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1917
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$7;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$4700(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    invoke-virtual {v2, v4, v7}, Landroid/bluetooth/BluetoothHeadset;->setHeadsetFeature(II)V

    .line 1919
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$7;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendMotBtHfStatusIntent(Ljava/lang/Integer;)V
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$5000(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 1922
    :pswitch_3
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$700()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "BT HS/HF"

    const-string v2, "HF supports both battery and charging status reporting"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    :cond_5
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$7;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mHFBatteryReportingSupported:Z
    invoke-static {v2, v4}, Lcom/android/phone/BluetoothHandsfree;->access$4802(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1924
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$7;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mHFBatteryChargingStatusSupported:Z
    invoke-static {v2, v4}, Lcom/android/phone/BluetoothHandsfree;->access$4902(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1925
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$7;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$4700(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v4, v3}, Landroid/bluetooth/BluetoothHeadset;->setHeadsetFeature(II)V

    .line 1927
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$7;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendMotBtHfStatusIntent(Ljava/lang/Integer;)V
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$5000(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 1942
    .end local v0           #mExHfpFeat:Ljava/lang/Integer;
    .end local v1           #mVendorId:Ljava/lang/String;
    :cond_6
    const-string v2, "BT HS/HF"

    const-string v2, "Invalid parameters return error"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v2, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_0

    .line 1899
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
