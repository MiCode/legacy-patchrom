.class Lcom/android/server/ViewServer$ViewServerWorker;
.super Ljava/lang/Object;
.source "ViewServer.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/server/WindowManagerService$WindowChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ViewServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewServerWorker"
.end annotation


# instance fields
.field private mClient:Ljava/net/Socket;

.field private mNeedFocusedWindowUpdate:Z

.field private mNeedWindowListUpdate:Z

.field final synthetic this$0:Lcom/android/server/ViewServer;


# direct methods
.method public constructor <init>(Lcom/android/server/ViewServer;Ljava/net/Socket;)V
    .locals 1
    .parameter
    .parameter "client"

    .prologue
    const/4 v0, 0x0

    .line 222
    iput-object p1, p0, Lcom/android/server/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/ViewServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object p2, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    .line 224
    iput-boolean v0, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    .line 225
    iput-boolean v0, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    .line 226
    return-void
.end method

.method private windowManagerAutolistLoop()Z
    .locals 7

    .prologue
    .line 303
    iget-object v5, p0, Lcom/android/server/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/ViewServer;

    #getter for: Lcom/android/server/ViewServer;->mWindowManager:Lcom/android/server/WindowManagerService;
    invoke-static {v5}, Lcom/android/server/ViewServer;->access$100(Lcom/android/server/ViewServer;)Lcom/android/server/WindowManagerService;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/server/WindowManagerService;->addWindowChangeListener(Lcom/android/server/WindowManagerService$WindowChangeListener;)V

    .line 304
    const/4 v3, 0x0

    .line 306
    .local v3, out:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    iget-object v6, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 307
    .end local v3           #out:Ljava/io/BufferedWriter;
    .local v4, out:Ljava/io/BufferedWriter;
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-nez v5, :cond_7

    .line 308
    const/4 v2, 0x0

    .line 309
    .local v2, needWindowListUpdate:Z
    const/4 v1, 0x0

    .line 310
    .local v1, needFocusedWindowUpdate:Z
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 311
    :goto_1
    :try_start_2
    iget-boolean v5, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    if-nez v5, :cond_2

    .line 312
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 322
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 332
    .end local v1           #needFocusedWindowUpdate:Z
    .end local v2           #needWindowListUpdate:Z
    :catch_0
    move-exception v5

    move-object v0, v5

    move-object v3, v4

    .line 333
    .end local v4           #out:Ljava/io/BufferedWriter;
    .local v0, e:Ljava/lang/Exception;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :goto_2
    :try_start_4
    const-string v5, "ViewServer"

    const-string v6, "Connection error: "

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 335
    if-eqz v3, :cond_1

    .line 337
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 341
    :cond_1
    :goto_3
    iget-object v5, p0, Lcom/android/server/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/ViewServer;

    #getter for: Lcom/android/server/ViewServer;->mWindowManager:Lcom/android/server/WindowManagerService;
    invoke-static {v5}, Lcom/android/server/ViewServer;->access$100(Lcom/android/server/ViewServer;)Lcom/android/server/WindowManagerService;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/server/WindowManagerService;->removeWindowChangeListener(Lcom/android/server/WindowManagerService$WindowChangeListener;)V

    .line 343
    .end local v0           #e:Ljava/lang/Exception;
    :goto_4
    const/4 v5, 0x1

    return v5

    .line 314
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v1       #needFocusedWindowUpdate:Z
    .restart local v2       #needWindowListUpdate:Z
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :cond_2
    :try_start_6
    iget-boolean v5, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    if-eqz v5, :cond_3

    .line 315
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    .line 316
    const/4 v2, 0x1

    .line 318
    :cond_3
    iget-boolean v5, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    if-eqz v5, :cond_4

    .line 319
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    .line 320
    const/4 v1, 0x1

    .line 322
    :cond_4
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 323
    if-eqz v2, :cond_5

    .line 324
    :try_start_7
    const-string v5, "LIST UPDATE\n"

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    .line 327
    :cond_5
    if-eqz v1, :cond_0

    .line 328
    const-string v5, "FOCUS UPDATE\n"

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    .line 335
    .end local v1           #needFocusedWindowUpdate:Z
    .end local v2           #needWindowListUpdate:Z
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :goto_5
    if-eqz v3, :cond_6

    .line 337
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 341
    :cond_6
    :goto_6
    iget-object v6, p0, Lcom/android/server/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/ViewServer;

    #getter for: Lcom/android/server/ViewServer;->mWindowManager:Lcom/android/server/WindowManagerService;
    invoke-static {v6}, Lcom/android/server/ViewServer;->access$100(Lcom/android/server/ViewServer;)Lcom/android/server/WindowManagerService;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/android/server/WindowManagerService;->removeWindowChangeListener(Lcom/android/server/WindowManagerService$WindowChangeListener;)V

    .line 335
    throw v5

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :cond_7
    if-eqz v4, :cond_8

    .line 337
    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 341
    :cond_8
    :goto_7
    iget-object v5, p0, Lcom/android/server/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/ViewServer;

    #getter for: Lcom/android/server/ViewServer;->mWindowManager:Lcom/android/server/WindowManagerService;
    invoke-static {v5}, Lcom/android/server/ViewServer;->access$100(Lcom/android/server/ViewServer;)Lcom/android/server/WindowManagerService;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/server/WindowManagerService;->removeWindowChangeListener(Lcom/android/server/WindowManagerService$WindowChangeListener;)V

    move-object v3, v4

    .line 342
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_4

    .line 338
    :catch_1
    move-exception v6

    goto :goto_6

    .restart local v0       #e:Ljava/lang/Exception;
    :catch_2
    move-exception v5

    goto :goto_3

    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catch_3
    move-exception v5

    goto :goto_7

    .line 335
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v5

    goto :goto_5

    .line 332
    :catch_4
    move-exception v5

    move-object v0, v5

    goto :goto_2
