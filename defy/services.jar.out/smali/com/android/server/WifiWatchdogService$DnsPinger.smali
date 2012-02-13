.class Lcom/android/server/WifiWatchdogService$DnsPinger;
.super Ljava/lang/Object;
.source "WifiWatchdogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiWatchdogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DnsPinger"
.end annotation


# static fields
.field private static final DNS_PORT:I = 0x35

.field private static final DNS_QUERY_BASE_SIZE:I = 0x21

.field private static sRandom:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/server/WifiWatchdogService$DnsPinger;->sRandom:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fillQuery([B)V
    .locals 5
    .parameter "buf"

    .prologue
    const/16 v4, 0x100

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aput-byte v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/server/WifiWatchdogService$DnsPinger;->sRandom:Ljava/util/Random;

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p0, v2

    sget-object v1, Lcom/android/server/WifiWatchdogService$DnsPinger;->sRandom:Ljava/util/Random;

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p0, v3

    const/4 v1, 0x2

    aput-byte v3, p0, v1

    const/4 v1, 0x5

    aput-byte v3, p0, v1

    const/16 v1, 0xc

    const-string v2, "www"

    invoke-static {p0, v1, v2}, Lcom/android/server/WifiWatchdogService$DnsPinger;->writeString([BILjava/lang/String;)V

    const/16 v1, 0x10

    const-string v2, "android"

    invoke-static {p0, v1, v2}, Lcom/android/server/WifiWatchdogService$DnsPinger;->writeString([BILjava/lang/String;)V

    const/16 v1, 0x18

    const-string v2, "com"

    invoke-static {p0, v1, v2}, Lcom/android/server/WifiWatchdogService$DnsPinger;->writeString([BILjava/lang/String;)V

    const/16 v1, 0x1e

    aput-byte v3, p0, v1

    const/16 v1, 0x20

    aput-byte v3, p0, v1

    return-void
.end method

.method static isDnsReachable(II)Z
    .locals 12
    .parameter "dns"
    .parameter "timeout"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v6, 0x0

    .local v6, socket:Ljava/net/DatagramSocket;
    :try_start_0
    new-instance v7, Ljava/net/DatagramSocket;

    invoke-direct {v7}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .end local v6           #socket:Ljava/net/DatagramSocket;
    .local v7, socket:Ljava/net/DatagramSocket;
    :try_start_1
    invoke-virtual {v7, p1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    const/16 v8, 0x21

    new-array v0, v8, [B

    .local v0, buf:[B
    invoke-static {v0}, Lcom/android/server/WifiWatchdogService$DnsPinger;->fillQuery([B)V

    const/4 v8, 0x4

    new-array v4, v8, [B

    .local v4, parts:[B
    const/4 v8, 0x0

    and-int/lit16 v9, p0, 0xff

    int-to-byte v9, v9

    aput-byte v9, v4, v8

    const/4 v8, 0x1

    shr-int/lit8 v9, p0, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v4, v8

    const/4 v8, 0x2

    shr-int/lit8 v9, p0, 0x10

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v4, v8

    const/4 v8, 0x3

    shr-int/lit8 v9, p0, 0x18

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v4, v8

    invoke-static {v4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    .local v1, dnsAddress:Ljava/net/InetAddress;
    new-instance v3, Ljava/net/DatagramPacket;

    array-length v8, v0

    const/16 v9, 0x35

    invoke-direct {v3, v0, v8, v1, v9}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .local v3, packet:Ljava/net/DatagramPacket;
    invoke-virtual {v7, v3}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    new-instance v5, Ljava/net/DatagramPacket;

    array-length v8, v0

    invoke-direct {v5, v0, v8}, Ljava/net/DatagramPacket;-><init>([BI)V

    .local v5, replyPacket:Ljava/net/DatagramPacket;
    invoke-virtual {v7, v5}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/net/DatagramSocket;->close()V

    :cond_0
    move-object v6, v7

    .end local v7           #socket:Ljava/net/DatagramSocket;
    .restart local v6       #socket:Ljava/net/DatagramSocket;
    move v8, v11

    .end local v0           #buf:[B
    .end local v1           #dnsAddress:Ljava/net/InetAddress;
    .end local v3           #packet:Ljava/net/DatagramPacket;
    .end local v4           #parts:[B
    .end local v5           #replyPacket:Ljava/net/DatagramPacket;
    :goto_0
    return v8

    :catch_0
    move-exception v8

    move-object v2, v8

    .local v2, e:Ljava/net/SocketException;
    :goto_1
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/net/DatagramSocket;->close()V

    :cond_1
    move v8, v10

    goto :goto_0

    .end local v2           #e:Ljava/net/SocketException;
    :catch_1
    move-exception v8

    move-object v2, v8

    .local v2, e:Ljava/net/UnknownHostException;
    :goto_2
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/net/DatagramSocket;->close()V

    :cond_2
    move v8, v10

    goto :goto_0

    .end local v2           #e:Ljava/net/UnknownHostException;
    :catch_2
    move-exception v8

    move-object v2, v8

    .local v2, e:Ljava/net/SocketTimeoutException;
    :goto_3
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/net/DatagramSocket;->close()V

    :cond_3
    move v8, v10

    goto :goto_0

    .end local v2           #e:Ljava/net/SocketTimeoutException;
    :catch_3
    move-exception v8

    move-object v2, v8

    .local v2, e:Ljava/io/IOException;
    :goto_4
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/net/DatagramSocket;->close()V

    :cond_4
    move v8, v10

    goto :goto_0

    .end local v2           #e:Ljava/io/IOException;
    :catch_4
    move-exception v8

    move-object v2, v8

    .local v2, e:Ljava/lang/Exception;
    :goto_5
    :try_start_2
    const-string v8, "WifiWatchdogService"

    const-string v9, "DnsPinger.isReachable got an unknown exception"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/net/DatagramSocket;->close()V

    :cond_5
    move v8, v10

    goto :goto_0

    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_6
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/net/DatagramSocket;->close()V

    :cond_6
    throw v8

    .end local v6           #socket:Ljava/net/DatagramSocket;
    .restart local v7       #socket:Ljava/net/DatagramSocket;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7           #socket:Ljava/net/DatagramSocket;
    .restart local v6       #socket:Ljava/net/DatagramSocket;
    goto :goto_6

    .end local v6           #socket:Ljava/net/DatagramSocket;
    .restart local v7       #socket:Ljava/net/DatagramSocket;
    :catch_5
    move-exception v8

    move-object v2, v8

    move-object v6, v7

    .end local v7           #socket:Ljava/net/DatagramSocket;
    .restart local v6       #socket:Ljava/net/DatagramSocket;
    goto :goto_5

    .end local v6           #socket:Ljava/net/DatagramSocket;
    .restart local v7       #socket:Ljava/net/DatagramSocket;
    :catch_6
    move-exception v8

    move-object v2, v8

    move-object v6, v7

    .end local v7           #socket:Ljava/net/DatagramSocket;
    .restart local v6       #socket:Ljava/net/DatagramSocket;
    goto :goto_4

    .end local v6           #socket:Ljava/net/DatagramSocket;
    .restart local v7       #socket:Ljava/net/DatagramSocket;
    :catch_7
    move-exception v8

    move-object v2, v8

    move-object v6, v7

    .end local v7           #socket:Ljava/net/DatagramSocket;
    .restart local v6       #socket:Ljava/net/DatagramSocket;
    goto :goto_3

    .end local v6           #socket:Ljava/net/DatagramSocket;
    .restart local v7       #socket:Ljava/net/DatagramSocket;
    :catch_8
    move-exception v8

    move-object v2, v8

    move-object v6, v7

    .end local v7           #socket:Ljava/net/DatagramSocket;
    .restart local v6       #socket:Ljava/net/DatagramSocket;
    goto :goto_2

    .end local v6           #socket:Ljava/net/DatagramSocket;
    .restart local v7       #socket:Ljava/net/DatagramSocket;
    :catch_9
    move-exception v8

    move-object v2, v8

    move-object v6, v7

    .end local v7           #socket:Ljava/net/DatagramSocket;
    .restart local v6       #socket:Ljava/net/DatagramSocket;
    goto :goto_1
.end method

.method private static writeString([BILjava/lang/String;)V
    .locals 4
    .parameter "buf"
    .parameter "startPos"
    .parameter "string"

    .prologue
    move v1, p1

    .local v1, pos:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #pos:I
    .local v2, pos:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, p0, v1

    const/4 v0, 0x0

    .local v0, i:I
    move v1, v2

    .end local v2           #pos:I
    .restart local v1       #pos:I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    add-int/lit8 v2, v1, 0x1

    .end local v1           #pos:I
    .restart local v2       #pos:I
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, p0, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    .end local v2           #pos:I
    .restart local v1       #pos:I
    goto :goto_0

    :cond_0
    return-void
.end method
