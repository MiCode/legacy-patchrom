.class public Lcom/android/internal/telephony/test/ModelInterpreter;
.super Ljava/lang/Object;
.source "ModelInterpreter.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/internal/telephony/test/SimulatedRadioControl;


# static fields
.field static final CONNECTING_PAUSE_MSEC:I = 0x1f4

.field static final LOG_TAG:Ljava/lang/String; = "ModelInterpreter"

.field static final MAX_CALLS:I = 0x6

.field static final PROGRESS_CALL_STATE:I = 0x1

.field static final sDefaultResponses:[[Ljava/lang/String;


# instance fields
.field private finalResponse:Ljava/lang/String;

.field in:Ljava/io/InputStream;

.field lineReader:Lcom/android/internal/telephony/test/LineReader;

.field mHandlerThread:Landroid/os/HandlerThread;

.field out:Ljava/io/OutputStream;

.field pausedResponseCount:I

.field pausedResponseMonitor:Ljava/lang/Object;

.field simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

.field ss:Ljava/net/ServerSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 702
    const/16 v0, 0x1f

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "E0Q0V1"

    aput-object v2, v1, v4

    aput-object v7, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "+CMEE=2"

    aput-object v2, v1, v4

    aput-object v7, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "+CREG=2"

    aput-object v2, v1, v4

    aput-object v7, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "+CGREG=2"

    aput-object v3, v2, v4

    aput-object v7, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "+CCWA=1"

    aput-object v3, v2, v4

    aput-object v7, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "+COPS=0"

    aput-object v3, v2, v4

    aput-object v7, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "+CFUN=1"

    aput-object v3, v2, v4

    aput-object v7, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "+CGMI"

    aput-object v3, v2, v4

    const-string v3, "+CGMI: Android Model AT Interpreter\r"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "+CGMM"

    aput-object v3, v2, v4

    const-string v3, "+CGMM: Android Model AT Interpreter\r"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "+CGMR"

    aput-object v3, v2, v4

    const-string v3, "+CGMR: 1.0\r"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "+CGSN"

    aput-object v3, v2, v4

    const-string v3, "000000000000000\r"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "+CIMI"

    aput-object v3, v2, v4

    const-string v3, "320720000000000\r"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "+CSCS=?"

    aput-object v3, v2, v4

    const-string v3, "+CSCS: (\"HEX\",\"UCS2\")\r"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "+CFUN?"

    aput-object v3, v2, v4

    const-string v3, "+CFUN: 1\r"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "+COPS=3,0;+COPS?;+COPS=3,1;+COPS?;+COPS=3,2;+COPS?"

    aput-object v3, v2, v4

    const-string v3, "+COPS: 0,0,\"Android\"\r+COPS: 0,1,\"Android\"\r+COPS: 0,2,\"310995\"\r"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "+CREG?"

    aput-object v3, v2, v4

    const-string v3, "+CREG: 2,5, \"0113\", \"6614\"\r"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "+CGREG?"

    aput-object v3, v2, v4

    const-string v3, "+CGREG: 2,0\r"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "+CSQ"

    aput-object v3, v2, v4

    const-string v3, "+CSQ: 16,99\r"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "+CNMI?"

    aput-object v3, v2, v4

    const-string v3, "+CNMI: 1,2,2,1,1\r"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "+CLIR?"

    aput-object v3, v2, v4

    const-string v3, "+CLIR: 1,3\r"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "%CPVWI=2"

    aput-object v3, v2, v4

    const-string v3, "%CPVWI: 0\r"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "+CUSD=1,\"#646#\""

    aput-object v3, v2, v4

    const-string v3, "+CUSD=0,\"You have used 23 minutes\"\r"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "+CRSM=176,12258,0,0,10"

    aput-object v3, v2, v4

    const-string v3, "+CRSM: 144,0,981062200050259429F6\r"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "+CRSM=192,12258,0,0,15"

    aput-object v3, v2, v4

    const-string v3, "+CRSM: 144,0,0000000A2FE204000FF55501020000\r"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "+CRSM=192,28474,0,0,15"

    aput-object v3, v2, v4

    const-string v3, "+CRSM: 144,0,0000005a6f3a040011f5220102011e\r"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "+CRSM=178,28474,1,4,30"

    aput-object v3, v2, v4

    const-string v3, "+CRSM: 144,0,437573746f6d65722043617265ffffff07818100398799f7ffffffffffff\r"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "+CRSM=178,28474,2,4,30"

    aput-object v3, v2, v4

    const-string v3, "+CRSM: 144,0,566f696365204d61696cffffffffffff07918150367742f3ffffffffffff\r"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "+CRSM=178,28474,3,4,30"

    aput-object v3, v2, v4

    const-string v3, "+CRSM: 144,0,4164676a6dffffffffffffffffffffff0b918188551512c221436587ff01\r"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "+CRSM=178,28474,4,4,30"

    aput-object v3, v2, v4

    const-string v3, "+CRSM: 144,0,810101c1ffffffffffffffffffffffff068114455245f8ffffffffffffff\r"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "+CRSM=192,28490,0,0,15"

    aput-object v3, v2, v4

    const-string v3, "+CRSM: 144,0,000000416f4a040011f5550102010d\r"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "+CRSM=178,28490,1,4,13"

    aput-object v3, v2, v4

    const-string v3, "+CRSM: 144,0,0206092143658709ffffffffff\r"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/test/ModelInterpreter;->sDefaultResponses:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .parameter "in"
    .parameter "out"

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->pausedResponseMonitor:Ljava/lang/Object;

    .line 169
    iput-object p1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->in:Ljava/io/InputStream;

    .line 170
    iput-object p2, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->out:Ljava/io/OutputStream;

    .line 172
    invoke-direct {p0}, Lcom/android/internal/telephony/test/ModelInterpreter;->init()V

    .line 173
    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;)V
    .locals 2
    .parameter "sa"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->pausedResponseMonitor:Ljava/lang/Object;

    .line 178
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0}, Ljava/net/ServerSocket;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->ss:Ljava/net/ServerSocket;

    .line 180
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->ss:Ljava/net/ServerSocket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 181
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v0, p1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 183
    invoke-direct {p0}, Lcom/android/internal/telephony/test/ModelInterpreter;->init()V

    .line 184
    return-void
