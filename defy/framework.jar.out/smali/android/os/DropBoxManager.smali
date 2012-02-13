.class public Landroid/os/DropBoxManager;
.super Ljava/lang/Object;
.source "DropBoxManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/DropBoxManager$Entry;
    }
.end annotation


# static fields
.field private static final HAS_BYTE_ARRAY:I = 0x8

.field public static final IS_EMPTY:I = 0x1

.field public static final IS_GZIPPED:I = 0x4

.field public static final IS_TEXT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DropBoxManager"


# instance fields
.field private final mService:Lcom/android/internal/os/IDropBoxManagerService;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/IDropBoxManagerService;)V
    .locals 0
    .parameter "service"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    return-void
.end method


# virtual methods
.method public addData(Ljava/lang/String;[BI)V
    .locals 7
    .parameter "tag"
    .parameter "data"
    .parameter "flags"

    .prologue
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "data == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v6, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    new-instance v0, Landroid/os/DropBoxManager$Entry;

    const-wide/16 v2, 0x0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;J[BI)V

    invoke-interface {v6, v0}, Lcom/android/internal/os/IDropBoxManagerService;->add(Landroid/os/DropBoxManager$Entry;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public addFile(Ljava/lang/String;Ljava/io/File;I)V
    .locals 6
    .parameter "tag"
    .parameter "file"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "file == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    const-wide/16 v2, 0x0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V

    .local v0, entry:Landroid/os/DropBoxManager$Entry;
    :try_start_0
    iget-object v1, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    invoke-interface {v1, v0}, Lcom/android/internal/os/IDropBoxManagerService;->add(Landroid/os/DropBoxManager$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Landroid/os/DropBoxManager$Entry;->close()V

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/DropBoxManager$Entry;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/DropBoxManager$Entry;->close()V

    throw v1
.end method

.method public addText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "tag"
    .parameter "data"

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    new-instance v1, Landroid/os/DropBoxManager$Entry;

    const-wide/16 v2, 0x0

    invoke-direct {v1, p1, v2, v3, p2}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/internal/os/IDropBoxManagerService;->add(Landroid/os/DropBoxManager$Entry;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;
    .locals 2
    .parameter "tag"
    .parameter "msec"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/os/IDropBoxManagerService;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNextEntryMot(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;
    .locals 2
    .parameter "tag"
    .parameter "msec"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/os/IDropBoxManagerService;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTagEnabled(Ljava/lang/String;)Z
    .locals 2
    .parameter "tag"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    invoke-interface {v1, p1}, Lcom/android/internal/os/IDropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method
