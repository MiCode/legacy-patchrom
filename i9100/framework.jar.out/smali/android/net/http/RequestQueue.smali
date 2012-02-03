.class public Landroid/net/http/RequestQueue;
.super Ljava/lang/Object;
.source "RequestQueue.java"

# interfaces
.implements Landroid/net/http/RequestFeeder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/http/RequestQueue$ConnectionManager;,
        Landroid/net/http/RequestQueue$SyncFeeder;,
        Landroid/net/http/RequestQueue$ActivePool;
    }
.end annotation


# static fields
.field private static final CONNECTION_COUNT:I = 0x14


# instance fields
.field private final mActivePool:Landroid/net/http/RequestQueue$ActivePool;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mPending:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lorg/apache/http/HttpHost;",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/net/http/Request;",
            ">;>;"
        }
    .end annotation
.end field

.field private mProxyChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mProxyHost:Lorg/apache/http/HttpHost;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 207
    const/16 v0, 0x14

    invoke-direct {p0, p1, v0}, Landroid/net/http/RequestQueue;-><init>(Landroid/content/Context;I)V

    .line 208
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "connectionCount"

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    .line 221
    iput-object p1, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    .line 223
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    .line 225
    new-instance v0, Landroid/net/http/RequestQueue$ActivePool;

    invoke-direct {v0, p0, p2}, Landroid/net/http/RequestQueue$ActivePool;-><init>(Landroid/net/http/RequestQueue;I)V

    iput-object v0, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    .line 226
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue$ActivePool;->startup()V

    .line 228
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/net/http/RequestQueue;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 230
    return-void
.end method

