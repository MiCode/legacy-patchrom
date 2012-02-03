.class public interface abstract Lcom/broadcom/bt/service/ftp/IFTPEventHandler;
.super Ljava/lang/Object;
.source "IFTPEventHandler.java"


# virtual methods
.method public abstract onFtpServerAccessRequested(Ljava/lang/String;ILjava/lang/String;BLjava/lang/String;)V
.end method

.method public abstract onFtpServerClosed()V
.end method

.method public abstract onFtpServerDelCompleted(Ljava/lang/String;B)V
.end method

.method public abstract onFtpServerFileTransferInProgress(II)V
.end method

.method public abstract onFtpServerGetCompleted(Ljava/lang/String;B)V
.end method

.method public abstract onFtpServerOpened(Ljava/lang/String;)V
.end method

.method public abstract onFtpServerPutCompleted(Ljava/lang/String;B)V
.end method
