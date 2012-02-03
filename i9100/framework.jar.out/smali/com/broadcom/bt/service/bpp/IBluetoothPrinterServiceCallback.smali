.class public interface abstract Lcom/broadcom/bt/service/bpp/IBluetoothPrinterServiceCallback;
.super Ljava/lang/Object;
.source "IBluetoothPrinterServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract onAuthorizeEvent(IIIZ)V
.end method

.method public abstract onBppDocCompleteEvent(I)V
.end method

.method public abstract onCloseEvent(I)V
.end method

.method public abstract onEnableEvent()V
.end method

.method public abstract onGetCapabilitiesEvent(IIIILcom/broadcom/bt/service/bpp/BipCapabilities;Lcom/broadcom/bt/service/bpp/BppAttributes;)V
.end method

.method public abstract onGetObjectEvent(Ljava/lang/String;)V
.end method

.method public abstract onJobStatusEvent(Lcom/broadcom/bt/service/bpp/JobStatus;)V
.end method

.method public abstract onOpenEvent(I)V
.end method

.method public abstract onPartialImageEvent(Ljava/lang/String;)V
.end method

.method public abstract onProgressEvent(II)V
.end method

.method public abstract onThumbnailEvent()V
.end method
