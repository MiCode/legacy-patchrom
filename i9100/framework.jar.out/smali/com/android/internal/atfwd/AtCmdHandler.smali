.class public interface abstract Lcom/android/internal/atfwd/AtCmdHandler;
.super Ljava/lang/Object;
.source "AtCmdHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;,
        Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException;,
        Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;
    }
.end annotation


# virtual methods
.method public abstract getCommandName()Ljava/lang/String;
.end method

.method public abstract handleCommand(Lcom/android/internal/atfwd/AtCmd;)Lcom/android/internal/atfwd/AtCmdResponse;
.end method
