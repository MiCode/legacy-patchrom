.class Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;
.super Ljava/lang/Thread;
.source "BluetoothHeadsetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHeadsetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RfcommConnectThread"
.end annotation


# static fields
.field private static final ECONNREFUSED:I = -0x6f

.field private static final EINTERRUPT:I = -0x3e8


# instance fields
.field private channel:I

.field private device:Landroid/bluetooth/BluetoothDevice;

.field final synthetic this$0:Lcom/android/phone/BluetoothHeadsetService;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .parameter
    .parameter "device"
    .parameter "channel"
    .parameter "type"

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    .line 353
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 354
    iput-object p2, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    .line 355
    iput p3, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->channel:I

    .line 356
    iput p4, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->type:I

    .line 357
    return-void
.end method

.method private waitForConnect(Landroid/bluetooth/HeadsetBase;)I
    .locals 4
    .parameter "headset"

    .prologue
    .line 361
    const/4 v1, 0x0

    .line 362
    .local v1, result:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x28

    if-ge v0, v2, :cond_1

    if-nez v1, :cond_1

    .line 364
    const/16 v2, 0x1f4

    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mConnectedStatusHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService;->access$1800(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/bluetooth/HeadsetBase;->waitForAsyncConnect(ILandroid/os/Handler;)I

    move-result v1

    .line 365
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 366
    invoke-virtual {p1}, Landroid/bluetooth/HeadsetBase;->disconnect()V

    .line 367
    const/16 v2, -0x3e8

    .line 370
    :goto_1
    return v2

    .line 362
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 370
    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/16 v9, -0x3e8

    const-string v8, "BT HSHFP"

    .line 377
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 378
    .local v2, timestamp:J
    new-instance v0, Landroid/bluetooth/HeadsetBase;

    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v4}, Lcom/android/phone/BluetoothHeadsetService;->access$200(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/PowerManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v5}, Lcom/android/phone/BluetoothHeadsetService;->access$300(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    iget v7, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->channel:I

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/bluetooth/HeadsetBase;-><init>(Landroid/os/PowerManager;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;I)V

    .line 380
    .local v0, headset:Landroid/bluetooth/HeadsetBase;
    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->waitForConnect(Landroid/bluetooth/HeadsetBase;)I

    move-result v1

    .line 382
    .local v1, result:I
    if-eq v1, v9, :cond_2

    if-eq v1, v10, :cond_2

    .line 383
    const/16 v4, -0x6f

    if-ne v1, v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mDeviceSdpQuery:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/phone/BluetoothHeadsetService;->access$1600(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-nez v4, :cond_1

    .line 386
    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->getCurrentDevice()Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Lcom/android/phone/BluetoothHeadsetService;->access$400(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    #setter for: Lcom/android/phone/BluetoothHeadsetService;->mDeviceSdpQuery:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4, v5}, Lcom/android/phone/BluetoothHeadsetService;->access$1602(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 387
    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->fetchUuidsWithSdp()Z

    .line 388
    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #setter for: Lcom/android/phone/BluetoothHeadsetService;->mConnectThread:Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;
    invoke-static {v4, v12}, Lcom/android/phone/BluetoothHeadsetService;->access$1902(Lcom/android/phone/BluetoothHeadsetService;Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;)Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    const-string v4, "BT HSHFP"

    const-string v4, "Trying to connect to rfcomm socket again after 1 sec"

    invoke-static {v8, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->waitForConnect(Landroid/bluetooth/HeadsetBase;)I

    move-result v1

    .line 398
    :cond_2
    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #setter for: Lcom/android/phone/BluetoothHeadsetService;->mDeviceSdpQuery:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4, v12}, Lcom/android/phone/BluetoothHeadsetService;->access$1602(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 399
    if-eq v1, v9, :cond_0

    .line 401
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RFCOMM connection attempt took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/BluetoothHeadsetService;->access$2000(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->isInterrupted()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 404
    invoke-virtual {v0}, Landroid/bluetooth/HeadsetBase;->disconnect()V

    goto :goto_0

    .line 407
    :cond_3
    if-gez v1, :cond_4

    .line 408
    const-string v4, "BT HSHFP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "headset.waitForAsyncConnect() error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mConnectingStatusHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/phone/BluetoothHeadsetService;->access$2100(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 411
    :cond_4
    if-nez v1, :cond_5

    .line 412
    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mConnectingStatusHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/phone/BluetoothHeadsetService;->access$2100(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 413
    const-string v4, "BT HSHFP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mHeadset.waitForAsyncConnect() error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(timeout)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 416
    :cond_5
    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mConnectingStatusHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/phone/BluetoothHeadsetService;->access$2100(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v10, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 394
    :catch_0
    move-exception v4

    goto/16 :goto_1
.end method
