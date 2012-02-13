.class Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;
.super Ljava/lang/Object;
.source "SuplHttpPost.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/locationproxy/SuplHttpPost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpThread"
.end annotation


# instance fields
.field retcode:I

.field final synthetic this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;


# direct methods
.method private constructor <init>(Lcom/motorola/android/locationproxy/SuplHttpPost;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x190

    iput v0, p0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->retcode:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/android/locationproxy/SuplHttpPost;Lcom/motorola/android/locationproxy/SuplHttpPost$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;-><init>(Lcom/motorola/android/locationproxy/SuplHttpPost;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    :try_start_0
    const-string v14, "SuplHttpPost"

    const-string v15, "HttpThread: run()"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/motorola/android/locationproxy/SuplHttpClient;

    invoke-direct {v3}, Lcom/motorola/android/locationproxy/SuplHttpClient;-><init>()V

    .local v3, client:Lcom/motorola/android/locationproxy/SuplHttpClient;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    move-object v14, v0

    #getter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mPort:I
    invoke-static {v14}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$100(Lcom/motorola/android/locationproxy/SuplHttpPost;)I

    move-result v14

    invoke-virtual {v3, v14}, Lcom/motorola/android/locationproxy/SuplHttpClient;->setHttpsPort(I)V

    invoke-virtual {v3}, Lcom/motorola/android/locationproxy/SuplHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v14

    const-string v15, "http.protocol.version"

    sget-object v16, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-interface/range {v14 .. v16}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-virtual {v3}, Lcom/motorola/android/locationproxy/SuplHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v14

    const-string v15, "http.socket.timeout"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    move-object/from16 v16, v0

    #getter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mHttpTimeout:I
    invoke-static/range {v16 .. v16}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$200(Lcom/motorola/android/locationproxy/SuplHttpPost;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-interface/range {v14 .. v16}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    move-object v15, v0

    #getter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mFilePath:Ljava/lang/String;
    invoke-static {v15}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$300(Lcom/motorola/android/locationproxy/SuplHttpPost;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/motorola/android/locationproxy/SuplHttpPost;->createGzipFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, gzipFile:Ljava/lang/String;
    if-nez v8, :cond_2

    const-string v14, "SuplHttpPost"

    const-string v15, "Failed to create the gzip file!"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->retcode:I

    move v14, v0

    const/16 v15, 0xc8

    if-ne v14, v15, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    move-object v14, v0

    const/4 v15, 0x0

    #setter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mShimStatus:B
    invoke-static {v14, v15}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$602(Lcom/motorola/android/locationproxy/SuplHttpPost;B)B

    :cond_0
    const-string v14, "SuplHttpPost"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "send http post status to Shim:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    move-object/from16 v16, v0

    #getter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mShimStatus:B
    invoke-static/range {v16 .. v16}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$600(Lcom/motorola/android/locationproxy/SuplHttpPost;)B

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    move-object v14, v0

    #getter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;
    invoke-static {v14}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$800(Lcom/motorola/android/locationproxy/SuplHttpPost;)Lcom/motorola/android/locationproxy/ISuplCommands;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    move-object v15, v0

    #getter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mCmdId:I
    invoke-static {v15}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$700(Lcom/motorola/android/locationproxy/SuplHttpPost;)I

    move-result v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    move-object/from16 v17, v0

    #getter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mShimStatus:B
    invoke-static/range {v17 .. v17}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$600(Lcom/motorola/android/locationproxy/SuplHttpPost;)B

    move-result v17

    invoke-interface/range {v14 .. v17}, Lcom/motorola/android/locationproxy/ISuplCommands;->sendHttpResult(IIB)V

    new-instance v11, Ljava/io/File;

    const-string v14, "/tmp/CELL_FINDER_PROTOCOL.TXT.gz"

    invoke-direct {v11, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v11, newFile:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v14

    if-eqz v14, :cond_1

    const-string v14, "SuplHttpPost"

    const-string v15, "deleted gzip file:/tmp/CELL_FINDER_PROTOCOL.TXT.gz"

    :goto_0
    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .end local v11           #newFile:Ljava/io/File;
    :cond_2
    const/4 v2, 0x0

    .local v2, body:[B
    :try_start_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v7, file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_4

    const-string v14, "SuplHttpPost"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "gz file not existed:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->retcode:I

    move v14, v0

    const/16 v15, 0xc8

    if-ne v14, v15, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    move-object v14, v0

    const/4 v15, 0x0

    #setter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mShimStatus:B
    invoke-static {v14, v15}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$602(Lcom/motorola/android/locationproxy/SuplHttpPost;B)B

    :cond_3
    const-string v14, "SuplHttpPost"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "send http post status to Shim:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    move-object/from16 v16, v0

    #getter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mShimStatus:B
    invoke-static/range {v16 .. v16}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$600(Lcom/motorola/android/locationproxy/SuplHttpPost;)B

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    move-object v14, v0

    #getter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;
    invoke-static {v14}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$800(Lcom/motorola/android/locationproxy/SuplHttpPost;)Lcom/motorola/android/locationproxy/ISuplCommands;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    move-object v15, v0

    #getter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mCmdId:I
    invoke-static {v15}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$700(Lcom/motorola/android/locationproxy/SuplHttpPost;)I

    move-result v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    move-object/from16 v17, v0

    #getter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mShimStatus:B
    invoke-static/range {v17 .. v17}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$600(Lcom/motorola/android/locationproxy/SuplHttpPost;)B

    move-result v17

    invoke-interface/range {v14 .. v17}, Lcom/motorola/android/locationproxy/ISuplCommands;->sendHttpResult(IIB)V

    new-instance v11, Ljava/io/File;

    const-string v14, "/tmp/CELL_FINDER_PROTOCOL.TXT.gz"

    invoke-direct {v11, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v11       #newFile:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v14

    if-eqz v14, :cond_1

    const-string v14, "SuplHttpPost"

    const-string v15, "deleted gzip file:/tmp/CELL_FINDER_PROTOCOL.TXT.gz"

    goto/16 :goto_0

    .end local v11           #newFile:Ljava/io/File;
    :cond_4
    :try_start_2
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v14

    long-to-int v14, v14

    new-array v2, v14, [B

    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .local v13, s:Ljava/io/FileInputStream;
    :try_start_3
    invoke-virtual {v13, v2}, Ljava/io/FileInputStream;->read([B)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v13, :cond_5

    :try_start_4
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v7           #file:Ljava/io/File;
    .end local v13           #s:Ljava/io/FileInputStream;
    :cond_5
    :goto_1
    :try_start_5
    new-instance v5, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v5, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .local v5, entity:Lorg/apache/http/HttpEntity;
    new-instance v10, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v10}, Lorg/apache/http/client/methods/HttpPost;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .local v10, mHttpPost:Lorg/apache/http/client/methods/HttpPost;
    :try_start_6
    new-instance v14, Ljava/net/URI;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    move-object v15, v0

    #getter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mHttpUrl:Ljava/lang/String;
    invoke-static {v15}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$400(Lcom/motorola/android/locationproxy/SuplHttpPost;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v14}, Lorg/apache/http/client/methods/HttpPost;->setURI(Ljava/net/URI;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_6} :catch_2

    :goto_2
    :try_start_7
    invoke-virtual {v10, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    const-string v14, "User-Agent"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    move-object v15, v0

    #getter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mUserAgent:Ljava/lang/String;
    invoke-static {v15}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$500(Lcom/motorola/android/locationproxy/SuplHttpPost;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "Content-Type"

    const-string v15, "application/octet-stream"

    invoke-virtual {v10, v14, v15}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "Connection"

    const-string v15, "Close"

    invoke-virtual {v10, v14, v15}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-virtual {v3, v10}, Lcom/motorola/android/locationproxy/SuplHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .local v12, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->retcode:I

    const-string v14, "SuplHttpPost"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    move-object/from16 v16, v0

    #getter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mHttpUrl:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$400(Lcom/motorola/android/locationproxy/SuplHttpPost;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " - code: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->retcode:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " status: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .end local v12           #response:Lorg/apache/http/HttpResponse;
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->retcode:I

    move v14, v0

    const/16 v15, 0xc8

    if-ne v14, v15, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    move-object v14, v0

    const/4 v15, 0x0

    #setter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mShimStatus:B
    invoke-static {v14, v15}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$602(Lcom/motorola/android/locationproxy/SuplHttpPost;B)B

    :cond_6
    const-string v14, "SuplHttpPost"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "send http post status to Shim:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    move-object/from16 v16, v0

    #getter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mShimStatus:B
    invoke-static/range {v16 .. v16}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$600(Lcom/motorola/android/locationproxy/SuplHttpPost;)B

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    move-object v14, v0

    #getter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;
    invoke-static {v14}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$800(Lcom/motorola/android/locationproxy/SuplHttpPost;)Lcom/motorola/android/locationproxy/ISuplCommands;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    move-object v15, v0

    #getter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mCmdId:I
    invoke-static {v15}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$700(Lcom/motorola/android/locationproxy/SuplHttpPost;)I

    move-result v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    move-object/from16 v17, v0

    #getter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mShimStatus:B
    invoke-static/range {v17 .. v17}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$600(Lcom/motorola/android/locationproxy/SuplHttpPost;)B

    move-result v17

    invoke-interface/range {v14 .. v17}, Lcom/motorola/android/locationproxy/ISuplCommands;->sendHttpResult(IIB)V

    new-instance v11, Ljava/io/File;

    const-string v14, "/tmp/CELL_FINDER_PROTOCOL.TXT.gz"

    invoke-direct {v11, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v11       #newFile:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v14

    if-eqz v14, :cond_1

    const-string v14, "SuplHttpPost"

    const-string v15, "deleted gzip file:/tmp/CELL_FINDER_PROTOCOL.TXT.gz"

    goto/16 :goto_0

    .end local v5           #entity:Lorg/apache/http/HttpEntity;
    .end local v10           #mHttpPost:Lorg/apache/http/client/methods/HttpPost;
    .end local v11           #newFile:Ljava/io/File;
    .restart local v7       #file:Ljava/io/File;
    .restart local v13       #s:Ljava/io/FileInputStream;
    :catchall_0
    move-exception v14

    if-eqz v13, :cond_7

    :try_start_9
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    :cond_7
    throw v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .end local v7           #file:Ljava/io/File;
    .end local v13           #s:Ljava/io/FileInputStream;
    :catch_0
    move-exception v14

    move-object v6, v14

    .local v6, ex:Ljava/io/FileNotFoundException;
    :try_start_a
    const-string v14, "SuplHttpPost"

    const-string v15, "FileNotFoundException:"

    invoke-static {v14, v15, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_1

    .end local v2           #body:[B
    .end local v3           #client:Lcom/motorola/android/locationproxy/SuplHttpClient;
    .end local v6           #ex:Ljava/io/FileNotFoundException;
    .end local v8           #gzipFile:Ljava/lang/String;
    :catchall_1
    move-exception v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->retcode:I

    move v15, v0

    const/16 v16, 0xc8

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    move-object v15, v0

    const/16 v16, 0x0

    #setter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mShimStatus:B
    invoke-static/range {v15 .. v16}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$602(Lcom/motorola/android/locationproxy/SuplHttpPost;B)B

    :cond_8
    const-string v15, "SuplHttpPost"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "send http post status to Shim:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    move-object/from16 v17, v0

    #getter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mShimStatus:B
    invoke-static/range {v17 .. v17}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$600(Lcom/motorola/android/locationproxy/SuplHttpPost;)B

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    move-object v15, v0

    #getter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;
    invoke-static {v15}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$800(Lcom/motorola/android/locationproxy/SuplHttpPost;)Lcom/motorola/android/locationproxy/ISuplCommands;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    move-object/from16 v16, v0

    #getter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mCmdId:I
    invoke-static/range {v16 .. v16}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$700(Lcom/motorola/android/locationproxy/SuplHttpPost;)I

    move-result v16

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mShimStatus:B
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$600(Lcom/motorola/android/locationproxy/SuplHttpPost;)B

    move-result v18

    invoke-interface/range {v15 .. v18}, Lcom/motorola/android/locationproxy/ISuplCommands;->sendHttpResult(IIB)V

    new-instance v11, Ljava/io/File;

    const-string v15, "/tmp/CELL_FINDER_PROTOCOL.TXT.gz"

    invoke-direct {v11, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v11       #newFile:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v15

    if-eqz v15, :cond_9

    const-string v15, "SuplHttpPost"

    const-string v16, "deleted gzip file:/tmp/CELL_FINDER_PROTOCOL.TXT.gz"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    throw v14

    .end local v11           #newFile:Ljava/io/File;
    .restart local v2       #body:[B
    .restart local v3       #client:Lcom/motorola/android/locationproxy/SuplHttpClient;
    .restart local v8       #gzipFile:Ljava/lang/String;
    :catch_1
    move-exception v14

    move-object v9, v14

    .local v9, ioe:Ljava/io/IOException;
    :try_start_b
    const-string v14, "SuplHttpPost"

    const-string v15, "IOException:"

    invoke-static {v14, v15, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .end local v9           #ioe:Ljava/io/IOException;
    .restart local v5       #entity:Lorg/apache/http/HttpEntity;
    .restart local v10       #mHttpPost:Lorg/apache/http/client/methods/HttpPost;
    :catch_2
    move-exception v14

    move-object v4, v14

    .local v4, e:Ljava/net/URISyntaxException;
    const-string v14, "SuplHttpPost"

    const-string v15, "URISyntaxException:"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .end local v4           #e:Ljava/net/URISyntaxException;
    :catch_3
    move-exception v14

    move-object v4, v14

    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    const-string v14, "SuplHttpPost"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    move-object/from16 v16, v0

    #getter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mHttpUrl:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$400(Lcom/motorola/android/locationproxy/SuplHttpPost;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " - error: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_3
.end method
