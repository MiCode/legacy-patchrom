.class public interface abstract Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;
.super Ljava/lang/Object;
.source "IBluetoothPrinterCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAuthorizePrinter(IIIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onGetPrinterCapabilities(IIIILcom/broadcom/bt/service/bpp/BipCapabilities;Lcom/broadcom/bt/service/bpp/BppAttributes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPrinterSessionOpen()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
