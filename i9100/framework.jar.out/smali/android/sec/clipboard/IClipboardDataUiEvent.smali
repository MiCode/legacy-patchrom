.class public interface abstract Landroid/sec/clipboard/IClipboardDataUiEvent;
.super Ljava/lang/Object;
.source "IClipboardDataUiEvent.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/IClipboardDataUiEvent$Stub;
    }
.end annotation


# virtual methods
.method public abstract removeItem(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract selectItem(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
