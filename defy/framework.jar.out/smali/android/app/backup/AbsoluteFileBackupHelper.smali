.class public Landroid/app/backup/AbsoluteFileBackupHelper;
.super Landroid/app/backup/FileBackupHelperBase;
.source "AbsoluteFileBackupHelper.java"

# interfaces
.implements Landroid/app/backup/BackupHelper;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AbsoluteFileBackupHelper"


# instance fields
.field mContext:Landroid/content/Context;

.field mFiles:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "files"

    .prologue
    invoke-direct {p0, p1}, Landroid/app/backup/FileBackupHelperBase;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroid/app/backup/AbsoluteFileBackupHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/app/backup/AbsoluteFileBackupHelper;->mFiles:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 2
    .parameter "oldState"
    .parameter "data"
    .parameter "newState"

    .prologue
    iget-object v0, p0, Landroid/app/backup/AbsoluteFileBackupHelper;->mFiles:[Ljava/lang/String;

    iget-object v1, p0, Landroid/app/backup/AbsoluteFileBackupHelper;->mFiles:[Ljava/lang/String;

    invoke-static {p1, p2, p3, v0, v1}, Landroid/app/backup/AbsoluteFileBackupHelper;->performBackup_checked(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .locals 3
    .parameter "data"

    .prologue
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->getKey()Ljava/lang/String;

    move-result-object v1

    .local v1, key:Ljava/lang/String;
    iget-object v2, p0, Landroid/app/backup/AbsoluteFileBackupHelper;->mFiles:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/app/backup/AbsoluteFileBackupHelper;->isKeyInList(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, f:Ljava/io/File;
    invoke-virtual {p0, v0, p1}, Landroid/app/backup/AbsoluteFileBackupHelper;->writeFile(Ljava/io/File;Landroid/app/backup/BackupDataInputStream;)V

    .end local v0           #f:Ljava/io/File;
    :cond_0
    return-void
.end method

.method public bridge synthetic writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-super {p0, p1}, Landroid/app/backup/FileBackupHelperBase;->writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method
