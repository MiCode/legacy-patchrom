.class public interface abstract Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
.super Ljava/lang/Object;
.source "IPrintTaskEventHandler.java"


# virtual methods
.method public abstract onPrinterBppDocComplete(JI)V
.end method

.method public abstract onPrinterGetObject(JLjava/lang/String;)V
.end method

.method public abstract onPrinterJobStatus(JLcom/broadcom/bt/service/bpp/JobStatus;)V
.end method

.method public abstract onPrinterPartialImage(JLjava/lang/String;)V
.end method

.method public abstract onPrinterProgress(JII)V
.end method

.method public abstract onPrinterTaskClosed(JI)V
.end method

.method public abstract onPrinterTaskOpen(JI)V
.end method

.method public abstract onPrinterThumbnail(J)V
.end method
