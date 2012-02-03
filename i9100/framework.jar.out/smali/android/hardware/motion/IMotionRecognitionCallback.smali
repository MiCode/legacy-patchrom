.class public interface abstract Landroid/hardware/motion/IMotionRecognitionCallback;
.super Ljava/lang/Object;
.source "IMotionRecognitionCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/motion/IMotionRecognitionCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract getListenerInfo()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract motionCallback(Landroid/hardware/motion/MREvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
