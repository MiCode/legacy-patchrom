.class public interface abstract Landroid/sec/clipboard/data/IClipboardDataList;
.super Ljava/lang/Object;
.source "IClipboardDataList.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/data/IClipboardDataList$Stub;
    }
.end annotation


# virtual methods
.method public abstract getItem(I)Landroid/sec/clipboard/data/ClipboardData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract size()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
