.class public interface abstract Landroid/os/storage/IUsbStorageServiceListener;
.super Ljava/lang/Object;
.source "IUsbStorageServiceListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IUsbStorageServiceListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onUsbStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
