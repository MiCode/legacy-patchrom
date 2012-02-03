.class public interface abstract Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;
.super Ljava/lang/Object;
.source "IBluetoothSAPCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onConnected(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDisconnected()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
