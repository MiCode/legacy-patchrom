.class public Lcom/android/internal/atfwd/AtCtsaCmdHandler;
.super Lcom/android/internal/atfwd/AtCmdBaseHandler;
.source "AtCtsaCmdHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    }
.end annotation


# static fields
.field private static final DEFAULT_PAUSE_TIME:I = 0x190

.field private static final DEFAULT_PRESS_TIME:I = 0xc8

.field private static final EVT_CTSA_CMD:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "AtCtsaCmdHandler"


# instance fields
.field private mEventQ:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;",
            ">;"
        }
    .end annotation
.end field

.field private mInjectHandler:Landroid/os/Handler;

.field private mInjectThread:Landroid/os/HandlerThread;

.field private mWm:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/android/internal/atfwd/AtCmdBaseHandler;-><init>(Landroid/content/Context;)V

    .line 170
    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 172
    .local v0, service:Landroid/view/IWindowManager;
    if-nez v0, :cond_0

    .line 173
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to connect to Window Service"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    :cond_0
    iput-object v0, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler;->mWm:Landroid/view/IWindowManager;

    .line 175
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler;->mEventQ:Ljava/util/LinkedList;

    .line 177
    new-instance v1, Lcom/android/internal/atfwd/AtCtsaCmdHandler$1;

    const-string v2, "CTSA Inject Thread"

    const/4 v3, -0x8

    invoke-direct {v1, p0, v2, v3}, Lcom/android/internal/atfwd/AtCtsaCmdHandler$1;-><init>(Lcom/android/internal/atfwd/AtCtsaCmdHandler;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler;->mInjectThread:Landroid/os/HandlerThread;

    .line 180
    iget-object v1, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler;->mInjectThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 181
    new-instance v1, Lcom/android/internal/atfwd/AtCtsaCmdHandler$2;

    iget-object v2, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler;->mInjectThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/atfwd/AtCtsaCmdHandler$2;-><init>(Lcom/android/internal/atfwd/AtCtsaCmdHandler;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler;->mInjectHandler:Landroid/os/Handler;

    .line 232
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/atfwd/AtCtsaCmdHandler;)Landroid/view/IWindowManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler;->mWm:Landroid/view/IWindowManager;

    return-object v0
.end method


# virtual methods
.method public getCommandName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    const-string v0, "+CTSA"

    return-object v0
.end method

.method public handleCommand(Lcom/android/internal/atfwd/AtCmd;)Lcom/android/internal/atfwd/AtCmdResponse;
    .locals 11
    .parameter "cmd"

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    const-string v9, "AtCtsaCmdHandler"

    .line 235
    const/4 v2, 0x0

    .line 236
    .local v2, ret:Lcom/android/internal/atfwd/AtCmdResponse;
    const/4 v4, 0x0

    .line 237
    .local v4, valid:Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    const/4 v0, 0x0

    .line 238
    .local v0, dead:Z
    const-string v6, "AtCtsaCmdHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleCommand: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v6, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler;->mInjectThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v6

    if-nez v6, :cond_0

    move v0, v10

    .line 241
    :goto_0
    if-nez v0, :cond_1

    .line 247
    :try_start_0
    new-instance v5, Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;

    invoke-direct {v5, p0, p1}, Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;-><init>(Lcom/android/internal/atfwd/AtCtsaCmdHandler;Lcom/android/internal/atfwd/AtCmd;)V
    :try_end_0
    .catch Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .end local v4           #valid:Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    .local v5, valid:Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    :try_start_1
    new-instance v3, Lcom/android/internal/atfwd/AtCmdResponse;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 249
    .end local v2           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    .local v3, ret:Lcom/android/internal/atfwd/AtCmdResponse;
    :try_start_2
    const-string v6, "AtCtsaCmdHandler"

    const-string v7, "Queuing command"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v6, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler;->mInjectHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-static {v6, v7, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 251
    const-string v6, "AtCtsaCmdHandler"

    const-string v7, "Command queued"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v4, v5

    .end local v5           #valid:Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    .restart local v4       #valid:Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    move-object v2, v3

    .line 259
    .end local v3           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    .restart local v2       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    :goto_1
    return-object v2

    :cond_0
    move v0, v8

    .line 240
    goto :goto_0

    .line 252
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 253
    .local v1, e:Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;
    :goto_2
    const-string v6, "AtCtsaCmdHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error parsing command "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-instance v2, Lcom/android/internal/atfwd/AtCmdResponse;

    .end local v2           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    const-string v6, "+CME ERROR: 25"

    invoke-direct {v2, v8, v6}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    .line 255
    .restart local v2       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    goto :goto_1

    .line 257
    .end local v1           #e:Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;
    :cond_1
    new-instance v2, Lcom/android/internal/atfwd/AtCmdResponse;

    .end local v2           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    const-string v6, "+CME ERROR: 1"

    invoke-direct {v2, v8, v6}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    .restart local v2       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    goto :goto_1

    .line 252
    .end local v4           #valid:Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    .restart local v5       #valid:Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    :catch_1
    move-exception v6

    move-object v1, v6

    move-object v4, v5

    .end local v5           #valid:Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    .restart local v4       #valid:Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    goto :goto_2

    .end local v2           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    .end local v4           #valid:Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    .restart local v3       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    .restart local v5       #valid:Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    :catch_2
    move-exception v6

    move-object v1, v6

    move-object v4, v5

    .end local v5           #valid:Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    .restart local v4       #valid:Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
    move-object v2, v3

    .end local v3           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    .restart local v2       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    goto :goto_2
.end method
