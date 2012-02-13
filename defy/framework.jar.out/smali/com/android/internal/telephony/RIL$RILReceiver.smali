.class Lcom/android/internal/telephony/RIL$RILReceiver;
.super Ljava/lang/Object;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RILReceiver"
.end annotation


# instance fields
.field buffer:[B

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    const-string v12, "RILJ"

    const/4 v5, 0x0

    .local v5, retryCount:I
    :goto_0
    const/4 v6, 0x0

    .local v6, s:Landroid/net/LocalSocket;
    :try_start_0
    new-instance v7, Landroid/net/LocalSocket;

    invoke-direct {v7}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .end local v6           #s:Landroid/net/LocalSocket;
    .local v7, s:Landroid/net/LocalSocket;
    :try_start_1
    new-instance v2, Landroid/net/LocalSocketAddress;

    const-string v9, "rild"

    sget-object v10, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v2, v9, v10}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .local v2, l:Landroid/net/LocalSocketAddress;
    invoke-virtual {v7, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v5, 0x0

    :try_start_2
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iput-object v7, v9, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    const-string v9, "RILJ"

    const-string v10, "Connected to \'rild\' socket"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v3, 0x0

    .local v3, length:I
    :try_start_3
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v9, v9, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v9}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .local v1, is:Ljava/io/InputStream;
    :goto_1
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    #calls: Lcom/android/internal/telephony/RIL;->readRilMessage(Ljava/io/InputStream;[B)I
    invoke-static {v1, v9}, Lcom/android/internal/telephony/RIL;->access$200(Ljava/io/InputStream;[B)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    move-result v3

    if-gez v3, :cond_3

    .end local v1           #is:Ljava/io/InputStream;
    :goto_2
    :try_start_4
    const-string v9, "RILJ"

    const-string v10, "Disconnected from \'rild\' socket"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    sget-object v10, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v9, v9, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v9}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :goto_3
    :try_start_6
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-static {}, Lcom/android/internal/telephony/RILRequest;->resetSerial()V

    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v10, 0x1

    const/4 v11, 0x0

    #calls: Lcom/android/internal/telephony/RIL;->clearRequestsList(IZ)V
    invoke-static {v9, v10, v11}, Lcom/android/internal/telephony/RIL;->access$400(Lcom/android/internal/telephony/RIL;IZ)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    .end local v2           #l:Landroid/net/LocalSocketAddress;
    .end local v3           #length:I
    :catch_0
    move-exception v9

    move-object v8, v9

    move-object v6, v7

    .end local v7           #s:Landroid/net/LocalSocket;
    .restart local v6       #s:Landroid/net/LocalSocket;
    .local v8, tr:Ljava/lang/Throwable;
    :goto_4
    const-string v9, "RILJ"

    const-string v9, "Uncaught exception"

    invoke-static {v12, v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .end local v8           #tr:Ljava/lang/Throwable;
    :catch_1
    move-exception v9

    move-object v0, v9

    .local v0, ex:Ljava/io/IOException;
    :goto_5
    if-eqz v6, :cond_0

    :try_start_7
    invoke-virtual {v6}, Landroid/net/LocalSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    :cond_0
    :goto_6
    if-ne v5, v13, :cond_2

    :try_start_8
    const-string v9, "RILJ"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t find \'rild\' socket after "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " times, continuing to retry silently"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    :cond_1
    :goto_7
    const-wide/16 v9, 0xfa0

    :try_start_9
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_2
    if-lez v5, :cond_1

    if-ge v5, v13, :cond_1

    :try_start_a
    const-string v9, "RILJ"

    const-string v10, "Couldn\'t find \'rild\' socket; retrying after timeout"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_7

    .end local v0           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v9

    move-object v8, v9

    goto :goto_4

    .end local v6           #s:Landroid/net/LocalSocket;
    .restart local v1       #is:Ljava/io/InputStream;
    .restart local v2       #l:Landroid/net/LocalSocketAddress;
    .restart local v3       #length:I
    .restart local v7       #s:Landroid/net/LocalSocket;
    :cond_3
    :try_start_b
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .local v4, p:Landroid/os/Parcel;
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #calls: Lcom/android/internal/telephony/RIL;->processResponse(Landroid/os/Parcel;)V
    invoke-static {v9, v4}, Lcom/android/internal/telephony/RIL;->access$300(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)V

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_1

    .end local v1           #is:Ljava/io/InputStream;
    .end local v4           #p:Landroid/os/Parcel;
    :catch_3
    move-exception v9

    move-object v0, v9

    .restart local v0       #ex:Ljava/io/IOException;
    :try_start_c
    const-string v9, "RILJ"

    const-string v10, "\'rild\' socket closed"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .end local v0           #ex:Ljava/io/IOException;
    :catch_4
    move-exception v9

    move-object v8, v9

    .restart local v8       #tr:Ljava/lang/Throwable;
    const-string v9, "RILJ"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Uncaught exception read length="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Exception:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_2

    .end local v2           #l:Landroid/net/LocalSocketAddress;
    .end local v3           #length:I
    .end local v7           #s:Landroid/net/LocalSocket;
    .end local v8           #tr:Ljava/lang/Throwable;
    .restart local v0       #ex:Ljava/io/IOException;
    .restart local v6       #s:Landroid/net/LocalSocket;
    :catch_5
    move-exception v9

    goto/16 :goto_6

    :catch_6
    move-exception v9

    goto :goto_8

    .end local v0           #ex:Ljava/io/IOException;
    .end local v6           #s:Landroid/net/LocalSocket;
    .restart local v2       #l:Landroid/net/LocalSocketAddress;
    .restart local v3       #length:I
    .restart local v7       #s:Landroid/net/LocalSocket;
    :catch_7
    move-exception v9

    goto/16 :goto_3

    .end local v2           #l:Landroid/net/LocalSocketAddress;
    .end local v3           #length:I
    :catch_8
    move-exception v9

    move-object v0, v9

    move-object v6, v7

    .end local v7           #s:Landroid/net/LocalSocket;
    .restart local v6       #s:Landroid/net/LocalSocket;
    goto/16 :goto_5
.end method
