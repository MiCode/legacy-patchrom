.class public Lcom/android/internal/nfc/P2pInitiator;
.super Lcom/android/internal/nfc/P2pDevice;
.source "P2pInitiator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "P2pInitiator"


# instance fields
.field private final mService:Landroid/nfc/IP2pInitiator;


# direct methods
.method constructor <init>(Landroid/nfc/IP2pInitiator;I)V
    .locals 0
    .parameter "service"
    .parameter "handle"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/internal/nfc/P2pDevice;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/internal/nfc/P2pInitiator;->mService:Landroid/nfc/IP2pInitiator;

    .line 48
    iput p2, p0, Lcom/android/internal/nfc/P2pDevice;->mHandle:I

    .line 49
    return-void
.end method


# virtual methods
.method public getGeneralBytes()[B
    .locals 3

    .prologue
    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/nfc/P2pInitiator;->mService:Landroid/nfc/IP2pInitiator;

    iget v2, p0, Lcom/android/internal/nfc/P2pDevice;->mHandle:I

    invoke-interface {v1, v2}, Landroid/nfc/IP2pInitiator;->getGeneralBytes(I)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 95
    :goto_0
    return-object v1

    .line 93
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 94
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "P2pInitiator"

    const-string v2, "RemoteException in getGeneralBytes(): "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public receive()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/nfc/P2pInitiator;->mService:Landroid/nfc/IP2pInitiator;

    iget v3, p0, Lcom/android/internal/nfc/P2pDevice;->mHandle:I

    invoke-interface {v2, v3}, Landroid/nfc/IP2pInitiator;->receive(I)[B

    move-result-object v1

    .line 61
    .local v1, result:[B
    if-nez v1, :cond_0

    .line 62
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Tag has been lost"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v1           #result:[B
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 66
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "P2pInitiator"

    const-string v3, "RemoteException in receive(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    const/4 v2, 0x0

    .end local v0           #e:Landroid/os/RemoteException;
    :goto_0
    return-object v2

    .restart local v1       #result:[B
    :cond_0
    move-object v2, v1

    .line 64
    goto :goto_0
.end method

.method public send([B)V
    .locals 4
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/nfc/P2pInitiator;->mService:Landroid/nfc/IP2pInitiator;

    iget v3, p0, Lcom/android/internal/nfc/P2pDevice;->mHandle:I

    invoke-interface {v2, v3, p1}, Landroid/nfc/IP2pInitiator;->send(I[B)Z

    move-result v1

    .line 81
    .local v1, isSuccess:Z
    if-nez v1, :cond_0

    .line 82
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Tag has been lost"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v1           #isSuccess:Z
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 85
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "P2pInitiator"

    const-string v3, "RemoteException in send(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    return-void
.end method
