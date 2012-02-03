.class public Lcom/android/server/NetStatService;
.super Landroid/os/INetStatService$Stub;
.source "NetStatService.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/os/INetStatService$Stub;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/server/NetStatService;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const-string v4, "Pkts Rx="

    const-string v3, "Pkts"

    const-string v2, "B/"

    .line 70
    const-string v0, "Elapsed: total="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 71
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 72
    const-string v0, "ms awake="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 74
    const-string v0, "ms"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    const-string v0, "Mobile: Tx="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/server/NetStatService;->getMobileTxBytes()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 78
    const-string v0, "B/"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/server/NetStatService;->getMobileTxPackets()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 80
    const-string v0, "Pkts Rx="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/server/NetStatService;->getMobileRxBytes()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 82
    const-string v0, "B/"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/server/NetStatService;->getMobileRxPackets()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 84
    const-string v0, "Pkts"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    const-string v0, "Total: Tx="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/server/NetStatService;->getTotalTxBytes()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 88
    const-string v0, "B/"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/server/NetStatService;->getTotalTxPackets()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 90
    const-string v0, "Pkts Rx="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/server/NetStatService;->getTotalRxBytes()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 92
    const-string v0, "B/"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/server/NetStatService;->getTotalRxPackets()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 94
    const-string v0, "Pkts"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public getMobileRxBytes()J
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMobileRxPackets()J
    .locals 2

    .prologue
    .line 39
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMobileTxBytes()J
    .locals 2

    .prologue
    .line 43
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMobileTxPackets()J
    .locals 2

    .prologue
    .line 35
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalRxBytes()J
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalRxPackets()J
    .locals 2

    .prologue
    .line 55
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxPackets()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalTxBytes()J
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalTxPackets()J
    .locals 2

    .prologue
    .line 51
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxPackets()J

    move-result-wide v0

    return-wide v0
.end method
