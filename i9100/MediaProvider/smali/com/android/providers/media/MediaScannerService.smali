.class public Lcom/android/providers/media/MediaScannerService;
.super Landroid/app/Service;
.source "MediaScannerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/media/MediaScannerService$ServiceHandler;
    }
.end annotation


# instance fields
.field private final mBinder:Landroid/media/IMediaScannerService$Stub;

.field private volatile mServiceHandler:Lcom/android/providers/media/MediaScannerService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 281
    new-instance v0, Lcom/android/providers/media/MediaScannerService$1;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MediaScannerService$1;-><init>(Lcom/android/providers/media/MediaScannerService;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaScannerService;->mBinder:Landroid/media/IMediaScannerService$Stub;

    .line 52
    return-void
.end method

.method static synthetic access$100(Lcom/android/providers/media/MediaScannerService;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/providers/media/MediaScannerService;->scanFile(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/providers/media/MediaScannerService;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/providers/media/MediaScannerService;->scan([Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createMediaScanner()Landroid/media/MediaScanner;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Landroid/media/MediaScanner;

    invoke-direct {v0, p0}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V

    .line 84
    .local v0, scanner:Landroid/media/MediaScanner;
    const-string v1, "zh_CN"

    invoke-virtual {v0, v1}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    .line 104
    return-object v0
.end method

.method private openDatabase(Ljava/lang/String;)V
    .locals 4
    .parameter "volumeName"

    .prologue
    .line 62
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 63
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://media/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v1           #values:Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 66
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "MediaScannerService"

    const-string v3, "failed to open media database"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private scan([Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .parameter "directories"
    .parameter "volumeName"

    .prologue
    const/4 v10, 0x0

    const-string v12, "volume"

    const-string v11, "MediaScannerService"

    .line 111
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    .line 112
    .local v5, status:Ljava/lang/String;
    const-string v8, "mounted"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "mounted_ro"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "internal"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 114
    const-string v8, "MediaScannerService"

    const-string v8, "scan : ExternalStorageState[%s]... do not need to scan"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v5, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :goto_0
    return-void

    .line 122
    :cond_0
    const-string v8, "usb_otg"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 123
    const-string p2, "external"

    .line 130
    :cond_1
    iget-object v8, p0, Lcom/android/providers/media/MediaScannerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 132
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 133
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "volume"

    invoke-virtual {v7, v12, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const/4 v1, 0x0

    .line 137
    .local v1, scanUri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 146
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p1, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 149
    .local v6, uri:Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-direct {v4, v8, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 150
    .local v4, scannerStartIntent:Landroid/content/Intent;
    const-string v8, "volume"

    invoke-virtual {v4, v12, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    invoke-virtual {p0, v4}, Lcom/android/providers/media/MediaScannerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 154
    :try_start_1
    const-string v8, "external"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 155
    invoke-direct {p0, p2}, Lcom/android/providers/media/MediaScannerService;->openDatabase(Ljava/lang/String;)V

    .line 158
    :cond_2
    const-string v8, "MediaScannerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "scan : call scanner.scanDirectories - directories : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-direct {p0}, Lcom/android/providers/media/MediaScannerService;->createMediaScanner()Landroid/media/MediaScanner;

    move-result-object v2

    .line 160
    .local v2, scanner:Landroid/media/MediaScanner;
    invoke-virtual {v2, p1, p2}, Landroid/media/MediaScanner;->scanDirectories([Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 166
    .end local v2           #scanner:Landroid/media/MediaScanner;
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v1, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 172
    :goto_3
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-direct {v3, v8, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 173
    .local v3, scannerFinishedIntent:Landroid/content/Intent;
    const-string v8, "volume"

    invoke-virtual {v3, v12, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    invoke-virtual {p0, v3}, Lcom/android/providers/media/MediaScannerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 176
    iget-object v8, p0, Lcom/android/providers/media/MediaScannerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 138
    .end local v3           #scannerFinishedIntent:Landroid/content/Intent;
    .end local v4           #scannerStartIntent:Landroid/content/Intent;
    .end local v6           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 139
    .local v0, e:Ljava/lang/UnsupportedOperationException;
    const-string v8, "MediaScannerService"

    const-string v8, "UnsupportedOperationException insert MediaScanner uri."

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 161
    .end local v0           #e:Ljava/lang/UnsupportedOperationException;
    .restart local v4       #scannerStartIntent:Landroid/content/Intent;
    .restart local v6       #uri:Landroid/net/Uri;
    :catch_1
    move-exception v8

    move-object v0, v8

    .line 162
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "MediaScannerService"

    const-string v8, "exception in MediaScanner.scan()"

    invoke-static {v11, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 167
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v8

    move-object v0, v8

    .line 168
    .local v0, e:Ljava/lang/UnsupportedOperationException;
    const-string v8, "MediaScannerService"

    const-string v8, "UnsupportedOperationException delete MediaScanner uri"

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private scanFile(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 6
    .parameter "path"
    .parameter "mimeType"

    .prologue
    const-string v4, "/sdcard/"

    .line 258
    const-string v2, "internal"

    .line 259
    .local v2, volumeName:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, externalStoragePath:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "/sdcard/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 262
    :cond_0
    const-string v3, "/sdcard/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/mnt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 265
    const-string v3, "MediaScannerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Old path (/sdcard/*) --> New Path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_1
    const-string v2, "external"

    .line 269
    invoke-direct {p0, v2}, Lcom/android/providers/media/MediaScannerService;->openDatabase(Ljava/lang/String;)V

    .line 271
    :cond_2
    invoke-direct {p0}, Lcom/android/providers/media/MediaScannerService;->createMediaScanner()Landroid/media/MediaScanner;

    move-result-object v1

    .line 272
    .local v1, scanner:Landroid/media/MediaScanner;
    invoke-virtual {v1, p1, v2, p2}, Landroid/media/MediaScanner;->scanSingleFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/providers/media/MediaScannerService;->mBinder:Landroid/media/IMediaScannerService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const-string v4, "MediaScannerService"

    .line 182
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/android/providers/media/MediaScannerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 183
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "MediaScannerService"

    invoke-virtual {v0, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/media/MediaScannerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 188
    new-instance v1, Ljava/lang/Thread;

    const/4 v2, 0x0

    const-string v3, "MediaScannerService"

    invoke-direct {v1, v2, p0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 189
    .local v1, thr:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 190
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 232
    :goto_0
    iget-object v0, p0, Lcom/android/providers/media/MediaScannerService;->mServiceLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    .line 233
    monitor-enter p0

    .line 235
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/providers/media/MediaScannerService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 241
    return-void

    .line 236
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const-string v5, "MediaScannerService"

    .line 195
    :goto_0
    iget-object v3, p0, Lcom/android/providers/media/MediaScannerService;->mServiceHandler:Lcom/android/providers/media/MediaScannerService$ServiceHandler;

    if-nez v3, :cond_0

    .line 196
    monitor-enter p0

    .line 198
    const-wide/16 v3, 0x64

    :try_start_0
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 204
    :cond_0
    if-nez p1, :cond_1

    .line 205
    const-string v3, "MediaScannerService"

    const-string v3, "Intent is null in onStartCommand: "

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v5, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    const/4 v3, 0x2

    .line 225
    :goto_2
    return v3

    .line 210
    :cond_1
    const-string v3, "MediaScannerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStartCommand : intent - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string v3, "MediaScannerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStartCommand : flags ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], startId ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v3, p0, Lcom/android/providers/media/MediaScannerService;->mServiceHandler:Lcom/android/providers/media/MediaScannerService$ServiceHandler;

    invoke-virtual {v3}, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 214
    .local v1, msg:Landroid/os/Message;
    iput p3, v1, Landroid/os/Message;->arg1:I

    .line 215
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 217
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 218
    .local v0, arguments:Landroid/os/Bundle;
    const-string v3, "volume"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, volumePath:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 220
    const-string v3, "MediaScannerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStartCommand : intent.getExtra\'s volume : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_2
    iget-object v3, p0, Lcom/android/providers/media/MediaScannerService;->mServiceHandler:Lcom/android/providers/media/MediaScannerService$ServiceHandler;

    invoke-virtual {v3, v1}, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 225
    const/4 v3, 0x3

    goto :goto_2

    .line 199
    .end local v0           #arguments:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #volumePath:Ljava/lang/String;
    :catch_0
    move-exception v3

    goto/16 :goto_1
.end method

.method public run()V
    .locals 2

    .prologue
    .line 247
    const/16 v0, 0xb

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 249
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 251
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/media/MediaScannerService;->mServiceLooper:Landroid/os/Looper;

    .line 252
    new-instance v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/providers/media/MediaScannerService$ServiceHandler;-><init>(Lcom/android/providers/media/MediaScannerService;Lcom/android/providers/media/MediaScannerService$1;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaScannerService;->mServiceHandler:Lcom/android/providers/media/MediaScannerService$ServiceHandler;

    .line 254
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 255
    return-void
.end method
