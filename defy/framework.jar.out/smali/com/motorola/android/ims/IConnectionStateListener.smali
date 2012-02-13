.class public interface abstract Lcom/motorola/android/ims/IConnectionStateListener;
.super Ljava/lang/Object;
.source "IConnectionStateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/ims/IConnectionStateListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onConnectionStateChanged(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
