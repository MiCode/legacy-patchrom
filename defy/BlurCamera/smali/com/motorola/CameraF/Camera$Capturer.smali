.class interface abstract Lcom/motorola/CameraF/Camera$Capturer;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/CameraF/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Capturer"
.end annotation


# virtual methods
.method public abstract cancelAutoDismiss()V
.end method

.method public abstract cancelSave()V
.end method

.method public abstract dismissFreezeFrame()V
.end method

.method public abstract getLastCaptureUri()Landroid/net/Uri;
.end method

.method public abstract onSnap()V
.end method

.method public abstract setDone(Z)V
.end method
