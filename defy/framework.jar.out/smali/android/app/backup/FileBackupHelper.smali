.class public Landroid/app/backup/FileBackupHelper;
.super Landroid/app/backup/FileBackupHelperBase;
.source "FileBackupHelper.java"

# interfaces
.implements Landroid/app/backup/BackupHelper;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FileBackupHelper"


# instance fields
.field mContext:Landroid/content/Context;

.field mFiles:[Ljava/lang/String;

.field mFilesDir:Ljava/io/File;


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "files"

    .prologue
    invoke-direct {p0, p1}, Landroid/app/backup/FileBackupHelperBase;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroid/app/backup/FileBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Landroid/app/backup/FileBackupHelper;->mFilesDir:Ljava/io/File;

    iput-object p2, p0, Landroid/app/backup/FileBackupHelper;->mFiles:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 7
    .parameter "oldState"
    .parameter "data"
    .parameter "newState"

    .prologue
    iget-object v2, p0, Landroid/app/backup/FileBackupHelper;->mFiles:[Ljava/lang/String;

    .local v2, files:[Ljava/lang/String;
    iget-object v5, p0, Landroid/app/backup/FileBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .local v1, base:Ljava/io/File;
    array-length v0, v2

    .local v0, N:I
    new-array v3, v0, [Ljava/lang/String;

    .local v3, fullPaths:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_0

    new-instance v5, Ljava/io/File;

    aget-object v6, v2, v4

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, v3, v2}, Landroid/app/backup/FileBackupHelper;->performBackup_checked(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .locals 3
    .parameter "data"

    .prologue
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->getKey()Ljava/lang/String;

    move-result-object v1

    .local v1, key:Ljava/lang/String;
    iget-object v2, p0, Landroid/app/backup/FileBackupHelper;->mFiles:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/app/backup/FileBackupHelper;->isKeyInList(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Landroid/app/backup/FileBackupHelper;->mFilesDir:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v0, f:Ljava/io/File;
    invoke-virtual {p0, v0, p1}, Landroid/app/backup/FileBackupHelper;->writeFile(Ljava/io/File;Landroid/app/backup/BackupDataInputStream;)V

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
