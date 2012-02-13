.class public interface abstract Lcom/vzw/location/IVzwGpsStatusProvider;
.super Ljava/lang/Object;
.source "IVzwGpsStatusProvider.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vzw/location/IVzwGpsStatusProvider$Stub;
    }
.end annotation


# virtual methods
.method public abstract addGpsStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeGpsStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
