.class public Lcom/android/internal/atfwd/AtCfunCmdHandler;
.super Lcom/android/internal/atfwd/AtCmdBaseHandler;
.source "AtCfunCmdHandler.java"

# interfaces
.implements Lcom/android/internal/atfwd/AtCmdHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "AtCfunCmdHandler"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/internal/atfwd/AtCmdBaseHandler;-><init>(Landroid/content/Context;)V

    .line 50
    return-void
.end method


# virtual methods
.method public getCommandName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "+CFUN"

    return-object v0
.end method

.method public handleCommand(Lcom/android/internal/atfwd/AtCmd;)Lcom/android/internal/atfwd/AtCmdResponse;
    .locals 8
    .parameter "cmd"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "1"

    .line 59
    const/4 v1, 0x0

    .line 61
    .local v1, ret:Lcom/android/internal/atfwd/AtCmdResponse;
    invoke-virtual {p1}, Lcom/android/internal/atfwd/AtCmd;->getTokens()[Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, tokens:[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    aget-object v3, v2, v5

    const-string v4, "1"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v2, v6

    const-string v4, "1"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 67
    :cond_0
    const-string v3, "AtCfunCmdHandler"

    const-string v4, "+CFUN: Only +CFUN=1,1 supported"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v1, Lcom/android/internal/atfwd/AtCmdResponse;

    .end local v1           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    const-string v3, "+CME ERROR: 1"

    invoke-direct {v1, v5, v3}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    .line 85
    .restart local v1       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    :goto_0
    return-object v1

    .line 70
    :cond_1
    new-instance v0, Lcom/android/internal/atfwd/AtCfunCmdHandler$1;

    invoke-direct {v0, p0}, Lcom/android/internal/atfwd/AtCfunCmdHandler$1;-><init>(Lcom/android/internal/atfwd/AtCfunCmdHandler;)V

    .line 81
    .local v0, rebootThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 82
    new-instance v1, Lcom/android/internal/atfwd/AtCmdResponse;

    .end local v1           #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    const/4 v3, 0x0

    invoke-direct {v1, v6, v3}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    .restart local v1       #ret:Lcom/android/internal/atfwd/AtCmdResponse;
    goto :goto_0
.end method
