.class public interface abstract Landroid/nfc/ILlcpServiceSocket;
.super Ljava/lang/Object;
.source "ILlcpServiceSocket.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/ILlcpServiceSocket$Stub;
    }
.end annotation


# virtual methods
.method public abstract accept(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract close(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
