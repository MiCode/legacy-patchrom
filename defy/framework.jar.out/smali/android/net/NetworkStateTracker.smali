.class public abstract Landroid/net/NetworkStateTracker;
.super Landroid/os/Handler;
.source "NetworkStateTracker.java"


# static fields
.field private static DBG:Z = false

.field public static final EVENT_CONFIGURATION_CHANGED:I = 0x4

.field public static final EVENT_NETWORK_SUBTYPE_CHANGED:I = 0x6

.field public static final EVENT_NOTIFICATION_CHANGED:I = 0x3

.field public static final EVENT_ROAMING_CHANGED:I = 0x5

.field public static final EVENT_SCAN_RESULTS_AVAILABLE:I = 0x2

.field public static final EVENT_STATE_CHANGED:I = 0x1

.field private static final MAX_NETWORK_STATE_TRACKER_EVENT:I = 0x64

.field private static final MIN_NETWORK_STATE_TRACKER_EVENT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NetworkStateTracker"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDefaultGatewayAddr:I

.field protected mDnsPropNames:[Ljava/lang/String;

.field protected mFeature:Ljava/lang/String;

.field protected mGwAddr:[Ljava/net/InetAddress;

.field protected mInterfaceName:Ljava/lang/String;

.field protected mIpType:I

.field protected mNetworkInfo:Landroid/net/NetworkInfo;

.field private mPrivateDnsRouteSet:Z

.field protected mTarget:Landroid/os/Handler;

.field private mTeardownRequested:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    sput-boolean v0, Landroid/net/NetworkStateTracker;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "target"
    .parameter "networkType"
    .parameter "subType"
    .parameter "typeName"
    .parameter "subtypeName"

    .prologue
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/net/InetAddress;

    iput-object v0, p0, Landroid/net/NetworkStateTracker;->mGwAddr:[Ljava/net/InetAddress;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/NetworkStateTracker;->mFeature:Ljava/lang/String;

    iput-object p1, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/NetworkStateTracker;->mTeardownRequested:Z

    new-instance v0, Landroid/net/NetworkInfo;

    invoke-direct {v0, p3, p4, p5, p6}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-void
.end method

.method protected static getNameServerList([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "propertyNames"

    .prologue
    array-length v5, p0

    new-array v0, v5, [Ljava/lang/String;

    .local v0, dnsAddresses:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    array-length v5, p0

    if-ge v1, v5, :cond_1

    aget-object v5, p0, v1

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, value:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "0.0.0.0"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v3, v2, 0x1

    .end local v2           #j:I
    .local v3, j:I
    aput-object v4, v0, v2

    move v2, v3

    .end local v3           #j:I
    .restart local v2       #j:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v4           #value:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private setBufferSize(Ljava/lang/String;)V
    .locals 7
    .parameter "bufferSizes"

    .prologue
    const-string v6, "NetworkStateTracker"

    :try_start_0
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, values:[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    const-string v1, "/sys/kernel/ipv4/tcp_"

    .local v1, prefix:Ljava/lang/String;
    const-string v3, "/sys/kernel/ipv4/tcp_rmem_min"

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-direct {p0, v3, v4}, Landroid/net/NetworkStateTracker;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "/sys/kernel/ipv4/tcp_rmem_def"

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-direct {p0, v3, v4}, Landroid/net/NetworkStateTracker;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "/sys/kernel/ipv4/tcp_rmem_max"

    const/4 v4, 0x2

    aget-object v4, v2, v4

    invoke-direct {p0, v3, v4}, Landroid/net/NetworkStateTracker;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "/sys/kernel/ipv4/tcp_wmem_min"

    const/4 v4, 0x3

    aget-object v4, v2, v4

    invoke-direct {p0, v3, v4}, Landroid/net/NetworkStateTracker;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "/sys/kernel/ipv4/tcp_wmem_def"

    const/4 v4, 0x4

    aget-object v4, v2, v4

    invoke-direct {p0, v3, v4}, Landroid/net/NetworkStateTracker;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "/sys/kernel/ipv4/tcp_wmem_max"

    const/4 v4, 0x5

    aget-object v4, v2, v4

    invoke-direct {p0, v3, v4}, Landroid/net/NetworkStateTracker;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1           #prefix:Ljava/lang/String;
    .end local v2           #values:[Ljava/lang/String;
    :goto_0
    return-void

    .restart local v2       #values:[Ljava/lang/String;
    :cond_0
    const-string v3, "NetworkStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid buffersize string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v2           #values:[Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/io/IOException;
    const-string v3, "NetworkStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t set tcp buffer sizes:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "filename"
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .local v0, out:Ljava/io/FileWriter;
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    throw v1
.end method


# virtual methods
.method public addDefaultRoute()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mGwAddr:[Ljava/net/InetAddress;

    aget-object v2, v2, v6

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mGwAddr:[Ljava/net/InetAddress;

    aget-object v2, v2, v5

    if-eqz v2, :cond_8

    :cond_0
    sget-boolean v2, Landroid/net/NetworkStateTracker;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "NetworkStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addDefaultRoute for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "),"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mGwAddr[0]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/NetworkStateTracker;->mGwAddr:[Ljava/net/InetAddress;

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mGwAddr[1]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/NetworkStateTracker;->mGwAddr:[Ljava/net/InetAddress;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mIpType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/net/NetworkStateTracker;->mIpType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    .local v1, gwV6:Ljava/net/InetAddress;
    const/4 v0, 0x0

    .local v0, gwV4:Ljava/net/InetAddress;
    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mGwAddr:[Ljava/net/InetAddress;

    aget-object v2, v2, v6

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mGwAddr:[Ljava/net/InetAddress;

    aget-object v2, v2, v6

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mGwAddr:[Ljava/net/InetAddress;

    aget-object v0, v2, v6

    :cond_2
    :goto_0
    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mGwAddr:[Ljava/net/InetAddress;

    aget-object v2, v2, v5

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mGwAddr:[Ljava/net/InetAddress;

    aget-object v2, v2, v5

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mGwAddr:[Ljava/net/InetAddress;

    aget-object v0, v2, v5

    :cond_3
    :goto_1
    iget v2, p0, Landroid/net/NetworkStateTracker;->mIpType:I

    if-eqz v2, :cond_4

    iget v2, p0, Landroid/net/NetworkStateTracker;->mIpType:I

    if-ne v2, v7, :cond_5

    :cond_4
    if-eqz v0, :cond_5

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/NetworkUtils;->setClassDefaultRoute(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget v2, p0, Landroid/net/NetworkStateTracker;->mIpType:I

    if-eq v2, v5, :cond_6

    iget v2, p0, Landroid/net/NetworkStateTracker;->mIpType:I

    if-ne v2, v7, :cond_7

    :cond_6
    if-eqz v1, :cond_7

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/NetworkUtils;->setClassDefaultRoute(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    iget v3, p0, Landroid/net/NetworkStateTracker;->mDefaultGatewayAddr:I

    invoke-static {v2, v3}, Landroid/net/NetworkUtils;->addHostRoute(Ljava/lang/String;I)I

    .end local v0           #gwV4:Ljava/net/InetAddress;
    .end local v1           #gwV6:Ljava/net/InetAddress;
    :cond_8
    return-void

    .restart local v0       #gwV4:Ljava/net/InetAddress;
    .restart local v1       #gwV6:Ljava/net/InetAddress;
    :cond_9
    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mGwAddr:[Ljava/net/InetAddress;

    aget-object v1, v2, v6

    goto :goto_0

    :cond_a
    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mGwAddr:[Ljava/net/InetAddress;

    aget-object v1, v2, v5

    goto :goto_1
.end method

.method public addPrivateDnsRoutes()V
    .locals 10

    .prologue
    const-string v9, "NetworkStateTracker"

    sget-boolean v6, Landroid/net/NetworkStateTracker;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "NetworkStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addPrivateDnsRoutes for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") - mPrivateDnsRouteSet = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/net/NetworkStateTracker;->mPrivateDnsRouteSet:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v6, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Landroid/net/NetworkStateTracker;->mPrivateDnsRouteSet:Z

    if-nez v6, :cond_2

    invoke-virtual {p0}, Landroid/net/NetworkStateTracker;->getNameServers()[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v0, v1, v3

    .local v0, addrString:Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .local v4, inetAddress:Ljava/net/InetAddress;
    sget-boolean v6, Landroid/net/NetworkStateTracker;->DBG:Z

    if-eqz v6, :cond_1

    const-string v6, "NetworkStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  adding "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v6, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v4, v7, v8}, Landroid/net/NetworkUtils;->addHostRoute(Ljava/lang/String;Ljava/net/InetAddress;Ljava/net/InetAddress;I)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v4           #inetAddress:Ljava/net/InetAddress;
    :catch_0
    move-exception v2

    .end local v0           #addrString:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    :cond_2
    :goto_1
    return-void

    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v5       #len$:I
    :cond_3
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/net/NetworkStateTracker;->mPrivateDnsRouteSet:Z

    goto :goto_1
.end method

.method public bindOEMFeature(Ljava/lang/String;)Z
    .locals 1
    .parameter "oemFeature"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getApnni()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCid()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getDnsAddr()[Ljava/net/InetAddress;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFeature()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mFeature:Ljava/lang/String;

    return-object v0
.end method

.method public getGwAddr()[Ljava/net/InetAddress;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddr()[Ljava/net/InetAddress;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNameServers()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mDnsPropNames:[Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkStateTracker;->getNameServerList([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public abstract getTcpBufferSizesPropName()Ljava/lang/String;
.end method

.method public interpretScanResultsAvailable()V
    .locals 0

    .prologue
    return-void
.end method

.method public abstract isAvailable()Z
.end method

.method public isTeardownRequested()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/net/NetworkStateTracker;->mTeardownRequested:Z

    return v0
.end method

.method public isTriggeredByOEMFeature()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public abstract reconnect()Z
.end method

.method public releaseWakeLock()V
    .locals 0

    .prologue
    return-void
.end method

.method public removeDefaultRoute()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    if-eqz v1, :cond_4

    sget-boolean v1, Landroid/net/NetworkStateTracker;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "NetworkStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeDefaultRoute for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/NetworkUtils;->removeDefaultRoute(Ljava/lang/String;)I

    iget v1, p0, Landroid/net/NetworkStateTracker;->mIpType:I

    if-eq v1, v4, :cond_1

    iget v1, p0, Landroid/net/NetworkStateTracker;->mIpType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    :cond_1
    const/4 v0, 0x0

    .local v0, gwV6:Ljava/net/InetAddress;
    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mGwAddr:[Ljava/net/InetAddress;

    aget-object v1, v1, v5

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mGwAddr:[Ljava/net/InetAddress;

    aget-object v1, v1, v5

    instance-of v1, v1, Ljava/net/Inet6Address;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mGwAddr:[Ljava/net/InetAddress;

    aget-object v0, v1, v5

    :cond_2
    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mGwAddr:[Ljava/net/InetAddress;

    aget-object v1, v1, v4

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mGwAddr:[Ljava/net/InetAddress;

    aget-object v1, v1, v4

    instance-of v1, v1, Ljava/net/Inet6Address;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mGwAddr:[Ljava/net/InetAddress;

    aget-object v0, v1, v4

    :cond_3
    if-eqz v0, :cond_4

    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/NetworkUtils;->removeDefaultRoute6(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #gwV6:Ljava/net/InetAddress;
    :cond_4
    return-void
.end method

.method public removePrivateDnsRoutes()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/net/NetworkStateTracker;->mPrivateDnsRouteSet:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/net/NetworkStateTracker;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removePrivateDnsRoutes for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->removeHostRoutes(Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/NetworkStateTracker;->mPrivateDnsRouteSet:Z

    :cond_1
    return-void
.end method

.method public removePrivateDnsRoutes(Z)V
    .locals 3
    .parameter "isShared"

    .prologue
    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkStateTracker;->removePrivateDnsRoutes()V

    :cond_0
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/net/NetworkStateTracker;->mPrivateDnsRouteSet:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Landroid/net/NetworkStateTracker;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "NetworkStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shared, not removePrivateDnsRoutes for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/NetworkStateTracker;->mPrivateDnsRouteSet:Z

    :cond_2
    return-void
.end method

.method public requestRouteToHost(I)Z
    .locals 1
    .parameter "hostAddress"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public requestRouteToHost(Ljava/net/InetAddress;I)Z
    .locals 1
    .parameter "hostAddress"
    .parameter "mask"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public resetConnectionsInTracker(Z)V
    .locals 0
    .parameter "isShared"

    .prologue
    return-void
.end method

.method protected sendScanResultsAvailable()V
    .locals 4

    .prologue
    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;

    const/4 v2, 0x2

    iget-object v3, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 1
    .parameter "state"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/net/NetworkStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "state"
    .parameter "reason"
    .parameter "extraInfo"

    .prologue
    const/4 v6, 0x1

    sget-boolean v3, Landroid/net/NetworkStateTracker;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "NetworkStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDetailed state, old ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and new state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    if-eq p1, v3, :cond_2

    iget-object v3, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_3

    move v2, v6

    .local v2, wasConnecting:Z
    :goto_0
    iget-object v3, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v0

    .local v0, lastReason:Ljava/lang/String;
    if-eqz v2, :cond_1

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v3, :cond_1

    if-nez p2, :cond_1

    if-eqz v0, :cond_1

    move-object p2, v0

    :cond_1
    iget-object v3, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3, p1, p2, p3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;

    iget-object v4, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .end local v0           #lastReason:Ljava/lang/String;
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #wasConnecting:Z
    :cond_2
    return-void

    :cond_3
    const/4 v3, 0x0

    move v2, v3

    goto :goto_0
.end method

.method protected setDetailedStateInternal(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 2
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, p1, v1, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract setRadio(Z)Z
.end method

.method protected setRoamingStatus(Z)V
    .locals 4
    .parameter "isRoaming"

    .prologue
    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, p1}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;

    const/4 v2, 0x5

    iget-object v3, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method protected setSubtype(ILjava/lang/String;)V
    .locals 6
    .parameter "subtype"
    .parameter "subtypeName"

    .prologue
    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    .local v1, oldSubtype:I
    if-eq p1, v1, :cond_0

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2, p1, p2}, Landroid/net/NetworkInfo;->setSubtype(ILjava/lang/String;)V

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;

    const/4 v3, 0x6

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public setTeardownRequested(Z)V
    .locals 3
    .parameter "isRequested"

    .prologue
    sget-boolean v0, Landroid/net/NetworkStateTracker;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTeardownRequested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Landroid/net/NetworkStateTracker;->mTeardownRequested:Z

    return-void
.end method

.method public abstract startMonitoring()V
.end method

.method public abstract startUsingNetworkFeature(Ljava/lang/String;II)I
.end method

.method public abstract stopUsingNetworkFeature(Ljava/lang/String;II)I
.end method

.method public abstract teardown()Z
.end method

.method public unbindOEMFeature()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public updateNetworkSettings()V
    .locals 5

    .prologue
    const-string v4, "NetworkStateTracker"

    invoke-virtual {p0}, Landroid/net/NetworkStateTracker;->getTcpBufferSizesPropName()Ljava/lang/String;

    move-result-object v1

    .local v1, key:Ljava/lang/String;
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, bufferSizes:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NetworkStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found in system properties. Using defaults"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "net.tcp.buffersize.default"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10d003e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    const-string v2, "NetworkStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "use system properties for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "net.tcp.buffersize.hotspot"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    sget-boolean v2, Landroid/net/NetworkStateTracker;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "NetworkStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting TCP values: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] which comes from ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0, v0}, Landroid/net/NetworkStateTracker;->setBufferSize(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
