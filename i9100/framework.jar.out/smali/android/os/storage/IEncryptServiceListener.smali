.class public interface abstract Landroid/os/storage/IEncryptServiceListener;
.super Ljava/lang/Object;
.source "IEncryptServiceListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IEncryptServiceListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onEncryptionStatusChanged(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
