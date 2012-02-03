.class public Lcom/android/phone/FileWriteThread;
.super Ljava/lang/Thread;
.source "FileWriteThread.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private fosSleepCheck:Ljava/io/FileOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 32
    const-string v0, "ro.debuggable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/phone/FileWriteThread;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private closeFile()V
    .locals 2

    .prologue
    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/FileWriteThread;->fosSleepCheck:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/android/phone/FileWriteThread;->fosSleepCheck:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 79
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 103
    const-string v0, "FileWriteThread"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method

.method private openFile()V
    .locals 5

    .prologue
    .line 50
    const-string v3, "/sys/devices/platform/sec_key.0/"

    .line 51
    .local v3, strNewFilePath:Ljava/lang/String;
    const-string v2, "disabled_keys"

    .line 53
    .local v2, strNewFileName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    .local v1, fileSleepCheck:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 57
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_0
    :goto_0
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/android/phone/FileWriteThread;->fosSleepCheck:Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    :goto_1
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 66
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 68
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private writeFile(Z)V
    .locals 4
    .parameter "duringCall"

    .prologue
    .line 84
    if-eqz p1, :cond_3

    const-string v2, "1"

    move-object v1, v2

    .line 85
    .local v1, value:Ljava/lang/String;
    :goto_0
    sget-boolean v2, Lcom/android/phone/FileWriteThread;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeFile: value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/FileWriteThread;->log(Ljava/lang/String;)V

    .line 88
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/FileWriteThread;->fosSleepCheck:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_2

    .line 89
    sget-boolean v2, Lcom/android/phone/FileWriteThread;->DBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeFile: data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/FileWriteThread;->log(Ljava/lang/String;)V

    .line 90
    :cond_1
    iget-object v2, p0, Lcom/android/phone/FileWriteThread;->fosSleepCheck:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_2
    :goto_1
    return-void

    .line 84
    .end local v1           #value:Ljava/lang/String;
    :cond_3
    const-string v2, "114,115"

    move-object v1, v2

    goto :goto_0

    .line 92
    .restart local v1       #value:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 93
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/phone/FileWriteThread;->writeSleepCheckingFile()V

    .line 100
    return-void
.end method

.method writeSleepCheckingFile()V
    .locals 4

    .prologue
    .line 38
    const/4 v0, 0x0

    .line 39
    .local v0, duringCall:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    .line 40
    .local v1, state:Lcom/android/internal/telephony/Phone$State;
    invoke-direct {p0}, Lcom/android/phone/FileWriteThread;->openFile()V

    .line 41
    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_0

    .line 42
    const/4 v0, 0x1

    .line 44
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/phone/FileWriteThread;->writeFile(Z)V

    .line 45
    invoke-direct {p0}, Lcom/android/phone/FileWriteThread;->closeFile()V

    .line 46
    sget-boolean v2, Lcom/android/phone/FileWriteThread;->DBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeSleepCheckingFile end : state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/FileWriteThread;->log(Ljava/lang/String;)V

    .line 47
    :cond_1
    return-void
.end method
