.class Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;
.super Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;
.source "StkBIPConnection.java"


# instance fields
.field ConnectionMode:Lcom/android/internal/telephony/gsm/stk/BearerMode;

.field NetworkAccessname:Ljava/lang/String;

.field bDesc:Lcom/android/internal/telephony/gsm/stk/BearerDescription;

.field destination:Ljava/net/InetAddress;

.field in:Ljava/io/DataInputStream;

.field isLinkEstablished:Z

.field isfirstTime:Z

.field lastReadPosition:I

.field out:Ljava/io/DataOutputStream;

.field passwd:Ljava/lang/String;

.field receiver:Ljava/lang/Thread;

.field rxBuf:Ljava/io/ByteArrayOutputStream;

.field rxBytes:[B

.field socket:Ljava/lang/Object;

.field txBuf:Ljava/io/ByteArrayOutputStream;

.field txIndex:I

.field userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/stk/BearerDescription;ILcom/android/internal/telephony/gsm/stk/TransportLevel;Lcom/android/internal/telephony/gsm/stk/StkBIPManager;Ljava/lang/String;Lcom/android/internal/telephony/gsm/stk/BearerMode;Lcom/android/internal/telephony/gsm/stk/DataDestinationAddress;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "bearerDesc"
    .parameter "buffSize"
    .parameter "iface"
    .parameter "stkBIPManager"
    .parameter "apn"
    .parameter "mode"
    .parameter "dest"
    .parameter "userName"
    .parameter "passwd"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 112
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;-><init>(ILcom/android/internal/telephony/gsm/stk/TransportLevel;Lcom/android/internal/telephony/gsm/stk/StkBIPManager;)V

    .line 94
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->in:Ljava/io/DataInputStream;

    .line 95
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->out:Ljava/io/DataOutputStream;

    .line 96
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->socket:Ljava/lang/Object;

    .line 107
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->receiver:Ljava/lang/Thread;

    .line 114
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->bDesc:Lcom/android/internal/telephony/gsm/stk/BearerDescription;

    .line 115
    iput-object p5, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    .line 116
    iput-object p8, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->userName:Ljava/lang/String;

    .line 117
    iput-object p9, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->passwd:Ljava/lang/String;

    .line 118
    iput-object p6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->ConnectionMode:Lcom/android/internal/telephony/gsm/stk/BearerMode;

    .line 119
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->isLinkEstablished:Z

    .line 120
    iput v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->txIndex:I

    .line 121
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->isfirstTime:Z

    .line 122
    if-eqz p7, :cond_0

    .line 124
    :try_start_0
    iget-object v1, p7, Lcom/android/internal/telephony/gsm/stk/DataDestinationAddress;->address:[B

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->destination:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 126
    .local v0, e:Ljava/net/UnknownHostException;
    const-string v1, "UnknownHostException while getting the Data destination IP Address"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->destination:Ljava/net/InetAddress;

    goto :goto_0
.end method


# virtual methods
.method public getRxData(I)[B
    .locals 6
    .parameter "length"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 239
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v5

    .line 270
    :goto_0
    return-object v2

    .line 242
    :cond_0
    const-string/jumbo v2, "rxbuf.size != null!!"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->rxBytes:[B

    if-nez v2, :cond_1

    .line 246
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->rxBytes:[B

    .line 248
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rxBytes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->rxBytes:[B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->rxBytes:[B

    array-length v2, v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->lastReadPosition:I

    sub-int v0, v2, v3

    .line 251
    .local v0, bytesAvailable:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytesAvailable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  rxBytes.length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->rxBytes:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  lastReadPosition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->lastReadPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    if-le p1, v0, :cond_2

    .line 253
    move p1, v0

    .line 255
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    new-array v1, p1, [B

    .line 258
    .local v1, tmp:[B
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->rxBytes:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->lastReadPosition:I

    invoke-static {v2, v3, v1, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    iget v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->lastReadPosition:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->lastReadPosition:I

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastReadPosition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->lastReadPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    iget v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->lastReadPosition:I

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->rxBytes:[B

    array-length v3, v3

    if-lt v2, v3, :cond_3

    .line 263
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->rxBytes:[B

    .line 264
    const-string/jumbo v2, "reset buffer rxbuf"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    iput v4, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->lastReadPosition:I

    .line 266
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 269
    :cond_3
    const-string/jumbo v2, "return now!!!"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    .line 270
    goto/16 :goto_0
.end method

.method public setupStreams()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketTimeoutException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v6, "Created receiver thread"

    .line 135
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Opening socket with"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->destination:Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    iget v7, v7, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->portNumber:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->destination:Ljava/net/InetAddress;

    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    .line 138
    .local v4, tmp:[B
    const/4 v5, 0x0

    .local v5, x:I
    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v7, v4, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 140
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->isTCPRemoteClient()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 141
    const-string v6, "Opening TCP socket"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    new-instance v2, Ljava/net/Socket;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->destination:Ljava/net/InetAddress;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    iget v7, v7, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->portNumber:I

    invoke-direct {v2, v6, v7}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    .line 143
    .local v2, s:Ljava/net/Socket;
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->socket:Ljava/lang/Object;

    .line 144
    const-string v6, "Opening input stream"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    new-instance v6, Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->in:Ljava/io/DataInputStream;

    .line 146
    const-string v6, "Opening output stream"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->out:Ljava/io/DataOutputStream;

    .line 148
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/android/internal/telephony/gsm/stk/tcpRxThread;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/gsm/stk/tcpRxThread;-><init>(Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->receiver:Ljava/lang/Thread;

    .line 149
    const-string v6, "Created receiver thread"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    .end local v2           #s:Ljava/net/Socket;
    :goto_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->isLinkEstablished:Z

    .line 161
    const-string v6, "Successfully setup streams!"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    iget v7, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->bufferSize:I

    invoke-direct {v6, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    .line 163
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    iget v7, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->bufferSize:I

    invoke-direct {v6, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    .line 164
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->txIndex:I

    .line 165
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->lastReadPosition:I

    .line 166
    const-string/jumbo v6, "txBuff & rxBuff created!"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->isfirstTime:Z

    .line 188
    return-void

    .line 152
    :cond_1
    const-string v6, "Opening UDP socket"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    .line 154
    .local v0, ds:Ljava/net/DatagramSocket;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->destination:Ljava/net/InetAddress;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    iget v7, v7, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->portNumber:I

    invoke-virtual {v0, v6, v7}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    .line 155
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->socket:Ljava/lang/Object;

    .line 156
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/android/internal/telephony/gsm/stk/udpRxThread;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/gsm/stk/udpRxThread;-><init>(Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->receiver:Ljava/lang/Thread;

    .line 157
    const-string v6, "Created receiver thread"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 169
    .end local v0           #ds:Ljava/net/DatagramSocket;
    .end local v4           #tmp:[B
    .end local v5           #x:I
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 170
    .local v3, ste:Ljava/net/SocketTimeoutException;
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->isLinkEstablished:Z

    .line 171
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->isfirstTime:Z

    .line 172
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Socket Timeout Exception Socket is not connected\nlinkEstablished ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->isLinkEstablished:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v3}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    new-instance v6, Ljava/net/SocketTimeoutException;

    const-string v7, "TIMEOUT"

    invoke-direct {v6, v7}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 178
    .end local v3           #ste:Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 179
    .local v1, io:Ljava/io/IOException;
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->isLinkEstablished:Z

    .line 180
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->isfirstTime:Z

    .line 181
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IO Exception while creating socket streams\nlinkEstablished ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->isLinkEstablished:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    throw v1
.end method

.method public terminateStreams()V
    .locals 6

    .prologue
    .line 191
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Closing the streams  for channel ID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->channelId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->isTCPRemoteClient()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 195
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->receiver:Ljava/lang/Thread;

    if-eqz v4, :cond_0

    .line 196
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->receiver:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 198
    :cond_0
    const-string v4, "Closing input stream"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->in:Ljava/io/DataInputStream;

    if-eqz v4, :cond_1

    .line 200
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->in:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 202
    :cond_1
    const-string v4, "Closing output stream"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->out:Ljava/io/DataOutputStream;

    if-eqz v4, :cond_2

    .line 204
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 206
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->socket:Ljava/lang/Object;

    check-cast v3, Ljava/net/Socket;

    .line 207
    .local v3, s:Ljava/net/Socket;
    const-string v4, "Closing socket"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    if-eqz v3, :cond_3

    .line 209
    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 211
    :cond_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->isfirstTime:Z

    .line 221
    .end local v3           #s:Ljava/net/Socket;
    :goto_0
    const-string v4, "Closed Streams Successfully"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    :goto_1
    return-void

    .line 213
    :cond_4
    const-string v4, "closing UDP socket"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->receiver:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 215
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->socket:Ljava/lang/Object;

    check-cast v0, Ljava/net/DatagramSocket;

    .line 216
    .local v0, ds:Ljava/net/DatagramSocket;
    if-eqz v0, :cond_5

    .line 217
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 219
    :cond_5
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->isfirstTime:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 223
    .end local v0           #ds:Ljava/net/DatagramSocket;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 224
    .local v2, io:Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IO Exception while terminating the streams: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 226
    .end local v2           #io:Ljava/io/IOException;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 227
    .local v1, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A generic Exception while terminating the streams: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method
