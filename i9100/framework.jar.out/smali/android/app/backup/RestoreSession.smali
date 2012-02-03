.class public Landroid/app/backup/RestoreSession;
.super Ljava/lang/Object;
.source "RestoreSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/RestoreSession$RestoreObserverWrapper;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "RestoreSession"


# instance fields
.field mBinder:Landroid/app/backup/IRestoreSession;

.field final mContext:Landroid/content/Context;

.field mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/backup/IRestoreSession;)V
    .locals 1
    .parameter "context"
    .parameter "binder"

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    .line 141
    iput-object p1, p0, Landroid/app/backup/RestoreSession;->mContext:Landroid/content/Context;

    .line 142
    iput-object p2, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    .line 143
    return-void
.end method


# virtual methods
.method public endRestoreSession()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 128
    :try_start_0
    iget-object v1, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    invoke-interface {v1}, Landroid/app/backup/IRestoreSession;->endRestoreSession()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    iput-object v3, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    .line 134
    return-void

    .line 129
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 130
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "RestoreSession"

    const-string v2, "Can\'t contact server to get available sets"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 132
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    iput-object v3, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    throw v1
.end method

.method public getAvailableRestoreSets(Landroid/app/backup/RestoreObserver;)I
    .locals 5
    .parameter "observer"

    .prologue
    .line 51
    const/4 v1, -0x1

    .line 52
    .local v1, err:I
    new-instance v2, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    iget-object v3, p0, Landroid/app/backup/RestoreSession;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, p1}, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;-><init>(Landroid/app/backup/RestoreSession;Landroid/content/Context;Landroid/app/backup/RestoreObserver;)V

    .line 54
    .local v2, obsWrapper:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;
    :try_start_0
    iget-object v3, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    invoke-interface {v3, v2}, Landroid/app/backup/IRestoreSession;->getAvailableRestoreSets(Landroid/app/backup/IRestoreObserver;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 58
    :goto_0
    return v1

    .line 55
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 56
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "RestoreSession"

    const-string v4, "Can\'t contact server to get available sets"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public restoreAll(JLandroid/app/backup/RestoreObserver;)I
    .locals 5
    .parameter "token"
    .parameter "observer"

    .prologue
    const-string v4, "RestoreSession"

    .line 75
    const/4 v1, -0x1

    .line 76
    .local v1, err:I
    iget-object v2, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    if-eqz v2, :cond_0

    .line 77
    const-string v2, "RestoreSession"

    const-string/jumbo v2, "restoreAll() called during active restore"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v2, -0x1

    .line 86
    :goto_0
    return v2

    .line 80
    :cond_0
    new-instance v2, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    iget-object v3, p0, Landroid/app/backup/RestoreSession;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, p3}, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;-><init>(Landroid/app/backup/RestoreSession;Landroid/content/Context;Landroid/app/backup/RestoreObserver;)V

    iput-object v2, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    .line 82
    :try_start_0
    iget-object v2, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    iget-object v3, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    invoke-interface {v2, p1, p2, v3}, Landroid/app/backup/IRestoreSession;->restoreAll(JLandroid/app/backup/IRestoreObserver;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 86
    goto :goto_0

    .line 83
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 84
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "RestoreSession"

    const-string v2, "Can\'t contact server to restore"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public restorePackage(Ljava/lang/String;Landroid/app/backup/RestoreObserver;)I
    .locals 5
    .parameter "packageName"
    .parameter "observer"

    .prologue
    const-string v4, "RestoreSession"

    .line 105
    const/4 v1, -0x1

    .line 106
    .local v1, err:I
    iget-object v2, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    if-eqz v2, :cond_0

    .line 107
    const-string v2, "RestoreSession"

    const-string/jumbo v2, "restorePackage() called during active restore"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v2, -0x1

    .line 116
    :goto_0
    return v2

    .line 110
    :cond_0
    new-instance v2, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    iget-object v3, p0, Landroid/app/backup/RestoreSession;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, p2}, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;-><init>(Landroid/app/backup/RestoreSession;Landroid/content/Context;Landroid/app/backup/RestoreObserver;)V

    iput-object v2, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    .line 112
    :try_start_0
    iget-object v2, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    iget-object v3, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    invoke-interface {v2, p1, v3}, Landroid/app/backup/IRestoreSession;->restorePackage(Ljava/lang/String;Landroid/app/backup/IRestoreObserver;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 116
    goto :goto_0

    .line 113
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 114
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "RestoreSession"

    const-string v2, "Can\'t contact server to restore package"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
