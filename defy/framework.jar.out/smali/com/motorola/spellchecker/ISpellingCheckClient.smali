.class public interface abstract Lcom/motorola/spellchecker/ISpellingCheckClient;
.super Ljava/lang/Object;
.source "ISpellingCheckClient.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/spellchecker/ISpellingCheckClient$Stub;
    }
.end annotation


# virtual methods
.method public abstract onServiceEnabledStatusChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
