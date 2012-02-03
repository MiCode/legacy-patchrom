.class public interface abstract Lcom/broadcom/bt/service/dun/IBluetoothDUN;
.super Ljava/lang/Object;
.source "IBluetoothDUN.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/dun/IBluetoothDUN$Stub;
    }
.end annotation


# virtual methods
.method public abstract getAllPortStatus()Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerCallback(Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterCallback(Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
