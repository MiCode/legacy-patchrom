.class public interface abstract Lcom/motorola/android/locationproxy/ISuplCommands;
.super Ljava/lang/Object;
.source "ISuplCommands.java"


# virtual methods
.method public abstract forwardSocketData(I[BI)V
.end method

.method public abstract getDefaultConfigFQDN()Ljava/lang/String;
.end method

.method public abstract getUserConfigFQDN()Ljava/lang/String;
.end method

.method public abstract registerForSuplRequest(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract sendCloseSocketResult(III)V
.end method

.method public abstract sendHttpResult(IIB)V
.end method

.method public abstract sendLocationRequestResponse(II)V
.end method

.method public abstract sendOpenSocketResult(III)V
.end method

.method public abstract sendSocketDataResult(III)V
.end method

.method public abstract sendTlsResult(IIB)V
.end method

.method public abstract sendWapPushNotification([B)V
.end method

.method public abstract setUserConfigFQDN(Ljava/lang/String;)Z
.end method
