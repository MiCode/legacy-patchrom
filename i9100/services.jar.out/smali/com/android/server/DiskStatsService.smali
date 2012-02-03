.class public Lcom/android/server/DiskStatsService;
.super Landroid/os/Binder;
.source "DiskStatsService.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/server/DiskStatsService;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method private reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 12
    .parameter "path"
    .parameter "name"
    .parameter "pw"

    .prologue
    const-wide/16 v9, 0x0

    .line 87
    :try_start_0
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 88
    .local v5, statfs:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v2, v8

    .line 89
    .local v2, bsize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v0, v8

    .line 90
    .local v0, avail:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockCount()I

    move-result v8

    int-to-long v6, v8

    .line 91
    .local v6, total:J
    cmp-long v8, v2, v9

    if-lez v8, :cond_0

    cmp-long v8, v6, v9

    if-gtz v8, :cond_1

    .line 92
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid stat: bsize="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " avail="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " total="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v0           #avail:J
    .end local v2           #bsize:J
    .end local v5           #statfs:Landroid/os/StatFs;
    .end local v6           #total:J
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 105
    .local v4, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 106
    const-string v8, "-Error: "

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void

    .line 96
    .restart local v0       #avail:J
    .restart local v2       #bsize:J
    .restart local v5       #statfs:Landroid/os/StatFs;
    .restart local v6       #total:J
    :cond_1
    :try_start_1
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 97
    const-string v8, "-Free: "

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 98
    mul-long v8, v0, v2

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    invoke-virtual {p3, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    .line 99
    const-string v8, "K / "

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 100
    mul-long v8, v6, v2

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    invoke-virtual {p3, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    .line 101
    const-string v8, "K total = "

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 102
    const-wide/16 v8, 0x64

    mul-long/2addr v8, v0

    div-long/2addr v8, v6

    invoke-virtual {p3, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    .line 103
    const-string v8, "% free"

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 13
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 48
    const/16 v11, 0x200

    new-array v9, v11, [B

    .line 49
    .local v9, junk:[B
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v11, v9

    if-ge v8, v11, :cond_0

    int-to-byte v11, v8

    aput-byte v11, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 51
    :cond_0
    new-instance v10, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v11

    const-string v12, "system/perftest.tmp"

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    .local v10, tmp:Ljava/io/File;
    const/4 v6, 0x0

    .line 53
    .local v6, fos:Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 55
    .local v5, error:Ljava/io/IOException;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 57
    .local v2, before:J
    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .local v7, fos:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v7, v9}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 62
    if-eqz v7, :cond_1

    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_1
    move-object v6, v7

    .line 65
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :cond_2
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 66
    .local v0, after:J
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 68
    :cond_3
    if-eqz v5, :cond_5

    .line 69
    const-string v11, "Test-Error: "

    invoke-virtual {p2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    :goto_3
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v11

    const-string v12, "Data"

    invoke-direct {p0, v11, v12, p2}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 78
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v11

    const-string v12, "Cache"

    invoke-direct {p0, v11, v12, p2}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 79
    new-instance v11, Ljava/io/File;

    const-string v12, "/system"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v12, "System"

    invoke-direct {p0, v11, v12, p2}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 83
    return-void

    .line 59
    .end local v0           #after:J
    :catch_0
    move-exception v11

    move-object v4, v11

    .line 60
    .local v4, e:Ljava/io/IOException;
    :goto_4
    move-object v5, v4

    .line 62
    if-eqz v6, :cond_2

    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v11

    goto :goto_2

    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v11

    :goto_5
    if-eqz v6, :cond_4

    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_4
    :goto_6
    throw v11

    .line 72
    .restart local v0       #after:J
    :cond_5
    const-string v11, "Latency: "

    invoke-virtual {p2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 73
    sub-long v11, v0, v2

    invoke-virtual {p2, v11, v12}, Ljava/io/PrintWriter;->print(J)V

    .line 74
    const-string v11, "ms [512B Data Write]"

    invoke-virtual {p2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 62
    .end local v0           #after:J
    :catch_2
    move-exception v12

    goto :goto_6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v11

    goto :goto_1

    :catchall_1
    move-exception v11

    move-object v6, v7

    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 59
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v11

    move-object v4, v11

    move-object v6, v7

    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    goto :goto_4
.end method
