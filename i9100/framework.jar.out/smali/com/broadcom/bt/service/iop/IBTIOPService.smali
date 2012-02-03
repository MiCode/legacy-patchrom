.class public interface abstract Lcom/broadcom/bt/service/iop/IBTIOPService;
.super Ljava/lang/Object;
.source "IBTIOPService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/iop/IBTIOPService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getIOPDeviceItemType(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getIOPDeviceItemValue(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getIOPDeviceList(I)[Lcom/broadcom/bt/service/iop/DevInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getIOPDeviceList1(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
