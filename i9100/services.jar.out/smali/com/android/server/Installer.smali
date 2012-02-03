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
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/Installer;->buf:[B

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/Installer;->buflen:I

    return-void
.end method

.method private connect()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 41
    iget-object v2, p0, Lcom/android/server/Installer;->mSocket:Landroid/net/LocalSocket;

    if-eqz v2, :cond_0

    move v2, v4

    .line 59
    :goto_0
    return v2

    .line 44
    :cond_0
    const-string v2, "Installer"

    const-string v3, "connecting..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :try_start_0
    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    iput-object v2, p0, Lcom/android/server/Installer;->mSocket:Landroid/net/LocalSocket;

    .line 48
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v2, "installd"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 51
    .local v0, address:Landroid/net/LocalSocketAddress;
    iget-object v2, p0, Lcom/android/server/Installer;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 53
    iget-object v2, p0, Lcom/android/server/Installer;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/Installer;->mIn:Ljava/io/InputStream;

    .line 54
    iget-object v2, p0, Lcom/android/server/Installer;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/Installer;->mOut:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    .line 59
    goto :goto_0

    .line 55
    .end local v0           #address:Landroid/net/LocalSocketAddress;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 56
    .local v1, ex:Ljava/io/IOException;
    invoke-direct {p0}, Lcom/android/server/Installer;->disconnect()V

    .line 57
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private disconnect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    const-string v0, "Installer"

    const-string v1, "disconnecting..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/android/server/Installer;->mSocket:Landroid/net/LocalSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/Installer;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 68
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/Installer;->mIn:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/Installer;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 71
    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/Installer;->mOut:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/Installer;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 73
    :cond_2
    :goto_2
    iput-object v2, p0, Lcom/android/server/Installer;->mSocket:Landroid/net/LocalSocket;

    .line 74
    iput-object v2, p0, Lcom/android/server/Installer;->mIn:Ljava/io/InputStream;

    .line 75
    iput-object v2, p0, Lcom/android/server/Installer;->mOut:Ljava/io/OutputStream;

    .line 76
    return-void

    .line 72
    :catch_0
    move-exception v0

    goto :goto_2

    .line 69
    :catch_1
    move-exception v0

    goto :goto_1

    .line 66
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private execute(Ljava/lang/String;)I
    .locals 3
    .parameter "cmd"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/Installer;->transaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, res:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 165
    :goto_0
    return v2

    .line 164
    :catch_0
    move-exception v0

    .line 165
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

    .line 79
    const/4 v2, 0x0

    .line 80
    .local v2, off:I
    if-gez p2, :cond_1

    move v3, v6

    .line 97
    :goto_0
    return v3

    .line 88
    .local v0, count:I
    :cond_0
    add-int/2addr v2, v0

    .line 81
    .end local v0           #count:I
    :cond_1
    if-eq v2, p2, :cond_2

    .line 83
    :try_start_0
    iget-object v3, p0, Lcom/android/server/Installer;->mIn:Ljava/io/InputStream;

    sub-int v4, p2, v2

    invoke-virtual {v3, p1, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 84
    .restart local v0       #count:I
    if-gtz v0, :cond_0

    .line 85
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

    .line 95
    .end local v0           #count:I
    :cond_2
    :goto_1
    if-ne v2, p2, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    .line 89
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 90
    .local v1, ex:Ljava/io/IOException;
    const-string v3, "Installer"

    const-string v3, "read exception"

    invoke-static {v7, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 96
    .end local v1           #ex:Ljava/io/IOException;
    :cond_3
    invoke-direct {p0}, Lcom/android/server/Installer;->disconnect()V

    move v3, v6

    .line 97
    goto :goto_0
.end method

.method private readReply()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 102
    iput v4, p0, Lcom/android/server/Installer;->buflen:I

    .line 103
    iget-object v1, p0, Lcom/android/server/Installer;->buf:[B

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/server/Installer;->readBytes([BI)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v4

    .line 112
    :goto_0
    return v1

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/android/server/Installer;->buf:[B

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lcom/android/server/Installer;->buf:[B

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int v0, v1, v2

    .line 105
    .local v0, len:I
    if-lt v0, v3, :cond_1

    const/16 v1, 0x400

    if-le v0, v1, :cond_2

    .line 106
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

    .line 107
    invoke-direct {p0}, Lcom/android/server/Installer;->disconnect()V

    move v1, v4

    .line 108
    goto :goto_0

    .line 110
    :cond_2
    iget-object v1, p0, Lcom/android/server/Installer;->buf:[B

    invoke-direct {p0, v1, v0}, Lcom/android/server/Installer;->readBytes([BI)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v4

    goto :goto_0

    .line 111
    :cond_3
    iput v0, p0, Lcom/android/server/Installer;->buflen:I

    move v1, v3

    .line 112
    goto :goto_0
.end method

.method private declared-synchronized transaction(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "cmd"

    .prologue
    const-string v1, "Installer"

    const-string v3, "-1"

    .line 133
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/Installer;->connect()Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    const-string v1, "Installer"

    const-string v2, "connection failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string v1, "-1"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    .line 156
    :goto_0
    monitor-exit p0

    return-object v1

    .line 138
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/Installer;->writeCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 144
    const-string v1, "Installer"

    const-string v2, "write command failed? reconnect!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-direct {p0}, Lcom/android/server/Installer;->connect()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/Installer;->writeCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 146
    :cond_1
    const-string v1, "-1"

    move-object v1, v3

    goto :goto_0

    .line 150
    :cond_2
    invoke-direct {p0}, Lcom/android/server/Installer;->readReply()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 151
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/Installer;->buf:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/Installer;->buflen:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .local v0, s:Ljava/lang/String;
    move-object v1, v0

    .line 153
    goto :goto_0

    .line 156
    .end local v0           #s:Ljava/lang/String;
    :cond_3
    const-string v1, "-1"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    goto :goto_0

    .line 133
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

    .line 116
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 117
    .local v0, cmd:[B
    array-length v2, v0

    .line 118
    .local v2, len:I
    if-lt v2, v8, :cond_0

    const/16 v3, 0x400

    if-le v2, v3, :cond_1

    :cond_0
    move v3, v7

    .line 129
    :goto_0
    return v3

    .line 119
    :cond_1
    iget-object v3, p0, Lcom/android/server/Installer;->buf:[B

    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v7

    .line 120
    iget-object v3, p0, Lcom/android/server/Installer;->buf:[B

    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v8

    .line 122
    :try_start_0
    iget-object v3, p0, Lcom/android/server/Installer;->mOut:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/android/server/Installer;->buf:[B

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 123
    iget-object v3, p0, Lcom/android/server/Installer;->mOut:Ljava/io/OutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v8

    .line 129
    goto :goto_0

    .line 124
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 125
    .local v1, ex:Ljava/io/IOException;
    const-string v3, "Installer"

    const-string v4, "write error"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-direct {p0}, Lcom/android/server/Installer;->disconnect()V

    move v3, v7

    .line 127
    goto :goto_0
.end method


# virtual methods
.method public clearUserData(Ljava/lang/String;Z)I
    .locals 3
    .parameter "name"
    .parameter "useEncryptedFilesystem"

    .prologue
    const/16 v2, 0x20

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rmuserdata"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    if-eqz p2, :cond_0

    .line 259
    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 263
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 261
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

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rmcache"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 245
    if-eqz p2, :cond_0

    .line 246
    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 250
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 248
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

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dexopt"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    if-eqz p3, :cond_0

    const-string v1, " 1"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 192
    :cond_0
    const-string v1, " 0"

    goto :goto_0
.end method

.method public freeCache(J)I
    .locals 2
    .parameter "freeStorageSize"

    .prologue
    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "freecache"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    .local v0, builder:Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 277
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
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

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "getsize"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 303
    if-eqz p3, :cond_1

    move-object v4, p3

    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 305
    if-eqz p5, :cond_2

    .line 306
    const/16 v4, 0x31

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 311
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/Installer;->transaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, s:Ljava/lang/String;
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, res:[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v4, v2

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3

    :cond_0
    move v4, v6

    .line 323
    :goto_2
    return v4

    .line 303
    .end local v2           #res:[Ljava/lang/String;
    .end local v3           #s:Ljava/lang/String;
    :cond_1
    const-string v4, "!"

    goto :goto_0

    .line 308
    :cond_2
    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 318
    .restart local v2       #res:[Ljava/lang/String;
    .restart local v3       #s:Ljava/lang/String;
    :cond_3
    const/4 v4, 0x1

    :try_start_0
    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p4, Landroid/content/pm/PackageStats;->codeSize:J

    .line 319
    const/4 v4, 0x2

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p4, Landroid/content/pm/PackageStats;->dataSize:J

    .line 320
    const/4 v4, 0x3

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p4, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 321
    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_2

    .line 322
    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, e:Ljava/lang/NumberFormatException;
    move v4, v6

    .line 323
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

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "install"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    if-eqz p2, :cond_0

    .line 175
    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 177
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

    .line 332
    if-nez p1, :cond_0

    .line 333
    const-string v1, "Installer"

    const-string v1, "unlinkNativeLibraryDirectory dataPath is null"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 345
    :goto_0
    return v1

    .line 335
    :cond_0
    if-nez p2, :cond_1

    .line 336
    const-string v1, "Installer"

    const-string v1, "unlinkNativeLibraryDirectory nativeLibPath is null"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 337
    goto :goto_0

    .line 340
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "linklib "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 341
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public moveFiles()I
    .locals 1

    .prologue
    .line 328
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

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "movedex"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public ping()Z
    .locals 1

    .prologue
    .line 267
    const-string v0, "ping"

    invoke-direct {p0, v0}, Lcom/android/server/Installer;->execute(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 268
    const/4 v0, 0x0

    .line 270
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

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    if-eqz p2, :cond_0

    .line 218
    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 220
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

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rename"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 232
    if-eqz p3, :cond_0

    .line 233
    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 237
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 235
    :cond_0
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public rmdex(Ljava/lang/String;)I
    .locals 2
    .parameter "codePath"

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rmdex"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    .local v0, builder:Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
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

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "protect"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 288
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 292
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
    .line 349
    if-nez p1, :cond_0

    .line 350
    const-string v1, "Installer"

    const-string v2, "unlinkNativeLibraryDirectory dataPath is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const/4 v1, -0x1

    .line 357
    :goto_0
    return v1

    .line 354
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unlinklib "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 355
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method
