.class public interface abstract Lcom/motorola/batterymanager/IWlMonitor;
.super Ljava/lang/Object;
.source "IWlMonitor.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/batterymanager/IWlMonitor$Stub;
    }
.end annotation


# virtual methods
.method public abstract removeWakeLock(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract storeWakeLock(IIILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
