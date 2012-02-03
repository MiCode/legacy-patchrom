.class public interface abstract Lcom/broadcom/bt/service/ftp/IBluetoothFTP;
.super Ljava/lang/Object;
.source "IBluetoothFTP.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/ftp/IBluetoothFTP$Stub;
    }
.end annotation


# virtual methods
.method public abstract ftpServerAccessRsp(BZLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ftpServerAuthenRsp(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerCallback(Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterCallback(Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
