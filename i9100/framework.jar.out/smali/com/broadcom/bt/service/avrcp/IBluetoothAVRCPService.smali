.class public interface abstract Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPService;
.super Ljava/lang/Object;
.source "IBluetoothAVRCPService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPService$Stub;
    }
.end annotation


# virtual methods
.method public abstract disable()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract enable()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerCallback(Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterCallback(Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