.end method

.method private conference()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/test/InterpreterEx;
        }
    .end annotation

    .prologue
    .line 528
    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->conference()Z

    move-result v0

    .line 530
    .local v0, success:Z
    if-nez v0, :cond_0

    .line 531
    new-instance v1, Lcom/android/internal/telephony/test/InterpreterEx;

    const-string v2, "ERROR"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/test/InterpreterEx;-><init>(Ljava/lang/String;)V

    throw v1

    .line 533
    :cond_0
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const-string v3, "ModelInterpreter"

    .line 189
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "ModelInterpreter"

    invoke-direct {v1, p0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 190
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ModelInterpreter"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mHandlerThread:Landroid/os/HandlerThread;

    .line 191
    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 192
    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 193
    .local v0, looper:Landroid/os/Looper;
    new-instance v1, Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    .line 194
    return-void
.end method

.method private onAnswer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/test/InterpreterEx;
        }
    .end annotation

    .prologue
    .line 433
    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onAnswer()Z

    move-result v0

    .line 435
    .local v0, success:Z
    if-nez v0, :cond_0

    .line 436
    new-instance v1, Lcom/android/internal/telephony/test/InterpreterEx;

    const-string v2, "ERROR"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/test/InterpreterEx;-><init>(Ljava/lang/String;)V

    throw v1

    .line 438
    :cond_0
    return-void
.end method

.method private onCHLD(Ljava/lang/String;)V
    .locals 5
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/test/InterpreterEx;
        }
    .end annotation

    .prologue
    .line 459
    const/4 v1, 0x0

    .line 462
    .local v1, c1:C
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 464
    .local v0, c0:C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-lt v3, v4, :cond_0

    .line 465
    const/4 v3, 0x7

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 468
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    move-result v2

    .line 470
    .local v2, success:Z
    if-nez v2, :cond_1

    .line 471
    new-instance v3, Lcom/android/internal/telephony/test/InterpreterEx;

    const-string v4, "ERROR"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/test/InterpreterEx;-><init>(Ljava/lang/String;)V

    throw v3

    .line 473
    :cond_1
    return-void
