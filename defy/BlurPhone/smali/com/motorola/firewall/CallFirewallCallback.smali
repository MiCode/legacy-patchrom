.class public interface abstract Lcom/motorola/firewall/CallFirewallCallback;
.super Ljava/lang/Object;
.source "CallFirewallCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/firewall/CallFirewallCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract CheckNumberBlock(Ljava/lang/String;IZI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
