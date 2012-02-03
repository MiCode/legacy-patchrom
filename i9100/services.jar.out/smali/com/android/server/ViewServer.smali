.class Lcom/android/server/ViewServer;
.super Ljava/lang/Object;
.source "ViewServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ViewServer$ViewServerWorker;
    }
.end annotation


# static fields
.field private static final COMMAND_PROTOCOL_VERSION:Ljava/lang/String; = "PROTOCOL"

.field private static final COMMAND_SERVER_VERSION:Ljava/lang/String; = "SERVER"

.field private static final COMMAND_WINDOW_MANAGER_AUTOLIST:Ljava/lang/String; = "AUTOLIST"

.field private static final COMMAND_WINDOW_MANAGER_GET_FOCUS:Ljava/lang/String; = "GET_FOCUS"

.field private static final COMMAND_WINDOW_MANAGER_LIST:Ljava/lang/String; = "LIST"

.field private static final LOG_TAG:Ljava/lang/String; = "ViewServer"

.field private static final VALUE_PROTOCOL_VERSION:Ljava/lang/String; = "3"

.field private static final VALUE_SERVER_VERSION:Ljava/lang/String; = "4"

.field public static final VIEW_SERVER_DEFAULT_PORT:I = 0x134b

.field private static final VIEW_SERVER_MAX_CONNECTIONS:I = 0xa


# instance fields
.field private final mPort:I

.field private mServer:Ljava/net/ServerSocket;

.field private mThread:Ljava/lang/Thread;

.field private mThreadPool:Ljava/util/concurrent/ExecutorService;

.field private final mWindowManager:Lcom/android/server/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/WindowManagerService;)V
    .locals 1
    .parameter "windowManager"

    .prologue
    .line 84
    const/16 v0, 0x134b

    invoke-direct {p0, p1, v0}, Lcom/android/server/ViewServer;-><init>(Lcom/android/server/WindowManagerService;I)V

    .line 85
    return-void
.end method

.method constructor <init>(Lcom/android/server/WindowManagerService;I)V
    .locals 0
    .parameter "windowManager"
    .parameter "port"

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/android/server/ViewServer;->mWindowManager:Lcom/android/server/WindowManagerService;

    .line 98
    iput p2, p0, Lcom/android/server/ViewServer;->mPort:I

    .line 99
    return-void
.end method

.method static synthetic access$000(Ljava/net/Socket;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-static {p0, p1}, Lcom/android/server/ViewServer;->writeValue(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/ViewServer;)Lcom/android/server/WindowManagerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/ViewServer;->mWindowManager:Lcom/android/server/WindowManagerService;

    return-object v0
.end method

.method private static writeValue(Ljava/net/Socket;Ljava/lang/String;)Z
    .locals 8
    .parameter "client"
    .parameter "value"

    .prologue
    const/4 v7, 0x0

    .line 196
    const/4 v2, 0x0

    .line 198
    .local v2, out:Ljava/io/BufferedWriter;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 199
    .local v0, clientStream:Ljava/io/OutputStream;
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v6, 0x2000

    invoke-direct {v3, v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .end local v2           #out:Ljava/io/BufferedWriter;
    .local v3, out:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 201
    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 203
    const/4 v4, 0x1

    .line 207
    .local v4, result:Z
    if-eqz v3, :cond_1

    .line 209
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move v5, v4

    :goto_0
    move-object v2, v3

    .line 215
    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :goto_1
    return v5

    .line 204
    .end local v4           #result:Z
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 205
    .local v1, e:Ljava/lang/Exception;
    :goto_2
    const/4 v4, 0x0

    .line 207
    .restart local v4       #result:Z
    if-eqz v2, :cond_2

    .line 209
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move v5, v4

    .line 212
    goto :goto_1

    .line 207
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #result:Z
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v2, :cond_0

    .line 209
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 207
    :cond_0
    :goto_4
    throw v5

    .line 210
    .restart local v1       #e:Ljava/lang/Exception;
    .restart local v4       #result:Z
    :catch_1
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    move v5, v7

    .line 211
    goto :goto_1

    .line 210
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #result:Z
    :catch_2
    move-exception v1

    .line 211
    .restart local v1       #e:Ljava/io/IOException;
    goto :goto_4

    .line 210
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    .restart local v4       #result:Z
    :catch_3
    move-exception v1

    .restart local v1       #e:Ljava/io/IOException;
    move v5, v7

    .line 211
    goto :goto_0

    .line 207
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #result:Z
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    goto :goto_3

    .line 204
    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :catch_4
    move-exception v5

    move-object v1, v5

    move-object v2, v3

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    goto :goto_2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    .restart local v4       #result:Z
    :cond_1
    move v5, v4

    goto :goto_0

    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v3           #out:Ljava/io/BufferedWriter;
    .local v1, e:Ljava/lang/Exception;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :cond_2
    move v5, v4

    goto :goto_1
.end method


# virtual methods
.method isRunning()Z
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/server/ViewServer;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ViewServer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 175
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ViewServer;->mThread:Ljava/lang/Thread;

    if-ne v2, v3, :cond_1

    .line 178
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ViewServer;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 179
    .local v0, client:Ljava/net/Socket;
    iget-object v2, p0, Lcom/android/server/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_0

    .line 180
    iget-object v2, p0, Lcom/android/server/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/android/server/ViewServer$ViewServerWorker;

    invoke-direct {v3, p0, v0}, Lcom/android/server/ViewServer$ViewServerWorker;-><init>(Lcom/android/server/ViewServer;Ljava/net/Socket;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    .end local v0           #client:Ljava/net/Socket;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 189
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "ViewServer"

    const-string v3, "Connection error: "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 183
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #client:Ljava/net/Socket;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 184
    :catch_1
    move-exception v1

    .line 185
    .local v1, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 192
    .end local v0           #client:Ljava/net/Socket;
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    return-void
.end method

.method start()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0xa

    .line 112
    iget-object v0, p0, Lcom/android/server/ViewServer;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 121
    :goto_0
    return v0

    .line 116
    :cond_0
    new-instance v0, Ljava/net/ServerSocket;

    iget v1, p0, Lcom/android/server/ViewServer;->mPort:I

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v0, p0, Lcom/android/server/ViewServer;->mServer:Ljava/net/ServerSocket;

    .line 117
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote View Server [port="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ViewServer;->mPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/ViewServer;->mThread:Ljava/lang/Thread;

    .line 118
    invoke-static {v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 119
    iget-object v0, p0, Lcom/android/server/ViewServer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 121
    const/4 v0, 0x1

    goto :goto_0
.end method

.method stop()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const-string v3, "ViewServer"

    .line 135
    iget-object v1, p0, Lcom/android/server/ViewServer;->mThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/android/server/ViewServer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 138
    iget-object v1, p0, Lcom/android/server/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/android/server/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 146
    iput-object v2, p0, Lcom/android/server/ViewServer;->mThread:Ljava/lang/Thread;

    .line 148
    :try_start_1
    iget-object v1, p0, Lcom/android/server/ViewServer;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    .line 149
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ViewServer;->mServer:Ljava/net/ServerSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    const/4 v1, 0x1

    .line 155
    :goto_1
    return v1

    .line 141
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 142
    .local v0, e:Ljava/lang/SecurityException;
    const-string v1, "ViewServer"

    const-string v1, "Could not stop all view server threads"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 151
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 152
    .local v0, e:Ljava/io/IOException;
    const-string v1, "ViewServer"

    const-string v1, "Could not close the view server"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