.end method

.method private onCLCC()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/test/InterpreterEx;
        }
    .end annotation

    .prologue
    .line 552
    iget-object v3, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->getClccLines()Ljava/util/List;

    move-result-object v1

    .line 554
    .local v1, lines:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, s:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 555
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V

    .line 554
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 557
    :cond_0
    return-void
.end method

.method private onDial(Ljava/lang/String;)V
    .locals 3
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/test/InterpreterEx;
        }
    .end annotation

    .prologue
    .line 540
    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onDial(Ljava/lang/String;)Z

    move-result v0

    .line 542
    .local v0, success:Z
    if-nez v0, :cond_0

    .line 543
    new-instance v1, Lcom/android/internal/telephony/test/InterpreterEx;

    const-string v2, "ERROR"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/test/InterpreterEx;-><init>(Ljava/lang/String;)V

    throw v1

    .line 545
    :cond_0
    return-void
.end method

.method private onHangup()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/test/InterpreterEx;
        }
    .end annotation

    .prologue
    .line 443
    const/4 v0, 0x0

    .line 445
    .local v0, success:Z
    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onAnswer()Z

    move-result v0

    .line 447
    if-nez v0, :cond_0

    .line 448
    new-instance v1, Lcom/android/internal/telephony/test/InterpreterEx;

    const-string v2, "ERROR"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/test/InterpreterEx;-><init>(Ljava/lang/String;)V

    throw v1

    .line 451
    :cond_0
    const-string v1, "NO CARRIER"

    iput-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->finalResponse:Ljava/lang/String;

    .line 452
    return-void
.end method

.method private onSMSSend(Ljava/lang/String;)V
    .locals 2
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/test/InterpreterEx;
        }
    .end annotation

    .prologue
    .line 564
    const-string v1, "> "

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/test/ModelInterpreter;->print(Ljava/lang/String;)V

    .line 565
    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->lineReader:Lcom/android/internal/telephony/test/LineReader;

    invoke-virtual {v1}, Lcom/android/internal/telephony/test/LineReader;->getNextLineCtrlZ()Ljava/lang/String;

    move-result-object v0

    .line 567
    .local v0, pdu:Ljava/lang/String;
    const-string v1, "+CMGS: 1"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V

    .line 568
    return-void
.end method

.method private releaseActiveAcceptHeldOrWaiting()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/test/InterpreterEx;
        }
    .end annotation

    .prologue
    .line 492
    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->releaseActiveAcceptHeldOrWaiting()Z

    move-result v0

    .line 494
    .local v0, success:Z
    if-nez v0, :cond_0

    .line 495
    new-instance v1, Lcom/android/internal/telephony/test/InterpreterEx;

    const-string v2, "ERROR"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/test/InterpreterEx;-><init>(Ljava/lang/String;)V

    throw v1

    .line 497
    :cond_0
    return-void
.end method

.method private releaseHeldOrUDUB()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/test/InterpreterEx;
        }
    .end annotation

    .prologue
    .line 480
    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->releaseHeldOrUDUB()Z

    move-result v0

    .line 482
    .local v0, success:Z
    if-nez v0, :cond_0

    .line 483
    new-instance v1, Lcom/android/internal/telephony/test/InterpreterEx;

    const-string v2, "ERROR"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/test/InterpreterEx;-><init>(Ljava/lang/String;)V

    throw v1

    .line 485
    :cond_0
    return-void
.end method

.method private separateCall(I)V
    .locals 3
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/test/InterpreterEx;
        }
    .end annotation

    .prologue
    .line 516
    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->separateCall(I)Z

    move-result v0

    .line 518
    .local v0, success:Z
    if-nez v0, :cond_0

    .line 519
    new-instance v1, Lcom/android/internal/telephony/test/InterpreterEx;

    const-string v2, "ERROR"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/test/InterpreterEx;-><init>(Ljava/lang/String;)V

    throw v1

    .line 521
    :cond_0
    return-void
