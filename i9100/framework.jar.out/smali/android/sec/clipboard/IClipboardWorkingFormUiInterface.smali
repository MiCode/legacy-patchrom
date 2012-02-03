.class public interface abstract Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
.super Ljava/lang/Object;
.source "IClipboardWorkingFormUiInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub;
    }
.end annotation


# virtual methods
.method public abstract setClipboardDataListChange()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setClipboardDataMgr(Landroid/sec/clipboard/data/IClipboardDataList;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setClipboardDataUiEvent(Landroid/sec/clipboard/IClipboardDataUiEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
