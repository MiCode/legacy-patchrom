.class public interface abstract Landroid/net/IVzwConnectivityManager;
.super Ljava/lang/Object;
.source "IVzwConnectivityManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IVzwConnectivityManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract getNetworkInterface(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
