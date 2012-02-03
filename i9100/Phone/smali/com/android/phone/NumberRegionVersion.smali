.class public Lcom/android/phone/NumberRegionVersion;
.super Landroid/app/Activity;
.source "NumberRegionVersion.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NumberRegionVersion$MyReceiver;
    }
.end annotation


# static fields
.field static BIN_DEFAULT_DIR:Ljava/lang/String;

.field static BIN_ORIG_DEFAULT_DIR:Ljava/lang/String;

.field public static DBG:Z

.field static VERSION_DEFAULT_DIR:Ljava/lang/String;

.field static VERSION_ORIG_DEFAULT_DIR:Ljava/lang/String;

.field private static isLanguageChange:Z


# instance fields
.field private final BIN_URI:Ljava/lang/String;

.field private final EVENT_COPY_FINISH:I

.field private final EVENT_DOWNLOAD_FINISH:I

.field private final EVENT_FILE_EXCEPTION:I

.field private final EVENT_HTTP_EXCEPTION:I

.field private final EVENT_VERSION_SAME:I

.field private final READ_TIMEOUT_SEC:I

.field private final TAG:Ljava/lang/String;

.field private final VERSION_URI:Ljava/lang/String;

.field private final endmarker:J

.field private final extraSize:I

.field private mBinTmpFile:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mLastUpdateText:Landroid/widget/TextView;

.field private mLocale:Ljava/util/Locale;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReceiver:Lcom/android/phone/NumberRegionVersion$MyReceiver;

.field private mResetToDefaultButton:Landroid/view/View;

.field mThis:Lcom/android/phone/NumberRegionVersion;

.field private mUpdateButton:Landroid/view/View;

.field mVersionInfo:Lcom/android/phone/VersionInfo;

.field private mVersionText:Landroid/widget/TextView;

.field private mVersionTmpFile:Ljava/lang/String;

.field private final startmarker:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    sput-boolean v1, Lcom/android/phone/NumberRegionVersion;->DBG:Z

    .line 86
    const-string v0, "/system/etc/HomeLocationDB.bin"

    sput-object v0, Lcom/android/phone/NumberRegionVersion;->BIN_ORIG_DEFAULT_DIR:Ljava/lang/String;

    .line 87
    const-string v0, "/system/etc/HomeLocationVersion.bin"

    sput-object v0, Lcom/android/phone/NumberRegionVersion;->VERSION_ORIG_DEFAULT_DIR:Ljava/lang/String;

    .line 88
    const-string v0, "/data/data/com.android.phone/HomeLocationDB.bin"

    sput-object v0, Lcom/android/phone/NumberRegionVersion;->BIN_DEFAULT_DIR:Ljava/lang/String;

    .line 89
    const-string v0, "/data/data/com.android.phone/HomeLocationVersion.bin"

    sput-object v0, Lcom/android/phone/NumberRegionVersion;->VERSION_DEFAULT_DIR:Ljava/lang/String;

    .line 110
    sput-boolean v1, Lcom/android/phone/NumberRegionVersion;->isLanguageChange:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/32 v2, 0xfefe

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 85
    const-string v0, "NumberRegionVersion"

    iput-object v0, p0, Lcom/android/phone/NumberRegionVersion;->TAG:Ljava/lang/String;

    .line 90
    const-string v0, "http://xiazai.samsungmobile.com.cn/number_region/NumberRegionDB_CEK.bin"

    iput-object v0, p0, Lcom/android/phone/NumberRegionVersion;->BIN_URI:Ljava/lang/String;

    .line 91
    const-string v0, "http://xiazai.samsungmobile.com.cn/number_region/NumberRegionVersion_CEK.bin"

    iput-object v0, p0, Lcom/android/phone/NumberRegionVersion;->VERSION_URI:Ljava/lang/String;

    .line 92
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/phone/NumberRegionVersion;->extraSize:I

    .line 93
    iput-wide v2, p0, Lcom/android/phone/NumberRegionVersion;->startmarker:J

    .line 94
    iput-wide v2, p0, Lcom/android/phone/NumberRegionVersion;->endmarker:J

    .line 96
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/NumberRegionVersion;->EVENT_DOWNLOAD_FINISH:I

    .line 97
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/NumberRegionVersion;->EVENT_HTTP_EXCEPTION:I

    .line 98
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/NumberRegionVersion;->EVENT_FILE_EXCEPTION:I

    .line 99
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/phone/NumberRegionVersion;->EVENT_VERSION_SAME:I

    .line 100
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/phone/NumberRegionVersion;->EVENT_COPY_FINISH:I

    .line 101
    const/16 v0, 0x2d

    iput v0, p0, Lcom/android/phone/NumberRegionVersion;->READ_TIMEOUT_SEC:I

    .line 108
    iput-object v1, p0, Lcom/android/phone/NumberRegionVersion;->mVersionTmpFile:Ljava/lang/String;

    .line 109
    iput-object v1, p0, Lcom/android/phone/NumberRegionVersion;->mBinTmpFile:Ljava/lang/String;

    .line 162
    new-instance v0, Lcom/android/phone/NumberRegionVersion$1;

    invoke-direct {v0, p0}, Lcom/android/phone/NumberRegionVersion$1;-><init>(Lcom/android/phone/NumberRegionVersion;)V

    iput-object v0, p0, Lcom/android/phone/NumberRegionVersion;->mHandler:Landroid/os/Handler;

    .line 953
    return-void
.end method

