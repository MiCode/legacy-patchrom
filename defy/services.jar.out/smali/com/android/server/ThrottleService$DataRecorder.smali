.class Lcom/android/server/ThrottleService$DataRecorder;
.super Ljava/lang/Object;
.source "ThrottleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThrottleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataRecorder"
.end annotation


# static fields
.field private static final DATA_FILE_VERSION:I = 0x1

.field private static final MAX_SIMS_SUPPORTED:I = 0x3


# instance fields
.field mContext:Landroid/content/Context;

.field mCurrentPeriod:I

.field mImsi:Ljava/lang/String;

.field mParent:Lcom/android/server/ThrottleService;

.field mPeriodCount:I

.field mPeriodEnd:Ljava/util/Calendar;

.field mPeriodRxData:[J

.field mPeriodStart:Ljava/util/Calendar;

.field mPeriodTxData:[J

.field mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/ThrottleService;)V
    .locals 2
    .parameter "context"
    .parameter "parent"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mImsi:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v0

    const/4 v1, 0x6

    :try_start_0
    iput v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    iget v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodRxData:[J

    iget v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodTxData:[J

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodStart:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodEnd:Ljava/util/Calendar;

    invoke-direct {p0}, Lcom/android/server/ThrottleService$DataRecorder;->retrieve()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkAndDeleteLRUDataFile(Ljava/io/File;)V
    .locals 12
    .parameter "dir"

    .prologue
    const/4 v10, 0x3

    const-string v11, "ThrottleService"

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .local v2, files:[Ljava/io/File;
    array-length v6, v2

    if-gt v6, v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v6, "ThrottleService"

    const-string v6, "Too many data files"

    invoke-static {v11, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v5, 0x0

    .local v5, oldest:Ljava/io/File;
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_5

    aget-object v1, v0, v3

    .local v1, f:Ljava/io/File;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    :cond_3
    move-object v5, v1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v1           #f:Ljava/io/File;
    :cond_5
    if-eqz v5, :cond_0

    const-string v6, "ThrottleService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " deleting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v6, v2

    if-gt v6, v10, :cond_2

    goto :goto_0
.end method

.method private checkForSubscriberId()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mImsi:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mImsi:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mImsi:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/ThrottleService$DataRecorder;->retrieve()V

    goto :goto_0
.end method

.method private getDataFile()Ljava/io/File;
    .locals 7

    .prologue
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .local v0, dataDir:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v5, "system/throttle"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v4, throttleDir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    iget-object v5, p0, Lcom/android/server/ThrottleService$DataRecorder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    .local v3, mImsi:Ljava/lang/String;
    if-nez v3, :cond_0

    invoke-direct {p0, v4}, Lcom/android/server/ThrottleService$DataRecorder;->useMRUFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .local v1, dataFile:Ljava/io/File;
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/io/File;->setLastModified(J)Z

    invoke-direct {p0, v4}, Lcom/android/server/ThrottleService$DataRecorder;->checkAndDeleteLRUDataFile(Ljava/io/File;)V

    return-object v1

    .end local v1           #dataFile:Ljava/io/File;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, imsiHash:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v1       #dataFile:Ljava/io/File;
    goto :goto_0
.end method

.method private record()V
    .locals 8

    .prologue
    const-string v7, ":"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v5, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    if-ge v2, v5, :cond_0

    iget-object v5, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodRxData:[J

    aget-wide v5, v5, v2

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget v5, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    if-ge v2, v5, :cond_1

    iget-object v5, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodTxData:[J

    aget-wide v5, v5, v2

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget v5, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodStart:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodEnd:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    .local v3, out:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {p0}, Lcom/android/server/ThrottleService$DataRecorder;->getDataFile()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v6, 0x100

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #out:Ljava/io/BufferedWriter;
    .local v4, out:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v4, :cond_2

    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :goto_2
    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :cond_3
    :goto_3
    return-void

    :catch_0
    move-exception v5

    move-object v1, v5

    .local v1, e:Ljava/io/IOException;
    :goto_4
    :try_start_3
    const-string v5, "ThrottleService"

    const-string v6, "Error writing data file"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v5

    goto :goto_3

    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_5
    if-eqz v3, :cond_4

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_4
    :goto_6
    throw v5

    :catch_2
    move-exception v6

    goto :goto_6

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catch_3
    move-exception v5

    goto :goto_2

    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_5

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catch_4
    move-exception v5

    move-object v1, v5

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_4
.end method

.method private retrieve()V
    .locals 14

    .prologue
    const-string v12, "ThrottleService"

    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/server/ThrottleService$DataRecorder;->zeroData(I)V

    invoke-direct {p0}, Lcom/android/server/ThrottleService$DataRecorder;->getDataFile()Ljava/io/File;

    move-result-object v3

    .local v3, f:Ljava/io/File;
    const/4 v8, 0x0

    .local v8, s:Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v10, v10

    new-array v0, v10, [B

    .local v0, buffer:[B
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8           #s:Ljava/io/FileInputStream;
    .local v9, s:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v9, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v9, :cond_0

    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .local v1, data:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_4

    :cond_1
    const-string v10, "ThrottleService"

    const-string v10, "data file empty"

    invoke-static {v12, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v9

    .end local v0           #buffer:[B
    .end local v1           #data:Ljava/lang/String;
    .end local v9           #s:Ljava/io/FileInputStream;
    .restart local v8       #s:Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v10

    move-object v2, v10

    .local v2, e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v10, "ThrottleService"

    const-string v11, "Error reading data file"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v8, :cond_2

    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v10

    goto :goto_1

    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_3
    if-eqz v8, :cond_3

    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_3
    :goto_4
    throw v10

    .end local v8           #s:Ljava/io/FileInputStream;
    .restart local v0       #buffer:[B
    .restart local v1       #data:Ljava/lang/String;
    .restart local v9       #s:Ljava/io/FileInputStream;
    :cond_4
    iget-object v10, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v10

    :try_start_6
    const-string v11, ":"

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .local v5, parsed:[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, parsedUsed:I
    array-length v11, v5

    const/4 v12, 0x6

    if-ge v11, v12, :cond_5

    const-string v11, "ThrottleService"

    const-string v12, "reading data file with insufficient length - ignoring"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v10

    move-object v8, v9

    .end local v9           #s:Ljava/io/FileInputStream;
    .restart local v8       #s:Ljava/io/FileInputStream;
    goto :goto_1

    .end local v8           #s:Ljava/io/FileInputStream;
    .restart local v9       #s:Ljava/io/FileInputStream;
    :cond_5
    add-int/lit8 v7, v6, 0x1

    .end local v6           #parsedUsed:I
    .local v7, parsedUsed:I
    aget-object v11, v5, v6

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_6

    const-string v11, "ThrottleService"

    const-string v12, "reading data file with bad version - ignoring"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v10

    move-object v8, v9

    .end local v9           #s:Ljava/io/FileInputStream;
    .restart local v8       #s:Ljava/io/FileInputStream;
    goto :goto_1

    .end local v8           #s:Ljava/io/FileInputStream;
    .restart local v9       #s:Ljava/io/FileInputStream;
    :cond_6
    add-int/lit8 v6, v7, 0x1

    .end local v7           #parsedUsed:I
    .restart local v6       #parsedUsed:I
    aget-object v11, v5, v7

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    array-length v11, v5

    iget v12, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    mul-int/lit8 v12, v12, 0x2

    add-int/lit8 v12, v12, 0x5

    if-eq v11, v12, :cond_7

    const-string v11, "ThrottleService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "reading data file with bad length ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " != "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    mul-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ") - ignoring"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v10

    move-object v8, v9

    .end local v9           #s:Ljava/io/FileInputStream;
    .restart local v8       #s:Ljava/io/FileInputStream;
    goto/16 :goto_1

    .end local v8           #s:Ljava/io/FileInputStream;
    .restart local v9       #s:Ljava/io/FileInputStream;
    :cond_7
    iget v11, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    new-array v11, v11, [J

    iput-object v11, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodRxData:[J

    const/4 v4, 0x0

    .local v4, i:I
    move v7, v6

    .end local v6           #parsedUsed:I
    .restart local v7       #parsedUsed:I
    :goto_5
    iget v11, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    if-ge v4, v11, :cond_8

    iget-object v11, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodRxData:[J

    add-int/lit8 v6, v7, 0x1

    .end local v7           #parsedUsed:I
    .restart local v6       #parsedUsed:I
    aget-object v12, v5, v7

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    aput-wide v12, v11, v4

    add-int/lit8 v4, v4, 0x1

    move v7, v6

    .end local v6           #parsedUsed:I
    .restart local v7       #parsedUsed:I
    goto :goto_5

    :cond_8
    iget v11, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    new-array v11, v11, [J

    iput-object v11, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodTxData:[J

    const/4 v4, 0x0

    :goto_6
    iget v11, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    if-ge v4, v11, :cond_9

    iget-object v11, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodTxData:[J

    add-int/lit8 v6, v7, 0x1

    .end local v7           #parsedUsed:I
    .restart local v6       #parsedUsed:I
    aget-object v12, v5, v7

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    aput-wide v12, v11, v4

    add-int/lit8 v4, v4, 0x1

    move v7, v6

    .end local v6           #parsedUsed:I
    .restart local v7       #parsedUsed:I
    goto :goto_6

    :cond_9
    add-int/lit8 v6, v7, 0x1

    .end local v7           #parsedUsed:I
    .restart local v6       #parsedUsed:I
    aget-object v11, v5, v7

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    new-instance v11, Ljava/util/GregorianCalendar;

    invoke-direct {v11}, Ljava/util/GregorianCalendar;-><init>()V

    iput-object v11, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodStart:Ljava/util/Calendar;

    iget-object v11, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodStart:Ljava/util/Calendar;

    add-int/lit8 v7, v6, 0x1

    .end local v6           #parsedUsed:I
    .restart local v7       #parsedUsed:I
    aget-object v12, v5, v6

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance v11, Ljava/util/GregorianCalendar;

    invoke-direct {v11}, Ljava/util/GregorianCalendar;-><init>()V

    iput-object v11, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodEnd:Ljava/util/Calendar;

    iget-object v11, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodEnd:Ljava/util/Calendar;

    add-int/lit8 v6, v7, 0x1

    .end local v7           #parsedUsed:I
    .restart local v6       #parsedUsed:I
    aget-object v12, v5, v7

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    monitor-exit v10

    move-object v8, v9

    .end local v9           #s:Ljava/io/FileInputStream;
    .restart local v8       #s:Ljava/io/FileInputStream;
    goto/16 :goto_1

    .end local v4           #i:I
    .end local v5           #parsed:[Ljava/lang/String;
    .end local v6           #parsedUsed:I
    .end local v8           #s:Ljava/io/FileInputStream;
    .restart local v9       #s:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v11

    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v11

    .end local v0           #buffer:[B
    .end local v1           #data:Ljava/lang/String;
    .end local v9           #s:Ljava/io/FileInputStream;
    .restart local v8       #s:Ljava/io/FileInputStream;
    :catch_2
    move-exception v11

    goto/16 :goto_4

    .end local v8           #s:Ljava/io/FileInputStream;
    .restart local v0       #buffer:[B
    .restart local v9       #s:Ljava/io/FileInputStream;
    :catch_3
    move-exception v10

    goto/16 :goto_0

    :catchall_2
    move-exception v10

    move-object v8, v9

    .end local v9           #s:Ljava/io/FileInputStream;
    .restart local v8       #s:Ljava/io/FileInputStream;
    goto/16 :goto_3

    .end local v8           #s:Ljava/io/FileInputStream;
    .restart local v9       #s:Ljava/io/FileInputStream;
    :catch_4
    move-exception v10

    move-object v2, v10

    move-object v8, v9

    .end local v9           #s:Ljava/io/FileInputStream;
    .restart local v8       #s:Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method private setPeriodEnd(Ljava/util/Calendar;)V
    .locals 2
    .parameter "end"

    .prologue
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodEnd:Ljava/util/Calendar;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setPeriodStart(Ljava/util/Calendar;)V
    .locals 2
    .parameter "start"

    .prologue
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodStart:Ljava/util/Calendar;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private useMRUFile(Ljava/io/File;)Ljava/io/File;
    .locals 10
    .parameter "dir"

    .prologue
    const/4 v5, 0x0

    .local v5, newest:Ljava/io/File;
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .local v2, files:[Ljava/io/File;
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .local v1, f:Ljava/io/File;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    :cond_0
    move-object v5, v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1           #f:Ljava/io/File;
    :cond_2
    if-nez v5, :cond_3

    new-instance v5, Ljava/io/File;

    .end local v5           #newest:Ljava/io/File;
    const-string v6, "temp"

    invoke-direct {v5, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v5       #newest:Ljava/io/File;
    :cond_3
    return-object v5
.end method

.method private zeroData(I)V
    .locals 5
    .parameter "field"

    .prologue
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v1

    const/4 v0, 0x0

    .local v0, period:I
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodRxData:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v0

    iget-object v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodTxData:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method addData(JJ)V
    .locals 5
    .parameter "bytesRead"
    .parameter "bytesWritten"

    .prologue
    invoke-direct {p0}, Lcom/android/server/ThrottleService$DataRecorder;->checkForSubscriberId()V

    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodRxData:[J

    iget v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    aget-wide v3, v1, v2

    add-long/2addr v3, p1

    aput-wide v3, v1, v2

    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodTxData:[J

    iget v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    aget-wide v3, v1, v2

    add-long/2addr v3, p3

    aput-wide v3, v1, v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/ThrottleService$DataRecorder;->record()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getPeriodCount()I
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPeriodEnd()J
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodEnd:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getPeriodRx(I)J
    .locals 3
    .parameter "which"

    .prologue
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    if-le p1, v1, :cond_0

    const-wide/16 v1, 0x0

    monitor-exit v0

    move-wide v0, v1

    :goto_0
    return-wide v0

    :cond_0
    iget v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    sub-int p1, v1, p1

    if-gez p1, :cond_1

    iget v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    add-int/2addr p1, v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodRxData:[J

    aget-wide v1, v1, p1

    monitor-exit v0

    move-wide v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPeriodStart()J
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodStart:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getPeriodTx(I)J
    .locals 3
    .parameter "which"

    .prologue
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    if-le p1, v1, :cond_0

    const-wide/16 v1, 0x0

    monitor-exit v0

    move-wide v0, v1

    :goto_0
    return-wide v0

    :cond_0
    iget v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    sub-int p1, v1, p1

    if-gez p1, :cond_1

    iget v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    add-int/2addr p1, v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodTxData:[J

    aget-wide v1, v1, p1

    monitor-exit v0

    move-wide v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setNextPeriod(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 6
    .parameter "start"
    .parameter "end"

    .prologue
    invoke-direct {p0}, Lcom/android/server/ThrottleService$DataRecorder;->checkForSubscriberId()V

    const/4 v0, 0x1

    .local v0, startNewPeriod:Z
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodStart:Ljava/util/Calendar;

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodEnd:Ljava/util/Calendar;

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/ThrottleService$DataRecorder;->setPeriodStart(Ljava/util/Calendar;)V

    invoke-direct {p0, p2}, Lcom/android/server/ThrottleService$DataRecorder;->setPeriodEnd(Ljava/util/Calendar;)V

    invoke-direct {p0}, Lcom/android/server/ThrottleService$DataRecorder;->record()V

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    iget v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    iget v3, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    if-lt v2, v3, :cond_1

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    :cond_1
    iget-object v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodRxData:[J

    iget v3, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    iget-object v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodTxData:[J

    iget v3, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
