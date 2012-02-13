.class public interface abstract Lcom/motorola/internal/android/statusbar/IStatusBarIconNotification;
.super Ljava/lang/Object;
.source "IStatusBarIconNotification.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/internal/android/statusbar/IStatusBarIconNotification$Stub;
    }
.end annotation


# virtual methods
.method public abstract onIconChanged(Ljava/lang/String;Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onIconVisibilityChanged(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
