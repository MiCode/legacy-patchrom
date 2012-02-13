.class public Landroid/net/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native addHostRoute(Ljava/lang/String;I)I
.end method

.method public static addHostRoute(Ljava/lang/String;Ljava/net/InetAddress;Ljava/net/InetAddress;I)Z
    .locals 6
    .parameter "interfaceName"
    .parameter "dst"
    .parameter "gw"
    .parameter "prefixLength"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "NetworkUtils"

    if-nez p1, :cond_0

    const-string v2, "NetworkUtils"

    const-string v2, "addHostRoute: dst should not be null"

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .local v0, dstStr:Ljava/lang/String;
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .local v1, gwStr:Ljava/lang/String;
    :goto_1
    instance-of v2, p1, Ljava/net/Inet4Address;

    if-nez v2, :cond_2

    instance-of v2, p1, Ljava/net/Inet6Address;

    if-nez v2, :cond_2

    const-string v2, "NetworkUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addHostRoute failure: address is neither IPv4 nor IPv6("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    goto :goto_0

    .end local v1           #gwStr:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    move-object v1, v2

    goto :goto_1

    .restart local v1       #gwStr:Ljava/lang/String;
    :cond_2
    instance-of v2, p1, Ljava/net/Inet4Address;

    if-eqz v2, :cond_5

    if-lt p3, v3, :cond_3

    const/16 v2, 0x20

    if-ge v2, p3, :cond_5

    :cond_3
    const/16 p3, 0x20

    :cond_4
    :goto_2
    invoke-static {p0, v0, p3, v1}, Landroid/net/NetworkUtils;->addRoute(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7

    move v2, v3

    goto :goto_0

    :cond_5
    instance-of v2, p1, Ljava/net/Inet6Address;

    if-eqz v2, :cond_4

    if-lt p3, v3, :cond_6

    const/16 v2, 0x80

    if-ge v2, p3, :cond_4

    :cond_6
    const/16 p3, 0x80

    goto :goto_2

    :cond_7
    move v2, v4

    goto :goto_0
.end method

.method public static native addRoute(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
.end method

.method public static configureInterface(Ljava/lang/String;Landroid/net/DhcpInfo;)Z
    .locals 6
    .parameter "interfaceName"
    .parameter "ipInfo"

    .prologue
    iget v1, p1, Landroid/net/DhcpInfo;->ipAddress:I

    iget v2, p1, Landroid/net/DhcpInfo;->netmask:I

    iget v3, p1, Landroid/net/DhcpInfo;->gateway:I

    iget v4, p1, Landroid/net/DhcpInfo;->dns1:I

    iget v5, p1, Landroid/net/DhcpInfo;->dns2:I

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/net/NetworkUtils;->configureNative(Ljava/lang/String;IIIII)Z

    move-result v0

    return v0
.end method

.method private static native configureNative(Ljava/lang/String;IIIII)Z
.end method

.method public static native disableInterface(Ljava/lang/String;)I
.end method

.method public static native enableInterface(Ljava/lang/String;)I
.end method

.method public static native getDefaultRoute(Ljava/lang/String;)I
.end method

.method public static native getDhcpError()Ljava/lang/String;
.end method

.method public static native ifcEnabled(Ljava/lang/String;)Z
.end method

.method public static lookupHost(Ljava/lang/String;)I
    .locals 6
    .parameter "hostname"

    .prologue
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .local v3, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .local v1, addrBytes:[B
    const/4 v4, 0x3

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    const/4 v5, 0x2

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/4 v5, 0x0

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    or-int v0, v4, v5

    .local v0, addr:I
    move v4, v0

    .end local v0           #addr:I
    .end local v1           #addrBytes:[B
    .end local v3           #inetAddress:Ljava/net/InetAddress;
    :goto_0
    return v4

    :catch_0
    move-exception v2

    .local v2, e:Ljava/net/UnknownHostException;
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static native releaseDhcpLease(Ljava/lang/String;)Z
.end method

.method public static native removeDefaultRoute(Ljava/lang/String;)I
.end method

.method public static native removeDefaultRoute6(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native removeHostRoutes(Ljava/lang/String;)I
.end method

.method public static native resetConnections(Ljava/lang/String;)I
.end method

.method public static native runDhcp(Ljava/lang/String;Landroid/net/DhcpInfo;)Z
.end method

.method public static native runDhcpRenew(Ljava/lang/String;Landroid/net/DhcpInfo;)Z
.end method

.method public static native setClassDefaultRoute(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native setDefaultRoute(Ljava/lang/String;I)I
.end method

.method public static native stopDhcp(Ljava/lang/String;)Z
.end method

.method public static v4IntToString(I)Ljava/lang/String;
    .locals 9
    .parameter "ip"

    .prologue
    const/4 v3, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v1, ""

    .local v1, result:Ljava/lang/String;
    new-array v0, v3, [Ljava/lang/Integer;

    .local v0, ipArray:[Ljava/lang/Integer;
    and-int/lit16 v2, p0, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v5

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v6

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v7

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v8

    const-string v2, "%d.%d.%d.%d"

    new-array v3, v3, [Ljava/lang/Object;

    aget-object v4, v0, v5

    aput-object v4, v3, v5

    aget-object v4, v0, v6

    aput-object v4, v3, v6

    aget-object v4, v0, v7

    aput-object v4, v3, v7

    aget-object v4, v0, v8

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static v4StringToInt(Ljava/lang/String;)I
    .locals 6
    .parameter "str"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .local v2, result:I
    const-string v3, "\\."

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, array:[Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    move v3, v5

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x3

    :try_start_0
    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    shl-int/lit8 v3, v2, 0x8

    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int v2, v3, v4

    shl-int/lit8 v3, v2, 0x8

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int v2, v3, v4

    shl-int/lit8 v3, v2, 0x8

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    add-int v2, v3, v4

    move v3, v2

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/lang/NumberFormatException;
    move v3, v5

    goto :goto_0
.end method
