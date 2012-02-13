.class final Lcom/android/server/NativeDaemonConnector;
.super Ljava/lang/Object;
.source "NativeDaemonConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NativeDaemonConnector$ResponseCode;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGD:Z


# instance fields
.field private final BUFFER_SIZE:I

.field private TAG:Ljava/lang/String;

.field private mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

.field private mOutputStream:Ljava/io/OutputStream;

.field private mResponseQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSocket:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter "callbacks"
    .parameter "socket"
    .parameter "responseQueueSize"
    .parameter "logTag"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NativeDaemonConnector"

    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const/16 v0, 0x1000

    iput v0, p0, Lcom/android/server/NativeDaemonConnector;->BUFFER_SIZE:I

    iput-object p1, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    if-eqz p4, :cond_0

    iput-object p4, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    :cond_0
    iput-object p2, p0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, p3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method private listenToSocket()V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v16, 0x0

    .local v16, socket:Landroid/net/LocalSocket;
    :try_start_0
    new-instance v17, Landroid/net/LocalSocket;

    invoke-direct/range {v17 .. v17}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8

    .end local v16           #socket:Landroid/net/LocalSocket;
    .local v17, socket:Landroid/net/LocalSocket;
    :try_start_1
    new-instance v5, Landroid/net/LocalSocketAddress;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    move-object/from16 v20, v0

    sget-object v21, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    move-object v0, v5

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .local v5, address:Landroid/net/LocalSocketAddress;
    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    invoke-virtual/range {v17 .. v17}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    .local v13, inputStream:Ljava/io/InputStream;
    invoke-virtual/range {v17 .. v17}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onDaemonConnected()V

    const/16 v20, 0x1000

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object v6, v0

    .local v6, buffer:[B
    const/16 v18, 0x0

    .local v18, start:I
    :goto_0
    const/16 v20, 0x1000

    sub-int v20, v20, v18

    move-object v0, v13

    move-object v1, v6

    move/from16 v2, v18

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v8

    .local v8, count:I
    if-gez v8, :cond_2

    monitor-enter p0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v20, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v20, :cond_0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    :goto_1
    const/16 v20, 0x0

    :try_start_4
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    :cond_0
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v17, :cond_1

    :try_start_5
    invoke-virtual/range {v17 .. v17}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :cond_1
    :goto_2
    return-void

    :cond_2
    add-int v8, v8, v18

    const/16 v18, 0x0

    const/4 v12, 0x0

    .local v12, i:I
    :goto_3
    if-ge v12, v8, :cond_8

    :try_start_6
    aget-byte v20, v6, v12

    if-nez v20, :cond_4

    new-instance v10, Ljava/lang/String;

    sub-int v20, v12, v18

    move-object v0, v10

    move-object v1, v6

    move/from16 v2, v18

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .local v10, event:Ljava/lang/String;
    const-string v20, " "

    move-object v0, v10

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v19

    .local v19, tokens:[Ljava/lang/String;
    const/16 v20, 0x0

    :try_start_7
    aget-object v20, v19, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    move-result v7

    .local v7, code:I
    const/16 v20, 0x258

    move v0, v7

    move/from16 v1, v20

    if-lt v0, v1, :cond_7

    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v7

    move-object v2, v10

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onEvent(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "Unhandled event (%s)"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v10, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .end local v7           #code:I
    :cond_3
    :goto_4
    add-int/lit8 v18, v12, 0x1

    .end local v10           #event:Ljava/lang/String;
    .end local v19           #tokens:[Ljava/lang/String;
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .restart local v7       #code:I
    .restart local v10       #event:Ljava/lang/String;
    .restart local v19       #tokens:[Ljava/lang/String;
    :catch_0
    move-exception v20

    move-object/from16 v11, v20

    .local v11, ex:Ljava/lang/Exception;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "Error handling \'%s\'"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v10, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_4

    .end local v7           #code:I
    .end local v11           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v20

    move-object/from16 v14, v20

    .local v14, nfe:Ljava/lang/NumberFormatException;
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "Bad msg (%s)"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v10, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_4

    .end local v5           #address:Landroid/net/LocalSocketAddress;
    .end local v6           #buffer:[B
    .end local v8           #count:I
    .end local v10           #event:Ljava/lang/String;
    .end local v12           #i:I
    .end local v13           #inputStream:Ljava/io/InputStream;
    .end local v14           #nfe:Ljava/lang/NumberFormatException;
    .end local v18           #start:I
    .end local v19           #tokens:[Ljava/lang/String;
    :catch_2
    move-exception v20

    move-object/from16 v11, v20

    move-object/from16 v16, v17

    .end local v17           #socket:Landroid/net/LocalSocket;
    .local v11, ex:Ljava/io/IOException;
    .restart local v16       #socket:Landroid/net/LocalSocket;
    :goto_5
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "Communications error"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v11
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .end local v11           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v20

    :goto_6
    monitor-enter p0

    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v21, v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-eqz v21, :cond_5

    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    :goto_7
    const/16 v21, 0x0

    :try_start_e
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    :cond_5
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-eqz v16, :cond_6

    :try_start_f
    invoke-virtual/range {v16 .. v16}, Landroid/net/LocalSocket;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4

    :cond_6
    :goto_8
    throw v20

    .end local v16           #socket:Landroid/net/LocalSocket;
    .restart local v5       #address:Landroid/net/LocalSocketAddress;
    .restart local v6       #buffer:[B
    .restart local v7       #code:I
    .restart local v8       #count:I
    .restart local v10       #event:Ljava/lang/String;
    .restart local v12       #i:I
    .restart local v13       #inputStream:Ljava/io/InputStream;
    .restart local v17       #socket:Landroid/net/LocalSocket;
    .restart local v18       #start:I
    .restart local v19       #tokens:[Ljava/lang/String;
    :cond_7
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v10

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2

    goto/16 :goto_4

    :catch_3
    move-exception v20

    move-object/from16 v11, v20

    .local v11, ex:Ljava/lang/InterruptedException;
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "Failed to put response onto queue"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_2

    goto/16 :goto_4

    .end local v5           #address:Landroid/net/LocalSocketAddress;
    .end local v6           #buffer:[B
    .end local v7           #code:I
    .end local v8           #count:I
    .end local v10           #event:Ljava/lang/String;
    .end local v11           #ex:Ljava/lang/InterruptedException;
    .end local v12           #i:I
    .end local v13           #inputStream:Ljava/io/InputStream;
    .end local v18           #start:I
    .end local v19           #tokens:[Ljava/lang/String;
    :catchall_1
    move-exception v20

    move-object/from16 v16, v17

    .end local v17           #socket:Landroid/net/LocalSocket;
    .restart local v16       #socket:Landroid/net/LocalSocket;
    goto :goto_6

    .end local v16           #socket:Landroid/net/LocalSocket;
    .restart local v5       #address:Landroid/net/LocalSocketAddress;
    .restart local v6       #buffer:[B
    .restart local v8       #count:I
    .restart local v12       #i:I
    .restart local v13       #inputStream:Ljava/io/InputStream;
    .restart local v17       #socket:Landroid/net/LocalSocket;
    .restart local v18       #start:I
    :cond_8
    move/from16 v0, v18

    move v1, v8

    if-eq v0, v1, :cond_9

    const/16 v20, 0x1000

    sub-int v15, v20, v18

    .local v15, remaining:I
    const/16 v20, 0x0

    :try_start_12
    move-object v0, v6

    move/from16 v1, v18

    move-object v2, v6

    move/from16 v3, v20

    move v4, v15

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2

    move/from16 v18, v15

    goto/16 :goto_0

    .end local v15           #remaining:I
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_0

    .end local v5           #address:Landroid/net/LocalSocketAddress;
    .end local v6           #buffer:[B
    .end local v8           #count:I
    .end local v12           #i:I
    .end local v13           #inputStream:Ljava/io/InputStream;
    .end local v17           #socket:Landroid/net/LocalSocket;
    .end local v18           #start:I
    .restart local v16       #socket:Landroid/net/LocalSocket;
    :catchall_2
    move-exception v20

    :try_start_13
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    throw v20

    :catch_4
    move-exception v11

    .local v11, ex:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "Failed closing socket"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .end local v11           #ex:Ljava/io/IOException;
    :catch_5
    move-exception v21

    move-object/from16 v9, v21

    .local v9, e:Ljava/io/IOException;
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "Failed closing output stream"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    goto :goto_7

    .end local v9           #e:Ljava/io/IOException;
    .end local v16           #socket:Landroid/net/LocalSocket;
    .restart local v5       #address:Landroid/net/LocalSocketAddress;
    .restart local v6       #buffer:[B
    .restart local v8       #count:I
    .restart local v13       #inputStream:Ljava/io/InputStream;
    .restart local v17       #socket:Landroid/net/LocalSocket;
    .restart local v18       #start:I
    :catchall_3
    move-exception v20

    :try_start_15
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    throw v20

    :catch_6
    move-exception v11

    .restart local v11       #ex:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "Failed closing socket"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .end local v11           #ex:Ljava/io/IOException;
    :catch_7
    move-exception v20

    move-object/from16 v9, v20

    .restart local v9       #e:Ljava/io/IOException;
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "Failed closing output stream"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    goto/16 :goto_1

    .end local v5           #address:Landroid/net/LocalSocketAddress;
    .end local v6           #buffer:[B
    .end local v8           #count:I
    .end local v9           #e:Ljava/io/IOException;
    .end local v13           #inputStream:Ljava/io/InputStream;
    .end local v17           #socket:Landroid/net/LocalSocket;
    .end local v18           #start:I
    .restart local v16       #socket:Landroid/net/LocalSocket;
    :catch_8
    move-exception v20

    move-object/from16 v11, v20

    goto/16 :goto_5
.end method

.method private sendCommand(Ljava/lang/String;)V
    .locals 1
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/NativeDaemonConnector;->sendCommand(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "command"
    .parameter "argument"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string v3, "No connection to daemon"

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Lcom/android/server/NativeDaemonConnectorException;

    const-string v3, "No output stream!"

    invoke-direct {v2, v3}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, builder:Ljava/lang/StringBuilder;
    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    :try_start_3
    monitor-exit p0

    return-void

    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, ex:Ljava/io/IOException;
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string v3, "IOException in sendCommand"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .parameter "cmd"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->clear()V

    invoke-direct {p0, p1}, Lcom/android/server/NativeDaemonConnector;->sendCommand(Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v5, response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, complete:Z
    const/4 v0, -0x1

    .local v0, code:I
    :goto_0
    if-nez v1, :cond_1

    :try_start_1
    iget-object v7, p0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, line:Ljava/lang/String;
    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .local v6, tokens:[Ljava/lang/String;
    const/4 v7, 0x0

    :try_start_2
    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    const/16 v7, 0xc8

    if-lt v0, v7, :cond_0

    const/16 v7, 0x258

    if-ge v0, v7, :cond_0

    const/4 v1, 0x1

    :cond_0
    :try_start_3
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .end local v3           #line:Ljava/lang/String;
    .end local v6           #tokens:[Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v2, v7

    .local v2, ex:Ljava/lang/InterruptedException;
    :try_start_4
    iget-object v7, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string v8, "Failed to process response"

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .end local v0           #code:I
    .end local v1           #complete:Z
    .end local v2           #ex:Ljava/lang/InterruptedException;
    .end local v5           #response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .restart local v0       #code:I
    .restart local v1       #complete:Z
    .restart local v3       #line:Ljava/lang/String;
    .restart local v5       #response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6       #tokens:[Ljava/lang/String;
    :catch_1
    move-exception v7

    move-object v4, v7

    .local v4, nfe:Ljava/lang/NumberFormatException;
    :try_start_5
    new-instance v7, Lcom/android/server/NativeDaemonConnectorException;

    const-string v8, "Invalid response from daemon (%s)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v3           #line:Ljava/lang/String;
    .end local v4           #nfe:Ljava/lang/NumberFormatException;
    .end local v6           #tokens:[Ljava/lang/String;
    :cond_1
    const/16 v7, 0x190

    if-lt v0, v7, :cond_2

    const/16 v7, 0x257

    if-gt v0, v7, :cond_2

    :try_start_6
    new-instance v8, Lcom/android/server/NativeDaemonConnectorException;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v11

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v9, 0x4

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v0, p1, v7}, Lcom/android/server/NativeDaemonConnectorException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_2
    monitor-exit p0

    return-object v5
.end method

.method public doListCommand(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 18
    .parameter "cmd"
    .parameter "expectedResponseCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .prologue
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .local v11, rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .local v10, rdata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, idx:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v3, v13, :cond_4

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .local v8, line:Ljava/lang/String;
    :try_start_0
    const-string v13, " "

    invoke-virtual {v8, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .local v12, tok:[Ljava/lang/String;
    const/4 v13, 0x0

    aget-object v13, v12, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .local v2, code:I
    move v0, v2

    move/from16 v1, p2

    if-ne v0, v1, :cond_1

    add-int/lit8 v5, v4, 0x1

    .end local v4           #idx:I
    .local v5, idx:I
    const/4 v13, 0x0

    :try_start_1
    aget-object v13, v12, v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v8, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v4, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move v4, v5

    .end local v5           #idx:I
    .restart local v4       #idx:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/16 v13, 0xc8

    if-ne v2, v13, :cond_3

    :try_start_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    sub-int v7, v13, v14

    .local v7, last:I
    if-eq v3, v7, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object v13, v0

    const-string v14, "Recv\'d %d lines after end of list {%s}"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    sub-int v17, v7, v3

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object p1, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v3

    .local v6, j:I
    :goto_1
    if-gt v6, v7, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object v13, v0

    const-string v14, "ExtraData <%s>"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v6           #j:I
    :cond_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v13, v13, [Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0

    .end local v7           #last:I
    .restart local p0
    :cond_3
    const/16 v13, 0x258

    if-ge v2, v13, :cond_0

    new-instance v13, Lcom/android/server/NativeDaemonConnectorException;

    const-string v14, "Expected list response %d, but got %d"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v2           #code:I
    .end local v12           #tok:[Ljava/lang/String;
    .end local p0
    :catch_0
    move-exception v13

    move-object v9, v13

    .local v9, nfe:Ljava/lang/NumberFormatException;
    :goto_2
    new-instance v13, Lcom/android/server/NativeDaemonConnectorException;

    const-string v14, "Error reading code \'%s\'"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v8, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v13

    .end local v8           #line:Ljava/lang/String;
    .end local v9           #nfe:Ljava/lang/NumberFormatException;
    .restart local p0
    :cond_4
    new-instance v13, Lcom/android/server/NativeDaemonConnectorException;

    const-string v14, "Got an empty response"

    invoke-direct {v13, v14}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v13

    .end local v4           #idx:I
    .restart local v2       #code:I
    .restart local v5       #idx:I
    .restart local v8       #line:Ljava/lang/String;
    .restart local v12       #tok:[Ljava/lang/String;
    :catch_1
    move-exception v13

    move-object v9, v13

    move v4, v5

    .end local v5           #idx:I
    .restart local v4       #idx:I
    goto :goto_2
.end method

.method public run()V
    .locals 3

    .prologue
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/NativeDaemonConnector;->listenToSocket()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string v2, "Error in NativeDaemonConnector"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v1, 0x1388

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method