.method private CopyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "strSrc"
    .parameter "strDst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 549
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 550
    .local v5, src:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 551
    .local v2, dst:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 552
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 553
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 554
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 555
    :cond_1
    const/4 v3, 0x0

    .line 556
    .local v3, from:Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 559
    .local v6, to:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 560
    .end local v3           #from:Ljava/io/FileInputStream;
    .local v4, from:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 562
    .end local v6           #to:Ljava/io/FileOutputStream;
    .local v7, to:Ljava/io/FileOutputStream;
    const/16 v8, 0x2000

    :try_start_2
    new-array v0, v8, [B

    .line 564
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .local v1, bytesRead:I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_4

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 568
    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    :catchall_0
    move-exception v8

    move-object v6, v7

    .end local v7           #to:Ljava/io/FileOutputStream;
    .restart local v6       #to:Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 569
    .end local v4           #from:Ljava/io/FileInputStream;
    .restart local v3       #from:Ljava/io/FileInputStream;
    :goto_1
    if-eqz v3, :cond_2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 575
    :cond_2
    if-eqz v6, :cond_3

    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 578
    :cond_3
    :goto_2
    throw v8

    .line 566
    .end local v3           #from:Ljava/io/FileInputStream;
    .end local v6           #to:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v1       #bytesRead:I
    .restart local v4       #from:Ljava/io/FileInputStream;
    .restart local v7       #to:Ljava/io/FileOutputStream;
    :cond_4
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 569
    if-eqz v4, :cond_5

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 575
    :cond_5
    if-eqz v7, :cond_6

    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 581
    :cond_6
    :goto_3
    invoke-direct {p0, p2}, Lcom/android/phone/NumberRegionVersion;->changePermission(Ljava/lang/String;)V

    .line 582
    const/4 v8, 0x1

    return v8

    .line 570
    :catch_0
    move-exception v8

    .line 575
    if-eqz v7, :cond_6

    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    .line 576
    :catch_1
    move-exception v8

    goto :goto_3

    .line 574
    :catchall_1
    move-exception v8

    .line 575
    if-eqz v7, :cond_7

    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 578
    :cond_7
    :goto_4
    throw v8

    .line 570
    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    .end local v4           #from:Ljava/io/FileInputStream;
    .end local v7           #to:Ljava/io/FileOutputStream;
    .restart local v3       #from:Ljava/io/FileInputStream;
    .restart local v6       #to:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v9

    .line 575
    if-eqz v6, :cond_3

    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_2

    .line 576
    :catch_3
    move-exception v9

    goto :goto_2

    .line 574
    :catchall_2
    move-exception v8

    .line 575
    if-eqz v6, :cond_8

    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 578
    :cond_8
    :goto_5
    throw v8

    .line 576
    .end local v3           #from:Ljava/io/FileInputStream;
    .end local v6           #to:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v1       #bytesRead:I
    .restart local v4       #from:Ljava/io/FileInputStream;
    .restart local v7       #to:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v8

    goto :goto_3

    :catch_5
    move-exception v9

    goto :goto_4

    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    .end local v4           #from:Ljava/io/FileInputStream;
    .end local v7           #to:Ljava/io/FileOutputStream;
    .restart local v3       #from:Ljava/io/FileInputStream;
    .restart local v6       #to:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v9

    goto :goto_2

    :catch_7
    move-exception v9

    goto :goto_5

    .line 568
    :catchall_3
    move-exception v8

    goto :goto_1

    .end local v3           #from:Ljava/io/FileInputStream;
    .restart local v4       #from:Ljava/io/FileInputStream;
    :catchall_4
    move-exception v8

    move-object v3, v4

    .end local v4           #from:Ljava/io/FileInputStream;
    .restart local v3       #from:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private DeleteFile(Ljava/lang/String;)V
    .locals 2
    .parameter "strFileName"

    .prologue
    .line 542
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 543
    .local v0, myFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 544
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 546
    :cond_0
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 82
    sget-boolean v0, Lcom/android/phone/NumberRegionVersion;->isLanguageChange:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    sput-boolean p0, Lcom/android/phone/NumberRegionVersion;->isLanguageChange:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/phone/NumberRegionVersion;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/phone/NumberRegionVersion;->refreshViews()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/NumberRegionVersion;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/phone/NumberRegionVersion;->mVersionTmpFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/phone/NumberRegionVersion;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/phone/NumberRegionVersion;->mVersionTmpFile:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/phone/NumberRegionVersion;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/phone/NumberRegionVersion;->DeleteFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/NumberRegionVersion;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/phone/NumberRegionVersion;->mBinTmpFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/phone/NumberRegionVersion;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/phone/NumberRegionVersion;->mBinTmpFile:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/phone/NumberRegionVersion;Ljava/lang/String;)Lcom/android/phone/DownloadFileInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/phone/NumberRegionVersion;->downloadFileByWebkit(Ljava/lang/String;)Lcom/android/phone/DownloadFileInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/NumberRegionVersion;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/phone/NumberRegionVersion;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/NumberRegionVersion;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/phone/NumberRegionVersion;->CopyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/phone/NumberRegionVersion;)Ljava/util/Locale;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/phone/NumberRegionVersion;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/phone/NumberRegionVersion;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/phone/NumberRegionVersion;->mLocale:Ljava/util/Locale;

    return-object p1
.end method

