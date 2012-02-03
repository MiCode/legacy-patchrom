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

.field public static final EVENT_SEND_DEFAULT_CONNECTION_STATUS:I = 0x7

.field public static final EVENT_STATE_CHANGED:I = 0x1

.field private static final MAX_NETWORK_STATE_TRACKER_EVENT:I = 0x64

.field private static final MIN_NETWORK_STATE_TRACKER_EVENT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NetworkStateTracker"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDefaultGatewayAddr:I

.field private mDefaultRouteSet:Z

.field protected mDnsPropNames:[Ljava/lang/String;

.field protected mInterfaceName:Ljava/lang/String;

.field protected mNetworkInfo:Landroid/net/NetworkInfo;

.field private mPrivateDnsRouteSet:Z

.field protected mTarget:Landroid/os/Handler;

.field private mTeardownRequested:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
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
    .line 83
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 84
    iput-object p1, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/NetworkStateTracker;->mTeardownRequested:Z

    .line 88
    new-instance v0, Landroid/net/NetworkInfo;

    invoke-direct {v0, p3, p4, p5, p6}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 89
    return-void
.end method

.method protected static getNameServerList([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "propertyNames"

    .prologue
    .line 121
    array-length v5, p0

    new-array v0, v5, [Ljava/lang/String;

    .line 124
    .local v0, dnsAddresses:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    array-length v5, p0

    if-ge v1, v5, :cond_1

    .line 125
    aget-object v5, p0, v1

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, value:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "0.0.0.0"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 129
    add-int/lit8 v3, v2, 0x1

    .end local v2           #j:I
    .local v3, j:I
    aput-object v4, v0, v2

    move v2, v3

    .line 124
    .end local v3           #j:I
    .restart local v2       #j:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v4           #value:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private setBufferSize(Ljava/lang/String;)V
    .locals 7
    .parameter "bufferSizes"

    .prologue
    const-string v6, "NetworkStateTracker"

    .line 262
    :try_start_0
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, values:[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 265
    const-string v1, "/sys/kernel/ipv4/tcp_"

    .line 266
    .local v1, prefix:Ljava/lang/String;
    const-string v3, "/sys/kernel/ipv4/tcp_rmem_min"

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-direct {p0, v3, v4}, Landroid/net/NetworkStateTracker;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v3, "/sys/kernel/ipv4/tcp_rmem_def"

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-direct {p0, v3, v4}, Landroid/net/NetworkStateTracker;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v3, "/sys/kernel/ipv4/tcp_rmem_max"

    const/4 v4, 0x2

    aget-object v4, v2, v4

    invoke-direct {p0, v3, v4}, Landroid/net/NetworkStateTracker;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v3, "/sys/kernel/ipv4/tcp_wmem_min"

    const/4 v4, 0x3

    aget-object v4, v2, v4

    invoke-direct {p0, v3, v4}, Landroid/net/NetworkStateTracker;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v3, "/sys/kernel/ipv4/tcp_wmem_def"

    const/4 v4, 0x4

    aget-object v4, v2, v4

    invoke-direct {p0, v3, v4}, Landroid/net/NetworkStateTracker;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v3, "/sys/kernel/ipv4/tcp_wmem_max"

    const/4 v4, 0x5

    aget-object v4, v2, v4

    invoke-direct {p0, v3, v4}, Landroid/net/NetworkStateTracker;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .end local v1           #prefix:Ljava/lang/String;
    .end local v2           #values:[Ljava/lang/String;
    :goto_0
    return-void

    .line 273
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

    .line 275
    .end local v2           #values:[Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 276
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
    .line 288
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 290
    .local v0, out:Ljava/io/FileWriter;
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 294
    return-void

    .line 292
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    throw v1
.end method


# virtual methods
.method public addDefaultRoute()V
    .locals 5

    .prologue
    const-string v4, "addDefaultRoute for "

    const-string v3, "NetworkStateTracker"

    const-string v2, "), GatewayAddr="

    .line 166
    sget-boolean v0, Landroid/net/NetworkStateTracker;->DBG:Z

    if-eqz v0, :cond_0

    .line 167
    const-string v0, "NetworkStateTracker"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addDefaultRoute for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), GatewayAddr="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/NetworkStateTracker;->mDefaultGatewayAddr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDefaultRouteSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/NetworkStateTracker;->mDefaultRouteSet:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/net/NetworkStateTracker;->mDefaultGatewayAddr:I

    if-eqz v0, :cond_2

    .line 175
    sget-boolean v0, Landroid/net/NetworkStateTracker;->DBG:Z

    if-eqz v0, :cond_1

    .line 176
    const-string v0, "NetworkStateTracker"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addDefaultRoute for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), GatewayAddr="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/NetworkStateTracker;->mDefaultGatewayAddr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_1
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    iget v1, p0, Landroid/net/NetworkStateTracker;->mDefaultGatewayAddr:I

    invoke-static {v0, v1}, Landroid/net/NetworkUtils;->addHostRoute(Ljava/lang/String;I)I

    .line 180
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    iget v1, p0, Landroid/net/NetworkStateTracker;->mDefaultGatewayAddr:I

    invoke-static {v0, v1}, Landroid/net/NetworkUtils;->setDefaultRoute(Ljava/lang/String;I)I

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/NetworkStateTracker;->mDefaultRouteSet:Z

    .line 183
    :cond_2
    return-void
.end method

.method public addForceDefaultRouteForPDP0()V
    .locals 5

    .prologue
    const-string v4, "NetworkStateTracker"

    .line 206
    const-string v2, "NetworkStateTracker"

    const-string v2, "addForceDefaultRoute : "

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const-string/jumbo v2, "net.rmnet_sdio0.gw"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, value:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "0.0.0.0"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 210
    invoke-static {v1}, Landroid/net/NetworkUtils;->lookupHost(Ljava/lang/String;)I

    move-result v0

    .line 211
    .local v0, addr:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-eqz v0, :cond_1

    .line 212
    sget-boolean v2, Landroid/net/NetworkStateTracker;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "NetworkStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " adding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_0
    const-string/jumbo v2, "rmnet_sdio0"

    invoke-static {v2, v0}, Landroid/net/NetworkUtils;->setDefaultRoute(Ljava/lang/String;I)I

    .line 216
    .end local v0           #addr:I
    :cond_1
    return-void
.end method

.method public addPrivateDnsRoutes()V
    .locals 8

    .prologue
    const-string v7, "NetworkStateTracker"

    .line 136
    sget-boolean v5, Landroid/net/NetworkStateTracker;->DBG:Z

    if-eqz v5, :cond_0

    .line 137
    const-string v5, "NetworkStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addPrivateDnsRoutes for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") - mPrivateDnsRouteSet = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Landroid/net/NetworkStateTracker;->mPrivateDnsRouteSet:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    iget-object v5, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Landroid/net/NetworkStateTracker;->mPrivateDnsRouteSet:Z

    if-nez v5, :cond_4

    .line 141
    invoke-virtual {p0}, Landroid/net/NetworkStateTracker;->getNameServers()[Ljava/lang/String;

    move-result-object v2

    .local v2, arr$:[Ljava/lang/String;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v1, v2, v3

    .line 142
    .local v1, addrString:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/NetworkUtils;->lookupHost(Ljava/lang/String;)I

    move-result v0

    .line 143
    .local v0, addr:I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    if-eqz v0, :cond_2

    .line 144
    sget-boolean v5, Landroid/net/NetworkStateTracker;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "NetworkStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  adding "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_1
    iget-object v5, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v5, v0}, Landroid/net/NetworkUtils;->addHostRoute(Ljava/lang/String;I)I

    .line 141
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 148
    .end local v0           #addr:I
    .end local v1           #addrString:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/net/NetworkStateTracker;->mPrivateDnsRouteSet:Z

    .line 150
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_4
    return-void
.end method

.method public getInterfaceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public getNameServers()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mDnsPropNames:[Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkStateTracker;->getNameServerList([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public abstract getTcpBufferSizesPropName()Ljava/lang/String;
.end method

.method public interpretScanResultsAvailable()V
    .locals 0

    .prologue
    .line 459
    return-void
.end method

.method public abstract isAvailable()Z
.end method

.method public isTeardownRequested()Z
    .locals 1

    .prologue
    .line 351
    iget-boolean v0, p0, Landroid/net/NetworkStateTracker;->mTeardownRequested:Z

    return v0
.end method

.method public abstract reconnect()Z
.end method

.method public releaseWakeLock()V
    .locals 0

    .prologue
    .line 251
    return-void
.end method

.method public removeDefaultRoute()V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/net/NetworkStateTracker;->mDefaultRouteSet:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 187
    sget-boolean v0, Landroid/net/NetworkStateTracker;->DBG:Z

    if-eqz v0, :cond_0

    .line 188
    const-string v0, "NetworkStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeDefaultRoute for "

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

    .line 191
    :cond_0
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->removeDefaultRoute(Ljava/lang/String;)I

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/NetworkStateTracker;->mDefaultRouteSet:Z

    .line 194
    :cond_1
    return-void
.end method

.method public removeForceDefaultRoute()V
    .locals 3

    .prologue
    .line 198
    sget-boolean v0, Landroid/net/NetworkStateTracker;->DBG:Z

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "NetworkStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeForceDefaultRoute for "

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

    .line 202
    :cond_0
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->removeDefaultRoute(Ljava/lang/String;)I

    .line 203
    return-void
.end method

.method public removePrivateDnsRoutes()V
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/net/NetworkStateTracker;->mPrivateDnsRouteSet:Z

    if-eqz v0, :cond_1

    .line 156
    sget-boolean v0, Landroid/net/NetworkStateTracker;->DBG:Z

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "NetworkStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removePrivateDnsRoutes for "

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

    .line 160
    :cond_0
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->removeHostRoutes(Ljava/lang/String;)I

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/NetworkStateTracker;->mPrivateDnsRouteSet:Z

    .line 163
    :cond_1
    return-void
.end method

.method public requestRouteToHost(I)Z
    .locals 1
    .parameter "hostAddress"

    .prologue
    .line 451
    const/4 v0, 0x0

    return v0
.end method

.method protected sendScanResultsAvailable()V
    .locals 4

    .prologue
    .line 359
    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;

    const/4 v2, 0x2

    iget-object v3, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 360
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 361
    return-void
.end method

.method public setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 1
    .parameter "state"

    .prologue
    const/4 v0, 0x0

    .line 303
    invoke-virtual {p0, p1, v0, v0}, Landroid/net/NetworkStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method public setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "state"
    .parameter "reason"
    .parameter "extraInfo"

    .prologue
    const/4 v7, 0x1

    .line 316
    sget-boolean v4, Landroid/net/NetworkStateTracker;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "NetworkStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setDetailed state, old ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and new state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_0
    iget-object v4, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    if-eq p1, v4, :cond_2

    .line 318
    iget-object v4, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_3

    move v3, v7

    .line 319
    .local v3, wasConnecting:Z
    :goto_0
    iget-object v4, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, lastReason:Ljava/lang/String;
    if-eqz v3, :cond_1

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v4, :cond_1

    if-nez p2, :cond_1

    if-eqz v0, :cond_1

    .line 328
    move-object p2, v0

    .line 329
    :cond_1
    iget-object v4, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4, p1, p2, p3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 334
    .local v2, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/net/NetworkStateTracker;->setSubtype(ILjava/lang/String;)V

    .line 337
    iget-object v4, p0, Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;

    iget-object v5, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4, v7, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 338
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 340
    .end local v0           #lastReason:Ljava/lang/String;
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #tm:Landroid/telephony/TelephonyManager;
    .end local v3           #wasConnecting:Z
    :cond_2
    return-void

    .line 318
    :cond_3
    const/4 v4, 0x0

    move v3, v4

    goto :goto_0
.end method

.method protected setDetailedStateInternal(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 2
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 343
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, p1, v1, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method public abstract setRadio(Z)Z
.end method

.method protected setRoamingStatus(Z)V
    .locals 4
    .parameter "isRoaming"

    .prologue
    .line 370
    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v1

    if-eq p1, v1, :cond_0

    .line 371
    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, p1}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    .line 372
    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;

    const/4 v2, 0x5

    iget-object v3, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 373
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 375
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method protected setSubtype(ILjava/lang/String;)V
    .locals 6
    .parameter "subtype"
    .parameter "subtypeName"

    .prologue
    .line 378
    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    .line 379
    .local v1, oldSubtype:I
    if-eq p1, v1, :cond_0

    .line 380
    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2, p1, p2}, Landroid/net/NetworkInfo;->setSubtype(ILjava/lang/String;)V

    .line 381
    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 382
    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;

    const/4 v3, 0x6

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 384
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 387
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public setTeardownRequested(Z)V
    .locals 0
    .parameter "isRequested"

    .prologue
    .line 347
    iput-boolean p1, p0, Landroid/net/NetworkStateTracker;->mTeardownRequested:Z

    .line 348
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

.method public updateNetworkSettings()V
    .locals 5

    .prologue
    const-string v4, "NetworkStateTracker"

    .line 225
    invoke-virtual {p0}, Landroid/net/NetworkStateTracker;->getTcpBufferSizesPropName()Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, key:Ljava/lang/String;
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, bufferSizes:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 229
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

    .line 232
    const-string/jumbo v1, "net.tcp.buffersize.default"

    .line 233
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 238
    sget-boolean v2, Landroid/net/NetworkStateTracker;->DBG:Z

    if-eqz v2, :cond_1

    .line 239
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

    .line 242
    :cond_1
    invoke-direct {p0, v0}, Landroid/net/NetworkStateTracker;->setBufferSize(Ljava/lang/String;)V

    .line 244
    :cond_2
    return-void
.end method
