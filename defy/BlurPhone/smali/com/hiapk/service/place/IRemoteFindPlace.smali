.class public interface abstract Lcom/hiapk/service/place/IRemoteFindPlace;
.super Ljava/lang/Object;
.source "IRemoteFindPlace.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiapk/service/place/IRemoteFindPlace$Stub;
    }
.end annotation


# virtual methods
.method public abstract findPlace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
