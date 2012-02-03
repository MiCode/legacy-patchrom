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
    .line 2012
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$8;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleReadCommand()Landroid/bluetooth/AtCommandResult;
    .locals 3

    .prologue
    .line 2015
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+CMER: 3,0,0,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$8;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mIndicatorsEnabled:Z
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$900(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "1"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v2, "0"

    goto :goto_0
.end method

.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 9
    .parameter "args"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2020
    array-length v2, p1

    if-ge v2, v8, :cond_0

    .line 2022
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v2, v5}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2051
    :goto_0
    return-object v2

    .line 2023
    :cond_0
    aget-object v2, p1, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    aget-object v2, p1, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    aget-object v2, p1, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2024
    const/4 v1, 0x0

    .line 2025
    .local v1, valid:Z
    aget-object v2, p1, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2026
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$8;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mIndicatorsEnabled:Z
    invoke-static {v2, v4}, Lcom/android/phone/BluetoothHandsfree;->access$902(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2027
    const/4 v1, 0x1

    .line 2032
    :cond_1
    :goto_1
    if-eqz v1, :cond_5

    .line 2033
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$8;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$2900(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_4

    .line 2034
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$8;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z
    invoke-static {v2, v5}, Lcom/android/phone/BluetoothHandsfree;->access$4802(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2035
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$8;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v3, "OK"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 2037
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$8;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->broadcastSlcEstablished()V
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$4900(Lcom/android/phone/BluetoothHandsfree;)V

    .line 2039
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$8;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->isIncallAudio()Z
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$5000(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2041
    const-wide/16 v2, 0x96

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2043
    :goto_2
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$8;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 2045
    :cond_2
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v2, v7}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0

    .line 2028
    :cond_3
    aget-object v2, p1, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2029
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$8;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mIndicatorsEnabled:Z
    invoke-static {v2, v5}, Lcom/android/phone/BluetoothHandsfree;->access$902(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2030
    const/4 v1, 0x1

    goto :goto_1

    .line 2042
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "BT HS/HF"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2047
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_4
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v2, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_0

    .line 2051
    .end local v1           #valid:Z
    :cond_5
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$8;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v2, v8}, Lcom/android/phone/BluetoothHandsfree;->reportCmeError(I)Landroid/bluetooth/AtCommandResult;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public handleTestCommand()Landroid/bluetooth/AtCommandResult;
    .locals 2

    .prologue
    .line 2056
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const-string v1, "+CMER: (3),(0),(0),(0-1)"

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
