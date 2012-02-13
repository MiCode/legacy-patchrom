.class Lcom/motorola/android/locationproxy/Supl$SuplReceiver;
.super Ljava/lang/Object;
.source "Supl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/locationproxy/Supl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SuplReceiver"
.end annotation


# instance fields
.field buffer:[B

.field final synthetic this$0:Lcom/motorola/android/locationproxy/Supl;


# direct methods
.method constructor <init>(Lcom/motorola/android/locationproxy/Supl;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/android/locationproxy/Supl$SuplReceiver;->this$0:Lcom/motorola/android/locationproxy/Supl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xfffd

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/motorola/android/locationproxy/Supl$SuplReceiver;->buffer:[B

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    const/4 v12, 0x0

    .local v12, retryCount:I
    :goto_0
    const/4 v14, 0x0

    .local v14, s:Landroid/net/LocalSocket;
    :try_start_0
    new-instance v15, Landroid/net/LocalSocket;

    invoke-direct {v15}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .end local v14           #s:Landroid/net/LocalSocket;
    .local v15, s:Landroid/net/LocalSocket;
    :try_start_1
    new-instance v9, Landroid/net/LocalSocketAddress;

    const-string v18, "location_shim"

    sget-object v19, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    move-object v0, v9

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .local v9, l:Landroid/net/LocalSocketAddress;
    invoke-virtual {v15, v9}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5

    const/4 v12, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl$SuplReceiver;->this$0:Lcom/motorola/android/locationproxy/Supl;

    move-object/from16 v18, v0

    move-object v0, v15

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/motorola/android/locationproxy/Supl;->mSocket:Landroid/net/LocalSocket;

    const-string v18, "SUPLJ"

    const-string v19, "Connected to \'location_shim\' socket"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5

    const/4 v10, 0x0

    .local v10, length:I
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl$SuplReceiver;->this$0:Lcom/motorola/android/locationproxy/Supl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl;->mSocket:Landroid/net/LocalSocket;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .local v8, is:Ljava/io/InputStream;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl$SuplReceiver;->buffer:[B

    move-object/from16 v18, v0

    move-object v0, v8

    move-object/from16 v1, v18

    #calls: Lcom/motorola/android/locationproxy/Supl;->readSuplMessage(Ljava/io/InputStream;[B)I
    invoke-static {v0, v1}, Lcom/motorola/android/locationproxy/Supl;->access$000(Ljava/io/InputStream;[B)I

    move-result v10

    if-gez v10, :cond_3

    const-string v18, "SUPLJ"

    const-string v19, "Read Supl Message ERROR"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6

    .end local v8           #is:Ljava/io/InputStream;
    :goto_2
    :try_start_4
    const-string v18, "SUPLJ"

    const-string v19, "Disconnected from \'location_shim\' socket"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl$SuplReceiver;->this$0:Lcom/motorola/android/locationproxy/Supl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl;->mSocket:Landroid/net/LocalSocket;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    :goto_3
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl$SuplReceiver;->this$0:Lcom/motorola/android/locationproxy/Supl;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/motorola/android/locationproxy/Supl;->mSocket:Landroid/net/LocalSocket;

    invoke-static {}, Lcom/motorola/android/locationproxy/SuplRequest;->resetSerial()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl$SuplReceiver;->this$0:Lcom/motorola/android/locationproxy/Supl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    monitor-enter v18
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    const/4 v7, 0x0

    .local v7, i:I
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl$SuplReceiver;->this$0:Lcom/motorola/android/locationproxy/Supl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v16

    .local v16, sz:I
    :goto_4
    move v0, v7

    move/from16 v1, v16

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl$SuplReceiver;->this$0:Lcom/motorola/android/locationproxy/Supl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/motorola/android/locationproxy/SuplRequest;

    .local v13, rr:Lcom/motorola/android/locationproxy/SuplRequest;
    invoke-virtual {v13}, Lcom/motorola/android/locationproxy/SuplRequest;->release()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .end local v7           #i:I
    .end local v9           #l:Landroid/net/LocalSocketAddress;
    .end local v10           #length:I
    .end local v13           #rr:Lcom/motorola/android/locationproxy/SuplRequest;
    .end local v15           #s:Landroid/net/LocalSocket;
    .end local v16           #sz:I
    .restart local v14       #s:Landroid/net/LocalSocket;
    :catch_0
    move-exception v18

    move-object/from16 v5, v18

    .local v5, ex:Ljava/io/IOException;
    :goto_5
    if-eqz v14, :cond_0

    :try_start_8
    invoke-virtual {v14}, Landroid/net/LocalSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    :cond_0
    :goto_6
    const/16 v18, 0x2

    move v0, v12

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    :try_start_9
    const-string v18, "SUPLJ"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Couldn\'t find \'location_shim\' socket after "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " times, continuing to retry silently"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    :cond_1
    :goto_7
    const-wide/16 v18, 0xfa0

    :try_start_a
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    :goto_8
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception v6

    .local v6, ex2:Ljava/io/IOException;
    :try_start_b
    const-string v18, "SUPLJ"

    const-string v19, "Ignore failure to close after failure to connect"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_6

    .end local v5           #ex:Ljava/io/IOException;
    .end local v6           #ex2:Ljava/io/IOException;
    :catch_2
    move-exception v18

    move-object/from16 v17, v18

    .local v17, tr:Ljava/lang/Throwable;
    :goto_9
    const-string v18, "SUPLJ"

    const-string v19, "Uncaught exception"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .end local v17           #tr:Ljava/lang/Throwable;
    .restart local v5       #ex:Ljava/io/IOException;
    :cond_2
    if-lez v12, :cond_1

    const/16 v18, 0x2

    move v0, v12

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    :try_start_c
    const-string v18, "SUPLJ"

    const-string v19, "Couldn\'t find \'location_shim\' socket; retrying after timeout"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :catch_3
    move-exception v4

    .local v4, er:Ljava/lang/InterruptedException;
    const-string v18, "SUPLJ"

    const-string v19, "InterruptedException"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_8

    .end local v4           #er:Ljava/lang/InterruptedException;
    .end local v5           #ex:Ljava/io/IOException;
    .end local v14           #s:Landroid/net/LocalSocket;
    .restart local v8       #is:Ljava/io/InputStream;
    .restart local v9       #l:Landroid/net/LocalSocketAddress;
    .restart local v10       #length:I
    .restart local v15       #s:Landroid/net/LocalSocket;
    :cond_3
    :try_start_d
    const-string v18, "SUPLJ"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Read packet: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " bytes"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl$SuplReceiver;->buffer:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v10

    #calls: Lcom/motorola/android/locationproxy/Supl;->logHexData([BI)V
    invoke-static {v0, v1}, Lcom/motorola/android/locationproxy/Supl;->access$100([BI)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    .local v11, p:Landroid/os/Parcel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl$SuplReceiver;->buffer:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object v0, v11

    move-object/from16 v1, v18

    move/from16 v2, v19

    move v3, v10

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    const/16 v18, 0x0

    move-object v0, v11

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl$SuplReceiver;->this$0:Lcom/motorola/android/locationproxy/Supl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v11

    #calls: Lcom/motorola/android/locationproxy/Supl;->processResponse(Landroid/os/Parcel;)V
    invoke-static {v0, v1}, Lcom/motorola/android/locationproxy/Supl;->access$200(Lcom/motorola/android/locationproxy/Supl;Landroid/os/Parcel;)V

    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_1

    .end local v8           #is:Ljava/io/InputStream;
    .end local v11           #p:Landroid/os/Parcel;
    :catch_4
    move-exception v18

    move-object/from16 v5, v18

    .restart local v5       #ex:Ljava/io/IOException;
    :try_start_e
    const-string v18, "SUPLJ"

    const-string v19, "\'location_shim\' socket closed"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .end local v5           #ex:Ljava/io/IOException;
    .end local v9           #l:Landroid/net/LocalSocketAddress;
    .end local v10           #length:I
    :catch_5
    move-exception v18

    move-object/from16 v17, v18

    move-object v14, v15

    .end local v15           #s:Landroid/net/LocalSocket;
    .restart local v14       #s:Landroid/net/LocalSocket;
    goto/16 :goto_9

    .end local v14           #s:Landroid/net/LocalSocket;
    .restart local v9       #l:Landroid/net/LocalSocketAddress;
    .restart local v10       #length:I
    .restart local v15       #s:Landroid/net/LocalSocket;
    :catch_6
    move-exception v18

    move-object/from16 v17, v18

    .restart local v17       #tr:Ljava/lang/Throwable;
    const-string v18, "SUPLJ"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Uncaught exception read length="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .end local v17           #tr:Ljava/lang/Throwable;
    :catch_7
    move-exception v18

    move-object/from16 v5, v18

    .restart local v5       #ex:Ljava/io/IOException;
    const-string v18, "SUPLJ"

    const-string v19, "Close socket error"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5

    goto/16 :goto_3

    .end local v5           #ex:Ljava/io/IOException;
    .restart local v7       #i:I
    .restart local v16       #sz:I
    :cond_4
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl$SuplReceiver;->this$0:Lcom/motorola/android/locationproxy/Supl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    monitor-exit v18

    goto/16 :goto_0

    .end local v16           #sz:I
    :catchall_0
    move-exception v19

    monitor-exit v18
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    throw v19
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_5

    .end local v7           #i:I
    .end local v9           #l:Landroid/net/LocalSocketAddress;
    .end local v10           #length:I
    :catch_8
    move-exception v18

    move-object/from16 v5, v18

    move-object v14, v15

    .end local v15           #s:Landroid/net/LocalSocket;
    .restart local v14       #s:Landroid/net/LocalSocket;
    goto/16 :goto_5
.end method
