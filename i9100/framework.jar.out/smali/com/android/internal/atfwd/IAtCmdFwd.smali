.class public interface abstract Lcom/android/internal/atfwd/IAtCmdFwd;
.super Ljava/lang/Object;
.source "IAtCmdFwd.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/atfwd/IAtCmdFwd$Stub;
    }
.end annotation


# virtual methods
.method public abstract processAtCmd(Lcom/android/internal/atfwd/AtCmd;)Lcom/android/internal/atfwd/AtCmdResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
