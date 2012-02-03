.class public abstract Landroid/app/backup/BackupAgent;
.super Landroid/content/ContextWrapper;
.source "BackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/BackupAgent$1;,
        Landroid/app/backup/BackupAgent$BackupServiceBinder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BackupAgent"


# instance fields
.field private final mBinder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0, v1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 188
    new-instance v0, Landroid/app/backup/BackupAgent$BackupServiceBinder;

    invoke-direct {v0, p0, v1}, Landroid/app/backup/BackupAgent$BackupServiceBinder;-><init>(Landroid/app/backup/BackupAgent;Landroid/app/backup/BackupAgent$1;)V

    invoke-virtual {v0}, Landroid/app/backup/BackupAgent$BackupServiceBinder;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/app/backup/BackupAgent;->mBinder:Landroid/os/IBinder;

    .line 92
    return-void
.end method


# virtual methods
.method public attach(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Landroid/app/backup/BackupAgent;->attachBaseContext(Landroid/content/Context;)V

    .line 193
    return-void
.end method

.method public abstract onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final onBind()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Landroid/app/backup/BackupAgent;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public abstract onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
