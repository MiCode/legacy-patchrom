.class public interface abstract Landroid/nfc/ILlcpConnectionlessSocket;
.super Ljava/lang/Object;
.source "ILlcpConnectionlessSocket.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/ILlcpConnectionlessSocket$Stub;
    }
.end annotation


# virtual methods
.method public abstract close(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSap(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract receiveFrom(I)Landroid/nfc/LlcpPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendTo(ILandroid/nfc/LlcpPacket;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
