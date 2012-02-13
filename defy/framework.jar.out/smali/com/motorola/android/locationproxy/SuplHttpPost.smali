.class public Lcom/motorola/android/locationproxy/SuplHttpPost;
.super Ljava/lang/Object;
.source "SuplHttpPost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/locationproxy/SuplHttpPost$1;,
        Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;
    }
.end annotation


# static fields
.field private static final GPS_RESULT_NG:I = 0x1

.field private static final GPS_RESULT_OK:I = 0x0

.field private static final HTTPS_PREFIX:Ljava/lang/String; = "https"

.field private static final HTTP_STATUS_OK:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "SuplHttpPost"

.field private static final mGzipFile:Ljava/lang/String; = "/tmp/CELL_FINDER_PROTOCOL.TXT.gz"


# instance fields
.field private mCmdId:I

.field private mFilePath:Ljava/lang/String;

.field private mHttpThread:Ljava/lang/Thread;

.field private mHttpTimeout:I

.field private mHttpUrl:Ljava/lang/String;

.field private mPort:I

.field private mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

.field private mShimStatus:B

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/motorola/android/locationproxy/ISuplCommands;)V
    .locals 2
    .parameter "shimProxy"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/motorola/android/locationproxy/SuplHttpPost;->mHttpThread:Ljava/lang/Thread;

    iput-object v1, p0, Lcom/motorola/android/locationproxy/SuplHttpPost;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/android/locationproxy/SuplHttpPost;->mCmdId:I

    const/16 v0, 0x1c68

    iput v0, p0, Lcom/motorola/android/locationproxy/SuplHttpPost;->mPort:I

    const/16 v0, 0x7530

    iput v0, p0, Lcom/motorola/android/locationproxy/SuplHttpPost;->mHttpTimeout:I

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/motorola/android/locationproxy/SuplHttpPost;->mShimStatus:B

    iput-object v1, p0, Lcom/motorola/android/locationproxy/SuplHttpPost;->mHttpUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/motorola/android/locationproxy/SuplHttpPost;->mFilePath:Ljava/lang/String;

    iput-object v1, p0, Lcom/motorola/android/locationproxy/SuplHttpPost;->mUserAgent:Ljava/lang/String;

    iput-object p1, p0, Lcom/motorola/android/locationproxy/SuplHttpPost;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/android/locationproxy/SuplHttpPost;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/motorola/android/locationproxy/SuplHttpPost;->mPort:I

    return v0
.end method

