.class public interface abstract Lcom/motorola/android/locationproxy/IMtlrListener;
.super Ljava/lang/Object;
.source "IMtlrListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/locationproxy/IMtlrListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onMtlrStatusChanged(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