.method static synthetic access$000(Landroid/net/http/RequestQueue;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/http/RequestQueue;)Lorg/apache/http/HttpHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/http/RequestQueue;Lorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/net/http/RequestQueue;->determineHost(Lorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/http/RequestQueue;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/net/http/RequestQueue;->setProxyConfig()V

    return-void
.end method

.method private determineHost(Lorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;
    .locals 2
    .parameter "host"

    .prologue
    .line 428
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    if-eqz v0, :cond_0

    const-string v0, "https"

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    goto :goto_0
.end method

.method private removeFirst(Ljava/util/LinkedHashMap;)Landroid/net/http/Request;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Lorg/apache/http/HttpHost;",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/net/http/Request;",
            ">;>;)",
            "Landroid/net/http/Request;"
        }
    .end annotation

    .prologue
    .line 549
    .local p1, requestQueue:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    const/4 v3, 0x0

    .line 550
    .local v3, ret:Landroid/net/http/Request;
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 551
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 552
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 553
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    .line 554
    .local v2, reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #ret:Landroid/net/http/Request;
    check-cast v3, Landroid/net/http/Request;

    .line 555
    .restart local v3       #ret:Landroid/net/http/Request;
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 556
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    .end local v2           #reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :cond_0
    return-object v3
.end method

.method private declared-synchronized setProxyConfig()V
    .locals 7

    .prologue
    const-string v4, "http"

    const-string v4, "false"

    .line 271
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Landroid/net/http/RequestQueue;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 276
    .local v2, info:Landroid/net/NetworkInfo;
    const-string v4, "gsm.defaultpdpcontext.active"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "gsm.wifiConnected.active"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "true"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 278
    :cond_0
    iget-object v4, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 279
    .local v0, contentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 281
    const-string/jumbo v4, "wifi_http_proxy"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, host:Ljava/lang/String;
    const-string/jumbo v4, "wifi_http_port"

    const/16 v5, 0x1f90

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 283
    .local v3, port:I
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 284
    new-instance v4, Lorg/apache/http/HttpHost;

    const-string v5, "http"

    invoke-direct {v4, v1, v3, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v4, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    .end local v0           #contentResolver:Landroid/content/ContentResolver;
    .end local v3           #port:I
    :goto_0
    monitor-exit p0

    return-void

    .line 286
    .restart local v0       #contentResolver:Landroid/content/ContentResolver;
    .restart local v3       #port:I
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    iput-object v4, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 271
    .end local v0           #contentResolver:Landroid/content/ContentResolver;
    .end local v1           #host:Ljava/lang/String;
    .end local v2           #info:Landroid/net/NetworkInfo;
    .end local v3           #port:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 291
    .restart local v2       #info:Landroid/net/NetworkInfo;
    :cond_2
    :try_start_2
    iget-object v4, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 293
    .restart local v1       #host:Ljava/lang/String;
    if-nez v1, :cond_3

    .line 294
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    goto :goto_0

    .line 296
    :cond_3
    iget-object v4, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    invoke-virtual {v4}, Landroid/net/http/RequestQueue$ActivePool;->disablePersistence()V

    .line 297
    new-instance v4, Lorg/apache/http/HttpHost;

    iget-object v5, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v5

    const-string v6, "http"

    invoke-direct {v4, v1, v5, v6}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v4, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized disablePlatformNotifications()V
    .locals 2

    .prologue
    .line 260
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mProxyChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/http/RequestQueue;->mProxyChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/http/RequestQueue;->mProxyChangeReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    :cond_0
    monitor-exit p0

    return-void

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized dump()V
    .locals 12

    .prologue
    const-string v10, " "

    .line 444
    monitor-enter p0

    :try_start_0
    const-string v10, "dump()"

    invoke-static {v10}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 445
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 446
    .local v2, dump:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 451
    .local v0, count:I
    iget-object v10, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 452
    iget-object v10, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;>;"
    move v1, v0

    .line 453
    .end local v0           #count:I
    .local v1, count:I
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 454
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 455
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/http/HttpHost;

    invoke-virtual {v10}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v4

    .line 456
    .local v4, hostName:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "p"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v0, v1, 0x1

    .end local v1           #count:I
    .restart local v0       #count:I
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 458
    .local v6, line:Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/LinkedList;

    .line 459
    .local v8, reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v7

    .line 460
    .local v7, reqIter:Ljava/util/ListIterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 461
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/http/Request;

    .line 462
    .local v9, request:Landroid/net/http/Request;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 444
    .end local v0           #count:I
    .end local v2           #dump:Ljava/lang/StringBuilder;
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    .end local v4           #hostName:Ljava/lang/String;
    .end local v5           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;>;"
    .end local v6           #line:Ljava/lang/StringBuilder;
    .end local v7           #reqIter:Ljava/util/ListIterator;
    .end local v8           #reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    .end local v9           #request:Landroid/net/http/Request;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 464
    .restart local v0       #count:I
    .restart local v2       #dump:Ljava/lang/StringBuilder;
    .restart local v3       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    .restart local v4       #hostName:Ljava/lang/String;
    .restart local v5       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;>;"
    .restart local v6       #line:Ljava/lang/StringBuilder;
    .restart local v7       #reqIter:Ljava/util/ListIterator;
    .restart local v8       #reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :cond_0
    :try_start_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 465
    const-string v10, "\n"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    .line 466
    .end local v0           #count:I
    .restart local v1       #count:I
    goto :goto_0

    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    .end local v4           #hostName:Ljava/lang/String;
    .end local v6           #line:Ljava/lang/StringBuilder;
    .end local v7           #reqIter:Ljava/util/ListIterator;
    .end local v8           #reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :cond_1
    move v0, v1

    .line 468
    .end local v1           #count:I
    .end local v5           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;>;"
    .restart local v0       #count:I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 469
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized enablePlatformNotifications()V
    .locals 4

    .prologue
    .line 238
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mProxyChangeReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Landroid/net/http/RequestQueue$1;

    invoke-direct {v0, p0}, Landroid/net/http/RequestQueue$1;-><init>(Landroid/net/http/RequestQueue;)V

    iput-object v0, p0, Landroid/net/http/RequestQueue;->mProxyChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 246
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/http/RequestQueue;->mProxyChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.PROXY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 250
    :cond_0
    invoke-direct {p0}, Landroid/net/http/RequestQueue;->setProxyConfig()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    monitor-exit p0

    return-void

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProxyHost()Lorg/apache/http/HttpHost;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    return-object v0
.end method

.method public declared-synchronized getRequest()Landroid/net/http/Request;
    .locals 2

    .prologue
    .line 475
    monitor-enter p0

    const/4 v0, 0x0

    .line 477
    .local v0, ret:Landroid/net/http/Request;
    :try_start_0
    iget-object v1, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 478
    iget-object v1, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v1}, Landroid/net/http/RequestQueue;->removeFirst(Ljava/util/LinkedHashMap;)Landroid/net/http/Request;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 481
    :cond_0
    monitor-exit p0

    return-object v0

    .line 475
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getRequest(Lorg/apache/http/HttpHost;)Landroid/net/http/Request;
    .locals 4
    .parameter "host"

    .prologue
    .line 488
    monitor-enter p0

    const/4 v2, 0x0

    .line 490
    .local v2, ret:Landroid/net/http/Request;
    :try_start_0
    iget-object v3, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 491
    iget-object v3, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 492
    .local v1, reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/net/http/Request;

    move-object v2, v0

    .line 493
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 494
    iget-object v3, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    .end local v1           #reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :cond_0
    monitor-exit p0

    return-object v2

    .line 488
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized haveRequest(Lorg/apache/http/HttpHost;)Z
    .locals 1
    .parameter "host"

    .prologue
    .line 505
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public queueRequest(Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;
    .locals 12
    .parameter "url"
    .parameter "uri"
    .parameter "method"
    .parameter
    .parameter "eventHandler"
    .parameter "bodyProvider"
    .parameter "bodyLength"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/WebAddress;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/http/EventHandler;",
            "Ljava/io/InputStream;",
            "I)",
            "Landroid/net/http/RequestHandle;"
        }
    .end annotation

    .prologue
    .line 348
    .local p4, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p5, :cond_0

    .line 349
    new-instance p5, Landroid/net/http/LoggingEventHandler;

    .end local p5
    invoke-direct/range {p5 .. p5}, Landroid/net/http/LoggingEventHandler;-><init>()V

    .line 354
    .restart local p5
    :cond_0
    new-instance v2, Lorg/apache/http/HttpHost;

    iget-object v1, p2, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    iget v3, p2, Landroid/net/WebAddress;->mPort:I

    iget-object v4, p2, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    invoke-direct {v2, v1, v3, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 357
    .local v2, httpHost:Lorg/apache/http/HttpHost;
    new-instance v0, Landroid/net/http/Request;

    iget-object v3, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    iget-object v4, p2, Landroid/net/WebAddress;->mPath:Ljava/lang/String;

    move-object v1, p3

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p5

    move-object/from16 v8, p4

    invoke-direct/range {v0 .. v8}, Landroid/net/http/Request;-><init>(Ljava/lang/String;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Ljava/lang/String;Ljava/io/InputStream;ILandroid/net/http/EventHandler;Ljava/util/Map;)V

    .line 360
    .local v0, req:Landroid/net/http/Request;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/net/http/RequestQueue;->queueRequest(Landroid/net/http/Request;Z)V

    .line 362
    iget-object v1, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    invoke-static {v1}, Landroid/net/http/RequestQueue$ActivePool;->access$408(Landroid/net/http/RequestQueue$ActivePool;)I

    .line 365
    iget-object v1, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    invoke-virtual {v1}, Landroid/net/http/RequestQueue$ActivePool;->startConnectionThread()V

    .line 367
    new-instance v3, Landroid/net/http/RequestHandle;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-object v11, v0

    invoke-direct/range {v3 .. v11}, Landroid/net/http/RequestHandle;-><init>(Landroid/net/http/RequestQueue;Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Ljava/io/InputStream;ILandroid/net/http/Request;)V

    return-object v3
.end method

.method public queueRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;
    .locals 8
    .parameter "url"
    .parameter "method"
    .parameter
    .parameter "eventHandler"
    .parameter "bodyProvider"
    .parameter "bodyLength"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/http/EventHandler;",
            "Ljava/io/InputStream;",
            "I)",
            "Landroid/net/http/RequestHandle;"
        }
    .end annotation

    .prologue
    .line 324
    .local p3, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Landroid/net/WebAddress;

    invoke-direct {v2, p1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .local v2, uri:Landroid/net/WebAddress;
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    .line 325
    invoke-virtual/range {v0 .. v7}, Landroid/net/http/RequestQueue;->queueRequest(Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized queueRequest(Landroid/net/http/Request;Z)V
    .locals 3
    .parameter "request"
    .parameter "head"

    .prologue
    .line 523
    monitor-enter p0

    :try_start_0
    iget-object v2, p1, Landroid/net/http/Request;->mProxyHost:Lorg/apache/http/HttpHost;

    if-nez v2, :cond_0

    iget-object v2, p1, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    move-object v0, v2

    .line 525
    .local v0, host:Lorg/apache/http/HttpHost;
    :goto_0
    iget-object v2, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 526
    iget-object v2, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 531
    .local v1, reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :goto_1
    if-eqz p2, :cond_2

    .line 532
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    :goto_2
    monitor-exit p0

    return-void

    .line 523
    .end local v0           #host:Lorg/apache/http/HttpHost;
    .end local v1           #reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :cond_0
    :try_start_1
    iget-object v2, p1, Landroid/net/http/Request;->mProxyHost:Lorg/apache/http/HttpHost;

    move-object v0, v2

    goto :goto_0

    .line 528
    .restart local v0       #host:Lorg/apache/http/HttpHost;
    :cond_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 529
    .restart local v1       #reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    iget-object v2, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 523
    .end local v0           #host:Lorg/apache/http/HttpHost;
    .end local v1           #reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 534
    .restart local v0       #host:Lorg/apache/http/HttpHost;
    .restart local v1       #reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :cond_2
    :try_start_2
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public queueSynchronousRequest(Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;
    .locals 13
    .parameter "url"
    .parameter "uri"
    .parameter "method"
    .parameter
    .parameter "eventHandler"
    .parameter "bodyProvider"
    .parameter "bodyLength"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/WebAddress;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/http/EventHandler;",
            "Ljava/io/InputStream;",
            "I)",
            "Landroid/net/http/RequestHandle;"
        }
    .end annotation

    .prologue
    .line 402
    .local p4, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lorg/apache/http/HttpHost;

    iget-object v1, p2, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    iget v3, p2, Landroid/net/WebAddress;->mPort:I

    iget-object v4, p2, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    invoke-direct {v2, v1, v3, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 404
    .local v2, host:Lorg/apache/http/HttpHost;
    new-instance v0, Landroid/net/http/Request;

    iget-object v3, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    iget-object v4, p2, Landroid/net/WebAddress;->mPath:Ljava/lang/String;

    move-object/from16 v1, p3

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p5

    move-object/from16 v8, p4

    invoke-direct/range {v0 .. v8}, Landroid/net/http/Request;-><init>(Ljava/lang/String;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Ljava/lang/String;Ljava/io/InputStream;ILandroid/net/http/EventHandler;Ljava/util/Map;)V

    .line 409
    .local v0, req:Landroid/net/http/Request;
    invoke-direct {p0, v2}, Landroid/net/http/RequestQueue;->determineHost(Lorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;

    move-result-object v2

    .line 410
    iget-object v1, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    new-instance v4, Landroid/net/http/RequestQueue$SyncFeeder;

    invoke-direct {v4}, Landroid/net/http/RequestQueue$SyncFeeder;-><init>()V

    invoke-static {v1, v2, v3, v4}, Landroid/net/http/Connection;->getConnection(Landroid/content/Context;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)Landroid/net/http/Connection;

    move-result-object v12

    .line 415
    .local v12, conn:Landroid/net/http/Connection;
    new-instance v3, Landroid/net/http/RequestHandle;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-object v11, v0

    invoke-direct/range {v3 .. v12}, Landroid/net/http/RequestHandle;-><init>(Landroid/net/http/RequestQueue;Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Ljava/io/InputStream;ILandroid/net/http/Request;Landroid/net/http/Connection;)V

    return-object v3
.end method

.method declared-synchronized requestsPending()Z
    .locals 1

    .prologue
    .line 436
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requeueRequest(Landroid/net/http/Request;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 512
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/net/http/RequestQueue;->queueRequest(Landroid/net/http/Request;Z)V

    .line 513
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue$ActivePool;->shutdown()V

    .line 520
    return-void
.end method

.method public startTiming()V
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue$ActivePool;->startTiming()V

    .line 541
    return-void
.end method

.method public stopTiming()V
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue$ActivePool;->stopTiming()V

    .line 545
    return-void
.end method
