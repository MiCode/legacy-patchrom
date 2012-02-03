.class public Lcom/android/settings/SettingsIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsIntentReceiver.java"


# instance fields
.field private USB_PATH:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mVibrator:Landroid/os/Vibrator;

.field private final modem:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 52
    const-string v0, "/sys/class/sec/switch/usb_sel"

    iput-object v0, p0, Lcom/android/settings/SettingsIntentReceiver;->USB_PATH:Ljava/lang/String;

    .line 53
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/SettingsIntentReceiver;->modem:[B

    return-void

    :array_0
    .array-data 0x1
        0x4dt
        0x4ft
        0x44t
        0x45t
        0x4dt
        0x0t
    .end array-data
.end method

.method private makeDMfile()V
    .locals 10

    .prologue
    const-string v9, "writedatatonv - finally"

    const-string v5, "writedatatonv - call raf.close()"

    const-string v8, "SettingsIntentReceiver"

    .line 295
    const/4 v3, 0x0

    .line 298
    .local v3, raf:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/system/samsungaccount.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, dmFileName:Ljava/lang/String;
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dmFileName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, v0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 306
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .local v4, raf:Ljava/io/RandomAccessFile;
    const-string v5, "SettingsIntentReceiver"

    const-string v5, "writedatatonv - finally"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    if-eqz v4, :cond_2

    .line 309
    :try_start_1
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v4

    .line 316
    .end local v0           #dmFileName:Ljava/lang/String;
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :cond_0
    :goto_0
    return-void

    .line 311
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v0       #dmFileName:Ljava/lang/String;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 312
    .local v2, ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 313
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 301
    .end local v0           #dmFileName:Ljava/lang/String;
    .end local v2           #ex1:Ljava/io/IOException;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 302
    .local v1, ex:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - Exception in steam write"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 306
    const-string v5, "SettingsIntentReceiver"

    const-string v5, "writedatatonv - finally"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    if-eqz v3, :cond_0

    .line 309
    :try_start_3
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 311
    :catch_2
    move-exception v5

    move-object v2, v5

    .line 312
    .restart local v2       #ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 303
    .end local v1           #ex:Ljava/io/FileNotFoundException;
    .end local v2           #ex1:Ljava/io/IOException;
    :catch_3
    move-exception v5

    move-object v1, v5

    .line 304
    .local v1, ex:Ljava/io/IOException;
    :try_start_4
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - IOException in steam write"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 306
    const-string v5, "SettingsIntentReceiver"

    const-string v5, "writedatatonv - finally"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    if-eqz v3, :cond_0

    .line 309
    :try_start_5
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 311
    :catch_4
    move-exception v5

    move-object v2, v5

    .line 312
    .restart local v2       #ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 306
    .end local v1           #ex:Ljava/io/IOException;
    .end local v2           #ex1:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    const-string v6, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - finally"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    if-eqz v3, :cond_1

    .line 309
    :try_start_6
    const-string v6, "SettingsIntentReceiver"

    const-string v7, "writedatatonv - call raf.close()"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 313
    :cond_1
    :goto_1
    throw v5

    .line 311
    :catch_5
    move-exception v6

    move-object v2, v6

    .line 312
    .restart local v2       #ex1:Ljava/io/IOException;
    const-string v6, "SettingsIntentReceiver"

    invoke-static {v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v2           #ex1:Ljava/io/IOException;
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v0       #dmFileName:Ljava/lang/String;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :cond_2
    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_0
.end method

.method private writeMTData(Ljava/lang/String;)V
    .locals 10
    .parameter "mtData"

    .prologue
    const-string v9, "writedatatonv - finally"

    const-string v5, "writedatatonv - call raf.close()"

    const-string v8, "SettingsIntentReceiver"

    .line 319
    const/4 v3, 0x0

    .line 322
    .local v3, raf:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/system/mobiletracker.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, mtFileName:Ljava/lang/String;
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mtFileName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 325
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .local v4, raf:Ljava/io/RandomAccessFile;
    :try_start_1
    const-string v5, "UTF-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 333
    const-string v5, "SettingsIntentReceiver"

    const-string v5, "writedatatonv - finally"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    if-eqz v4, :cond_2

    .line 336
    :try_start_2
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 343
    .end local v2           #mtFileName:Ljava/lang/String;
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :cond_0
    :goto_0
    return-void

    .line 338
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v2       #mtFileName:Ljava/lang/String;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 339
    .local v1, ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 340
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 326
    .end local v1           #ex1:Ljava/io/IOException;
    .end local v2           #mtFileName:Ljava/lang/String;
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 327
    .local v0, ex:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - Exception in steam write"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 333
    const-string v5, "SettingsIntentReceiver"

    const-string v5, "writedatatonv - finally"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    if-eqz v3, :cond_0

    .line 336
    :try_start_4
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 338
    :catch_2
    move-exception v5

    move-object v1, v5

    .line 339
    .restart local v1       #ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 328
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    .end local v1           #ex1:Ljava/io/IOException;
    :catch_3
    move-exception v5

    move-object v0, v5

    .line 329
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    :goto_2
    :try_start_5
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - UnsupportedEncodingException in steam write"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 333
    const-string v5, "SettingsIntentReceiver"

    const-string v5, "writedatatonv - finally"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    if-eqz v3, :cond_0

    .line 336
    :try_start_6
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 338
    :catch_4
    move-exception v5

    move-object v1, v5

    .line 339
    .restart local v1       #ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 330
    .end local v0           #ex:Ljava/io/UnsupportedEncodingException;
    .end local v1           #ex1:Ljava/io/IOException;
    :catch_5
    move-exception v5

    move-object v0, v5

    .line 331
    .local v0, ex:Ljava/io/IOException;
    :goto_3
    :try_start_7
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - IOException in steam write"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 333
    const-string v5, "SettingsIntentReceiver"

    const-string v5, "writedatatonv - finally"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    if-eqz v3, :cond_0

    .line 336
    :try_start_8
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_0

    .line 338
    :catch_6
    move-exception v5

    move-object v1, v5

    .line 339
    .restart local v1       #ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 333
    .end local v0           #ex:Ljava/io/IOException;
    .end local v1           #ex1:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_4
    const-string v6, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - finally"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    if-eqz v3, :cond_1

    .line 336
    :try_start_9
    const-string v6, "SettingsIntentReceiver"

    const-string v7, "writedatatonv - call raf.close()"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 340
    :cond_1
    :goto_5
    throw v5

    .line 338
    :catch_7
    move-exception v6

    move-object v1, v6

    .line 339
    .restart local v1       #ex1:Ljava/io/IOException;
    const-string v6, "SettingsIntentReceiver"

    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 333
    .end local v1           #ex1:Ljava/io/IOException;
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v2       #mtFileName:Ljava/lang/String;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 330
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v5

    move-object v0, v5

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 328
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_9
    move-exception v5

    move-object v0, v5

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_2

    .line 326
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_a
    move-exception v5

    move-object v0, v5

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_1

    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :cond_2
    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_0
.end method


# virtual methods
.method public GetMTStatus(Ljava/lang/String;)Z
    .locals 7
    .parameter "mtData"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 365
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v3, ";"

    invoke-direct {v1, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    .local v1, str:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 367
    .local v2, tokens:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 368
    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 369
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 370
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 373
    :cond_0
    const/4 v3, 0x2

    if-ge v0, v3, :cond_1

    move v3, v5

    .line 379
    :goto_1
    return v3

    .line 376
    :cond_1
    aget-object v3, v2, v6

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    move v3, v6

    .line 377
    goto :goto_1

    :cond_2
    move v3, v5

    .line 379
    goto :goto_1
.end method

.method public GetPhPWD(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "mtData"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 346
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v3, ";"

    invoke-direct {v1, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    .local v1, str:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 348
    .local v2, tokens:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 349
    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 350
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 351
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 354
    :cond_0
    const/4 v3, 0x1

    if-ge v0, v3, :cond_1

    move-object v3, v6

    .line 360
    :goto_1
    return-object v3

    .line 357
    :cond_1
    aget-object v3, v2, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v5, :cond_2

    aget-object v3, v2, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v5, :cond_3

    :cond_2
    move-object v3, v6

    .line 358
    goto :goto_1

    .line 360
    :cond_3
    aget-object v3, v2, v4

    goto :goto_1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 66
    const-string v21, "audio"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsIntentReceiver;->mAudioManager:Landroid/media/AudioManager;

    .line 67
    new-instance v21, Landroid/os/Vibrator;

    invoke-direct/range {v21 .. v21}, Landroid/os/Vibrator;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsIntentReceiver;->mVibrator:Landroid/os/Vibrator;

    .line 69
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    const-string v22, "com.samsung.wipe.MTDATA"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 70
    const-string v21, "SettingsIntentReceiver"

    const-string v22, "onReceive() : com.samsung.wipe.MTDATA"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 73
    .local v6, extras:Landroid/os/Bundle;
    const-string v21, "MTDATA"

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 74
    .local v19, temp:Ljava/lang/String;
    const-string v21, "SettingsIntentReceiver"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "extras.getString(MTDATA) : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->writeMTData(Ljava/lang/String;)V

    .line 77
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->makeDMfile()V

    .line 80
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "mt_pwd"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->GetPhPWD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 81
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->GetMTStatus(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 82
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "mt_state"

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 287
    .end local v6           #extras:Landroid/os/Bundle;
    .end local v19           #temp:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    const-string v22, "android.intent.action.REGISTRATION_COMPLETED"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 288
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "remote_control"

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 289
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "samsung_signin"

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 292
    :cond_1
    return-void

    .line 84
    .restart local v6       #extras:Landroid/os/Bundle;
    .restart local v19       #temp:Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "mt_state"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 86
    .end local v6           #extras:Landroid/os/Bundle;
    .end local v19           #temp:Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    const-string v22, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 87
    const-string v21, "SettingsIntentReceiver"

    const-string v22, "onReceive() : RINGER_MODE_CHANGED_ACTION"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 89
    .restart local v6       #extras:Landroid/os/Bundle;
    const/16 v16, 0x0

    .line 91
    .local v16, ringer_mode:I
    if-eqz v6, :cond_4

    .line 92
    const-string v21, "android.media.EXTRA_RINGER_MODE"

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 93
    const-string v21, "SettingsIntentReceiver"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Extras (ringer mode) : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_1
    packed-switch v16, :pswitch_data_0

    goto :goto_0

    .line 101
    :pswitch_0
    const-string v21, "SettingsIntentReceiver"

    const-string v22, "Ringer mode : silent & set driving mode off"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "driving_mode_on"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 95
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v16

    .line 96
    const-string v21, "SettingsIntentReceiver"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "No extras (ringer mode) : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 105
    :pswitch_1
    const-string v21, "SettingsIntentReceiver"

    const-string v22, "Ringer mode : vibrate"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mVibrator:Landroid/os/Vibrator;

    move-object/from16 v21, v0

    const/16 v22, 0xb

    invoke-virtual/range {v21 .. v22}, Landroid/os/Vibrator;->vibrateCall(I)V

    goto/16 :goto_0

    .line 112
    :pswitch_2
    const-string v21, "SettingsIntentReceiver"

    const-string v22, "Ringer mode : normal"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 117
    .end local v6           #extras:Landroid/os/Bundle;
    .end local v16           #ringer_mode:I
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    const-string v22, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 118
    const-string v21, "SettingsIntentReceiver"

    const-string v22, "Received intent : android.intent.action.BOOT_COMPLETED"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "vibrate_in_silent"

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    const/16 v21, 0x1

    move/from16 v20, v21

    .line 120
    .local v20, vibeInSilent:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v4

    .line 122
    .local v4, callsVibrateSetting:I
    if-eqz v20, :cond_d

    .line 123
    if-nez v4, :cond_6

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x2

    invoke-virtual/range {v21 .. v23}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 133
    :cond_6
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 134
    .local v15, resolver:Landroid/content/ContentResolver;
    const-string v21, "power_saving_mode"

    const/16 v22, 0x0

    move-object v0, v15

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 135
    .local v10, mPowerSavingMode:I
    if-eqz v10, :cond_e

    const/16 v21, 0x1

    :goto_4
    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    invoke-static/range {v21 .. v21}, Lcom/sec/android/hardware/SecHardwareInterface;->setAmoledACL(Z)V

    .line 136
    const-string v21, "SettingsIntentReceiver"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "com.sec.android.app.SecFeature.POWER_SAVING_MODE : true, SecHardwareInterface.setAmoledACL("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string v21, "GT-I9103"

    const-string v22, "GT-I9100"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 142
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "screen_mode_setting"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 146
    :cond_7
    const-string v21, "GT-I9100G"

    const-string v22, "GT-I9100"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_8

    .line 147
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "screen_mode_setting"

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    invoke-static/range {v21 .. v21}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)V

    .line 153
    :cond_8
    const-string v21, "SettingsIntentReceiver"

    const-string v22, "<Boot Complete> in Settings"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "screen_off_timeout"

    const/16 v23, 0x7530

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 156
    .local v12, oldScreenTimOut:I
    const-string v21, "SettingsIntentReceiver"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "oldScreenTimeout: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const v21, 0x927c0

    move v0, v12

    move/from16 v1, v21

    if-gt v0, v1, :cond_9

    if-gez v12, :cond_a

    .line 158
    :cond_9
    const-string v21, "SettingsIntentReceiver"

    const-string v22, "Set timeout to 10mins forcely"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "screen_off_timeout"

    const v23, 0x927c0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 163
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "stay_on_while_plugged_in"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 164
    .local v13, oldStayAway:I
    const-string v21, "SettingsIntentReceiver"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "oldStayAway: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    if-eqz v13, :cond_b

    .line 166
    const-string v21, "SettingsIntentReceiver"

    const-string v22, "Set StayAway off"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "stay_on_while_plugged_in"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 172
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "usb_setting_mode"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 173
    const-string v21, "persist.service.usb.setting"

    const-string v22, "0"

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "usb_setting_mode"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 119
    .end local v4           #callsVibrateSetting:I
    .end local v10           #mPowerSavingMode:I
    .end local v12           #oldScreenTimOut:I
    .end local v13           #oldStayAway:I
    .end local v15           #resolver:Landroid/content/ContentResolver;
    .end local v20           #vibeInSilent:Z
    :cond_c
    const/16 v21, 0x0

    move/from16 v20, v21

    goto/16 :goto_2

    .line 127
    .restart local v4       #callsVibrateSetting:I
    .restart local v20       #vibeInSilent:Z
    :cond_d
    const/16 v21, 0x2

    move v0, v4

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    goto/16 :goto_3

    .line 135
    .restart local v10       #mPowerSavingMode:I
    .restart local v15       #resolver:Landroid/content/ContentResolver;
    :cond_e
    const/16 v21, 0x0

    goto/16 :goto_4

    .line 195
    .end local v4           #callsVibrateSetting:I
    .end local v10           #mPowerSavingMode:I
    .end local v15           #resolver:Landroid/content/ContentResolver;
    .end local v20           #vibeInSilent:Z
    :cond_f
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    const-string v22, "android.intent.action.REGISTRATION_COMPLETED"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_11

    .line 196
    const-string v21, "MT_Setting_Pref"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 197
    .local v5, ed:Landroid/content/SharedPreferences$Editor;
    const-string v21, "MT_OPS_Signed_in"

    const/16 v22, 0x1

    move-object v0, v5

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 198
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 199
    new-instance v7, Lcom/android/internal/util/NVStore;

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/util/NVStore;-><init>(Landroid/content/Context;)V

    .line 200
    .local v7, filenv:Lcom/android/internal/util/NVStore;
    invoke-virtual {v7}, Lcom/android/internal/util/NVStore;->IsPhLockeEnabled()Z

    move-result v21

    if-eqz v21, :cond_10

    const-string v21, "1"

    move-object/from16 v14, v21

    .line 202
    .local v14, phlock:Ljava/lang/String;
    :goto_5
    invoke-virtual {v7}, Lcom/android/internal/util/NVStore;->GetPhPWD()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_0

    .line 203
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/android/internal/util/NVStore;->GetPhPWD()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ";"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "1"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ";"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v7}, Lcom/android/internal/util/NVStore;->GetSenderName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ";"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v7}, Lcom/android/internal/util/NVStore;->GetRec1()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ";"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v7}, Lcom/android/internal/util/NVStore;->GetRec2()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ";"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v7}, Lcom/android/internal/util/NVStore;->GetRec3()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ";"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v7}, Lcom/android/internal/util/NVStore;->GetRec4()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ";"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v7}, Lcom/android/internal/util/NVStore;->GetRec5()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ";"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v7}, Lcom/android/internal/util/NVStore;->GetSmsMsg()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ";"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v7}, Lcom/android/internal/util/NVStore;->GetStoredIMSI()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ";"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ";"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 209
    .local v18, str:Ljava/lang/String;
    sget-object v21, Lcom/android/internal/util/NVStore$datatype;->All:Lcom/android/internal/util/NVStore$datatype;

    move-object v0, v7

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/NVStore;->writedata(Ljava/lang/String;Lcom/android/internal/util/NVStore$datatype;)V

    goto/16 :goto_0

    .line 200
    .end local v14           #phlock:Ljava/lang/String;
    .end local v18           #str:Ljava/lang/String;
    :cond_10
    const-string v21, "0"

    move-object/from16 v14, v21

    goto/16 :goto_5

    .line 212
    .end local v5           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v7           #filenv:Lcom/android/internal/util/NVStore;
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    const-string v22, "android.intent.action.REGISTRATION_CANCELED"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_12

    .line 213
    const-string v21, "MT_Setting_Pref"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 214
    .restart local v5       #ed:Landroid/content/SharedPreferences$Editor;
    const-string v21, "MT_OPS_Signed_in"

    const/16 v22, 0x0

    move-object v0, v5

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 215
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 216
    .end local v5           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_12
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    const-string v22, "android.intent.action.DOCK_EVENT"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_16

    .line 217
    const-string v21, "android.intent.extra.DOCK_STATE"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 219
    .local v17, state:I
    const-string v21, "SettingsIntentReceiver"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received intent : android.intent.action.DOCK_EVENT with State:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "cradle_enable"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 225
    .local v8, mCradleEnabled:I
    if-nez v17, :cond_14

    .line 228
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "cradle_connect"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 229
    if-eqz v8, :cond_13

    .line 231
    const-string v21, "SettingsIntentReceiver"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Cradle is enabled:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 233
    .local v11, mSendIntent:Landroid/content/Intent;
    const-string v21, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    move-object v0, v11

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const/4 v3, 0x0

    .line 235
    .local v3, PhoneSpeakerState:I
    const-string v21, "state"

    move-object v0, v11

    move-object/from16 v1, v21

    move v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 236
    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 237
    const-string v21, "SettingsIntentReceiver"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Sound state changed to Phone:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 241
    .end local v3           #PhoneSpeakerState:I
    .end local v11           #mSendIntent:Landroid/content/Intent;
    :cond_13
    const-string v21, "SettingsIntentReceiver"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Cradle is disabled:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string v21, "SettingsIntentReceiver"

    const-string v22, "Sound state is Phone:"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 250
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "cradle_connect"

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 251
    if-eqz v8, :cond_15

    .line 253
    const-string v21, "SettingsIntentReceiver"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Cradle is enabled:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 255
    .restart local v11       #mSendIntent:Landroid/content/Intent;
    const-string v21, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    move-object v0, v11

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    const/4 v3, 0x1

    .line 257
    .restart local v3       #PhoneSpeakerState:I
    const-string v21, "state"

    move-object v0, v11

    move-object/from16 v1, v21

    move v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 258
    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 259
    const-string v21, "SettingsIntentReceiver"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Sound state changed to Line out:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 263
    .end local v3           #PhoneSpeakerState:I
    .end local v11           #mSendIntent:Landroid/content/Intent;
    :cond_15
    const-string v21, "SettingsIntentReceiver"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Cradle is disabled:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const-string v21, "SettingsIntentReceiver"

    const-string v22, "Sound state is Phone:"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 270
    .end local v8           #mCradleEnabled:I
    .end local v17           #state:I
    :cond_16
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    const-string v22, "shopdemo_on"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_17

    .line 271
    const-string v21, "SettingsIntentReceiver"

    const-string v22, " +++++ displayForshop_onReceive  shopdemo_on++++++++++++++"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "shopdemo"

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 273
    :cond_17
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    const-string v22, "shopdemo_off"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_18

    .line 274
    const-string v21, "SettingsIntentReceiver"

    const-string v22, " +++++ displayForshop_onReceive  shopdemo_off++++++++++++++"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "shopdemo"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 278
    :cond_18
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    const-string v22, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 279
    const-string v21, "power"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    .line 280
    .local v9, mPowerManager:Landroid/os/PowerManager;
    invoke-virtual {v9}, Landroid/os/PowerManager;->getPlugType()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "usb_setting_mode"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 282
    const-string v21, "persist.service.usb.setting"

    const-string v22, "0"

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "usb_setting_mode"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
