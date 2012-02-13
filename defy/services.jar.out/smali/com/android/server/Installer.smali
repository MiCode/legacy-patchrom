.class Lcom/android/server/Installer;
.super Ljava/lang/Object;
.source "Installer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Installer"


# instance fields
.field buf:[B

.field buflen:I

.field mIn:Ljava/io/InputStream;

.field mOut:Ljava/io/OutputStream;

.field mSocket:Landroid/net/LocalSocket;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/Installer;->buf:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/Installer;->buflen:I

    return-void
.end method

.method private connect()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/server/Installer;->mSocket:Landroid/net/LocalSocket;

    if-eqz v2, :cond_0

    move v2, v4

    :goto_0
    return v2

    :cond_0
    const-string v2, "Installer"

    const-string v3, "connecting..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    iput-object v2, p0, Lcom/android/server/Installer;->mSocket:Landroid/net/LocalSocket;

    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v2, "installd"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .local v0, address:Landroid/net/LocalSocketAddress;
    iget-object v2, p0, Lcom/android/server/Installer;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    iget-object v2, p0, Lcom/android/server/Installer;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/Installer;->mIn:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/android/server/Installer;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/Installer;->mOut:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    goto :goto_0

    .end local v0           #address:Landroid/net/LocalSocketAddress;
    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, ex:Ljava/io/IOException;
    invoke-direct {p0}, Lcom/android/server/Installer;->disconnect()V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private disconnect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "Installer"

    const-string v1, "disconnecting..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/android/server/Installer;->mSocket:Landroid/net/LocalSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/Installer;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/Installer;->mIn:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/Installer;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/Installer;->mOut:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/Installer;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_2
    iput-object v2, p0, Lcom/android/server/Installer;->mSocket:Landroid/net/LocalSocket;

    iput-object v2, p0, Lcom/android/server/Installer;->mIn:Ljava/io/InputStream;

    iput-object v2, p0, Lcom/android/server/Installer;->mOut:Ljava/io/OutputStream;

    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private execute(Ljava/lang/String;)I
    .locals 3
    .parameter "cmd"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/Installer;->transaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, res:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/NumberFormatException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private readBytes([BI)Z
    .locals 8
    .parameter "buffer"
    .parameter "len"

    .prologue
    const/4 v6, 0x0

    const-string v7, "Installer"

    const/4 v2, 0x0

    .local v2, off:I
    if-gez p2, :cond_1

    move v3, v6

    :goto_0
    return v3

    .local v0, count:I
    :cond_0
    add-int/2addr v2, v0

    .end local v0           #count:I
    :cond_1
    if-eq v2, p2, :cond_2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/Installer;->mIn:Ljava/io/InputStream;

    sub-int v4, p2, v2

    invoke-virtual {v3, p1, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .restart local v0       #count:I
    if-gtz v0, :cond_0

    const-string v3, "Installer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #count:I
    :cond_2
    :goto_1
    if-ne v2, p2, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, ex:Ljava/io/IOException;
    const-string v3, "Installer"

    const-string v3, "read exception"

    invoke-static {v7, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v1           #ex:Ljava/io/IOException;
    :cond_3
    invoke-direct {p0}, Lcom/android/server/Installer;->disconnect()V

    move v3, v6

    goto :goto_0
.end method

.method private readReply()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/Installer;->buflen:I

    iget-object v1, p0, Lcom/android/server/Installer;->buf:[B

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/server/Installer;->readBytes([BI)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v4

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/Installer;->buf:[B

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lcom/android/server/Installer;->buf:[B

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int v0, v1, v2

    .local v0, len:I
    if-lt v0, v3, :cond_1

    const/16 v1, 0x400

    if-le v0, v1, :cond_2

    :cond_1
    const-string v1, "Installer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid reply length ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/Installer;->disconnect()V

    move v1, v4

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/Installer;->buf:[B

    invoke-direct {p0, v1, v0}, Lcom/android/server/Installer;->readBytes([BI)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v4

    goto :goto_0

    :cond_3
    iput v0, p0, Lcom/android/server/Installer;->buflen:I

    move v1, v3

    goto :goto_0
.end method

.method private declared-synchronized transaction(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "cmd"

    .prologue
    const-string v1, "Installer"

    const-string v3, "-1"

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/Installer;->connect()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Installer"

    const-string v2, "connection failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "-1"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/Installer;->writeCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Installer"

    const-string v2, "write command failed? reconnect!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/Installer;->connect()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/Installer;->writeCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "-1"

    move-object v1, v3

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/server/Installer;->readReply()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/Installer;->buf:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/Installer;->buflen:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .local v0, s:Ljava/lang/String;
    move-object v1, v0

    goto :goto_0

    .end local v0           #s:Ljava/lang/String;
    :cond_3
    const-string v1, "-1"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private writeCommand(Ljava/lang/String;)Z
    .locals 9
    .parameter "_cmd"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .local v0, cmd:[B
    array-length v2, v0

    .local v2, len:I
    if-lt v2, v8, :cond_0

    const/16 v3, 0x400

    if-le v2, v3, :cond_1

    :cond_0
    move v3, v7

    :goto_0
    return v3

    :cond_1
    iget-object v3, p0, Lcom/android/server/Installer;->buf:[B

    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v7

    iget-object v3, p0, Lcom/android/server/Installer;->buf:[B

    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v8

    :try_start_0
    iget-object v3, p0, Lcom/android/server/Installer;->mOut:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/android/server/Installer;->buf:[B

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    iget-object v3, p0, Lcom/android/server/Installer;->mOut:Ljava/io/OutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v8

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, ex:Ljava/io/IOException;
    const-string v3, "Installer"

    const-string v4, "write error"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/Installer;->disconnect()V

    move v3, v7

    goto :goto_0
.end method


# virtual methods
.method public clearUserData(Ljava/lang/String;Z)I
    .locals 3
    .parameter "name"
    .parameter "useEncryptedFilesystem"

    .prologue
    const/16 v2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rmuserdata"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1

    :cond_0
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public deleteCacheFiles(Ljava/lang/String;Z)I
    .locals 3
    .parameter "name"
    .parameter "useEncryptedFilesystem"

    .prologue
    const/16 v2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rmcache"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1

    :cond_0
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public dexopt(Ljava/lang/String;IZ)I
    .locals 3
    .parameter "apkPath"
    .parameter "uid"
    .parameter "isPublic"

    .prologue
    const/16 v2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dexopt"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    const-string v1, " 1"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1

    :cond_0
    const-string v1, " 0"

    goto :goto_0
.end method

.method public freeCache(J)I
    .locals 2
    .parameter "freeStorageSize"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "freecache"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, builder:Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getSizeInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageStats;Z)I
    .locals 7
    .parameter "pkgName"
    .parameter "apkPath"
    .parameter "fwdLockApkPath"
    .parameter "pStats"
    .parameter "useEncryptedFilesystem"

    .prologue
    const/4 v6, -0x1

    const/16 v5, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "getsize"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    move-object v4, p3

    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_2

    const/16 v4, 0x31

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/Installer;->transaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, s:Ljava/lang/String;
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, res:[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v4, v2

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3

    :cond_0
    move v4, v6

    :goto_2
    return v4

    .end local v2           #res:[Ljava/lang/String;
    .end local v3           #s:Ljava/lang/String;
    :cond_1
    const-string v4, "!"

    goto :goto_0

    :cond_2
    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .restart local v2       #res:[Ljava/lang/String;
    .restart local v3       #s:Ljava/lang/String;
    :cond_3
    const/4 v4, 0x1

    :try_start_0
    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p4, Landroid/content/pm/PackageStats;->codeSize:J

    const/4 v4, 0x2

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p4, Landroid/content/pm/PackageStats;->dataSize:J

    const/4 v4, 0x3

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p4, Landroid/content/pm/PackageStats;->cacheSize:J

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_2

    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, e:Ljava/lang/NumberFormatException;
    move v4, v6

    goto :goto_2
.end method

.method public install(Ljava/lang/String;ZII)I
    .locals 3
    .parameter "name"
    .parameter "useEncryptedFilesystem"
    .parameter "uid"
    .parameter "gid"

    .prologue
    const/16 v2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "install"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1

    :cond_0
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "dataPath"
    .parameter "nativeLibPath"

    .prologue
    const/4 v2, -0x1

    const-string v3, "Installer"

    if-nez p1, :cond_0

    const-string v1, "Installer"

    const-string v1, "unlinkNativeLibraryDirectory dataPath is null"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :goto_0
    return v1

    :cond_0
    if-nez p2, :cond_1

    const-string v1, "Installer"

    const-string v1, "unlinkNativeLibraryDirectory nativeLibPath is null"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "linklib "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public moveFiles()I
    .locals 1

    .prologue
    const-string v0, "movefiles"

    invoke-direct {p0, v0}, Lcom/android/server/Installer;->execute(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public movedex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "srcPath"
    .parameter "dstPath"

    .prologue
    const/16 v2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "movedex"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public ping()Z
    .locals 1

    .prologue
    const-string v0, "ping"

    invoke-direct {p0, v0}, Lcom/android/server/Installer;->execute(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;Z)I
    .locals 3
    .parameter "name"
    .parameter "useEncryptedFilesystem"

    .prologue
    const/16 v2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1

    :cond_0
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 3
    .parameter "oldname"
    .parameter "newname"
    .parameter "useEncryptedFilesystem"

    .prologue
    const/16 v2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rename"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1

    :cond_0
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public rmdex(Ljava/lang/String;)I
    .locals 2
    .parameter "codePath"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rmdex"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, builder:Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setForwardLockPerm(Ljava/lang/String;I)I
    .locals 3
    .parameter "packagePathSuffix"
    .parameter "gid"

    .prologue
    const/16 v2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "protect"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public unlinkNativeLibraryDirectory(Ljava/lang/String;)I
    .locals 3
    .parameter "dataPath"

    .prologue
    if-nez p1, :cond_0

    const-string v1, "Installer"

    const-string v2, "unlinkNativeLibraryDirectory dataPath is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unlinklib "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method
