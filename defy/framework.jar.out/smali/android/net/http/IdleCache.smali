.class Landroid/net/http/IdleCache;
.super Ljava/lang/Object;
.source "IdleCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/http/IdleCache$1;,
        Landroid/net/http/IdleCache$IdleReaper;,
        Landroid/net/http/IdleCache$Entry;
    }
.end annotation


# static fields
.field private static final CHECK_INTERVAL:I = 0x7d0

.field private static final EMPTY_CHECK_MAX:I = 0x5

.field private static final IDLE_CACHE_MAX:I = 0x8

.field private static final TIMEOUT:I = 0x1770


# instance fields
.field private mCached:I

.field private mCount:I

.field private mEntries:[Landroid/net/http/IdleCache$Entry;

.field private mReused:I

.field private mThread:Landroid/net/http/IdleCache$IdleReaper;


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v1, v3, [Landroid/net/http/IdleCache$Entry;

    iput-object v1, p0, Landroid/net/http/IdleCache;->mEntries:[Landroid/net/http/IdleCache$Entry;

    iput v2, p0, Landroid/net/http/IdleCache;->mCount:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/http/IdleCache;->mThread:Landroid/net/http/IdleCache$IdleReaper;

    iput v2, p0, Landroid/net/http/IdleCache;->mCached:I

    iput v2, p0, Landroid/net/http/IdleCache;->mReused:I

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Landroid/net/http/IdleCache;->mEntries:[Landroid/net/http/IdleCache$Entry;

    new-instance v2, Landroid/net/http/IdleCache$Entry;

    invoke-direct {v2, p0}, Landroid/net/http/IdleCache$Entry;-><init>(Landroid/net/http/IdleCache;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$100(Landroid/net/http/IdleCache;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/http/IdleCache;->mCount:I

    return v0
.end method

.method static synthetic access$200(Landroid/net/http/IdleCache;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/http/IdleCache;->clearIdle()V

    return-void
.end method

.method static synthetic access$302(Landroid/net/http/IdleCache;Landroid/net/http/IdleCache$IdleReaper;)Landroid/net/http/IdleCache$IdleReaper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/net/http/IdleCache;->mThread:Landroid/net/http/IdleCache$IdleReaper;

    return-object p1
.end method

.method private declared-synchronized clearIdle()V
    .locals 6

    .prologue
    monitor-enter p0

    :try_start_0
    iget v4, p0, Landroid/net/http/IdleCache;->mCount:I

    if-lez v4, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .local v2, time:J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v4, 0x8

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Landroid/net/http/IdleCache;->mEntries:[Landroid/net/http/IdleCache$Entry;

    aget-object v0, v4, v1

    .local v0, entry:Landroid/net/http/IdleCache$Entry;
    iget-object v4, v0, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    if-eqz v4, :cond_0

    iget-wide v4, v0, Landroid/net/http/IdleCache$Entry;->mTimeout:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    const/4 v4, 0x0

    iput-object v4, v0, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    iget-object v4, v0, Landroid/net/http/IdleCache$Entry;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v4}, Landroid/net/http/Connection;->closeConnection()V

    const/4 v4, 0x0

    iput-object v4, v0, Landroid/net/http/IdleCache$Entry;->mConnection:Landroid/net/http/Connection;

    iget v4, p0, Landroid/net/http/IdleCache;->mCount:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Landroid/net/http/IdleCache;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #entry:Landroid/net/http/IdleCache$Entry;
    .end local v1           #i:I
    .end local v2           #time:J
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method


# virtual methods
.method declared-synchronized cacheConnection(Lorg/apache/http/HttpHost;Landroid/net/http/Connection;)Z
    .locals 7
    .parameter "host"
    .parameter "connection"

    .prologue
    const/16 v6, 0x8

    monitor-enter p0

    const/4 v2, 0x0

    .local v2, ret:Z
    :try_start_0
    iget v5, p0, Landroid/net/http/IdleCache;->mCount:I

    if-ge v5, v6, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .local v3, time:J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_0

    iget-object v5, p0, Landroid/net/http/IdleCache;->mEntries:[Landroid/net/http/IdleCache$Entry;

    aget-object v0, v5, v1

    .local v0, entry:Landroid/net/http/IdleCache$Entry;
    iget-object v5, v0, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    if-nez v5, :cond_1

    iput-object p1, v0, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    iput-object p2, v0, Landroid/net/http/IdleCache$Entry;->mConnection:Landroid/net/http/Connection;

    const-wide/16 v5, 0x1770

    add-long/2addr v5, v3

    iput-wide v5, v0, Landroid/net/http/IdleCache$Entry;->mTimeout:J

    iget v5, p0, Landroid/net/http/IdleCache;->mCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/net/http/IdleCache;->mCount:I

    const/4 v2, 0x1

    iget-object v5, p0, Landroid/net/http/IdleCache;->mThread:Landroid/net/http/IdleCache$IdleReaper;

    if-nez v5, :cond_0

    new-instance v5, Landroid/net/http/IdleCache$IdleReaper;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/net/http/IdleCache$IdleReaper;-><init>(Landroid/net/http/IdleCache;Landroid/net/http/IdleCache$1;)V

    iput-object v5, p0, Landroid/net/http/IdleCache;->mThread:Landroid/net/http/IdleCache$IdleReaper;

    iget-object v5, p0, Landroid/net/http/IdleCache;->mThread:Landroid/net/http/IdleCache$IdleReaper;

    invoke-virtual {v5}, Landroid/net/http/IdleCache$IdleReaper;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0           #entry:Landroid/net/http/IdleCache$Entry;
    .end local v1           #i:I
    .end local v3           #time:J
    :cond_0
    monitor-exit p0

    return v2

    .restart local v0       #entry:Landroid/net/http/IdleCache$Entry;
    .restart local v1       #i:I
    .restart local v3       #time:J
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #entry:Landroid/net/http/IdleCache$Entry;
    .end local v1           #i:I
    .end local v3           #time:J
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method declared-synchronized clear()V
    .locals 4

    .prologue
    monitor-enter p0

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget v2, p0, Landroid/net/http/IdleCache;->mCount:I

    if-lez v2, :cond_1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/net/http/IdleCache;->mEntries:[Landroid/net/http/IdleCache$Entry;

    aget-object v0, v2, v1

    .local v0, entry:Landroid/net/http/IdleCache$Entry;
    iget-object v2, v0, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    iget-object v2, v0, Landroid/net/http/IdleCache$Entry;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v2}, Landroid/net/http/Connection;->closeConnection()V

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/net/http/IdleCache$Entry;->mConnection:Landroid/net/http/Connection;

    iget v2, p0, Landroid/net/http/IdleCache;->mCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/net/http/IdleCache;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #entry:Landroid/net/http/IdleCache$Entry;
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized getConnection(Lorg/apache/http/HttpHost;)Landroid/net/http/Connection;
    .locals 6
    .parameter "host"

    .prologue
    monitor-enter p0

    const/4 v3, 0x0

    .local v3, ret:Landroid/net/http/Connection;
    :try_start_0
    iget v4, p0, Landroid/net/http/IdleCache;->mCount:I

    if-lez v4, :cond_0

    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/16 v4, 0x8

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Landroid/net/http/IdleCache;->mEntries:[Landroid/net/http/IdleCache$Entry;

    aget-object v1, v4, v2

    .local v1, entry:Landroid/net/http/IdleCache$Entry;
    iget-object v0, v1, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    .local v0, eHost:Lorg/apache/http/HttpHost;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v3, v1, Landroid/net/http/IdleCache$Entry;->mConnection:Landroid/net/http/Connection;

    const/4 v4, 0x0

    iput-object v4, v1, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    const/4 v4, 0x0

    iput-object v4, v1, Landroid/net/http/IdleCache$Entry;->mConnection:Landroid/net/http/Connection;

    iget v4, p0, Landroid/net/http/IdleCache;->mCount:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Landroid/net/http/IdleCache;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0           #eHost:Lorg/apache/http/HttpHost;
    .end local v1           #entry:Landroid/net/http/IdleCache$Entry;
    .end local v2           #i:I
    :cond_0
    monitor-exit p0

    return-object v3

    .restart local v0       #eHost:Lorg/apache/http/HttpHost;
    .restart local v1       #entry:Landroid/net/http/IdleCache$Entry;
    .restart local v2       #i:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #eHost:Lorg/apache/http/HttpHost;
    .end local v1           #entry:Landroid/net/http/IdleCache$Entry;
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