.method private changePermission(Ljava/lang/String;)V
    .locals 5
    .parameter "strDst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 586
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod 777 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 587
    .local v0, command:Ljava/lang/String;
    const-string v2, "LIJian"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "command = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 589
    .local v1, runtime:Ljava/lang/Runtime;
    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 590
    return-void
.end method

.method private downloadFileByWebkit(Ljava/lang/String;)Lcom/android/phone/DownloadFileInfo;
    .locals 25
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 683
    sget-boolean v4, Lcom/android/phone/NumberRegionVersion;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "NumberRegionVersion"

    const-string v5, "CDDownloadThread : run : DownloadThread Started"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_0
    new-instance v4, Lcom/android/phone/DownloadFileInfo;

    invoke-direct {v4}, Lcom/android/phone/DownloadFileInfo;-><init>()V

    .line 691
    const-string v5, "bin"

    .line 692
    const/4 v6, 0x0

    .line 693
    const/4 v7, 0x0

    .line 696
    const/4 v8, 0x0

    .line 697
    sget-boolean v9, Lcom/android/phone/NumberRegionVersion;->DBG:Z

    if-eqz v9, :cond_1

    const-string v9, "NumberRegionVersion"

    const-string v10, "before start create temp file"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :cond_1
    const-string v9, "nameReginTmp"

    const-string v10, ".bin"

    invoke-static {v9, v10}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 699
    sget-boolean v10, Lcom/android/phone/NumberRegionVersion;->DBG:Z

    if-eqz v10, :cond_2

    const-string v10, "NumberRegionVersion"

    const-string v11, "after start create temp file"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :cond_2
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/android/phone/DownloadFileInfo;->fileName:Ljava/lang/String;

    .line 702
    sget-boolean v10, Lcom/android/phone/NumberRegionVersion;->DBG:Z

    if-eqz v10, :cond_3

    const-string v10, "NumberRegionVersion"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "downloadFileByWebkit currentTempFilePath="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_3
    const/4 v9, 0x0

    .line 706
    const/4 v10, 0x0

    .line 707
    const/4 v11, 0x0

    .line 708
    const/4 v12, 0x0

    .line 709
    const/4 v13, 0x0

    .line 713
    const v14, 0x19000

    :try_start_0
    new-array v14, v14, [B

    .line 720
    const/4 v15, 0x0

    invoke-static {v15}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v7

    .line 721
    :try_start_1
    sget-boolean v15, Lcom/android/phone/NumberRegionVersion;->DBG:Z

    if-eqz v15, :cond_4

    const-string v15, "NumberRegionVersion"

    const-string v16, "CDDownloadThread : use AndroidHttpClient : "

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :cond_4
    sget-boolean v15, Lcom/android/phone/NumberRegionVersion;->DBG:Z

    if-eqz v15, :cond_5

    const-string v15, "NumberRegionVersion"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "CDDownloadThread : run : Actual URL: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_5
    new-instance v15, Lorg/apache/http/client/methods/HttpGet;

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 729
    sget-boolean v16, Lcom/android/phone/NumberRegionVersion;->DBG:Z

    if-eqz v16, :cond_6

    const-string v16, "NumberRegionVersion"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "CDDownloadThread : run :Final URL "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_6
    const/16 v16, 0x0

    .line 733
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/NumberRegionVersion;->getBaseContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    .line 734
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/NumberRegionVersion;->getBaseContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result v18

    .line 736
    if-eqz v17, :cond_7

    const/16 v19, -0x1

    move/from16 v0, v19

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    .line 737
    const/16 v16, 0x1

    .line 742
    :cond_7
    :try_start_2
    new-instance v19, Ljava/net/URI;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 743
    new-instance v20, Lorg/apache/http/HttpHost;

    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getPort()I

    move-result v19

    const-string v22, "http"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v19

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 752
    :try_start_3
    invoke-virtual {v7}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v19

    .line 753
    if-eqz v16, :cond_9

    .line 754
    sget-boolean v21, Lcom/android/phone/NumberRegionVersion;->DBG:Z

    if-eqz v21, :cond_8

    const-string v21, "NumberRegionVersion"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "CDDownloadThread :Set  Proxy Host:  "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "  ProxyPort :"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_8
    new-instance v21, Lorg/apache/http/HttpHost;

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 764
    :cond_9
    if-eqz v16, :cond_1f

    .line 765
    :try_start_4
    move-object v0, v7

    move-object/from16 v1, v20

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v16

    .line 788
    :goto_0
    :try_start_5
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    .line 792
    const-string v17, "NumberRegionVersion"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CDDownloadThread : run : received response for "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    const-string v17, "Accept-Ranges"

    invoke-interface/range {v16 .. v17}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v17

    .line 796
    if-eqz v17, :cond_a

    .line 797
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 799
    :cond_a
    const-string v17, "Content-Disposition"

    invoke-interface/range {v16 .. v17}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v17

    .line 800
    if-eqz v17, :cond_b

    .line 801
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 803
    :cond_b
    const-string v17, "Content-Location"

    invoke-interface/range {v16 .. v17}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v17

    .line 804
    if-eqz v17, :cond_c

    .line 805
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    .line 807
    :cond_c
    const-string v17, "Content-Type"

    invoke-interface/range {v16 .. v17}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v17

    .line 808
    if-nez v17, :cond_d

    .line 809
    const-string v17, "NumberRegionVersion"

    const-string v18, "CDDownloadThread : run : Content Type NULL"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_d
    const-string v17, "ETag"

    invoke-interface/range {v16 .. v17}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v17

    .line 812
    if-eqz v17, :cond_e

    .line 813
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    .line 815
    :cond_e
    const-string v17, "Transfer-Encoding"

    invoke-interface/range {v16 .. v17}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v17

    .line 816
    if-eqz v17, :cond_f

    .line 817
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v13

    .line 819
    :cond_f
    const-string v17, "X-Oma-Drm-Separate-Delivery"

    invoke-interface/range {v16 .. v17}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v17

    .line 820
    if-eqz v17, :cond_10

    .line 821
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    .line 823
    :cond_10
    if-nez v13, :cond_21

    .line 824
    const-string v17, "Content-Length"

    invoke-interface/range {v16 .. v17}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v17

    .line 825
    if-eqz v17, :cond_11

    .line 826
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 832
    :cond_11
    :goto_1
    sget-boolean v17, Lcom/android/phone/NumberRegionVersion;->DBG:Z

    if-eqz v17, :cond_12

    const-string v17, "NumberRegionVersion"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CDDownloadThread : run : Accept-Ranges: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :cond_12
    sget-boolean v9, Lcom/android/phone/NumberRegionVersion;->DBG:Z

    if-eqz v9, :cond_13

    const-string v9, "NumberRegionVersion"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "CDDownloadThread : run : Content-Disposition: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_13
    sget-boolean v9, Lcom/android/phone/NumberRegionVersion;->DBG:Z

    if-eqz v9, :cond_14

    const-string v9, "NumberRegionVersion"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "CDDownloadThread : run : Content-Length: "

    move-object v0, v10

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :cond_14
    sget-boolean v9, Lcom/android/phone/NumberRegionVersion;->DBG:Z

    if-eqz v9, :cond_15

    const-string v9, "NumberRegionVersion"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CDDownloadThread : run : Content-Location: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :cond_15
    sget-boolean v9, Lcom/android/phone/NumberRegionVersion;->DBG:Z

    if-eqz v9, :cond_16

    const-string v9, "NumberRegionVersion"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CDDownloadThread : run : Content-Type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :cond_16
    sget-boolean v5, Lcom/android/phone/NumberRegionVersion;->DBG:Z

    if-eqz v5, :cond_17

    const-string v5, "NumberRegionVersion"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CDDownloadThread : run : Transfer-Encoding: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 845
    :cond_17
    :try_start_6
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-result-object v5

    move/from16 v24, v8

    move-object v8, v6

    move/from16 v6, v24

    .line 857
    :goto_2
    :try_start_7
    sget-boolean v9, Lcom/android/phone/NumberRegionVersion;->isLanguageChange:Z

    if-eqz v9, :cond_24

    .line 858
    invoke-virtual {v15}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NumberRegionVersion;->mVersionTmpFile:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_18

    .line 860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NumberRegionVersion;->mVersionTmpFile:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NumberRegionVersion;->DeleteFile(Ljava/lang/String;)V

    .line 861
    :cond_18
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/NumberRegionVersion;->mVersionTmpFile:Ljava/lang/String;

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NumberRegionVersion;->mBinTmpFile:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_19

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NumberRegionVersion;->mBinTmpFile:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NumberRegionVersion;->DeleteFile(Ljava/lang/String;)V

    .line 864
    :cond_19
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/NumberRegionVersion;->mBinTmpFile:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 865
    const/4 v4, 0x0

    .line 914
    if-eqz v7, :cond_1a

    .line 915
    invoke-virtual {v7}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 919
    :cond_1a
    if-eqz v8, :cond_1b

    .line 920
    :try_start_8
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 931
    :cond_1b
    :goto_3
    return-object v4

    .line 745
    :catch_0
    move-exception v5

    .line 746
    :try_start_9
    sget-boolean v9, Lcom/android/phone/NumberRegionVersion;->DBG:Z

    if-eqz v9, :cond_1c

    const-string v9, "NumberRegionVersion"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CDDownloadThread : run : URISyntaxException  Uri :  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    :cond_1c
    move v5, v8

    .line 914
    :goto_4
    if-eqz v7, :cond_1d

    .line 915
    invoke-virtual {v7}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 919
    :cond_1d
    if-eqz v6, :cond_1e

    .line 920
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 926
    :cond_1e
    :goto_5
    const-string v6, "NumberRegionVersion"

    const-string v7, "CDDownloadThread : run : Exiting DownloadThread"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    int-to-long v5, v5

    iput-wide v5, v4, Lcom/android/phone/DownloadFileInfo;->fileSize:J

    .line 928
    const-wide/16 v5, 0x0

    iput-wide v5, v4, Lcom/android/phone/DownloadFileInfo;->startmarker:J

    .line 929
    const-wide/16 v5, 0x0

    iput-wide v5, v4, Lcom/android/phone/DownloadFileInfo;->endmarker:J

    goto :goto_3

    .line 767
    :cond_1f
    :try_start_b
    invoke-virtual {v7, v15}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    move-result-object v16

    goto/16 :goto_0

    .line 769
    :catch_1
    move-exception v5

    .line 770
    :try_start_c
    sget-boolean v9, Lcom/android/phone/NumberRegionVersion;->DBG:Z

    if-eqz v9, :cond_20

    const-string v9, "NumberRegionVersion"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CDDownloadThread : run : Illegal Arg exception trying to execute request for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :cond_20
    invoke-virtual {v15}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    move v5, v8

    .line 775
    goto :goto_4

    .line 776
    :catch_2
    move-exception v5

    .line 777
    const-string v9, "NumberRegionVersion"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CDDownloadThread : run : IOException trying to execute request for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    invoke-virtual {v15}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    move v5, v8

    .line 781
    goto :goto_4

    .line 829
    :cond_21
    const-string v17, "NumberRegionVersion"

    const-string v18, "CDDownloadThread : run : ignoring content-length because of xfer-encoding"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_1

    .line 911
    :catch_3
    move-exception v5

    move/from16 v24, v8

    move-object v8, v6

    move/from16 v6, v24

    .line 912
    :goto_6
    :try_start_d
    const-string v9, "NumberRegionVersion"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CDDownloadThread : run : Exception for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 914
    if-eqz v7, :cond_22

    .line 915
    invoke-virtual {v7}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 919
    :cond_22
    if-eqz v8, :cond_23

    .line 920
    :try_start_e
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    :cond_23
    move v5, v6

    .line 924
    goto/16 :goto_5

    .line 846
    :catch_4
    move-exception v5

    .line 848
    :try_start_f
    invoke-virtual {v15}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    move v5, v8

    .line 849
    goto/16 :goto_4

    .line 922
    :catch_5
    move-exception v5

    .line 923
    const-string v6, "NumberRegionVersion"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CDDownloadThread : run : exception when closing the file after download : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 868
    :cond_24
    :try_start_10
    invoke-virtual {v5, v14}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .line 869
    const-string v10, "NumberRegionVersion"

    const-string v11, "CDDownloadThread : run : Data processing"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7

    .line 875
    const/4 v10, -0x1

    if-ne v9, v10, :cond_25

    .line 908
    :goto_7
    :try_start_11
    const-string v5, "NumberRegionVersion"

    const-string v9, "CDDownloadThread : run : CD_STATUS_DOWNLOAD_COMPLETED"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    move-object v6, v8

    .line 909
    goto/16 :goto_4

    .line 870
    :catch_6
    move-exception v5

    .line 872
    invoke-virtual {v15}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    goto :goto_7

    .line 911
    :catch_7
    move-exception v5

    goto :goto_6

    .line 884
    :cond_25
    sget-boolean v10, Lcom/android/phone/NumberRegionVersion;->isLanguageChange:Z

    if-eqz v10, :cond_29

    .line 885
    invoke-virtual {v15}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NumberRegionVersion;->mVersionTmpFile:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_26

    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NumberRegionVersion;->mVersionTmpFile:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NumberRegionVersion;->DeleteFile(Ljava/lang/String;)V

    .line 888
    :cond_26
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/NumberRegionVersion;->mVersionTmpFile:Ljava/lang/String;

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NumberRegionVersion;->mBinTmpFile:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_27

    .line 890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NumberRegionVersion;->mBinTmpFile:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NumberRegionVersion;->DeleteFile(Ljava/lang/String;)V

    .line 891
    :cond_27
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/NumberRegionVersion;->mBinTmpFile:Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    .line 892
    const/4 v4, 0x0

    .line 914
    if-eqz v7, :cond_28

    .line 915
    invoke-virtual {v7}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 919
    :cond_28
    if-eqz v8, :cond_1b

    .line 920
    :try_start_12
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8

    goto/16 :goto_3

    .line 922
    :catch_8
    move-exception v5

    .line 923
    const-string v6, "NumberRegionVersion"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CDDownloadThread : run : exception when closing the file after download : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 895
    :cond_29
    if-nez v8, :cond_2a

    .line 896
    :try_start_13
    new-instance v10, Ljava/io/FileOutputStream;

    iget-object v11, v4, Lcom/android/phone/DownloadFileInfo;->fileName:Ljava/lang/String;

    const/4 v12, 0x1

    invoke-direct {v10, v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    move-object v8, v10

    .line 898
    :cond_2a
    const/4 v10, 0x0

    invoke-virtual {v8, v14, v10, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_c

    .line 905
    :goto_8
    add-int/2addr v6, v9

    goto/16 :goto_2

    .line 922
    :catch_9
    move-exception v6

    .line 923
    const-string v7, "NumberRegionVersion"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CDDownloadThread : run : exception when closing the file after download : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 922
    :catch_a
    move-exception v5

    .line 923
    const-string v7, "NumberRegionVersion"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CDDownloadThread : run : exception when closing the file after download : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 925
    goto/16 :goto_5

    .line 914
    :catchall_0
    move-exception v4

    move-object v5, v7

    :goto_9
    if-eqz v5, :cond_2b

    .line 915
    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 919
    :cond_2b
    if-eqz v6, :cond_2c

    .line 920
    :try_start_14
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_b

    .line 924
    :cond_2c
    :goto_a
    throw v4

    .line 922
    :catch_b
    move-exception v5

    .line 923
    const-string v6, "NumberRegionVersion"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CDDownloadThread : run : exception when closing the file after download : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 914
    :catchall_1
    move-exception v4

    move-object v5, v7

    goto :goto_9

    :catchall_2
    move-exception v4

    move-object v5, v7

    move-object v6, v8

    goto :goto_9

    .line 900
    :catch_c
    move-exception v10

    goto :goto_8
.end method

.method private initViews()V
    .locals 1

    .prologue
    .line 131
    const v0, 0x7f03002e

    invoke-virtual {p0, v0}, Lcom/android/phone/NumberRegionVersion;->setContentView(I)V

    .line 132
    const v0, 0x7f0800c9

    invoke-virtual {p0, v0}, Lcom/android/phone/NumberRegionVersion;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NumberRegionVersion;->mUpdateButton:Landroid/view/View;

    .line 133
    iget-object v0, p0, Lcom/android/phone/NumberRegionVersion;->mUpdateButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const v0, 0x7f0800ca

    invoke-virtual {p0, v0}, Lcom/android/phone/NumberRegionVersion;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NumberRegionVersion;->mResetToDefaultButton:Landroid/view/View;

    .line 135
    iget-object v0, p0, Lcom/android/phone/NumberRegionVersion;->mResetToDefaultButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v0, 0x7f0800c7

    invoke-virtual {p0, v0}, Lcom/android/phone/NumberRegionVersion;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/NumberRegionVersion;->mVersionText:Landroid/widget/TextView;

    .line 137
    const v0, 0x7f0800c8

    invoke-virtual {p0, v0}, Lcom/android/phone/NumberRegionVersion;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/NumberRegionVersion;->mLastUpdateText:Landroid/widget/TextView;

    .line 139
    invoke-direct {p0}, Lcom/android/phone/NumberRegionVersion;->refreshViews()V

    .line 140
    return-void
.end method

.method private refreshViews()V
    .locals 5

    .prologue
    const-string v4, "NumberRegionVersion"

    .line 143
    sget-boolean v2, Lcom/android/phone/NumberRegionVersion;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "NumberRegionVersion"

    const-string v2, "go to refreshViews"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/phone/NumberRegionVersion;->VERSION_DEFAULT_DIR:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    .local v1, myFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 147
    sget-object v2, Lcom/android/phone/NumberRegionVersion;->VERSION_DEFAULT_DIR:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/phone/NumberRegionVersion;->getVersionInfo(Ljava/lang/String;)Lcom/android/phone/VersionInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/NumberRegionVersion;->mVersionInfo:Lcom/android/phone/VersionInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .end local v1           #myFile:Ljava/io/File;
    :goto_0
    iget-object v2, p0, Lcom/android/phone/NumberRegionVersion;->mVersionInfo:Lcom/android/phone/VersionInfo;

    if-eqz v2, :cond_1

    .line 156
    iget-object v2, p0, Lcom/android/phone/NumberRegionVersion;->mVersionText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/phone/NumberRegionVersion;->mVersionInfo:Lcom/android/phone/VersionInfo;

    iget-object v3, v3, Lcom/android/phone/VersionInfo;->displayVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v2, p0, Lcom/android/phone/NumberRegionVersion;->mLastUpdateText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/phone/NumberRegionVersion;->mVersionInfo:Lcom/android/phone/VersionInfo;

    iget-object v3, v3, Lcom/android/phone/VersionInfo;->lastUpdate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    sget-boolean v2, Lcom/android/phone/NumberRegionVersion;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "NumberRegionVersion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVersionText="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NumberRegionVersion;->mVersionText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mLastUpdateText="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NumberRegionVersion;->mLastUpdateText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_1
    return-void

    .line 150
    .restart local v1       #myFile:Ljava/io/File;
    :cond_2
    :try_start_1
    sget-object v2, Lcom/android/phone/NumberRegionVersion;->VERSION_ORIG_DEFAULT_DIR:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/phone/NumberRegionVersion;->getVersionInfo(Ljava/lang/String;)Lcom/android/phone/VersionInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/NumberRegionVersion;->mVersionInfo:Lcom/android/phone/VersionInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 152
    .end local v1           #myFile:Ljava/io/File;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 153
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized dismiss()V
    .locals 2

    .prologue
    const-string v0, "[MyFiles]"

    .line 249
    monitor-enter p0

    :try_start_0
    const-string v0, "[MyFiles]"

    const-string v1, "go to dismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcom/android/phone/NumberRegionVersion;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 251
    const-string v0, "[MyFiles]"

    const-string v1, "Long running dialog(dismiss)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/android/phone/NumberRegionVersion;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/NumberRegionVersion;->mProgressDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    :cond_0
    monitor-exit p0

    return-void

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getBufferUnicodeString([BII)Ljava/lang/String;
    .locals 10
    .parameter "buffer"
    .parameter "start"
    .parameter "length"

    .prologue
    const/4 v8, 0x1

    .line 593
    const/4 v4, 0x0

    .line 594
    .local v4, isStringEnd:Z
    const/4 v1, 0x0

    .line 595
    .local v1, count:I
    const/4 v3, 0x0

    .line 596
    .local v3, i:I
    const/16 v7, 0x80

    new-array v0, v7, [B

    .line 598
    .local v0, buffer128:[B
    const/4 v3, 0x0

    :goto_0
    if-ge v3, p3, :cond_0

    .line 599
    add-int v7, p2, v3

    aget-byte v7, p1, v7

    aput-byte v7, v0, v3

    .line 598
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 601
    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, p3, :cond_1

    .line 602
    rem-int/lit8 v7, v3, 0x2

    if-nez v7, :cond_2

    sub-int v7, p3, v8

    if-ge v3, v7, :cond_2

    aget-byte v7, v0, v3

    if-nez v7, :cond_2

    add-int/lit8 v7, v3, 0x1

    aget-byte v7, v0, v7

    if-nez v7, :cond_2

    move v4, v8

    .line 604
    :goto_2
    if-eqz v4, :cond_3

    .line 610
    :cond_1
    new-array v5, v1, [B

    .line 611
    .local v5, newBuffer:[B
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_4

    .line 612
    aget-byte v7, v0, v3

    aput-byte v7, v5, v3

    .line 611
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 602
    .end local v5           #newBuffer:[B
    :cond_2
    const/4 v7, 0x0

    move v4, v7

    goto :goto_2

    .line 607
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 601
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 614
    .restart local v5       #newBuffer:[B
    :cond_4
    sget-boolean v7, Lcom/android/phone/NumberRegionVersion;->DBG:Z

    if-eqz v7, :cond_5

    const-string v7, "NumberRegionVersion"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getBufferUnicodeString buffer: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "count: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "End"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_5
    :try_start_0
    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-16LE"

    invoke-direct {v6, v5, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .local v6, unicodeString:Ljava/lang/String;
    move-object v7, v6

    .line 621
    .end local v6           #unicodeString:Ljava/lang/String;
    :goto_4
    return-object v7

    .line 618
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 619
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 621
    const-string v7, ""

    goto :goto_4
.end method

.method getVersionInfo(Ljava/lang/String;)Lcom/android/phone/VersionInfo;
    .locals 9
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v5, 0x20

    const-string v6, "NumberRegionVersion"

    const-string v6, "Korean"

    .line 625
    new-array v0, v5, [B

    .line 626
    .local v0, buffer32:[B
    new-instance v4, Lcom/android/phone/VersionInfo;

    invoke-direct {v4}, Lcom/android/phone/VersionInfo;-><init>()V

    .line 628
    .local v4, versionInfo:Lcom/android/phone/VersionInfo;
    const/4 v2, 0x0

    .line 630
    .local v2, ois:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v3, p1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    .end local v2           #ois:Ljava/io/RandomAccessFile;
    .local v3, ois:Ljava/io/RandomAccessFile;
    :try_start_1
    sget-boolean v5, Lcom/android/phone/NumberRegionVersion;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "NumberRegionVersion"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getVersionInfo file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ois: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_0
    const/4 v5, 0x0

    const/16 v6, 0x20

    invoke-virtual {v3, v0, v5, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 634
    .local v1, count:I
    const/4 v5, 0x0

    const/16 v6, 0x20

    invoke-virtual {p0, v0, v5, v6}, Lcom/android/phone/NumberRegionVersion;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/phone/VersionInfo;->version:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/phone/VersionInfo;->displayVersion:Ljava/lang/String;

    .line 635
    iget-object v5, v4, Lcom/android/phone/VersionInfo;->version:Ljava/lang/String;

    const-string v6, "Korean"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 636
    iget-object v5, v4, Lcom/android/phone/VersionInfo;->version:Ljava/lang/String;

    const-string v6, "Korean"

    const-string v7, " "

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/phone/VersionInfo;->displayVersion:Ljava/lang/String;

    .line 638
    :cond_1
    const/4 v5, 0x0

    const/16 v6, 0x20

    invoke-virtual {v3, v0, v5, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 639
    const/4 v5, 0x0

    const/16 v6, 0x20

    invoke-virtual {p0, v0, v5, v6}, Lcom/android/phone/NumberRegionVersion;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/phone/VersionInfo;->lastUpdate:Ljava/lang/String;

    .line 641
    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v3, v0, v5, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 642
    invoke-virtual {p0, v0}, Lcom/android/phone/NumberRegionVersion;->readUnsignedInt([B)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/phone/VersionInfo;->dbSize:J

    .line 644
    iget-wide v5, v4, Lcom/android/phone/VersionInfo;->dbSize:J

    const-wide/16 v7, 0xc

    add-long/2addr v5, v7

    iput-wide v5, v4, Lcom/android/phone/VersionInfo;->dbSize:J

    .line 645
    sget-boolean v5, Lcom/android/phone/NumberRegionVersion;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "NumberRegionVersion"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getVersionInfo version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/phone/VersionInfo;->version:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "lastUpdate: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/phone/VersionInfo;->lastUpdate:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "dbSize: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v4, Lcom/android/phone/VersionInfo;->dbSize:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "End"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 649
    const/4 v2, 0x0

    .line 650
    .end local v3           #ois:Ljava/io/RandomAccessFile;
    .restart local v2       #ois:Ljava/io/RandomAccessFile;
    if-eqz v2, :cond_3

    .line 652
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 653
    const/4 v2, 0x0

    .line 660
    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    .line 662
    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 663
    const/4 v2, 0x0

    .line 666
    :cond_4
    :goto_1
    return-object v4

    .line 660
    .end local v1           #count:I
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v2, :cond_5

    .line 662
    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 663
    const/4 v2, 0x0

    .line 666
    :cond_5
    :goto_3
    throw v5

    .line 654
    .restart local v1       #count:I
    :catch_0
    move-exception v5

    goto :goto_0

    .line 664
    :catch_1
    move-exception v5

    goto :goto_1

    .end local v1           #count:I
    :catch_2
    move-exception v6

    goto :goto_3

    .line 660
    .end local v2           #ois:Ljava/io/RandomAccessFile;
    .restart local v3       #ois:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #ois:Ljava/io/RandomAccessFile;
    .restart local v2       #ois:Ljava/io/RandomAccessFile;
    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const v3, 0x7f0d003e

    const v2, 0x7f0d0030

    .line 430
    iget-object v0, p0, Lcom/android/phone/NumberRegionVersion;->mUpdateButton:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 431
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0377

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d037f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/NumberRegionVersion$5;

    invoke-direct {v1, p0}, Lcom/android/phone/NumberRegionVersion$5;-><init>(Lcom/android/phone/NumberRegionVersion;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/NumberRegionVersion$4;

    invoke-direct {v1, p0}, Lcom/android/phone/NumberRegionVersion$4;-><init>(Lcom/android/phone/NumberRegionVersion;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/android/phone/NumberRegionVersion;->mResetToDefaultButton:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 447
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d037a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d037b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/NumberRegionVersion$7;

    invoke-direct {v1, p0}, Lcom/android/phone/NumberRegionVersion$7;-><init>(Lcom/android/phone/NumberRegionVersion;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/NumberRegionVersion$6;

    invoke-direct {v1, p0}, Lcom/android/phone/NumberRegionVersion$6;-><init>(Lcom/android/phone/NumberRegionVersion;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    new-instance v1, Lcom/android/phone/NumberRegionVersion$MyReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/NumberRegionVersion$MyReceiver;-><init>(Lcom/android/phone/NumberRegionVersion;Lcom/android/phone/NumberRegionVersion$1;)V

    iput-object v1, p0, Lcom/android/phone/NumberRegionVersion;->mReceiver:Lcom/android/phone/NumberRegionVersion$MyReceiver;

    .line 120
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 121
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/android/phone/NumberRegionVersion;->mReceiver:Lcom/android/phone/NumberRegionVersion$MyReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/NumberRegionVersion;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/phone/NumberRegionVersion;->isLanguageChange:Z

    .line 125
    iput-object p0, p0, Lcom/android/phone/NumberRegionVersion;->mThis:Lcom/android/phone/NumberRegionVersion;

    .line 126
    invoke-direct {p0}, Lcom/android/phone/NumberRegionVersion;->initViews()V

    .line 127
    invoke-virtual {p0}, Lcom/android/phone/NumberRegionVersion;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/android/phone/NumberRegionVersion;->mLocale:Ljava/util/Locale;

    .line 128
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 977
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 978
    invoke-virtual {p0}, Lcom/android/phone/NumberRegionVersion;->dismiss()V

    .line 979
    iget-object v0, p0, Lcom/android/phone/NumberRegionVersion;->mReceiver:Lcom/android/phone/NumberRegionVersion$MyReceiver;

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Lcom/android/phone/NumberRegionVersion;->mReceiver:Lcom/android/phone/NumberRegionVersion$MyReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/NumberRegionVersion;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 981
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/NumberRegionVersion;->mReceiver:Lcom/android/phone/NumberRegionVersion$MyReceiver;

    .line 984
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 679
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 680
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 936
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 937
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/NumberRegionVersion;->isLanguageChange:Z

    .line 938
    return-void
.end method

.method public readUnsignedInt([B)J
    .locals 11
    .parameter "bytes"

    .prologue
    .line 258
    const/4 v8, 0x0

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v0, v8

    .line 259
    .local v0, b0:J
    const/4 v8, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x8

    shl-long v2, v8, v10

    .line 260
    .local v2, b1:J
    const/4 v8, 0x2

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x10

    shl-long v4, v8, v10

    .line 261
    .local v4, b2:J
    const/4 v8, 0x3

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x18

    shl-long v6, v8, v10

    .line 262
    .local v6, b3:J
    or-long v8, v0, v2

    or-long/2addr v8, v4

    or-long/2addr v8, v6

    return-wide v8
.end method

.method public startCopyThread()V
    .locals 7

    .prologue
    const-string v2, "NumberRegionVersion"

    .line 402
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/NumberRegionVersion;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 404
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/NumberRegionVersion;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/phone/NumberRegionVersion;->mThis:Lcom/android/phone/NumberRegionVersion;

    const/4 v3, 0x0

    const v4, 0x7f0d0378

    invoke-virtual {p0, v4}, Lcom/android/phone/NumberRegionVersion;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/NumberRegionVersion;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 405
    const-string v2, "NumberRegionVersion"

    const-string v3, "Long running dialog(show)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 410
    :try_start_2
    new-instance v1, Lcom/android/phone/NumberRegionVersion$3;

    invoke-direct {v1, p0}, Lcom/android/phone/NumberRegionVersion$3;-><init>(Lcom/android/phone/NumberRegionVersion;)V

    .line 423
    .local v1, r:Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 427
    .end local v1           #r:Ljava/lang/Runnable;
    :goto_0
    return-void

    .line 406
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 407
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "NumberRegionVersion"

    const-string v3, "Error while mProgressDialog working"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 424
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 425
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startDownloadThread()V
    .locals 7

    .prologue
    const-string v2, "NumberRegionVersion"

    .line 273
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/NumberRegionVersion;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 275
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/NumberRegionVersion;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/phone/NumberRegionVersion;->mThis:Lcom/android/phone/NumberRegionVersion;

    const/4 v3, 0x0

    const v4, 0x7f0d0378

    invoke-virtual {p0, v4}, Lcom/android/phone/NumberRegionVersion;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/NumberRegionVersion;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 276
    const-string v2, "NumberRegionVersion"

    const-string v3, "Long running dialog(show)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 281
    :try_start_2
    new-instance v1, Lcom/android/phone/NumberRegionVersion$2;

    invoke-direct {v1, p0}, Lcom/android/phone/NumberRegionVersion$2;-><init>(Lcom/android/phone/NumberRegionVersion;)V

    .line 394
    .local v1, r:Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 398
    .end local v1           #r:Ljava/lang/Runnable;
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 278
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "NumberRegionVersion"

    const-string v3, "Error while mProgressDialog working"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 395
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 396
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
