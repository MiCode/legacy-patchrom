.class public final Landroid/os/LatencyTimer;
.super Ljava/lang/Object;
.source "LatencyTimer.java"


# instance fields
.field final TAG:Ljava/lang/String;

.field final mSampleSize:I

.field final mScaleFactor:I

.field volatile store:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[J>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "sampleSize"
    .parameter "scaleFactor"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "LatencyTimer"

    iput-object v0, p0, Landroid/os/LatencyTimer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/LatencyTimer;->store:Ljava/util/HashMap;

    if-nez p2, :cond_0

    const/4 p2, 0x1

    :cond_0
    iput p2, p0, Landroid/os/LatencyTimer;->mScaleFactor:I

    iput p1, p0, Landroid/os/LatencyTimer;->mSampleSize:I

    return-void
.end method

.method private getArray(Ljava/lang/String;)[J
    .locals 6
    .parameter "tag"

    .prologue
    iget-object v2, p0, Landroid/os/LatencyTimer;->store:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    .local v1, data:[J
    if-nez v1, :cond_1

    iget-object v3, p0, Landroid/os/LatencyTimer;->store:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Landroid/os/LatencyTimer;->store:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, [J

    move-object v1, v0

    if-nez v1, :cond_0

    iget v2, p0, Landroid/os/LatencyTimer;->mSampleSize:I

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [J

    iget-object v2, p0, Landroid/os/LatencyTimer;->store:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Landroid/os/LatencyTimer;->mSampleSize:I

    const-wide/16 v4, 0x0

    aput-wide v4, v1, v2

    :cond_0
    monitor-exit v3

    :cond_1
    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public sample(Ljava/lang/String;J)V
    .locals 14
    .parameter "tag"
    .parameter "delta"

    .prologue
    invoke-direct {p0, p1}, Landroid/os/LatencyTimer;->getArray(Ljava/lang/String;)[J

    move-result-object v1

    .local v1, array:[J
    iget v9, p0, Landroid/os/LatencyTimer;->mSampleSize:I

    aget-wide v10, v1, v9

    const-wide/16 v12, 0x1

    add-long/2addr v12, v10

    aput-wide v12, v1, v9

    long-to-int v5, v10

    .local v5, index:I
    aput-wide p2, v1, v5

    iget v9, p0, Landroid/os/LatencyTimer;->mSampleSize:I

    aget-wide v9, v1, v9

    iget v11, p0, Landroid/os/LatencyTimer;->mSampleSize:I

    int-to-long v11, v11

    cmp-long v9, v9, v11

    if-nez v9, :cond_1

    const-wide/16 v7, 0x0

    .local v7, totalDelta:J
    move-object v0, v1

    .local v0, arr$:[J
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-wide v2, v0, v4

    .local v2, d:J
    iget v9, p0, Landroid/os/LatencyTimer;->mScaleFactor:I

    int-to-long v9, v9

    div-long v9, v2, v9

    add-long/2addr v7, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v2           #d:J
    :cond_0
    iget v9, p0, Landroid/os/LatencyTimer;->mSampleSize:I

    const-wide/16 v10, 0x0

    aput-wide v10, v1, v9

    const-string v9, "LatencyTimer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " average = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Landroid/os/LatencyTimer;->mSampleSize:I

    int-to-long v11, v11

    div-long v11, v7, v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #arr$:[J
    .end local v4           #i$:I
    .end local v6           #len$:I
    .end local v7           #totalDelta:J
    :cond_1
    return-void
.end method
