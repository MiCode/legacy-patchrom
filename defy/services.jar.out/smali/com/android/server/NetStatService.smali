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
    invoke-direct {p0}, Landroid/os/INetStatService$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/NetStatService;->mContext:Landroid/content/Context;

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

    const-string v0, "Elapsed: total="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, "ms awake="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, "ms"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Mobile: Tx="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/NetStatService;->getMobileTxBytes()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, "B/"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/NetStatService;->getMobileTxPackets()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, "Pkts Rx="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/NetStatService;->getMobileRxBytes()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, "B/"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/NetStatService;->getMobileRxPackets()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, "Pkts"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Total: Tx="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/NetStatService;->getTotalTxBytes()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, "B/"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/NetStatService;->getTotalTxPackets()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, "Pkts Rx="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/NetStatService;->getTotalRxBytes()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, "B/"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/NetStatService;->getTotalRxPackets()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, "Pkts"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getMobileRxBytes()J
    .locals 2

    .prologue
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMobileRxPackets()J
    .locals 2

    .prologue
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMobileTxBytes()J
    .locals 2

    .prologue
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMobileTxPackets()J
    .locals 2

    .prologue
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSpecifiedMobileRxBytes(Ljava/lang/String;)J
    .locals 2
    .parameter "interfaceName"

    .prologue
    invoke-static {p1}, Landroid/net/TrafficStats;->getSpecifiedMobileRxBytes(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSpecifiedMobileRxPackets(Ljava/lang/String;)J
    .locals 2
    .parameter "interfaceName"

    .prologue
    invoke-static {p1}, Landroid/net/TrafficStats;->getSpecifiedMobileRxPackets(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSpecifiedMobileTxBytes(Ljava/lang/String;)J
    .locals 2
    .parameter "interfaceName"

    .prologue
    invoke-static {p1}, Landroid/net/TrafficStats;->getSpecifiedMobileTxBytes(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSpecifiedMobileTxPackets(Ljava/lang/String;)J
    .locals 2
    .parameter "interfaceName"

    .prologue
    invoke-static {p1}, Landroid/net/TrafficStats;->getSpecifiedMobileTxPackets(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalRxBytes()J
    .locals 2

    .prologue
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalRxPackets()J
    .locals 2

    .prologue
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxPackets()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalTxBytes()J
    .locals 2

    .prologue
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalTxPackets()J
    .locals 2

    .prologue
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxPackets()J

    move-result-wide v0

    return-wide v0
.end method
