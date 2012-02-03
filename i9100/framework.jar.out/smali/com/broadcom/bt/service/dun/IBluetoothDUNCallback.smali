.class public interface abstract Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;
.super Ljava/lang/Object;
.source "IBluetoothDUNCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onPortStateChangeEvent(BBLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
