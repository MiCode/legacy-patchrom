.class public Landroid/app/backup/SharedPreferencesBackupHelper;
.super Landroid/app/backup/FileBackupHelperBase;
.source "SharedPreferencesBackupHelper.java"

# interfaces
.implements Landroid/app/backup/BackupHelper;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SharedPreferencesBackupHelper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPrefGroups:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "prefGroups"

    .prologue
    invoke-direct {p0, p1}, Landroid/app/backup/FileBackupHelperBase;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroid/app/backup/SharedPreferencesBackupHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/app/backup/SharedPreferencesBackupHelper;->mPrefGroups:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 6
    .parameter "oldState"
    .parameter "data"
    .parameter "newState"

    .prologue
    iget-object v1, p0, Landroid/app/backup/SharedPreferencesBackupHelper;->mContext:Landroid/content/Context;

    .local v1, context:Landroid/content/Context;
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    iget-object v4, p0, Landroid/app/backup/SharedPreferencesBackupHelper;->mPrefGroups:[Ljava/lang/String;

    .local v4, prefGroups:[Ljava/lang/String;
    array-length v0, v4

    .local v0, N:I
    new-array v2, v0, [Ljava/lang/String;

    .local v2, files:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v5, v4, v3

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, v2, v4}, Landroid/app/backup/SharedPreferencesBackupHelper;->performBackup_checked(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .locals 4
    .parameter "data"

    .prologue
    iget-object v0, p0, Landroid/app/backup/SharedPreferencesBackupHelper;->mContext:Landroid/content/Context;

    .local v0, context:Landroid/content/Context;
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->getKey()Ljava/lang/String;

    move-result-object v2

    .local v2, key:Ljava/lang/String;
    iget-object v3, p0, Landroid/app/backup/SharedPreferencesBackupHelper;->mPrefGroups:[Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Landroid/app/backup/SharedPreferencesBackupHelper;->isKeyInList(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    .local v1, f:Ljava/io/File;
    invoke-virtual {p0, v1, p1}, Landroid/app/backup/SharedPreferencesBackupHelper;->writeFile(Ljava/io/File;Landroid/app/backup/BackupDataInputStream;)V

    .end local v1           #f:Ljava/io/File;
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
