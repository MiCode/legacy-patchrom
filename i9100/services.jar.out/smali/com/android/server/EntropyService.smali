.class public Lcom/android/server/EntropyService;
.super Landroid/os/Binder;
.source "EntropyService.java"


# static fields
.field private static final ENTROPY_WHAT:I = 0x1

.field private static final ENTROPY_WRITE_PERIOD:I = 0xa4cb80

#the value of this static final field might be set in the static constructor
.field private static final START_NANOTIME:J = 0x0L

#the value of this static final field might be set in the static constructor
.field private static final START_TIME:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "EntropyService"


# instance fields
.field private final entropyFile:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private final randomDevice:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/EntropyService;->START_TIME:J

    .line 55
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/EntropyService;->START_NANOTIME:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/EntropyService;->getSystemDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/entropy.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/dev/urandom"

    invoke-direct {p0, v0, v1}, Lcom/android/server/EntropyService;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "entropyFile"
    .parameter "randomDevice"

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 63
    new-instance v0, Lcom/android/server/EntropyService$1;

    invoke-direct {v0, p0}, Lcom/android/server/EntropyService$1;-><init>(Lcom/android/server/EntropyService;)V

    iput-object v0, p0, Lcom/android/server/EntropyService;->mHandler:Landroid/os/Handler;

    .line 81
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "randomDevice"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "entropyFile"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    iput-object p2, p0, Lcom/android/server/EntropyService;->randomDevice:Ljava/lang/String;

    .line 85
    iput-object p1, p0, Lcom/android/server/EntropyService;->entropyFile:Ljava/lang/String;

    .line 86
    invoke-direct {p0}, Lcom/android/server/EntropyService;->loadInitialEntropy()V

    .line 87
    invoke-direct {p0}, Lcom/android/server/EntropyService;->addDeviceSpecificEntropy()V

    .line 88
    invoke-direct {p0}, Lcom/android/server/EntropyService;->writeEntropy()V

    .line 89
    invoke-direct {p0}, Lcom/android/server/EntropyService;->scheduleEntropyWriter()V

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/EntropyService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/server/EntropyService;->writeEntropy()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/EntropyService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/server/EntropyService;->scheduleEntropyWriter()V

    return-void
.end method

.method private addDeviceSpecificEntropy()V
    .locals 5

    .prologue
    .line 128
    const/4 v1, 0x0

    .line 130
    .local v1, out:Ljava/io/PrintWriter;
    :try_start_0
    new-instance v2, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/android/server/EntropyService;->randomDevice:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v1           #out:Ljava/io/PrintWriter;
    .local v2, out:Ljava/io/PrintWriter;
    :try_start_1
    const-string v3, "Copyright (C) 2009 The Android Open Source Project"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    const-string v3, "All Your Randomness Are Belong To Us"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    sget-wide v3, Lcom/android/server/EntropyService;->START_TIME:J

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 134
    sget-wide v3, Lcom/android/server/EntropyService;->START_NANOTIME:J

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 135
    const-string v3, "ro.serialno"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    const-string v3, "ro.bootmode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    const-string v3, "ro.baseband"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    const-string v3, "ro.carrier"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    const-string v3, "ro.bootloader"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    const-string v3, "ro.hardware"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    const-string v3, "ro.revision"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 144
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintWriter;->println(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 148
    if-eqz v2, :cond_0

    .line 149
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    :cond_0
    move-object v1, v2

    .line 152
    .end local v2           #out:Ljava/io/PrintWriter;
    .restart local v1       #out:Ljava/io/PrintWriter;
    :cond_1
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 146
    .local v0, e:Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string v3, "EntropyService"

    const-string v4, "Unable to add device specific data to the entropy pool"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    if-eqz v1, :cond_1

    .line 149
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    goto :goto_0

    .line 148
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_2

    .line 149
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 148
    :cond_2
    throw v3

    .end local v1           #out:Ljava/io/PrintWriter;
    .restart local v2       #out:Ljava/io/PrintWriter;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/PrintWriter;
    .restart local v1       #out:Ljava/io/PrintWriter;
    goto :goto_2

    .line 145
    .end local v1           #out:Ljava/io/PrintWriter;
    .restart local v2       #out:Ljava/io/PrintWriter;
    :catch_1
    move-exception v3

    move-object v0, v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/PrintWriter;
    .restart local v1       #out:Ljava/io/PrintWriter;
    goto :goto_1
.end method

.method private static getSystemDir()Ljava/lang/String;
    .locals 3

    .prologue
    .line 155
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 156
    .local v0, dataDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 157
    .local v1, systemDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 158
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private loadInitialEntropy()V
    .locals 3

    .prologue
    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/android/server/EntropyService;->entropyFile:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/RandomBlock;->fromFile(Ljava/lang/String;)Lcom/android/server/RandomBlock;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/EntropyService;->randomDevice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/RandomBlock;->toFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 101
    .local v0, e:Ljava/io/IOException;
    const-string v1, "EntropyService"

    const-string v2, "unable to load initial entropy (first boot?)"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private scheduleEntropyWriter()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 93
    iget-object v0, p0, Lcom/android/server/EntropyService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 94
    iget-object v0, p0, Lcom/android/server/EntropyService;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0xa4cb80

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 95
    return-void
.end method

.method private writeEntropy()V
    .locals 3

    .prologue
    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/android/server/EntropyService;->randomDevice:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/RandomBlock;->fromFile(Ljava/lang/String;)Lcom/android/server/RandomBlock;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/EntropyService;->entropyFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/RandomBlock;->toFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 109
    .local v0, e:Ljava/io/IOException;
    const-string v1, "EntropyService"

    const-string v2, "unable to write entropy"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
