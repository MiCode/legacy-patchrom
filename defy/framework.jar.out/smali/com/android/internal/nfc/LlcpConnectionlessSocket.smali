.class public Lcom/android/internal/nfc/LlcpConnectionlessSocket;
.super Ljava/lang/Object;
.source "LlcpConnectionlessSocket.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LlcpConnectionlessSocket"


# instance fields
.field protected mHandle:I

.field protected mService:Landroid/nfc/ILlcpConnectionlessSocket;


# direct methods
.method constructor <init>(Landroid/nfc/ILlcpConnectionlessSocket;I)V
    .locals 0
    .parameter "service"
    .parameter "handle"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/nfc/LlcpConnectionlessSocket;->mService:Landroid/nfc/ILlcpConnectionlessSocket;

    iput p2, p0, Lcom/android/internal/nfc/LlcpConnectionlessSocket;->mHandle:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/nfc/LlcpConnectionlessSocket;->mService:Landroid/nfc/ILlcpConnectionlessSocket;

    iget v2, p0, Lcom/android/internal/nfc/LlcpConnectionlessSocket;->mHandle:I

    invoke-interface {v1, v2}, Landroid/nfc/ILlcpConnectionlessSocket;->close(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LlcpConnectionlessSocket"

    const-string v2, "RemoteException in close(): "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getSap()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .local v1, sap:I
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/nfc/LlcpConnectionlessSocket;->mService:Landroid/nfc/ILlcpConnectionlessSocket;

    iget v3, p0, Lcom/android/internal/nfc/LlcpConnectionlessSocket;->mHandle:I

    invoke-interface {v2, v3}, Landroid/nfc/ILlcpConnectionlessSocket;->getSap(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public receiveFrom()Landroid/nfc/LlcpPacket;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/nfc/LlcpConnectionlessSocket;->mService:Landroid/nfc/ILlcpConnectionlessSocket;

    iget v3, p0, Lcom/android/internal/nfc/LlcpConnectionlessSocket;->mHandle:I

    invoke-interface {v2, v3}, Landroid/nfc/ILlcpConnectionlessSocket;->receiveFrom(I)Landroid/nfc/LlcpPacket;

    move-result-object v1

    .local v1, packet:Landroid/nfc/LlcpPacket;
    if-eqz v1, :cond_0

    move-object v2, v1

    .end local v1           #packet:Landroid/nfc/LlcpPacket;
    :goto_0
    return-object v2

    .restart local v1       #packet:Landroid/nfc/LlcpPacket;
    :cond_0
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #packet:Landroid/nfc/LlcpPacket;
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "LlcpConnectionlessSocket"

    const-string v3, "RemoteException in receiveFrom(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public sendTo(Landroid/nfc/LlcpPacket;)V
    .locals 4
    .parameter "packet"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/nfc/LlcpConnectionlessSocket;->mService:Landroid/nfc/ILlcpConnectionlessSocket;

    iget v3, p0, Lcom/android/internal/nfc/LlcpConnectionlessSocket;->mHandle:I

    invoke-interface {v2, v3, p1}, Landroid/nfc/ILlcpConnectionlessSocket;->sendTo(ILandroid/nfc/LlcpPacket;)I

    move-result v1

    .local v1, result:I
    invoke-static {v1}, Landroid/nfc/ErrorCodes;->isError(I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #result:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "LlcpConnectionlessSocket"

    const-string v3, "RemoteException in sendTo(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    return-void
.end method
