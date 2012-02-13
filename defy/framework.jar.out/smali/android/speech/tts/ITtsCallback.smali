.class public interface abstract Landroid/speech/tts/ITtsCallback;
.super Ljava/lang/Object;
.source "ITtsCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/ITtsCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract utteranceCompleted(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
