.class Lcom/android/phone/BluetoothHandsfree$8;
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
    .line 1957
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$8;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleActionCommand()Landroid/bluetooth/AtCommandResult;
    .locals 2

    .prologue
    .line 2017
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    return-object v0
.end method

.method public handleReadCommand()Landroid/bluetooth/AtCommandResult;
    .locals 2

    .prologue
    .line 2022
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    return-object v0
.end method

.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 9
    .parameter "args"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    const-string v4, "BT HS/HF"

    .line 1965
    array-length v2, p1

    if-lez v2, :cond_12

    .line 1966
    aget-object v1, p1, v7

    check-cast v1, Ljava/lang/Integer;

    .line 1967
    .local v1, numKey:Ljava/lang/Integer;
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$700()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "BT HS/HF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "num of args = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "num of key pairs = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    :cond_0
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    if-gt v0, v2, :cond_11

    .line 1969
    aget-object v2, p1, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 2005
    const-string v2, "BT HS/HF"

    const-string v2, "Invalid key"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 1971
    :pswitch_0
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$700()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "BT HS/HF"

    const-string v2, "Battery status event"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    :cond_2
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_5

    .line 1973
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$700()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "BT HS/HF"

    const-string v2, "Battery level event 0-25%"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    :cond_3
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$8;->this$0:Lcom/android/phone/BluetoothHandsfree;

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    #setter for: Lcom/android/phone/BluetoothHandsfree;->currBtHfBatteryStatus:I
    invoke-static {v3, v2}, Lcom/android/phone/BluetoothHandsfree;->access$5102(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 1975
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$8;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->lowBtHfBatteryLevelNotification()V
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$5200(Lcom/android/phone/BluetoothHandsfree;)V

    .line 1986
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$8;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->currBtHfBatteryStatus:I
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$5100(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v2

    if-eq v2, v6, :cond_1

    .line 1987
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$8;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$8;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->currBtHfBatteryStatus:I
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$5100(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendHfBatteryStatusIntent(Ljava/lang/Integer;)V
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$5300(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/Integer;)V

    goto :goto_1

    .line 1976
    :cond_5
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v5, :cond_7

    .line 1977
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$700()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "BT HS/HF"

    const-string v2, "Battery level event 25-50%"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    :cond_6
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$8;->this$0:Lcom/android/phone/BluetoothHandsfree;

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    #setter for: Lcom/android/phone/BluetoothHandsfree;->currBtHfBatteryStatus:I
    invoke-static {v3, v2}, Lcom/android/phone/BluetoothHandsfree;->access$5102(Lcom/android/phone/BluetoothHandsfree;I)I

    goto :goto_2

    .line 1979
    :cond_7
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v8, :cond_9

    .line 1980
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$700()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "BT HS/HF"

    const-string v2, "Battery level event 50-75%"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    :cond_8
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$8;->this$0:Lcom/android/phone/BluetoothHandsfree;

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    #setter for: Lcom/android/phone/BluetoothHandsfree;->currBtHfBatteryStatus:I
    invoke-static {v3, v2}, Lcom/android/phone/BluetoothHandsfree;->access$5102(Lcom/android/phone/BluetoothHandsfree;I)I

    goto :goto_2

    .line 1982
    :cond_9
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 1983
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$700()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "BT HS/HF"

    const-string v2, "Battery level event 75-100%"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    :cond_a
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$8;->this$0:Lcom/android/phone/BluetoothHandsfree;

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    #setter for: Lcom/android/phone/BluetoothHandsfree;->currBtHfBatteryStatus:I
    invoke-static {v3, v2}, Lcom/android/phone/BluetoothHandsfree;->access$5102(Lcom/android/phone/BluetoothHandsfree;I)I

    goto/16 :goto_2

    .line 1990
    :pswitch_1
    const-string v2, "BT HS/HF"

    const-string v2, "charging event"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_d

    .line 1992
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$700()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "BT HS/HF"

    const-string v2, "Charging status low battery"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    :cond_b
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$8;->this$0:Lcom/android/phone/BluetoothHandsfree;

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    #setter for: Lcom/android/phone/BluetoothHandsfree;->currBtHfChargeStatus:I
    invoke-static {v3, v2}, Lcom/android/phone/BluetoothHandsfree;->access$5402(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 2001
    :cond_c
    :goto_3
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$8;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->currBtHfChargeStatus:I
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$5400(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v2

    if-eq v2, v6, :cond_1

    .line 2002
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$8;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$8;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->currBtHfChargeStatus:I
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$5400(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendHfChargingStatusIntent(Ljava/lang/Integer;)V
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$5500(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 1994
    :cond_d
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v5, :cond_f

    .line 1995
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$700()Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "BT HS/HF"

    const-string v2, "charging"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    :cond_e
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$8;->this$0:Lcom/android/phone/BluetoothHandsfree;

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    #setter for: Lcom/android/phone/BluetoothHandsfree;->currBtHfChargeStatus:I
    invoke-static {v3, v2}, Lcom/android/phone/BluetoothHandsfree;->access$5402(Lcom/android/phone/BluetoothHandsfree;I)I

    goto :goto_3

    .line 1997
    :cond_f
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v8, :cond_c

    .line 1998
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$700()Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "BT HS/HF"

    const-string v2, "wall-powered"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    :cond_10
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$8;->this$0:Lcom/android/phone/BluetoothHandsfree;

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    #setter for: Lcom/android/phone/BluetoothHandsfree;->currBtHfChargeStatus:I
    invoke-static {v3, v2}, Lcom/android/phone/BluetoothHandsfree;->access$5402(Lcom/android/phone/BluetoothHandsfree;I)I

    goto :goto_3

    .line 2009
    :cond_11
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v2, v7}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2012
    .end local v0           #i:I
    .end local v1           #numKey:Ljava/lang/Integer;
    :goto_4
    return-object v2

    .line 2011
    :cond_12
    const-string v2, "BT HS/HF"

    const-string v2, "argument length is 0"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v2, v5}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_4

    .line 1969
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
