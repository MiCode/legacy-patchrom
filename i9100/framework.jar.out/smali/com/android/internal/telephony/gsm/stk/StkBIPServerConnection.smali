.class Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;
.super Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;
.source "StkBIPConnection.java"


# instance fields
.field byteArrayWriter:Ljava/io/ByteArrayOutputStream;

.field lastReadPosition:I

.field linkState:B

.field listener:Ljava/lang/Thread;

.field reader:Ljava/io/BufferedInputStream;

.field socket:Ljava/net/Socket;

.field storeSendData:Ljava/io/ByteArrayOutputStream;

.field writer:Ljava/io/BufferedOutputStream;


# direct methods
.method public constructor <init>(ILcom/android/internal/telephony/gsm/stk/TransportLevel;Lcom/android/internal/telephony/gsm/stk/StkBIPManager;)V
    .locals 2
    .parameter "buffSize"
    .parameter "iface"
    .parameter "stkBIPManager"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 292
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;-><init>(ILcom/android/internal/telephony/gsm/stk/TransportLevel;Lcom/android/internal/telephony/gsm/stk/StkBIPManager;)V

    .line 280
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->listener:Ljava/lang/Thread;

    .line 282
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->reader:Ljava/io/BufferedInputStream;

    .line 284
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->writer:Ljava/io/BufferedOutputStream;

    .line 285
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->byteArrayWriter:Ljava/io/ByteArrayOutputStream;

    .line 286
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->storeSendData:Ljava/io/ByteArrayOutputStream;

    .line 287
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->socket:Ljava/net/Socket;

    .line 293
    iput-byte v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->linkState:B

    .line 294
    iput v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->lastReadPosition:I

    .line 295
    return-void
.end method


# virtual methods
.method public terminateStreams()V
    .locals 3

    .prologue
    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing the streams  for channel ID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->channelId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->listener:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->listener:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 303
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->storeSendData:Ljava/io/ByteArrayOutputStream;

    if-eqz v1, :cond_1

    .line 304
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->storeSendData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 306
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->byteArrayWriter:Ljava/io/ByteArrayOutputStream;

    if-eqz v1, :cond_2

    .line 307
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->byteArrayWriter:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 309
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->reader:Ljava/io/BufferedInputStream;

    if-eqz v1, :cond_3

    .line 310
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->reader:Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 312
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->writer:Ljava/io/BufferedOutputStream;

    if-eqz v1, :cond_4

    .line 313
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->writer:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 315
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_5

    .line 316
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 318
    :cond_5
    const-string v1, "handleCloseChannel: Closed socket and all streams!"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :goto_0
    return-void

    .line 320
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 321
    .local v0, ioe:Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCloseChannel; IOException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
