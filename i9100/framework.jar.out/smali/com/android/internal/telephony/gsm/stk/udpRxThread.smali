.class Lcom/android/internal/telephony/gsm/stk/udpRxThread;
.super Ljava/lang/Object;
.source "StkBIPConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field conn:Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;

.field volatile stopRequestUDP:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/udpRxThread;->stopRequestUDP:Z

    .line 480
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/udpRxThread;->conn:Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;

    .line 482
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 424
    :cond_0
    :goto_0
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/stk/udpRxThread;->stopRequestUDP:Z

    if-nez v6, :cond_3

    .line 426
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 427
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/stk/udpRxThread;->stopRequestUDP:Z

    .line 430
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/udpRxThread;->conn:Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/gsm/stk/StkService;->isBIPCmdBeingProcessed()Z

    move-result v6

    if-nez v6, :cond_2

    .line 433
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/udpRxThread;->conn:Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;

    iget-object v2, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->socket:Ljava/lang/Object;

    check-cast v2, Ljava/net/DatagramSocket;

    .line 434
    .local v2, ds:Ljava/net/DatagramSocket;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/udpRxThread;->conn:Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;

    iget v5, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->bufferSize:I

    .line 436
    .local v5, size:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Maximum UDP Buffer Size that can be received "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    new-array v0, v5, [B

    .line 439
    .local v0, dataReceived:[B
    new-instance v1, Ljava/net/DatagramPacket;

    invoke-direct {v1, v0, v5}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 440
    .local v1, dp:Ljava/net/DatagramPacket;
    invoke-virtual {v2, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 441
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Length of UDP data received from network "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 442
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/udpRxThread;->conn:Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 443
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Size of rxBuf : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/stk/udpRxThread;->conn:Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 447
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/udpRxThread;->conn:Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->mStkBIPManager:Lcom/android/internal/telephony/gsm/stk/StkBIPManager;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/stk/udpRxThread;->conn:Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->sendDataAvailableEvent(Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 458
    .end local v0           #dataReceived:[B
    .end local v1           #dp:Ljava/net/DatagramPacket;
    .end local v2           #ds:Ljava/net/DatagramSocket;
    .end local v5           #size:I
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 460
    .local v3, e:Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 461
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 462
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 463
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/stk/udpRxThread;->stopRequestUDP:Z

    goto/16 :goto_0

    .line 451
    .end local v3           #e:Ljava/io/IOException;
    :cond_2
    const-wide/16 v6, 0x64

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 452
    :catch_1
    move-exception v3

    .line 453
    .local v3, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v6, "Interrupt Received!"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 454
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/stk/udpRxThread;->stopRequestUDP:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 466
    .end local v3           #e:Ljava/lang/InterruptedException;
    :catch_2
    move-exception v6

    move-object v4, v6

    .line 468
    .local v4, ee:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 470
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 471
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/stk/udpRxThread;->stopRequestUDP:Z

    goto/16 :goto_0

    .line 477
    .end local v4           #ee:Ljava/lang/Exception;
    :cond_3
    return-void
.end method
