.class public interface abstract Landroid/accessibilityservice/IEventListener;
.super Ljava/lang/Object;
.source "IEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/IEventListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onInterrupt()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setConnection(Landroid/accessibilityservice/IAccessibilityServiceConnection;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
