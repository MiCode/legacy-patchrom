.class public interface abstract Landroid/smartcard/ISmartcardService;
.super Ljava/lang/Object;
.source "ISmartcardService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/smartcard/ISmartcardService$Stub;
    }
.end annotation


# virtual methods
.method public abstract closeChannel(JLandroid/smartcard/SmartcardError;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getReaders(Landroid/smartcard/SmartcardError;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isCardPresent(Ljava/lang/String;Landroid/smartcard/SmartcardError;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract openBasicChannel(Ljava/lang/String;Landroid/smartcard/ISmartcardServiceCallback;Landroid/smartcard/SmartcardError;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract openLogicalChannel(Ljava/lang/String;[BLandroid/smartcard/ISmartcardServiceCallback;Landroid/smartcard/SmartcardError;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract transmit(J[BLandroid/smartcard/SmartcardError;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
