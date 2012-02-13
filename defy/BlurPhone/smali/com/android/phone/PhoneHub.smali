.class public interface abstract Lcom/android/phone/PhoneHub;
.super Ljava/lang/Object;
.source "PhoneHub.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneHub$Stub;
    }
.end annotation


# virtual methods
.method public abstract registerCallback(Lcom/motorola/firewall/CallFirewallCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterCallback(Lcom/motorola/firewall/CallFirewallCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
