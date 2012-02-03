.class Landroid/app/backup/FileBackupHelperBase;
.super Ljava/lang/Object;
.source "FileBackupHelperBase.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileBackupHelperBase"


# instance fields
.field mContext:Landroid/content/Context;

.field mExceptionLogged:Z

.field mPtr:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Landroid/app/backup/FileBackupHelperBase;->ctor()I

    move-result v0

    iput v0, p0, Landroid/app/backup/FileBackupHelperBase;->mPtr:I

    .line 38
    iput-object p1, p0, Landroid/app/backup/FileBackupHelperBase;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method private static native ctor()I
.end method

.method private static native dtor(I)V
.end method

.method static performBackup_checked(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 10
    .parameter "oldState"
    .parameter "data"
    .parameter "newState"
    .parameter "files"
    .parameter "keys"

    .prologue
    .line 55
    array-length v7, p3

    if-nez v7, :cond_1

    .line 82
    :cond_0
    return-void

    .line 59
    :cond_1
    move-object v0, p3

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v2, v0, v3

    .line 60
    .local v2, f:Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2f

    if-eq v7, v8, :cond_2

    .line 61
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "files must have all absolute paths: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 59
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 65
    .end local v2           #f:Ljava/lang/String;
    :cond_3
    array-length v7, p3

    array-length v8, p4

    if-eq v7, v8, :cond_4

    .line 66
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "files.length="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " keys.length="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 70
    :cond_4
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    move-object v6, v7

    .line 71
    .local v6, oldStateFd:Ljava/io/FileDescriptor;
    :goto_1
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    .line 72
    .local v5, newStateFd:Ljava/io/FileDescriptor;
    if-nez v5, :cond_6

    .line 73
    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v7

    .line 70
    .end local v5           #newStateFd:Ljava/io/FileDescriptor;
    .end local v6           #oldStateFd:Ljava/io/FileDescriptor;
    :cond_5
    const/4 v7, 0x0

    move-object v6, v7

    goto :goto_1

    .line 76
    .restart local v5       #newStateFd:Ljava/io/FileDescriptor;
    .restart local v6       #oldStateFd:Ljava/io/FileDescriptor;
    :cond_6
    iget v7, p1, Landroid/app/backup/BackupDataOutput;->mBackupWriter:I

    invoke-static {v6, v7, v5, p3, p4}, Landroid/app/backup/FileBackupHelperBase;->performBackup_native(Ljava/io/FileDescriptor;ILjava/io/FileDescriptor;[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 78
    .local v1, err:I
    if-eqz v1, :cond_0

    .line 80
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Backup failed 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private static native performBackup_native(Ljava/io/FileDescriptor;ILjava/io/FileDescriptor;[Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method private static native writeFile_native(ILjava/lang/String;I)I
.end method

.method private static native writeSnapshot_native(ILjava/io/FileDescriptor;)I
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 43
    :try_start_0
    iget v0, p0, Landroid/app/backup/FileBackupHelperBase;->mPtr:I

    invoke-static {v0}, Landroid/app/backup/FileBackupHelperBase;->dtor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 47
    return-void

    .line 45
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method isKeyInList(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .parameter "key"
    .parameter "list"

    .prologue
    .line 109
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 110
    .local v3, s:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 111
    const/4 v4, 0x1

    .line 114
    .end local v3           #s:Ljava/lang/String;
    :goto_1
    return v4

    .line 109
    .restart local v3       #s:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    .end local v3           #s:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method writeFile(Ljava/io/File;Landroid/app/backup/BackupDataInputStream;)V
    .locals 5
    .parameter "f"
    .parameter "in"

    .prologue
    .line 85
    const/4 v1, -0x1

    .line 88
    .local v1, result:I
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 89
    .local v0, parent:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 91
    iget v2, p0, Landroid/app/backup/FileBackupHelperBase;->mPtr:I

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Landroid/app/backup/BackupDataInputStream;->mData:Landroid/app/backup/BackupDataInput;

    iget v4, v4, Landroid/app/backup/BackupDataInput;->mBackupReader:I

    invoke-static {v2, v3, v4}, Landroid/app/backup/FileBackupHelperBase;->writeFile_native(ILjava/lang/String;I)I

    move-result v1

    .line 92
    if-eqz v1, :cond_0

    .line 94
    iget-boolean v2, p0, Landroid/app/backup/FileBackupHelperBase;->mExceptionLogged:Z

    if-nez v2, :cond_0

    .line 95
    const-string v2, "FileBackupHelperBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed restoring file \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' for app \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/backup/FileBackupHelperBase;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' result=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/backup/FileBackupHelperBase;->mExceptionLogged:Z

    .line 101
    :cond_0
    return-void
.end method

.method public writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .locals 3
    .parameter "fd"

    .prologue
    .line 104
    iget v1, p0, Landroid/app/backup/FileBackupHelperBase;->mPtr:I

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/app/backup/FileBackupHelperBase;->writeSnapshot_native(ILjava/io/FileDescriptor;)I

    move-result v0

    .line 106
    .local v0, result:I
    return-void
.end method
