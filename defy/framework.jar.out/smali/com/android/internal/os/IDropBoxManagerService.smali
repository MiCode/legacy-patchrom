.class public interface abstract Lcom/android/internal/os/IDropBoxManagerService;
.super Ljava/lang/Object;
.source "IDropBoxManagerService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/IDropBoxManagerService$Stub;
    }
.end annotation


# virtual methods
.method public abstract add(Landroid/os/DropBoxManager$Entry;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isTagEnabled(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
