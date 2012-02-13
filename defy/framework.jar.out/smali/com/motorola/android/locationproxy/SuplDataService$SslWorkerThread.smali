.class Lcom/motorola/android/locationproxy/SuplDataService$SslWorkerThread;
.super Ljava/lang/Object;
.source "SuplDataService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/locationproxy/SuplDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SslWorkerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/locationproxy/SuplDataService;


# direct methods
.method private constructor <init>(Lcom/motorola/android/locationproxy/SuplDataService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/android/locationproxy/SuplDataService$SslWorkerThread;->this$0:Lcom/motorola/android/locationproxy/SuplDataService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/android/locationproxy/SuplDataService;Lcom/motorola/android/locationproxy/SuplDataService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/SuplDataService$SslWorkerThread;-><init>(Lcom/motorola/android/locationproxy/SuplDataService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x0

    const-string v10, "SUPLJ"

    const/16 v7, 0x1000

    :try_start_0
    new-array v1, v7, [B

    .local v1, buffer:[B
    iget-object v7, p0, Lcom/motorola/android/locationproxy/SuplDataService$SslWorkerThread;->this$0:Lcom/motorola/android/locationproxy/SuplDataService;

    #getter for: Lcom/motorola/android/locationproxy/SuplDataService;->mSslSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v7}, Lcom/motorola/android/locationproxy/SuplDataService;->access$700(Lcom/motorola/android/locationproxy/SuplDataService;)Ljavax/net/ssl/SSLSocket;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .local v5, iStream:Ljava/io/InputStream;
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, bytesRead:I
    if-ne v2, v12, :cond_1

    const-string v7, "SUPLJ"

    const-string v8, "Got -1 byte"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/io/IOException;

    const-string v8, "Connection closed unexpectedly."

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #buffer:[B
    .end local v2           #bytesRead:I
    .end local v5           #iStream:Ljava/io/InputStream;
    :catch_0
    move-exception v7

    move-object v6, v7

    .local v6, ioe:Ljava/io/IOException;
    const-string v7, "SUPLJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mIsClosing="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/motorola/android/locationproxy/SuplDataService$SslWorkerThread;->this$0:Lcom/motorola/android/locationproxy/SuplDataService;

    #getter for: Lcom/motorola/android/locationproxy/SuplDataService;->mIsClosing:Z
    invoke-static {v8}, Lcom/motorola/android/locationproxy/SuplDataService;->access$900(Lcom/motorola/android/locationproxy/SuplDataService;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/motorola/android/locationproxy/SuplDataService$SslWorkerThread;->this$0:Lcom/motorola/android/locationproxy/SuplDataService;

    #getter for: Lcom/motorola/android/locationproxy/SuplDataService;->mIsClosing:Z
    invoke-static {v7}, Lcom/motorola/android/locationproxy/SuplDataService;->access$900(Lcom/motorola/android/locationproxy/SuplDataService;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/motorola/android/locationproxy/SuplDataService$SslWorkerThread;->this$0:Lcom/motorola/android/locationproxy/SuplDataService;

    invoke-virtual {v7}, Lcom/motorola/android/locationproxy/SuplDataService;->close()V

    new-array v4, v11, [B

    .local v4, emptyData:[B
    iget-object v7, p0, Lcom/motorola/android/locationproxy/SuplDataService$SslWorkerThread;->this$0:Lcom/motorola/android/locationproxy/SuplDataService;

    #getter for: Lcom/motorola/android/locationproxy/SuplDataService;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;
    invoke-static {v7}, Lcom/motorola/android/locationproxy/SuplDataService;->access$600(Lcom/motorola/android/locationproxy/SuplDataService;)Lcom/motorola/android/locationproxy/ISuplCommands;

    move-result-object v7

    invoke-interface {v7, v11, v4, v12}, Lcom/motorola/android/locationproxy/ISuplCommands;->forwardSocketData(I[BI)V

    .end local v4           #emptyData:[B
    .end local v6           #ioe:Ljava/io/IOException;
    :cond_0
    return-void

    .restart local v1       #buffer:[B
    .restart local v2       #bytesRead:I
    .restart local v5       #iStream:Ljava/io/InputStream;
    :cond_1
    if-nez v2, :cond_2

    :try_start_1
    const-string v7, "SUPLJ"

    const-string v8, "0 bytes read."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v7, "SUPLJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bytes from server..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .local v0, bBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const-string v7, "SUPLJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "limit="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/motorola/android/locationproxy/SuplDataService$SslWorkerThread;->this$0:Lcom/motorola/android/locationproxy/SuplDataService;

    #calls: Lcom/motorola/android/locationproxy/SuplDataService;->byteBuffer2ByteArray(Ljava/nio/ByteBuffer;)[B
    invoke-static {v7, v0}, Lcom/motorola/android/locationproxy/SuplDataService;->access$800(Lcom/motorola/android/locationproxy/SuplDataService;Ljava/nio/ByteBuffer;)[B

    move-result-object v3

    .local v3, data:[B
    const-string v7, "SUPLJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "size of data:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/motorola/android/locationproxy/SuplDataService$SslWorkerThread;->this$0:Lcom/motorola/android/locationproxy/SuplDataService;

    #getter for: Lcom/motorola/android/locationproxy/SuplDataService;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;
    invoke-static {v7}, Lcom/motorola/android/locationproxy/SuplDataService;->access$600(Lcom/motorola/android/locationproxy/SuplDataService;)Lcom/motorola/android/locationproxy/ISuplCommands;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v7, v8, v3, v9}, Lcom/motorola/android/locationproxy/ISuplCommands;->forwardSocketData(I[BI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