.method static synthetic access$200(Lcom/motorola/android/locationproxy/SuplHttpPost;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/motorola/android/locationproxy/SuplHttpPost;->mHttpTimeout:I

    return v0
.end method

.method static synthetic access$300(Lcom/motorola/android/locationproxy/SuplHttpPost;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/locationproxy/SuplHttpPost;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/android/locationproxy/SuplHttpPost;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/locationproxy/SuplHttpPost;->mHttpUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/android/locationproxy/SuplHttpPost;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/locationproxy/SuplHttpPost;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/motorola/android/locationproxy/SuplHttpPost;)B
    .locals 1
    .parameter "x0"

    .prologue
    iget-byte v0, p0, Lcom/motorola/android/locationproxy/SuplHttpPost;->mShimStatus:B

    return v0
.end method

.method static synthetic access$602(Lcom/motorola/android/locationproxy/SuplHttpPost;B)B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-byte p1, p0, Lcom/motorola/android/locationproxy/SuplHttpPost;->mShimStatus:B

    return p1
.end method

.method static synthetic access$700(Lcom/motorola/android/locationproxy/SuplHttpPost;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/motorola/android/locationproxy/SuplHttpPost;->mCmdId:I

    return v0
.end method

.method static synthetic access$800(Lcom/motorola/android/locationproxy/SuplHttpPost;)Lcom/motorola/android/locationproxy/ISuplCommands;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/locationproxy/SuplHttpPost;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

    return-object v0
.end method


# virtual methods
.method public createGzipFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "gpsFile"

    .prologue
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "SuplHttpPost"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "raw gps file not existed:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    .end local v3           #file:Ljava/io/File;
    :goto_0
    return-object v10

    .restart local v3       #file:Ljava/io/File;
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v10, v10

    new-array v1, v10, [B

    .local v1, data:[B
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .local v8, s:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v8, v1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_1

    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v0, bytesOut:Ljava/io/ByteArrayOutputStream;
    new-instance v6, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v6, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .local v6, out:Ljava/util/zip/GZIPOutputStream;
    const/4 v10, 0x0

    :try_start_3
    array-length v11, v1

    invoke-virtual {v6, v1, v10, v11}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .local v9, zipData:[B
    new-instance v5, Ljava/io/File;

    const-string v10, "/tmp/CELL_FINDER_PROTOCOL.TXT.gz"

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v5, newFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "SuplHttpPost"

    const-string v11, "gz file not existed, create a new one:/tmp/CELL_FINDER_PROTOCOL.TXT.gz"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .local v7, outFile:Ljava/io/FileOutputStream;
    const/4 v10, 0x0

    :try_start_5
    array-length v11, v9

    invoke-virtual {v7, v9, v10, v11}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v7, :cond_3

    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    const-string v10, "SuplHttpPost"

    const-string v11, "gzip file created:/tmp/CELL_FINDER_PROTOCOL.TXT.gz"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .end local v0           #bytesOut:Ljava/io/ByteArrayOutputStream;
    .end local v1           #data:[B
    .end local v3           #file:Ljava/io/File;
    .end local v5           #newFile:Ljava/io/File;
    .end local v6           #out:Ljava/util/zip/GZIPOutputStream;
    .end local v7           #outFile:Ljava/io/FileOutputStream;
    .end local v8           #s:Ljava/io/FileInputStream;
    .end local v9           #zipData:[B
    :goto_1
    const-string v10, "/tmp/CELL_FINDER_PROTOCOL.TXT.gz"

    goto :goto_0

    .restart local v1       #data:[B
    .restart local v3       #file:Ljava/io/File;
    .restart local v8       #s:Ljava/io/FileInputStream;
    :catchall_0
    move-exception v10

    if-eqz v8, :cond_4

    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    :cond_4
    throw v10
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .end local v1           #data:[B
    .end local v3           #file:Ljava/io/File;
    .end local v8           #s:Ljava/io/FileInputStream;
    :catch_0
    move-exception v10

    move-object v2, v10

    .local v2, ex:Ljava/io/FileNotFoundException;
    const-string v10, "SuplHttpPost"

    const-string v11, "FileNotFoundException:"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v2           #ex:Ljava/io/FileNotFoundException;
    .restart local v0       #bytesOut:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #data:[B
    .restart local v3       #file:Ljava/io/File;
    .restart local v6       #out:Ljava/util/zip/GZIPOutputStream;
    .restart local v8       #s:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v10

    :try_start_8
    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->close()V

    throw v10
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .end local v0           #bytesOut:Ljava/io/ByteArrayOutputStream;
    .end local v1           #data:[B
    .end local v3           #file:Ljava/io/File;
    .end local v6           #out:Ljava/util/zip/GZIPOutputStream;
    .end local v8           #s:Ljava/io/FileInputStream;
    :catch_1
    move-exception v10

    move-object v4, v10

    .local v4, ioe:Ljava/io/IOException;
    const-string v10, "SuplHttpPost"

    const-string v11, "IOException:"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v4           #ioe:Ljava/io/IOException;
    .restart local v0       #bytesOut:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #data:[B
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #newFile:Ljava/io/File;
    .restart local v6       #out:Ljava/util/zip/GZIPOutputStream;
    .restart local v7       #outFile:Ljava/io/FileOutputStream;
    .restart local v8       #s:Ljava/io/FileInputStream;
    .restart local v9       #zipData:[B
    :catchall_2
    move-exception v10

    if-eqz v7, :cond_5

    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    :cond_5
    throw v10
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
.end method

.method public scheduleHttpPost(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .parameter "cmdId"
    .parameter "httpUrl"
    .parameter "path"
    .parameter "userAgent"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const-string v7, ":"

    const-string v4, "SuplHttpPost"

    const-string v2, "SuplHttpPost"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter scheduleHttpPost,cmdId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",httpUrl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",userAgent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/motorola/android/locationproxy/SuplHttpPost;->mCmdId:I

    iput-object p3, p0, Lcom/motorola/android/locationproxy/SuplHttpPost;->mFilePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/motorola/android/locationproxy/SuplHttpPost;->mUserAgent:Ljava/lang/String;

    const/4 v1, 0x0

    .local v1, useHttps:Z
    const-string v2, "https"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v2, ":"

    invoke-virtual {p2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, strUrlPort:[Ljava/lang/String;
    array-length v2, v0

    if-ne v2, v6, :cond_1

    iput-object p2, p0, Lcom/motorola/android/locationproxy/SuplHttpPost;->mHttpUrl:Ljava/lang/String;

    const/16 v2, 0x1bb

    iput v2, p0, Lcom/motorola/android/locationproxy/SuplHttpPost;->mPort:I

    :goto_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;-><init>(Lcom/motorola/android/locationproxy/SuplHttpPost;Lcom/motorola/android/locationproxy/SuplHttpPost$1;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/motorola/android/locationproxy/SuplHttpPost;->mHttpThread:Ljava/lang/Thread;

    iget-object v2, p0, Lcom/motorola/android/locationproxy/SuplHttpPost;->mHttpThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    move v2, v5

    :goto_1
    return v2

    :cond_1
    array-length v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    aget-object v2, v0, v6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/motorola/android/locationproxy/SuplHttpPost;->mPort:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/android/locationproxy/SuplHttpPost;->mHttpUrl:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v2, "SuplHttpPost"

    const-string v2, "Error: can\'t parse the url and port"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "SuplHttpPost"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send http post status to Shime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/motorola/android/locationproxy/SuplHttpPost;->mShimStatus:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/motorola/android/locationproxy/SuplHttpPost;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

    iget v3, p0, Lcom/motorola/android/locationproxy/SuplHttpPost;->mCmdId:I

    iget-byte v4, p0, Lcom/motorola/android/locationproxy/SuplHttpPost;->mShimStatus:B

    invoke-interface {v2, v3, v5, v4}, Lcom/motorola/android/locationproxy/ISuplCommands;->sendHttpResult(IIB)V

    const/4 v2, -0x1

    goto :goto_1
.end method
