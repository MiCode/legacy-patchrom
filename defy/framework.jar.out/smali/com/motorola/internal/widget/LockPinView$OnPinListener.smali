.class public interface abstract Lcom/motorola/internal/widget/LockPinView$OnPinListener;
.super Ljava/lang/Object;
.source "LockPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/internal/widget/LockPinView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPinListener"
.end annotation


# virtual methods
.method public abstract onPinCanceled()V
.end method

.method public abstract onPinCleared()V
.end method

.method public abstract onPinClicked(Ljava/lang/String;)V
.end method

.method public abstract onPinDetected(Ljava/lang/String;)V
.end method
