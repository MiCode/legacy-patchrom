.class public interface abstract Landroid/sec/clipboard/IClipboardFormatListener;
.super Ljava/lang/Object;
.source "IClipboardFormatListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/IClipboardFormatListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onNewClipboardData(ILandroid/sec/clipboard/data/ClipboardData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