.end method

.method private switchActiveAndHeldOrWaiting()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/test/InterpreterEx;
        }
    .end annotation

    .prologue
    .line 504
    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->switchActiveAndHeldOrWaiting()Z

    move-result v0

    .line 506
    .local v0, success:Z
    if-nez v0, :cond_0

    .line 507
    new-instance v1, Lcom/android/internal/telephony/test/InterpreterEx;

    const-string v2, "ERROR"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/test/InterpreterEx;-><init>(Ljava/lang/String;)V

    throw v1

    .line 509
    :cond_0
    return-void
.end method


# virtual methods
.method public pauseResponses()V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->pausedResponseMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 410
    :try_start_0
    iget v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->pausedResponseCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->pausedResponseCount:I

    .line 411
    monitor-exit v0

    .line 412
    return-void

    .line 411
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method print(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 669
    monitor-enter p0

    .line 671
    :try_start_0
    const-string v2, "US-ASCII"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 675
    .local v0, bytes:[B
    iget-object v2, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    .end local v0           #bytes:[B
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 680
    return-void

    .line 676
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 677
    .local v1, ex:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 679
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method println(Ljava/lang/String;)V
    .locals 4
    .parameter "s"

    .prologue
    .line 652
    monitor-enter p0

    .line 654
    :try_start_0
    const-string v2, "US-ASCII"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 658
    .local v0, bytes:[B
    iget-object v2, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 659
    iget-object v2, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->out:Ljava/io/OutputStream;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    .end local v0           #bytes:[B
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 664
    return-void

    .line 660
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 661
    .local v1, ex:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 663
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method processLine(Ljava/lang/String;)V
    .locals 8
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/test/InterpreterEx;
        }
    .end annotation

    .prologue
    .line 575
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/test/ModelInterpreter;->splitCommands(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 577
    .local v1, commands:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v6, v1

    if-ge v3, v6, :cond_a

    .line 578
    aget-object v0, v1, v3

    .line 580
    .local v0, command:Ljava/lang/String;
    const-string v6, "A"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 581
    invoke-direct {p0}, Lcom/android/internal/telephony/test/ModelInterpreter;->onAnswer()V

    .line 577
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 582
    :cond_1
    const-string v6, "H"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 583
    invoke-direct {p0}, Lcom/android/internal/telephony/test/ModelInterpreter;->onHangup()V

    goto :goto_1

    .line 584
    :cond_2
    const-string v6, "+CHLD="

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 585
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/test/ModelInterpreter;->onCHLD(Ljava/lang/String;)V

    goto :goto_1

    .line 586
    :cond_3
    const-string v6, "+CLCC"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 587
    invoke-direct {p0}, Lcom/android/internal/telephony/test/ModelInterpreter;->onCLCC()V

    goto :goto_1

    .line 588
    :cond_4
    const-string v6, "D"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 589
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/test/ModelInterpreter;->onDial(Ljava/lang/String;)V

    goto :goto_1

    .line 590
    :cond_5
    const-string v6, "+CMGS="

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 591
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/test/ModelInterpreter;->onSMSSend(Ljava/lang/String;)V

    goto :goto_1

    .line 593
    :cond_6
    const/4 v2, 0x0

    .line 595
    .local v2, found:Z
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    sget-object v6, Lcom/android/internal/telephony/test/ModelInterpreter;->sDefaultResponses:[[Ljava/lang/String;

    array-length v6, v6

    if-ge v4, v6, :cond_8

    .line 596
    sget-object v6, Lcom/android/internal/telephony/test/ModelInterpreter;->sDefaultResponses:[[Ljava/lang/String;

    aget-object v6, v6, v4

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 597
    sget-object v6, Lcom/android/internal/telephony/test/ModelInterpreter;->sDefaultResponses:[[Ljava/lang/String;

    aget-object v6, v6, v4

    const/4 v7, 0x1

    aget-object v5, v6, v7

    .line 598
    .local v5, r:Ljava/lang/String;
    if-eqz v5, :cond_7

    .line 599
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V

    .line 601
    :cond_7
    const/4 v2, 0x1

    .line 606
    .end local v5           #r:Ljava/lang/String;
    :cond_8
    if-nez v2, :cond_0

    .line 607
    new-instance v6, Lcom/android/internal/telephony/test/InterpreterEx;

    const-string v7, "ERROR"

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/test/InterpreterEx;-><init>(Ljava/lang/String;)V

    throw v6

    .line 595
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 611
    .end local v0           #command:Ljava/lang/String;
    .end local v2           #found:Z
    .end local v4           #j:I
    :cond_a
    return-void
.end method

.method public progressConnectingCallState()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->progressConnectingCallState()V

    .line 295
    return-void
.end method

.method public progressConnectingToActive()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->progressConnectingToActive()V

    .line 303
    return-void
.end method

.method public resumeResponses()V
    .locals 3

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->pausedResponseMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 418
    :try_start_0
    iget v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->pausedResponseCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->pausedResponseCount:I

    .line 420
    iget v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->pausedResponseCount:I

    if-nez v1, :cond_0

    .line 421
    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->pausedResponseMonitor:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 423
    :cond_0
    monitor-exit v0

    .line 424
    return-void

    .line 423
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 6

    .prologue
    const-string v5, "ModelInterpreter"

    .line 201
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->ss:Ljava/net/ServerSocket;

    if-eqz v3, :cond_1

    .line 205
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 213
    .local v2, s:Ljava/net/Socket;
    :try_start_1
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->in:Ljava/io/InputStream;

    .line 214
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->out:Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 221
    const-string v3, "ModelInterpreter"

    const-string v3, "New connection accepted"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .end local v2           #s:Ljava/net/Socket;
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/test/LineReader;

    iget-object v4, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->in:Ljava/io/InputStream;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/test/LineReader;-><init>(Ljava/io/InputStream;)V

    iput-object v3, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->lineReader:Lcom/android/internal/telephony/test/LineReader;

    .line 227
    const-string v3, "Welcome"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V

    .line 232
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->lineReader:Lcom/android/internal/telephony/test/LineReader;

    invoke-virtual {v3}, Lcom/android/internal/telephony/test/LineReader;->getNextLine()Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 263
    const-string v3, "ModelInterpreter"

    const-string v3, "Disconnected"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v3, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->ss:Ljava/net/ServerSocket;

    if-nez v3, :cond_0

    .line 270
    .end local v1           #line:Ljava/lang/String;
    :goto_2
    return-void

    .line 206
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 207
    .local v0, ex:Ljava/io/IOException;
    const-string v3, "ModelInterpreter"

    const-string v3, "IOException on socket.accept(); stopping"

    invoke-static {v5, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 215
    .end local v0           #ex:Ljava/io/IOException;
    .restart local v2       #s:Ljava/net/Socket;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 216
    .restart local v0       #ex:Ljava/io/IOException;
    const-string v3, "ModelInterpreter"

    const-string v3, "IOException on accepted socket(); re-listening"

    invoke-static {v5, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 240
    .end local v0           #ex:Ljava/io/IOException;
    .end local v2           #s:Ljava/net/Socket;
    .restart local v1       #line:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->pausedResponseMonitor:Ljava/lang/Object;

    monitor-enter v3

    .line 241
    :goto_3
    :try_start_2
    iget v4, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->pausedResponseCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-lez v4, :cond_3

    .line 243
    :try_start_3
    iget-object v4, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->pausedResponseMonitor:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 244
    :catch_2
    move-exception v4

    goto :goto_3

    .line 247
    :cond_3
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 249
    monitor-enter p0

    .line 251
    :try_start_5
    const-string v3, "OK"

    iput-object v3, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->finalResponse:Ljava/lang/String;

    .line 252
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/test/ModelInterpreter;->processLine(Ljava/lang/String;)V

    .line 253
    iget-object v3, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->finalResponse:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/android/internal/telephony/test/InterpreterEx; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    .line 260
    :goto_4
    :try_start_6
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v3

    .line 247
    :catchall_1
    move-exception v4

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v4

    .line 254
    :catch_3
    move-exception v3

    move-object v0, v3

    .line 255
    .local v0, ex:Lcom/android/internal/telephony/test/InterpreterEx;
    :try_start_8
    iget-object v3, v0, Lcom/android/internal/telephony/test/InterpreterEx;->result:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 256
    .end local v0           #ex:Lcom/android/internal/telephony/test/InterpreterEx;
    :catch_4
    move-exception v3

    move-object v0, v3

    .line 257
    .local v0, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 258
    const-string v3, "ERROR"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4
.end method

.method public sendUnsolicited(Ljava/lang/String;)V
    .locals 1
    .parameter "unsol"

    .prologue
    .line 369
    monitor-enter p0

    .line 370
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V

    .line 371
    monitor-exit p0

    .line 372
    return-void

    .line 371
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAutoProgressConnectingCall(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->setAutoProgressConnectingCall(Z)V

    .line 312
    return-void
.end method

.method public setNextCallFailCause(I)V
    .locals 0
    .parameter "gsmCause"

    .prologue
    .line 323
    return-void
.end method

.method public setNextDialFailImmediately(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->setNextDialFailImmediately(Z)V

    .line 318
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 686
    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 687
    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 688
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 692
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 696
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 699
    :goto_1
    return-void

    .line 697
    :catch_0
    move-exception v1

    goto :goto_1

    .line 693
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method splitCommands(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/test/InterpreterEx;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 617
    const-string v1, "AT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 618
    new-instance v1, Lcom/android/internal/telephony/test/InterpreterEx;

    const-string v2, "ERROR"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/test/InterpreterEx;-><init>(Ljava/lang/String;)V

    throw v1

    .line 621
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 623
    new-array v1, v2, [Ljava/lang/String;

    .line 631
    :goto_0
    return-object v1

    .line 626
    :cond_1
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 629
    .local v0, ret:[Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    move-object v1, v0

    .line 631
    goto :goto_0
.end method

.method public triggerHangupAll()V
    .locals 2

    .prologue
    .line 359
    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerHangupAll()Z

    move-result v0

    .line 361
    .local v0, success:Z
    if-eqz v0, :cond_0

    .line 362
    const-string v1, "NO CARRIER"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V

    .line 364
    :cond_0
    return-void
.end method

.method public triggerHangupBackground()V
    .locals 2

    .prologue
    .line 345
    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerHangupBackground()Z

    move-result v0

    .line 347
    .local v0, success:Z
    if-eqz v0, :cond_0

    .line 348
    const-string v1, "NO CARRIER"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V

    .line 350
    :cond_0
    return-void
.end method

.method public triggerHangupForeground()V
    .locals 2

    .prologue
    .line 332
    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerHangupForeground()Z

    move-result v0

    .line 334
    .local v0, success:Z
    if-eqz v0, :cond_0

    .line 335
    const-string v1, "NO CARRIER"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V

    .line 337
    :cond_0
    return-void
.end method

.method public triggerIncomingSMS(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 404
    return-void
.end method

.method public triggerIncomingUssd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "statusCode"
    .parameter "message"

    .prologue
    .line 375
    return-void
.end method

.method public triggerRing(Ljava/lang/String;)V
    .locals 2
    .parameter "number"

    .prologue
    .line 279
    monitor-enter p0

    .line 282
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerRing(Ljava/lang/String;)Z

    move-result v0

    .line 284
    .local v0, success:Z
    if-eqz v0, :cond_0

    .line 285
    const-string v1, "RING"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V

    .line 287
    :cond_0
    monitor-exit p0

    .line 288
    return-void

    .line 287
    .end local v0           #success:Z
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public triggerSsn(II)V
    .locals 0
    .parameter "a"
    .parameter "b"

    .prologue
    .line 374
    return-void
.end method
