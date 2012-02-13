.class abstract Landroid/nfc/tech/BasicTagTechnology;
.super Ljava/lang/Object;
.source "BasicTagTechnology.java"

# interfaces
.implements Landroid/nfc/tech/TagTechnology;


# static fields
.field private static final TAG:Ljava/lang/String; = "NFC"


# instance fields
.field mIsConnected:Z

.field mSelectedTechnology:I

.field final mTag:Landroid/nfc/Tag;


# direct methods
.method constructor <init>(Landroid/nfc/Tag;I)V
    .locals 0
    .parameter "tag"
    .parameter "tech"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    iput p2, p0, Landroid/nfc/tech/BasicTagTechnology;->mSelectedTechnology:I

    return-void
.end method


# virtual methods
.method checkConnected()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v0}, Landroid/nfc/Tag;->getConnectedTechnology()I

    move-result v0

    iget v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mSelectedTechnology:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v0}, Landroid/nfc/Tag;->getConnectedTechnology()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call connect() first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v1}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/nfc/INfcTag;->reconnect(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iput-boolean v3, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    iget-object v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v1}, Landroid/nfc/Tag;->setTechnologyDisconnected()V

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "NFC"

    const-string v2, "NFC service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v3, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    iget-object v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v1}, Landroid/nfc/Tag;->setTechnologyDisconnected()V

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    iput-boolean v3, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->setTechnologyDisconnected()V

    throw v1
.end method

.method public connect()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v2

    iget-object v3, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v3}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v3

    iget v4, p0, Landroid/nfc/tech/BasicTagTechnology;->mSelectedTechnology:I

    invoke-interface {v2, v3, v4}, Landroid/nfc/INfcTag;->connect(II)I

    move-result v1

    .local v1, errorCode:I
    if-nez v1, :cond_0

    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    iget v3, p0, Landroid/nfc/tech/BasicTagTechnology;->mSelectedTechnology:I

    invoke-virtual {v2, v3}, Landroid/nfc/Tag;->setConnectedTechnology(I)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    return-void

    :cond_0
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #errorCode:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NFC"

    const-string v3, "NFC service dead"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/io/IOException;

    const-string v3, "NFC service died"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getTag()Landroid/nfc/Tag;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    return-object v0
.end method

.method public isConnected()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-boolean v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    if-nez v1, :cond_0

    move v1, v3

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v1}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/nfc/INfcTag;->isPresent(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "NFC"

    const-string v2, "NFC service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    goto :goto_0
.end method

.method public reconnect()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    iget-boolean v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Technology not connected yet"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v2

    iget-object v3, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v3}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/nfc/INfcTag;->reconnect(I)I

    move-result v1

    .local v1, errorCode:I
    if-eqz v1, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->setTechnologyDisconnected()V

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #errorCode:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    iput-boolean v4, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->setTechnologyDisconnected()V

    const-string v2, "NFC"

    const-string v3, "NFC service dead"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/io/IOException;

    const-string v3, "NFC service died"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #errorCode:I
    :cond_1
    return-void
.end method

.method transceive([BZ)[B
    .locals 4
    .parameter "data"
    .parameter "raw"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v2, "transceive failed"

    invoke-virtual {p0}, Landroid/nfc/tech/BasicTagTechnology;->checkConnected()V

    :try_start_0
    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v2

    iget-object v3, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v3}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v3

    invoke-interface {v2, v3, p1, p2}, Landroid/nfc/INfcTag;->transceive(I[BZ)Landroid/nfc/TransceiveResult;

    move-result-object v1

    .local v1, result:Landroid/nfc/TransceiveResult;
    if-nez v1, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "transceive failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #result:Landroid/nfc/TransceiveResult;
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NFC"

    const-string v3, "NFC service dead"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/io/IOException;

    const-string v3, "NFC service died"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #result:Landroid/nfc/TransceiveResult;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/nfc/TransceiveResult;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/nfc/TransceiveResult;->getResponseData()[B

    move-result-object v2

    return-object v2

    :cond_1
    invoke-virtual {v1}, Landroid/nfc/TransceiveResult;->isTagLost()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Landroid/nfc/TagLostException;

    const-string v3, "Tag was lost."

    invoke-direct {v2, v3}, Landroid/nfc/TagLostException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "transceive failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method