.end method


# virtual methods
.method public focusChanged()V
    .locals 1

    .prologue
    .line 296
    monitor-enter p0

    .line 297
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    .line 298
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 299
    monitor-exit p0

    .line 300
    return-void

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 11

    .prologue
    const-string v8, "ViewServer"

    .line 230
    const/4 v2, 0x0

    .line 232
    .local v2, in:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    iget-object v9, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v9, 0x400

    invoke-direct {v3, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v2           #in:Ljava/io/BufferedReader;
    .local v3, in:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 239
    .local v6, request:Ljava/lang/String;
    const/16 v8, 0x20

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 240
    .local v4, index:I
    const/4 v8, -0x1

    if-ne v4, v8, :cond_4

    .line 241
    move-object v0, v6

    .line 242
    .local v0, command:Ljava/lang/String;
    const-string v5, ""

    .line 249
    .local v5, parameters:Ljava/lang/String;
    :goto_0
    const-string v8, "PROTOCOL"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 250
    iget-object v8, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    const-string v9, "3"

    #calls: Lcom/android/server/ViewServer;->writeValue(Ljava/net/Socket;Ljava/lang/String;)Z
    invoke-static {v8, v9}, Lcom/android/server/ViewServer;->access$000(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v7

    .line 264
    .local v7, result:Z
    :goto_1
    if-nez v7, :cond_0

    .line 265
    const-string v8, "ViewServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "An error occured with the command: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 270
    :cond_0
    if-eqz v3, :cond_1

    .line 272
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 278
    :cond_1
    :goto_2
    iget-object v8, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    if-eqz v8, :cond_2

    .line 280
    :try_start_3
    iget-object v8, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    :cond_2
    :goto_3
    move-object v2, v3

    .line 286
    .end local v0           #command:Ljava/lang/String;
    .end local v3           #in:Ljava/io/BufferedReader;
    .end local v4           #index:I
    .end local v5           #parameters:Ljava/lang/String;
    .end local v6           #request:Ljava/lang/String;
    .end local v7           #result:Z
    .restart local v2       #in:Ljava/io/BufferedReader;
    :cond_3
    :goto_4
    return-void

    .line 244
    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    .restart local v4       #index:I
    .restart local v6       #request:Ljava/lang/String;
    :cond_4
    const/4 v8, 0x0

    :try_start_4
    invoke-virtual {v6, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 245
    .restart local v0       #command:Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #parameters:Ljava/lang/String;
    goto :goto_0

    .line 251
    :cond_5
    const-string v8, "SERVER"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 252
    iget-object v8, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    const-string v9, "4"

    #calls: Lcom/android/server/ViewServer;->writeValue(Ljava/net/Socket;Ljava/lang/String;)Z
    invoke-static {v8, v9}, Lcom/android/server/ViewServer;->access$000(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v7

    .restart local v7       #result:Z
    goto :goto_1

    .line 253
    .end local v7           #result:Z
    :cond_6
    const-string v8, "LIST"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 254
    iget-object v8, p0, Lcom/android/server/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/ViewServer;

    #getter for: Lcom/android/server/ViewServer;->mWindowManager:Lcom/android/server/WindowManagerService;
    invoke-static {v8}, Lcom/android/server/ViewServer;->access$100(Lcom/android/server/ViewServer;)Lcom/android/server/WindowManagerService;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v8, v9}, Lcom/android/server/WindowManagerService;->viewServerListWindows(Ljava/net/Socket;)Z

    move-result v7

    .restart local v7       #result:Z
    goto :goto_1

    .line 255
    .end local v7           #result:Z
    :cond_7
    const-string v8, "GET_FOCUS"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 256
    iget-object v8, p0, Lcom/android/server/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/ViewServer;

    #getter for: Lcom/android/server/ViewServer;->mWindowManager:Lcom/android/server/WindowManagerService;
    invoke-static {v8}, Lcom/android/server/ViewServer;->access$100(Lcom/android/server/ViewServer;)Lcom/android/server/WindowManagerService;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v8, v9}, Lcom/android/server/WindowManagerService;->viewServerGetFocusedWindow(Ljava/net/Socket;)Z

    move-result v7

    .restart local v7       #result:Z
    goto :goto_1

    .line 257
    .end local v7           #result:Z
    :cond_8
    const-string v8, "AUTOLIST"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 258
    invoke-direct {p0}, Lcom/android/server/ViewServer$ViewServerWorker;->windowManagerAutolistLoop()Z

    move-result v7

    .restart local v7       #result:Z
    goto :goto_1

    .line 260
    .end local v7           #result:Z
    :cond_9
    iget-object v8, p0, Lcom/android/server/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/ViewServer;

    #getter for: Lcom/android/server/ViewServer;->mWindowManager:Lcom/android/server/WindowManagerService;
    invoke-static {v8}, Lcom/android/server/ViewServer;->access$100(Lcom/android/server/ViewServer;)Lcom/android/server/WindowManagerService;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v8, v9, v0, v5}, Lcom/android/server/WindowManagerService;->viewServerWindowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    move-result v7

    .restart local v7       #result:Z
    goto/16 :goto_1

    .line 267
    .end local v0           #command:Ljava/lang/String;
    .end local v3           #in:Ljava/io/BufferedReader;
    .end local v4           #index:I
    .end local v5           #parameters:Ljava/lang/String;
    .end local v6           #request:Ljava/lang/String;
    .end local v7           #result:Z
    .restart local v2       #in:Ljava/io/BufferedReader;
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 268
    .local v1, e:Ljava/io/IOException;
    :goto_5
    :try_start_5
    const-string v8, "ViewServer"

    const-string v9, "Connection error: "

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 270
    if-eqz v2, :cond_a

    .line 272
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 278
    :cond_a
    :goto_6
    iget-object v8, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    if-eqz v8, :cond_3

    .line 280
    :try_start_7
    iget-object v8, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4

    .line 281
    :catch_1
    move-exception v8

    move-object v1, v8

    .line 282
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 281
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v9

    move-object v1, v9

    .line 282
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 270
    .end local v1           #e:Ljava/io/IOException;
    :cond_b
    :goto_7
    throw v8

    :catchall_0
    move-exception v8

    :goto_8
    if-eqz v2, :cond_c

    .line 272
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 278
    :cond_c
    :goto_9
    iget-object v9, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    if-eqz v9, :cond_b

    .line 280
    :try_start_9
    iget-object v9, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_7

    .line 274
    :catch_3
    move-exception v1

    .line 275
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 274
    :catch_4
    move-exception v1

    .line 275
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 274
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v0       #command:Ljava/lang/String;
    .restart local v3       #in:Ljava/io/BufferedReader;
    .restart local v4       #index:I
    .restart local v5       #parameters:Ljava/lang/String;
    .restart local v6       #request:Ljava/lang/String;
    .restart local v7       #result:Z
    :catch_5
    move-exception v1

    .line 275
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 281
    .end local v1           #e:Ljava/io/IOException;
    :catch_6
    move-exception v8

    move-object v1, v8

    .line 282
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 270
    .end local v0           #command:Ljava/lang/String;
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #index:I
    .end local v5           #parameters:Ljava/lang/String;
    .end local v6           #request:Ljava/lang/String;
    .end local v7           #result:Z
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    goto :goto_8

    .line 267
    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    :catch_7
    move-exception v8

    move-object v1, v8

    move-object v2, v3

    .end local v3           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    goto :goto_5
.end method

.method public windowsChanged()V
    .locals 1

    .prologue
    .line 289
    monitor-enter p0

    .line 290
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    .line 291
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 292
    monitor-exit p0

    .line 293
    return-void

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
