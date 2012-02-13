.class public Lcom/motorola/android/media/MediaScannerConnectionExt;
.super Ljava/lang/Object;
.source "MediaScannerConnectionExt.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/media/MediaScannerConnectionExt$AppType;,
        Lcom/motorola/android/media/MediaScannerConnectionExt$MediaScannerConnectionClient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaScannerConnectionExt"


# instance fields
.field private mClient:Lcom/motorola/android/media/MediaScannerConnectionExt$MediaScannerConnectionClient;

.field private mConnected:Z

.field private mContext:Landroid/content/Context;

.field private mListener:Landroid/media/IMediaScannerListener$Stub;

.field private mService:Landroid/media/IMediaScannerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/motorola/android/media/MediaScannerConnectionExt$MediaScannerConnectionClient;)V
    .locals 1
    .parameter "context"
    .parameter "client"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/motorola/android/media/MediaScannerConnectionExt$1;

    invoke-direct {v0, p0}, Lcom/motorola/android/media/MediaScannerConnectionExt$1;-><init>(Lcom/motorola/android/media/MediaScannerConnectionExt;)V

    iput-object v0, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mListener:Landroid/media/IMediaScannerListener$Stub;

    iput-object p1, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mClient:Lcom/motorola/android/media/MediaScannerConnectionExt$MediaScannerConnectionClient;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/media/MediaScannerConnectionExt;)Lcom/motorola/android/media/MediaScannerConnectionExt$MediaScannerConnectionClient;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mClient:Lcom/motorola/android/media/MediaScannerConnectionExt$MediaScannerConnectionClient;

    return-object v0
.end method


# virtual methods
.method public connect()V
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mConnected:Z

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/media/IMediaScannerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mConnected:Z

    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disconnect()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mConnected:Z

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized isConnected()Z
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mService:Landroid/media/IMediaScannerService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    const-string v0, "MediaScannerConnectionExt"

    const-string v1, "Connected to Media Scanner"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Landroid/media/IMediaScannerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaScannerService;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mService:Landroid/media/IMediaScannerService;

    iget-object v0, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mService:Landroid/media/IMediaScannerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mClient:Lcom/motorola/android/media/MediaScannerConnectionExt$MediaScannerConnectionClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mClient:Lcom/motorola/android/media/MediaScannerConnectionExt$MediaScannerConnectionClient;

    invoke-interface {v0}, Lcom/motorola/android/media/MediaScannerConnectionExt$MediaScannerConnectionClient;->onMediaScannerConnected()V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    const-string v0, "MediaScannerConnectionExt"

    const-string v1, "Disconnected from Media Scanner"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mService:Landroid/media/IMediaScannerService;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public scanFile(Ljava/util/ArrayList;Lcom/motorola/android/media/MediaScannerConnectionExt$AppType;)V
    .locals 4
    .parameter
    .parameter "appType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/motorola/android/media/MediaScannerConnectionExt$AppType;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "MediaScannerConnectionExt"

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mService:Landroid/media/IMediaScannerService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mConnected:Z

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "not connected to MediaScannerService"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    if-eqz p1, :cond_2

    :try_start_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    return-void

    :cond_3
    :try_start_3
    const-string v2, "MediaScannerConnectionExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scanning file "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " apptype: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mService:Landroid/media/IMediaScannerService;

    invoke-virtual {p2}, Lcom/motorola/android/media/MediaScannerConnectionExt$AppType;->ordinal()I

    move-result v2

    iget-object v3, p0, Lcom/motorola/android/media/MediaScannerConnectionExt;->mListener:Landroid/media/IMediaScannerListener$Stub;

    invoke-interface {v1, p1, v2, v3}, Landroid/media/IMediaScannerService;->requestScanMultiFile(Ljava/util/List;ILandroid/media/IMediaScannerListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_1
    :try_start_4
    monitor-exit p0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "MediaScannerConnectionExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to scan file "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method
